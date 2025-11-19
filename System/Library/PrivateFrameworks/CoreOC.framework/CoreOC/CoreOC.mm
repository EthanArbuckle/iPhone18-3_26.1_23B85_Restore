uint64_t sub_245F8BCB0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_245F8BCE8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_245F8BD84(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_245F8E498(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_245F8BDE4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = sub_246091C04();
  if (!*(v2 + 16))
  {

    return 0;
  }

  v6 = sub_245F8D968(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_245F8E5C8(*(v2 + 56) + 32 * v6, v11);
  sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F8BEA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2460917D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v1 + 128);
  v10 = (v9)(v6);
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  v12 = *MEMORY[0x277CD3030];
  v13 = sub_246091C04();
  if (!*(v11 + 16))
  {

    goto LABEL_35;
  }

  v86 = v8;
  v15 = sub_245F8D968(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_245F8E5C8(*(v11 + 56) + 32 * v15, &v89);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v48 = *(v4 + 56);
    v49 = a1;
    return v48(v49, 1, 1, v3);
  }

  v18 = v87;
  v19 = v88;
  v20 = v9();
  if (!v20)
  {
LABEL_35:

    goto LABEL_36;
  }

  v21 = v20;
  v83 = v18;
  v22 = *MEMORY[0x277CD3108];
  v23 = sub_246091C04();
  if (!*(v21 + 16))
  {

    goto LABEL_35;
  }

  v84 = v19;
  v85 = a1;
  v25 = sub_245F8D968(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {

    goto LABEL_39;
  }

  sub_245F8E5C8(*(v21 + 56) + 32 * v25, &v89);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    a1 = v85;
    goto LABEL_36;
  }

  v28 = v88;
  v82 = v87;
  v29 = v9();
  if (!v29)
  {
LABEL_42:
    v50 = 808464430;
LABEL_43:
    v51 = 0xE400000000000000;
LABEL_44:
    v52 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v53 = sub_246091BD4();
    [v52 setDateFormat_];

    v89 = v83;
    v90 = v84;

    MEMORY[0x24C196640](v50, v51);

    MEMORY[0x24C196640](v82, v28);

    v54 = sub_246091BD4();

    v55 = [v52 dateFromString_];

    if (v55)
    {
      v56 = v86;
      sub_246091794();

      v57 = v85;
      (*(v4 + 32))(v85, v56, v3);
      return (*(v4 + 56))(v57, 0, 1, v3);
    }

    v48 = *(v4 + 56);
    v49 = v85;
    return v48(v49, 1, 1, v3);
  }

  v30 = v29;
  v31 = *MEMORY[0x277CD3190];
  v32 = sub_246091C04();
  if (!*(v30 + 16))
  {

    goto LABEL_41;
  }

  v34 = sub_245F8D968(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_41:

    goto LABEL_42;
  }

  sub_245F8E5C8(*(v30 + 56) + 32 * v34, &v89);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  result = v88;
  v38 = HIBYTE(v88) & 0xF;
  v39 = v87 & 0xFFFFFFFFFFFFLL;
  if ((v88 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v88) & 0xF;
  }

  else
  {
    v40 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    v50 = 808464430;

    goto LABEL_43;
  }

  if ((v88 & 0x1000000000000000) != 0)
  {
    v44 = sub_245F8DA98(v87, v88, 10);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_42;
  }

  if ((v88 & 0x2000000000000000) == 0)
  {
    if ((v87 & 0x1000000000000000) != 0)
    {
      v41 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v80 = v88;
      v41 = sub_2460922B4();
      result = v80;
    }

    v42 = *v41;
    if (v42 == 43)
    {
      if (v39 >= 1)
      {
        v61 = v39 - 1;
        if (v39 != 1)
        {
          v44 = 0;
          if (!v41)
          {
            goto LABEL_89;
          }

          v62 = v41 + 1;
          while (1)
          {
            v63 = *v62 - 48;
            if (v63 > 9)
            {
              break;
            }

            v64 = 10 * v44;
            if ((v44 * 10) >> 64 != (10 * v44) >> 63)
            {
              break;
            }

            v44 = v64 + v63;
            if (__OFADD__(v64, v63))
            {
              break;
            }

            ++v62;
            if (!--v61)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_88;
      }

      goto LABEL_97;
    }

    if (v42 == 45)
    {
      if (v39 >= 1)
      {
        v43 = v39 - 1;
        if (v39 != 1)
        {
          v44 = 0;
          if (!v41)
          {
            goto LABEL_89;
          }

          v45 = v41 + 1;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v44;
            if ((v44 * 10) >> 64 != (10 * v44) >> 63)
            {
              break;
            }

            v44 = v47 - v46;
            if (__OFSUB__(v47, v46))
            {
              break;
            }

            ++v45;
            if (!--v43)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_88;
      }

      __break(1u);
      goto LABEL_96;
    }

    if (v39)
    {
      v44 = 0;
      if (!v41)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v68 = *v41 - 48;
        if (v68 > 9)
        {
          break;
        }

        v69 = 10 * v44;
        if ((v44 * 10) >> 64 != (10 * v44) >> 63)
        {
          break;
        }

        v44 = v69 + v68;
        if (__OFADD__(v69, v68))
        {
          break;
        }

        ++v41;
        if (!--v39)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_88;
  }

  v89 = v87;
  v90 = v88 & 0xFFFFFFFFFFFFFFLL;
  if (v87 != 43)
  {
    if (v87 == 45)
    {
      if (!v38)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v41 = (v38 - 1);
      if (v38 != 1)
      {
        v44 = 0;
        v58 = &v89 + 1;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          v60 = 10 * v44;
          if ((v44 * 10) >> 64 != (10 * v44) >> 63)
          {
            break;
          }

          v44 = v60 - v59;
          if (__OFSUB__(v60, v59))
          {
            break;
          }

          ++v58;
          if (!--v41)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (v38)
    {
      v44 = 0;
      v70 = &v89;
      while (1)
      {
        v71 = *v70 - 48;
        if (v71 > 9)
        {
          break;
        }

        v72 = 10 * v44;
        if ((v44 * 10) >> 64 != (10 * v44) >> 63)
        {
          break;
        }

        v44 = v72 + v71;
        if (__OFADD__(v72, v71))
        {
          break;
        }

        v70 = (v70 + 1);
        if (!--v38)
        {
LABEL_87:
          LOBYTE(v41) = 0;
          goto LABEL_89;
        }
      }
    }

LABEL_88:
    v44 = 0;
    LOBYTE(v41) = 1;
LABEL_89:
    LOBYTE(v87) = v41;
    v73 = v41;

    if ((v73 & 1) == 0)
    {
LABEL_90:
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v74 = swift_allocObject();
      v75 = MEMORY[0x277D83B88];
      *(v74 + 16) = xmmword_246096460;
      v76 = MEMORY[0x277D83C10];
      *(v74 + 56) = v75;
      *(v74 + 64) = v76;
      *(v74 + 32) = v44;
      v50 = sub_246091C24();
      v51 = v77;
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v38)
  {
    v41 = (v38 - 1);
    if (v38 != 1)
    {
      v44 = 0;
      v65 = &v89 + 1;
      while (1)
      {
        v66 = *v65 - 48;
        if (v66 > 9)
        {
          break;
        }

        v67 = 10 * v44;
        if ((v44 * 10) >> 64 != (10 * v44) >> 63)
        {
          break;
        }

        v44 = v67 + v66;
        if (__OFADD__(v67, v66))
        {
          break;
        }

        ++v65;
        if (!--v41)
        {
          goto LABEL_89;
        }
      }
    }

    goto LABEL_88;
  }

LABEL_98:
  __break(1u);
  return result;
}

unint64_t sub_245F8C668(uint64_t *a1)
{
  v3 = (*(*v1 + 128))();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = *a1;
  v6 = sub_246091C04();
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v8 = sub_245F8D968(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v12 = 0;
    v13 = 1;
    return v12 | (v13 << 32);
  }

  sub_245F8E5C8(*(v4 + 56) + 32 * v8, v16);

  v11 = swift_dynamicCast();
  v12 = v15;
  v13 = v11 ^ 1;
  if (!v11)
  {
    v12 = 0;
  }

  return v12 | (v13 << 32);
}

unint64_t sub_245F8C770()
{
  v1 = (*(*v0 + 152))();
  if ((v1 & 0x100000000) != 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = (*(*v0 + 160))();
  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return __PAIR64__(v3, v2);
  }
}

id sub_245F8C838()
{
  v1 = (*(*v0 + 136))();
  if (v1)
  {
    v2 = v1;
    result = OCNonModularSPI_AppleMakerNote_FocusAccelerometerVector();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_246091C04();
    v7 = v6;

    if (*(v2 + 16))
    {
      v8 = sub_245F8D968(v5, v7);
      v10 = v9;

      if (v10)
      {
        sub_245F8E5C8(*(v2 + 56) + 32 * v8, v15);

        sub_245F8E66C();
        if (swift_dynamicCast())
        {
          v11 = [v14 objectAtIndexedSubscript_];
          sub_246092174();
          swift_unknownObjectRelease();
          if (swift_dynamicCast() & 1) != 0 && (v12 = [v14 objectAtIndexedSubscript_], sub_246092174(), swift_unknownObjectRelease(), (swift_dynamicCast()))
          {
            v13 = [v14 objectAtIndexedSubscript_];
            sub_246092174();

            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              return v14;
            }
          }

          else
          {
          }
        }

        return 0;
      }
    }

    else
    {
    }
  }

  return 0;
}

void *sub_245F8CA6C()
{
  result = (*(*v0 + 136))();
  if (result)
  {
    v2 = result;
    result = OCNonModularSPI_AppleMakerNote_Timestamp();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = sub_246091C04();
    v6 = v5;

    if (v2[2])
    {
      v7 = sub_245F8D968(v4, v6);
      v9 = v8;

      if (v9)
      {
        sub_245F8E5C8(v2[7] + 32 * v7, v11);

        if (swift_dynamicCast())
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_245F8CB8C()
{
  v1 = (*(*v0 + 136))();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  result = OCNonModularSPI_AppleMakerNote_Camera();
  if (result)
  {
    v4 = result;
    v5 = sub_246091C04();
    v7 = v6;

    if (*(v2 + 16))
    {
      v8 = sub_245F8D968(v5, v7);
      v10 = v9;

      if (v10)
      {
        sub_245F8E5C8(*(v2 + 56) + 32 * v8, v15);

        v11 = swift_dynamicCast();
        v12 = v14;
        v13 = v11 ^ 1;
        if (!v11)
        {
          v12 = 0;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_10:
    v12 = 0;
    v13 = 1;
LABEL_11:
    v15[0] = v13;
    return (v12 | (v13 << 32));
  }

  __break(1u);
  return result;
}

uint64_t sub_245F8CCB4()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_245FA3174();
  v13 = v3;
  v14 = *(v3 + 16);
  v54 = v12;
  v55 = v3 + 16;
  v51 = v2;
  v53 = v14;
  (v14)(v11);
  v15 = sub_2460918D4();
  v16 = sub_246091FA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_245F8A000, v15, v16, "metadata: {", v17, 2u);
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  v18 = *(v13 + 8);
  v19 = v51;
  v56 = v13 + 8;
  v52 = v18;
  v18(v11, v51);
  v20 = -1 << *(*(v1 + 16) + 32);
  v21 = *(v1 + 16);
  v24 = *(v21 + 64);
  v22 = v21 + 64;
  v23 = v24;
  v25 = ~v20;
  v26 = -v20;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v73 = *(v1 + 16);
  v74 = v22;
  v75 = v25;
  v76 = 0;
  v77 = v27 & v23;
  v78 = 0;

  sub_245F8D20C(&v65);
  v69 = v65;
  v70 = v66;
  *(&v28 + 1) = *(&v67 + 1);
  v71 = v67;
  v72 = v68;
  v29 = v66;
  if (v66)
  {
    *&v28 = 136446466;
    v50 = v28;
    do
    {
      v40 = v69;
      sub_245F8E6C0((&v70 + 8), v64);
      *&v65 = *(&v40 + 1);
      *(&v65 + 1) = v29;
      sub_245F8E6C0(v64, &v66);
      v53(v9, v54, v19);
      sub_245F8E7A4(&v65, v63, &qword_27EE39EE8, &qword_246096490);
      v41 = sub_2460918D4();
      v42 = sub_246091FA4();
      if (os_log_type_enabled(v41, v42))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v62 = v31;
        *v30 = v50;
        v60[0] = v40;
        v32 = sub_2460923D4();
        v34 = sub_245F8D3C0(v32, v33, &v62);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_245F8E7A4(v63, v60, &qword_27EE39EE8, &qword_246096490);
        v57 = v60[0];
        v58 = v60[1];
        sub_245F8E6C0(&v61, &v59);
        sub_245F8E624(&qword_27EE39EE8, &qword_246096490);
        v35 = sub_246091C54();
        v37 = v36;
        sub_245F8E744(v63, &qword_27EE39EE8, &qword_246096490);
        v38 = sub_245F8D3C0(v35, v37, &v62);

        *(v30 + 14) = v38;
        _os_log_impl(&dword_245F8A000, v41, v42, "%{public}s -> %{public}s", v30, 0x16u);
        swift_arrayDestroy();
        v39 = v31;
        v19 = v51;
        MEMORY[0x24C1989D0](v39, -1, -1);
        MEMORY[0x24C1989D0](v30, -1, -1);
      }

      else
      {

        sub_245F8E744(v63, &qword_27EE39EE8, &qword_246096490);
      }

      v52(v9, v19);
      sub_245F8E744(&v65, &qword_27EE39EE8, &qword_246096490);
      sub_245F8D20C(&v65);
      v69 = v65;
      v70 = v66;
      v71 = v67;
      v72 = v68;
      v29 = v66;
    }

    while (v66);
  }

  sub_245F8E6B8();
  v43 = v49;
  v53(v49, v54, v19);
  v44 = sub_2460918D4();
  v45 = sub_246091FA4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_245F8A000, v44, v45, "}  // metadata:", v46, 2u);
    MEMORY[0x24C1989D0](v46, -1, -1);
  }

  return (v52)(v43, v19);
}

uint64_t sub_245F8D20C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (!v7)
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = v1[3];
LABEL_10:
  v12 = (v7 - 1) & v7;
  v13 = __clz(__rbit64(v7)) | (v8 << 6);
  v14 = (*(v3 + 48) + 16 * v13);
  v16 = *v14;
  v15 = v14[1];
  sub_245F8E5C8(*(v3 + 56) + 32 * v13, &v21);
  *&v24 = v16;
  *(&v24 + 1) = v15;
  sub_245F8E6C0(&v21, &v25);
  v17 = *(&v24 + 1);
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v8;
  v1[4] = v12;

  if (v17)
  {
    v21 = v24;
    v22 = v25;
    v23 = v26;
    v19 = v1[5];
    if (!__OFADD__(v19, 1))
    {
      v1[5] = v19 + 1;
      *a1 = v19;
      v20 = v22;
      *(a1 + 8) = v21;
      *(a1 + 24) = v20;
      *(a1 + 40) = v23;
      return result;
    }

    goto LABEL_17;
  }

LABEL_14:
  result = sub_245F8E744(&v24, &qword_27EE39EF0, &qword_2460964D8);
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_245F8D380()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_245F8D3C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_245F8D48C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_245F8E5C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_245F8E6F4(v11);
  return v7;
}

unint64_t sub_245F8D48C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_245F8D598(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2460922B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_245F8D598(uint64_t a1, unint64_t a2)
{
  v4 = sub_245F8D5E4(a1, a2);
  sub_245F8D714(&unk_2858DD5D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_245F8D5E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_245F8D800(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2460922B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_246091D04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_245F8D800(v10, 0);
        result = sub_246092264();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_245F8D714(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_245F8D874(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_245F8D800(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_245F8E624(&unk_27EE3B0E0, "jX");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_245F8D874(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_245F8E624(&unk_27EE3B0E0, "jX");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_245F8D968(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_246092504();
  sub_246091C94();
  v6 = sub_246092544();

  return sub_245F8D9E0(a1, a2, v6);
}

unint64_t sub_245F8D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2460923E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_245F8DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_246091D74();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_245F8E024();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2460922B4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_245F8E024()
{
  v0 = sub_246091D84();
  v4 = sub_245F8E0A4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_245F8E0A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_246091C84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_246092104();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_245F8D800(v9, 0);
  v12 = sub_245F8E1FC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_246091C84();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2460922B4();
LABEL_4:

  return sub_246091C84();
}

unint64_t sub_245F8E1FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_245F8E41C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_246091D34();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2460922B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_245F8E41C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_246091D14();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_245F8E41C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_246091D44();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1966A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_245F8E498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3B250, qword_2460964E0);
    v3 = sub_246092384();
    v4 = a1 + 32;

    while (1)
    {
      sub_245F8E7A4(v4, &v13, &qword_27EE39EF8, &unk_246096ED0);
      v5 = v13;
      v6 = v14;
      result = sub_245F8D968(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_245F8E6C0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_245F8E5C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_245F8E624(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_245F8E66C()
{
  result = qword_27EE39EE0;
  if (!qword_27EE39EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE39EE0);
  }

  return result;
}

_OWORD *sub_245F8E6C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_245F8E6F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_245F8E744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_245F8E624(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_245F8E7A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_245F8E624(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_245F8E80C(void *a1, double a2, double a3)
{
  if (a2 < a3)
  {
    *a1 = 0;
    result = (*(*v3 + 128))();
    if (result < 0)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v8 = result;
    if (result)
    {
      v9 = 0.0;
      v10 = 0;
      v11 = *(*v3 + 216);
      v12 = 1;
      v13 = result;
      while (v8 >= v13)
      {
        result = v11(v18, --v13);
        if ((v19 & 1) == 0)
        {
          if (v18[0] >= a2 && v18[0] < a3)
          {
            if (__OFADD__(v10++, 1))
            {
              goto LABEL_23;
            }

            v16 = v18[1];
            *a1 = v10;
            v17 = v9;
            if (v12)
            {
              v17 = v16;
            }

            if (v17 > v16)
            {
              v16 = v17;
            }

            v9 = v16;
            v12 = 0;
          }

          else if (v18[0] >= a3)
          {
            return *&v9;
          }
        }

        if (!v13)
        {
          return *&v9;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v9 = 0.0;
  return *&v9;
}

char *sub_245F8E95C(double *a1)
{
  v3 = *a1;
  v4 = (*(*v1 + 128))();
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  if (v4)
  {
    v6 = *(*v1 + 216);
    v7 = MEMORY[0x277D84F90];
    v8 = v3;
    v9 = v4;
    while (v5 >= v9)
    {
      v6(v15, --v9);
      if ((v16 & 1) == 0)
      {
        v10 = v15[0];
        if (v3 < v15[0])
        {
          v11 = v15[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_245F8F6A0(0, *(v7 + 2) + 1, 1, v7);
          }

          v13 = *(v7 + 2);
          v12 = *(v7 + 3);
          if (v13 >= v12 >> 1)
          {
            v7 = sub_245F8F6A0((v12 > 1), v13 + 1, 1, v7);
          }

          *(v7 + 2) = v13 + 1;
          *&v7[8 * v13 + 32] = v11;
          if (v8 < v10)
          {
            v8 = v10;
          }
        }
      }

      if (!v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v8 = v3;
LABEL_17:
  *a1 = v8;
  return v7;
}

uint64_t sub_245F8EADC()
{
  sub_24608F6B8();

  return swift_deallocClassInstance();
}

uint64_t *sub_245F8EB0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for GyroCircularBuffer();
  swift_allocObject();
  v6[0] = v3;
  v6[1] = v4;
  return sub_24608EB44(a1, v6);
}

uint64_t sub_245F8EBA4(void *a1)
{
  v2 = v1;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v1 + 40) = xmmword_246096500;
  *(v1 + 56) = 0x3FF0000000000000;
  if (![a1 isDeviceMotionAvailable])
  {
    goto LABEL_4;
  }

  type metadata accessor for GyroCircularBuffer();
  swift_allocObject();
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  v9 = sub_24608EB44(100, &v14);
  if (v9)
  {
    v10 = v9;
    [*(v2 + 16) setQualityOfService_];
    *(v2 + 24) = a1;
    v11 = a1;
    [v11 setGyroUpdateInterval_];
    sub_245F8E624(&qword_27EE39F00, &qword_246096530);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;

    *(v12 + 16) = v10;

    *(v2 + 32) = v12;
  }

  else
  {
LABEL_4:

    type metadata accessor for MotionManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

void sub_245F8ECF8()
{
  v1 = *(v0 + 24);
  if (([v1 isGyroActive] & 1) == 0)
  {
    v2 = *(v0 + 16);
    v4[4] = sub_245F8F89C;
    v4[5] = v0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_245F8FC20;
    v4[3] = &unk_2858DD600;
    v3 = _Block_copy(v4);

    [v1 startGyroUpdatesToQueue:v2 withHandler:v3];
    _Block_release(v3);
  }
}

void sub_245F8EDE0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (!a2)
    {
      v12 = *(a3 + 32);
      MEMORY[0x28223BE20](v9);
      *&v25[-16] = a1;
      v13 = a1;
      os_unfair_lock_lock((v12 + 24));
      sub_245F8FB74((v12 + 16));
      os_unfair_lock_unlock((v12 + 24));

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v14 = a2;
  v15 = sub_245FA3174();
  (*(v7 + 16))(v11, v15, v6);
  v16 = a2;
  v17 = sub_2460918D4();
  v18 = sub_246091FB4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136446210;
    v26[3] = a2;
    v21 = a2;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v22 = sub_246091C54();
    v24 = sub_245F8D3C0(v22, v23, v26);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_245F8A000, v17, v18, "Motion Manager: Gyro error: %{public}s", v19, 0xCu);
    sub_245F8E6F4(v20);
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v19, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v11, v6);
}

void sub_245F8F07C()
{
  v1 = *(v0 + 24);
  if (([v1 isDeviceMotionActive] & 1) == 0)
  {
    v2 = *(v0 + 16);
    v4[4] = sub_245F8F8BC;
    v4[5] = v0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_245F8FC20;
    v4[3] = &unk_2858DD628;
    v3 = _Block_copy(v4);

    [v1 startDeviceMotionUpdatesToQueue:v2 withHandler:v3];
    _Block_release(v3);
  }
}

void sub_245F8F164(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (!a2)
    {
      v12 = *(a3 + 32);
      MEMORY[0x28223BE20](v9);
      *&v25[-16] = a1;
      v13 = a1;
      os_unfair_lock_lock((v12 + 24));
      sub_245F8FAA8((v12 + 16));
      os_unfair_lock_unlock((v12 + 24));

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v14 = a2;
  v15 = sub_245FA3174();
  (*(v7 + 16))(v11, v15, v6);
  v16 = a2;
  v17 = sub_2460918D4();
  v18 = sub_246091FB4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136446210;
    v26[3] = a2;
    v21 = a2;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v22 = sub_246091C54();
    v24 = sub_245F8D3C0(v22, v23, v26);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_245F8A000, v17, v18, "Motion Manager: DeviceMotion error: %{public}s", v19, 0xCu);
    sub_245F8E6F4(v20);
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v19, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v11, v6);
}

void sub_245F8F3E8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_245F8F488(SEL *a1, const char **a2)
{
  v4 = *(v2 + 24);
  result = [v4 *a1];
  if (result)
  {
    v6 = *a2;

    return [v4 v6];
  }

  return result;
}

uint64_t sub_245F8F4E0(void *a1, double a2, double a3)
{
  v7 = *(v3 + 32);
  os_unfair_lock_lock((v7 + 24));
  v13 = 0;
  v8 = (*(**(v7 + 16) + 288))(&v13, a2, a3);
  v10 = v9;
  v11 = v13;
  os_unfair_lock_unlock((v7 + 24));
  if ((v10 & 1) == 0)
  {
    *a1 = v11;
  }

  return v8;
}

uint64_t sub_245F8F598()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  (*(**(v1 + 16) + 224))(&v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_245F8F604()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_245F8F8C4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_245F8F658()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

char *sub_245F8F6A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_245F8E624(&qword_27EE39F18, &qword_246096608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id sub_245F8F7A4(void *a1)
{
  [a1 rotationRate];
  [a1 rotationRate];
  [a1 rotationRate];
  return [a1 timestamp];
}

uint64_t type metadata accessor for GyroCircularBuffer()
{
  result = qword_27EE3B2C0;
  if (!qword_27EE3B2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245F8F8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245F8F8C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = (*(*v4 + 296))(v2 + 40);
  result = swift_endAccess();
  *a2 = v5;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OCGyroData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OCGyroData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OCGyroData(uint64_t result, int a2, int a3)
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

uint64_t sub_245F8FA10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F8FA30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27EE39F08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE39F08);
    }
  }
}

uint64_t sub_245F8FAA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 timestamp];
  v5 = v4;
  [v2 rotationRate];
  v10[0] = v5;
  v10[1] = sqrt(v8 * v8 + v6 * v6 + v7 * v7);
  return (*(*v3 + 264))(v10);
}

uint64_t sub_245F8FB74(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2;
  sub_245F8F7A4(v4);
  v6 = v5;
  v8 = v7;

  v10[0] = v6;
  v10[1] = v8;
  return (*(*v3 + 264))(v10);
}

uint64_t sub_245F8FC24()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_245F8FC60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245F8FCC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245F8FD54;
}

void sub_245F8FD54(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245F8FE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v46[20] = *MEMORY[0x277D85DE8];
  v4 = sub_246092034();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246092004();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_246091A64();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = xmmword_246096630;
  *(v2 + 48) = xmmword_246096620;
  v39 = 1;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 1;
  *(v2 + 240) = 0;
  v11 = sub_245F90360();
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  v12 = (v2 + 144);
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  v33[1] = "gyroCacheInterval";
  v33[2] = v11;
  *(v2 + 208) = 0u;
  sub_246091A34();
  *&v41 = MEMORY[0x277D84F90];
  sub_245F91E3C(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  (*(v35 + 104))(v34, *MEMORY[0x277D85260], v36);
  *(v2 + 248) = sub_246092074();
  sub_245F8E624(&qword_27EE39F20, &qword_246096668);
  inited = swift_initStackObject();
  v14 = *MEMORY[0x277CC4E30];
  *(inited + 32) = *MEMORY[0x277CC4E30];
  v15 = MEMORY[0x277D84CC0];
  *(inited + 16) = xmmword_246096640;
  *(inited + 40) = 1278226488;
  v16 = *MEMORY[0x277CC4EC8];
  v17 = MEMORY[0x277D83B88];
  *(inited + 80) = v37;
  v18 = MEMORY[0x277CC4DD8];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v19 = *v18;
  *(inited + 104) = v17;
  *(inited + 112) = v19;
  *(inited + 144) = v17;
  *(inited + 120) = v38;
  v20 = v14;
  v21 = v16;
  v22 = v19;
  sub_245F91D00(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39F28, &qword_246096670);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_245F91E3C(&qword_27EE39F30, type metadata accessor for CFString);
  v23 = sub_246091B34();

  v46[0] = 0;
  result = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v23, v46);
  if (result)
  {

    sub_245F91E84(v3 + 16);
    v25 = *(v3 + 192);
    v43 = *(v3 + 176);
    v44 = v25;
    v45 = *(v3 + 208);
    v26 = *(v3 + 160);
    v41 = *v12;
    v42 = v26;
    sub_245F91EAC(&v41);
LABEL_6:

    type metadata accessor for MaskingManager();
    swift_deallocPartialClassInstance();
    v3 = 0;
LABEL_7:
    v31 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v27 = v46[0];
  if (v46[0])
  {
    *(v3 + 224) = v46[0];
    v40 = 0;
    *&v41 = 0;
    v28 = v27;
    result = OCMaskingCreate();
    if (result)
    {

      sub_245F91E84(v3 + 16);
      v29 = *(v3 + 192);
      v43 = *(v3 + 176);
      v44 = v29;
      v45 = *(v3 + 208);
      v30 = *(v3 + 160);
      v41 = *v12;
      v42 = v30;
      sub_245F91EAC(&v41);

      goto LABEL_6;
    }

    v32 = v41;
    if (v41)
    {

      *(v3 + 232) = v32;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_245F90360()
{
  result = qword_27EE3A220;
  if (!qword_27EE3A220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A220);
  }

  return result;
}

uint64_t sub_245F903AC()
{
  v1 = *(v0 + 232);
  result = OCMaskingDestroy();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_245F91E84(v0 + 16);
    v3 = *(v0 + 144);

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_245F9040C()
{
  if (*(v0 + 240))
  {
    return 1;
  }

  v2 = *(v0 + 232);
  if (OCMaskingStart())
  {
    return 0;
  }

  result = 1;
  *(v0 + 240) = 1;
  return result;
}

uint64_t sub_245F90454()
{
  if (*(v0 + 240) == 1)
  {
    v1 = *(v0 + 232);
    if (OCMaskingStop())
    {
      return 0;
    }

    *(v0 + 240) = 0;
  }

  return 1;
}

uint64_t sub_245F90494(double *a1, void *a2, uint64_t a3, uint64_t *a4, char a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v50 = a9;
  v51 = a10;
  v48 = a7;
  v49 = a8;
  v47 = a6;
  v16 = sub_2460919F4();
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_246091A64();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 241) & 1) == 0)
  {
    v26 = *a1;
    if (*a1 - *(v10 + 40) >= 0.2)
    {
      v27 = *a4;
      v28 = *(a4 + 3);
      v44 = *(a4 + 2);
      v43 = v28;
      v29 = *(a4 + 5);
      v42 = *(a4 + 4);
      v41 = v29;
      *(v10 + 40) = v26;
      *(v10 + 241) = 1;
      v45 = *(v10 + 248);
      v46 = result;
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      v32 = *(a3 + 16);
      *(v31 + 32) = *a3;
      *(v31 + 48) = v32;
      *(v31 + 64) = *(a3 + 32);
      *(v31 + 72) = a2;
      *(v31 + 80) = v26;
      v33 = v48;
      *(v31 + 96) = v47;
      *(v31 + 112) = v27;
      v34 = v49;
      v35 = v50;
      *(v31 + 128) = v33;
      *(v31 + 144) = v34;
      v36 = v51;
      *(v31 + 160) = v35;
      *(v31 + 176) = v36;
      v37 = v43;
      *(v31 + 192) = v44;
      *(v31 + 208) = v37;
      v38 = v41;
      *(v31 + 224) = v42;
      *(v31 + 240) = v38;
      *(v31 + 256) = a5 & 1;
      aBlock[4] = sub_245F91FB8;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245F913A4;
      aBlock[3] = &unk_2858DD7A0;
      v39 = _Block_copy(aBlock);

      v40 = a2;

      sub_246091A14();
      v53 = MEMORY[0x277D84F90];
      sub_245F91E3C(&qword_27EE3A380, MEMORY[0x277D85198]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
      sub_2460921A4();
      MEMORY[0x24C1969D0](0, v25, v19, v39);
      _Block_release(v39);
      (*(v52 + 8))(v19, v16);
      (*(v21 + 8))(v25, v46);
    }
  }

  return result;
}

uint64_t sub_245F9089C(double a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, __int128 a18)
{
  *&v142 = a12;
  v143 = a7;
  v144 = a8;
  v140 = a5;
  v141 = a6;
  v138 = a3;
  v139 = a4;
  v146 = a2;
  v172 = *MEMORY[0x277D85DE8];
  v22 = sub_2460918F4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  *&v145 = &v125 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v125 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_34;
  }

  v33 = result;
  v128 = a13;
  v127 = v27;
  v135 = a18;
  v136 = a17;
  v34 = *sub_24608FC58();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v147 = 1;
  *(v33 + 64) = 0u;
  *(v33 + 80) = 0u;
  v35 = v33 + 64;
  *(v33 + 96) = 0u;
  *(v33 + 112) = 0u;
  *(v33 + 128) = 1;
  v36 = *(v33 + 208);
  v171[3] = *(v33 + 192);
  v171[4] = v36;
  v37 = *(v33 + 176);
  v171[1] = *(v33 + 160);
  v171[2] = v37;
  v171[0] = *(v33 + 144);
  *(v33 + 176) = 0u;
  *(v33 + 192) = 0u;
  *(v33 + 208) = 0u;
  *(v33 + 144) = 0u;
  *(v33 + 160) = 0u;
  sub_245F91EAC(v171);
  v38 = sub_245FA3174();
  v39 = *(v23 + 16);
  v132 = v38;
  v133 = v23 + 16;
  v131 = v39;
  (v39)(v31);
  v40 = v23;
  v41 = sub_2460918D4();
  v42 = sub_246091FA4();
  v137 = v22;
  v43 = v42;
  v44 = os_log_type_enabled(v41, v42);
  v134 = a11;
  v130 = a10;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v170[0] = v46;
    *v45 = 134349314;
    *(v45 + 4) = a1;
    *(v45 + 12) = 2082;
    v160 = v146;
    v129 = v40;
    sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
    v126 = v33;
    sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850);
    v47 = sub_246092404();
    v49 = sub_245F8D3C0(v47, v48, v170);

    *(v45 + 14) = v49;
    v33 = v126;
    _os_log_impl(&dword_245F8A000, v41, v43, "Masking Manager: Started bounding box compute at timestamp %{public}f with world point %{public}s", v45, 0x16u);
    sub_245F8E6F4(v46);
    MEMORY[0x24C1989D0](v46, -1, -1);
    v50 = v45;
    a11 = v134;
    MEMORY[0x24C1989D0](v50, -1, -1);

    v51 = v129;
    v52 = *(v129 + 8);
    v53 = v137;
    v52(v31, v137);
  }

  else
  {

    v52 = *(v40 + 8);
    v53 = v137;
    v52(v31, v137);
    v51 = v40;
  }

  v60 = sub_245F913F0(a11, v142, v146, v138, v139, v140, v141, v143, v144, v136, v54, v55, v56, v57, v58, v59, v135);
  v61 = v145;
  if ((v60 & 1) == 0)
  {
    if (!(*(*v33 + 168))())
    {
      goto LABEL_33;
    }

    v74 = v73;
    v75 = a11;
    ObjectType = swift_getObjectType();
    v77 = *(v35 + 48);
    v157 = *(v35 + 32);
    v158 = v77;
    LOBYTE(v159) = *(v35 + 64);
    v78 = *(v35 + 16);
    v155 = *v35;
    v156 = v78;
    v79 = *(v35 + 96);
    v80 = *(v35 + 128);
    v170[2] = *(v35 + 112);
    v170[3] = v80;
    v81 = *(v35 + 128);
    v170[4] = *(v35 + 144);
    v82 = *(v35 + 96);
    v170[0] = *(v35 + 80);
    v170[1] = v82;
    v167 = v170[2];
    v168 = v81;
    v169 = *(v35 + 144);
    v165 = v170[0];
    v166 = v79;
    v83 = *(v74 + 8);
    sub_245F8E7A4(v170, &v160, &qword_27EE3AB10, &qword_246096678);
    v83(&v155, &v165, v130, v75, ObjectType, v74);
LABEL_31:

    swift_unknownObjectRelease();
    v162 = v167;
    v163 = v168;
    v164[0] = v169;
    v160 = v165;
    v161 = v166;
    v99 = &v160;
    goto LABEL_32;
  }

  v131(v145, v132, v53);

  v62 = sub_2460918D4();
  v63 = sub_246091FC4();
  if (os_log_type_enabled(v62, v63))
  {
    v129 = v51;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v170[0] = v65;
    *v64 = 136446210;
    if (*(v33 + 128))
    {
LABEL_38:

      __break(1u);
      goto LABEL_39;
    }

    v66 = v65;
    v67 = *(v33 + 96);
    v146 = *(v33 + 112);
    v68 = *(v33 + 64);
    v143 = *(v33 + 80);
    v144 = v67;
    v142 = v68;

    v160 = v142;
    v161 = v143;
    v162 = v144;
    v163 = v146;
    type metadata accessor for simd_float4x4(0);
    v69 = sub_246091C54();
    v71 = sub_245F8D3C0(v69, v70, v170);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_245F8A000, v62, v63, "Masking Manager: Successfully computed bounding box with transform = %{public}s", v64, 0xCu);
    sub_245F8E6F4(v66);
    MEMORY[0x24C1989D0](v66, -1, -1);
    MEMORY[0x24C1989D0](v64, -1, -1);

    v72 = v145;
    v53 = v137;
  }

  else
  {

    v72 = v61;
  }

  v52(v72, v53);
  if ((v128 & 1) == 0)
  {
LABEL_29:
    v112 = *sub_24608FC64();
    OCSignPostsAriadneDbgCode();
    v113 = kdebug_trace();
    if (!(*(*v33 + 168))(v113))
    {
      goto LABEL_33;
    }

    v115 = v114;
    v116 = swift_getObjectType();
    v117 = *(v35 + 48);
    v157 = *(v35 + 32);
    v158 = v117;
    LOBYTE(v159) = *(v35 + 64);
    v118 = *(v35 + 16);
    v155 = *v35;
    v156 = v118;
    v119 = *(v35 + 96);
    v120 = *(v35 + 128);
    v170[2] = *(v35 + 112);
    v170[3] = v120;
    v121 = *(v35 + 128);
    v170[4] = *(v35 + 144);
    v122 = *(v35 + 96);
    v170[0] = *(v35 + 80);
    v170[1] = v122;
    v167 = v170[2];
    v168 = v121;
    v169 = *(v35 + 144);
    v165 = v170[0];
    v166 = v119;
    v123 = *(v115 + 8);
    sub_245F8E7A4(v170, &v160, &qword_27EE3AB10, &qword_246096678);
    v123(&v155, &v165, v130, v134, v116, v115);
    goto LABEL_31;
  }

  v160.n128_u64[0] = 0;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  memset(v164, 0, 28);
  v84 = *(v33 + 232);
  result = OCMaskingGetDebugInfo();
  if (result)
  {
    memset(v170, 0, sizeof(v170));
    sub_245F9215C(v170);
    v131(v127, v132, v53);
    v85 = sub_2460918D4();
    v86 = sub_246091FB4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_245F8A000, v85, v86, "Masking Manager: Failed to get masking debug info!", v87, 2u);
      MEMORY[0x24C1989D0](v87, -1, -1);
    }

    v88 = (v52)(v127, v53);
    if ((*(*v33 + 168))(v88))
    {
      v90 = v89;
      v91 = swift_getObjectType();
      v92 = *(v35 + 48);
      v153[2] = *(v35 + 32);
      v153[3] = v92;
      v93 = *(v35 + 16);
      v153[0] = *v35;
      v153[1] = v93;
      v94 = *(v35 + 96);
      v95 = *(v35 + 128);
      v157 = *(v35 + 112);
      v158 = v95;
      v96 = *(v35 + 128);
      v159 = *(v35 + 144);
      v97 = *(v35 + 96);
      v155 = *(v35 + 80);
      v156 = v97;
      v150 = v157;
      v151 = v96;
      v152 = *(v35 + 144);
      v154 = *(v35 + 64);
      v148 = v155;
      v149 = v94;
      v98 = *(v90 + 8);
      sub_245F8E7A4(&v155, &v165, &qword_27EE3AB10, &qword_246096678);
      v98(v153, &v148, v130, v134, v91, v90);

      swift_unknownObjectRelease();
      v167 = v150;
      v168 = v151;
      v169 = v152;
      v165 = v148;
      v166 = v149;
      v99 = &v165;
LABEL_32:
      result = sub_245F91EAC(v99);
LABEL_34:
      v124 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_33:

    goto LABEL_34;
  }

  v100 = v160.n128_u64[0];
  if (v160.n128_u64[0])
  {
    v101 = v33;
    type metadata accessor for OCDataBuffer();
    v102 = sub_246091194(v100);
    sub_246022048(v102, 0, v170);

    v144 = *(&v170[1] + 8);
    v145 = *(v170 + 8);
    v142 = *(&v170[3] + 8);
    v143 = *(&v170[2] + 8);
    v103 = *&v170[0];
    v104 = *(&v170[4] + 1);
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    sub_245F9215C(&v165);
    if (v103 && DWORD2(v164[1]))
    {
      v105 = 0;
      v106 = 4 * DWORD2(v164[1]);
      v146 = xmmword_246096650;
      while (*&v164[1])
      {
        if (!v103)
        {
          __break(1u);
          break;
        }

        v107 = *(*&v164[1] + v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_245F91CEC(v103);
        }

        if (*(v103 + 2) <= v107)
        {
          __break(1u);
        }

        *&v103[48 * v107 + 64] = v146;
        v105 += 4;
        if (v106 == v105)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_28:
    v108 = *(v35 + 128);
    v157 = *(v35 + 112);
    v158 = v108;
    v159 = *(v35 + 144);
    v109 = *(v35 + 96);
    v155 = *(v35 + 80);
    v156 = v109;
    v33 = v101;
    *(v101 + 144) = v103;
    v110 = v145;
    *(v101 + 168) = v144;
    *(v101 + 152) = v110;
    v111 = v143;
    *(v101 + 200) = v142;
    *(v101 + 184) = v111;
    *(v101 + 216) = v104;
    sub_245F91EAC(&v155);
    goto LABEL_29;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_245F9135C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_245F913A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_245F913F0(void *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, float32x4_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  v18 = v17;
  v70 = a9;
  v71 = a10;
  v68 = a3;
  v69 = a8;
  v66 = a6;
  v67 = a7;
  v64 = a4;
  v65 = a5;
  v92 = *MEMORY[0x277D85DE8];
  v21 = sub_2460918F4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  if (v18[15].i8[0])
  {
    v63 = a17;
    v90 = 0;
    v91 = 0;
    [a1 transform];
    v84 = v29;
    v85 = v30;
    v86 = v31;
    v87 = v32;
    [a1 center];
    v88 = v33;
    v34 = [a1 planeExtent];
    [v34 width];
    v62 = v35;

    v36 = [a1 planeExtent];
    [v36 height];
    v61 = v37;

    *&v38 = v62;
    *(&v38 + 1) = v61;
    v89 = v38;
    v90 = 0;
    LODWORD(v91) = 0;
    v78 = v69;
    v79 = v70;
    v80 = v71;
    v81 = v63;
    v82 = v68;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v39 = v18[14].i64[1];
    v40 = *(a2 + 16);
    ObjectVoxelsAndComputeBBox = OCMaskingCreateObjectVoxelsAndComputeBBox();
    if (!ObjectVoxelsAndComputeBBox)
    {
      sub_2460219F0(ObjectVoxelsAndComputeBBox, *&v74, *&v75, *&v76, *&v77, v64.n128_f64[0], v65.n128_f64[0], v66);
      OCBoundingBox.init(transform:)(&v73, v57);
      v72 = v73;
      OCBoundingBox.scale(_:)(v83, v18[3]);
      v58 = v83[1];
      v59 = v83[2];
      v60 = v83[3];
      v73.transform.columns[0].i8[0] = 0;
      v18[4] = v83[0];
      v18[5] = v58;
      v18[6] = v59;
      v18[7] = v60;
      v18[8].i8[0] = 0;
      result = 1;
      goto LABEL_10;
    }

    v42 = ObjectVoxelsAndComputeBBox;
    v43 = sub_245FA3174();
    (*(v22 + 16))(v26, v43, v21);
    v44 = sub_2460918D4();
    v45 = sub_246091FB4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v71.n128_u64[0] = swift_slowAlloc();
      v83[0].i64[0] = v71.n128_u64[0];
      *v46 = 136446210;
      v73.transform.columns[0].i32[0] = v42;
      type metadata accessor for OCReturn(0);
      v47 = sub_246091C54();
      v49 = sub_245F8D3C0(v47, v48, v83);

      *(v46 + 4) = v49;
      _os_log_impl(&dword_245F8A000, v44, v45, "Masking Manager: Failed to compute bounding box with error: %{public}s", v46, 0xCu);
      v50 = v71.n128_u64[0];
      sub_245F8E6F4(v71.n128_u64[0]);
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    (*(v22 + 8))(v26, v21);
    result = 0;
    v83[0].i8[0] = 1;
  }

  else
  {
    v52 = sub_245FA3174();
    (*(v22 + 16))(v28, v52, v21);
    v53 = sub_2460918D4();
    v54 = sub_246091FB4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_245F8A000, v53, v54, "Masking Manager: Failed to compute bounding box because masking manager has not been started!", v55, 2u);
      MEMORY[0x24C1989D0](v55, -1, -1);
    }

    (*(v22 + 8))(v28, v21);
    result = 0;
    LOBYTE(v84) = 1;
  }

  v18[4] = 0u;
  v18[5] = 0u;
  v18[6] = 0u;
  v18[7] = 0u;
  v18[8].i8[0] = 1;
LABEL_10:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F91868()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_246091894();
}

uint64_t sub_245F918B4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_246091884();
}

uint64_t sub_245F9190C()
{
  sub_246092504();
  v1 = *v0;
  swift_getWitnessTable();
  sub_246091884();
  return sub_246092544();
}

_DWORD *sub_245F91988@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_245F919A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_246091874();
}

char *sub_245F91A10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_245F8E624(&qword_27EE39F58, &qword_24609AD40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

unint64_t sub_245F91B2C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_246092504();
  type metadata accessor for CFString(0);
  sub_245F91E3C(&qword_27EE39F68, type metadata accessor for CFString);
  sub_246091884();
  v4 = sub_246092544();

  return sub_245F91BE0(a1, v4);
}

unint64_t sub_245F91BE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_245F91E3C(&qword_27EE39F68, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_246091874();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_245F91D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE39F60, qword_246096860);
    v3 = sub_246092384();
    v4 = a1 + 32;

    while (1)
    {
      sub_245F8E7A4(v4, &v11, &qword_27EE39F28, &qword_246096670);
      v5 = v11;
      result = sub_245F91B2C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_245F8E6C0(&v12, (v3[7] + 32 * result));
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

uint64_t sub_245F91E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245F91EAC(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AB10, &qword_246096678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245F91F38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245F91F70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 257, 15);
}

uint64_t sub_245F92008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_245F92034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245F92048(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F92068(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_245F9218C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_245F9135C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_245F921D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_245F921E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F92208(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_245F92254(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_245F922A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_245F922BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_245F92318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_245F92390()
{
  result = MEMORY[0x24C196640](0xD000000000000032, 0x800000024609E7C0);
  qword_27EE3B558 = 0xD00000000000001ELL;
  qword_27EE3B560 = 0x800000024609E7A0;
  return result;
}

uint64_t sub_245F92400()
{
  v0 = *MEMORY[0x277CE51C0];
  result = sub_246091C04();
  qword_27EE3B570 = result;
  qword_27EE3B578 = v2;
  return result;
}

uint64_t sub_245F92434()
{
  if (!sub_245F94E08(0xD00000000000001ALL, 0x800000024609E440))
  {
    return 2;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_246091BD4();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_245F9252C()
{
  if (sub_245F94E08(0xD00000000000002ALL, 0x800000024609E4A0))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_27EE3EF51 = v2;
}

char *sub_245F925DC()
{
  if (qword_27EE3B580 != -1)
  {
    swift_once();
  }

  return &byte_27EE3EF51;
}

void sub_245F9262C()
{
  if (sub_245F94E08(0xD000000000000021, 0x800000024609E4D0))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_27EE3EF52 = v2;
}

char *sub_245F926DC()
{
  if (qword_27EE3B588 != -1)
  {
    swift_once();
  }

  return &byte_27EE3EF52;
}

void sub_245F9272C()
{
  if (qword_27EE3B550 != -1)
  {
    swift_once();
  }

  if (sub_245F94E08(qword_27EE3B558, qword_27EE3B560))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    [v0 floatForKey_];
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  dword_27EE3EF54 = LODWORD(v3);
}

int *sub_245F92808()
{
  if (qword_27EE3B590 != -1)
  {
    swift_once();
  }

  return &dword_27EE3EF54;
}

uint64_t sub_245F92858()
{
  if (!sub_245F94E08(0xD000000000000014, 0x800000024609E500))
  {
    return 2;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_246091BD4();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_245F92920()
{
  if (sub_245F94E08(0xD00000000000003ELL, 0x800000024609E5F0))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 1;
  }

  byte_27EE3EF58 = v2;
}

char *sub_245F929D0()
{
  if (qword_27EE3B598 != -1)
  {
    swift_once();
  }

  return &byte_27EE3EF58;
}

unint64_t sub_245F92A20()
{
  if (qword_27EE3B568 != -1)
  {
    swift_once();
  }

  v0 = sub_245F94E08(qword_27EE3B570, qword_27EE3B578);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

unint64_t sub_245F92B24()
{
  v0 = sub_245F94E08(0xD00000000000003ALL, 0x800000024609E520);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

unint64_t sub_245F92BFC()
{
  v0 = sub_245F94E08(0xD00000000000003CLL, 0x800000024609E560);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

unint64_t sub_245F92CD4()
{
  v0 = sub_245F94E08(0xD000000000000048, 0x800000024609E5A0);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

uint64_t sub_245F92E28()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v254 = &v241 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v251 = &v241 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v250 = &v241 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v256 = &v241 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v255 = &v241 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v249 = &v241 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v253 = &v241 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v244 = &v241 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v258 = &v241 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v259 = &v241 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v243 = &v241 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v248 = &v241 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v252 = &v241 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v247 = &v241 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v246 = &v241 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v257 = &v241 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v241 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v245 = &v241 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v242 = &v241 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v241 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v241 - v45;
  v47 = sub_245FA3234();
  v48 = v1;
  v50 = *(v1 + 16);
  v49 = v1 + 16;
  v262 = v50;
  v263 = v47;
  (v50)(v46);
  v51 = sub_2460918D4();
  v52 = sub_246091FA4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = v48;
    v54 = v37;
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_245F8A000, v51, v52, "User defaults summary:", v55, 2u);
    v56 = v55;
    v37 = v54;
    v48 = v53;
    MEMORY[0x24C1989D0](v56, -1, -1);
  }

  v261 = *(v48 + 8);
  v264 = v48 + 8;
  v261(v46, v0);
  v57 = sub_245F94E08(0xD00000000000001ALL, 0x800000024609E440);
  v260 = v49;
  if (v57)
  {
    v241 = v37;

    v58 = [objc_opt_self() standardUserDefaults];
    v59 = sub_246091BD4();
    v60 = [v58 BOOLForKey_];

    v262(v44, v263, v0);
    v61 = sub_2460918D4();
    v62 = sub_246091FA4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v265[0] = v64;
      *v63 = 136380931;
      *(v63 + 4) = sub_245F8D3C0(0xD00000000000001ALL, 0x800000024609E440, v265);
      *(v63 + 12) = 1025;
      *(v63 + 14) = v60;
      _os_log_impl(&dword_245F8A000, v61, v62, "%{private}s: %{BOOL,private}d", v63, 0x12u);
      sub_245F8E6F4(v64);
      MEMORY[0x24C1989D0](v64, -1, -1);
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    v261(v44, v0);
    v37 = v241;
  }

  v65 = sub_245F95340();
  v66 = v259;
  v67 = v257;
  if ((v65 & 0x100000000) == 0)
  {
    v68 = *&v65;
    v69 = v242;
    v262(v242, v263, v0);
    v70 = sub_2460918D4();
    v71 = sub_246091FA4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v68;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v265[0] = v74;
      *v73 = 136380931;
      *(v73 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x800000024609E770, v265);
      *(v73 + 12) = 2049;
      *(v73 + 14) = v72;
      _os_log_impl(&dword_245F8A000, v70, v71, "%{private}s: %{private}f", v73, 0x16u);
      sub_245F8E6F4(v74);
      MEMORY[0x24C1989D0](v74, -1, -1);
      v75 = v73;
      v66 = v259;
      MEMORY[0x24C1989D0](v75, -1, -1);
    }

    v261(v69, v0);
  }

  if (sub_245F94E08(0xD000000000000034, 0x800000024609E460))
  {

    v76 = [objc_opt_self() standardUserDefaults];
    v77 = sub_246091BD4();
    v78 = [v76 BOOLForKey_];

    v79 = v245;
    v262(v245, v263, v0);
    v80 = sub_2460918D4();
    v81 = sub_246091FA4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v265[0] = v83;
      *v82 = 136380931;
      *(v82 + 4) = sub_245F8D3C0(0xD000000000000034, 0x800000024609E460, v265);
      *(v82 + 12) = 1025;
      *(v82 + 14) = v78;
      _os_log_impl(&dword_245F8A000, v80, v81, "%{private}s: %{BOOL,private}d", v82, 0x12u);
      sub_245F8E6F4(v83);
      MEMORY[0x24C1989D0](v83, -1, -1);
      MEMORY[0x24C1989D0](v82, -1, -1);
    }

    v261(v79, v0);
    v66 = v259;
    v67 = v257;
  }

  v84 = sub_245F95410();
  v85 = v258;
  if ((v84 & 0x100000000) == 0)
  {
    v86 = *&v84;
    v262(v37, v263, v0);
    v87 = sub_2460918D4();
    v88 = sub_246091FA4();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v86;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v265[0] = v91;
      *v90 = 136380931;
      *(v90 + 4) = sub_245F8D3C0(0xD000000000000029, 0x800000024609E740, v265);
      *(v90 + 12) = 2049;
      *(v90 + 14) = v89;
      _os_log_impl(&dword_245F8A000, v87, v88, "%{private}s: %{private}f", v90, 0x16u);
      sub_245F8E6F4(v91);
      v92 = v91;
      v66 = v259;
      MEMORY[0x24C1989D0](v92, -1, -1);
      MEMORY[0x24C1989D0](v90, -1, -1);
    }

    v261(v37, v0);
  }

  v93 = sub_245F954E0();
  if ((v94 & 1) == 0)
  {
    v95 = v93;
    v262(v67, v263, v0);
    v96 = sub_2460918D4();
    v97 = sub_246091FA4();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v265[0] = v99;
      *v98 = 136380931;
      *(v98 + 4) = sub_245F8D3C0(0xD000000000000025, 0x800000024609E710, v265);
      *(v98 + 12) = 2049;
      *(v98 + 14) = v95;
      _os_log_impl(&dword_245F8A000, v96, v97, "%{private}s: %{private}f", v98, 0x16u);
      sub_245F8E6F4(v99);
      v100 = v99;
      v85 = v258;
      MEMORY[0x24C1989D0](v100, -1, -1);
      v101 = v98;
      v66 = v259;
      MEMORY[0x24C1989D0](v101, -1, -1);
    }

    v261(v67, v0);
  }

  if (sub_245F94E08(0xD00000000000002ALL, 0x800000024609E4A0))
  {

    v102 = [objc_opt_self() standardUserDefaults];
    v103 = sub_246091BD4();
    v104 = [v102 BOOLForKey_];

    v105 = v246;
    v262(v246, v263, v0);
    v106 = sub_2460918D4();
    v107 = sub_246091FA4();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v265[0] = v109;
      *v108 = 136380931;
      *(v108 + 4) = sub_245F8D3C0(0xD00000000000002ALL, 0x800000024609E4A0, v265);
      *(v108 + 12) = 1025;
      *(v108 + 14) = v104;
      _os_log_impl(&dword_245F8A000, v106, v107, "%{private}s: %{BOOL,private}d", v108, 0x12u);
      sub_245F8E6F4(v109);
      MEMORY[0x24C1989D0](v109, -1, -1);
      MEMORY[0x24C1989D0](v108, -1, -1);
    }

    v261(v105, v0);
    v85 = v258;
    v66 = v259;
  }

  v110 = sub_245F94E08(0xD000000000000021, 0x800000024609E4D0);
  v111 = v252;
  if (v110)
  {

    v112 = [objc_opt_self() standardUserDefaults];
    v113 = sub_246091BD4();
    v114 = [v112 BOOLForKey_];

    v115 = v247;
    v262(v247, v263, v0);
    v116 = sub_2460918D4();
    v117 = sub_246091FA4();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v265[0] = v119;
      *v118 = 136380931;
      *(v118 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609E4D0, v265);
      *(v118 + 12) = 1025;
      *(v118 + 14) = v114;
      _os_log_impl(&dword_245F8A000, v116, v117, "%{private}s: %{BOOL,private}d", v118, 0x12u);
      sub_245F8E6F4(v119);
      MEMORY[0x24C1989D0](v119, -1, -1);
      MEMORY[0x24C1989D0](v118, -1, -1);
    }

    v261(v115, v0);
    v85 = v258;
    v66 = v259;
  }

  if (qword_27EE3B550 != -1)
  {
    swift_once();
  }

  v120 = qword_27EE3B558;
  v121 = qword_27EE3B560;
  if (sub_245F94E08(qword_27EE3B558, qword_27EE3B560))
  {

    v122 = [objc_opt_self() standardUserDefaults];
    v123 = sub_246091BD4();
    [v122 floatForKey_];
    v125 = v124;

    v262(v111, v263, v0);
    v126 = sub_2460918D4();
    v127 = sub_246091FA4();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v265[0] = v129;
      *v128 = 136380931;
      *(v128 + 4) = sub_245F8D3C0(v120, v121, v265);
      *(v128 + 12) = 2049;
      *(v128 + 14) = v125;
      _os_log_impl(&dword_245F8A000, v126, v127, "%{private}s: %{private}f", v128, 0x16u);
      sub_245F8E6F4(v129);
      MEMORY[0x24C1989D0](v129, -1, -1);
      MEMORY[0x24C1989D0](v128, -1, -1);
    }

    v261(v111, v0);
    v85 = v258;
    v66 = v259;
  }

  if (sub_245F94E08(0xD000000000000014, 0x800000024609E500))
  {

    v130 = [objc_opt_self() standardUserDefaults];
    v131 = sub_246091BD4();
    v132 = [v130 BOOLForKey_];

    v133 = v248;
    v262(v248, v263, v0);
    v134 = sub_2460918D4();
    v135 = sub_246091FA4();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v265[0] = v137;
      *v136 = 136380931;
      *(v136 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609E500, v265);
      *(v136 + 12) = 1025;
      *(v136 + 14) = v132;
      _os_log_impl(&dword_245F8A000, v134, v135, "%{private}s: %{BOOL,private}d", v136, 0x12u);
      sub_245F8E6F4(v137);
      MEMORY[0x24C1989D0](v137, -1, -1);
      MEMORY[0x24C1989D0](v136, -1, -1);
    }

    v261(v133, v0);
    v85 = v258;
    v66 = v259;
  }

  v138 = sub_245F9559C();
  v139 = v255;
  v140 = v253;
  if (v141)
  {
    v142 = sub_245F9565C();
    if (v143)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v146 = v138;
    v147 = v255;
    v148 = v253;
    v149 = v243;
    v262(v243, v263, v0);
    v150 = sub_2460918D4();
    v151 = sub_246091FA4();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v265[0] = v153;
      *v152 = 136380931;
      *(v152 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x800000024609E6F0, v265);
      *(v152 + 12) = 2049;
      *(v152 + 14) = v146;
      _os_log_impl(&dword_245F8A000, v150, v151, "%{private}s: %{private}ld", v152, 0x16u);
      sub_245F8E6F4(v153);
      v154 = v153;
      v85 = v258;
      MEMORY[0x24C1989D0](v154, -1, -1);
      v155 = v152;
      v66 = v259;
      MEMORY[0x24C1989D0](v155, -1, -1);
    }

    v261(v149, v0);
    v140 = v148;
    v139 = v147;
    v142 = sub_245F9565C();
    if (v156)
    {
LABEL_43:
      v144 = sub_245F95718();
      if ((v144 & 0x100000000) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }
  }

  v157 = v142;
  v262(v66, v263, v0);
  v158 = sub_2460918D4();
  v159 = sub_246091FA4();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = v140;
    v161 = v66;
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v265[0] = v163;
    *v162 = 136380931;
    *(v162 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x800000024609E6D0, v265);
    *(v162 + 12) = 2049;
    *(v162 + 14) = v157;
    _os_log_impl(&dword_245F8A000, v158, v159, "%{private}s: %{private}f", v162, 0x16u);
    sub_245F8E6F4(v163);
    v164 = v163;
    v85 = v258;
    MEMORY[0x24C1989D0](v164, -1, -1);
    MEMORY[0x24C1989D0](v162, -1, -1);

    v165 = v161;
    v140 = v160;
    v139 = v255;
  }

  else
  {

    v165 = v66;
  }

  v261(v165, v0);
  v144 = sub_245F95718();
  if ((v144 & 0x100000000) != 0)
  {
LABEL_44:
    v145 = sub_245F957E8();
    if ((v145 & 0x100000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_53:
  v166 = *&v144;
  v262(v85, v263, v0);
  v167 = sub_2460918D4();
  v168 = sub_246091FA4();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = v166;
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v265[0] = v171;
    *v170 = 136380931;
    *(v170 + 4) = sub_245F8D3C0(0xD000000000000023, 0x800000024609E6A0, v265);
    *(v170 + 12) = 2049;
    *(v170 + 14) = v169;
    _os_log_impl(&dword_245F8A000, v167, v168, "%{private}s: %{private}f", v170, 0x16u);
    sub_245F8E6F4(v171);
    MEMORY[0x24C1989D0](v171, -1, -1);
    MEMORY[0x24C1989D0](v170, -1, -1);
  }

  v261(v85, v0);
  v145 = sub_245F957E8();
  if ((v145 & 0x100000000) == 0)
  {
LABEL_56:
    v172 = *&v145;
    v173 = v244;
    v262(v244, v263, v0);
    v174 = sub_2460918D4();
    v175 = sub_246091FA4();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = v172;
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v265[0] = v178;
      *v177 = 136380931;
      *(v177 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609E670, v265);
      *(v177 + 12) = 2049;
      *(v177 + 14) = v176;
      _os_log_impl(&dword_245F8A000, v174, v175, "%{private}s: %{private}f", v177, 0x16u);
      sub_245F8E6F4(v178);
      MEMORY[0x24C1989D0](v178, -1, -1);
      MEMORY[0x24C1989D0](v177, -1, -1);
    }

    v261(v173, v0);
  }

LABEL_59:
  if (sub_245F94E08(0xD00000000000003ELL, 0x800000024609E5F0))
  {

    v179 = [objc_opt_self() standardUserDefaults];
    v180 = sub_246091BD4();
    v181 = [v179 BOOLForKey_];

    v262(v140, v263, v0);
    v182 = sub_2460918D4();
    v183 = sub_246091FA4();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v265[0] = v185;
      *v184 = 136380931;
      *(v184 + 4) = sub_245F8D3C0(0xD00000000000003ELL, 0x800000024609E5F0, v265);
      *(v184 + 12) = 1025;
      *(v184 + 14) = v181;
      _os_log_impl(&dword_245F8A000, v182, v183, "%{private}s: %{BOOL,private}d", v184, 0x12u);
      sub_245F8E6F4(v185);
      MEMORY[0x24C1989D0](v185, -1, -1);
      MEMORY[0x24C1989D0](v184, -1, -1);
    }

    v261(v140, v0);
  }

  if (qword_27EE3B568 != -1)
  {
    swift_once();
  }

  v186 = qword_27EE3B570;
  v187 = qword_27EE3B578;
  if (sub_245F94E08(qword_27EE3B570, qword_27EE3B578))
  {

    v188 = [objc_opt_self() standardUserDefaults];
    v189 = sub_246091BD4();
    [v188 floatForKey_];
    v191 = v190;

    v192 = v249;
    v262(v249, v263, v0);
    v193 = sub_2460918D4();
    v194 = sub_246091FA4();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v265[0] = v196;
      *v195 = 136380931;
      *(v195 + 4) = sub_245F8D3C0(v186, v187, v265);
      *(v195 + 12) = 2049;
      *(v195 + 14) = v191;
      _os_log_impl(&dword_245F8A000, v193, v194, "%{private}s: %{private}f", v195, 0x16u);
      sub_245F8E6F4(v196);
      MEMORY[0x24C1989D0](v196, -1, -1);
      MEMORY[0x24C1989D0](v195, -1, -1);
    }

    v261(v192, v0);
  }

  v197 = sub_245F94E08(0xD00000000000003ALL, 0x800000024609E520);
  v198 = v256;
  if (v197)
  {

    v199 = [objc_opt_self() standardUserDefaults];
    v200 = sub_246091BD4();
    [v199 floatForKey_];
    v202 = v201;

    v262(v139, v263, v0);
    v203 = sub_2460918D4();
    v204 = sub_246091FA4();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v265[0] = v206;
      *v205 = 136380931;
      *(v205 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x800000024609E520, v265);
      *(v205 + 12) = 2049;
      *(v205 + 14) = v202;
      _os_log_impl(&dword_245F8A000, v203, v204, "%{private}s: %{private}f", v205, 0x16u);
      sub_245F8E6F4(v206);
      MEMORY[0x24C1989D0](v206, -1, -1);
      v207 = v205;
      v198 = v256;
      MEMORY[0x24C1989D0](v207, -1, -1);
    }

    v261(v139, v0);
  }

  if (sub_245F94E08(0xD00000000000003CLL, 0x800000024609E560))
  {

    v208 = [objc_opt_self() standardUserDefaults];
    v209 = sub_246091BD4();
    [v208 floatForKey_];
    v211 = v210;

    v262(v198, v263, v0);
    v212 = sub_2460918D4();
    v213 = sub_246091FA4();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = v198;
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v265[0] = v216;
      *v215 = 136380931;
      *(v215 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x800000024609E560, v265);
      *(v215 + 12) = 2049;
      *(v215 + 14) = v211;
      _os_log_impl(&dword_245F8A000, v212, v213, "%{private}s: %{private}f", v215, 0x16u);
      sub_245F8E6F4(v216);
      MEMORY[0x24C1989D0](v216, -1, -1);
      MEMORY[0x24C1989D0](v215, -1, -1);

      v217 = v214;
    }

    else
    {

      v217 = v198;
    }

    v261(v217, v0);
  }

  if (sub_245F94E08(0xD000000000000048, 0x800000024609E5A0))
  {

    v218 = [objc_opt_self() standardUserDefaults];
    v219 = sub_246091BD4();
    [v218 floatForKey_];
    v221 = v220;

    v222 = v250;
    v262(v250, v263, v0);
    v223 = sub_2460918D4();
    v224 = sub_246091FA4();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v265[0] = v226;
      *v225 = 136380931;
      *(v225 + 4) = sub_245F8D3C0(0xD000000000000048, 0x800000024609E5A0, v265);
      *(v225 + 12) = 2049;
      *(v225 + 14) = v221;
      _os_log_impl(&dword_245F8A000, v223, v224, "%{private}s: %{private}f", v225, 0x16u);
      sub_245F8E6F4(v226);
      MEMORY[0x24C1989D0](v226, -1, -1);
      MEMORY[0x24C1989D0](v225, -1, -1);
    }

    v261(v222, v0);
  }

  v227 = sub_245F94E08(0xD00000000000003ALL, 0x800000024609E630);
  v228 = v254;
  if (v227)
  {

    v229 = [objc_opt_self() standardUserDefaults];
    v230 = sub_246091BD4();
    v231 = [v229 BOOLForKey_];

    v232 = v251;
    v262(v251, v263, v0);
    v233 = sub_2460918D4();
    v234 = sub_246091FA4();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v265[0] = v236;
      *v235 = 136380931;
      *(v235 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x800000024609E630, v265);
      *(v235 + 12) = 1025;
      *(v235 + 14) = v231;
      _os_log_impl(&dword_245F8A000, v233, v234, "%{private}s: %{BOOL,private}d", v235, 0x12u);
      sub_245F8E6F4(v236);
      MEMORY[0x24C1989D0](v236, -1, -1);
      MEMORY[0x24C1989D0](v235, -1, -1);
    }

    v261(v232, v0);
  }

  v262(v228, v263, v0);
  v237 = sub_2460918D4();
  v238 = sub_246091FA4();
  if (os_log_type_enabled(v237, v238))
  {
    v239 = swift_slowAlloc();
    *v239 = 0;
    _os_log_impl(&dword_245F8A000, v237, v238, "End of user defaults summary", v239, 2u);
    MEMORY[0x24C1989D0](v239, -1, -1);
  }

  return (v261)(v228, v0);
}

unint64_t sub_245F94E08(uint64_t a1, unint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v46 = [objc_opt_self() standardUserDefaults];
  v13 = sub_245FA3234();
  v14 = v5[2];
  v14(v12, v13, v4);

  v15 = sub_2460918D4();
  v16 = sub_246091FA4();

  v17 = os_log_type_enabled(v15, v16);
  v44 = v5;
  v45 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_245F8D3C0(v45, a2, &v47);
    _os_log_impl(&dword_245F8A000, v15, v16, "Settings: Looking for key = %{private}s", v18, 0xCu);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    v20 = v18;
    v5 = v44;
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v21 = v5[1];
  v21(v12, v4);
  v22 = v4;
  v23 = sub_246091BD4();
  v24 = [v46 stringForKey_];

  if (v24)
  {
    v25 = sub_246091C04();
    v27 = v26;

    v28 = v43;
    v14(v43, v13, v22);

    v29 = sub_2460918D4();
    v30 = sub_246091FA4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v22;
      v32 = swift_slowAlloc();
      v33 = v28;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v32 = 136380931;
      *(v32 + 4) = sub_245F8D3C0(v45, a2, &v47);
      *(v32 + 12) = 2081;
      *(v32 + 14) = sub_245F8D3C0(v25, v27, &v47);
      _os_log_impl(&dword_245F8A000, v29, v30, "Settings: Found defaults %{private}s: %{private}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v34, -1, -1);
      MEMORY[0x24C1989D0](v32, -1, -1);

      v21(v33, v31);
    }

    else
    {

      v21(v28, v22);
    }
  }

  else
  {
    v35 = v42;
    v14(v42, v13, v22);

    v36 = sub_2460918D4();
    v37 = v22;
    v38 = sub_246091FA4();

    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136380675;
      *(v39 + 4) = sub_245F8D3C0(v45, a2, &v47);
      _os_log_impl(&dword_245F8A000, v36, v38, "Settings: %{private}s not found!", v39, 0xCu);
      sub_245F8E6F4(v40);
      MEMORY[0x24C1989D0](v40, -1, -1);
      MEMORY[0x24C1989D0](v39, -1, -1);
    }

    v21(v35, v37);
    return 0;
  }

  return v27;
}

unint64_t sub_245F95340()
{
  if (sub_245F94E08(0xD00000000000002BLL, 0x800000024609E770) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_245F95410()
{
  if (sub_245F94E08(0xD000000000000029, 0x800000024609E740) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_245F954E0()
{
  result = sub_245F94E08(0xD000000000000025, 0x800000024609E710);
  if (result)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 doubleForKey_];
    v4 = v3;

    if (v4 <= 0.0)
    {
      return 0;
    }

    else
    {
      return *&v4;
    }
  }

  return result;
}

unint64_t sub_245F9559C()
{
  result = sub_245F94E08(0xD00000000000001CLL, 0x800000024609E6F0);
  if (result)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    v3 = [v1 integerForKey_];

    if ((v3 & ~(v3 >> 63)) >= 3024)
    {
      return 3024;
    }

    else
    {
      return v3 & ~(v3 >> 63);
    }
  }

  return result;
}

unint64_t sub_245F9565C()
{
  result = sub_245F94E08(0xD00000000000001DLL, 0x800000024609E6D0);
  if (result)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 doubleForKey_];
    v4 = v3;

    if (v4 <= 0.0)
    {
      return 0;
    }

    else
    {
      return *&v4;
    }
  }

  return result;
}

unint64_t sub_245F95718()
{
  if (sub_245F94E08(0xD000000000000023, 0x800000024609E6A0) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_245F957E8()
{
  if (sub_245F94E08(0xD000000000000020, 0x800000024609E670) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

__n128 PhotogrammetrySample.Camera.init(id:intrinsics:transform:trackingState:calibrationData:wideToDepthTransform:)@<Q0>(int a1@<W0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>)
{
  v10 = *a3;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 288) = 1;
  *(a6 + 304) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 1;
  *a6 = a1;
  v11 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v11;
  *(a6 + 48) = a2[2];
  *(a6 + 64) = a7;
  *(a6 + 80) = a8;
  *(a6 + 96) = a9;
  *(a6 + 112) = a10;
  *(a6 + 128) = v10;
  *(a6 + 136) = a4;
  v12 = *(a5 + 48);
  *(a6 + 176) = *(a5 + 32);
  *(a6 + 192) = v12;
  *(a6 + 208) = *(a5 + 64);
  result = *(a5 + 16);
  *(a6 + 144) = *a5;
  *(a6 + 160) = result;
  return result;
}

__n128 sub_245F95934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *(v2 + 256) = *(a1 + 32);
  *(v2 + 272) = v3;
  *(v2 + 288) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 224) = *a1;
  *(v2 + 240) = v4;
  v5 = *(a2 + 48);
  *(v2 + 336) = *(a2 + 32);
  *(v2 + 352) = v5;
  *(v2 + 368) = *(a2 + 64);
  result = *(a2 + 16);
  *(v2 + 304) = *a2;
  *(v2 + 320) = result;
  return result;
}

__n128 PhotogrammetrySample.Camera.intrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 PhotogrammetrySample.Camera.intrinsics.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 PhotogrammetrySample.Camera.transform.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

void PhotogrammetrySample.Camera.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void *PhotogrammetrySample.Camera.calibrationData.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

__n128 PhotogrammetrySample.Camera.wideToDepthTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  *(a1 + 32) = *(v1 + 176);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 208);
  result = *(v1 + 160);
  *a1 = *(v1 + 144);
  *(a1 + 16) = result;
  return result;
}

__n128 PhotogrammetrySample.Camera.wideToDepthTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v2;
  *(v1 + 208) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = result;
  return result;
}

void __swiftcall PhotogrammetrySample.Object.init(transform:boundingBox:)(CoreOC::PhotogrammetrySample::Object *__return_ptr retstr, simd_float4x4 *transform, simd_float4x4 *boundingBox)
{
  retstr->transform.columns[0] = v3;
  retstr->transform.columns[1] = v4;
  retstr->transform.columns[2] = v5;
  retstr->transform.columns[3] = v6;
  retstr->boundingBox.columns[0] = v7;
  retstr->boundingBox.columns[1] = v8;
  retstr->boundingBox.columns[2] = v9;
  retstr->boundingBox.columns[3] = v10;
}

__n128 PhotogrammetrySample.Object.transform.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

void PhotogrammetrySample.Object.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 PhotogrammetrySample.Object.boundingBox.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  return result;
}

void PhotogrammetrySample.Object.boundingBox.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void __swiftcall PhotogrammetrySample.Scene.init(boundingBox:)(CoreOC::PhotogrammetrySample::Scene *__return_ptr retstr, simd_float4x4 *boundingBox)
{
  retstr->boundingBox.columns[0] = v2;
  retstr->boundingBox.columns[1] = v3;
  retstr->boundingBox.columns[2] = v4;
  retstr->boundingBox.columns[3] = v5;
}

__n128 PhotogrammetrySample.Scene.boundingBox.getter()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return result;
}

void PhotogrammetrySample.Scene.boundingBox.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t PhotogrammetrySample.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void *PhotogrammetrySample.depthDataMap.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *PhotogrammetrySample.depthConfidenceMap.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.gravity.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  return result;
}

uint64_t PhotogrammetrySample.gravity.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = result;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4 & 1;
  return result;
}

void *PhotogrammetrySample.objectMask.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void *PhotogrammetrySample.pointCloudData.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.camera.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x171uLL);
  memcpy(a1, (v1 + 96), 0x171uLL);
  return sub_245F8E7A4(__dst, &v4, &qword_27EE39F78, &unk_246096990);
}

void *PhotogrammetrySample.camera.setter(const void *a1)
{
  memcpy(v4, (v1 + 96), 0x171uLL);
  sub_245F8E744(v4, &qword_27EE39F78, &unk_246096990);
  return memcpy((v1 + 96), a1, 0x171uLL);
}

__n128 PhotogrammetrySample.object.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 592);
  *(a1 + 96) = *(v1 + 576);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 608);
  v3 = *(v1 + 528);
  *(a1 + 32) = *(v1 + 512);
  *(a1 + 48) = v3;
  v4 = *(v1 + 560);
  *(a1 + 64) = *(v1 + 544);
  *(a1 + 80) = v4;
  result = *(v1 + 496);
  *a1 = *(v1 + 480);
  *(a1 + 16) = result;
  return result;
}

__n128 PhotogrammetrySample.object.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 576) = *(a1 + 96);
  *(v1 + 592) = v2;
  *(v1 + 608) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 512) = *(a1 + 32);
  *(v1 + 528) = v3;
  v4 = *(a1 + 80);
  *(v1 + 544) = *(a1 + 64);
  *(v1 + 560) = v4;
  result = *(a1 + 16);
  *(v1 + 480) = *a1;
  *(v1 + 496) = result;
  return result;
}

__n128 PhotogrammetrySample.scene.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 672);
  *(a1 + 32) = *(v1 + 656);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 688);
  result = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = result;
  return result;
}

__n128 PhotogrammetrySample.scene.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 656) = *(a1 + 32);
  *(v1 + 672) = v2;
  *(v1 + 688) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 624) = *a1;
  *(v1 + 640) = result;
  return result;
}

uint64_t PhotogrammetrySample.captureMode.getter()
{
  result = *(v0 + 696);
  v2 = *(v0 + 704);
  return result;
}

uint64_t PhotogrammetrySample.captureMode.setter(uint64_t result, char a2)
{
  *(v2 + 696) = result;
  *(v2 + 704) = a2 & 1;
  return result;
}

void *PhotogrammetrySample.rawFeaturePoints.getter()
{
  v1 = *(v0 + 712);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.timestamp.getter()
{
  result = *(v0 + 720);
  v2 = *(v0 + 728);
  return result;
}

uint64_t PhotogrammetrySample.timestamp.setter(uint64_t result, char a2)
{
  *(v2 + 720) = result;
  *(v2 + 728) = a2 & 1;
  return result;
}

uint64_t PhotogrammetrySample.staticSegmentID.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotogrammetrySample() + 84));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PhotogrammetrySample.staticSegmentID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PhotogrammetrySample();
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PhotogrammetrySample.init(id:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  *(a3 + 24) = sub_245F8E498(MEMORY[0x277D84F90]);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = 0u;
  sub_245F97B00(v20);
  memcpy((a3 + 96), v20, 0x171uLL);
  sub_245F97B40(v21);
  v7 = v21[7];
  *(a3 + 576) = v21[6];
  *(a3 + 592) = v7;
  *(a3 + 608) = v22;
  v8 = v21[3];
  *(a3 + 512) = v21[2];
  *(a3 + 528) = v8;
  v9 = v21[5];
  *(a3 + 544) = v21[4];
  *(a3 + 560) = v9;
  v10 = v21[1];
  *(a3 + 480) = v21[0];
  *(a3 + 496) = v10;
  v23 = 1;
  *(a3 + 624) = 0u;
  *(a3 + 640) = 0u;
  *(a3 + 656) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 1;
  *(a3 + 696) = 0;
  *(a3 + 704) = 1;
  *(a3 + 712) = 0u;
  *(a3 + 728) = 1;
  v11 = type metadata accessor for PhotogrammetrySample();
  v12 = v11[19];
  v13 = sub_2460917D4();
  (*(*(v13 - 8) + 56))(a3 + v12, 1, 1, v13);
  v14 = v11[20];
  v15 = sub_246091834();
  result = (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  v17 = a3 + v11[21];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a3 + v11[22]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a3 + v11[23];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a3 + v11[24]) = v6;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t PhotogrammetrySample.init(id:image:orientation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *(a4 + 24) = sub_245F8E498(MEMORY[0x277D84F90]);
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = 0u;
  sub_245F97B00(v22);
  memcpy((a4 + 96), v22, 0x171uLL);
  sub_245F97B40(v23);
  v9 = v23[7];
  *(a4 + 576) = v23[6];
  *(a4 + 592) = v9;
  *(a4 + 608) = v24;
  v10 = v23[3];
  *(a4 + 512) = v23[2];
  *(a4 + 528) = v10;
  v11 = v23[5];
  *(a4 + 544) = v23[4];
  *(a4 + 560) = v11;
  v12 = v23[1];
  *(a4 + 480) = v23[0];
  *(a4 + 496) = v12;
  v25 = 1;
  *(a4 + 624) = 0u;
  *(a4 + 640) = 0u;
  *(a4 + 656) = 0u;
  *(a4 + 672) = 0u;
  *(a4 + 688) = 1;
  *(a4 + 696) = 0;
  *(a4 + 704) = 1;
  *(a4 + 712) = 0u;
  *(a4 + 728) = 1;
  v13 = type metadata accessor for PhotogrammetrySample();
  v14 = v13[19];
  v15 = sub_2460917D4();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  v16 = v13[20];
  v17 = sub_246091834();
  result = (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  v19 = a4 + v13[21];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = (a4 + v13[22]);
  *v20 = 0;
  v20[1] = 0;
  v21 = a4 + v13[23];
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a4 + v13[24]) = v8;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static PhotogrammetrySample.makeSample(shot:shotMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotogrammetrySample();
  v135 = *(v6 - 1);
  v7 = *(v135 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1 == *a2)
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = *(a1 + 32);
    if (CVPixelBufferGetWidth(v11) >= 1 && CVPixelBufferGetHeight(v11) >= 1 && sub_245FC6568(v11))
    {
      v134.i64[0] = v13;
      if (!v12 || (v15 = v12, v16 = sub_245FC664C(v15), v15, v16))
      {
        if (!v14 || (v17 = v14, v18 = sub_245FC6820(v17), v17, v18))
        {
          v133 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
          v19 = a2 + v133[7];
          v20 = *(v19 + 112);
          v21 = *(v19 + 80);
          v190 = *(v19 + 96);
          v191 = v20;
          v22 = *(v19 + 112);
          v192 = *(v19 + 128);
          v23 = *(v19 + 48);
          v24 = *(v19 + 16);
          v186 = *(v19 + 32);
          v187 = v23;
          v25 = *(v19 + 48);
          v26 = *(v19 + 80);
          v188 = *(v19 + 64);
          v189 = v26;
          v27 = *v19;
          v28 = *v19;
          v185[1] = *(v19 + 16);
          v185[0] = v27;
          v194[6] = v190;
          v194[7] = v22;
          v195 = *(v19 + 128);
          v194[2] = v186;
          v194[3] = v25;
          v194[4] = v188;
          v194[5] = v21;
          v193 = *(v19 + 144);
          v196 = *(v19 + 144);
          v194[0] = v28;
          v194[1] = v24;
          result = sub_245F97C14(v194);
          if (result != 1)
          {
            v30 = v195;
            if (v195)
            {
              v31 = v192;
              v32 = sub_245FC66D0(v30);
              result = sub_245F8E744(v185, &qword_27EE3A990, &qword_246099C20);
              if (!v32)
              {
                return (*(v135 + 56))(a3, 1, 1, v6);
              }
            }
          }

          v33 = v10 * 1000.0;
          if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v33 > -9.22337204e18)
          {
            if (v33 < 9.22337204e18)
            {
              v128.i64[0] = v33;
              v129.i32[0] = *(a2 + 144);
              v34 = v11;
              v130.i64[0] = sub_245F8E498(MEMORY[0x277D84F90]);
              sub_245F97B00(v169);
              memcpy(v9 + 96, v169, 0x171uLL);
              sub_245F97B40(v170);
              v35 = v170[7];
              *(v9 + 36) = v170[6];
              *(v9 + 37) = v35;
              v9[608] = v171;
              v36 = v170[3];
              *(v9 + 32) = v170[2];
              *(v9 + 33) = v36;
              v37 = v170[5];
              *(v9 + 34) = v170[4];
              *(v9 + 35) = v37;
              v38 = v170[1];
              *(v9 + 30) = v170[0];
              *(v9 + 31) = v38;
              v172 = 1;
              *(v9 + 39) = 0u;
              *(v9 + 40) = 0u;
              *(v9 + 41) = 0u;
              *(v9 + 42) = 0u;
              v9[688] = 1;
              v39 = v6[19];
              v40 = sub_2460917D4();
              (*(*(v40 - 8) + 56))(&v9[v39], 1, 1, v40);
              v41 = v6[20];
              v42 = sub_246091834();
              v43 = *(*(v42 - 8) + 56);
              v132 = v41;
              v43(&v9[v41], 1, 1, v42);
              v44 = &v9[v6[22]];
              *v44 = 0;
              *(v44 + 1) = 0;
              v45 = &v9[v6[23]];
              *v45 = 0;
              v131 = v45;
              v45[8] = 1;
              *v9 = v128.i64[0];
              *(v9 + 1) = v34;
              v46 = v34;
              *(v9 + 4) = v129.i32[0];
              v47 = a2 + v133[10];
              v48 = *(v47 + 8);
              v129.i64[0] = *v47;
              v128.i64[0] = v48;
              v49 = *(v47 + 16);
              LOBYTE(v41) = *(v47 + 24);
              v127.i64[0] = sub_245FFF67C(v46, v129.i64[0], v48, v49, v41);

              v50 = *(v19 + 112);
              v51 = *(v19 + 80);
              v178 = *(v19 + 96);
              v179 = v50;
              v52 = *(v19 + 112);
              v180 = *(v19 + 128);
              v53 = *(v19 + 48);
              v54 = *(v19 + 16);
              v174 = *(v19 + 32);
              v175 = v53;
              v55 = *(v19 + 48);
              v56 = *(v19 + 80);
              v176 = *(v19 + 64);
              v177 = v56;
              v57 = *(v19 + 16);
              v173[0] = *v19;
              v58 = v173[0];
              v173[1] = v57;
              v182[6] = v178;
              v182[7] = v52;
              v183 = *(v19 + 128);
              v182[2] = v174;
              v182[3] = v55;
              v182[4] = v176;
              v182[5] = v51;
              *(v9 + 3) = v127.i64[0];
              *(v9 + 4) = v12;
              v59 = v129.i64[0];
              *(v9 + 5) = v14;
              *(v9 + 6) = v59;
              *(v9 + 7) = v128.i64[0];
              *(v9 + 8) = v49;
              v9[72] = v41;
              v181 = *(v19 + 144);
              v184 = *(v19 + 144);
              v182[0] = v58;
              v182[1] = v54;
              v60 = sub_245F97C14(v182);
              v61 = v183;
              if (v60 == 1)
              {
                v61 = 0;
              }

              v62 = v134.i64[0];
              *(v9 + 10) = v61;
              *(v9 + 11) = v62;
              v63 = *(a2 + 16);
              v64 = *(a2 + 32);
              v65 = *(a2 + 48);
              v66 = *(a2 + 64);
              v67 = *(a2 + 80);
              v68 = *(a2 + 96);
              v69 = *(a2 + 112);
              v70 = *(a2 + 128);
              v71 = *(a2 + 136);
              v72 = *(a2 + 208);
              v166[11] = *(a2 + 192);
              v166[12] = v72;
              LOBYTE(v166[13]) = *(a2 + 224);
              v73 = *(a2 + 176);
              v166[9] = *(a2 + 160);
              v166[10] = v73;
              v165 = 1;
              LODWORD(v166[0]) = 0;
              v166[1] = v63;
              v166[2] = v64;
              v166[3] = v65;
              v166[4] = v66;
              v166[5] = v67;
              v166[6] = v68;
              v166[7] = v69;
              LOBYTE(v166[8]) = v70;
              *(&v166[8] + 1) = v71;
              memset(&v166[14], 0, 64);
              LOBYTE(v166[18]) = 1;
              memset(&v166[19], 0, 64);
              LOBYTE(v166[23]) = 1;
              nullsub_1(v166, 0);
              memcpy(v167, v9 + 96, 0x171uLL);
              v74 = v62;
              v75 = v12;
              v76 = v14;
              v77 = v71;
              sub_245F8E7A4(v173, v168, &qword_27EE3A990, &qword_246099C20);
              sub_245F8E744(v167, &qword_27EE39F78, &unk_246096990);
              memcpy(v9 + 96, v166, 0x171uLL);
              memcpy(v168, v166, 0x171uLL);
              if (sub_245F97C38(v168) != 1)
              {
                v78 = *(a2 + 288);
                *(v9 + 22) = *(a2 + 272);
                *(v9 + 23) = v78;
                v9[384] = *(a2 + 304);
                v79 = *(a2 + 256);
                *(v9 + 20) = *(a2 + 240);
                *(v9 + 21) = v79;
                v80 = *(a2 + 368);
                *(v9 + 27) = *(a2 + 352);
                *(v9 + 28) = v80;
                v9[464] = *(a2 + 384);
                v81 = *(a2 + 336);
                *(v9 + 25) = *(a2 + 320);
                *(v9 + 26) = v81;
              }

              v82 = *(v19 + 112);
              v83 = *(v19 + 80);
              v151 = *(v19 + 96);
              v152 = v82;
              v84 = *(v19 + 112);
              v153 = *(v19 + 128);
              v85 = *(v19 + 48);
              v86 = *(v19 + 16);
              v147 = *(v19 + 32);
              v148 = v85;
              v87 = *(v19 + 48);
              v88 = *(v19 + 80);
              v149 = *(v19 + 64);
              v150 = v88;
              v89 = *(v19 + 16);
              v146[0] = *v19;
              v146[1] = v89;
              v161 = v151;
              v162 = v84;
              v163 = *(v19 + 128);
              v157 = v147;
              v158 = v87;
              v159 = v149;
              v160 = v83;
              v154 = *(v19 + 144);
              v164 = *(v19 + 144);
              v155 = v146[0];
              v156 = v86;
              if (sub_245F97C14(&v155) == 1)
              {
                v90 = v133;
                v91 = (a2 + v133[8]);
                if ((v91[4].i8[9] & 1) == 0)
                {
                  v134 = *v91;
                  v130 = v91[1];
                  v129 = v91[2];
                  v128 = v91[3];
                  v92 = sub_246090E60();
                  *&v93 = sub_246021644(v134, v130, v129, v128, *v92);
                  v136.i8[0] = 0;
                  *(v9 + 39) = v93;
                  *(v9 + 40) = v94;
                  *(v9 + 41) = v95;
                  *(v9 + 42) = v96;
                  v9[688] = 0;
                }
              }

              else
              {
                v126 = v156;
                v127 = v155;
                v124 = v158;
                v125 = v157;
                v134 = v159;
                v129 = v161;
                v130 = v160;
                v128 = v162;
                v98 = v153;
                v99 = sub_246090EC4();
                *v100.i64 = sub_246021644(v127, v126, v125, v124, *v99);
                v126 = v101;
                v127 = v100;
                v124 = v103;
                v125 = v102;
                sub_245F8E744(v146, &qword_27EE3A990, &qword_246099C20);
                v136 = v134;
                v137 = v130;
                v138 = v129;
                v139 = v128;
                v140 = v127;
                v141 = v126;
                v142 = v125;
                v143 = v124;
                sub_245F97D8C(&v136);
                v104 = v143;
                *(v9 + 36) = v142;
                *(v9 + 37) = v104;
                v9[608] = v144;
                v105 = v139;
                *(v9 + 32) = v138;
                *(v9 + 33) = v105;
                v106 = v141;
                *(v9 + 34) = v140;
                *(v9 + 35) = v106;
                v107 = v137;
                *(v9 + 30) = v136;
                *(v9 + 31) = v107;
                v90 = v133;
              }

              v108 = *(a2 + v90[9]);
              if (v108 == 2)
              {
                v109 = -1;
              }

              else
              {
                v136.i8[0] = v108 & 1;
                v109 = ObjectCaptureSession.Metadata.Shot.CaptureMode.rawValue.getter();
              }

              *(v9 + 87) = v109;
              v9[704] = 0;
              v110 = *(a2 + v90[11]);
              *(v9 + 89) = v110;
              *(v9 + 90) = v10;
              v9[728] = 0;
              v111 = *(v19 + 16);
              v136 = *v19;
              v137 = v111;
              v112 = *(v19 + 112);
              v142 = *(v19 + 96);
              v143 = v112;
              v144 = *(v19 + 128);
              v145 = *(v19 + 144);
              v113 = *(v19 + 48);
              v138 = *(v19 + 32);
              v139 = v113;
              v114 = *(v19 + 80);
              v140 = *(v19 + 64);
              v141 = v114;
              if (sub_245F97C14(&v136) == 1 || v145 == 1)
              {
                v115 = a2 + v90[8];
                if (*(v115 + 73) & 1) != 0 || (*(v115 + 72))
                {
                  v116 = -1;
                }

                else
                {
                  v116 = *(v115 + 64);
                }
              }

              else
              {
                v116 = *(&v144 + 1);
              }

              v117 = &v9[v6[21]];
              v118 = v6[24];
              *v117 = v116;
              v117[8] = 0;
              v119 = v90[6];
              v120 = v110;
              sub_245F97C5C(a2 + v119, &v9[v132]);
              *&v9[v118] = *(a2 + v90[13]);
              v121 = (a2 + v90[12]);
              v122 = *v121;
              LOBYTE(v121) = *(v121 + 8);
              v123 = v131;
              *v131 = v122;
              v123[8] = v121;
              sub_245F97CCC(v9, a3);
              (*(v135 + 56))(a3, 0, 1, v6);

              return sub_245F97D30(v9);
            }

LABEL_40:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_40;
        }
      }
    }
  }

  v97 = *(v135 + 56);

  return v97(a3, 1, 1, v6);
}

void sub_245F97058(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v94 = v5;
  v7 = v6;
  v8 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v80 - v10;
  if (*(v2 + 728))
  {
    __break(1u);
    goto LABEL_27;
  }

  v11 = *(v2 + 720);
  v12 = *(v2 + 8);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 88);
  v16 = v15;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_246036680(v17, v13, v14, v15, v143, v11);
  v20 = v143[0];
  v21 = v143[1];
  v22 = v143[2];
  v90 = v143[4];
  v91 = v143[3];
  sub_245F97D94(v138);
  v140 = 1;
  v23 = type metadata accessor for PhotogrammetrySample();
  v25 = *(v23 + 80);
  v24 = *(v23 + 84);
  v89 = v23;
  v26 = (v2 + v24);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(*v4 + 104);
  v88 = v25;
  v30 = v29(v2 + v25, v27, v28);
  v31 = *(v2 + 496);
  v141[0] = *(v2 + 480);
  v141[1] = v31;
  v32 = *(v2 + 528);
  v141[2] = *(v2 + 512);
  v141[3] = v32;
  v33 = *(v2 + 544);
  v34 = *(v2 + 576);
  v35 = *(v2 + 592);
  v36 = *(v2 + 608);
  v97 = *(v2 + 560);
  v98 = v33;
  v141[4] = v33;
  v141[5] = v97;
  v95 = v35;
  v96 = v34;
  v141[6] = v34;
  v141[7] = v35;
  v142 = v36;
  if (sub_245F97DBC(v141) != 1)
  {
    v47 = sub_246090EC4();
    *v38.i64 = sub_246021574(v98, v97, v96, v95, *v47);
    v37 = 0;
    v108.n128_u8[0] = 0;
    if ((*(v2 + 688) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (v37)
    {
      OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
    }

    v95 = v41;
    v96 = v40;
    v97 = v39;
    v98 = v38;
    OCNonModularSPI_Serialization_InvalidObjectTransform();
    goto LABEL_9;
  }

  v37 = 1;
  v38 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  if (*(v2 + 688))
  {
    goto LABEL_6;
  }

LABEL_4:
  v98 = *(v2 + 624);
  v97 = *(v2 + 640);
  v96 = *(v2 + 656);
  v95 = *(v2 + 672);
  v42 = sub_246090E60();
  *v43.i64 = sub_246021574(v98, v97, v96, v95, *v42);
  v97 = v44;
  v98 = v43;
  v95 = v46;
  v96 = v45;
LABEL_9:
  v48 = *(v2 + 696);
  v49 = *(v2 + 704);
  v92 = v22;
  if (v49)
  {
    goto LABEL_13;
  }

  if (v48 == 1)
  {
    sub_2460368C0(v30, 0, &v108, v98, v97, v96, v95);
    v98.i32[0] = 0;
    v95 = v109;
    v55 = v111;
    v96 = v110;
    v97 = v108;
    v53 = v112;
    v137 = v139;
    v54 = BYTE8(v112);
    LOBYTE(v127[0]) = 0;
    v134 = v138[6];
    v135 = v138[7];
    v136 = v138[8];
    v130 = v138[2];
    v131 = v138[3];
    v132 = v138[4];
    v133 = v138[5];
    v128 = v138[0];
    v129 = v138[1];
    goto LABEL_17;
  }

  if (v48)
  {
LABEL_13:
    v56 = *(v2 + 80);
    v84 = v43;
    v85 = v44;
    v86 = v45;
    v87 = v46;
    v57 = v56;
    sub_246036888(v56, v30, 0, &v108, v98, v97, v96, v95, v84, v85, v86, v87);
    nullsub_1(&v108, v58);
    v54 = 0;
    v53 = 0;
    v134 = v114;
    v135 = v115;
    v136 = v116;
    v137 = v117;
    v130 = v110;
    v131 = v111;
    v132 = v112;
    v133 = v113;
    v128 = v108;
    v129 = v109;
    v55 = 0uLL;
    v98.i32[0] = v140;
    if (v49)
    {
      v96 = 0uLL;
      v97 = 0uLL;
      v59 = 2;
      v95 = 0uLL;
      v87 = 0uLL;
      goto LABEL_18;
    }

    v95 = 0uLL;
    v96 = 0uLL;
    v97 = 0uLL;
  }

  else
  {
    v50 = *(v2 + 80);
    v84 = v43;
    v85 = v44;
    v86 = v45;
    v87 = v46;
    v51 = v50;
    sub_246036888(v50, v30, 0, &v108, v98, v97, v96, v95, v84, v85, v86, v87);
    nullsub_1(&v108, v52);
    v53 = 0;
    v54 = 0;
    v134 = v114;
    v135 = v115;
    v136 = v116;
    v137 = v117;
    v130 = v110;
    v131 = v111;
    v132 = v112;
    v133 = v113;
    v55 = 0uLL;
    v128 = v108;
    v129 = v109;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98.i32[0] = v140;
  }

LABEL_17:
  v87 = v55;
  ObjectCaptureSession.Metadata.Shot.CaptureMode.init(rawValue:)(v48);
  v59 = v108.n128_u8[0];
LABEL_18:
  memcpy(v127, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v127) == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  memcpy(v126, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v126) == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memcpy(v125, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v125) == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v86.n128_u32[0] = v54;
  v122 = v125[128];
  memcpy(v123, (v2 + 96), sizeof(v123));
  memcpy(v124, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v124) == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60 = *(v2 + 16);
  memcpy(v121, (v2 + 96), sizeof(v121));
  if (sub_245F97C38(v121) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v85.n128_u64[0] = v7;
  memcpy(v120, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v120) == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v61 = v59;
  v62 = v53;
  v84.n128_u64[0] = v21;
  memcpy(v119, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v119) != 1)
  {
    v144[0] = v127[1];
    v144[1] = v127[2];
    v82 = v126[5];
    v83 = v126[4];
    v80 = v126[7];
    v81 = v126[6];
    v63 = v124[17];
    v145[1] = *&v121[160];
    v145[2] = *&v121[176];
    v145[3] = *&v121[192];
    v146 = v121[208];
    v144[2] = v127[3];
    v145[0] = *&v121[144];
    v148 = v120[18];
    v147[2] = v120[16];
    v147[3] = v120[17];
    v147[0] = v120[14];
    v147[1] = v120[15];
    v150 = v119[23];
    v149[2] = v119[21];
    v149[3] = v119[22];
    v149[0] = v119[19];
    v149[1] = v119[20];
    memcpy(v118, v123, 0x171uLL);
    sub_245F97DD8(v118, &v108);
    v64 = sub_246036790();
    v65 = sub_246036790();
    sub_24603679C(v144, &v122, v63, v60, v145, v147, v149, v64, &v108, v83, v82, v81, v80, v65);
    v66 = v93;
    sub_245F8E7A4(v2 + v88, v93, &qword_27EE3A350, &unk_2460969A0);
    v106[6] = v134;
    v106[7] = v135;
    v106[8] = v136;
    v107 = v137;
    v106[2] = v130;
    v106[3] = v131;
    v106[4] = v132;
    v106[5] = v133;
    v106[0] = v128;
    v106[1] = v129;
    v102[0] = v97;
    v102[1] = v95;
    v102[2] = v96;
    v102[3] = v87;
    v103 = v62;
    v104 = v86.n128_u8[0];
    v105 = v98.i8[0];
    v101 = v61;
    v67 = *(v2 + 48);
    v68 = *(v2 + 56);
    v69 = *(v2 + 64);
    v70 = *(v2 + 72);
    v71 = *(v2 + 712);
    v72 = *(v89 + 96);
    v73 = v2 + *(v89 + 92);
    v74 = *v73;
    LOBYTE(v73) = *(v73 + 8);
    v99 = v74;
    v100 = v73;
    v75 = *(v2 + v72);
    v76 = v71;

    sub_246036B50(&v108, v66, v106, v102, &v101, v67, v68, v69, v94, v11, v70, v71, &v99, v75);
    v77 = v85.n128_u64[0];
    *v85.n128_u64[0] = v20;
    v78 = v91;
    v79 = v92;
    v77[1] = v84.n128_u64[0];
    v77[2] = v79;
    v77[3] = v78;
    v77[4] = v90;
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_245F9780C(uint64_t a1)
{
  v3 = *(v1 + 720);
  v4 = *(v1 + 728);
  v5 = *(v1 + 88);
  if (v5)
  {
    v6 = v5;
    filteredDepthPointCloud(_:)(v10);

    v7 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v11;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return v3;
}

void sub_245F9789C(uint64_t a1@<X8>)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 592);
  v31 = *(v1 + 576);
  v32 = v8;
  v33 = *(v1 + 608);
  v9 = *(v1 + 528);
  v28[2] = *(v1 + 512);
  v28[3] = v9;
  v10 = *(v1 + 560);
  v29 = *(v1 + 544);
  v30 = v10;
  v11 = *(v1 + 496);
  v28[0] = *(v1 + 480);
  v28[1] = v11;
  if (sub_245F97DBC(v28) != 1)
  {
    v26 = v29;
    v25 = v30;
    v21 = v32;
    v24 = v31;
LABEL_8:
    v23 = v21;
    v22 = sub_246090EC4();
    *&v17 = sub_246021574(v26, v25, v24, v23, *v22);
    v16 = 0;
    v27 = 0;
    goto LABEL_9;
  }

  if ((*(v1 + 688) & 1) == 0)
  {
    v26 = *(v1 + 624);
    v25 = *(v1 + 640);
    v24 = *(v1 + 656);
    v21 = *(v1 + 672);
    goto LABEL_8;
  }

  v12 = sub_245FA3174();
  (*(v4 + 16))(v7, v12, v3);
  v13 = sub_2460918D4();
  v14 = sub_246091FB4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_245F8A000, v13, v14, "No bounding box found in the PhotogrammetrySample!", v15, 2u);
    MEMORY[0x24C1989D0](v15, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v16 = 1;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
LABEL_9:
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
  *(a1 + 64) = v16;
}

double sub_245F97B00(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  return result;
}

double sub_245F97B40(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t type metadata accessor for PhotogrammetrySample()
{
  result = qword_27EE3B620;
  if (!qword_27EE3B620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245F97BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_245F8E624(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_245F97C14(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_245F97C38(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_245F97C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F97CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySample();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F97D30(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySample();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_245F97D94(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1;
  *(a1 + 128) = xmmword_246096980;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_245F97DBC(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F97E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 76);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_245F97F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 76);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_245F980BC()
{
  type metadata accessor for CVBuffer(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGImagePropertyOrientation(319);
    if (v1 <= 0x3F)
    {
      sub_245F98528();
      if (v2 <= 0x3F)
      {
        sub_245F9858C(319, &qword_27EE39F90, type metadata accessor for CVBuffer, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_245F9858C(319, &unk_27EE3ABC0, type metadata accessor for CMAcceleration, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_245F98868(319, &qword_27EE39F98, &type metadata for PhotogrammetrySample.Camera, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_245F98868(319, &qword_27EE39FA0, &type metadata for PhotogrammetrySample.Object, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_245F98868(319, &qword_27EE39FA8, &type metadata for PhotogrammetrySample.Scene, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_245F98868(319, &qword_27EE39FB0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_245F9858C(319, &qword_27EE39FB8, sub_245F98618, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_245F98868(319, &qword_27EE39FC0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_245F9858C(319, &qword_27EE39FC8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
                        {
                          sub_245F9858C(319, &qword_27EE3ABA0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
                          if (v12 <= 0x3F)
                          {
                            sub_245F98868(319, &qword_27EE39FD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
                            {
                              sub_245F98868(319, &qword_27EE39FD8, &type metadata for ObjectCaptureSession.Frame.Feedback, MEMORY[0x277D83D88]);
                              if (v14 <= 0x3F)
                              {
                                sub_245F9858C(319, &unk_27EE3ABE0, type metadata accessor for TemporalDepthPointCloud, MEMORY[0x277D83940]);
                                if (v15 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_245F98528()
{
  if (!qword_27EE39F88)
  {
    v0 = sub_246091B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE39F88);
    }
  }
}

void sub_245F9858C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_245F98618()
{
  result = qword_27EE3ABD0;
  if (!qword_27EE3ABD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3ABD0);
  }

  return result;
}

uint64_t sub_245F9866C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 369))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_245F986C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 360) = 0;
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
    *(result + 368) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 369) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 369) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

__n128 sub_245F98790(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_245F987B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F987D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

void sub_245F98868(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_245F988B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshBounds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshBounds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

int64_t sub_245F98918@<X0>(__CVBuffer *a1@<X0>, int64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  if ((a3 | a2) < 0 || Width <= a2 || result <= a3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  result = CVPixelBufferGetBaseAddress(a1);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v13 = a3 * BytesPerRow;
  if ((a3 * BytesPerRow) >> 64 != (a3 * BytesPerRow) >> 63)
  {
    goto LABEL_14;
  }

  v14 = *(*(a4 - 8) + 64);
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_17;
  }

  v15 = v13 / v14;
  v16 = __OFADD__(a2, v15);
  v17 = a2 + v15;
  if (v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(*(a4 - 8) + 16))(a5, result + *(*(a4 - 8) + 72) * v17, a4);

  return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

void sub_245F98A6C(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

BOOL sub_245F98A80(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v22 = *v8;
  v21 = *(v8 + 8);
  v23 = sub_2460209E8(a1, a2, a3, a4, 1, v41, v42, v43, v44, *v8, v21);
  v25 = v24;
  v27 = v26;
  *(v8 + 16) = v23;
  *(v8 + 24) = v24;
  *(v8 + 32) = v26 & 1;
  v28 = sub_245FA3174();
  v29 = *(v14 + 16);
  if (v27)
  {
    v29(v18, v28, v13);
    v30 = sub_2460918D4();
    v31 = sub_246091FB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = 136380675;
      *(v32 + 4) = sub_245F8D3C0(0xD000000000000043, 0x800000024609E800, &v45);
      _os_log_impl(&dword_245F8A000, v30, v31, "ObjectCaptureSession.%{private}s: Failed to map image point to world point!", v32, 0xCu);
      sub_245F8E6F4(v33);
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v29(v20, v28, v13);
    v34 = sub_2460918D4();
    v35 = sub_246091FC4();
    if (os_log_type_enabled(v34, v35))
    {
      v36.i64[0] = v23;
      v36.i64[1] = v25;
      v44 = v36;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136381955;
      *(v37 + 4) = sub_245F8D3C0(0xD000000000000043, 0x800000024609E800, &v45);
      *(v37 + 12) = 2050;
      *(v37 + 14) = *&v23;
      *(v37 + 22) = 2050;
      v39 = v44.f32[2];
      *(v37 + 24) = v44.f32[1];
      *(v37 + 32) = 2050;
      *(v37 + 34) = v39;
      *(v37 + 42) = 2050;
      *(v37 + 44) = v22;
      *(v37 + 52) = 2050;
      *(v37 + 54) = v21;
      _os_log_impl(&dword_245F8A000, v34, v35, "ObjectCaptureSession.%{private}s: Successfully computed world point: x = %{public}f, y = %{public}f, z = %{public}f, from tap image point: u = %{public}f, v = %{public}f", v37, 0x3Eu);
      sub_245F8E6F4(v38);
      MEMORY[0x24C1989D0](v38, -1, -1);
      MEMORY[0x24C1989D0](v37, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
  }

  return (v27 & 1) == 0;
}

__n128 sub_245F98E0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245F98E20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F98E40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_27EE39FE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE39FE8);
    }
  }
}

uint64_t sub_245F98EE0()
{
  v0 = sub_245F9BA0C(&unk_2858DDDE8);
  result = swift_arrayDestroy();
  qword_27EE3EF60 = v0;
  return result;
}

uint64_t sub_245F98F2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = sub_246091704();
  v43 = *(v46 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2460918F4();
  v48 = *(v44 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  sub_245F8E624(&qword_27EE39FF0, "fN");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096460;
  v21 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v22 = v21;
  sub_245F9BB74(inited);
  swift_setDeallocating();
  sub_245F9D3A4(inited + 32, type metadata accessor for URLResourceKey);
  v42 = a1;
  sub_246091624();

  sub_246091544();
  (*(v9 + 8))(v12, v8);
  sub_245F8E7A4(v19, v17, &qword_27EE39F80, &unk_246096C10);
  v23 = sub_2460917D4();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v17, 1, v23);
  v26 = v48;
  v28 = v45;
  v27 = v46;
  if (v25 == 1)
  {
    sub_245F9BD7C(v17);
    v29 = sub_245FA31EC();
    v30 = v44;
    (*(v26 + 16))(v7, v29, v44);
    v31 = v43;
    (*(v43 + 16))(v28, v42, v27);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v27;
      v36 = swift_slowAlloc();
      v49 = v36;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v37 = sub_2460916F4();
      v42 = v7;
      v39 = v38;
      (*(v31 + 8))(v28, v35);
      v40 = sub_245F8D3C0(v37, v39, &v49);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_245F8A000, v32, v33, "Image Helper: Creation data is nil for: %{private,mask.hash}s.", v34, 0x16u);
      sub_245F8E6F4(v36);
      MEMORY[0x24C1989D0](v36, -1, -1);
      MEMORY[0x24C1989D0](v34, -1, -1);

      (*(v48 + 8))(v42, v44);
    }

    else
    {

      (*(v31 + 8))(v28, v27);
      (*(v26 + 8))(v7, v30);
    }

    sub_246091764();
    return sub_245F9BD7C(v19);
  }

  else
  {
    sub_245F9BD7C(v19);
    return (*(v24 + 32))(v47, v17, v23);
  }
}

void sub_245F994C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v159 = a1;
  v158 = a3;
  v160 = sub_2460917D4();
  v161 = *(v160 - 8);
  v4 = *(v161 + 64);
  MEMORY[0x28223BE20](v160);
  v155 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v154 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v165 = &v147 - v10;
  v150 = type metadata accessor for PhotogrammetrySample();
  v11 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v13 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246091704();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v162 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v147 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v147 - v21;
  v23 = sub_2460918F4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v166 = (&v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v156 = &v147 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v147 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v152 = &v147 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v151 = &v147 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v164 = &v147 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v147 - v38;
  v40 = sub_245FA31EC();
  v176 = v24;
  v177 = v23;
  v41 = *(v24 + 16);
  v172 = v40;
  v173 = v41;
  v174 = v24 + 16;
  (v41)(v39);
  v42 = v15[2];
  v178 = a2;
  v167 = v42;
  v168 = v15 + 2;
  v42(v22, a2, v14);
  v43 = sub_2460918D4();
  v44 = sub_246091FC4();
  v45 = os_log_type_enabled(v43, v44);
  v169 = v15;
  v170 = v14;
  if (v45)
  {
    v46 = v15;
    v47 = v14;
    v48 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v179 = v175;
    *v48 = 141558275;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v49 = sub_2460923D4();
    v157 = v13;
    v51 = v50;
    v52 = v46[1];
    v52(v22, v47);
    v53 = sub_245F8D3C0(v49, v51, &v179);
    v13 = v157;

    *(v48 + 14) = v53;
    _os_log_impl(&dword_245F8A000, v43, v44, "Image Helper: Trying to load sample = %{private,mask.hash}s...", v48, 0x16u);
    v54 = v175;
    sub_245F8E6F4(v175);
    MEMORY[0x24C1989D0](v54, -1, -1);
    MEMORY[0x24C1989D0](v48, -1, -1);
  }

  else
  {

    v52 = v15[1];
    v52(v22, v14);
  }

  v175 = *(v176 + 8);
  (v175)(v39, v177);
  v55 = sub_246091674();
  v56 = CGImageSourceCreateWithURL(v55, 0);

  if (v56)
  {
    v57 = v171;
    v58 = sub_245F9BE38(v56, 0, v178);
    v59 = v57;
    if (v57)
    {
    }

    else
    {
      v171 = v52;
      v73 = v58;
      PhotogrammetrySample.init(id:image:)(v159, v73, v13);
      v74 = sub_245F9C46C(v56, 0, v178);
      v75 = *(v13 + 3);

      *(v13 + 3) = v74;
      v173(v164, v172, v177);
      v76 = v73;
      v77 = sub_2460918D4();
      v78 = sub_246091FA4();
      v79 = os_log_type_enabled(v77, v78);
      v166 = v76;
      if (v79)
      {
        v80 = v13;
        v81 = v76;
        v82 = swift_slowAlloc();
        *v82 = 134349312;
        *(v82 + 4) = CVPixelBufferGetWidth(v81);
        *(v82 + 12) = 2050;
        *(v82 + 14) = CVPixelBufferGetHeight(v81);

        _os_log_impl(&dword_245F8A000, v77, v78, "Image Helper: Loaded image w=%{public}ld h=%{public}ld", v82, 0x16u);
        v13 = v80;
        MEMORY[0x24C1989D0](v82, -1, -1);
      }

      else
      {

        v77 = v76;
      }

      v87 = v163;
      v88 = v161;

      v176 += 8;
      (v175)(v164, v177);
      type metadata accessor for PhotogrammetryMetadataHelper();
      v89 = sub_245F8BD84(v74);
      v90 = *(*v89 + 176);
      v164 = v89;
      v91 = v90();
      if ((v94 & 1) == 0)
      {
        v95 = v91;
        v96 = v92;
        v157 = v93;
        v97 = v151;
        v173(v151, v172, v177);
        v98 = sub_2460918D4();
        v99 = sub_246091FA4();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v148 = v100;
          v149 = swift_slowAlloc();
          v182 = v149;
          *v100 = 136446210;
          v179 = v95;
          v180 = v96;
          v181 = v157;
          type metadata accessor for CMAcceleration(0);
          v101 = sub_246091C54();
          v162 = 0;
          v103 = v95;
          v104 = v96;
          v105 = sub_245F8D3C0(v101, v102, &v182);
          v106 = v177;
          v88 = v161;

          v107 = v148;
          *(v148 + 1) = v105;
          v96 = v104;
          v95 = v103;
          v108 = v107;
          _os_log_impl(&dword_245F8A000, v98, v99, "Image Helper: Sample loader attached metadata gravity = %{public}s", v107, 0xCu);
          v109 = v149;
          sub_245F8E6F4(v149);
          MEMORY[0x24C1989D0](v109, -1, -1);
          MEMORY[0x24C1989D0](v108, -1, -1);

          v110 = v151;
          v111 = v106;
          v59 = v162;
        }

        else
        {

          v110 = v97;
          v111 = v177;
        }

        (v175)(v110, v111);
        v112 = v157;
        *(v13 + 6) = v95;
        *(v13 + 7) = v96;
        *(v13 + 8) = v112;
        v13[72] = 0;
        v87 = v163;
      }

      v113 = sub_245F9C9F0(v56, 0);
      v114 = *(v13 + 4);
      *(v13 + 4) = v113;
      v115 = v113;

      if (v113)
      {
      }

      else
      {
        v173(v152, v172, v177);
        v116 = sub_2460918D4();
        v117 = sub_246091F94();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_245F8A000, v116, v117, "Image Helper: Didn't find embedded disparity map, checking for depth.", v118, 2u);
          v119 = v118;
          v88 = v161;
          v87 = v163;
          MEMORY[0x24C1989D0](v119, -1, -1);
        }

        (v175)(v152, v177);
        v120 = sub_245F9CEB8(v56, 0);

        *(v13 + 4) = v120;
      }

      type metadata accessor for PhotogrammetryImageHelper();
      v121 = v165;
      sub_245F9A538(v178, v165);
      v122 = v121;
      v123 = v154;
      sub_245F8E7A4(v122, v154, &qword_27EE39F80, &unk_246096C10);
      v124 = v160;
      if ((*(v88 + 48))(v123, 1, v160) == 1)
      {
        sub_245F9BD7C(v123);
      }

      else
      {
        v125 = v155;
        (*(v88 + 32))(v155, v123, v124);
        v126 = *(v150 + 76);
        sub_245F9BD7C(&v13[v126]);
        (*(v88 + 16))(&v13[v126], v125, v124);
        (*(v88 + 56))(&v13[v126], 0, 1, v124);
        v127 = sub_245FA3174();
        v173(v153, v127, v177);
        v128 = sub_2460918D4();
        v129 = sub_246091FC4();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 134349056;
          *(v130 + 4) = v159;
          _os_log_impl(&dword_245F8A000, v128, v129, "Image Folder Reader: Parsed EXIF capture timestamp field of sample (id = %{public}ld)", v130, 0xCu);
          v131 = v130;
          v124 = v160;
          MEMORY[0x24C1989D0](v131, -1, -1);
        }

        (v175)(v153, v177);
        (*(v88 + 8))(v155, v124);
      }

      v132 = v156;
      v173(v156, v172, v177);
      v133 = v170;
      v167(v87, v178, v170);
      v134 = sub_2460918D4();
      v135 = sub_246091F94();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v162 = v59;
        v137 = v133;
        v138 = v136;
        v139 = swift_slowAlloc();
        v157 = v13;
        v140 = v139;
        v179 = v139;
        *v138 = 141558275;
        *(v138 + 4) = 1752392040;
        *(v138 + 12) = 2081;
        sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260]);
        v141 = sub_2460923D4();
        v142 = v87;
        v144 = v143;
        (v171)(v142, v137);
        v145 = sub_245F8D3C0(v141, v144, &v179);

        *(v138 + 14) = v145;
        _os_log_impl(&dword_245F8A000, v134, v135, "Image Helper: Successfully loaded %{private,mask.hash}s!", v138, 0x16u);
        sub_245F8E6F4(v140);
        v146 = v140;
        v13 = v157;
        MEMORY[0x24C1989D0](v146, -1, -1);
        MEMORY[0x24C1989D0](v138, -1, -1);
      }

      else
      {

        (v171)(v87, v133);
      }

      (v175)(v132, v177);
      sub_245F9BD7C(v165);
      sub_245F97CCC(v13, v158);
      sub_245F9D3A4(v13, type metadata accessor for PhotogrammetrySample);
    }
  }

  else
  {
    v60 = v166;
    v173(v166, v172, v177);
    v61 = v162;
    v62 = v170;
    v167(v162, v178, v170);
    v63 = sub_2460918D4();
    v64 = sub_246091FB4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = v61;
      v67 = swift_slowAlloc();
      v179 = v67;
      *v65 = 141558275;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      v68 = sub_2460916F4();
      v70 = v69;
      v52(v66, v62);
      v71 = sub_245F8D3C0(v68, v70, &v179);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_245F8A000, v63, v64, "Image Helper: Error in CGImageSourceCreateWithURL for %{private,mask.hash}s", v65, 0x16u);
      sub_245F8E6F4(v67);
      MEMORY[0x24C1989D0](v67, -1, -1);
      MEMORY[0x24C1989D0](v65, -1, -1);

      v72 = v166;
    }

    else
    {

      v52(v61, v62);
      v72 = v60;
    }

    (v175)(v72, v177);
    v179 = 0;
    v180 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000036, 0x800000024609E850);
    v83 = sub_2460916F4();
    MEMORY[0x24C196640](v83);

    v84 = v179;
    v85 = v180;
    sub_245F9BDE4();
    swift_allocError();
    *v86 = v84;
    *(v86 + 8) = v85;
    *(v86 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_245F9A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460918F4();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = sub_246091674();
  v18 = CGImageSourceCreateWithURL(v17, 0);

  if (v18)
  {
    v19 = a2;
    v20 = sub_245F9C46C(v18, 0, a1);
    type metadata accessor for PhotogrammetryMetadataHelper();
    v21 = sub_245F8BD84(v20);
    (*(*v21 + 144))(v21);

    v22 = sub_2460917D4();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v16, 1, v22) == 1)
    {
      sub_245F9BD7C(v16);
      return (*(v23 + 56))(v19, 1, 1, v22);
    }

    else
    {
      (*(v23 + 32))(v19, v16, v22);
      return (*(v23 + 56))(v19, 0, 1, v22);
    }
  }

  else
  {
    v25 = sub_245FA31EC();
    (*(v37 + 16))(v12, v25, v9);
    (*(v5 + 16))(v8, a1, v4);
    v26 = sub_2460918D4();
    v27 = sub_246091FB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v29 = sub_2460916F4();
      v36 = a2;
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = sub_245F8D3C0(v29, v31, &v38);
      a2 = v36;

      *(v28 + 14) = v32;
      _os_log_impl(&dword_245F8A000, v26, v27, "Image Helper: Error in CGImageSourceCreateWithURL for %{private,mask.hash}s", v28, 0x16u);
      v33 = v35;
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v37 + 8))(v12, v9);
    v34 = sub_2460917D4();
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }
}

id sub_245F9A9C8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_246091B34();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() depthDataFromDictionaryRepresentation:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_2460915D4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_245F9AABC()
{
  if ((sub_2460915E4() & 1) == 0)
  {
    return 0;
  }

  sub_2460915F4();
  v0 = sub_246091C64();
  v2 = v1;

  if (qword_27EE3B630 != -1)
  {
    swift_once();
  }

  v3 = sub_245F9AB64(v0, v2, qword_27EE3EF60);

  return v3 & 1;
}

uint64_t sub_245F9AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_246092504();
  sub_246091C94();
  v7 = sub_246092544();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2460923E4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_245F9AC5C(uint64_t a1)
{
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_246091674();
  v13 = CGImageSourceCreateWithURL(v12, 0);

  if (v13)
  {
    v14 = sub_245F9C46C(v13, 0, a1);
    type metadata accessor for PhotogrammetryMetadataHelper();
    v15 = sub_245F8BD84(v14);
    v16 = (*(*v15 + 152))(v15);
    if ((v16 & 0x100000000) != 0)
    {
    }

    else
    {
      v17 = v16;
      v18 = (*(*v15 + 160))();

      if ((v18 & 0x100000000) == 0)
      {
        return v17 | (v18 << 32);
      }
    }
  }

  else
  {
    v20 = sub_245FA31EC();
    (*(v8 + 16))(v11, v20, v7);
    (*(v3 + 16))(v6, a1, v2);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v30 = v22;
      v24 = sub_2460916F4();
      v26 = v25;
      (*(v3 + 8))(v6, v2);
      v27 = sub_245F8D3C0(v24, v26, &v32);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_245F8A000, v21, v30, "Image Helper: Error in CGImageSourceCreateWithURL for %{private,mask.hash}s", v23, 0x16u);
      v28 = v31;
      sub_245F8E6F4(v31);
      MEMORY[0x24C1989D0](v28, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

uint64_t sub_245F9AFEC()
{
  if ((sub_2460915E4() & 1) == 0)
  {
    return 0;
  }

  sub_2460915F4();
  v0 = sub_246091C64();
  v2 = v1;

  if (v0 == 1667851624 && v2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v4 = sub_2460923E4();

    return v4 & 1;
  }
}

uint64_t *sub_245F9B098(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  if ((sub_2460915E4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = v14;
  v55 = v3;
  v56 = v7;
  sub_2460915F4();
  v15 = sub_246091C64();
  v17 = v16;

  if (v15 == 1667851624 && v17 == 0xE400000000000000)
  {

    v18 = v8;
  }

  else
  {
    v19 = sub_2460923E4();

    v18 = v8;
    if ((v19 & 1) == 0)
    {
LABEL_16:
      result = 0;
      goto LABEL_17;
    }
  }

  v20 = sub_246091674();
  v58 = 0;
  Version = OCNonModularSPI_CMPhoto_readVersion();

  v22 = v58;
  v23 = v58;
  v24 = sub_245FA31EC();
  v25 = *(v18 + 16);
  if (Version)
  {
    v26 = v56;
    v25(v12, v24, v56);
    v27 = v55;
    (*(v55 + 16))(v6, a1, v2);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = v23;
      v31 = v30;
      v32 = swift_slowAlloc();
      v53 = v18;
      v33 = v32;
      v58 = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v34 = sub_2460916F4();
      v36 = v35;
      (*(v27 + 8))(v6, v2);
      v37 = sub_245F8D3C0(v34, v36, &v58);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_245F8A000, v28, v29, "Image Helper: Error when reading HEIC version for %{private,mask.hash}s", v31, 0x16u);
      sub_245F8E6F4(v33);
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v31, -1, -1);

      (*(v53 + 8))(v12, v56);
    }

    else
    {

      (*(v27 + 8))(v6, v2);
      (*(v18 + 8))(v12, v26);
    }

    goto LABEL_16;
  }

  v38 = v54;
  v39 = v56;
  v25(v54, v24, v56);
  v40 = sub_2460918D4();
  v41 = sub_246091F94();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v57 = v22;
    v58 = v43;
    *v42 = 136315138;
    v44 = v23;
    sub_245F8E624(&qword_27EE3A008, &qword_246096C20);
    v45 = sub_246091C54();
    v47 = sub_245F8D3C0(v45, v46, &v58);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_245F8A000, v40, v41, "Image Helper: Read HEIC version %s", v42, 0xCu);
    sub_245F8E6F4(v43);
    MEMORY[0x24C1989D0](v43, -1, -1);
    MEMORY[0x24C1989D0](v42, -1, -1);
  }

  (*(v18 + 8))(v38, v39);
  if (!v23)
  {
    goto LABEL_16;
  }

  v58 = 0;
  v59 = 0;
  v48 = v23;
  sub_246091BF4();

  v49 = v58;
  v50 = v59;

  if (v50)
  {
    result = v49;
  }

  else
  {
    result = 0;
  }

LABEL_17:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F9B614(uint64_t a1, id *a2)
{
  result = sub_246091BE4();
  *a2 = 0;
  return result;
}

uint64_t sub_245F9B68C(uint64_t a1, id *a2)
{
  v3 = sub_246091BF4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_245F9B70C@<X0>(uint64_t *a1@<X8>)
{
  sub_246091C04();
  v2 = sub_246091BD4();

  *a1 = v2;
  return result;
}

uint64_t sub_245F9B750()
{
  v1 = *v0;
  v2 = sub_246091C04();
  v3 = MEMORY[0x24C1966D0](v2);

  return v3;
}

uint64_t sub_245F9B78C()
{
  v1 = *v0;
  sub_246091C04();
  sub_246091C94();
}

uint64_t sub_245F9B7E0()
{
  v1 = *v0;
  sub_246091C04();
  sub_246092504();
  sub_246091C94();
  v2 = sub_246092544();

  return v2;
}

uint64_t sub_245F9B854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_246091C04();
  v6 = v5;
  if (v4 == sub_246091C04() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2460923E4();
  }

  return v9 & 1;
}

uint64_t sub_245F9B8DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_246091BD4();

  *a2 = v5;
  return result;
}

uint64_t sub_245F9B924@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_246091C04();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_245F9B950(uint64_t a1)
{
  v2 = sub_245F9D530(&qword_27EE3A030, type metadata accessor for URLResourceKey);
  v3 = sub_245F9D530(&qword_27EE3A038, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_245F9BA0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A050, &qword_246096EE8);
    v3 = sub_246092254();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_246092504();

      sub_246091C94();
      result = sub_246092544();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2460923E4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_245F9BB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A048, &qword_246096EE0);
    v3 = sub_246092254();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_246091C04();
      sub_246092504();
      v29 = v7;
      sub_246091C94();
      v9 = sub_246092544();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_246091C04();
        v20 = v19;
        if (v18 == sub_246091C04() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_2460923E4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_245F9BD7C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245F9BDE4()
{
  result = qword_27EE39FF8;
  if (!qword_27EE39FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE39FF8);
  }

  return result;
}

uint64_t *sub_245F9BE38(CGImageSource *a1, size_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = (&v57 - v10);
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, 0);
  if (ImageAtIndex)
  {
    v20 = ImageAtIndex;
    v21 = sub_245F9D654();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v34 = sub_245FA31EC();
      v35 = v12;
      v36 = *(v12 + 2);
      v37 = v18;
      v60 = v11;
      v36(v18, v34, v11);
      v38 = v6;
      v39 = *(v6 + 16);
      v40 = v61;
      v41 = v5;
      v39(v61, v65, v5);
      v42 = sub_2460918D4();
      v43 = sub_246091FB4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v62 = v37;
        v45 = v44;
        v59 = swift_slowAlloc();
        v63 = v59;
        *v45 = 141558275;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2081;
        v58 = sub_2460916F4();
        v47 = v46;
        (*(v38 + 8))(v40, v41);
        v48 = sub_245F8D3C0(v58, v47, &v63);

        *(v45 + 14) = v48;
        _os_log_impl(&dword_245F8A000, v42, v43, "Image Helper: Error converting CGImageSource to CVPixelBuffer for %{private,mask.hash}s", v45, 0x16u);
        v49 = v59;
        sub_245F8E6F4(v59);
        MEMORY[0x24C1989D0](v49, -1, -1);
        MEMORY[0x24C1989D0](v45, -1, -1);

        v35[1](v62, v60);
      }

      else
      {

        (*(v38 + 8))(v40, v41);
        v35[1](v37, v60);
      }

      v63 = 0;
      v64 = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0xD000000000000042, 0x800000024609E900);
      v53 = sub_2460916F4();
      MEMORY[0x24C196640](v53);

      v22 = v63;
      v54 = v64;
      sub_245F9BDE4();
      swift_allocError();
      *v55 = v22;
      *(v55 + 8) = v54;
      *(v55 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    v23 = sub_245FA31EC();
    (*(v12 + 2))(v16, v23, v11);
    v24 = v62;
    (*(v6 + 16))(v62, v65, v5);
    v25 = sub_2460918D4();
    v26 = sub_246091FB4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v60 = v11;
      v61 = v12;
      v28 = v27;
      v29 = swift_slowAlloc();
      v63 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      LODWORD(v59) = v26;
      v30 = sub_2460916F4();
      v32 = v31;
      (*(v6 + 8))(v24, v5);
      v33 = sub_245F8D3C0(v30, v32, &v63);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_245F8A000, v25, v59, "Image Helper: Error in CGImageSourceCreateImageAtIndex for %{private,mask.hash}s", v28, 0x16u);
      sub_245F8E6F4(v29);
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);

      v61[1](v16, v60);
    }

    else
    {

      (*(v6 + 8))(v24, v5);
      (*(v12 + 1))(v16, v11);
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD00000000000003BLL, 0x800000024609E8C0);
    v50 = sub_2460916F4();
    MEMORY[0x24C196640](v50);

    v22 = v63;
    v51 = v64;
    sub_245F9BDE4();
    swift_allocError();
    *v52 = v22;
    *(v52 + 8) = v51;
    *(v52 + 16) = 1;
    swift_willThrow();
  }

  return v22;
}

unint64_t sub_245F9C46C(CGImageSource *a1, size_t a2, uint64_t a3)
{
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v46 = sub_2460918F4();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  v22 = sub_245FA31EC();
  v45 = v14;
  v23 = *(v14 + 16);
  v24 = (v7 + 16);
  if (!v21)
  {
    v23(v18, v22, v46);
    (*v24)(v11, a3, v6);
    v33 = sub_2460918D4();
    v34 = sub_246091FB4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260]);
      v37 = sub_2460923D4();
      v39 = v38;
      (*(v7 + 8))(v11, v6);
      v40 = sub_245F8D3C0(v37, v39, &v47);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_245F8A000, v33, v34, "Image Helper: Can't get CGImageProperties for EXIF for %{private,mask.hash}s!", v35, 0x16u);
      sub_245F8E6F4(v36);
      MEMORY[0x24C1989D0](v36, -1, -1);
      MEMORY[0x24C1989D0](v35, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    (*(v45 + 8))(v18, v46);
    return sub_245F8E498(MEMORY[0x277D84F90]);
  }

  v23(v20, v22, v46);
  (*v24)(v13, a3, v6);
  v25 = sub_2460918D4();
  v26 = sub_246091F94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v28 = sub_2460923D4();
    v30 = v29;
    (*(v7 + 8))(v13, v6);
    v31 = sub_245F8D3C0(v28, v30, &v47);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_245F8A000, v25, v26, "Image Helper: Got CGImageProperties EXIF metadata for %{private,mask.hash}s.", v27, 0x16u);
    v32 = v44;
    sub_245F8E6F4(v44);
    MEMORY[0x24C1989D0](v32, -1, -1);
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  (*(v45 + 8))(v20, v46);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v47 = 0;
  v41 = v21;
  result = sub_246091B44();
  v43 = v47;
  if (v47)
  {

    return v43;
  }

  __break(1u);
  return result;
}

id sub_245F9C9F0(CGImageSource *a1, size_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v43 = &v42 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = sub_245FA31EC();
  v17 = v5[2];
  v44 = v16;
  v45 = v17;
  v18 = v4;
  (v17)(v15);
  v19 = sub_2460918D4();
  v20 = sub_246091FA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245F8A000, v19, v20, "Image Helper: Trying to find kCGImageAuxiliaryDataTypeDisparity in the CGImageSource.", v21, 2u);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  v22 = v5[1];
  v23 = v18;
  v22(v15, v18);
  v24 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a1, a2, *MEMORY[0x277CD2C90]);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_11;
  }

  v46 = 0;
  sub_246091B54();

  if (!v46)
  {
LABEL_11:
    v45(v9, v44, v18);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "Image Helper: No Auxiliary Depth Data found in the CGImageSource, not using depth.", v34, 2u);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    v31 = v9;
    goto LABEL_14;
  }

  sub_245F9D608();
  v26 = sub_245F9A9C8();
  v36 = v26;
  if (!v26)
  {
    v27 = v43;
    v45(v43, v44, v23);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Image Helper: Can't load AVDepthData fromDictionaryRepresentation, can't produce disparity map.", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    v31 = v27;
LABEL_14:
    v22(v31, v23);
    return 0;
  }

  if ([v26 depthDataType] != 1717856627)
  {
    v37 = [v36 depthDataByConvertingToDepthDataType_];

    v36 = v37;
  }

  v45(v42, v44, v18);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v38, v39, "Image Helper: Got disparity map!", v40, 2u);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  v22(v42, v18);
  v41 = [v36 depthDataMap];

  return v41;
}

id sub_245F9CEB8(CGImageSource *a1, size_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v43 = &v42 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = sub_245FA31EC();
  v17 = v5[2];
  v44 = v16;
  v45 = v17;
  v18 = v4;
  (v17)(v15);
  v19 = sub_2460918D4();
  v20 = sub_246091FA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245F8A000, v19, v20, "Image Helper: Trying to find kCGImageAuxiliaryDataTypeDepth in the CGImageSource.", v21, 2u);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  v22 = v5[1];
  v23 = v18;
  v22(v15, v18);
  v24 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a1, a2, *MEMORY[0x277CD2C88]);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_11;
  }

  v46 = 0;
  sub_246091B54();

  if (!v46)
  {
LABEL_11:
    v45(v9, v44, v18);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "Image Helper: No Auxiliary Depth Data found in the CGImageSource, not using depth.", v34, 2u);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    v31 = v9;
    goto LABEL_14;
  }

  sub_245F9D608();
  v26 = sub_245F9A9C8();
  v36 = v26;
  if (!v26)
  {
    v27 = v43;
    v45(v43, v44, v23);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Image Helper: Can't load AVDepthData fromDictionaryRepresentation, can't produce depth map.", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    v31 = v27;
LABEL_14:
    v22(v31, v23);
    return 0;
  }

  if ([v26 depthDataType] != 1717855600)
  {
    v37 = [v36 depthDataByConvertingToDepthDataType_];

    v36 = v37;
  }

  v45(v42, v44, v18);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v38, v39, "Image Helper: Got depth map!", v40, 2u);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  v22(v42, v18);
  v41 = [v36 depthDataMap];

  return v41;
}

uint64_t sub_245F9D3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245F9D404(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_245F9D420(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_245F9D434(uint64_t a1, unsigned int a2)
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

uint64_t sub_245F9D47C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_245F9D4C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_245F9D530(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_245F9D608()
{
  result = qword_27EE3A040;
  if (!qword_27EE3A040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A040);
  }

  return result;
}

CVPixelBufferRef sub_245F9D654()
{
  v1 = v0;
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  pixelBufferOut[0] = 0;
  sub_245F8E624(&qword_27EE3A058, &qword_246096F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096EF0;
  v5 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v6 = *MEMORY[0x277CBED28];
  v7 = *MEMORY[0x277CC4D68];
  *(inited + 40) = *MEMORY[0x277CBED28];
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  v8 = v6;
  v9 = v5;
  v10 = v7;
  sub_245F9D968(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE3A060, &qword_246096F08);
  swift_arrayDestroy();
  v11 = *MEMORY[0x277CBECE8];
  Width = CGImageGetWidth(v1);
  Height = CGImageGetHeight(v1);
  type metadata accessor for CFString(0);
  sub_245F8E624(&qword_27EE3A068, &unk_246096F10);
  sub_245F9DA80(&qword_27EE39F30);
  v14 = sub_246091B34();

  LODWORD(v11) = CVPixelBufferCreate(v11, Width, Height, 0x42475241u, v14, pixelBufferOut);

  v15 = 0;
  if (!v11)
  {
    v16 = pixelBufferOut[0];
    if (pixelBufferOut[0])
    {
      v17 = pixelBufferOut[0];
      v15 = 0;
      if (CVPixelBufferLockBaseAddress(v17, 0))
      {
LABEL_11:

        goto LABEL_12;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(v17);
      BaseAddress = CVPixelBufferGetBaseAddress(v17);
      v20 = CGImageGetWidth(v1);
      v21 = CGImageGetHeight(v1);
      v22 = sub_245F9DA58(BaseAddress, v20, v21, BytesPerRow, v3);
      if (!v22)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v23 = v22;
      CGImageGetWidth(v1);
      CGImageGetHeight(v1);
      sub_246091F74();
      v29.data = CVPixelBufferGetBaseAddress(v17);
      v29.rowBytes = CVPixelBufferGetBytesPerRow(v17);
      v24 = CGImageGetWidth(v1);
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v29.width = v24;
        v25 = CGImageGetHeight(v1);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v29.height = v25;
          vImagePermuteChannels_ARGB8888(&v29, &v29, byte_2858DDF20, 0);

          v26 = v17;
LABEL_10:
          CVPixelBufferUnlockBaseAddress(v17, 0);
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t sub_245F9D968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A078, &qword_246096F48);
    v3 = sub_246092384();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_245F91B2C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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

uint64_t sub_245F9DA80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

float sub_245F9DAC4(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 1) <= 2)
  {
    return flt_246097014[a1 - 1];
  }

  return result;
}

uint64_t sub_245F9DAE4(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

float sub_245F9DAF4(char a1)
{
  result = 0.01;
  if (a1)
  {
    return 0.03;
  }

  return result;
}

void sub_245F9DB18(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69.n128_u64[0] = a2;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62 - v12;
  v14 = sub_246091834();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68.n128_u64[0] = v62.n128_u64 - v19;
  v20 = [a1 geometry];
  v21 = [v20 colors];

  v72 = v21;
  if (!v21)
  {
    v38 = sub_245FA32CC();
    (*(v6 + 16))(v9, v38, v5);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609E950, &v73);
      _os_log_impl(&dword_245F8A000, v39, v40, "%{private}s: Failed to create mesh anchor from ARMeshAnchor, ARMeshAnchor does not have vertex colors!", v41, 0xCu);
      sub_245F8E6F4(v42);
      MEMORY[0x24C1989D0](v42, -1, -1);
      MEMORY[0x24C1989D0](v41, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v43 = 1;
    goto LABEL_25;
  }

  v22 = [a1 geometry];
  v23 = [v22 vertices];

  v24 = [v23 count];
  v25 = 3 * v24;
  if ((v24 * 3) >> 64 == (3 * v24) >> 63)
  {
    v26 = [v72 buffer];
    v27 = [v26 contents];
    v28 = v26;
    if ((v25 & 0x8000000000000000) == 0)
    {
      v66 = v18;
      v67 = a3;
      v30 = v70;
      for (i = v71; v25; --v25)
      {
        v32 = *v27;
        if (*v27 >= 0.0 && v32 < 0.0031307)
        {
          v31 = v32 * 12.92;
        }

        else
        {
          v31 = 0.0;
          if (v32 >= 0.0031307 && v32 <= 1.0)
          {
            v31 = (powf(v32, 0.41667) * 1.055) + -0.055;
          }
        }

        *v27++ = sub_246021418(v31, 0.0, 1.0);
      }

      sub_245FA28E4(v69.n128_i64[0], v13);
      v35 = *(v30 + 48);
      if (v35(v13, 1, i) == 1)
      {
        v36 = [a1 identifier];
        v37 = v68.n128_u64[0];
        sub_246091814();

        if (v35(v13, 1, i) != 1)
        {
          sub_245F8E744(v13, &qword_27EE3A350, &unk_2460969A0);
        }
      }

      else
      {
        v37 = v68.n128_u64[0];
        (*(v30 + 32))(v68.n128_u64[0], v13, i);
      }

      v44 = v66;
      (*(v30 + 16))(v66, v37, i);
      v45 = [a1 geometry];
      v46 = [v45 vertices];

      v47 = [a1 geometry];
      v48 = [v47 normals];

      v49 = [a1 geometry];
      v50 = [v49 faces];

      [a1 transform];
      v68 = v52;
      v69 = v51;
      v64 = v54;
      v65 = v53;
      [a1 timestamp];
      v56 = v55;
      [a1 corner];
      v63 = v57;
      [a1 extent];
      v62 = v58;
      v59 = sub_245FCCC80();
      a3 = v67;
      v60 = sub_2460364E0(v44, v46, v72, v48, v50, v59 & 1, v67, v69, v68, v65, v64, v56, v63, v62);
      (*(v30 + 8))(v37, i, v60);
      v43 = 0;
LABEL_25:
      v61 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
      (*(*(v61 - 8) + 56))(a3, v43, 1, v61);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}