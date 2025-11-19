uint64_t sub_22D7B3B10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  if (a2)
  {
    v13 = *aHMmA;
    v12 = unk_2840D4F40;
    sub_22D81A398();
    v30 = a1;
    sub_22D7B3EDC(a1, a2, v13, v12, a3, v11);

    v14 = sub_22D81A8C8();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v11, 1, v14) != 1)
    {
      goto LABEL_6;
    }

    sub_22D764440(v11, &qword_27DA02000, &qword_22D81F160);
    v17 = a4;
    v19 = *aHhMm;
    v18 = unk_2840D4F50;
    sub_22D81A398();
    v20 = v19;
    a4 = v17;
    sub_22D7B3EDC(v30, a2, v20, v18, a3, v11);

    if (v16(v11, 1, v14) != 1)
    {
      goto LABEL_6;
    }

    sub_22D764440(v11, &qword_27DA02000, &qword_22D81F160);
    v22 = aHhMmSs[0];
    v21 = aHhMmSs[1];
    sub_22D81A398();
    v23 = v22;
    a4 = v17;
    sub_22D7B3EDC(v30, a2, v23, v21, a3, v11);

    if (v16(v11, 1, v14) == 1)
    {
      sub_22D764440(v11, &qword_27DA02000, &qword_22D81F160);
      swift_arrayDestroy();
      v24 = objc_opt_self();
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_22D81B838();

      v31 = 0xD000000000000012;
      v32 = 0x800000022D82AD70;
      MEMORY[0x2318D1A50](v30, a2);
      MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82AD90);
      v25 = sub_22D81B2B8();

      [v24 logError_];

      return (*(v15 + 56))(v17, 1, 1, v14);
    }

    else
    {
LABEL_6:
      swift_arrayDestroy();
      (*(v15 + 32))(a4, v11, v14);
      return (*(v15 + 56))(a4, 0, 1, v14);
    }
  }

  else
  {
    v27 = sub_22D81A8C8();
    v28 = *(*(v27 - 8) + 56);

    return v28(a4, 1, 1, v27);
  }
}

uint64_t sub_22D7B3EDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a3;
  v73 = a4;
  v69 = a1;
  v70 = a2;
  v78 = a6;
  v7 = sub_22D81A968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D81AA48();
  v79 = v12;
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D81A8C8();
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  sub_22D81A888();
  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v65 = *MEMORY[0x277CC9830];
  v83 = v8[13];
  v83(v11);
  sub_22D81A978();
  v81 = v8[1];
  v82 = v8 + 1;
  v81(v11, v7);
  v23 = sub_22D81A9E8();
  v24 = *(v84 + 8);
  v84 += 8;
  v80 = v24;
  v24(v15, v12);
  [v22 setCalendar_];

  v64 = a5;
  v25 = sub_22D81AA88();
  [v22 setTimeZone_];

  v26 = sub_22D81B2B8();
  [v22 setDateFormat_];

  v27 = sub_22D81A818();
  v74 = v22;
  v28 = [v22 stringFromDate_];

  v68 = sub_22D81B2C8();
  v67 = v29;

  v30 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v31 = v65;
  (v83)(v11, v65, v7);
  sub_22D81A978();
  v81(v11, v7);
  v32 = sub_22D81A9E8();
  v80(v15, v79);
  [v30 setCalendar_];

  v33 = sub_22D81AA88();
  [v30 setTimeZone_];

  v34 = sub_22D81B2B8();
  [v30 setDateFormat_];

  v75 = v21;
  v35 = sub_22D81A818();
  v71 = v30;
  v36 = [v30 stringFromDate_];

  v66 = sub_22D81B2C8();
  v38 = v37;

  v39 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  (v83)(v11, v31, v7);
  sub_22D81A978();
  v40 = v11;
  v41 = v69;
  v81(v40, v7);
  v42 = sub_22D81A9E8();
  v80(v15, v79);
  v43 = v70;
  [v39 setCalendar_];

  v44 = sub_22D81AA88();
  [v39 setTimeZone_];

  v87 = 0x2D4D4D2D79797979;
  v88 = 0xEB00000000206464;
  MEMORY[0x2318D1A50](v72, v73);
  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  MEMORY[0x2318D1A50](8026746, 0xE300000000000000);
  v45 = sub_22D81B2B8();

  [v39 setDateFormat_];

  v87 = v41;
  v88 = v43;
  v85 = 58;
  v86 = 0xE100000000000000;
  sub_22D77F62C();
  v46 = sub_22D81B738();
  if (v46[2])
  {
    v47 = v46[4];
    v48 = v46[5];
    sub_22D81A398();

    v49 = sub_22D81B338();

    v87 = 0;
    v88 = 0xE000000000000000;
    if (v49 == 1)
    {
      v50 = 48;
    }

    else
    {
      v50 = 0;
    }

    if (v49 == 1)
    {
      v51 = 0xE100000000000000;
    }

    else
    {
      v51 = 0xE000000000000000;
    }
  }

  else
  {

    v50 = 0;
    v51 = 0xE000000000000000;
    v87 = 0;
    v88 = 0xE000000000000000;
  }

  MEMORY[0x2318D1A50](v50, v51);

  MEMORY[0x2318D1A50](v41, v43);
  v52 = v87;
  v53 = v88;
  v87 = v68;
  v88 = v67;
  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  MEMORY[0x2318D1A50](v52, v53);

  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  MEMORY[0x2318D1A50](v66, v38);

  v54 = sub_22D81B2B8();

  v55 = [v39 dateFromString_];

  if (v55)
  {
    v56 = v63;
    sub_22D81A878();

    v57 = v76;
    v58 = v77;
    (*(v76 + 8))(v75, v77);
    v59 = v78;
    (*(v57 + 32))(v78, v56, v58);
    v60 = 0;
  }

  else
  {
    v57 = v76;
    v58 = v77;
    (*(v76 + 8))(v75, v77);

    v60 = 1;
    v59 = v78;
  }

  return (*(v57 + 56))(v59, v60, 1, v58);
}

void sub_22D7B46DC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v3 = objc_opt_self();
    v4 = sub_22D81B2B8();
    [v3 logError_];
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    sub_22D81A198();

    sub_22D7B478C();
  }
}

uint64_t sub_22D7B478C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03058, &qword_22D822ED8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = aBlock - v3;
  v5 = v0[4];
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22D7B5C64;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7B4A20;
  aBlock[3] = &block_descriptor_9;
  v7 = _Block_copy(aBlock);

  [v5 observeDataWithBlock_];
  _Block_release(v7);
  v8 = [v5 data];
  sub_22D7B4A8C(v8, v4);
  v9 = v0[2];
  if (v9)
  {
    v10 = v0[3];
    sub_22D81A198();
    v9(v4);
    sub_22D744DA4(v9);
  }

  return sub_22D764440(v4, &qword_27DA03058, &qword_22D822ED8);
}

uint64_t sub_22D7B4920(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03058, &qword_22D822ED8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_22D7B4A8C(a1, v5);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v7 + 24);
      sub_22D81A198();
      v8(v5);
      sub_22D744DA4(v8);
    }

    return sub_22D764440(v5, &qword_27DA03058, &qword_22D822ED8);
  }

  return result;
}

void sub_22D7B4A20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_22D81A198();
  v5 = a2;
  v4(a2);
}

uint64_t sub_22D7B4A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_22D81A8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SystemOverrideClockData();
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D81AAB8();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = v20;
    v62 = v19;
    v57 = v16;
    v58 = v12;
    v63 = v9;
    v64 = v8;
    v65 = a2;
    v23 = a1;
    v24 = [v23 customOverrides];
    v25 = [v24 shortTimeEntry];

    if (v25)
    {
      v26 = [v25 isEnabled];

      if (v26)
      {
        goto LABEL_8;
      }
    }

    v27 = [v23 customOverrides];
    v28 = [v27 timeEntry];

    if (v28)
    {
      v29 = [v28 isEnabled];

      if (v29)
      {
        goto LABEL_8;
      }
    }

    v30 = [v23 customOverrides];
    v31 = [v30 dateEntry];

    if (v31)
    {
      v32 = [v31 isEnabled];

      if (v32)
      {
LABEL_8:
        v33 = [v23 customOverrides];
        v34 = [v33 shortTimeEntry];

        if (v34)
        {
          v35 = [v34 stringValue];

          v60 = sub_22D81B2C8();
          v37 = v36;
        }

        else
        {
          v60 = 0;
          v37 = 0;
        }

        v59 = v13;
        v40 = [v23 customOverrides];
        v41 = [v40 timeEntry];

        if (v41)
        {
          v42 = [v41 stringValue];

          v43 = sub_22D81B2C8();
          v41 = v44;
        }

        else
        {
          v43 = 0;
        }

        v45 = [v23 customOverrides];
        v46 = [v45 dateEntry];

        if (v46)
        {
          v47 = [v46 0x278771F78];

          v48 = sub_22D81B2C8();
          v46 = v49;
        }

        else
        {
          v48 = 0;
        }

        v50 = v65;
        v51 = v59;
        sub_22D81AAA8();
        sub_22D7B17C0(v60, v37, v43, v41, v48, v46, v22, v7);

        (*(v61 + 8))(v22, v62);
        v53 = v63;
        v52 = v64;
        if ((*(v63 + 48))(v7, 1, v64) == 1)
        {
          sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
          return (*(v66 + 56))(v50, 1, 1, v51);
        }

        else
        {
          v54 = *(v53 + 32);
          v55 = v58;
          v54(v58, v7, v52);
          v56 = v57;
          v54(v57, v55, v52);
          sub_22D7B51B8(v56, v50);
          return (*(v66 + 56))(v50, 0, 1, v51);
        }
      }
    }

    a2 = v65;
  }

  v38 = *(v66 + 56);

  return v38(a2, 1, 1, v13);
}

uint64_t sub_22D7B5074()
{
  v1 = *(v0 + 24);
  sub_22D744DA4(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemOverrideClockData()
{
  result = qword_27DA03030;
  if (!qword_27DA03030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D7B514C()
{
  result = sub_22D81A8C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7B51B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemOverrideClockData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_22D7B521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_22D81A398();
  result = sub_22D81B3A8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22D7B57A8();
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
      result = sub_22D81B878();
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

uint64_t sub_22D7B57A8()
{
  v0 = sub_22D81B3B8();
  v4 = sub_22D7B5828(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22D7B5828(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22D81B318();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22D81B728();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22D7D8050(v9, 0);
  v12 = sub_22D7B5980(v15, (v11 + 4), v10, a1, a2, a3, a4);
  sub_22D81A398();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22D81B318();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22D81B878();
LABEL_4:

  return sub_22D81B318();
}

unint64_t sub_22D7B5980(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22D7B5BA0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22D81B388();
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
          result = sub_22D81B878();
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

    result = sub_22D7B5BA0(v12, a6, a7);
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

    result = sub_22D81B368();
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

uint64_t sub_22D7B5BA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22D81B398();
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
    v5 = MEMORY[0x2318D1A80](15, a1 >> 16);
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

uint64_t sub_22D7B5C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7B5C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03068, &qword_22D822EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7B5CFC(uint64_t a1)
{
  v2 = type metadata accessor for SystemOverrideClockData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7B5D9C()
{
  result = qword_27DA03070;
  if (!qword_27DA03070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03070);
  }

  return result;
}

uint64_t sub_22D7B5DF0()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7B5EA8()
{
  *v0;
  *v0;
  *v0;
  sub_22D81B328();
}

uint64_t sub_22D7B5F4C()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7B6000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22D7B7D78();
  *a2 = result;
  return result;
}

void sub_22D7B6030(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B636F6C63;
  v4 = 0xE900000000000068;
  v5 = 0x63746177706F7473;
  if (*v1 != 2)
  {
    v5 = 0x72656D6974;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D72616C61;
    v2 = 0xE500000000000000;
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

unint64_t sub_22D7B60A8()
{
  result = qword_27DA03078;
  if (!qword_27DA03078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03078);
  }

  return result;
}

unint64_t sub_22D7B6100()
{
  result = qword_27DA03080;
  if (!qword_27DA03080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03080);
  }

  return result;
}

unint64_t sub_22D7B6158()
{
  result = qword_27DA03088;
  if (!qword_27DA03088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03088);
  }

  return result;
}

unint64_t sub_22D7B61B0()
{
  result = qword_27DA03090;
  if (!qword_27DA03090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03090);
  }

  return result;
}

unint64_t sub_22D7B6204()
{
  result = qword_27DA03098;
  if (!qword_27DA03098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03098);
  }

  return result;
}

unint64_t sub_22D7B625C()
{
  result = qword_27DA030A0;
  if (!qword_27DA030A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030A0);
  }

  return result;
}

uint64_t sub_22D7B62B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_22D81A748();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81A958();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_22D81B2A8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22D81A768();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22D81A498();
  __swift_allocate_value_buffer(v15, qword_27DA0D390);
  __swift_project_value_buffer(v15, qword_27DA0D390);
  sub_22D81B228();
  sub_22D81A948();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_22D81A778();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_22D81A488();
}

uint64_t sub_22D7B6598@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA01A08 != -1)
  {
    swift_once();
  }

  v2 = sub_22D81A498();
  v3 = __swift_project_value_buffer(v2, qword_27DA0D390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_22D7B6690()
{
  result = qword_27DA030A8;
  if (!qword_27DA030A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030A8);
  }

  return result;
}

uint64_t sub_22D7B66E4(uint64_t a1)
{
  v2 = sub_22D7B6690();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D7B6734()
{
  result = qword_27DA030B0;
  if (!qword_27DA030B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030B0);
  }

  return result;
}

unint64_t sub_22D7B678C()
{
  result = qword_27DA030B8;
  if (!qword_27DA030B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030B8);
  }

  return result;
}

unint64_t sub_22D7B67E4()
{
  result = qword_27DA030C0;
  if (!qword_27DA030C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030C0);
  }

  return result;
}

uint64_t sub_22D7B683C(uint64_t a1)
{
  v2 = sub_22D7B625C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D7B68E0()
{
  result = qword_27DA030D8;
  if (!qword_27DA030D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030D8);
  }

  return result;
}

unint64_t sub_22D7B6938()
{
  result = qword_27DA030E0;
  if (!qword_27DA030E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030E0);
  }

  return result;
}

uint64_t sub_22D7B69D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MTAppIntentsAppState();
  result = sub_22D81AD08();
  *a1 = result;
  return result;
}

uint64_t sub_22D7B6A10@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D7B6D90()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7B6F54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03100, &qword_22D823330);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03108, &qword_22D823338);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03110, &qword_22D823368);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D7B70F8(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_22D81B4D8();
  v2[4] = sub_22D81B4C8();
  v5 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7B7194, v5, v4);
}

uint64_t sub_22D7B7194()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_22D81A0B8();
  sub_22D7B85F8(*(v0 + 40));
  sub_22D819FD8();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22D7B7214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D7B7834();
  *a1 = result;
  return result;
}

uint64_t sub_22D7B723C(uint64_t a1)
{
  v2 = sub_22D757BF8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D7B72C8(int a1)
{
  v40 = a1;
  v1 = sub_22D81A428();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = v32 - v11;
  v12 = sub_22D81A748();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22D81A958();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_22D81B2A8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_22D81A768();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v32[1] = v32 - v25;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA030F8, &qword_22D823328);
  sub_22D81B228();
  sub_22D81A948();
  v26 = *(v13 + 104);
  v26(v16, *MEMORY[0x277CC9110], v12);
  sub_22D81A778();
  (*(v22 + 56))(v33, 1, 1, v21);
  v42 = 4;
  sub_22D81B228();
  *v16 = type metadata accessor for MTAppIntentsManager();
  v26(v16, *MEMORY[0x277CC9120], v12);
  sub_22D81A948();
  sub_22D81A778();
  v27 = v35;
  sub_22D819F88();
  v28 = sub_22D819F78();
  v29 = *(*(v28 - 8) + 56);
  v29(v27, 0, 1, v28);
  v29(v36, 1, 1, v28);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  sub_22D7B6690();
  v30 = sub_22D81A0F8();
  v41 = v40;
  sub_22D81A198();
  sub_22D81A0C8();

  return v30;
}

uint64_t sub_22D7B7834()
{
  v0 = sub_22D81A428();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = v30 - v10;
  v11 = sub_22D81A748();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22D81A958();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_22D81B2A8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_22D81A768();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v23);
  v30[1] = v30 - v24;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA030F8, &qword_22D823328);
  sub_22D81B228();
  sub_22D81A948();
  v25 = *(v12 + 104);
  v25(v15, *MEMORY[0x277CC9110], v11);
  sub_22D81A778();
  (*(v21 + 56))(v31, 1, 1, v20);
  v38 = 4;
  sub_22D81B228();
  *v15 = type metadata accessor for MTAppIntentsManager();
  v25(v15, *MEMORY[0x277CC9120], v11);
  sub_22D81A948();
  sub_22D81A778();
  v26 = v33;
  sub_22D819F88();
  v27 = sub_22D819F78();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 0, 1, v27);
  v28(v34, 1, 1, v27);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  sub_22D7B6690();
  return sub_22D81A0F8();
}

uint64_t sub_22D7B7D78()
{
  v0 = sub_22D81B998();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22D7B7DC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v47 = v43 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = v43 - v5;
  v62 = sub_22D81A748();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v62);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A958();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81B2A8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22D81A768();
  v18 = *(v63 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03118, &qword_22D823378);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03120, qword_22D823380);
  v59 = v20;
  v21 = *(v20 - 8);
  v53 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v48 = v23;
  *(v23 + 16) = xmmword_22D820D00;
  v46 = *(v20 + 48);
  *(v23 + v22) = 0;
  v24 = v23 + v22;
  sub_22D81B228();
  sub_22D81A948();
  v61 = *MEMORY[0x277CC9110];
  v52 = *(v6 + 104);
  v60 = v6 + 104;
  v50 = v9;
  v25 = v62;
  v52(v9);
  sub_22D81A778();
  v26 = *(v18 + 56);
  v51 = v18 + 56;
  v58 = v26;
  v27 = v57;
  v26(v57, 1, 1, v63);
  v28 = v47;
  sub_22D81A318();
  v55 = sub_22D81A328();
  v29 = *(v55 - 8);
  v54 = *(v29 + 56);
  v49 = v29 + 56;
  v54(v28, 0, 1, v55);
  v56 = v24;
  sub_22D81A338();
  v30 = v53;
  v31 = v59;
  v32 = *(v59 + 48);
  v45 = (v24 + v53);
  v46 = v32;
  *v45 = 1;
  v43[0] = v17;
  sub_22D81B228();
  v43[1] = v13;
  sub_22D81A948();
  v33 = v52;
  (v52)(v50, v61, v25);
  sub_22D81A778();
  v34 = v63;
  v58(v27, 1, 1, v63);
  sub_22D81A318();
  v54(v28, 0, 1, v55);
  sub_22D81A338();
  v46 = 2 * v30;
  v35 = *(v31 + 48);
  v44 = (v56 + 2 * v30);
  v45 = v35;
  *v44 = 2;
  sub_22D81B228();
  sub_22D81A948();
  v36 = v50;
  (v33)(v50, v61, v62);
  sub_22D81A778();
  v37 = v57;
  v58(v57, 1, 1, v34);
  sub_22D81A318();
  v38 = v54;
  v39 = v55;
  v54(v28, 0, 1, v55);
  sub_22D81A338();
  v40 = (v56 + v46 + v53);
  v53 = *(v59 + 48);
  *v40 = 3;
  sub_22D81B228();
  sub_22D81A948();
  (v52)(v36, v61, v62);
  sub_22D81A778();
  v58(v37, 1, 1, v63);
  sub_22D81A318();
  v38(v28, 0, 1, v39);
  sub_22D81A338();
  v41 = sub_22D818518(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v41;
}

void *sub_22D7B85F8(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000022, 0x800000022D82AED0);
  sub_22D81B908();
  v3 = sub_22D81B2B8();

  [v2 logInfo_];

  if (qword_280CD1F18 != -1)
  {
    swift_once();
  }

  return sub_22D7BCAD0(a1);
}

unint64_t sub_22D7B8718()
{
  result = qword_27DA03138;
  if (!qword_27DA03138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03138);
  }

  return result;
}

unint64_t sub_22D7B8770()
{
  result = qword_27DA03140;
  if (!qword_27DA03140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03140);
  }

  return result;
}

uint64_t sub_22D7B87FC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D7B8B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03180, &qword_22D8251B0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7B8C5C, 0, 0);
}

uint64_t sub_22D7B8C5C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  sub_22D81A0B8();
  v6 = [objc_opt_self() seconds];
  sub_22D81A5E8();

  v7 = *(v4 + 8);
  v7(v2, v3);
  sub_22D81A5D8();
  v9 = v8;
  v7(v1, v3);
  if (v9 >= 86400.0)
  {
    v14 = v0[7];
    v15 = v0[8];
    sub_22D7BA020();
    swift_allocError();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    v11 = *(v0 + 3);
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    v12 = *(MEMORY[0x277D859E0] + 4);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_22D7B8E7C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_22D7B8E7C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22D7B8F94, 0, 0);
}

uint64_t sub_22D7B8F94()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];
  sub_22D819FD8();

  v4 = v0[1];

  return v4();
}

void sub_22D7B900C(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:a1];
  v7 = [a4 latestDuration];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = a3;
    v9[4] = a4;
    v14[4] = sub_22D7BA080;
    v14[5] = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_22D78A760;
    v14[3] = &block_descriptor_10;
    v10 = _Block_copy(v14);
    v11 = v6;
    sub_22D81A198();
    v12 = a4;

    v13 = [v8 addCompletionBlock_];
    _Block_release(v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E60, &unk_22D81E9D0);
    sub_22D81B4B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_22D7B9198(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 sound];
    [a3 setSound_];
  }

  else if (a2)
  {
    v10 = objc_opt_self();
    v11 = a2;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD000000000000039, 0x800000022D82AF80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    sub_22D81B908();
    v12 = sub_22D81B2B8();

    [v10 logError_];
  }
}

uint64_t sub_22D7B9304()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7B94C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03190, &qword_22D823540);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03198, &qword_22D823548);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA031A0, &qword_22D823578);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D7B9670(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D7B8B80(a1, v5, v4);
}

uint64_t sub_22D7B971C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D7B99DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22D7B9748()
{
  result = qword_27DA03148;
  if (!qword_27DA03148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03148);
  }

  return result;
}

uint64_t sub_22D7B979C()
{
  v0 = qword_27DA03128;
  sub_22D81A398();
  return v0;
}

void sub_22D7B97D4()
{
  sub_22D7B9FCC();

  JUMPOUT(0x2318D0580);
}

uint64_t sub_22D7B9820()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7B99DC()
{
  v0 = sub_22D81A428();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03160, &unk_22D823510);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v41 = v35 - v11;
  v12 = sub_22D81A748();
  v35[0] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22D81A958();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_22D81B2A8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_22D81A768();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v35[1] = v35 - v25;
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03168, &qword_22D823520);
  sub_22D81B228();
  sub_22D81A948();
  v26 = *(v13 + 104);
  v26(v16, *MEMORY[0x277CC9110], v12);
  sub_22D81A778();
  (*(v22 + 56))(v41, 1, 1, v21);
  v27 = *MEMORY[0x277CB9EF8];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03170, &qword_22D823528);
  v29 = *(v28 - 8);
  v30 = v36;
  (*(v29 + 104))(v36, v27, v28);
  (*(v29 + 56))(v30, 0, 1, v28);
  sub_22D81B228();
  *v16 = type metadata accessor for MTAppIntentsManager();
  v26(v16, *MEMORY[0x277CC9120], v35[0]);
  sub_22D81A948();
  sub_22D81A778();
  v31 = v37;
  sub_22D819F88();
  v32 = sub_22D819F78();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  (*(v39 + 104))(v38, *MEMORY[0x277CBA308], v40);
  v33 = sub_22D81A118();
  [objc_allocWithZone(MEMORY[0x277D29740]) init];
  return v33;
}

unint64_t sub_22D7B9FCC()
{
  result = qword_27DA03178;
  if (!qword_27DA03178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03178);
  }

  return result;
}

unint64_t sub_22D7BA020()
{
  result = qword_27DA03188;
  if (!qword_27DA03188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03188);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D7BA0B8()
{
  result = qword_27DA031A8;
  if (!qword_27DA031A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031A8);
  }

  return result;
}

unint64_t sub_22D7BA110()
{
  result = qword_27DA031B0;
  if (!qword_27DA031B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031B0);
  }

  return result;
}

unint64_t sub_22D7BA168()
{
  result = qword_27DA031B8;
  if (!qword_27DA031B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031B8);
  }

  return result;
}

unint64_t sub_22D7BA1C0()
{
  result = qword_27DA031C0;
  if (!qword_27DA031C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031C0);
  }

  return result;
}

unint64_t sub_22D7BA214()
{
  result = qword_27DA031C8;
  if (!qword_27DA031C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031C8);
  }

  return result;
}

uint64_t sub_22D7BA274@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = sub_22D81B218();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81B288();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = v26 - v8;
  v9 = sub_22D81A748();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81A958();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_22D81B2A8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_22D81A768();
  v29 = *(v18 - 8);
  v30 = v18;
  v19 = *(v29 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22D81B228();
  sub_22D81A948();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v10 + 104);
  v26[1] = v10 + 104;
  v21(v13, v20, v9);
  sub_22D81A778();
  sub_22D81B278();
  sub_22D81B268();
  v22 = v28;
  v23 = v31;
  (*(v1 + 104))(v28, *MEMORY[0x277CC9BD8], v31);
  sub_22D81B238();
  (*(v1 + 8))(v22, v23);
  sub_22D81B268();
  sub_22D81B298();
  sub_22D81A948();
  v21(v13, v20, v27);
  v24 = v32;
  sub_22D81A778();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_22D81A488();
}

uint64_t sub_22D7BA6F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_22D81A768();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_22D81B288();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_22D81B278();
  sub_22D81B268();
  sub_22D819FE8();
  sub_22D81B248();

  sub_22D81B268();
  sub_22D81A758();
  (*(v9 + 56))(v7, 1, 1, v8);
  v13 = sub_22D81A328();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return sub_22D81A338();
}

unint64_t sub_22D7BA964()
{
  result = qword_27DA031D0;
  if (!qword_27DA031D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031D0);
  }

  return result;
}

unint64_t sub_22D7BA9B8()
{
  result = qword_27DA031D8;
  if (!qword_27DA031D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031D8);
  }

  return result;
}

unint64_t sub_22D7BAA10()
{
  result = qword_27DA031E0;
  if (!qword_27DA031E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031E0);
  }

  return result;
}

uint64_t sub_22D7BAA64@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_22D81A398();
}

unint64_t sub_22D7BAA78()
{
  result = qword_27DA031E8;
  if (!qword_27DA031E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA031F0, &qword_22D8237A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031E8);
  }

  return result;
}

uint64_t sub_22D7BAADC(uint64_t a1)
{
  v2 = sub_22D75AD48();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_22D7BAB2C()
{
  result = qword_27DA031F8;
  if (!qword_27DA031F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031F8);
  }

  return result;
}

uint64_t sub_22D7BAB88(uint64_t a1)
{
  v2 = sub_22D7BAA10();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22D7BABD8()
{
  result = qword_27DA03200;
  if (!qword_27DA03200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03200);
  }

  return result;
}

unint64_t sub_22D7BAC30()
{
  result = qword_27DA03208;
  if (!qword_27DA03208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03208);
  }

  return result;
}

id sub_22D7BAC84()
{
  result = [objc_opt_self() sharedManager];
  qword_27DA0D3A8 = result;
  return result;
}

uint64_t sub_22D7BACC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22D795494;

  return sub_22D7BB5A0(a1);
}

uint64_t sub_22D7BAD88()
{
  if (qword_27DA01A10 != -1)
  {
    swift_once();
  }

  if (qword_27DA0D3A8 && (v1 = [qword_27DA0D3A8 allCities]) != 0)
  {
    v2 = v1;
    sub_22D7BB7F8();
    v3 = sub_22D81B438();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 16);
  v5 = sub_22D7BB18C(v3);

  *v4 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22D7BAE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22D756614;

  return (sub_22D7BB6D0)(a2, a3);
}

unint64_t sub_22D7BAF40()
{
  result = qword_27DA03210;
  if (!qword_27DA03210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03210);
  }

  return result;
}

unint64_t sub_22D7BAF98()
{
  result = qword_27DA03218;
  if (!qword_27DA03218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA024F8, &qword_22D820ED0);
    sub_22D78A554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03218);
  }

  return result;
}

uint64_t sub_22D7BB01C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_22D7BA214();
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D7BB0F4(uint64_t a1, int a2)
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

uint64_t sub_22D7BB13C(uint64_t result, int a2, int a3)
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

char *sub_22D7BB18C(unint64_t a1)
{
  v42 = sub_22D81A748();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81B2A8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81A768();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v38 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 >> 62)
  {
    v14 = sub_22D81B938();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v45 = MEMORY[0x277D84F90];
  result = sub_22D7E8ACC(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v45;
    v37 = a1 & 0xC000000000000001;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02700, &qword_22D821770);
    v17 = 0;
    v35 = *MEMORY[0x277CC9110];
    v33 = v14;
    v34 = (v2 + 104);
    while (1)
    {
      v18 = v37 ? MEMORY[0x2318D1F70](v17, a1) : *(a1 + 8 * v17 + 32);
      v19 = v18;
      sub_22D81B228();
      sub_22D81A948();
      (*v34)(v41, v35, v42);
      sub_22D81A778();
      v20 = sub_22D81A048();
      sub_22D81A198();
      result = [v19 alCityId];
      if (!result)
      {
        break;
      }

      v21 = result;
      v22 = [result stringValue];

      v23 = sub_22D81B2C8();
      v25 = v24;

      sub_22D81A398();
      result = [v19 name];
      if (!result)
      {
        goto LABEL_21;
      }

      v26 = result;
      v27 = sub_22D81B2C8();
      v29 = v28;

      v43 = v27;
      v44 = v29;
      sub_22D819FF8();

      v45 = v15;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22D7E8ACC((v30 > 1), v31 + 1, 1);
        v15 = v45;
      }

      ++v17;
      *(v15 + 16) = v31 + 1;
      v32 = (v15 + 24 * v31);
      v32[4] = v23;
      v32[5] = v25;
      v32[6] = v20;
      if (v33 == v17)
      {
        return v15;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22D7BB5C0()
{
  if (qword_27DA01A10 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA0D3A8;
  if (qword_27DA0D3A8 && (v2 = *(v0 + 16), v3 = sub_22D81B418(), v4 = [v1 citiesMatchingIdentifiers_], v3, v4))
  {
    sub_22D7BB7F8();
    v5 = sub_22D81B438();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22D7BB18C(v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_22D7BB6D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D7BB6F0, 0, 0);
}

uint64_t sub_22D7BB6F0()
{
  if (qword_27DA01A10 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA0D3A8;
  if (qword_27DA0D3A8 && (v2 = v0[2], v3 = v0[3], v4 = sub_22D81B2B8(), v5 = [v1 citiesMatchingName_], v4, v5))
  {
    sub_22D7BB7F8();
    v6 = sub_22D81B438();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_22D7BB18C(v6);

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_22D7BB7F8()
{
  result = qword_27DA03220;
  if (!qword_27DA03220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA03220);
  }

  return result;
}

uint64_t MobileTimerFeatureFlags.isFeatureEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for MobileTimerFeatureFlags;
  v4[4] = sub_22D76B44C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_22D81AC78();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

const char *MobileTimerFeatureFlags.domain.getter()
{
  if (*v0 >= 2u)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *MobileTimerFeatureFlags.feature.getter()
{
  v1 = "LiveActivityAlertingWithTone";
  if (*v0 != 1)
  {
    v1 = "live_activity_banners";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t MobileTimerFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

unint64_t sub_22D7BB9AC()
{
  result = qword_27DA03228;
  if (!qword_27DA03228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03228);
  }

  return result;
}

const char *sub_22D7BBA00()
{
  if (*v0 >= 2u)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *sub_22D7BBA30()
{
  v1 = "LiveActivityAlertingWithTone";
  if (*v0 != 1)
  {
    v1 = "live_activity_banners";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t sub_22D7BBACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22D744B0C;

  return v11(a1, a2, a3);
}

void sub_22D7BBBF4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if (a2)
  {
    (*(v5 + 16))(v8, a1, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v8, v4);
    aBlock[4] = sub_22D7BBE30;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_11;
    v11 = _Block_copy(aBlock);

    v12 = [a2 addCompletionBlock_];
    _Block_release(v11);
  }
}

uint64_t sub_22D7BBDB8(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
    return sub_22D81B4A8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D7BBE30(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90) - 8) + 80);

  return sub_22D7BBDB8(a1, a2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

id sub_22D7BBED4()
{
  type metadata accessor for IntentWorldClockManager();
  v0 = swift_allocObject();
  result = sub_22D7BBF10();
  qword_27DA0D3B0 = v0;
  return result;
}

id sub_22D7BBF10()
{
  v1 = v0;
  v2 = sub_22D81A958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81AAB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    *(v1 + 16) = result;
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *(v1 + 24) = v13;
    v14 = v13;
    sub_22D81AAA8();
    v15 = sub_22D81AA88();
    (*(v8 + 8))(v11, v7);
    [v14 setTimeZone_];

    v16 = *(v1 + 24);
    sub_22D81A948();
    v17 = sub_22D81A928();
    (*(v3 + 8))(v6, v2);
    [v16 setLocale_];

    v18 = *(v1 + 24);
    v19 = sub_22D81B2B8();
    [v18 setLocalizedDateFormatFromTemplate_];

    [*(v1 + 24) setDateStyle_];
    [*(v1 + 24) setTimeStyle_];
    [*(v1 + 24) setDoesRelativeDateFormatting_];
    [*(v1 + 24) setFormattingContext_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22D7BC1BC()
{
  v1 = sub_22D81A8C8();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_22D81AAB8();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = *(v0 + 16);
  v22 = sub_22D81B2B8();
  v23 = [v21 citiesMatchingName_];

  if (!v23)
  {
    return 0;
  }

  sub_22D7BB7F8();
  v24 = sub_22D81B438();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_13:

    return 0;
  }

  result = sub_22D81B938();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x2318D1F70](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v26 = *(v24 + 32);
  }

  v44 = v26;
  result = [v26 timeZone];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v27 = result;

  sub_22D81B2C8();

  sub_22D81AA58();

  v28 = v48;
  if ((*(v48 + 48))(v13, 1, v14) != 1)
  {
    v42 = v0;
    (*(v28 + 32))(v20, v13, v14);
    sub_22D81A888();
    sub_22D81A8B8();
    v43 = sub_22D81AA68();
    v29 = v47;
    v30 = v8;
    v31 = *(v46 + 8);
    v31(v5, v47);
    sub_22D81AAA8();
    sub_22D81A8B8();
    v32 = sub_22D81AA68();
    v33 = v5;
    v34 = v31;
    v31(v33, v29);
    v35 = *(v28 + 8);
    v48 = v28 + 8;
    result = v35(v18, v14);
    if (!__OFSUB__(v43, v32))
    {
      v36 = v45;
      sub_22D81A808();
      v34(v30, v29);
      v37 = *(v42 + 24);
      v38 = sub_22D81A818();
      v39 = [v37 stringFromDate_];

      v40 = sub_22D81B2C8();
      v34(v36, v29);
      v35(v20, v14);
      return v40;
    }

    goto LABEL_18;
  }

  sub_22D7BC6DC(v13);
  return 0;
}

uint64_t sub_22D7BC678()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D7BC6DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D7BC764()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

uint64_t sub_22D7BC7AC()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

unint64_t sub_22D7BC7F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22D7BD034(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id MTAppIntentsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static MTAppIntentsManager.sharedManager.getter()
{
  if (qword_280CD1F18 != -1)
  {
    swift_once();
  }

  v1 = qword_280CD1F20;

  return v1;
}

uint64_t sub_22D7BC958()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22D7BC9B8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18MobileTimerSupport19MTAppIntentsManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_22D7BCA50;
}

void sub_22D7BCA50(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void *sub_22D7BCAD0(uint64_t a1)
{
  v3 = objc_opt_self();
  sub_22D81B838();
  MEMORY[0x2318D1A50](0x63656C6553646964, 0xED00002062615474);
  sub_22D81B908();
  MEMORY[0x2318D1A50](0x6564206874697720, 0xEF2065746167656CLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03240, &qword_22D823BF8);
  v4 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v4);

  v5 = sub_22D81B2B8();

  [v3 logInfo_];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didSelectTabWithManager:v1 tab:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D7BCCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  sub_22D81B838();

  MEMORY[0x2318D1A50](a1, a2);
  v7 = sub_22D81B2B8();

  [v6 logInfo_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_22D81B2B8();
    [v9 didAddNewWorldClockWithNameWithManager:v3 name:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D7BCDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  sub_22D81B838();

  MEMORY[0x2318D1A50](a1, a2);
  v7 = sub_22D81B2B8();

  [v6 logInfo_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_22D81B2B8();
    [v9 didRemoveWorldClockWithNameWithManager:v3 name:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D7BCF3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_22D81B2C8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

id MTAppIntentsManager.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTAppIntentsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MTAppIntentsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTAppIntentsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22D7BD034(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22D7BD048()
{
  result = qword_27DA03248;
  if (!qword_27DA03248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03248);
  }

  return result;
}

uint64_t sub_22D7BD21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for AlarmActivityAttributes(0);
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BD2B4, 0, 0);
}

uint64_t sub_22D7BD2B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = *(v0[6] + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  v0[12] = v4;
  sub_22D81A8B8();
  *(v1 + *(v2 + 20)) = v3;
  v5 = v3;

  return MEMORY[0x2822009F8](sub_22D7BD34C, v4, 0);
}

uint64_t sub_22D7BD34C()
{
  v1 = *(v0 + 96);
  sub_22D7F0FC8(*(v0 + 56), *(v0 + 88));
  *(v0 + 104) = 0;
  v2 = *(v0 + 88);

  sub_22D7C6250(v2, type metadata accessor for AlarmActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7CD948, 0, 0);
}

uint64_t sub_22D7BD41C(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7BD21C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7BD52C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_22D81B4F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;
  v14 = a1;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v10, &unk_22D823D10, v12);

  return sub_22D764440(v10, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7BD674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = type metadata accessor for AlarmActivityAttributes(0);
  v7[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BD744, 0, 0);
}

uint64_t sub_22D7BD744()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[6] + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  v0[13] = v5;
  sub_22D81A8B8();
  *(v1 + *(v2 + 20)) = v4;
  v6 = sub_22D81AC68();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = v4;

  return MEMORY[0x2822009F8](sub_22D7BD828, v5, 0);
}

uint64_t sub_22D7BD828()
{
  v1 = *(v0 + 104);
  sub_22D7EE164(*(v0 + 56), *(v0 + 96), *(v0 + 80));
  *(v0 + 112) = 0;
  v2 = *(v0 + 96);
  sub_22D764440(*(v0 + 80), &qword_27DA03368, &qword_22D824BF0);
  sub_22D7C6250(v2, type metadata accessor for AlarmActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7CD950, 0, 0);
}

uint64_t sub_22D7BD8F4(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7BD674(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7BD9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22D7640C4(a3, v27 - v11, &unk_27DA01FF0, &qword_22D81FC70);
  v13 = sub_22D81B4F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_22D81A198();
  if (v15 == 1)
  {
    sub_22D764440(v12, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22D81B498();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22D81B308() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_22D81A198();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22D7BDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22D7640C4(a3, v27 - v11, &unk_27DA01FF0, &qword_22D81FC70);
  v13 = sub_22D81B4F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_22D81A198();
  if (v15 == 1)
  {
    sub_22D764440(v12, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22D81B498();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22D81B308() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_22D81A198();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22D7BE108(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  v16 = a1;
  v17 = a2;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v12, &unk_22D823D20, v14);

  return sub_22D764440(v12, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7BE264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = type metadata accessor for AlarmActivityAttributes(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BE300, 0, 0);
}

uint64_t sub_22D7BE300()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = *(v0[6] + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  v0[13] = v4;
  sub_22D81A8B8();
  *(v1 + *(v2 + 20)) = v3;
  v5 = v3;

  return MEMORY[0x2822009F8](sub_22D7BE398, v4, 0);
}

uint64_t sub_22D7BE398()
{
  v1 = v0[13];
  sub_22D7EF198(v0[7], v0[12], v0[8]);
  v0[14] = 0;
  sub_22D7C6250(v0[12], type metadata accessor for AlarmActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7CD94C, 0, 0);
}

uint64_t sub_22D7BE444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7BE264(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7BE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  sub_22D81A398();
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v12, &unk_22D823D30, v14);

  return sub_22D764440(v12, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7BE844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_22D7BE86C, 0, 0);
}

uint64_t sub_22D7BE86C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7BE898, v1, 0);
}

uint64_t sub_22D7BE898()
{
  v1 = v0[11];
  sub_22D7EFDB0(v0[7], v0[8]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_22D7CD968, 0, 0);
}

uint64_t sub_22D7BE928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7BE844(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7BEBF0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7BEC1C, v1, 0);
}

uint64_t sub_22D7BEC1C()
{
  v1 = *(v0 + 24);
  sub_22D7BED30();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7BEC7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7BEBD0(a1, v4, v5, v6);
}

uint64_t sub_22D7BED30()
{
  v26 = sub_22D81AB88();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03370, &unk_22D824C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = objc_opt_self();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22D81B838();

  v27 = 0xD00000000000001FLL;
  v28 = 0x800000022D82B6B0;
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v10, v11);

  v12 = sub_22D81B2B8();

  [v9 logInfo_];

  v14 = sub_22D7C506C(&qword_280CD1F00, v13, type metadata accessor for AlarmActivityProvider);
  v15 = *(v14 + 208);
  v16 = type metadata accessor for AlarmActivityProvider();
  v17 = v15(v16, v14);
  v18 = v17;
  if (v17 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D81B938())
  {
    v20 = 0;
    v1 += 8;
    while ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318D1F70](v20, v18);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_22D81AB08();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
      (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
      sub_22D81AB78();
      sub_22D81AB28();

      (*v1)(v4, v26);
      sub_22D764440(v8, &qword_27DA03370, &unk_22D824C60);
      ++v20;
      if (v22 == i)
      {
      }
    }

    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v21 = *(v18 + 8 * v20 + 32);
    sub_22D81A198();
    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22D7BF06C()
{
  v26 = sub_22D81AB88();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03360, &unk_22D826890);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = objc_opt_self();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22D81B838();

  v27 = 0xD00000000000001FLL;
  v28 = 0x800000022D82B6B0;
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v10, v11);

  v12 = sub_22D81B2B8();

  [v9 logInfo_];

  v14 = sub_22D7C506C(&qword_280CD28C8, v13, type metadata accessor for TimerActivityProvider);
  v15 = *(v14 + 208);
  v16 = type metadata accessor for TimerActivityProvider();
  v17 = v15(v16, v14);
  v18 = v17;
  if (v17 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D81B938())
  {
    v20 = 0;
    v1 += 8;
    while ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318D1F70](v20, v18);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_22D81AB08();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
      (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
      sub_22D81AB78();
      sub_22D81AB28();

      (*v1)(v4, v26);
      sub_22D764440(v8, &qword_27DA03360, &unk_22D826890);
      ++v20;
      if (v22 == i)
      {
      }
    }

    if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v21 = *(v18 + 8 * v20 + 32);
    sub_22D81A198();
    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22D7BF3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22D7BF40C, 0, 0);
}

uint64_t sub_22D7BF434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  *(v0 + 64) = sub_22D81AAC8();

  return MEMORY[0x2822009F8](sub_22D7BF4B4, 0, 0);
}

char *sub_22D7BF4B4()
{
  v1 = *(v0 + 64);
  swift_getKeyPath();
  if (v1 >> 62)
  {
    if (*(v0 + 64) < 0)
    {
      v13 = *(v0 + 64);
    }

    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v14 = *(v0 + 64);

    v5 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v18;
  v17 = *(v0 + 64) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 64));
    }

    else
    {
      v6 = *(v17 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 32) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v10 = *(v18 + 16);
    v9 = *(v18 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v18 + 16) = v10 + 1;
    v11 = v18 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);
  v12 = *(v0 + 64);

LABEL_16:
  v15 = *(v0 + 56);
  (*(v0 + 48))(v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22D7BF69C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7BF3E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D7BF7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 128) = a5;
  *(v7 + 72) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7BF894, 0, 0);
}

uint64_t sub_22D7BF8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  v1 = sub_22D81AAC8();
  v2 = v1;
  v16 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_22D81B938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v15 = (*(v0 + 104) + 8);
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318D1F70](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v13 = v16;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          sub_22D81A198();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = *(v0 + 112);
        v8 = *(v0 + 96);
        v9 = *(v0 + 128);
        sub_22D81AB08();
        sub_22D81ABF8();
        (*v15)(v7, v8);
        v10 = *(v0 + 56);
        v11 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
        swift_beginAccess();
        LODWORD(v11) = v10[v11];

        if (v9 == v11)
        {
          sub_22D81B888();
          v12 = *(v16 + 16);
          sub_22D81B8A8();
          sub_22D81B8B8();
          sub_22D81B898();
        }

        else
        {
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:
  *(v0 + 120) = v13;

  return MEMORY[0x2822009F8](sub_22D7BFAE0, 0, 0);
}

char *sub_22D7BFAE0()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = *(v0 + 120);

    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = *(*(v0 + 120) + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  v18 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v18;
  v17 = *(v0 + 120) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 120));
    }

    else
    {
      v6 = *(v17 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 64) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v10 = *(v18 + 16);
    v9 = *(v18 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v18 + 16) = v10 + 1;
    v11 = v18 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);
  v12 = *(v0 + 120);

LABEL_15:
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  (*(v0 + 80))(v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22D7BFCC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7BF7C0(a1, v4, v5, v6, v7, v9, v8);
}

id AlarmActivityProviderProxy.init()()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor;
  type metadata accessor for AlarmActivityProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[14] = 0x6D72616C61;
  v2[15] = 0xE500000000000000;
  v2[16] = 0xD000000000000014;
  v2[17] = 0x800000022D829320;
  v2[18] = 0xD000000000000016;
  v2[19] = 0x800000022D82B260;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AlarmActivityProviderProxy();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_22D7BFFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for TimerActivityAttributes(0);
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C0064, 0, 0);
}

uint64_t sub_22D7C0064()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = *(v0[6] + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  v0[12] = v4;
  sub_22D81A8B8();
  *(v1 + *(v2 + 20)) = v3;
  v5 = v3;

  return MEMORY[0x2822009F8](sub_22D7C00FC, v4, 0);
}

uint64_t sub_22D7C00FC()
{
  v1 = *(v0 + 96);
  sub_22D7F0768(*(v0 + 56), *(v0 + 88));
  *(v0 + 104) = 0;
  v2 = *(v0 + 88);

  sub_22D7C6250(v2, type metadata accessor for TimerActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7C01CC, 0, 0);
}

uint64_t sub_22D7C01CC()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(0);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7C023C()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = sub_22D81BB78();
  v9 = sub_22D7CDE20(v7, v8);

  v3(v9);

  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22D7C0300(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7BFFCC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7C0430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = v5;
  v17 = a1;
  sub_22D81A198();
  sub_22D75D890(0, 0, v13, a5, v15);
}

uint64_t sub_22D7C0554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = type metadata accessor for TimerActivityAttributes(0);
  v7[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C0624, 0, 0);
}

uint64_t sub_22D7C0624()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[6] + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  v0[13] = v5;
  sub_22D81A8B8();
  *(v1 + *(v2 + 20)) = v4;
  v6 = sub_22D81AC68();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = v4;

  return MEMORY[0x2822009F8](sub_22D7C0708, v5, 0);
}

uint64_t sub_22D7C0708()
{
  v1 = *(v0 + 104);
  sub_22D7EE6EC(*(v0 + 56), *(v0 + 96), *(v0 + 80));
  *(v0 + 112) = 0;
  v2 = *(v0 + 96);
  sub_22D764440(*(v0 + 80), &qword_27DA03368, &qword_22D824BF0);
  sub_22D7C6250(v2, type metadata accessor for TimerActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7C07D4, 0, 0);
}

uint64_t sub_22D7C07D4()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(0);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22D7C0850()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = sub_22D81BB78();
  v9 = sub_22D7CDE20(v7, v8);

  v3(v9);

  v10 = v0[12];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22D7C0920(uint64_t a1)
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
  v10[1] = sub_22D744B08;

  return sub_22D7C0554(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7C0A30(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_22D81B4F8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a3;
  v20[6] = a7;
  v20[7] = v18;
  v21 = a3;
  v22 = a1;
  sub_22D75D890(0, 0, v16, a8, v20);
}

uint64_t sub_22D7C0B78(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  v16 = a1;
  v17 = a2;
  sub_22D81A198();
  sub_22D75D890(0, 0, v12, &unk_22D823D90, v14);
}

uint64_t sub_22D7C0CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = type metadata accessor for TimerActivityAttributes(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C0D50, 0, 0);
}

uint64_t sub_22D7C0D50()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = *(v0[6] + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  v0[13] = v4;
  sub_22D81A8B8();
  *(v1 + *(v2 + 20)) = v3;
  v5 = v3;

  return MEMORY[0x2822009F8](sub_22D7C0DE8, v4, 0);
}

uint64_t sub_22D7C0DE8()
{
  v1 = v0[13];
  sub_22D7EF1CC(v0[7], v0[12], v0[8]);
  v0[14] = 0;
  sub_22D7C6250(v0[12], type metadata accessor for TimerActivityAttributes);

  return MEMORY[0x2822009F8](sub_22D7C0E94, 0, 0);
}

uint64_t sub_22D7C0E94()
{
  v1 = *(v0 + 80);
  (*(v0 + 72))(0);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D7C0F04()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = sub_22D81BB78();
  v9 = sub_22D7CDE20(v7, v8);

  v3(v9);

  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22D7C0FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7C0CB4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7C1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  sub_22D81A398();
  sub_22D81A198();
  sub_22D75D890(0, 0, v12, &unk_22D823DA0, v14);
}

uint64_t sub_22D7C1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_22D7C136C, 0, 0);
}

uint64_t sub_22D7C136C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7C1398, v1, 0);
}

uint64_t sub_22D7C1398()
{
  v1 = v0[11];
  sub_22D7F028C(v0[7], v0[8]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_22D7C1428, 0, 0);
}

uint64_t sub_22D7C1428()
{
  v1 = *(v0 + 80);
  (*(v0 + 72))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7C1490()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  swift_getErrorValue();
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = sub_22D81BB78();
  v9 = sub_22D7CDE20(v7, v8);

  v3(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22D7C154C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7C1344(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7C17B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_22D81B4F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v10 = v2;
  sub_22D75D890(0, 0, v7, a2, v9);
}

uint64_t sub_22D7C18C8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7C18F4, v1, 0);
}

uint64_t sub_22D7C18F4()
{
  v1 = *(v0 + 24);
  sub_22D7BF06C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7C1954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7C18A8(a1, v4, v5, v6);
}

uint64_t sub_22D7C1A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_22D81B4F8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_22D75D890(0, 0, v9, a4, v11);
}

uint64_t sub_22D7C1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;
  sub_22D81A198();
  sub_22D75D890(0, 0, v11, a4, v13);
}

uint64_t sub_22D7C1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_22D7C1C7C, 0, 0);
}

uint64_t sub_22D7C1CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  *(v0 + 64) = sub_22D81AAC8();

  return MEMORY[0x2822009F8](sub_22D7C1D24, 0, 0);
}

char *sub_22D7C1D24()
{
  v1 = *(v0 + 64);
  swift_getKeyPath();
  if (v1 >> 62)
  {
    if (*(v0 + 64) < 0)
    {
      v13 = *(v0 + 64);
    }

    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v14 = *(v0 + 64);

    v5 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v18;
  v17 = *(v0 + 64) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 64));
    }

    else
    {
      v6 = *(v17 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 32) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v10 = *(v18 + 16);
    v9 = *(v18 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v18 + 16) = v10 + 1;
    v11 = v18 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);
  v12 = *(v0 + 64);

LABEL_16:
  v15 = *(v0 + 56);
  (*(v0 + 48))(v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22D7C1F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7C1C58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D7C1FF8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  result = sub_22D81ABF8();
  *a1 = v3;
  return result;
}

uint64_t sub_22D7C2048@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_22D81A398();
}

uint64_t sub_22D7C20E8(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_22D81B4F8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a6;
  v18[6] = v16;
  v19 = a1;
  sub_22D75D890(0, 0, v14, a7, v18);
}

uint64_t sub_22D7C2248(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v5;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v5;
  sub_22D81A198();
  sub_22D75D890(0, 0, v13, a5, v15);
}

uint64_t sub_22D7C236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 128) = a5;
  *(v7 + 72) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C2440, 0, 0);
}

uint64_t sub_22D7C2468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  v1 = sub_22D81AAC8();
  v2 = v1;
  v16 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_22D81B938();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v15 = (*(v0 + 104) + 8);
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318D1F70](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v13 = v16;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          sub_22D81A198();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = *(v0 + 112);
        v8 = *(v0 + 96);
        v9 = *(v0 + 128);
        sub_22D81AB08();
        sub_22D81ABF8();
        (*v15)(v7, v8);
        v10 = *(v0 + 56);
        v11 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
        swift_beginAccess();
        LODWORD(v11) = v10[v11];

        if (v9 == v11)
        {
          sub_22D81B888();
          v12 = *(v16 + 16);
          sub_22D81B8A8();
          sub_22D81B8B8();
          sub_22D81B898();
        }

        else
        {
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:
  *(v0 + 120) = v13;

  return MEMORY[0x2822009F8](sub_22D7C268C, 0, 0);
}

char *sub_22D7C268C()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    v2 = sub_22D81B938();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = *(v0 + 120);

    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = *(*(v0 + 120) + 16);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  v18 = MEMORY[0x277D84F90];
  result = sub_22D7E8A08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v18;
  v17 = *(v0 + 120) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D1F70](v4, *(v0 + 120));
    }

    else
    {
      v6 = *(v17 + 8 * v4);
      sub_22D81A198();
    }

    *(v0 + 64) = v6;
    sub_22D81A198();
    swift_getAtKeyPath();

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v10 = *(v18 + 16);
    v9 = *(v18 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22D7E8A08((v9 > 1), v10 + 1, 1);
    }

    ++v4;
    *(v18 + 16) = v10 + 1;
    v11 = v18 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
  }

  while (v2 != v4);
  v12 = *(v0 + 120);

LABEL_15:
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  (*(v0 + 80))(v5);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22D7C2870(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7C236C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D7C2984(void *a1, uint64_t a2, char a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_22D81B4F8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  *(v20 + 40) = a3;
  *(v20 + 48) = a7;
  *(v20 + 56) = v18;
  v21 = a1;
  sub_22D75D890(0, 0, v16, a8, v20);
}

id TimerActivityProviderProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TimerActivityProviderProxy.init()()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor;
  type metadata accessor for TimerActivityProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[14] = 0x72656D6974;
  v2[15] = 0xE500000000000000;
  v2[16] = 0xD000000000000014;
  v2[17] = 0x800000022D829320;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TimerActivityProviderProxy();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_22D7C2C94(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D7C2CDC()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D7C2D5C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t AlarmContext.hour.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.hour.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.min.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.min.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.isSnoozed.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.isSnoozed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.isFiring.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.isFiring.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmContext.requestedStyle.getter()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AlarmContext.requestedStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AlarmContext.__allocating_init(title:alarmId:hour:min:isSnoozed:snoozeFireDate:isFiring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v16 = objc_allocWithZone(v9);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v18 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v19 = sub_22D81A8C8();
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v21 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
  *v22 = a3;
  v22[1] = a4;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = a5;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = a6;
  swift_beginAccess();
  v16[v17] = a7;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a8, &v16[v18]);
  swift_endAccess();
  swift_beginAccess();
  v16[v20] = a9;
  v23 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  *v23 = a3;
  v23[1] = a4;
  v29.receiver = v16;
  v29.super_class = v28;
  v24 = objc_msgSendSuper2(&v29, sel_init);
  sub_22D764440(a8, &qword_27DA02000, &qword_22D81F160);
  return v24;
}

id AlarmContext.init(title:alarmId:hour:min:isSnoozed:snoozeFireDate:isFiring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v18 = sub_22D81A8C8();
  (*(*(v18 - 8) + 56))(&v9[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v20 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
  *v21 = a3;
  v21[1] = a4;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = a5;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = a6;
  swift_beginAccess();
  v9[v16] = a7;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a8, &v9[v17]);
  swift_endAccess();
  swift_beginAccess();
  v9[v19] = a9;
  v22 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  *v22 = a3;
  v22[1] = a4;
  v28.receiver = v9;
  v28.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  sub_22D764440(a8, &qword_27DA02000, &qword_22D81F160);
  return v23;
}

uint64_t sub_22D7C38B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id static AlarmContext.mock()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_22D81A8C8();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = objc_allocWithZone(v0);
  v8 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v9 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v6(&v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate], 1, 1, v5);
  v10 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v11 = &v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title];
  *v11 = 0x68636E754CLL;
  v11[1] = 0xE500000000000000;
  v12 = &v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
  *v12 = 0x706134333231;
  v12[1] = 0xE600000000000000;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = 12;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = 30;
  swift_beginAccess();
  v7[v8] = 0;
  swift_beginAccess();
  sub_22D7C38B8(v4, &v7[v9]);
  swift_endAccess();
  swift_beginAccess();
  v7[v10] = 0;
  v13 = &v7[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  *v13 = 0x706134333231;
  v13[1] = 0xE600000000000000;
  v16.receiver = v7;
  v16.super_class = v0;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
  return v14;
}

uint64_t AlarmContext.description.getter()
{
  v1 = v0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v2 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - v3;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22D81B838();
  v31 = v29;
  v32 = v30;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D82B280);
  v5 = (v0 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v6, v7);

  MEMORY[0x2318D1A50](0x3A656C746974202CLL, 0xE800000000000000);
  v8 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v9, v10);

  MEMORY[0x2318D1A50](0x3A72756F68202CLL, 0xE700000000000000);
  v11 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
  swift_beginAccess();
  v28 = *(v1 + v11);
  v12 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v12);

  MEMORY[0x2318D1A50](0x3A6E696D202CLL, 0xE600000000000000);
  v13 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
  swift_beginAccess();
  v27 = *(v1 + v13);
  v14 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v14);

  MEMORY[0x2318D1A50](0x6F6F6E537369202CLL, 0xED0000203A64657ALL);
  v15 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  swift_beginAccess();
  if (*(v1 + v15))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  v17 = 0xE500000000000000;
  if (*(v1 + v15))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v16, v18);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82B2A0);
  v19 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v19, v4, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v4, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0x697269467369202CLL, 0xEC000000203A676ELL);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  swift_beginAccess();
  if (*(v1 + v20))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v20))
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x2318D1A50](v21, v17);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82B2C0);
  v22 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  v26 = *(v1 + v22);
  sub_22D81B908();
  return v31;
}

uint64_t sub_22D7C4178(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C746974;
    v6 = 1920298856;
    if (a1 != 2)
    {
      v6 = 7235949;
    }

    if (a1)
    {
      v5 = 0x64496D72616C61;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E697269467369;
    v2 = 25705;
    if (a1 != 7)
    {
      v2 = 0x6574736575716572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657A6F6F6E537369;
    if (a1 != 4)
    {
      v3 = 0x6946657A6F6F6E73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22D7C4298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22D7CAB7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22D7C42CC(uint64_t a1)
{
  v2 = sub_22D7C4910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C4308(uint64_t a1)
{
  v2 = sub_22D7C4910();

  return MEMORY[0x2821FE720](a1, v2);
}

id AlarmContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AlarmContext.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03288, &qword_22D823DE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36[-v13];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C4910();
  sub_22D81BC38();
  v16 = (v4 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v36[184] = 0;
  sub_22D81A398();
  sub_22D81BA78();
  if (v3)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {

    v19 = (v4 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    v36[160] = 1;
    sub_22D81A398();
    sub_22D81BA78();

    v22 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour;
    swift_beginAccess();
    v23 = *(v4 + v22);
    v36[136] = 2;
    sub_22D81BAA8();
    v24 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min;
    swift_beginAccess();
    v25 = *(v4 + v24);
    v36[112] = 3;
    sub_22D81BAA8();
    v26 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
    swift_beginAccess();
    v27 = *(v4 + v26);
    v36[88] = 4;
    sub_22D81BA88();
    v28 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
    swift_beginAccess();
    sub_22D7640C4(v4 + v28, v9, &qword_27DA02000, &qword_22D81F160);
    v36[64] = 5;
    sub_22D81A8C8();
    sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578]);
    sub_22D81BA68();
    sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
    v29 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
    swift_beginAccess();
    v30 = *(v4 + v29);
    v36[40] = 6;
    sub_22D81BA88();
    v32 = (v4 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id);
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];
    v36[16] = 7;
    sub_22D81A398();
    sub_22D81BA78();

    v35 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
    swift_beginAccess();
    v37 = *(v4 + v35);
    v36[15] = 8;
    sub_22D7C4964();
    sub_22D81BAB8();
    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_22D7C4910()
{
  result = qword_280CD2C38[0];
  if (!qword_280CD2C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2C38);
  }

  return result;
}

unint64_t sub_22D7C4964()
{
  result = qword_280CD2358[0];
  if (!qword_280CD2358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2358);
  }

  return result;
}

void *AlarmContext.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v44 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03290, &qword_22D823DE8);
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - v8;
  v10 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  v1[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed] = 0;
  v11 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
  v12 = sub_22D81A8C8();
  v13 = *(*(v12 - 8) + 56);
  v51 = v11;
  v13(&v2[v11], 1, 1, v12);
  v14 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  v2[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring] = 0;
  v15 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  v53 = v2;
  *&v2[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle] = 0;
  v17 = a1[3];
  v16 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_22D7C4910();
  v18 = v49;
  sub_22D81BC28();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(v50);
    v43 = v53;
    sub_22D764440(v53 + v51, &qword_27DA02000, &qword_22D81F160);
    v24 = *((*MEMORY[0x277D85000] & *v43) + 0x30);
    v25 = *((*MEMORY[0x277D85000] & *v43) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v10;
    v49 = v12;
    v44 = v15;
    v45 = v14;
    v21 = v46;
    v20 = v47;
    v57 = 0;
    v22 = v48;
    v23 = sub_22D81B9E8();
    v27 = v53;
    v28 = (v53 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_title);
    *v28 = v23;
    v28[1] = v29;
    v57 = 1;
    v30 = sub_22D81B9E8();
    v31 = &v27[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
    *v31 = v30;
    v31[1] = v32;
    v57 = 2;
    *&v27[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_hour] = sub_22D81BA18();
    v57 = 3;
    *&v27[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_min] = sub_22D81BA18();
    v57 = 4;
    v33 = sub_22D81B9F8();
    swift_beginAccess();
    v27[v19] = v33 & 1;
    v56 = 5;
    sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578]);
    sub_22D81B9D8();
    v34 = v51;
    swift_beginAccess();
    sub_22D77FD70(v20, &v27[v34]);
    swift_endAccess();
    v56 = 6;
    v35 = v27;
    v36 = sub_22D81B9F8();
    v37 = v45;
    swift_beginAccess();
    v35[v37] = v36 & 1;
    v55 = 7;
    v38 = sub_22D81B9E8();
    v39 = &v35[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
    *v39 = v38;
    v39[1] = v40;
    v55 = 8;
    sub_22D7C50B4();
    sub_22D81BA28();
    v41 = v58;
    v42 = v44;
    swift_beginAccess();
    *&v35[v42] = v41;
    v54.receiver = v35;
    v54.super_class = ObjectType;
    v43 = objc_msgSendSuper2(&v54, sel_init);
    (*(v21 + 8))(v9, v22);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  return v43;
}

uint64_t sub_22D7C506C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22D7C50B4()
{
  result = qword_280CD2C00;
  if (!qword_280CD2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C00);
  }

  return result;
}

void *sub_22D7C5108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = AlarmContext.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id AlarmActivityAttributes.context.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmActivityAttributes(0) + 20));

  return v1;
}

void AlarmActivityAttributes.context.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmActivityAttributes(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_22D7C528C(uint64_t a1)
{
  v2 = sub_22D7C5514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C52C8(uint64_t a1)
{
  v2 = sub_22D7C5514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03298, &qword_22D823DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5514();
  sub_22D81BC38();
  v14 = 0;
  sub_22D81A8C8();
  sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578]);
  sub_22D81BAB8();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for AlarmActivityAttributes(0) + 20));
    v12[15] = 1;
    type metadata accessor for AlarmContext(0);
    sub_22D7C506C(qword_280CD23E8, 255, type metadata accessor for AlarmContext);
    sub_22D81BAB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22D7C5514()
{
  result = qword_280CD2BA0;
  if (!qword_280CD2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BA0);
  }

  return result;
}

uint64_t AlarmActivityAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_22D81A8C8();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032A0, &qword_22D823DF8);
  v19 = *(v21 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AlarmActivityAttributes(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8B8();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5514();
  sub_22D81BC28();
  if (v2)
  {
    v15 = v22;
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v15 + 8))(v13, v4);
  }

  else
  {
    v16 = v19;
    v25 = 0;
    sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578]);
    sub_22D81BA28();
    (*(v22 + 40))(v13, v20, v4);
    type metadata accessor for AlarmContext(0);
    v24 = 1;
    sub_22D7C506C(&qword_280CD2C20, 255, type metadata accessor for AlarmContext);
    sub_22D81BA28();
    (*(v16 + 8))(v9, v21);
    *&v13[*(v10 + 20)] = v23;
    sub_22D7C61E8(v13, v18, type metadata accessor for AlarmActivityAttributes);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_22D7C6250(v13, type metadata accessor for AlarmActivityAttributes);
  }
}

uint64_t sub_22D7C5970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22D7C59DC(uint64_t a1)
{
  v3 = sub_22D81A8C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id TimerActivityAttributes.context.getter()
{
  v1 = *(v0 + *(type metadata accessor for TimerActivityAttributes(0) + 20));

  return v1;
}

void TimerActivityAttributes.context.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimerActivityAttributes(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_22D7C5B40(uint64_t a1)
{
  v2 = sub_22D7C5DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C5B7C(uint64_t a1)
{
  v2 = sub_22D7C5DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerActivityAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032A8, &qword_22D823E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5DC8();
  sub_22D81BC38();
  v14 = 0;
  sub_22D81A8C8();
  sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578]);
  sub_22D81BAB8();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for TimerActivityAttributes(0) + 20));
    v12[15] = 1;
    type metadata accessor for TimerContext(0);
    sub_22D7C506C(&qword_280CD27B0, 255, type metadata accessor for TimerContext);
    sub_22D81BAB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22D7C5DC8()
{
  result = qword_280CD2D28;
  if (!qword_280CD2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D28);
  }

  return result;
}

uint64_t TimerActivityAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_22D81A8C8();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032B0, &qword_22D823E08);
  v19 = *(v21 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TimerActivityAttributes(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8B8();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C5DC8();
  sub_22D81BC28();
  if (v2)
  {
    v15 = v22;
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v15 + 8))(v13, v4);
  }

  else
  {
    v16 = v19;
    v25 = 0;
    sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578]);
    sub_22D81BA28();
    (*(v22 + 40))(v13, v20, v4);
    type metadata accessor for TimerContext(0);
    v24 = 1;
    sub_22D7C506C(&qword_280CD2DA8, 255, type metadata accessor for TimerContext);
    sub_22D81BA28();
    (*(v16 + 8))(v9, v21);
    *&v13[*(v10 + 20)] = v23;
    sub_22D7C61E8(v13, v18, type metadata accessor for TimerActivityAttributes);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_22D7C6250(v13, type metadata accessor for TimerActivityAttributes);
  }
}

uint64_t sub_22D7C61E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D7C6250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D7C62E0()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6324(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_22D7C644C()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6490(double a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_22D7C6540()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6584(double a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22D7C6640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_22D7640C4(v2 + v4, a2, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7C6710(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  sub_22D7640C4(a1, &v14 - v9, &qword_27DA02000, &qword_22D81F160);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_22D77FD70(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_22D7C6878(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_22D77FD70(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_22D7C6934()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6978(char a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22D7C6AA0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22D81A398();
}

uint64_t sub_22D7C6B14(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_22D81A398();
  return v4;
}

uint64_t sub_22D7C6B74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22D7C6C78()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22D7C6D10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TimerContext.__allocating_init(state:timerId:duration:remainingTime:firing:fireDate:title:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v16 = objc_allocWithZone(v9);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  v18 = sub_22D81A8C8();
  v19 = *(*(v18 - 8) + 56);
  v19(&v16[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v19(&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v18);
  v19(&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v18);
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state] = a1;
  v21 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
  *v21 = a2;
  v21[1] = a3;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration] = a8;
  *&v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime] = a9;
  v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing] = a4;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a5, &v16[v20]);
  swift_endAccess();
  v22 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title];
  *v22 = a6;
  v22[1] = a7;
  v23 = &v16[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  *v23 = a2;
  v23[1] = a3;
  v29.receiver = v16;
  v29.super_class = v9;
  v24 = objc_msgSendSuper2(&v29, sel_init);
  sub_22D764440(a5, &qword_27DA02000, &qword_22D81F160);
  return v24;
}

id TimerContext.init(state:timerId:duration:remainingTime:firing:fireDate:title:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  v18 = sub_22D81A8C8();
  v19 = *(*(v18 - 8) + 56);
  v19(&v9[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v19(&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v18);
  v19(&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v18);
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state] = a1;
  v21 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
  *v21 = a2;
  v21[1] = a3;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration] = a8;
  *&v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime] = a9;
  v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing] = a4;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D7C38B8(a5, &v9[v20]);
  swift_endAccess();
  v22 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title];
  *v22 = a6;
  v22[1] = a7;
  v23 = &v9[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  *v23 = a2;
  v23[1] = a3;
  v28.receiver = v9;
  v28.super_class = type metadata accessor for TimerContext(0);
  v24 = objc_msgSendSuper2(&v28, sel_init);
  sub_22D764440(a5, &qword_27DA02000, &qword_22D81F160);
  return v24;
}

id sub_22D7C72F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_22D81A8C8();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = type metadata accessor for TimerContext(0);
  v7 = objc_allocWithZone(v6);
  v5(&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate], 1, 1, v4);
  v8 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v5(&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v4);
  v5(&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v4);
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state] = 0;
  v9 = &v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
  *v9 = 875770417;
  v9[1] = 0xE400000000000000;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration] = 0x404E000000000000;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime] = 0x4014000000000000;
  v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing] = 0;
  swift_beginAccess();
  sub_22D7C38B8(v3, &v7[v8]);
  swift_endAccess();
  v10 = &v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title];
  *v10 = 6513249;
  v10[1] = 0xE300000000000000;
  v11 = &v7[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  *v11 = 875770417;
  v11[1] = 0xE400000000000000;
  v15.receiver = v7;
  v15.super_class = v6;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  sub_22D764440(v3, &qword_27DA02000, &qword_22D81F160);
  return v12;
}

id sub_22D7C7544(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_22D81B2B8();

  return v5;
}

uint64_t sub_22D7C75B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - v4;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_22D81B838();
  v28 = v26;
  v29 = v27;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D82B310);
  v6 = (v0 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v7, v8);

  MEMORY[0x2318D1A50](0x3A6574617473202CLL, 0xE800000000000000);
  v9 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10)
  {
    if (v10 == 2)
    {
      v11 = 0xE600000000000000;
      v12 = 0x646573756150;
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v10 == 1)
      {
        v12 = 0x676E696E6E7552;
      }

      else
      {
        v12 = 0x6E776F6E6B6E55;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x646570706F7453;
  }

  MEMORY[0x2318D1A50](v12, v11);

  MEMORY[0x2318D1A50](0x697461727564202CLL, 0xEB000000003A6E6FLL);
  v13 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration;
  swift_beginAccess();
  v14 = *(v1 + v13);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D82B330);
  v15 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime;
  swift_beginAccess();
  v16 = *(v1 + v15);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0x614465726966202CLL, 0xEC000000203A6574);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v17, v5, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v5, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0x446465726966202CLL, 0xEC0000003A657461);
  v18 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v18, v5, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v5, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0x697269467369202CLL, 0xEB000000003A676ELL);
  v19 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  if (*(v1 + v19))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v19))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v20, v21);

  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D82B350);
  v22 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate;
  swift_beginAccess();
  sub_22D7640C4(v1 + v22, v5, &qword_27DA02000, &qword_22D81F160);
  sub_22D81B908();
  sub_22D764440(v5, &qword_27DA02000, &qword_22D81F160);
  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82B2C0);
  v23 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  v25[1] = *(v1 + v23);
  sub_22D81B908();
  return v28;
}

uint64_t sub_22D7C7AF4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6574617473;
    v7 = 0x6E6F697461727564;
    v8 = 0x6E696E69616D6572;
    if (a1 != 3)
    {
      v8 = 0x7461446465726966;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x644972656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656C746974;
    v2 = 25705;
    if (a1 != 9)
    {
      v2 = 0x6574736575716572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6574614465726966;
    v4 = 0x657373696D736964;
    if (a1 != 6)
    {
      v4 = 0x676E69726966;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22D7C7C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22D7CAE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22D7C7C98(uint64_t a1)
{
  v2 = sub_22D7C8F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7C7CD4(uint64_t a1)
{
  v2 = sub_22D7C8F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D7C7DF4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032D8, &qword_22D823E10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7C8F98();
  sub_22D81BC38();
  v18 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  v54 = v2;
  v66 = *(v2 + v18);
  v65 = 0;
  sub_22D7C8FEC();
  v19 = v16;
  v20 = v55;
  sub_22D81BAB8();
  if (v20)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v22 = v11;
  v23 = v13;
  v24 = v54;
  v25 = (v54 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v65 = 1;
  sub_22D81A398();
  v28 = v19;
  sub_22D81BA78();

  v29 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration;
  swift_beginAccess();
  v30 = *(v24 + v29);
  v64 = 2;
  sub_22D81BA98();
  v31 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime;
  swift_beginAccess();
  v32 = *(v24 + v31);
  v63 = 3;
  sub_22D81BA98();
  v33 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  swift_beginAccess();
  sub_22D7640C4(v24 + v33, v22, &qword_27DA02000, &qword_22D81F160);
  v62 = 4;
  sub_22D81A8C8();
  sub_22D7C506C(&unk_280CD2900, 255, MEMORY[0x277CC9578]);
  sub_22D81BA68();
  sub_22D764440(v22, &qword_27DA02000, &qword_22D81F160);
  v34 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  swift_beginAccess();
  v35 = v54 + v34;
  v36 = v53;
  sub_22D7640C4(v35, v53, &qword_27DA02000, &qword_22D81F160);
  v61 = 5;
  sub_22D81BA68();
  sub_22D764440(v36, &qword_27DA02000, &qword_22D81F160);
  v37 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate;
  swift_beginAccess();
  v38 = v54 + v37;
  v39 = v54;
  v40 = v52;
  sub_22D7640C4(v38, v52, &qword_27DA02000, &qword_22D81F160);
  v60 = 6;
  sub_22D81BA68();
  v41 = v23;
  sub_22D764440(v40, &qword_27DA02000, &qword_22D81F160);
  v42 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  v43 = *(v39 + v42);
  v59 = 7;
  sub_22D81BA88();
  v44 = (v39 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v58 = 8;
  sub_22D81A398();
  sub_22D81BA78();

  v47 = (v39 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v57 = 9;
  sub_22D81A398();
  sub_22D81BA78();

  v50 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  v67 = *(v39 + v50);
  v56 = 10;
  sub_22D7C4964();
  sub_22D81BAB8();
  return (*(v41 + 8))(v28, 0);
}

void *TimerContext.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E0, &unk_22D823E18);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firedDate;
  v17 = sub_22D81A8C8();
  v18 = *(*(v17 - 8) + 56);
  v59 = v16;
  v18(&v2[v16], 1, 1, v17);
  v61 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
  v18(&v2[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate], 1, 1, v17);
  v58 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate;
  v18(&v2[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_dismissedDate], 1, 1, v17);
  v19 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  v60 = v2;
  *&v2[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle] = 0;
  v20 = a1[3];
  v21 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v20);
  sub_22D7C8F98();
  v22 = v56;
  sub_22D81BC28();
  if (v22)
  {
    v23 = v59;
    v27 = v60;
    __swift_destroy_boxed_opaque_existential_0(v57);
    v28 = v58;
    sub_22D764440(v27 + v23, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v27 + v61, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v27 + v28, &qword_27DA02000, &qword_22D81F160);
    type metadata accessor for TimerContext(0);
    v29 = *((*MEMORY[0x277D85000] & *v27) + 0x30);
    v30 = *((*MEMORY[0x277D85000] & *v27) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v11;
    v56 = v19;
    v25 = v54;
    LOBYTE(v64) = 0;
    sub_22D7C9040();
    sub_22D81BA28();
    v26 = v59;
    v32 = v60;
    *(v60 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state) = v63;
    LOBYTE(v63) = 1;
    v33 = sub_22D81B9E8();
    v34 = (v32 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v63) = 2;
    sub_22D81BA08();
    *(v32 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_duration) = v36;
    LOBYTE(v63) = 3;
    sub_22D81BA08();
    *(v32 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_remainingTime) = v37;
    LOBYTE(v63) = 4;
    v51 = sub_22D7C506C(&unk_280CD2E60, 255, MEMORY[0x277CC9578]);
    sub_22D81B9D8();
    swift_beginAccess();
    sub_22D77FD70(v24, v32 + v26);
    swift_endAccess();
    LOBYTE(v63) = 5;
    v38 = v53;
    sub_22D81B9D8();
    v39 = v61;
    swift_beginAccess();
    sub_22D77FD70(v38, v32 + v39);
    swift_endAccess();
    LOBYTE(v63) = 6;
    sub_22D81B9D8();
    v40 = v58;
    swift_beginAccess();
    sub_22D77FD70(v52, v32 + v40);
    swift_endAccess();
    LOBYTE(v63) = 7;
    *(v32 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing) = sub_22D81B9F8() & 1;
    LOBYTE(v63) = 8;
    v41 = sub_22D81B9E8();
    v42 = (v32 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_title);
    *v42 = v41;
    v42[1] = v43;
    LOBYTE(v63) = 9;
    v44 = sub_22D81B9E8();
    v45 = (v60 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id);
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v63) = 10;
    sub_22D7C50B4();
    sub_22D81BA28();
    v47 = v64;
    v48 = v56;
    v49 = v60;
    swift_beginAccess();
    *&v49[v48] = v47;
    v50 = type metadata accessor for TimerContext(0);
    v62.receiver = v49;
    v62.super_class = v50;
    v27 = objc_msgSendSuper2(&v62, sel_init);
    (*(v25 + 8))(v15, v55);
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  return v27;
}

void *sub_22D7C8D00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for TimerContext(0));
  result = TimerContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22D7C8D88@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v4 = (*v2 + *a1);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
  return sub_22D81A398();
}

uint64_t TimerState.description.getter(uint64_t a1)
{
  v1 = 0x646573756150;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x676E696E6E7552;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x646570706F7453;
  }
}

uint64_t sub_22D7C8F20()
{
  v1 = *v0;
  v2 = 0x646573756150;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0x676E696E6E7552;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x646570706F7453;
  }
}

unint64_t sub_22D7C8F98()
{
  result = qword_280CD2D00;
  if (!qword_280CD2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D00);
  }

  return result;
}

unint64_t sub_22D7C8FEC()
{
  result = qword_280CD27B8;
  if (!qword_280CD27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD27B8);
  }

  return result;
}

unint64_t sub_22D7C9040()
{
  result = qword_280CD2DB0;
  if (!qword_280CD2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2DB0);
  }

  return result;
}

uint64_t sub_22D7C91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for TimerActivityAttributes(0);
  v3[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C92F4, 0, 0);
}

uint64_t sub_22D7C92F4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = objc_opt_self();
  sub_22D81B838();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82B390);
  MEMORY[0x2318D1A50](v3, v1);
  MEMORY[0x2318D1A50](0x3A656C797473202CLL, 0xE900000000000020);
  v0[10] = v2;
  sub_22D81B908();
  v5 = v0[8];
  v6 = v0[9];
  v7 = sub_22D81B2B8();

  [v4 logInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  v8 = sub_22D81AAC8();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_23:

    v43 = v0[21];
    v42 = v0[22];
    v45 = v0[18];
    v44 = v0[19];
    v46 = v0[15];

    v47 = v0[1];

    return v47();
  }

LABEL_22:
  v10 = sub_22D81B938();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_3:
  v11 = 0;
  v48 = v0[20];
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2318D1F70](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v11 + 32);
      v13 = sub_22D81A198();
    }

    v0[23] = v13;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = v0[22];
    v16 = v0[12];
    v49 = v0[13];
    sub_22D81AAD8();
    v17 = *(v15 + *(v48 + 20));
    sub_22D7C6250(v15, type metadata accessor for TimerActivityAttributes);
    v18 = &v17[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
    swift_beginAccess();
    v20 = *v18;
    v19 = *(v18 + 1);
    sub_22D81A398();

    if (v20 == v16 && v19 == v49)
    {
      break;
    }

    v22 = v0[12];
    v23 = v0[13];
    v24 = sub_22D81BB08();

    if (v24)
    {
      goto LABEL_17;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  v25 = v0[21];
  v27 = v0[18];
  v26 = v0[19];
  v28 = v0[16];
  v29 = v0[17];
  v31 = v0[14];
  v30 = v0[15];

  sub_22D81AAD8();
  v32 = *(v25 + *(v48 + 20));
  v0[24] = v32;
  v33 = v32;
  sub_22D7C6250(v25, type metadata accessor for TimerActivityAttributes);
  v34 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_requestedStyle;
  swift_beginAccess();
  *&v33[v34] = v31;
  v0[11] = v33;
  v35 = sub_22D81A8C8();
  (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
  v36 = v33;
  sub_22D81AB08();
  sub_22D81ABD8();
  v37 = *(v29 + 8);
  v0[25] = v37;
  v0[26] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v27, v28);
  type metadata accessor for TimerContext(0);
  sub_22D7C506C(&qword_280CD2DA8, 255, type metadata accessor for TimerContext);
  sub_22D7C506C(&qword_280CD27B0, 255, type metadata accessor for TimerContext);
  sub_22D7C506C(&qword_280CD27A8, 255, type metadata accessor for TimerContext);
  sub_22D81ABE8();
  v38 = *(MEMORY[0x277CB92A8] + 4);
  v50 = (*MEMORY[0x277CB92A8] + MEMORY[0x277CB92A8]);
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = sub_22D7C9874;
  v40 = v0[19];

  return v50(v40);
}

uint64_t sub_22D7C9874()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 128);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22D7C99D4, 0, 0);
}

uint64_t sub_22D7C99D4()
{
  v1 = *(v0 + 184);

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 120);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22D7C9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for AlarmActivityAttributes(0);
  v3[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7C9BC4, 0, 0);
}

uint64_t sub_22D7C9BC4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = objc_opt_self();
  sub_22D81B838();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82B3B0);
  MEMORY[0x2318D1A50](v3, v1);
  MEMORY[0x2318D1A50](0x3A656C797473202CLL, 0xE900000000000020);
  v0[10] = v2;
  sub_22D81B908();
  v5 = v0[8];
  v6 = v0[9];
  v7 = sub_22D81B2B8();

  [v4 logInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  v8 = sub_22D81AAC8();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_23:

    v43 = v0[21];
    v42 = v0[22];
    v45 = v0[18];
    v44 = v0[19];
    v46 = v0[15];

    v47 = v0[1];

    return v47();
  }

LABEL_22:
  v10 = sub_22D81B938();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_3:
  v11 = 0;
  v48 = v0[20];
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2318D1F70](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v11 + 32);
      v13 = sub_22D81A198();
    }

    v0[23] = v13;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v15 = v0[22];
    v16 = v0[12];
    v49 = v0[13];
    sub_22D81AAD8();
    v17 = *(v15 + *(v48 + 20));
    sub_22D7C6250(v15, type metadata accessor for AlarmActivityAttributes);
    v18 = &v17[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
    swift_beginAccess();
    v20 = *v18;
    v19 = *(v18 + 1);
    sub_22D81A398();

    if (v20 == v16 && v19 == v49)
    {
      break;
    }

    v22 = v0[12];
    v23 = v0[13];
    v24 = sub_22D81BB08();

    if (v24)
    {
      goto LABEL_17;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  v25 = v0[21];
  v27 = v0[18];
  v26 = v0[19];
  v28 = v0[16];
  v29 = v0[17];
  v31 = v0[14];
  v30 = v0[15];

  sub_22D81AAD8();
  v32 = *(v25 + *(v48 + 20));
  v0[24] = v32;
  v33 = v32;
  sub_22D7C6250(v25, type metadata accessor for AlarmActivityAttributes);
  v34 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_requestedStyle;
  swift_beginAccess();
  *&v33[v34] = v31;
  v0[11] = v33;
  v35 = sub_22D81A8C8();
  (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
  v36 = v33;
  sub_22D81AB08();
  sub_22D81ABD8();
  v37 = *(v29 + 8);
  v0[25] = v37;
  v0[26] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v27, v28);
  type metadata accessor for AlarmContext(0);
  sub_22D7C506C(&qword_280CD2C20, 255, type metadata accessor for AlarmContext);
  sub_22D7C506C(qword_280CD23E8, 255, type metadata accessor for AlarmContext);
  sub_22D7C506C(&qword_280CD23E0, 255, type metadata accessor for AlarmContext);
  sub_22D81ABE8();
  v38 = *(MEMORY[0x277CB92A8] + 4);
  v50 = (*MEMORY[0x277CB92A8] + MEMORY[0x277CB92A8]);
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = sub_22D7CA144;
  v40 = v0[19];

  return v50(v40);
}

uint64_t sub_22D7CA144()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 128);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_22D7CD9BC, 0, 0);
}

uint64_t sub_22D7CA2F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22D7CA3E8;

  return v6(v2 + 32);
}

uint64_t sub_22D7CA3E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

double sub_22D7CA4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isSnoozed;
  swift_beginAccess();
  v15 = 0.0;
  if (*(a1 + v14) == 1)
  {
    v16 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_snoozeFireDate;
    swift_beginAccess();
    sub_22D7640C4(a1 + v16, v5, &qword_27DA02000, &qword_22D81F160);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22D764440(v5, &qword_27DA02000, &qword_22D81F160);
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      sub_22D81A7E8();
      sub_22D81A858();
      v18 = v17;
      v19 = *(v7 + 8);
      v19(v11, v6);
      sub_22D81A858();
      v15 = v18 - v20;
      v21 = objc_opt_self();
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_22D81B838();
      v30 = v28;
      v31 = v29;
      MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D82B6F0);
      sub_22D81B5C8();
      MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D82B710);
      v22 = (a1 + OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId);
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      sub_22D81A398();
      MEMORY[0x2318D1A50](v23, v24);

      v25 = sub_22D81B2B8();

      [v21 logInfo_];

      v19(v13, v6);
    }
  }

  return v15;
}

double sub_22D7CA83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_state;
  swift_beginAccess();
  v15 = 0.0;
  if (*(a1 + v14) == 1)
  {
    v16 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_fireDate;
    swift_beginAccess();
    sub_22D7640C4(a1 + v16, v5, &qword_27DA02000, &qword_22D81F160);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22D764440(v5, &qword_27DA02000, &qword_22D81F160);
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      sub_22D81A7E8();
      sub_22D81A858();
      v18 = v17;
      v19 = *(v7 + 8);
      v19(v11, v6);
      sub_22D81A858();
      v15 = v18 - v20;
      v21 = objc_opt_self();
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_22D81B838();
      v30 = v28;
      v31 = v29;
      MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82B6D0);
      sub_22D81B5C8();
      MEMORY[0x2318D1A50](0x6D697420726F6620, 0xEB00000000207265);
      v22 = (a1 + OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId);
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      sub_22D81A398();
      MEMORY[0x2318D1A50](v23, v24);

      v25 = sub_22D81B2B8();

      [v21 logInfo_];

      v19(v13, v6);
    }
  }

  return v15;
}

uint64_t sub_22D7CAB7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_22D81BB08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496D72616C61 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A6F6F6E537369 && a2 == 0xE900000000000064 || (sub_22D81BB08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6946657A6F6F6E73 && a2 == 0xEE00657461446572 || (sub_22D81BB08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E697269467369 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEE00656C79745364)
  {

    return 8;
  }

  else
  {
    v6 = sub_22D81BB08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22D7CAE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_22D81BB08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644972656D6974 && a2 == 0xE700000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467 || (sub_22D81BB08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446465726966 && a2 == 0xE900000000000065 || (sub_22D81BB08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xED00006574614464 || (sub_22D81BB08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E69726966 && a2 == 0xE600000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_22D81BB08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEE00656C79745364)
  {

    return 10;
  }

  else
  {
    v6 = sub_22D81BB08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22D7CB1EC(uint64_t a1)
{
  result = sub_22D7C506C(&qword_27DA03308, 255, type metadata accessor for AlarmContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22D7CB378(uint64_t a1)
{
  result = sub_22D7C506C(&qword_27DA03310, 255, type metadata accessor for TimerContext);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7CB3D8()
{
  result = qword_27DA03318;
  if (!qword_27DA03318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03318);
  }

  return result;
}

unint64_t sub_22D7CB42C()
{
  result = qword_27DA03320;
  if (!qword_27DA03320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03320);
  }

  return result;
}

double keypath_get_72Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_73Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_76Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_22D7640C4(v4 + v5, a3, &qword_27DA02000, &qword_22D81F160);
}

uint64_t keypath_get_70Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
  return sub_22D81A398();
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_22D7CBC14()
{
  sub_22D7CBD34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D7CBD34()
{
  if (!qword_280CD2E58)
  {
    sub_22D81A8C8();
    v0 = sub_22D81B718();
    if (!v1)
    {
      atomic_store(v0, &qword_280CD2E58);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D81A8C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22D7CBF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22D81A8C8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22D7CC014()
{
  sub_22D7CBD34();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of static MTActivitiesUpdater.requestTimerStyle(timer:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22D744B08;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of static MTActivitiesUpdater.requestAlarmStyle(alarm:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22D744B08;

  return v12(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for TimerContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D7CCE68()
{
  result = qword_27DA03328;
  if (!qword_27DA03328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03328);
  }

  return result;
}

unint64_t sub_22D7CCEC0()
{
  result = qword_27DA03330;
  if (!qword_27DA03330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03330);
  }

  return result;
}

unint64_t sub_22D7CCF18()
{
  result = qword_27DA03338;
  if (!qword_27DA03338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03338);
  }

  return result;
}

unint64_t sub_22D7CCF70()
{
  result = qword_27DA03340;
  if (!qword_27DA03340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03340);
  }

  return result;
}

uint64_t sub_22D7CD068(uint64_t a1, uint64_t a2)
{
  result = sub_22D7C506C(&qword_280CD28D0, a2, type metadata accessor for TimerActivityProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22D7CD164(uint64_t a1, uint64_t a2)
{
  result = sub_22D7C506C(&qword_280CD1F08, a2, type metadata accessor for AlarmActivityProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7CD1C0()
{
  result = qword_280CD2CF0;
  if (!qword_280CD2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2CF0);
  }

  return result;
}

unint64_t sub_22D7CD218()
{
  result = qword_280CD2CF8;
  if (!qword_280CD2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2CF8);
  }

  return result;
}

unint64_t sub_22D7CD270()
{
  result = qword_280CD2D18;
  if (!qword_280CD2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D18);
  }

  return result;
}

unint64_t sub_22D7CD2C8()
{
  result = qword_280CD2D20;
  if (!qword_280CD2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D20);
  }

  return result;
}

unint64_t sub_22D7CD320()
{
  result = qword_280CD2B90;
  if (!qword_280CD2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2B90);
  }

  return result;
}

unint64_t sub_22D7CD378()
{
  result = qword_280CD2B98;
  if (!qword_280CD2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2B98);
  }

  return result;
}

unint64_t sub_22D7CD3D0()
{
  result = qword_280CD2C28;
  if (!qword_280CD2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C28);
  }

  return result;
}

unint64_t sub_22D7CD428()
{
  result = qword_280CD2C30;
  if (!qword_280CD2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C30);
  }

  return result;
}

uint64_t sub_22D7CD484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B0C;

  return sub_22D7C1344(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_22D7CD6E8()
{
  result = qword_280CD2C08;
  if (!qword_280CD2C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2C08);
  }

  return result;
}

unint64_t sub_22D7CD73C()
{
  result = qword_280CD2DB8[0];
  if (!qword_280CD2DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2DB8);
  }

  return result;
}

uint64_t sub_22D7CD790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return sub_22D7CA2F4(a1, v5);
}

uint64_t sub_22D7CD848(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D7CA2F4(a1, v5);
}

uint64_t keypath_get_354Tm@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_22D81ABF8();
  *a3 = v5;
  return result;
}

id MTActivityError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_22D81B2B8();

  if (a4)
  {
    v9 = sub_22D81B158();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id MTActivityError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = sub_22D81B2B8();

  if (a4)
  {
    v9 = sub_22D81B158();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for MTActivityError();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v8, a3, v9);

  return v10;
}

id MTActivityError.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MTActivityError.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString];
  v4 = type metadata accessor for MTActivityError();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MTActivityError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTActivityError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_22D7CDE20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03380, &qword_22D824CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D81DF60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000022D82B7D0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_22D81A398();
  sub_22D818700(inited);
  swift_setDeallocating();
  sub_22D7CDFE0(inited + 32);
  v5 = objc_allocWithZone(type metadata accessor for MTActivityError());
  v6 = sub_22D81B2B8();
  v7 = sub_22D81B158();

  v8 = [v5 initWithDomain:v6 code:0 userInfo:v7];

  v9 = &v8[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString];
  v10 = *&v8[OBJC_IVAR____TtC18MobileTimerSupport15MTActivityError_descriptionString + 8];
  *v9 = a1;
  *(v9 + 1) = a2;
  sub_22D81A398();

  return v8;
}

uint64_t sub_22D7CDFE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03388, &qword_22D824CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7CE05C()
{
  result = qword_27DA03390;
  if (!qword_27DA03390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03390);
  }

  return result;
}

uint64_t sub_22D7CE0B0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D7CE434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22D81A768();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22D81B228();
  sub_22D81A948();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v4);
  sub_22D81A778();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_22D81A488();
}

uint64_t sub_22D7CE6E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E696E69616D6572;
  }

  else
  {
    v4 = 0x6E6F697461727564;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xED0000656D695467;
  }

  if (*a2)
  {
    v6 = 0x6E696E69616D6572;
  }

  else
  {
    v6 = 0x6E6F697461727564;
  }

  if (*a2)
  {
    v7 = 0xED0000656D695467;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();
  }

  return v9 & 1;
}

unint64_t sub_22D7CE7A0()
{
  result = qword_27DA03398;
  if (!qword_27DA03398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03398);
  }

  return result;
}

uint64_t sub_22D7CE7F4()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7CE884()
{
  *v0;
  sub_22D81B328();
}

uint64_t sub_22D7CE900()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7CE98C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22D81B998();

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

void sub_22D7CE9EC(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461727564;
  if (*v1)
  {
    v2 = 0x6E696E69616D6572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xED0000656D695467;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22D7CEA3C()
{
  result = qword_27DA033A0;
  if (!qword_27DA033A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033A0);
  }

  return result;
}

unint64_t sub_22D7CEA94()
{
  result = qword_27DA033A8;
  if (!qword_27DA033A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033A8);
  }

  return result;
}

unint64_t sub_22D7CEAEC()
{
  result = qword_27DA033B0;
  if (!qword_27DA033B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033B0);
  }

  return result;
}

unint64_t sub_22D7CEB44()
{
  result = qword_27DA033B8;
  if (!qword_27DA033B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033B8);
  }

  return result;
}

unint64_t sub_22D7CEB98()
{
  result = qword_27DA033C0;
  if (!qword_27DA033C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033C0);
  }

  return result;
}

unint64_t sub_22D7CEBEC()
{
  result = qword_27DA033C8;
  if (!qword_27DA033C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033C8);
  }

  return result;
}

unint64_t sub_22D7CEC44()
{
  result = qword_27DA033D0;
  if (!qword_27DA033D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033D0);
  }

  return result;
}

unint64_t sub_22D7CECEC()
{
  result = qword_27DA033D8;
  if (!qword_27DA033D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033D8);
  }

  return result;
}

uint64_t sub_22D7CED40(uint64_t a1)
{
  v2 = sub_22D7CECEC();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D7CED90()
{
  result = qword_27DA033E0;
  if (!qword_27DA033E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033E0);
  }

  return result;
}

unint64_t sub_22D7CEDE8()
{
  result = qword_27DA033E8;
  if (!qword_27DA033E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033E8);
  }

  return result;
}

unint64_t sub_22D7CEE40()
{
  result = qword_27DA033F0;
  if (!qword_27DA033F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA033F0);
  }

  return result;
}

uint64_t sub_22D7CEE98(uint64_t a1)
{
  v2 = sub_22D7CEC44();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D7CEF3C()
{
  result = qword_27DA03408;
  if (!qword_27DA03408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03408);
  }

  return result;
}

unint64_t sub_22D7CEF94()
{
  result = qword_27DA03410;
  if (!qword_27DA03410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03410);
  }

  return result;
}

uint64_t sub_22D7CF038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03448, &qword_22D8251A8);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7CF0DC, 0, 0);
}

uint64_t sub_22D7CF0DC()
{
  v1 = [*(v0 + 32) timersSync];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [objc_opt_self() firstActiveTimerFromTimers_];

    sub_22D81A0B8();
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 16);
    if (*(v0 + 56) == 1)
    {
      [v4 remainingTime];
    }

    else
    {
      [v4 duration];
    }

    v11 = [objc_opt_self() seconds];
    sub_22D7D03FC();
    sub_22D81A5C8();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03180, &qword_22D8251B0);
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_22D7D02E4();
    sub_22D819FC8();
  }

  else
  {
    v8 = *(v0 + 40);
    v5 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03180, &qword_22D8251B0);
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_22D7D02E4();
    sub_22D819FC8();
  }

  sub_22D7D0394(v5);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22D7CF324()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7CF4E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03468, &qword_22D8251B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03470, &qword_22D8251C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03478, &unk_22D8251F0);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D7CF690(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D7CF038(a1, v5, v4);
}

uint64_t sub_22D7CF73C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D7CFDA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22D7CF764(uint64_t a1)
{
  v2 = sub_22D7CF7C0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D7CF7C0()
{
  result = qword_27DA03438;
  if (!qword_27DA03438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03438);
  }

  return result;
}

unint64_t sub_22D7CF814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v44 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v31 - v5;
  v46 = sub_22D81A748();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A958();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22D81B2A8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_22D81A768();
  v33 = v14;
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v41 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03480, &unk_22D825200);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03488, &qword_22D8275A0);
  v45 = v17;
  v18 = *(v17 - 8);
  v42 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v37 = v20;
  *(v20 + 16) = xmmword_22D821040;
  v21 = v20 + v19;
  v36 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_22D81B228();
  sub_22D81A948();
  v38 = *MEMORY[0x277CC9110];
  v22 = *(v6 + 104);
  v39 = v6 + 104;
  v40 = v22;
  v32 = v9;
  v22(v9);
  sub_22D81A778();
  v23 = *(v47 + 56);
  v47 += 56;
  v34 = v23;
  v24 = v43;
  v23(v43, 1, 1, v14);
  v25 = sub_22D81A328();
  v31 = *(*(v25 - 8) + 56);
  v26 = v44;
  v31(v44, 1, 1, v25);
  v35 = v21;
  v27 = v26;
  sub_22D81A338();
  v28 = (v21 + v42);
  v42 = *(v45 + 48);
  *v28 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v40(v32, v38, v46);
  sub_22D81A778();
  v34(v24, 1, 1, v33);
  v31(v27, 1, 1, v25);
  sub_22D81A338();
  v29 = sub_22D818830(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v29;
}

uint64_t sub_22D7CFDA4()
{
  v0 = sub_22D81A428();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v0);
  v34 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = v31 - v10;
  v37 = sub_22D81A748();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D81A958();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_22D81B2A8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_22D81A768();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v22);
  v31[0] = v31 - v23;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03440, &qword_22D825198);
  sub_22D81B228();
  sub_22D81A948();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v11 + 104);
  v25(v14, v24, v37);
  sub_22D81A778();
  (*(v20 + 56))(v38, 1, 1, v19);
  v39 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v25(v14, v24, v37);
  sub_22D81A778();
  v26 = v32;
  sub_22D819F88();
  v27 = sub_22D819F78();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 0, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  sub_22D7CECEC();
  v29 = sub_22D81A0F8();
  [objc_allocWithZone(MEMORY[0x277D29740]) init];
  return v29;
}

unint64_t sub_22D7D02E4()
{
  result = qword_27DA03450;
  if (!qword_27DA03450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA03448, &qword_22D8251A8);
    sub_22D7548B0(&qword_27DA03458, &qword_27DA03180, &qword_22D8251B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03450);
  }

  return result;
}

uint64_t sub_22D7D0394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03448, &qword_22D8251A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7D03FC()
{
  result = qword_27DA03460;
  if (!qword_27DA03460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA03460);
  }

  return result;
}

uint64_t sub_22D7D0454@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CB9FD8];
  v3 = sub_22D81A2D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22D7D04D8()
{
  v93 = sub_22D81A748();
  v98 = *(v93 - 8);
  v0 = *(v98 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22D81A958();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81B2A8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A768();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22D819F48();
  v101 = *(v97 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v97);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102[0] = sub_22D7B99DC();
  v102[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03490, &qword_22D825298);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03498, &qword_22D8252A0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v89 = xmmword_22D81E6C0;
  *(v19 + 16) = xmmword_22D81E6C0;
  sub_22D7B9748();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v98 + 104);
  v98 += 104;
  v95 = v21;
  v94 = v20;
  v21(v92, v20, v93);
  sub_22D81A778();
  v96 = v14;
  sub_22D819F38();
  v87 = sub_22D819EA8();
  v90 = *(v101 + 8);
  v101 += 8;
  v22 = v97;
  v90(v14, v97);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034A0, &qword_22D8252A8);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034A8, &qword_22D8252B0) - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v88 = xmmword_22D81DF60;
  *(v26 + 16) = xmmword_22D81DF60;
  sub_22D76E040();
  sub_22D819E88();
  v91 = v8;
  sub_22D81B228();
  sub_22D81A948();
  v28 = v92;
  v27 = v93;
  v29 = v20;
  v30 = v95;
  v95(v92, v29, v93);
  v31 = v28;
  sub_22D81A778();
  v32 = v96;
  sub_22D819F38();
  v86 = sub_22D819EA8();
  v33 = v90;
  v90(v32, v22);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034B0, &qword_22D8252B8);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034B8, &qword_22D8252C0) - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  *(swift_allocObject() + 16) = v88;
  sub_22D7D1D78();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v37 = v94;
  v30(v31, v94, v27);
  sub_22D81A778();
  v38 = v96;
  sub_22D819F38();
  v85 = sub_22D819EA8();
  v39 = v97;
  v40 = v33;
  v33(v38, v97);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034C8, &qword_22D8252C8);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034D0, &qword_22D8252D0) - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  *(swift_allocObject() + 16) = v88;
  sub_22D7D1DCC();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v44 = v92;
  v45 = v93;
  v95(v92, v37, v93);
  v46 = v44;
  sub_22D81A778();
  v47 = v96;
  sub_22D819F38();
  v84 = sub_22D819EA8();
  v40(v47, v39);
  sub_22D7568F4(v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034E0, &qword_22D8252D8);
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034E8, &qword_22D8252E0) - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  *(swift_allocObject() + 16) = v89;
  sub_22D755F18();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v95(v46, v94, v45);
  sub_22D81A778();
  v51 = v96;
  sub_22D819F38();
  v83 = sub_22D819EA8();
  v90(v51, v97);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034F0, &qword_22D8252E8);
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA034F8, &qword_22D8252F0) - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  *(swift_allocObject() + 16) = xmmword_22D825210;
  sub_22D76C23C();
  sub_22D819E88();
  v81 = 0xD000000000000011;
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  *&v88 = 0xD000000000000010;
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v55 = v93;
  v95(v92, v94, v93);
  sub_22D81A778();
  v56 = v96;
  sub_22D819F38();
  v82 = sub_22D819EA8();
  v57 = v90;
  v90(v56, v97);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03500, &qword_22D8252F8);
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03508, &qword_22D825300) - 8);
  v59 = *(v58 + 72);
  v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  *(swift_allocObject() + 16) = xmmword_22D821050;
  sub_22D7663DC();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v61 = v55;
  v62 = v95;
  v95(v92, v94, v61);
  sub_22D81A778();
  v63 = v96;
  sub_22D819F38();
  v81 = sub_22D819EA8();
  v57(v63, v97);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03510, &qword_22D825308);
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03518, &qword_22D825310) - 8);
  v65 = *(v64 + 72);
  v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  *(swift_allocObject() + 16) = v89;
  sub_22D758764();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v67 = v92;
  v62(v92, v94, v93);
  sub_22D81A778();
  v68 = v96;
  sub_22D819F38();
  *&v89 = sub_22D819EA8();
  v90(v68, v97);
  v102[0] = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03520, &qword_22D825318);
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03528, &qword_22D825320) - 8);
  v70 = *(v69 + 72);
  v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  *(swift_allocObject() + 16) = xmmword_22D81E100;
  sub_22D75B7E0();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D819E88();
  sub_22D81B228();
  sub_22D81A948();
  v95(v67, v94, v93);
  sub_22D81A778();
  sub_22D819F38();
  v72 = sub_22D819EA8();
  v90(v68, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DA03530, &unk_22D825328);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_22D825220;
  v74 = v86;
  *(v73 + 32) = v87;
  *(v73 + 40) = v74;
  v75 = v84;
  *(v73 + 48) = v85;
  *(v73 + 56) = v75;
  v76 = v82;
  *(v73 + 64) = v83;
  *(v73 + 72) = v76;
  v77 = v89;
  *(v73 + 80) = v81;
  *(v73 + 88) = v77;
  *(v73 + 96) = v72;
  v78 = sub_22D819E98();

  return v78;
}