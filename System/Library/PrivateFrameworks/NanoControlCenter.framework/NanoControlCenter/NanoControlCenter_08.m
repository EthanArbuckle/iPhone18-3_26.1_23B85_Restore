uint64_t sub_25AFC2D28()
{
  sub_25B006294();
  sub_25AFC2A20();
  return sub_25B0062D4();
}

uint64_t sub_25AFC2D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v38 = *(a1 + 64);
  v31 = *(a1 + 56);
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v34 = *(a1 + 88);
  v35 = *(a1 + 96);
  v29 = *(a1 + 105);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v30 = *(a2 + 56);
  v36 = *(a1 + 104);
  v37 = *(a2 + 64);
  v39 = *(a2 + 72);
  v40 = *(a2 + 80);
  v41 = *(a2 + 88);
  v42 = *(a2 + 96);
  v13 = *(a2 + 104);
  v28 = *(a2 + 105);
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v48 = *a1;
  v49 = v2;
  v50 = v3;
  v51 = v4;
  v52 = v14;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v47 = v15;
  sub_25AF181DC(v48, v2, v3, v4, v14);
  sub_25AF181DC(v7, v8, v9, v10, v15);
  LOBYTE(v7) = sub_25AFD33F0(&v48, &v43);
  sub_25AF18128(v43, v44, v45, v46, v47);
  sub_25AF18128(v48, v49, v50, v51, v52);
  result = 0;
  if ((v7 & 1) != 0 && v5 == v12 && v6 == v11)
  {
    if (v38)
    {
      v17 = v13;
      v19 = v41;
      v18 = v42;
      v21 = v39;
      v20 = v40;
      if (!v37)
      {
        return 0;
      }
    }

    else
    {
      v22 = v37;
      if (v31 != v30)
      {
        v22 = 1;
      }

      v17 = v13;
      v19 = v41;
      v18 = v42;
      v21 = v39;
      v20 = v40;
      if (v22)
      {
        return 0;
      }
    }

    if (v36 <= 0xFD)
    {
      v26 = v34;
      v25 = v35;
      v24 = v32;
      v23 = v33;
      if (v17 <= 0xFD)
      {
        v48 = v32;
        v49 = v33;
        v50 = v34;
        v51 = v35;
        v52 = v36;
        v43 = v21;
        v44 = v20;
        v45 = v19;
        v46 = v18;
        v47 = v17;
        sub_25AF1D7EC(v32, v33, v34, v35, v36);
        sub_25AF1D7EC(v21, v20, v19, v18, v17);
        sub_25AF1D7EC(v32, v33, v34, v35, v36);
        sub_25AF181DC(v32, v33, v34, v35, v36);
        v27 = sub_25AFD33F0(&v48, &v43);
        sub_25AF18128(v43, v44, v45, v46, v47);
        sub_25AF18128(v48, v49, v50, v51, v52);
        sub_25AF18128(v32, v33, v34, v35, v36);
        sub_25AF231D0(v32, v33, v34, v35, v36);
        if (v27)
        {
          return v29 ^ v28 ^ 1u;
        }

        return 0;
      }

      sub_25AF1D7EC(v32, v33, v34, v35, v36);
      sub_25AF1D7EC(v21, v20, v19, v18, v17);
      sub_25AF1D7EC(v32, v33, v34, v35, v36);
      sub_25AF18128(v32, v33, v34, v35, v36);
    }

    else
    {
      v24 = v32;
      v23 = v33;
      v26 = v34;
      v25 = v35;
      sub_25AF1D7EC(v32, v33, v34, v35, v36);
      sub_25AF1D7EC(v21, v20, v19, v18, v17);
      if (v17 > 0xFD)
      {
        sub_25AF231D0(v32, v33, v34, v35, v36);
        return v29 ^ v28 ^ 1u;
      }
    }

    sub_25AF231D0(v24, v23, v26, v25, v36);
    sub_25AF231D0(v21, v20, v19, v18, v17);
    return 0;
  }

  return result;
}

uint64_t sub_25AFC30E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v88 = MEMORY[0x277D84F90];
  v61 = v2;
  sub_25AF98AB0(0, v2, 0);
  v4 = 0;
  result = v88;
  v59 = (a1 + 64);
  v60 = a1 + 32;
  do
  {
    v5 = v4;
    v6 = v60 + 40 * v4;
    v62 = v5 + 1;
    v63 = result;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = *(v6 + 32);
    sub_25AF181DC(*v6, v7, v10, v9, *(v6 + 32));
    v12 = v11;
    v13 = 0;
    v70 = v11 & 0xC0;
    v14 = v59;
    v73 = v7;
    v64 = v8;
    v65 = v9;
    v66 = v10;
    for (i = v11; ; v12 = i)
    {
      v16 = *(v14 - 4);
      v15 = *(v14 - 3);
      v17 = *(v14 - 2);
      v18 = *(v14 - 1);
      v19 = *v14;
      v78[0] = v16;
      v78[1] = v15;
      v78[2] = v17;
      v78[3] = v18;
      v79 = v19;
      v80 = v8;
      v81 = v7;
      v82 = v10;
      v83 = v9;
      v84 = v12;
      v75 = v13;
      if (!(v19 >> 6))
      {
        v27 = v12;
        sub_25AF181DC(v8, v7, v10, v9, v12);
        result = sub_25AFC3978(v78);
        if (v27 <= 0x3F && v16 == v8)
        {
          goto LABEL_52;
        }

        goto LABEL_32;
      }

      if (v19 >> 6 == 1)
      {
        break;
      }

      if (v70 != 128)
      {
        goto LABEL_30;
      }

      if (v19)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_30;
        }

        if ((v16 != v8 || v15 != v7) && (sub_25B006174() & 1) == 0)
        {
          v31 = v8;
          v32 = v7;
          v33 = v10;
          v34 = v9;
          LOBYTE(v12) = i;
          goto LABEL_31;
        }

        if (v17 == v10 && v18 == v9)
        {
          sub_25AF181DC(v8, v7, v10, v9, i);
          sub_25AF181DC(v16, v15, v10, v9, v19);
          sub_25AFC3978(v78);
          goto LABEL_52;
        }

        v28 = sub_25B006174();
        v29 = v7;
        v30 = v28;
        sub_25AF181DC(v8, v29, v10, v9, i);
        sub_25AF181DC(v16, v15, v17, v18, v19);
        result = sub_25AFC3978(v78);
        if (v30)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v12)
        {
LABEL_30:
          v31 = v8;
          v32 = v7;
          v33 = v10;
          v34 = v9;
LABEL_31:
          sub_25AF181DC(v31, v32, v33, v34, v12);
          sub_25AF181DC(v16, v15, v17, v18, v19);
          result = sub_25AFC3978(v78);
          goto LABEL_32;
        }

        sub_25AF67FDC();
        sub_25AF181DC(v16, v15, v17, v18, v19);
        v9 = v65;
        sub_25AF181DC(v8, v7, v10, v65, i);
        sub_25AF181DC(v16, v15, v17, v18, v19);
        if (sub_25B005DE4())
        {
          v10 = v66;
          if (v15 == v7 && v17 == v66)
          {
            sub_25AF18128(v16, v7, v66, v18, v19);
            sub_25AFC3978(v78);
            v8 = v64;
            goto LABEL_52;
          }

          v39 = sub_25B006174();
          sub_25AF18128(v16, v15, v17, v18, v19);
          result = sub_25AFC3978(v78);
          v8 = v64;
          if (v39)
          {
            goto LABEL_52;
          }
        }

        else
        {
          sub_25AF18128(v16, v15, v17, v18, v19);
          result = sub_25AFC3978(v78);
          v8 = v64;
          v10 = v66;
        }
      }

LABEL_32:
      if (v61 - 1 == v75)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      v14 += 40;
      v13 = v75 + 1;
      v7 = v73;
    }

    if (v70 != 64)
    {
      goto LABEL_30;
    }

    v68 = v14;
    v20 = v15;
    v21 = v19;
    v22 = v12;
    sub_25AF67FDC();
    sub_25AF181DC(v16, v20, v17, v18, v21);
    sub_25AF181DC(v8, v7, v10, v9, v22);
    sub_25AF181DC(v16, v20, v17, v18, v21);
    v23 = v22;
    v24 = v21;
    v25 = v20;
    sub_25AF181DC(v8, v7, v10, v9, v23);
    sub_25AF181DC(v16, v20, v17, v18, v24);
    if ((sub_25B005DE4() & 1) == 0)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v20, v17, v18, v24);
      v9 = v65;
      v10 = v66;
      sub_25AF18128(v8, v73, v66, v65, i);
      result = sub_25AF18128(v16, v20, v17, v18, v24);
      v14 = v68;
      goto LABEL_32;
    }

    v14 = v68;
    if (v25 != v73)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v25, v17, v18, v24);
      v8 = v64;
      v9 = v65;
      v10 = v66;
      sub_25AF18128(v64, v73, v66, v65, i);
      v35 = v16;
      v36 = v25;
      goto LABEL_35;
    }

    v8 = v64;
    v9 = v65;
    v10 = v66;
    if (!v18)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v73, v17, 0, v24);
      if (!v65)
      {
        sub_25AF18128(v64, v73, v66, 0, i);
        v40 = v16;
        v41 = v73;
        v42 = v17;
        v43 = 0;
        goto LABEL_51;
      }

      sub_25AF18128(v64, v73, v66, v65, i);
      v35 = v16;
      v36 = v73;
      v37 = v17;
      v38 = 0;
      goto LABEL_44;
    }

    if (!v65)
    {
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v73, v17, v18, v24);
      sub_25AF18128(v64, v73, v66, 0, i);
      v35 = v16;
      v36 = v73;
LABEL_35:
      v37 = v17;
      v38 = v18;
LABEL_44:
      result = sub_25AF18128(v35, v36, v37, v38, v24);
      goto LABEL_32;
    }

    if (v17 != v66 || v18 != v65)
    {
      v26 = sub_25B006174();
      sub_25AFC3978(v78);
      sub_25AF18128(v16, v73, v17, v18, v24);
      sub_25AF18128(v64, v73, v66, v65, i);
      v8 = v64;
      result = sub_25AF18128(v16, v73, v17, v18, v24);
      if (v26)
      {
        goto LABEL_52;
      }

      goto LABEL_32;
    }

    sub_25AFC3978(v78);
    sub_25AF18128(v16, v73, v66, v65, v24);
    sub_25AF18128(v64, v73, v66, v65, i);
    v40 = v16;
    v41 = v73;
    v42 = v66;
    v43 = v65;
LABEL_51:
    sub_25AF18128(v40, v41, v42, v43, v24);
LABEL_52:
    v44 = v75;
    result = v63;
    if (v75 < 2)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = -2;
      v51 = v61;
      goto LABEL_56;
    }

    if (v75 - 2 >= v61)
    {
      goto LABEL_61;
    }

    v46 = *(v14 - 13);
    v71 = *(v14 - 14);
    v47 = *(v14 - 12);
    v48 = *(v14 - 11);
    v52 = *(v14 - 80);
    sub_25AF181DC(v71, v46, v47, v48, v52);
    v51 = v61;
    v50 = v52;
    v49 = v75 - 2;
    v45 = v71;
    v44 = v75;
    result = v63;
LABEL_56:
    v53 = v44 < 2;
    *v77 = *v87;
    *&v77[3] = *&v87[3];
    *v76 = *v85;
    *&v76[3] = *&v85[3];
    v55 = *(result + 16);
    v54 = *(result + 24);
    v86 = v44 < 2;
    v88 = result;
    if (v55 >= v54 >> 1)
    {
      v67 = v47;
      v69 = v46;
      v72 = v45;
      v57 = v49;
      v58 = v50;
      sub_25AF98AB0((v54 > 1), v55 + 1, 1);
      v50 = v58;
      v49 = v57;
      v47 = v67;
      v46 = v69;
      v45 = v72;
      v44 = v75;
      v51 = v61;
      result = v88;
    }

    *(result + 16) = v55 + 1;
    v56 = result + 112 * v55;
    *(v56 + 32) = v8;
    *(v56 + 40) = v73;
    *(v56 + 48) = v10;
    *(v56 + 56) = v9;
    *(v56 + 64) = i;
    *(v56 + 65) = *v77;
    *(v56 + 68) = *&v77[3];
    *(v56 + 72) = v44;
    *(v56 + 80) = v44 >> 1;
    *(v56 + 88) = v49;
    *(v56 + 96) = v53;
    *(v56 + 100) = *&v76[3];
    *(v56 + 97) = *v76;
    *(v56 + 104) = v45;
    *(v56 + 112) = v46;
    *(v56 + 120) = v47;
    *(v56 + 128) = v48;
    *(v56 + 136) = v50;
    *(v56 + 137) = (v44 & 1) == 0;
    v4 = v62;
  }

  while (v62 != v51);
  return result;
}

uint64_t sub_25AFC3978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AFC3A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 106))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25AFC3A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25AFC3AD4()
{
  result = qword_27FA262B0;
  if (!qword_27FA262B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262B0);
  }

  return result;
}

__n128 sub_25AFC3B2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  result = *(a1 + 64);
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_25AFC3B48@<X0>(_BYTE *a1@<X8>)
{
  sub_25AF63C5C();
  result = sub_25B004B24();
  *a1 = v3;
  return result;
}

uint64_t sub_25AFC3BB8()
{
  sub_25AFCD0E8();

  return sub_25B004B24();
}

uint64_t sub_25AFC3C00@<X0>(_BYTE *a1@<X8>)
{
  sub_25AFCD0E8();
  result = sub_25B004B24();
  *a1 = v3;
  return result;
}

id sub_25AFC3CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel);
  sub_25B004234();

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_25AF6B1F0(v4);
}

void *sub_25AFC3D74(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  sub_25AF6B1F0(v5[0]);
  return sub_25AF6AC5C(v5);
}

uint64_t SelectAvailableControlView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262B8);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262C0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = v1[5];
  v35 = v1[4];
  v36 = v12;
  v37 = v1[6];
  v38 = *(v1 + 14);
  v13 = v1[1];
  v31 = *v1;
  v32 = v13;
  v14 = v1[3];
  v33 = v1[2];
  v34 = v14;
  if (v31 == 1)
  {
    v22 = *(v1 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26360);
    v15 = sub_25B0054B4();
    v20[4] = v20;
    MEMORY[0x28223BE20](v15);
    v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368);
    sub_25AF0F274(&qword_27FA26370, &qword_27FA26368);
    v20[2] = v5;
    sub_25AF0F274(&qword_27FA26378, &qword_27FA26368);
    v20[3] = a1;
    sub_25AF0F274(&qword_27FA26380, &qword_27FA26368);
    sub_25AFC4CEC();
    sub_25AFC51C0();
    sub_25B004874();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_25AF0F274(&qword_27FA262D0, &qword_27FA262C8);
    sub_25B004C74();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v17 = v1[5];
    v27 = v1[4];
    v28 = v17;
    v29 = v1[6];
    v30 = *(v1 + 14);
    v18 = v1[1];
    v23 = *v1;
    v24 = v18;
    v19 = v1[3];
    v25 = v1[2];
    v26 = v19;
    sub_25AFC4318(v4);
    sub_25AF25FC4(v4, v7, &qword_27FA262B8);
    swift_storeEnumTagMultiPayload();
    sub_25AF0F274(&qword_27FA262D0, &qword_27FA262C8);
    sub_25AFC4CEC();
    sub_25B004C74();
    return sub_25AF2602C(v4, &qword_27FA262B8);
  }
}

uint64_t sub_25AFC4238@<X0>(uint64_t a1@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AFC4318(a1);
}

uint64_t sub_25AFC4318@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  *&v55 = type metadata accessor for AvailableControlsGrid(0) - 8;
  MEMORY[0x28223BE20](v55);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26328) - 8;
  MEMORY[0x28223BE20](v57);
  v56 = &v51 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26318) - 8;
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26308) - 8;
  MEMORY[0x28223BE20](v65);
  v63 = &v51 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262F8) - 8;
  MEMORY[0x28223BE20](v64);
  v60 = &v51 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262E8) - 8;
  MEMORY[0x28223BE20](v62);
  v59 = &v51 - v8;
  v9 = v1[5];
  v83 = v1[4];
  *v84 = v9;
  *&v84[16] = v1[6];
  *&v84[32] = *(v1 + 14);
  v10 = v1[1];
  v79 = *v1;
  v80 = v10;
  v11 = v1[3];
  v81 = v1[2];
  v82 = v11;
  v67 = v79;
  v12 = *(v1 + 24);
  v75 = *(v1 + 8);
  v76 = v12;
  v77 = *(v1 + 40);
  v78 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26528);
  sub_25B005534();
  v13 = v69[0];
  v14 = v71;
  v75 = v83;
  LOBYTE(v76) = v84[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26548);
  v54 = v69[1];
  v51 = v70;
  sub_25B005534();
  v15 = v73;
  v16 = v74;
  v73 = *&v84[8];
  v75 = *&v84[8];
  *&v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26550);
  sub_25B005494();
  v17 = v67;
  v18 = v72;
  v19 = v67 < 2;
  *v3 = v67;
  v3[1] = v19;
  v3[2] = v19;
  *(v3 + 8) = v13;
  *(v3 + 40) = v51;
  *(v3 + 24) = v54;
  v3[56] = v14;
  *(v3 + 4) = v15;
  v3[80] = v16;
  *(v3 + 11) = v18;
  v20 = v55;
  v21 = *(v55 + 48);
  v53 = v19;
  LODWORD(v54) = v17 == 2;
  *&v3[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280);
  swift_storeEnumTagMultiPayload();
  v22 = &v3[*(v20 + 52)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = swift_allocObject();
  v24 = *v84;
  *(v23 + 80) = v83;
  *(v23 + 96) = v24;
  *(v23 + 112) = *&v84[16];
  *(v23 + 128) = *&v84[32];
  v25 = v80;
  *(v23 + 16) = v79;
  *(v23 + 32) = v25;
  v26 = v82;
  *(v23 + 48) = v81;
  *(v23 + 64) = v26;
  v27 = v56;
  sub_25AFCEB40(v3, v56, type metadata accessor for AvailableControlsGrid);
  v28 = (v27 + *(v57 + 44));
  *v28 = sub_25AFCE4D4;
  v28[1] = v23;
  v28[2] = 0;
  v28[3] = 0;
  v75 = *&v84[24];
  sub_25AFCE4DC(&v79, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26360);
  sub_25B0054B4();
  v57 = *&v69[0];
  v55 = *(v69 + 8);
  v69[0] = v73;
  sub_25B005494();
  v29 = v75;
  KeyPath = swift_getKeyPath();
  LOBYTE(v72) = 0;
  v31 = swift_getKeyPath();
  v68 = 0;
  v75 = 0u;
  v76 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428);
  sub_25B005484();
  v32 = v70;
  v51 = v69[1];
  v52 = v69[0];
  v33 = v72;
  v34 = v68;
  v35 = v58;
  sub_25AF25B0C(v27, v58, &qword_27FA26328);
  v36 = v35 + *(v61 + 44);
  LOBYTE(v27) = v67;
  *v36 = v67;
  *(v36 + 8) = v57;
  *(v36 + 16) = v55;
  *(v36 + 32) = 1;
  *(v36 + 40) = v29;
  *(v36 + 48) = v53;
  *(v36 + 56) = KeyPath;
  *(v36 + 64) = v33;
  *(v36 + 72) = v31;
  *(v36 + 80) = v34;
  v37 = v52;
  *(v36 + 104) = v51;
  *(v36 + 88) = v37;
  *(v36 + 120) = v32;
  *&v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26558);
  sub_25B005484();
  v38 = v69[0];
  v39 = v63;
  sub_25AF25B0C(v35, v63, &qword_27FA26318);
  v40 = v39 + *(v65 + 44);
  *v40 = v54;
  *(v40 + 8) = v38;
  v41 = v60;
  sub_25AF25B0C(v39, v60, &qword_27FA26308);
  *(v41 + *(v64 + 44)) = 0;
  v42 = swift_getKeyPath();
  v43 = v41;
  v44 = v59;
  sub_25AF25B0C(v43, v59, &qword_27FA262F8);
  v45 = v44 + *(v62 + 44);
  *v45 = v42;
  *(v45 + 8) = 1;
  v46 = swift_getKeyPath();
  v47 = v44;
  v48 = v66;
  sub_25AF25B0C(v47, v66, &qword_27FA262E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA262B8);
  v50 = v48 + *(result + 36);
  *v50 = v46;
  *(v50 + 8) = v27;
  return result;
}

uint64_t sub_25AFC49CC()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26550);
  sub_25B005494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26528);
  sub_25B005534();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v8 = v6;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004224();
  sub_25AF2602C(v7, &qword_27FA26528);

  sub_25B005494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26548);
  sub_25B005534();
  v1 = swift_getKeyPath();
  MEMORY[0x28223BE20](v1);
  sub_25B004224();
}

unint64_t sub_25AFC4CEC()
{
  result = qword_27FA262D8;
  if (!qword_27FA262D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA262B8);
    sub_25AFC4DA4();
    sub_25AF0F274(&qword_27FA26350, &qword_27FA26358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262D8);
  }

  return result;
}

unint64_t sub_25AFC4DA4()
{
  result = qword_27FA262E0;
  if (!qword_27FA262E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA262E8);
    sub_25AFC4E5C();
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262E0);
  }

  return result;
}

unint64_t sub_25AFC4E5C()
{
  result = qword_27FA262F0;
  if (!qword_27FA262F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA262F8);
    sub_25AFC4EE8();
    sub_25AFC5164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA262F0);
  }

  return result;
}

unint64_t sub_25AFC4EE8()
{
  result = qword_27FA26300;
  if (!qword_27FA26300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26308);
    sub_25AFC4F74();
    sub_25AFC5110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26300);
  }

  return result;
}

unint64_t sub_25AFC4F74()
{
  result = qword_27FA26310;
  if (!qword_27FA26310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26318);
    sub_25AFC5000();
    sub_25AFC50BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26310);
  }

  return result;
}

unint64_t sub_25AFC5000()
{
  result = qword_27FA26320;
  if (!qword_27FA26320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26328);
    sub_25AFCC394(&qword_27FA26330, type metadata accessor for AvailableControlsGrid);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26320);
  }

  return result;
}

unint64_t sub_25AFC50BC()
{
  result = qword_27FA26338;
  if (!qword_27FA26338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26338);
  }

  return result;
}

unint64_t sub_25AFC5110()
{
  result = qword_27FA26340;
  if (!qword_27FA26340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26340);
  }

  return result;
}

unint64_t sub_25AFC5164()
{
  result = qword_27FA26348;
  if (!qword_27FA26348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26348);
  }

  return result;
}

unint64_t sub_25AFC51C0()
{
  result = qword_27FA26388;
  if (!qword_27FA26388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26388);
  }

  return result;
}

uint64_t SelectAvailableControlView.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

uint64_t SelectAvailableControlView.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectControlModel(0);
  swift_allocObject();
  sub_25AFC8320();
  sub_25B005484();
  *(a1 + 88) = v3;
  *(a1 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368);
  sub_25B005484();
  *(a1 + 104) = v3;
  *(a1 + 112) = v4;
  *a1 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78);
  sub_25B005544();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  result = sub_25B005544();
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  return result;
}

uint64_t SelectAvailableControlView.init(mode:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SelectControlModel(0);
  swift_allocObject();
  sub_25AFC8320();
  sub_25B005484();
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368);
  sub_25B005484();
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *a2 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78);
  sub_25B005544();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  result = sub_25B005544();
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

uint64_t sub_25AFC5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25AFCF42C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

char *sub_25AFC5564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F0);
  sub_25B005494();
  v0 = v21;
  if (v21 == 1 || (v1 = , sub_25AFCEFF0(v1), !v21))
  {

    v0 = MEMORY[0x277D84F90];
  }

  sub_25B005494();
  if (v21 == 1 || (, sub_25AFCEFF0(v21), (v2 = v22) == 0))
  {

    v2 = MEMORY[0x277D84F90];
  }

  v23 = v0;
  sub_25AF36720(v2);
  result = v0;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v0 + 64;
    v7 = MEMORY[0x277D84F90];
    v20 = *(v0 + 16);
    v18 = v4 - 1;
    v19 = v0 + 64;
    do
    {
      v8 = (v6 + 40 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(result + 2))
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 - 4);
        v10 = *(v8 - 3);
        v13 = *(v8 - 2);
        v12 = *(v8 - 1);
        v14 = *v8;
        sub_25B005B34();
        sub_25AF181DC(v11, v10, v13, v12, v14);
        sub_25B005B24();
        sub_25B005AE4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v14 & 0xC0) == 0x40)
        {
          break;
        }

        ++v9;
        sub_25AF18128(v11, v10, v13, v12, v14);
        v8 += 40;
        result = v23;
        if (v20 == v9)
        {
          goto LABEL_23;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25AFCD46C(0, *(v7 + 2) + 1, 1, v7);
      }

      result = v23;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_25AFCD46C((v15 > 1), v16 + 1, 1, v7);
        result = v23;
      }

      v5 = v9 + 1;
      *(v7 + 2) = v16 + 1;
      v17 = &v7[32 * v16];
      *(v17 + 4) = v11;
      *(v17 + 5) = v10;
      *(v17 + 6) = v13;
      *(v17 + 7) = v12;
      v6 = v19;
    }

    while (v18 != v9);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_23:

  return v7;
}

uint64_t sub_25AFC5820@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for SelectAvailableControlView.AppControlsView(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26598);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265A0);
  MEMORY[0x28223BE20](v27);
  v9 = &v25 - v8;
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265A8);
  sub_25AF0F274(&qword_27FA265B0, &qword_27FA265A8);
  sub_25B005044();
  v10 = *(v1 + 24);
  v11 = v1;
  v30 = *(v1 + 16);
  v31 = v10;
  sub_25AF0F274(&qword_27FA265B8, &qword_27FA26598);
  sub_25AF2ECCC();
  sub_25B0051E4();
  (*(v5 + 8))(v7, v4);
  sub_25AFCF0B4(v1, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAvailableControlView.AppControlsView);
  v12 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v13 = swift_allocObject();
  sub_25AFCEB40(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SelectAvailableControlView.AppControlsView);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265C0) + 36);
  v25 = v9;
  v15 = &v9[v14];
  *v15 = sub_25AFCEBA8;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  sub_25AFCF0B4(v11, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAvailableControlView.AppControlsView);
  v16 = swift_allocObject();
  sub_25AFCEB40(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v12, type metadata accessor for SelectAvailableControlView.AppControlsView);
  v17 = &v9[*(v27 + 36)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = sub_25AFCED48;
  *(v17 + 3) = v16;
  v30 = sub_25AFC5564();
  sub_25AFCF0B4(v11, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SelectAvailableControlView.AppControlsView);
  v18 = swift_allocObject();
  sub_25AFCEB40(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v12, type metadata accessor for SelectAvailableControlView.AppControlsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265C8);
  sub_25AFCEDEC();
  sub_25AFCEF88(&qword_27FA265E0, &qword_27FA265C8);
  v19 = v28;
  v20 = v25;
  sub_25B005374();

  sub_25AF2602C(v20, &qword_27FA265A0);
  v21 = sub_25AFC5564();
  v22 = sub_25AF9B3D0(v21);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265E8);
  v24 = v19 + *(result + 36);
  *v24 = 0;
  *(v24 + 8) = v22;
  *(v24 + 16) = 1;
  return result;
}

uint64_t sub_25AFC5CF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F8);
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26600);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = v42 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26608);
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26610);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  v16 = type metadata accessor for ButtonAndLabel.ParentState(0);
  MEMORY[0x28223BE20](v16);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B005B34();
  v45 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SelectAvailableControlView.AppControlsView(0);
  sub_25AF3D79C(&v18[*(v16 + 20)]);
  *v18 = 0;
  v20 = a1[15];
  v19 = a1[16];
  v21 = a1[17];
  v52 = v20;
  v53 = v19;
  v54 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F0);
  sub_25B005494();
  v22 = v55;
  if (v55 == 1)
  {
    goto LABEL_8;
  }

  v24 = sub_25AFCEFF0(v23);
  if (!v22)
  {
    goto LABEL_8;
  }

  if (!*(v22 + 16))
  {

LABEL_8:
    v28 = 1;
    v27 = v44;
    goto LABEL_9;
  }

  v42[2] = v42;
  MEMORY[0x28223BE20](v24);
  v42[-2] = v22;
  v42[-1] = v18;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26620);
  sub_25AF0F274(&qword_27FA26628, &qword_27FA26620);
  sub_25B0055C4();

  v25 = v10;
  v26 = v44;
  (*(v8 + 32))(v15, v25, v44);
  v27 = v26;
  v28 = 0;
LABEL_9:
  v29 = 1;
  (*(v8 + 56))(v15, v28, 1, v27);
  v52 = v20;
  v53 = v19;
  v54 = v21;
  sub_25B005494();
  v30 = v55;
  v31 = v47;
  v32 = v48;
  if (v55 != 1)
  {
    v33 = v56;

    sub_25AFCEFF0(v30);
    if (v33)
    {
      if (*(v33 + 16))
      {
        v34 = sub_25AFC30E4(v33);

        MEMORY[0x28223BE20](v35);
        v42[-2] = v34;
        v42[-1] = v18;
        sub_25AFC6AE0(&v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26620);
        sub_25AF0F274(&qword_27FA26628, &qword_27FA26620);
        v36 = v43;
        sub_25B0055B4();

        (*(v51 + 32))(v32, v36, v31);
        v29 = 0;
      }

      else
      {
      }
    }
  }

  (*(v51 + 56))(v32, v29, 1, v31);
  v37 = v46;
  sub_25AF25FC4(v15, v46, &qword_27FA26610);
  v38 = v49;
  sub_25AF25FC4(v32, v49, &qword_27FA26600);
  v39 = v50;
  sub_25AF25FC4(v37, v50, &qword_27FA26610);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26618);
  sub_25AF25FC4(v38, v39 + *(v40 + 48), &qword_27FA26600);
  sub_25AF2602C(v32, &qword_27FA26600);
  sub_25AF2602C(v15, &qword_27FA26610);
  sub_25AF2602C(v38, &qword_27FA26600);
  sub_25AF2602C(v37, &qword_27FA26610);
  sub_25AF3D7C4(v18);
}

uint64_t sub_25AFC63B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = sub_25AFC30E4(a1);
  sub_25AFCF0B4(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAndLabel.ParentState);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AFCEB40(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ButtonAndLabel.ParentState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450);
  sub_25AF0F274(&qword_27FA24CE0, &qword_27FA24428);
  sub_25AF0F274(&qword_27FA24458, &qword_27FA24450);
  sub_25AF5A2DC();
  return sub_25B005584();
}

uint64_t sub_25AFC65C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v14 = a3;
  v15 = a4;
  v8 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AFCF0B4(a2, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAndLabel.ParentState);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_25AFCEB40(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ButtonAndLabel.ParentState);

  *a5 = v15;
  a5[1] = v12;
  return result;
}

uint64_t sub_25AFC675C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  sub_25AFCF0B4(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonAndLabel.ParentState);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AFCEB40(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ButtonAndLabel.ParentState);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450);
  sub_25AF0F274(&qword_27FA24CE0, &qword_27FA24428);
  sub_25AF0F274(&qword_27FA24458, &qword_27FA24450);
  sub_25AF5A2DC();
  return sub_25B005584();
}

uint64_t sub_25AFC6964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v17 = *(a1 + 72);
  v18 = *(a1 + 48);
  v15 = *(a1 + 88);
  v16 = *(a1 + 80);
  v14 = *(a1 + 96);
  v9 = *(a1 + 104);
  v13 = *(a1 + 105);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for ButtonAndLabel(0);
  sub_25AFCF0B4(a2, a3 + *(v10 + 36), type metadata accessor for ButtonAndLabel.ParentState);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  sub_25AF181DC(v4, v5, v7, v6, v8);
  sub_25AF1D7EC(v17, v16, v15, v14, v9);

  *(a3 + 40) = v17;
  *(a3 + 48) = v16;
  *(a3 + 56) = v15;
  *(a3 + 64) = v14;
  *(a3 + 72) = v9;
  *(a3 + 73) = v13;
  *(a3 + 80) = v18;
  *(a3 + 88) = 1;
  *(a3 + *(v10 + 40)) = 1;
  return result;
}

uint64_t sub_25AFC6AE0@<X0>(uint64_t a1@<X8>)
{
  v20[0] = a1;
  v1 = sub_25B004204();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25B005904();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25B0040A4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25B004094();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - v9);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = type metadata accessor for GlanceModel();
  (*(v5 + 104))(v10, *MEMORY[0x277CC9120], v4);
  sub_25B0058F4();
  (*(v5 + 16))(v7, v10, v4);
  sub_25B0041F4();
  sub_25B0040B4();
  v11 = sub_25B0050A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v5 + 8))(v10, v4);

  v19 = v20[0];
  *v20[0] = v11;
  *(v19 + 8) = v13;
  *(v19 + 16) = v15 & 1;
  *(v19 + 24) = v17;
  return result;
}

uint64_t sub_25AFC6DF8(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v3 = qword_27FA30B10;
    v4 = sub_25AFC5564();
    v5 = sub_25AF9B3D0(v4);

    sub_25AF72400(2, 2u, v5, 1);

    v8 = *(a1 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408);
    sub_25B0054A4();
    v6 = *(a1 + 128);
    v7 = *(a1 + 136);
    *&v8 = *(a1 + 120);
    *(&v8 + 1) = v6;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA265F0);
    sub_25B005494();
    sub_25AFCEFF0(2);
  }

  else
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_25AFC7504(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v2 = qword_27FA30B10;
    v23 = a1;
    v3 = sub_25AFC5564();
    v4 = sub_25AF9B3D0(v3);

    v5 = v4 + 56;
    v6 = 1 << *(v4 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v4 + 56);
    v9 = (v6 + 63) >> 6;
    v25 = v4;

    v10 = 0;
    v24 = v2;
    while (v8)
    {
LABEL_13:
      v12 = *(v25 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v8))));
      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      swift_beginAccess();

      v17 = v14;
      v18 = v13;
      v19 = sub_25AF7E350(v26, v18, v17, v16, v15);
      if (*v20)
      {
        sub_25AF99800(2u);
      }

      (v19)(v26, 0);
      swift_endAccess();
      v2 = v24;
      swift_beginAccess();
      v21 = sub_25AF7E350(v26, v18, v17, v16, v15);
      if (*v22)
      {
        sub_25AF99800(2u);
      }

      (v21)(v26, 0);
      swift_endAccess();
      v8 &= v8 - 1;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        sub_25AF7E44C(1);

        v26[0] = *(v23 + 144);
        v27 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408);
        sub_25B0054A4();

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25AFC77F4()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408);
  result = sub_25B005494();
  if (qword_27FA30B10)
  {
    v1 = qword_27FA30B10;
    v2 = sub_25AFC5564();
    v3 = sub_25AF9B3D0(v2);

    sub_25AF72400(v4, 2u, v3, 1);

    sub_25B0054A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25AFC793C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v10 = v1;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v3 = *(v1 + 24);
  v4 = *(v10 + 32);
  v5 = *(v10 + 40);
  v6 = *(v10 + 48);
  v7 = *(v10 + 56);
  *a1 = *(v10 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v10 + 64);
  *(a1 + 48) = v8;

  return sub_25AF1D7EC(v4, v5, v6, v7, v8);
}

id sub_25AFC7A30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  LOBYTE(v3) = *(v3 + 64);
  *(a2 + 48) = v3;

  return sub_25AF1D7EC(v5, v6, v7, v8, v3);
}

uint64_t sub_25AFC7B24()
{
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004224();
}

void *sub_25AFC7C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 32);
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 48);
  sub_25AF25FC4(a2, v9, &qword_27FA26528);

  return sub_25AF231D0(v2, v3, v4, v5, v7);
}

uint64_t sub_25AFC7CBC()
{
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_25AFC7D7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  *a2 = *(v3 + 72);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_25AFC7E38()
{
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004224();
}

uint64_t sub_25AFC7F18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 88) = a4 & 1;
}

uint64_t sub_25AFC7F78()
{
  swift_getKeyPath();
  v3 = v0;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v1 = *(v0 + 96);
  sub_25AFCCC70(v1, *(v3 + 104));
  return v1;
}

uint64_t sub_25AFC8040@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v4 = v3[12];
  v5 = v3[13];
  v6 = v3[14];
  v7 = v3[15];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_25AFCCC70(v4, v5);
}

uint64_t sub_25AFC80F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_25AFCCC70(*a1, v2);
  return sub_25AFC8154(v1, v2, v3, v4);
}

uint64_t sub_25AFC8154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[12];
  v10 = v4[13];
  v11 = v4[14];
  v12 = v4[15];
  sub_25AFCCC70(v9, v10);
  v13 = sub_25AFCDF58(v9, v10, v11, v12, a1, a2, a3, a4);
  sub_25AFCCCB4(v9, v10);
  if (v13)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
    sub_25B004224();
    sub_25AFCCCB4(a1, a2);
  }

  else
  {
    v16 = v4[12];
    v17 = v4[13];
    v4[12] = a1;
    v4[13] = a2;
    v4[14] = a3;
    v4[15] = a4;

    return sub_25AFCCCB4(v16, v17);
  }
}

uint64_t sub_25AFC8320()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D78);
  sub_25B005544();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  sub_25B005544();
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_25B004264();
  return v0;
}

unint64_t sub_25AFC83F0()
{
  result = qword_27FA26390;
  if (!qword_27FA26390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26390);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25AFC8470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AFC84B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFC8534()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  sub_25AF231D0(v1, v2, v3, v4, v5);

  sub_25AFCCCB4(*(v0 + 96), *(v0 + 104));
  v6 = OBJC_IVAR____TtC17NanoControlCenter18SelectControlModel___observationRegistrar;
  v7 = sub_25B004274();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_25AFC8640()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25AFC86F4()
{
  result = qword_27FA263B0;
  if (!qword_27FA263B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263B8);
    sub_25AF0F274(&qword_27FA262D0, &qword_27FA262C8);
    sub_25AFC4CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA263B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17NanoControlCenter06GlanceB2IDVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_25AFC8804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AFC884C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AFC88BC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_25B006294();
  if (v3)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v1);
    if (!v2)
    {
      sub_25B0062B4();
      return sub_25B0062D4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005994();
  }

  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AFC8984()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (*(v0 + 32))
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v1);
    if (!v2)
    {
      return sub_25B0062B4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005994();
  }

  return sub_25B005994();
}

uint64_t sub_25AFC8A54()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_25B006294();
  if (v3)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v1);
    if (!v2)
    {
      sub_25B0062B4();
      return sub_25B0062D4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005994();
  }

  sub_25B005994();
  return sub_25B0062D4();
}

unint64_t sub_25AFC8B20()
{
  result = qword_27FA263C0;
  if (!qword_27FA263C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA263C0);
  }

  return result;
}

void sub_25AFC8B90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263C8);
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x28223BE20](v4);
  v143 = &v125 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263D0);
  MEMORY[0x28223BE20](v6);
  v129 = &v125 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v125 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263E0);
  MEMORY[0x28223BE20](v140);
  v135 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263E8);
  MEMORY[0x28223BE20](v12);
  v136 = &v125 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263F0);
  v137 = *(v14 - 8);
  v138 = v14;
  MEMORY[0x28223BE20](v14);
  v148 = &v125 - v15;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA263F8);
  v139 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v147 = &v125 - v16;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26400);
  v134 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v146 = &v125 - v17;
  v18 = v2[5];
  v165 = v2[4];
  *v166 = v18;
  v19 = v2[7];
  *&v166[16] = v2[6];
  *&v166[32] = v19;
  v20 = v2[1];
  v161 = *v2;
  v162 = v20;
  v21 = v2[3];
  v163 = v2[2];
  v164 = v21;
  v22 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v23 = (qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBlock);
    swift_beginAccess();
    v24 = *v23;
    if (*v23)
    {
      v25 = v23[1];
      v142 = *v23;
      v143 = v25;
      v26 = *(v22 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView);
      swift_getKeyPath();
      v131 = v6;
      *&v157 = v26;
      sub_25AF2EBC4(v24);
      sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel);
      v133 = v8;

      sub_25B004234();

      v27 = v26[2];
      v28 = v26[3];
      v132 = a2;
      v29 = v26[4];
      v30 = v26[5];
      sub_25AF6B1F0(v27);

      v153 = v27;
      v154 = v28;
      *&v155 = v29;
      *(&v155 + 1) = v30;
      v31 = swift_allocObject();
      v32 = *v166;
      v31[5] = v165;
      v31[6] = v32;
      v33 = *&v166[32];
      v31[7] = *&v166[16];
      v31[8] = v33;
      v34 = v162;
      v31[1] = v161;
      v31[2] = v34;
      v35 = v164;
      v31[3] = v163;
      v31[4] = v35;
      sub_25AFCCC28(&v161, &v157);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26408);
      v130 = v10;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428);
      v37 = sub_25AF0F274(&qword_27FA26430, &qword_27FA26408);
      v126 = sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428);
      v128 = v37;
      v129 = v36;
      sub_25B005374();

      sub_25AF1979C(v153);
      v38 = *(&v163 + 1);
      swift_getKeyPath();
      *&v157 = v38;
      sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
      sub_25B004234();

      v39 = v38[12];
      v40 = v38[13];
      v144 = v12;
      v41 = v38[14];
      v42 = v38[15];
      v153 = v39;
      v154 = v40;
      *&v155 = v41;
      *(&v155 + 1) = v42;
      v43 = swift_allocObject();
      v44 = *v166;
      *(v43 + 80) = v165;
      *(v43 + 96) = v44;
      v45 = *&v166[32];
      *(v43 + 112) = *&v166[16];
      *(v43 + 128) = v45;
      v46 = v162;
      *(v43 + 16) = v161;
      *(v43 + 32) = v46;
      v47 = v164;
      *(v43 + 48) = v163;
      *(v43 + 64) = v47;
      v48 = v142;
      v49 = v143;
      *(v43 + 144) = v142;
      *(v43 + 152) = v49;
      sub_25AF2EBC4(v48);
      sub_25AFCCC28(&v161, &v157);
      sub_25AFCCC70(v39, v40);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26420);
      *&v157 = v36;
      *(&v157 + 1) = v127;
      *&v158 = v37;
      *(&v158 + 1) = v126;
      v127 = MEMORY[0x277CE0E40];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v51 = sub_25AFCC11C();
      v52 = v138;
      v53 = v148;
      sub_25B005374();

      sub_25AFCCCB4(v39, v40);
      (*(v137 + 8))(v53, v52);
      v157 = *&v166[8];
      v158 = *&v166[24];
      v159 = *&v166[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26500);
      sub_25B0054B4();
      v149 = v153;
      v150 = v154;
      v151 = v155;
      v152 = v156;
      v54 = swift_allocObject();
      v55 = *v166;
      v54[5] = v165;
      v54[6] = v55;
      v56 = *&v166[32];
      v54[7] = *&v166[16];
      v54[8] = v56;
      v57 = v162;
      v54[1] = v161;
      v54[2] = v57;
      v58 = v164;
      v54[3] = v163;
      v54[4] = v58;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_25AFCF62C;
      *(v59 + 24) = v54;
      sub_25AFCCC28(&v161, &v157);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418);
      *&v157 = v52;
      *(&v157 + 1) = v125;
      *&v158 = OpaqueTypeConformance2;
      *(&v158 + 1) = v51;
      v148 = swift_getOpaqueTypeConformance2();
      v122 = sub_25AFCC1A0();
      v123 = sub_25AFCC1F4();
      v60 = v145;
      v61 = v147;
      sub_25B005334();

      v62 = v151;

      sub_25AF1979C(v62);
      (*(v139 + 8))(v61, v60);
      v63 = v134;
      v64 = v146;
      v65 = v141;
      (*(v134 + 16))(v135, v146, v141);
      swift_storeEnumTagMultiPayload();
      *&v157 = v60;
      *(&v157 + 1) = &type metadata for GlanceControlID;
      *&v158 = v137;
      *(&v158 + 1) = v148;
      v159 = v122;
      v160 = v123;
      swift_getOpaqueTypeConformance2();
      sub_25AFCC3DC();
      v66 = v136;
      sub_25B004C74();
      sub_25AF25FC4(v66, v130, &qword_27FA263E8);
      swift_storeEnumTagMultiPayload();
      sub_25AFCBEF0();
      sub_25B004C74();
      sub_25AF1895C(v142);
      sub_25AF2602C(v66, &qword_27FA263E8);
      (*(v63 + 8))(v64, v65);
    }

    else if (v161 == 1)
    {
      v67 = *(v22 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView);
      swift_getKeyPath();
      v131 = v6;
      *&v157 = v67;
      sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel);
      v133 = v8;

      sub_25B004234();

      v68 = v67[2];
      v69 = v67[3];
      v132 = a2;
      v70 = v67[4];
      v71 = v67[5];
      sub_25AF6B1F0(v68);

      v153 = v68;
      v154 = v69;
      *&v155 = v70;
      *(&v155 + 1) = v71;
      v72 = swift_allocObject();
      v73 = *v166;
      v72[5] = v165;
      v72[6] = v73;
      v74 = *&v166[32];
      v72[7] = *&v166[16];
      v72[8] = v74;
      v75 = v162;
      v72[1] = v161;
      v72[2] = v75;
      v76 = v164;
      v72[3] = v163;
      v72[4] = v76;
      sub_25AFCCC28(&v161, &v157);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26408);
      v130 = v10;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428);
      v78 = sub_25AF0F274(&qword_27FA26430, &qword_27FA26408);
      v126 = sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428);
      v146 = v77;
      v142 = v78;
      sub_25B005374();

      sub_25AF1979C(v153);
      v144 = v12;
      v79 = *(&v163 + 1);
      swift_getKeyPath();
      *&v157 = v79;
      sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
      sub_25B004234();

      v81 = v79[13];
      v82 = v79[14];
      v83 = v79[15];
      v153 = v79[12];
      v80 = v153;
      v154 = v81;
      *&v155 = v82;
      *(&v155 + 1) = v83;
      v84 = swift_allocObject();
      v85 = *v166;
      v84[5] = v165;
      v84[6] = v85;
      v86 = *&v166[32];
      v84[7] = *&v166[16];
      v84[8] = v86;
      v87 = v162;
      v84[1] = v161;
      v84[2] = v87;
      v88 = v164;
      v84[3] = v163;
      v84[4] = v88;
      sub_25AFCCC28(&v161, &v157);
      sub_25AFCCC70(v80, v81);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26420);
      *&v157 = v77;
      *(&v157 + 1) = v134;
      *&v158 = v78;
      *(&v158 + 1) = v126;
      v134 = MEMORY[0x277CE0E40];
      v89 = swift_getOpaqueTypeConformance2();
      v126 = sub_25AFCC11C();
      v90 = v147;
      v91 = v138;
      v92 = v148;
      sub_25B005374();

      sub_25AFCCCB4(v80, v81);
      (*(v137 + 8))(v92, v91);
      v93 = swift_allocObject();
      v94 = *v166;
      v93[5] = v165;
      v93[6] = v94;
      v95 = *&v166[32];
      v93[7] = *&v166[16];
      v93[8] = v95;
      v96 = v162;
      v93[1] = v161;
      v93[2] = v96;
      v97 = v164;
      v93[3] = v163;
      v93[4] = v97;
      sub_25AFCCC28(&v161, &v157);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26478);
      *&v157 = v91;
      *(&v157 + 1) = v125;
      *&v158 = v89;
      *(&v158 + 1) = v126;
      v99 = swift_getOpaqueTypeConformance2();
      v100 = sub_25AFC51C0();
      v101 = sub_25AFCC6B4();
      v102 = v145;
      v103 = v99;
      v148 = v99;
      sub_25B0052F4();

      (*(v139 + 8))(v90, v102);
      v157 = *&v166[8];
      v158 = *&v166[24];
      v159 = *&v166[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26500);
      sub_25B0054B4();
      v149 = v153;
      v150 = v154;
      v151 = v155;
      v152 = v156;
      v104 = swift_allocObject();
      v105 = *v166;
      v104[5] = v165;
      v104[6] = v105;
      v106 = *&v166[32];
      v104[7] = *&v166[16];
      v104[8] = v106;
      v107 = v162;
      v104[1] = v161;
      v104[2] = v107;
      v108 = v164;
      v104[3] = v163;
      v104[4] = v108;
      v109 = swift_allocObject();
      *(v109 + 16) = sub_25AFCCD00;
      *(v109 + 24) = v104;
      sub_25AFCCC28(&v161, &v157);
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418);
      *&v157 = v102;
      *(&v157 + 1) = &type metadata for SelectControlViewNavigationEffect.PathComponent;
      *&v158 = v98;
      *(&v158 + 1) = v103;
      v159 = v100;
      v160 = v101;
      swift_getOpaqueTypeConformance2();
      v147 = sub_25AFCC1A0();
      v124 = sub_25AFCC1F4();
      v110 = v128;
      v111 = v129;
      v112 = v143;
      sub_25B005334();

      v113 = v151;

      sub_25AF1979C(v113);
      (*(v127 + 8))(v112, v110);
      v114 = swift_allocObject();
      v115 = *v166;
      v114[5] = v165;
      v114[6] = v115;
      v116 = *&v166[32];
      v114[7] = *&v166[16];
      v114[8] = v116;
      v117 = v162;
      v114[1] = v161;
      v114[2] = v117;
      v118 = v164;
      v114[3] = v163;
      v114[4] = v118;
      v119 = (v111 + *(v131 + 36));
      sub_25B004754();
      sub_25AFCCC28(&v161, &v157);
      sub_25B005B44();
      *v119 = &unk_25B012C88;
      v119[1] = v114;
      sub_25AF25FC4(v111, v135, &qword_27FA263D0);
      swift_storeEnumTagMultiPayload();
      *&v157 = v145;
      *(&v157 + 1) = &type metadata for GlanceControlID;
      *&v158 = v139;
      *(&v158 + 1) = v148;
      v159 = v147;
      v160 = v124;
      swift_getOpaqueTypeConformance2();
      sub_25AFCC3DC();
      v120 = v136;
      sub_25B004C74();
      sub_25AF25FC4(v120, v130, &qword_27FA263E8);
      swift_storeEnumTagMultiPayload();
      sub_25AFCBEF0();
      sub_25B004C74();
      sub_25AF2602C(v120, &qword_27FA263E8);
      sub_25AF2602C(v111, &qword_27FA263D0);
    }

    else
    {
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26408);
      (*(*(v121 - 8) + 16))(v10, v144, v121);
      swift_storeEnumTagMultiPayload();
      sub_25AFCBEF0();
      sub_25AF0F274(&qword_27FA26430, &qword_27FA26408);
      sub_25B004C74();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AFC9F04(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26490);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 5);
  swift_getKeyPath();
  *&v21 = v9;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v10 = v9[13];
  if (v10)
  {
    v20[0] = a2;
    v20[1] = a3;
    v11 = v9[14];
    v12 = v9[15];
    v13 = v9[12];
    v14 = a1[5];
    v25 = a1[4];
    v26 = v14;
    v15 = a1[7];
    v27 = a1[6];
    v28 = v15;
    v16 = a1[1];
    v21 = *a1;
    v22 = v16;
    v17 = a1[3];
    v23 = a1[2];
    v24 = v17;
    v18 = *(a1 + 48);

    sub_25AFCA13C(v13, v10, v11, v12, v18, 1, v8);

    sub_25AFCC740();
    sub_25B005504();
    (v20[0])();

    sub_25AFC8154(0, 0, 0, 0);
  }
}

uint64_t sub_25AFCA13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v80) = a6;
  LODWORD(v91) = a5;
  v71 = a4;
  v75 = a3;
  v72 = a2;
  v73 = a1;
  v87 = a7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26510);
  MEMORY[0x28223BE20](v81);
  v86 = &v68 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264C0);
  MEMORY[0x28223BE20](v85);
  v68 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264B0);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v68 - v11;
  v89 = sub_25B004B14();
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264E0);
  MEMORY[0x28223BE20](v77);
  v14 = &v68 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA264C8);
  MEMORY[0x28223BE20](v94);
  v84 = &v68 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26518);
  v96 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v93 = &v68 - v16;
  v90 = *v7;
  v17 = *(v7 + 5);
  v74 = *(v7 + 7);
  v95 = v7[64];
  v78 = *(v7 + 9);
  LODWORD(v76) = v7[80];
  swift_getKeyPath();
  v79 = OBJC_IVAR____TtC17NanoControlCenter18SelectControlModel___observationRegistrar;
  *&v99 = v17;
  v70 = sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);

  sub_25B004234();

  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v21 = *(v17 + 32);
  v69 = *(v17 + 40);
  v20 = v69;
  v22 = *(v17 + 48);
  v23 = *(v17 + 56);
  v24 = *(v17 + 64);
  swift_getKeyPath();
  *&v99 = v17;

  sub_25AF1D7EC(v21, v20, v22, v23, v24);
  sub_25B004234();

  v25 = *(v17 + 72);
  v26 = *(v17 + 80);
  v79 = v17;
  v27 = *(v17 + 88);
  v28 = v72;
  *v14 = v73;
  *(v14 + 1) = v28;
  v29 = v71;
  *(v14 + 2) = v75;
  *(v14 + 3) = v29;
  v14[32] = v91;
  v14[33] = v90;
  *(v14 + 5) = v18;
  *(v14 + 6) = v19;
  v30 = v69;
  *(v14 + 7) = v21;
  *(v14 + 8) = v30;
  *(v14 + 9) = v22;
  *(v14 + 10) = v23;
  v14[88] = v24;
  *(v14 + 12) = v25;
  *(v14 + 13) = v26;
  v14[112] = v27;
  v97 = xmmword_25B0117E0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26520);
  sub_25B005484();
  v31 = v100;
  *(v14 + 120) = v99;
  *(v14 + 17) = v31;
  *&v97 = 0;
  type metadata accessor for CHSControlVisibility(0);
  sub_25B005484();
  *(v14 + 9) = v99;
  v32 = *(type metadata accessor for SelectAvailableControlView.AppControlsView(0) + 44);
  *&v14[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v34 = v74;
  if (v95 == 1)
  {
    v35 = v74;
    v36 = v89;
    v37 = v92;
    v38 = v88;
  }

  else
  {

    sub_25B005CC4();
    v39 = sub_25B004F24();
    sub_25B0044A4();

    v38 = v88;
    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v34, 0);
    v37 = v92;
    v36 = v89;
    (*(v92 + 8))(v38, v89);
    v35 = v99;
  }

  v40 = &v14[*(v77 + 36)];
  *v40 = KeyPath;
  v40[8] = v35;
  v41 = swift_getKeyPath();
  v42 = v93;
  v43 = v78;
  if (v76)
  {
    LOBYTE(v99) = v78;
  }

  else
  {

    sub_25B005CC4();
    v44 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v43, 0);
    (*(v37 + 8))(v38, v36);
    LOBYTE(v43) = v99;
  }

  v45 = v84;
  sub_25AF25B0C(v14, v84, &qword_27FA264E0);
  v46 = v94;
  v47 = v45 + *(v94 + 36);
  *v47 = v41;
  *(v47 + 8) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A8);
  sub_25B004914();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_25B00A900;
  sub_25B004904();
  v49 = sub_25AFCC9E8();
  MEMORY[0x25F85D020](1, v48, v46, v49);

  sub_25AF2602C(v45, &qword_27FA264C8);
  sub_25B005B34();
  v84 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v80)
  {
    v50 = v91 & 1;
    *&v99 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26368);
    sub_25B005544();
    v91 = v104;
    v80 = v105;
    v78 = swift_getKeyPath();
    v103 = 0;
    v51 = swift_getKeyPath();
    v102 = 0;
    v97 = 0u;
    v98 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26428);
    sub_25B005484();
    v52 = v101;
    v77 = v99;
    v76 = v100;
    v53 = v103;
    v54 = v49;
    v55 = v34;
    v56 = v102;
    v57 = v68;
    v58 = v42;
    v59 = v82;
    (*(v96 + 16))(v68, v58, v82);
    v60 = v57 + *(v85 + 36);
    *v60 = v90;
    *(v60 + 8) = v91;
    *(v60 + 16) = v80;
    *(v60 + 32) = 1;
    *(v60 + 40) = v79;
    *(v60 + 48) = v50;
    *(v60 + 56) = v78;
    *(v60 + 64) = v53;
    *(v60 + 72) = v51;
    *(v60 + 80) = v56;
    v34 = v55;
    *(v60 + 104) = v76;
    *(v60 + 88) = v77;
    *(v60 + 120) = v52;
    sub_25AF25FC4(v57, v86, &qword_27FA264C0);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC920();
    *&v99 = v94;
    *(&v99 + 1) = v54;
    swift_getOpaqueTypeConformance2();
    v61 = v83;
    v62 = v59;
    v42 = v93;
    sub_25B004C74();
    v63 = v57;
    v36 = v89;
    sub_25AF2602C(v63, &qword_27FA264C0);
  }

  else
  {

    v62 = v82;
    (*(v96 + 16))(v86, v42, v82);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC920();
    *&v99 = v94;
    *(&v99 + 1) = v49;
    swift_getOpaqueTypeConformance2();
    v61 = v83;
    sub_25B004C74();
  }

  v64 = v87;
  sub_25AF25B0C(v61, v87, &qword_27FA264B0);

  if (!v95)
  {

    sub_25B005CC4();
    v65 = sub_25B004F24();
    sub_25B0044A4();

    v66 = v88;
    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v34, 0);
    (*(v92 + 8))(v66, v36);
    LOBYTE(v34) = v99;
  }

  (*(v96 + 8))(v42, v62);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26490);
  *(v64 + *(result + 36)) = v34;
  return result;
}

id sub_25AFCAE18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25B004B14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v26 = a1[1];
  v27 = v9;
  v10 = a1[3];
  v25 = a1[2];
  v11 = *(v2 + 56);
  v12 = *(v2 + 72);
  v13 = *(v2 + 80);
  if (*(v2 + 64) != 1)
  {

    sub_25B005CC4();
    v14 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v11, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v11) = v29;
  }

  if (v13)
  {
    v28 = v12;
  }

  else
  {

    sub_25B005CC4();
    v15 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v12, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v12) = v28;
  }

  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA241A0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for ControlConfigurationView();
  v17 = (a2 + *(v16 + 20));
  v18 = v26;
  *v17 = v27;
  v17[1] = v18;
  v17[2] = v25;
  v17[3] = v10;
  *(a2 + *(v16 + 24)) = 1;
  KeyPath = swift_getKeyPath();
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26460) + 36);
  *v20 = KeyPath;
  v20[8] = v11;
  v21 = swift_getKeyPath();
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418) + 36);
  *v22 = v21;
  v22[8] = v12;

  v23 = v27;

  return v23;
}

uint64_t sub_25AFCB108(uint64_t a1, void (*a2)(uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_25AFCB1D0(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v3 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_configureModelSelectionView);
    swift_getKeyPath();
    *&v18[0] = v3;
    sub_25AFCC394(&qword_27FA25098, type metadata accessor for ConfigureControlModel);

    sub_25B004234();

    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[4];
    v7 = v3[5];
    sub_25AF6B1F0(v4);

    if (!v4)
    {
    }

    v8 = *(a1 + 104);
    v18[0] = *(a1 + 88);
    v18[1] = v8;
    v19 = *(a1 + 120);
    v9 = *(a1 + 104);
    v15 = *(a1 + 88);
    v16 = v9;
    v17 = *(a1 + 120);
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    sub_25AF6B1F0(v4);
    sub_25AF25FC4(v18, v10, &qword_27FA26500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26500);
    sub_25B0054A4();
    sub_25AF1979C(v15);

    if (qword_27FA30B10)
    {
      v15 = 0u;
      v16 = 0u;

      sub_25AF6AC5C(&v15);
      sub_25AF1979C(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AFCB428(void *a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[5];
  swift_getKeyPath();
  v18 = v2;
  sub_25AFCC394(&qword_27FA264F8, type metadata accessor for SelectControlModel);
  sub_25B004234();

  v3 = v2[13];
  if (v3)
  {
    v4 = v2[12];
    v5 = v2[14];
    v6 = v2[15];
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v23 = v7;
    v22 = v9;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v15 = v5;
    v16 = v4;
    sub_25AFCCC70(v4, v3);
    sub_25AF40234(&v23, v17);

    sub_25AF25FC4(&v22, v17, &qword_27FA26368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26530);
    MEMORY[0x25F85D310](&v21);
    v10 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_25AFCDA5C(0, *(v10 + 2) + 1, 1, v10, &qword_27FA26538);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_25AFCDA5C((v11 > 1), v12 + 1, 1, v10, &qword_27FA26538);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    *(v13 + 4) = v16;
    *(v13 + 5) = v3;
    *(v13 + 6) = v15;
    *(v13 + 7) = v6;
    v13[64] = 0;
    v17[0] = v7;
    v17[1] = v8;
    v17[2] = v9;
    sub_25B005524();
    sub_25AFCE380(&v23);

    sub_25AF2602C(&v22, &qword_27FA26368);
    sub_25AFC8154(0, 0, 0, 0);
  }
}

uint64_t sub_25AFCB6E0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26418);
  MEMORY[0x28223BE20](v29);
  v6 = (&v23 - v5);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26540);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26490);
  MEMORY[0x28223BE20](v28);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26478);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 24);
  v24 = *(a1 + 16);
  v25 = v16;
  v17 = *(a1 + 32);
  sub_25B005B34();
  v26 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = a2[5];
  v36 = a2[4];
  v37 = v18;
  v19 = a2[7];
  v38 = a2[6];
  v39 = v19;
  v20 = a2[1];
  v32 = *a2;
  v33 = v20;
  v21 = a2[3];
  v34 = a2[2];
  v35 = v21;
  if (v17)
  {
    v31[0] = v15;
    v31[1] = v14;
    v31[2] = v24;
    v31[3] = v25;
    sub_25AFCAE18(v31, v6);
    sub_25AF25FC4(v6, v8, &qword_27FA26418);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC740();
    sub_25AFCC1F4();
    sub_25B004C74();
    sub_25AF2602C(v6, &qword_27FA26418);
  }

  else
  {
    sub_25AFCA13C(v15, v14, v24, v25, *(a2 + 48), 0, v10);
    sub_25AF25FC4(v10, v8, &qword_27FA26490);
    swift_storeEnumTagMultiPayload();
    sub_25AFCC740();
    sub_25AFCC1F4();
    sub_25B004C74();
    sub_25AF2602C(v10, &qword_27FA26490);
  }

  sub_25AF25B0C(v13, v30, &qword_27FA26478);
}

uint64_t sub_25AFCBABC(uint64_t a1)
{
  *(v1 + 168) = a1;
  sub_25B005B34();
  *(v1 + 176) = sub_25B005B24();
  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFCBB54, v3, v2);
}

uint64_t sub_25AFCBB54()
{

  v2 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v3 = *(v0 + 168);
    v4 = swift_allocObject();
    v5 = v3[3];
    v7 = *v3;
    v6 = v3[1];
    v4[3] = v3[2];
    v4[4] = v5;
    v4[1] = v7;
    v4[2] = v6;
    v8 = v3[7];
    v10 = v3[4];
    v9 = v3[5];
    v4[7] = v3[6];
    v4[8] = v8;
    v4[5] = v10;
    v4[6] = v9;
    v11 = &v2[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBackBlock];
    swift_beginAccess();
    v12 = *v11;
    *v11 = sub_25AFCE330;
    v11[1] = v4;
    v13 = v2;
    sub_25AFCCC28(v3, v0 + 16);
    sub_25AF1895C(v12);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25AFCBC70(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v22 = v2;
  v23 = v1;
  v24 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26530);
  MEMORY[0x25F85D310](v20);
  v5 = *(v20[0] + 16);

  if (v5)
  {
    v24 = v3;
    v25 = v2;
    v26 = v3;
    v22 = v2;
    v23 = v1;
    sub_25AF40234(&v25, v20);

    sub_25AF25FC4(&v26, v20, &qword_27FA26368);
    MEMORY[0x25F85D310](&v21, v4);
    v6 = v21;
    if (*(v21 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = *(v6 + 2);
        if (v7)
        {
LABEL_5:
          v8 = v7 - 1;
          v9 = &v6[40 * v7];
          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = *(v9 + 1);
          v13 = *(v9 + 2);
          v14 = v9[24];
          *(v6 + 2) = v8;
          sub_25AFCE338(v10, v11, v12, v13, v14);
          v20[0] = v2;
          v20[1] = v1;
          v20[2] = v3;
          sub_25B005524();
          sub_25AFCE380(&v25);

          sub_25AF2602C(&v26, &qword_27FA26368);
          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    v6 = sub_25AFCDBE0(v6);
    v7 = *(v6 + 2);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (qword_27FA23800 != -1)
  {
LABEL_13:
    swift_once();
  }

  v15 = sub_25B0044C4();
  __swift_project_value_buffer(v15, qword_27FA30C28);
  v16 = sub_25B0044B4();
  v17 = sub_25B005CB4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v22);
    _os_log_impl(&dword_25AF0B000, v16, v17, "%s tried to go back when the navigation path is already empty. This indicates programmer error.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x25F85EC30](v19, -1, -1);
    MEMORY[0x25F85EC30](v18, -1, -1);
  }
}

unint64_t sub_25AFCBEF0()
{
  result = qword_27FA26410;
  if (!qword_27FA26410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26428);
    sub_25AF0F274(&qword_27FA26430, &qword_27FA26408);
    sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428);
    swift_getOpaqueTypeConformance2();
    sub_25AFCC11C();
    swift_getOpaqueTypeConformance2();
    sub_25AFCC1A0();
    sub_25AFCC1F4();
    swift_getOpaqueTypeConformance2();
    sub_25AFCC3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26410);
  }

  return result;
}

unint64_t sub_25AFCC11C()
{
  result = qword_27FA26440;
  if (!qword_27FA26440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26420);
    sub_25AF2C80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26440);
  }

  return result;
}

unint64_t sub_25AFCC1A0()
{
  result = qword_27FA26448;
  if (!qword_27FA26448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26448);
  }

  return result;
}

unint64_t sub_25AFCC1F4()
{
  result = qword_27FA26450;
  if (!qword_27FA26450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26418);
    sub_25AFCC2AC();
    sub_25AF0F274(&qword_27FA26350, &qword_27FA26358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26450);
  }

  return result;
}

unint64_t sub_25AFCC2AC()
{
  result = qword_27FA26458;
  if (!qword_27FA26458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26460);
    sub_25AFCC394(&qword_27FA26468, type metadata accessor for ControlConfigurationView);
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26458);
  }

  return result;
}

uint64_t sub_25AFCC394(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25AFCC3DC()
{
  result = qword_27FA26470;
  if (!qword_27FA26470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA263F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26428);
    sub_25AF0F274(&qword_27FA26430, &qword_27FA26408);
    sub_25AFCEF88(&qword_27FA26438, &qword_27FA26428);
    swift_getOpaqueTypeConformance2();
    sub_25AFCC11C();
    swift_getOpaqueTypeConformance2();
    sub_25AFC51C0();
    sub_25AFCC6B4();
    swift_getOpaqueTypeConformance2();
    sub_25AFCC1A0();
    sub_25AFCC1F4();
    swift_getOpaqueTypeConformance2();
    sub_25AFCC394(&qword_27FA23818, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26470);
  }

  return result;
}

unint64_t sub_25AFCC6B4()
{
  result = qword_27FA26480;
  if (!qword_27FA26480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26478);
    sub_25AFCC740();
    sub_25AFCC1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26480);
  }

  return result;
}

unint64_t sub_25AFCC740()
{
  result = qword_27FA26488;
  if (!qword_27FA26488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26490);
    sub_25AFCC7CC();
    sub_25AFCCBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26488);
  }

  return result;
}

unint64_t sub_25AFCC7CC()
{
  result = qword_27FA26498;
  if (!qword_27FA26498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264A0);
    sub_25AFCC850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26498);
  }

  return result;
}

unint64_t sub_25AFCC850()
{
  result = qword_27FA264A8;
  if (!qword_27FA264A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264B0);
    sub_25AFCC920();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C8);
    sub_25AFCC9E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264A8);
  }

  return result;
}

unint64_t sub_25AFCC920()
{
  result = qword_27FA264B8;
  if (!qword_27FA264B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C8);
    sub_25AFCC9E8();
    swift_getOpaqueTypeConformance2();
    sub_25AFC50BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264B8);
  }

  return result;
}

unint64_t sub_25AFCC9E8()
{
  result = qword_27FA264D0;
  if (!qword_27FA264D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264C8);
    sub_25AFCCAA0();
    sub_25AF0F274(&qword_27FA26350, &qword_27FA26358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264D0);
  }

  return result;
}

unint64_t sub_25AFCCAA0()
{
  result = qword_27FA264D8;
  if (!qword_27FA264D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA264E0);
    sub_25AFCC394(&qword_27FA264E8, type metadata accessor for SelectAvailableControlView.AppControlsView);
    sub_25AF0F274(&qword_27FA25AD0, &qword_27FA25AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264D8);
  }

  return result;
}

unint64_t sub_25AFCCBA8()
{
  result = qword_27FA264F0;
  if (!qword_27FA264F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA264F0);
  }

  return result;
}

uint64_t sub_25AFCCC70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25AFCCCB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25AFCCD04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AFCCD44()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25AF18ADC;

  return sub_25AFCBABC(v0 + 16);
}

uint64_t sub_25AFCCDF8()
{

  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 104);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

id sub_25AFCCE90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = v2[6];
  v17 = v2[5];
  v18 = v5;
  v6 = v2[8];
  v19 = v2[7];
  v20 = v6;
  v7 = v2[2];
  v13 = v2[1];
  v14 = v7;
  v8 = v2[4];
  v15 = v2[3];
  v16 = v8;
  v10 = v3;
  v11 = *(a1 + 8);
  v12 = v4;
  return sub_25AFCAE18(&v10, a2);
}

uint64_t sub_25AFCCF1C(uint64_t a1)
{
  v2 = sub_25B004844();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_25B0049C4();
}

uint64_t sub_25AFCD008@<X0>(_BYTE *a1@<X8>)
{
  sub_25AF63C5C();
  result = sub_25B004B24();
  *a1 = v3;
  return result;
}

uint64_t sub_25AFCD078@<X0>(_BYTE *a1@<X8>)
{
  sub_25AFCD0E8();
  result = sub_25B004B24();
  *a1 = v3;
  return result;
}

unint64_t sub_25AFCD0E8()
{
  result = qword_27FA26508;
  if (!qword_27FA26508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26508);
  }

  return result;
}

char *sub_25AFCD13C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_25AFCD240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25AFCD344(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AFCD46C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AFCD594(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25AFCD700(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_25AFCD834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AFCD958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_25AFCDA5C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t sub_25AFCDC20(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v19 = v3 == v8 && v2 == v7;
      if (v19 || (sub_25B006174() & 1) != 0)
      {
        if (v5 == v10 && v4 == v9)
        {
          sub_25AFCE3D4(v8, v7, v5, v4, 0);
          sub_25AFCE3D4(v3, v2, v5, v4, 0);
          sub_25AFCE338(v3, v2, v5, v4, 0);
          sub_25AFCE338(v8, v7, v5, v4, 0);
          v12 = 1;
          return v12 & 1;
        }

        v21 = sub_25B006174();
        sub_25AFCE3D4(v8, v7, v10, v9, 0);
        sub_25AFCE3D4(v3, v2, v5, v4, 0);
        sub_25AFCE338(v3, v2, v5, v4, 0);
        sub_25AFCE338(v8, v7, v10, v9, 0);
        if (v21)
        {
          v12 = 1;
          return v12 & 1;
        }

        goto LABEL_7;
      }

      sub_25AFCE3D4(v8, v7, v10, v9, 0);
      sub_25AFCE3D4(v3, v2, v5, v4, 0);
      sub_25AFCE338(v3, v2, v5, v4, 0);
      v13 = v8;
      v14 = v7;
      v15 = v10;
      v16 = v9;
      v17 = 0;
LABEL_6:
      sub_25AFCE338(v13, v14, v15, v16, v17);
LABEL_7:
      v12 = 0;
      return v12 & 1;
    }

LABEL_5:
    sub_25AFCE3D4(*a2, *(a2 + 8), v10, v9, v11);
    sub_25AFCE3D4(v3, v2, v5, v4, v6);
    sub_25AFCE338(v3, v2, v5, v4, v6);
    v13 = v8;
    v14 = v7;
    v15 = v10;
    v16 = v9;
    v17 = v11;
    goto LABEL_6;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v23[0] = *a1;
  v23[1] = v2;
  v23[2] = v5;
  v23[3] = v4;
  v22[0] = v8;
  v22[1] = v7;
  v22[2] = v10;
  v22[3] = v9;
  sub_25AFCE3D4(v8, v7, v10, v9, 1);
  sub_25AFCE3D4(v3, v2, v5, v4, 1);
  sub_25AFCE3D4(v8, v7, v10, v9, 1);
  sub_25AFCE3D4(v3, v2, v5, v4, 1);
  v12 = _s17NanoControlCenter06GlanceB2IDV2eeoiySbAC_ACtFZ_0(v23, v22);
  sub_25AFCE338(v3, v2, v5, v4, 1);
  sub_25AFCE338(v8, v7, v10, v9, 1);
  sub_25AFCE338(v8, v7, v10, v9, 1);
  sub_25AFCE338(v3, v2, v5, v4, 1);
  return v12 & 1;
}

uint64_t sub_25AFCDF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    if (!a6)
    {
      v16 = 0;
      return v16 & 1;
    }

    goto LABEL_12;
  }

  if (!a6)
  {
    sub_25AFCCC70(a1, a2);
LABEL_12:
    sub_25AFCCC70(a5, a6);
    sub_25AFCCCB4(a1, a2);
    v17 = a5;
    v18 = a6;
LABEL_13:
    sub_25AFCCCB4(v17, v18);
    v16 = 1;
    return v16 & 1;
  }

  if ((a1 != a5 || a2 != a6) && (sub_25B006174() & 1) == 0)
  {
    sub_25AFCCC70(a1, a2);
    sub_25AFCCC70(a1, a2);
    sub_25AFCCC70(a5, a6);

    v17 = a1;
    v18 = a2;
    goto LABEL_13;
  }

  if (a3 == a7 && a4 == a8)
  {
    sub_25AFCCC70(a1, a2);
    sub_25AFCCC70(a1, a2);
    sub_25AFCCC70(a5, a6);

    sub_25AFCCCB4(a1, a2);
    v16 = 0;
  }

  else
  {
    v19 = sub_25B006174();
    sub_25AFCCC70(a1, a2);
    sub_25AFCCC70(a1, a2);
    sub_25AFCCC70(a5, a6);

    sub_25AFCCCB4(a1, a2);
    v16 = v19 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_25AFCE1D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[12];
  v7 = v2[13];
  v2[12] = v1;
  v2[13] = v3;
  v2[14] = v4;
  v2[15] = v5;
  sub_25AFCCC70(v1, v3);
  return sub_25AFCCCB4(v6, v7);
}

uint64_t objectdestroyTm_5()
{

  sub_25AF241CC(*(v0 + 72), *(v0 + 80));
  sub_25AF241CC(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 104);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_25AFCE338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

id sub_25AFCE3D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_25AFCE44C()
{

  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_25AFCE538(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25AFCE594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25AFCE618(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AFCE6E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AFCE798()
{
  sub_25AFCE994(319, &qword_27FA24258, &qword_27FA23D78, &unk_25B009D80, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_25AFCE944();
    if (v1 <= 0x3F)
    {
      sub_25AFCE994(319, &qword_27FA26580, &qword_27FA26520, &unk_25B012D78, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_25AFCE9F8(319, &qword_27FA242F0, type metadata accessor for CHSControlVisibility, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_25AFCE9F8(319, &qword_27FA24268, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25AFCE944()
{
  if (!qword_27FA24260)
  {
    v0 = sub_25B005554();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24260);
    }
  }
}

void sub_25AFCE994(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_25AFCE9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25AFCEA60()
{
  result = qword_27FA26588;
  if (!qword_27FA26588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26590);
    sub_25AFCBEF0();
    sub_25AF0F274(&qword_27FA26430, &qword_27FA26408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26588);
  }

  return result;
}

uint64_t sub_25AFCEB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_100Tm()
{
  v1 = type metadata accessor for SelectAvailableControlView.AppControlsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 88);
  if (v6 <= 0xFD)
  {
    sub_25AF18128(*(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), v6);
  }

  if (*(v5 + 120) != 1)
  {
  }

  v7 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_25B004844();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AFCED60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SelectAvailableControlView.AppControlsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25AFCEDEC()
{
  result = qword_27FA265D0;
  if (!qword_27FA265D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265A0);
    sub_25AFCEE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA265D0);
  }

  return result;
}

unint64_t sub_25AFCEE78()
{
  result = qword_27FA265D8;
  if (!qword_27FA265D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26598);
    sub_25AF0F274(&qword_27FA265B8, &qword_27FA26598);
    sub_25AF2ECCC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA265D8);
  }

  return result;
}

uint64_t sub_25AFCEF88(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_25AFC1A9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AFCEFF0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_25AFCF0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for ButtonAndLabel.ParentState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[7];
  v6 = sub_25B004844();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AFCF244(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ButtonAndLabel.ParentState(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_117Tm()
{
  v1 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_25B004844();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_25AFCF42C()
{
  result = qword_27FA26630;
  if (!qword_27FA26630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA249D8);
    sub_25AFC83F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26630);
  }

  return result;
}

unint64_t sub_25AFCF4B4()
{
  result = qword_27FA26638;
  if (!qword_27FA26638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA265C8);
    sub_25AFCEDEC();
    sub_25AFCEF88(&qword_27FA265E0, &qword_27FA265C8);
    swift_getOpaqueTypeConformance2();
    sub_25AF3FE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26638);
  }

  return result;
}

void sub_25AFCF648(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v61 = *a3;
  v62 = v7;
  v8 = *(a3 + 32);
  v63 = *(a3 + 32);
  v9 = *(a3 + 8);
  v45 = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v12 = sub_25B0044C4();
  __swift_project_value_buffer(v12, qword_27FA30C28);
  sub_25AF196CC(&v61, &v56);
  v13 = sub_25B0044B4();
  v14 = sub_25B005C94();
  sub_25AF1C414(&v61);
  if (os_log_type_enabled(v13, v14))
  {
    v48 = v3;
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50[0] = v43;
    *v15 = 136315394;
    *(v15 + 4) = sub_25AF8E7DC(0xD00000000000001DLL, 0x800000025B01A430, v50);
    *(v15 + 12) = 2080;
    v56 = v61;
    v57 = v62;
    LOBYTE(v58) = v63;
    sub_25AF196CC(&v61, &v51);
    v16 = sub_25AFD3228();
    v46 = a1;
    v17 = v9;
    v18 = a2;
    v19 = v8;
    v20 = v10;
    v21 = v11;
    v23 = v22;
    sub_25AF18128(v56, *(&v56 + 1), v57, *(&v57 + 1), v58);
    v24 = sub_25AF8E7DC(v16, v23, v50);
    v11 = v21;
    v10 = v20;
    v8 = v19;
    a2 = v18;
    v9 = v17;
    a1 = v46;

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25AF0B000, v13, v14, "%s source: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v43, -1, -1);
    v25 = v15;
    v4 = v48;
    MEMORY[0x25F85EC30](v25, -1, -1);
  }

  if (!v4[2] && a2)
  {
    v26 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v26 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      swift_getKeyPath();
      v27 = OBJC_IVAR____TtC17NanoControlCenter15StatusTextModel___observationRegistrar;
      *&v56 = v4;
      sub_25AFD1304();
      v49 = v4;

      v28 = v4 + v27;
      sub_25B004234();

      v47 = a1;
      if (!v4[11])
      {
        v34 = 1;
        goto LABEL_21;
      }

      v44 = v11;
      v29 = v4;
      v31 = v4[12];
      v30 = v4[13];
      v33 = v29[14];
      v32 = v29[15];
      v28 = *(v29 + 128);
      if (v28 <= 0xFD)
      {
        if (v8 <= 0xFD)
        {
          *&v56 = v31;
          *(&v56 + 1) = v30;
          *&v57 = v33;
          *(&v57 + 1) = v32;
          LOBYTE(v58) = v28;
          v51 = v45;
          v52 = v9;
          v53 = v10;
          v54 = v44;
          v55 = v8;
          sub_25AF196CC(&v61, v50);
          sub_25AF1D7EC(v31, v30, v33, v32, v28);
          sub_25AF1D7EC(v31, v30, v33, v32, v28);
          sub_25AF181DC(v31, v30, v33, v32, v28);
          v34 = sub_25AFD33F0(&v56, &v51);
          sub_25AF18128(v51, v52, v53, v54, v55);
          sub_25AF18128(v56, *(&v56 + 1), v57, *(&v57 + 1), v58);
          sub_25AF18128(v31, v30, v33, v32, v28);
          v35 = v33;
          v11 = v44;
          sub_25AF231D0(v31, v30, v35, v32, v28);
          goto LABEL_20;
        }

        sub_25AF196CC(&v61, &v56);
        sub_25AF1D7EC(v31, v30, v33, v32, v28);
        sub_25AF1D7EC(v31, v30, v33, v32, v28);
        sub_25AF18128(v31, v30, v33, v32, v28);
      }

      else
      {
        if (v8 > 0xFD)
        {
          sub_25AF196CC(&v61, &v56);
          sub_25AF1D7EC(v31, v30, v33, v32, v28);
          sub_25AF231D0(v31, v30, v33, v32, v28);
          v34 = 1;
          v11 = v44;
LABEL_20:
          v4 = v49;
LABEL_21:
          swift_beginAccess();
          sub_25AF196CC(&v61, &v56);
          v36 = sub_25AFD0C88(v4 + 8, &v61);
          v37 = *(v4[8] + 16);
          if (v37 < v36)
          {
            __break(1u);
          }

          else
          {
            sub_25AF69174(v36, v37);
            swift_endAccess();
            if (v34)
            {
              v38 = v45;
              *&v56 = v47;
              *(&v56 + 1) = a2;
              *&v57 = v45;
              *(&v57 + 1) = v9;
              v58 = v10;
              v59 = v11;
              v60 = v8;
              sub_25AF196CC(&v61, &v51);

              sub_25AF1D7EC(v45, v9, v10, v11, v8);
              sub_25AFCFE54(&v56);
              *&v56 = v47;
              *(&v56 + 1) = a2;
              *&v57 = v45;
              *(&v57 + 1) = v9;
              v58 = v10;
              v59 = v11;
              v60 = v8;
              sub_25AFD085C();
LABEL_28:

              sub_25AF231D0(v38, v9, v10, v11, v8);
              return;
            }

            swift_beginAccess();
            v28 = v4[8];
            sub_25AF196CC(&v61, &v56);

            sub_25AF1D7EC(v45, v9, v10, v11, v8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v4[8] = v28;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_25:
              v41 = *(v28 + 2);
              v40 = *(v28 + 3);
              if (v41 >= v40 >> 1)
              {
                v28 = sub_25AFCD834((v40 > 1), v41 + 1, 1, v28);
              }

              *(v28 + 2) = v41 + 1;
              v42 = &v28[56 * v41];
              *(v42 + 4) = v47;
              *(v42 + 5) = a2;
              v38 = v45;
              *(v42 + 6) = v45;
              *(v42 + 7) = v9;
              *(v42 + 8) = v10;
              *(v42 + 9) = v11;
              v42[80] = v8;
              v49[8] = v28;
              swift_endAccess();
              goto LABEL_28;
            }
          }

          v28 = sub_25AFCD834(0, *(v28 + 2) + 1, 1, v28);
          v4[8] = v28;
          goto LABEL_25;
        }

        sub_25AF196CC(&v61, &v56);
        sub_25AF1D7EC(v31, v30, v33, v32, v28);
      }

      sub_25AF231D0(v31, v30, v33, v32, v28);
      v11 = v44;
      sub_25AF231D0(v45, v9, v10, v44, v8);
      v34 = 0;
      goto LABEL_20;
    }
  }
}

void sub_25AFCFCD0(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AFD1304();
  sub_25B004234();

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v9 = *(v1 + 128);
  *(a1 + 48) = v9;
  sub_25AFD1930(v3, v4, v5, v6, v7, v8, v9);
}

void sub_25AFCFD64(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFD1304();
  sub_25B004234();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  v9 = *(v3 + 120);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 128);
  *(a2 + 48) = v10;
  sub_25AFD1930(v4, v5, v6, v7, v8, v9, v10);
}

void sub_25AFCFDF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v7 = *a1;
  *(&v7 + 1) = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_25AFD1930(v7, v1, v2, v3, v4, v5, v6);
  sub_25AFCFE54(&v7);
}

void sub_25AFCFE54(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = a1[2];
  v18 = *(a1 + 48);
  v3 = *(v1 + 96);
  v19[0] = *(v1 + 80);
  v19[1] = v3;
  v19[2] = *(v1 + 112);
  v20 = *(v1 + 128);
  sub_25AFD183C(v19, v14);
  v4 = sub_25AFD15D0(v19, &v15);
  sub_25AFD18AC(v19);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[0] = v1;
    sub_25AFD1304();
    sub_25B004224();
    sub_25AFD18AC(&v15);
  }

  else
  {
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);
    v8 = *(v1 + 96);
    v9 = *(v1 + 104);
    v10 = *(v1 + 112);
    v11 = *(v1 + 120);
    v12 = v16;
    *(v1 + 80) = v15;
    *(v1 + 96) = v12;
    *(v1 + 112) = v17;
    v13 = *(v1 + 128);
    *(v1 + 128) = v18;
    sub_25AFD1288(v6, v7, v8, v9, v10, v11, v13);
  }
}

void sub_25AFCFFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 32);
  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 48);
  sub_25AFD183C(a2, v10);
  sub_25AFD1288(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_25AFD0048(uint64_t a1, uint64_t a2)
{
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v3 = *(a2 + 32);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8 <= 0xFD)
  {
    if (v3 <= 0xFD)
    {
      v21 = v5;
      v22 = v4;
      v23 = v7;
      v24 = v6;
      v25 = v8;
      v16 = v11;
      v17 = v12;
      v18 = v13;
      v19 = v14;
      v20 = v3;
      sub_25AF1D7EC(v5, v4, v7, v6, v8);
      sub_25AF196CC(a2, v15);
      sub_25AF1D7EC(v5, v4, v7, v6, v8);
      sub_25AF181DC(v5, v4, v7, v6, v8);
      v9 = sub_25AFD33F0(&v21, &v16);
      sub_25AF18128(v16, v17, v18, v19, v20);
      sub_25AF18128(v21, v22, v23, v24, v25);
      sub_25AF18128(v5, v4, v7, v6, v8);
      sub_25AF231D0(v5, v4, v7, v6, v8);
      goto LABEL_11;
    }

    sub_25AF1D7EC(v5, v4, v7, v6, v8);
    sub_25AF196CC(a2, &v21);
    sub_25AF1D7EC(v5, v4, v7, v6, v8);
    sub_25AF18128(v5, v4, v7, v6, v8);
    goto LABEL_9;
  }

  sub_25AF1D7EC(v5, v4, v7, v6, v8);
  if (v3 <= 0xFD)
  {
    sub_25AF196CC(a2, &v21);
LABEL_9:
    sub_25AF231D0(v5, v4, v7, v6, v8);
    sub_25AF231D0(v11, v12, v13, v14, v3);
    v9 = 0;
    goto LABEL_11;
  }

  sub_25AF196CC(a2, &v21);
  sub_25AF231D0(v5, v4, v7, v6, v8);
  v9 = 1;
LABEL_11:

  return v9 & 1;
}

void sub_25AFD02DC(uint64_t *a1)
{
  v2 = a1[5];
  v3 = *(a1 + 48);
  v15 = *a1;
  v14 = *(a1 + 1);
  v16 = v14;
  v17 = *(a1 + 3);
  v18 = v2;
  v19 = v3;
  sub_25AFD0690(&v15, &v20);
  v4 = v21;
  if (v21)
  {
    v5 = v20;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    if (!v14)
    {
      swift_beginAccess();
      v11 = *(v1 + 64);
      v12 = *(v11 + 16);
      if (!v12)
      {
        __break(1u);
        return;
      }

      sub_25AF15B20(v11, v11 + 32, 1, (2 * v12) | 1);
      *(v1 + 64) = v13;
    }

    v20 = v5;
    v21 = v4;
    v22 = v6;
    v23 = v7;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    sub_25AFD085C();
    sub_25AFD1288(v5, v4, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_25AFD03F4()
{
  sub_25AF231D0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_25AFD1288(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  v1 = OBJC_IVAR____TtC17NanoControlCenter15StatusTextModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StatusTextModel()
{
  result = qword_27FA26658;
  if (!qword_27FA26658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFD0518()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25AFD05E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25AFD062C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25AFD0690(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v18 = *(a1 + 16);
  v19 = *a1;
  v22 = v3;
  v23 = *a1;
  v20 = *(a1 + 24);
  v21 = v18;
  v6 = *(a1 + 48);
  v16 = v5;
  v17 = v20;
  v7 = v4;
  v8 = v6;
  if (!v3)
  {
    swift_beginAccess();
    v9 = *(v24 + 64);
    if (!*(v9 + 16))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      sub_25AFCFE54(&v25);
      v15 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v5 = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_5;
    }

    v22 = *(v9 + 40);
    v23 = *(v9 + 32);
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    v5 = *(v9 + 64);
    v7 = *(v9 + 72);
    v8 = *(v9 + 80);

    v20 = v11;
    v21 = v10;
    sub_25AF1D7EC(v10, v11, v5, v7, v8);
    v3 = 0;
  }

  v12 = v22;
  *&v25 = v23;
  *(&v25 + 1) = v22;
  v14 = v20;
  v13 = v21;
  *&v26 = v21;
  *(&v26 + 1) = v20;
  *&v27 = v5;
  *(&v27 + 1) = v7;
  v28 = v8;
  sub_25AFD1930(v23, v22, v21, v20, v5, v7, v8);
  sub_25AFD1930(v23, v22, v21, v20, v5, v7, v8);
  sub_25AFD1930(v19, v3, v18, v17, v16, v4, v6);
  sub_25AFCFE54(&v25);
  v15 = v23;
  sub_25AFD1288(v23, v22, v21, v20, v5, v7, v8);
LABEL_5:
  *a2 = v15;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
}

void sub_25AFD085C()
{
  v1 = sub_25B0059A4();
  v2 = *(v0 + 72);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = v1 / 30.0;
  if (v3 <= 1.0)
  {
    v3 = 1.0;
  }

  v4 = v3 + 2.0;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_25AFD14BC;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_25AFD0C20;
  v10[3] = &block_descriptor_3;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:v4];
  _Block_release(v7);
  v9 = *(v0 + 72);
  *(v0 + 72) = v8;
}

uint64_t sub_25AFD09B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_25B005B64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_25B005B34();

  v7 = sub_25B005B24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_25AF6D0D4(0, 0, v5, &unk_25B013228, v8);
}

uint64_t sub_25AFD0AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_25B005B34();
  v4[7] = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AFD0B6C, v6, v5);
}

uint64_t sub_25AFD0B6C()
{
  v6 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_25AFD02DC(v4);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_25AFD0C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_25AFD0C88(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_25AFD135C(*a1, a2);
  v9 = v2;
  if (v2)
  {
    v10 = a2;
LABEL_8:
    sub_25AF1C414(v10);
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
    v10 = a2;
    goto LABEL_8;
  }

  v3 = result;
  v66 = a2;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v6 + 16);
    v12 = *(v6 + 16);
    if (v11 == v12)
    {
LABEL_7:
      v10 = v66;
      goto LABEL_8;
    }

    v14 = 56 * result + 136;
    v52 = a1;
    while (v11 < v12)
    {
      v78 = v11;
      v70 = v14;
      v71 = v3;
      v67 = v6;
      v17 = (v6 + v14);
      v19 = *(v6 + v14 - 48);
      v18 = *(v6 + v14 - 40);
      v20 = *(v6 + v14 - 32);
      v21 = *(v6 + v14 - 24);
      v22 = *(v6 + v14 - 16);
      v23 = *(v17 - 1);
      v24 = *v17;
      v72[0] = v19;
      v72[1] = v18;
      v73 = v20;
      v74 = v21;
      v75 = v22;
      v76 = v23;
      v77 = v24;

      sub_25AF1D7EC(v20, v21, v22, v23, v24);
      v25 = v9;
      LOBYTE(v21) = sub_25AFD0048(v72, v66);
      v26 = v73;
      v27 = v74;
      v28 = v75;
      v29 = v76;
      v30 = v77;

      v31 = v30;
      v9 = v25;
      result = sub_25AF231D0(v26, v27, v28, v29, v31);
      if (v21)
      {
        v15 = v70;
        v3 = v71;
        v6 = v67;
        v16 = v78;
      }

      else
      {
        v15 = v70;
        v32 = v71;
        v16 = v78;
        v6 = v67;
        if (v78 != v71)
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          if (v71 >= *v13)
          {
            goto LABEL_26;
          }

          if (v78 >= *v13)
          {
            goto LABEL_27;
          }

          v60 = 56 * v71;
          v33 = v67 + 32 + 56 * v71;
          v56 = *(v33 + 8);
          v57 = *v33;
          v35 = *(v33 + 16);
          v34 = *(v33 + 24);
          v36 = *(v33 + 32);
          v37 = *(v33 + 40);
          v63 = *(v33 + 48);
          v59 = *(v17 - 6);
          v61 = *(v17 - 5);
          v38 = *(v17 - 4);
          v39 = *(v17 - 3);
          v40 = *(v17 - 2);
          v41 = *(v17 - 1);
          v64 = v40;
          v42 = *(v67 + v70);

          v55 = v34;
          v53 = v37;
          v54 = v36;
          sub_25AF1D7EC(v35, v34, v36, v37, v63);

          v58 = v38;
          sub_25AF1D7EC(v38, v39, v64, v41, v42);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_25AFCDBCC(v67);
            v6 = result;
          }

          if (v71 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v43 = v6 + v60;
          v44 = *(v6 + v60 + 48);
          v46 = *(v6 + v60 + 56);
          v45 = *(v6 + v60 + 64);
          v68 = *(v6 + v60 + 72);
          *(v43 + 32) = v59;
          *(v43 + 40) = v61;
          *(v43 + 48) = v58;
          *(v43 + 56) = v39;
          *(v43 + 64) = v64;
          *(v43 + 72) = v41;
          v47 = *(v6 + v60 + 80);
          *(v43 + 80) = v42;

          v48 = v45;
          v16 = v78;
          result = sub_25AF231D0(v44, v46, v48, v68, v47);
          if (v16 >= *(v6 + 16))
          {
            goto LABEL_29;
          }

          v49 = (v6 + v70);
          v69 = *(v6 + v70 - 32);
          v50 = *(v6 + v70 - 16);
          v65 = *(v6 + v70 - 24);
          v62 = *(v6 + v70 - 8);
          *(v49 - 6) = v57;
          *(v49 - 5) = v56;
          *(v49 - 4) = v35;
          *(v49 - 3) = v55;
          *(v49 - 2) = v54;
          *(v49 - 1) = v53;
          v51 = *(v6 + v70);
          *v49 = v63;

          v15 = v70;
          result = sub_25AF231D0(v69, v65, v50, v62, v51);
          *v52 = v6;
          v9 = 0;
          v32 = v71;
        }

        v3 = v32 + 1;
      }

      v11 = v16 + 1;
      v13 = (v6 + 16);
      v12 = *(v6 + 16);
      v14 = v15 + 56;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

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

  __break(1u);
  return result;
}

BOOL sub_25AFD1018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v12 = sub_25B006174(), result = 0, (v12 & 1) != 0))
  {
    if (v6 <= 0xFD)
    {
      if (v11 <= 0xFD)
      {
        v20 = v2;
        v21 = v4;
        v22 = v3;
        v23 = v5;
        v24 = v6;
        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
        v19 = v11;
        sub_25AF1D7EC(v2, v4, v3, v5, v6);
        sub_25AF1D7EC(v8, v7, v10, v9, v11);
        sub_25AF1D7EC(v2, v4, v3, v5, v6);
        sub_25AF181DC(v2, v4, v3, v5, v6);
        v14 = sub_25AFD33F0(&v20, &v15);
        sub_25AF18128(v15, v16, v17, v18, v19);
        sub_25AF18128(v20, v21, v22, v23, v24);
        sub_25AF18128(v2, v4, v3, v5, v6);
        sub_25AF231D0(v2, v4, v3, v5, v6);
        return (v14 & 1) != 0;
      }

      sub_25AF1D7EC(v2, v4, v3, v5, v6);
      sub_25AF1D7EC(v8, v7, v10, v9, v11);
      sub_25AF1D7EC(v2, v4, v3, v5, v6);
      sub_25AF18128(v2, v4, v3, v5, v6);
    }

    else
    {
      sub_25AF1D7EC(v2, v4, v3, v5, v6);
      sub_25AF1D7EC(v8, v7, v10, v9, v11);
      if (v11 > 0xFD)
      {
        sub_25AF231D0(v2, v4, v3, v5, v6);
        return 1;
      }
    }

    sub_25AF231D0(v2, v4, v3, v5, v6);
    sub_25AF231D0(v8, v7, v10, v9, v11);
    return 0;
  }

  return result;
}

void sub_25AFD1288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_25AF231D0(a3, a4, a5, a6, a7);
  }
}

unint64_t sub_25AFD1304()
{
  result = qword_27FA26668;
  if (!qword_27FA26668)
  {
    type metadata accessor for StatusTextModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26668);
  }

  return result;
}

uint64_t sub_25AFD135C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v19 = *(a1 + 16);
  v4 = 0;
  if (v19)
  {
    for (i = (a1 + 80); ; i += 56)
    {
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      v20[0] = *(i - 6);
      v20[1] = v6;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;

      sub_25AF1D7EC(v7, v8, v9, v10, v11);
      v12 = sub_25AFD0048(v20, v26);
      v13 = v21;
      v14 = v22;
      v15 = v23;
      v16 = v24;
      v17 = v25;

      sub_25AF231D0(v13, v14, v15, v16, v17);
      if (v3 || (v12 & 1) != 0)
      {
        break;
      }

      if (v19 == ++v4)
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_25AFD1484()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AFD14DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AFD151C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AFD0AD4(a1, v4, v5, v6);
}

uint64_t sub_25AFD15D0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  if (!v3)
  {
    v36 = *a1;
    if (!v11)
    {
      sub_25AFD183C(a1, v44);
      sub_25AFD183C(a2, v44);
      sub_25AFD1288(v36, 0, v6, v5, v8, v7, v9);
      v26 = 0;
      return v26 & 1;
    }

    v28 = *(a2 + 16);
    v29 = *(a2 + 24);
    v30 = *(a2 + 32);
    v32 = *(a2 + 40);
    v34 = *(a2 + 48);
    sub_25AFD183C(a1, v44);
    sub_25AFD183C(a2, v44);
    v4 = v36;
    goto LABEL_7;
  }

  v44[0] = *a1;
  v44[1] = v3;
  v45 = v6;
  v46 = v5;
  v47 = v8;
  v48 = v7;
  v49 = v9;
  if (!v11)
  {
    v28 = v13;
    v29 = v12;
    v30 = v15;
    v32 = v14;
    v34 = v16;
    sub_25AFD183C(a1, v38);
    sub_25AFD183C(a2, v38);
    sub_25AFD1930(v4, v3, v6, v5, v8, v7, v9);

    sub_25AF231D0(v6, v5, v8, v7, v9);
LABEL_7:
    sub_25AFD1288(v4, v3, v6, v5, v8, v7, v9);
    sub_25AFD1288(v10, v11, v28, v29, v30, v32, v34);
    v26 = 1;
    return v26 & 1;
  }

  v38[0] = v10;
  v38[1] = v11;
  v39 = v13;
  v40 = v12;
  v41 = v15;
  v42 = v14;
  v43 = v16;
  sub_25AFD183C(a1, v37);
  sub_25AFD183C(a2, v37);
  v35 = v4;
  sub_25AFD1930(v4, v3, v6, v5, v8, v7, v9);
  v33 = sub_25AFD1018(v44, v38);
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v31 = v9;
  v21 = v43;

  sub_25AF231D0(v17, v18, v19, v20, v21);
  v22 = v45;
  v23 = v46;
  v24 = v47;
  v25 = v48;
  LOBYTE(v19) = v49;

  sub_25AF231D0(v22, v23, v24, v25, v19);
  sub_25AFD1288(v35, v3, v6, v5, v8, v7, v31);
  v26 = !v33;
  return v26 & 1;
}

uint64_t sub_25AFD183C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFD18AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25AFD1930(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    sub_25AF1D7EC(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_25AFD19A4()
{
  result = sub_25B005724();
  qword_27FA30BE8 = result;
  return result;
}

uint64_t sub_25AFD19C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *v1;
  v47 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25590);
  v46 = v7;
  if (v10 >> 6 == 1)
  {
    if ((v6 & 0xC0) == 0x40)
    {
      sub_25AF67FDC();
      sub_25AF181DC(v2, v3, v4, v5, v6);
      sub_25AF181DC(v7, v47, v9, v8, v10);
      sub_25AF181DC(v7, v47, v9, v8, v10);
      sub_25AF181DC(v2, v3, v4, v5, v6);
      v41 = v4;
      v40 = v5;
      v11 = [v7 extensionIdentity];
      v12 = [v2 extensionIdentity];
      v13 = sub_25B005DE4();

      if (v13)
      {
        v44 = v9;
        v14 = [v7 kind];
        v15 = sub_25B005934();
        v17 = v16;

        v18 = [v2 kind];
        v19 = sub_25B005934();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {
          v22 = 1;
        }

        else
        {
          v22 = sub_25B006174();
        }

        sub_25AF18128(v2, v3, v41, v40, v6);
        sub_25AF18128(v46, v47, v44, v8, v10);

        sub_25AF18128(v46, v47, v44, v8, v10);
        sub_25AF18128(v2, v3, v41, v40, v6);
        return v22 & 1;
      }

      sub_25AF18128(v2, v3, v41, v40, v6);
      sub_25AF18128(v7, v47, v9, v8, v10);
      sub_25AF18128(v2, v3, v41, v40, v6);
      v34 = v7;
      v35 = v47;
      v36 = v9;
      v37 = v8;
      goto LABEL_30;
    }

    v42 = 1;
    v23 = swift_allocObject();
    *(v23 + 16) = v7;
    *(v23 + 24) = v47;
    *(v23 + 32) = v9;
    *(v23 + 40) = v8;
    sub_25AF181DC(v7, v47, v9, v8, v10);
    v43 = v8;

    v26 = v7;
    v25 = &off_286C51110;
    v24 = &type metadata for GlanceControlID;
  }

  else
  {
    v42 = v10 >> 6;
    v43 = v8;
    if (v10 >= 0x40)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v7;
      *(v23 + 24) = v47;
      *(v23 + 32) = v9;
      *(v23 + 40) = v8;
      *(v23 + 48) = v10 & 1;
      sub_25AF181DC(v7, v47, v9, v8, v10);
      sub_25AF18244(v7, v47, v9, v8, v10 & 1);
      v25 = &off_286C511A8;
      v24 = &type metadata for GlancePendingID;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  v49[0] = v23;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = v24;
  v27 = v6 >> 6;
  v49[4] = v25;
  v45 = v9;
  if ((v6 >> 6))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    *(v28 + 24) = v3;
    *(v28 + 32) = v4;
    *(v28 + 40) = v5;
    if (v27 == 1)
    {
      v29 = v4;
      v30 = &off_286C51110;
      v31 = v5;
      v32 = &type metadata for GlanceControlID;
    }

    else
    {
      *(v28 + 48) = v6 & 1;
      v29 = v4;
      v30 = &off_286C511A8;
      v31 = v5;
      v32 = &type metadata for GlancePendingID;
    }

    sub_25AF181DC(v2, v3, v29, v31, v6);
  }

  else
  {
    v31 = v5;
    v32 = (v6 >> 6);
    v28 = v6 >> 6;
    v29 = v4;
    v30 = (v6 >> 6);
  }

  v48[0] = v28;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = v32;
  v48[4] = v30;
  sub_25AF181DC(v2, v3, v29, v31, v6);
  v33 = sub_25AFD256C(v49, v48);
  sub_25AF2602C(v48, &qword_27FA266B0);
  sub_25AF2602C(v49, &qword_27FA266B0);
  if (v33)
  {
    sub_25AF18128(v2, v3, v29, v31, v6);
    sub_25AF18128(v46, v47, v45, v43, v10);
    v22 = 1;
    return v22 & 1;
  }

  if (!v42)
  {
    if (v6 > 0x3F)
    {
      v34 = v2;
      v35 = v3;
      v36 = v29;
      v37 = v31;
      v38 = v6;
      goto LABEL_31;
    }

    v22 = v46 == v2;
    return v22 & 1;
  }

  if (v42 != 1)
  {
    sub_25AF18128(v2, v3, v29, v31, v6);
    v34 = v46;
    v35 = v47;
    v36 = v45;
    goto LABEL_29;
  }

  if (!v27)
  {
LABEL_24:
    v34 = v46;
    v35 = v47;
    v36 = v45;
LABEL_29:
    v37 = v43;
LABEL_30:
    v38 = v10;
LABEL_31:
    sub_25AF18128(v34, v35, v36, v37, v38);
    v22 = 0;
    return v22 & 1;
  }

  if (v27 == 2)
  {
    sub_25AF18128(v2, v3, v29, v31, v6);
    goto LABEL_24;
  }

  sub_25AF18128(v2, v3, v29, v31, v6);
  result = sub_25B006164();
  __break(1u);
  return result;
}

uint64_t sub_25AFD1FEC()
{
  sub_25B005F24();

  v0 = sub_25B006124();
  MEMORY[0x25F85D7B0](v0);

  MEMORY[0x25F85D7B0](15913, 0xE200000000000000);
  MEMORY[0x25F85D7B0](0xD00000000000001BLL, 0x800000025B0198B0);
}

uint64_t sub_25AFD20B0()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (!(v2 >> 6))
  {
    MEMORY[0x25F85E0A0](0);
    return MEMORY[0x25F85E0A0](v1);
  }

  v3 = v0[1];
  v4 = v0[3];
  if (v2 >> 6 == 1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005DF4();
    MEMORY[0x25F85E0A0](v3);
    if (!v4)
    {
      return sub_25B0062B4();
    }

    sub_25B0062B4();
  }

  else
  {
    MEMORY[0x25F85E0A0](2);
    if (v2)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005994();
    }

    else
    {
      MEMORY[0x25F85E0A0](0);
      sub_25B005DF4();
    }
  }

  return sub_25B005994();
}

uint64_t sub_25AFD21EC()
{
  sub_25B006294();
  sub_25AFD20B0();
  return sub_25B0062D4();
}

uint64_t sub_25AFD2244()
{
  sub_25B006294();
  sub_25AFD20B0();
  return sub_25B0062D4();
}

uint64_t sub_25AFD22AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B0062F4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_25AFD44EC();
    sub_25B0061A4();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = 64;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25AFD2430(void *a1)
{
  v2 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B006314();
  if (v2 >> 6)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    if (v2 >> 6 == 1)
    {
      sub_25AFD4594();
    }

    else
    {
      sub_25AFD4540();
    }

    sub_25B0061C4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_25B0061B4();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_25AFD256C(uint64_t a1, uint64_t a2)
{
  sub_25AFD4278(a1, &v26);
  if (v27)
  {
    sub_25AF25F40(&v26, v29);
    sub_25AFD4278(a2, &v24);
    if (v25)
    {
      sub_25AF25F40(&v24, &v26);
      v3 = v30;
      v4 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v5 = (*(v4 + 8))(v3, v4);
      v7 = v6;
      v8 = v27;
      v9 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      v10 = (*(v9 + 8))(v8, v9);
      v12 = v11;
      if (v7)
      {
        if (!v11)
        {
          goto LABEL_21;
        }

        if (v5 == v10 && v7 == v11)
        {
        }

        else
        {
          v14 = sub_25B006174();

          v12 = 0;
          if ((v14 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else if (v11)
      {

        v12 = 0;
LABEL_22:
        __swift_destroy_boxed_opaque_existential_0Tm(&v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        return v12 & 1;
      }

      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v17 = (*(v16 + 16))(v15, v16);
      v19 = v18;
      v20 = v27;
      v21 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      if (v17 == (*(v21 + 16))(v20, v21) && v19 == v22)
      {

        v12 = 1;
        goto LABEL_22;
      }

      v12 = sub_25B006174();

LABEL_21:

      goto LABEL_22;
    }

    sub_25AF2602C(&v24, &qword_27FA266B0);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v12 = 0;
  }

  else
  {
    sub_25AF2602C(&v26, &qword_27FA266B0);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_25AFD27E0(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266A0);
  v20 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = a1[3];
  v13 = a1[4];
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_25AF181DC(v5, v6, v7, v8, v10);
  sub_25AFD37C8();
  sub_25B006324();
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v10;
  sub_25AFD3870();
  v11 = v14;
  sub_25B006104();
  sub_25AF18128(v15, v16, v17, v18, v19);
  return (*(v20 + 8))(v4, v11);
}

uint64_t sub_25AFD2970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26688);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AFD37C8();
  sub_25B006304();
  if (!v2)
  {
    sub_25AFD381C();
    sub_25B0060B4();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25AFD2AE8(uint64_t a1)
{
  v2 = sub_25AFD37C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AFD2B24(uint64_t a1)
{
  v2 = sub_25AFD37C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25AFD2B60()
{
  sub_25B006294();
  sub_25AFD20B0();
  return sub_25B0062D4();
}

uint64_t sub_25AFD2BF0()
{
  sub_25B006294();
  sub_25AFD20B0();
  return sub_25B0062D4();
}

BOOL sub_25AFD2C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (sub_25AFD38C4(v7, v9) & 1) == 0;
}

BOOL sub_25AFD2CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (sub_25AFD38C4(v9, v7) & 1) == 0;
}

uint64_t sub_25AFD2D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return sub_25AFD38C4(v7, v9) & 1;
}

uint64_t sub_25AFD2D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_25AF181DC(v17, v2, v3, v4, v9);
  sub_25AF181DC(v5, v6, v7, v8, v10);
  LOBYTE(v5) = sub_25AFD33F0(&v17, &v12);
  sub_25AF18128(v12, v13, v14, v15, v16);
  sub_25AF18128(v17, v18, v19, v20, v21);
  return v5 & 1;
}

uint64_t sub_25AFD2E1C()
{
  v1 = [*v0 extensionIdentity];
  v2 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28);
  if ((*(*(v3 - 8) + 48))(&v1[v2], 1, v3))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
  }

  v4 = sub_25B004294();
  swift_endAccess();

  return v4;
}

uint64_t sub_25AFD2F40()
{
  v1 = [*v0 kind];
  v2 = sub_25B005934();

  return v2;
}

unint64_t sub_25AFD2FA8()
{
  result = qword_27FA26678;
  if (!qword_27FA26678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26678);
  }

  return result;
}

unint64_t sub_25AFD3004()
{
  result = qword_27FA26680;
  if (!qword_27FA26680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26680);
  }

  return result;
}

void *sub_25AFD305C()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
  }

  else
  {
    v2 = v1;
    v3 = [v2 extensionIdentity];
    v4 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28);
    if ((*(*(v5 - 8) + 48))(&v3[v4], 1, v5))
    {
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
    }

    v1 = sub_25B004294();
    swift_endAccess();
  }

  return v1;
}

uint64_t sub_25AFD31AC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = *v0;
    v3 = [v2 kind];
    v1 = sub_25B005934();
  }

  return v1;
}

unint64_t sub_25AFD3228()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 >> 6)
  {
    v4 = *(v0 + 8);
    v3 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (v2 >> 6 == 1)
    {

      v1;
      sub_25B005F24();

      v8 = 0xD00000000000001ALL;
      v6 = GlanceControlID.description.getter();
    }

    else
    {
      sub_25AF18244(v1, v4, v3, v5, v2 & 1);
      sub_25B005F24();

      v8 = 0xD000000000000021;
      v6 = sub_25AF5B294();
    }

    MEMORY[0x25F85D7B0](v6);

    MEMORY[0x25F85D7B0](41, 0xE100000000000000);
    sub_25AF18128(v1, v4, v3, v5, v2);
    return v8;
  }

  else
  {
    sub_25B005F24();
    MEMORY[0x25F85D7B0](0xD000000000000019, 0x800000025B01A4F0);
    sub_25AFD1FEC();
    MEMORY[0x25F85D7B0](15913, 0xE200000000000000);
    return 0;
  }
}

uint64_t sub_25AFD33F0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v25[0] = *a1;
  v25[1] = v3;
  v25[2] = v4;
  v25[3] = v5;
  v26 = v6;
  v27 = v8;
  v28 = v7;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  if (!(v6 >> 6))
  {
    if (v11 <= 0x3F)
    {
      sub_25AF2602C(v25, &unk_27FA25590);
      v12 = v2 == v8;
      return v12 & 1;
    }

    goto LABEL_18;
  }

  if (v6 >> 6 != 1)
  {
    if ((v11 & 0xC0) != 0x80)
    {
      sub_25AF18244(v2, v3, v4, v5, v6 & 1);
      goto LABEL_18;
    }

    if (v6)
    {
      if (v11 & 1) != 0 && (v2 == v8 && v3 == v7 || (sub_25B006174()))
      {
        if (v4 == v9 && v5 == v10)
        {
          sub_25AF181DC(v8, v7, v4, v5, v11);
          sub_25AF181DC(v2, v3, v4, v5, v6);
          goto LABEL_28;
        }

        v22 = sub_25B006174();
        sub_25AF181DC(v8, v7, v9, v10, v11);
        sub_25AF181DC(v2, v3, v4, v5, v6);
        sub_25AF2602C(v25, &unk_27FA25590);
        if ((v22 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }
    }

    else if ((v11 & 1) == 0)
    {
      sub_25AF67FDC();
      sub_25AF181DC(v8, v7, v9, v10, v11);
      sub_25AF181DC(v2, v3, v4, v5, v6);
      if ((sub_25B005DE4() & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v3 == v7 && v4 == v9)
      {
LABEL_28:
        sub_25AF2602C(v25, &unk_27FA25590);
        v12 = 1;
        return v12 & 1;
      }

      v20 = sub_25B006174();
      sub_25AF2602C(v25, &unk_27FA25590);
      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_32:
      v12 = 1;
      return v12 & 1;
    }

    sub_25AF181DC(v8, v7, v9, v10, v11);
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    goto LABEL_19;
  }

  if ((v11 & 0xC0) != 0x40)
  {

    v13 = v2;
LABEL_18:
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = v11;
LABEL_19:
    sub_25AF181DC(v14, v15, v16, v17, v18);
LABEL_20:
    sub_25AF2602C(v25, &unk_27FA25590);
LABEL_21:
    v12 = 0;
    return v12 & 1;
  }

  v24[0] = v2;
  v24[1] = v3;
  v24[2] = v4;
  v24[3] = v5;
  v23[0] = v8;
  v23[1] = v7;
  v23[2] = v9;
  v23[3] = v10;
  sub_25AF181DC(v8, v7, v9, v10, v11);
  sub_25AF181DC(v2, v3, v4, v5, v6);
  sub_25AF181DC(v8, v7, v9, v10, v11);
  sub_25AF181DC(v2, v3, v4, v5, v6);
  v21 = v4;
  v12 = _s17NanoControlCenter06GlanceB2IDV2eeoiySbAC_ACtFZ_0(v24, v23);
  sub_25AF2602C(v25, &unk_27FA25590);
  sub_25AF18128(v8, v7, v9, v10, v11);
  sub_25AF18128(v2, v3, v21, v5, v6);
  return v12 & 1;
}

unint64_t sub_25AFD37C8()
{
  result = qword_27FA26690;
  if (!qword_27FA26690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26690);
  }

  return result;
}

unint64_t sub_25AFD381C()
{
  result = qword_27FA26698;
  if (!qword_27FA26698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26698);
  }

  return result;
}

unint64_t sub_25AFD3870()
{
  result = qword_27FA266A8;
  if (!qword_27FA266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266A8);
  }

  return result;
}

uint64_t sub_25AFD38C4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *(a2 + 32);
  if (!(v3 >> 6))
  {
    if (!(v5 >> 6))
    {
      v17 = v2 < v4;
      return v17 & 1;
    }

    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v3 >> 6 != 1)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    sub_25AF181DC(*a2, *(a2 + 8), v10, v11, v5);
    sub_25AF181DC(v2, v7, v6, v8, v3);
    sub_25AF181DC(v4, v9, v10, v11, v5);
    sub_25AF181DC(v2, v7, v6, v8, v3);
    v84 = v8;
    if (v3)
    {

      if ((v5 & 1) == 0)
      {
        v82 = v11;
        v78 = v9;

        v39 = [v4 kind];
        v40 = sub_25B005934();
        v42 = v41;

        if (v6 == v40 && v84 == v42)
        {
          v17 = 0;
          v43 = v84;
        }

        else
        {
          v43 = v84;
          v17 = sub_25B006174();
        }

        sub_25AF18128(v4, v78, v10, v82, v5);
        v52 = v2;
        v53 = v7;
        v54 = v6;
        v55 = v43;
        goto LABEL_58;
      }

      if (v6 == v10 && v8 == v11)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_25B006174();
      }

      v56 = v4;
      v57 = v9;
    }

    else
    {
      v81 = v11;

      v77 = v9;
      if ((v5 & 1) == 0)
      {
        v73 = v7;
        v71 = v10;

        v44 = [v2 kind];
        v45 = sub_25B005934();
        v47 = v46;

        v48 = [v4 kind];
        v49 = sub_25B005934();
        v51 = v50;

        if (v45 == v49 && v47 == v51)
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_25B006174();
        }

        v7 = v73;

        v56 = v4;
        v57 = v77;
        v58 = v71;
        v59 = v81;
        goto LABEL_54;
      }

      v18 = [v2 kind];
      v19 = sub_25B005934();
      v21 = v20;

      v22 = v19 == v10;
      v11 = v81;
      if (v22 && v81 == v21)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_25B006174();
      }

      v56 = v4;
      v57 = v77;
    }

    v58 = v10;
    v59 = v11;
LABEL_54:
    sub_25AF18128(v56, v57, v58, v59, v5);
    v52 = v2;
    v53 = v7;
    v54 = v6;
    v55 = v84;
    goto LABEL_58;
  }

  if (!(v5 >> 6))
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  if (v5 >> 6 != 1)
  {
LABEL_8:
    v17 = 1;
    return v17 & 1;
  }

  v76 = *(a2 + 8);
  v70 = *(a2 + 16);
  v80 = *(a2 + 24);
  sub_25AF181DC(*a2, v9, v10, v11, v5);
  v72 = v7;
  v74 = v6;
  v83 = v8;
  sub_25AF181DC(v2, v7, v6, v8, v3);
  v12 = v2;
  v79 = v4;
  v75 = v12;
  v13 = [v12 extensionIdentity];
  v14 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28);
  v16 = *(*(v15 - 8) + 48);
  if (v16(&v13[v14], 1, v15))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
  }

  v69 = sub_25B004294();
  v24 = v23;
  swift_endAccess();

  v25 = [v79 extensionIdentity];
  v26 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  if (v16(&v25[v26], 1, v15))
  {
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
  }

  v27 = sub_25B004294();
  v29 = v28;
  swift_endAccess();

  if ((v69 != v27 || v24 != v29) && (sub_25B006174() & 1) == 0 || ((, , v30 = [v75 kind], v31 = sub_25B005934(), v33 = v32, v30, v34 = objc_msgSend(v79, sel_kind), v35 = sub_25B005934(), v37 = v36, v34, v31 != v35) || v33 != v37) && (sub_25B006174() & 1) == 0)
  {
    v17 = sub_25B006174();

    sub_25AF18128(v4, v76, v70, v80, v5);
    v52 = v2;
    v53 = v72;
    v54 = v6;
    v55 = v83;
LABEL_58:
    sub_25AF18128(v52, v53, v54, v55, v3);
    return v17 & 1;
  }

  if (v83)
  {
    if (v80)
    {
      if (v6 == v70 && v83 == v80)
      {
        v17 = 0;
        v38 = v80;
      }

      else
      {
        v38 = v80;
        v17 = sub_25B006174();
      }

      sub_25AF18128(v4, v76, v70, v38, v5);
      v52 = v2;
      v53 = v72;
      v54 = v74;
      v55 = v83;
      goto LABEL_58;
    }

    sub_25AF18128(v4, v76, v70, 0, v5);
    v60 = v2;
    v61 = v72;
    v62 = v6;
    v63 = v83;
LABEL_65:
    sub_25AF18128(v60, v61, v62, v63, v3);
    v17 = 0;
    return v17 & 1;
  }

  if (!v80)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v65 = sub_25B0044C4();
    __swift_project_value_buffer(v65, qword_27FA30C28);
    v66 = sub_25B0044B4();
    v67 = sub_25B005CB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_25AF0B000, v66, v67, "Got two controls IDs with matching containerBundleIdentifiers and kinds, but no uniqueIdentifiers. This is likely due to a bug.", v68, 2u);
      MEMORY[0x25F85EC30](v68, -1, -1);
    }

    sub_25AF18128(v4, v76, v70, 0, v5);
    v60 = v2;
    v61 = v72;
    v62 = v74;
    v63 = 0;
    goto LABEL_65;
  }

  sub_25AF18128(v4, v76, v70, v80, v5);
  sub_25AF18128(v2, v72, v6, 0, v3);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_25AFD41F8()
{
  sub_25AF1818C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25AFD4238()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AFD4278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AFD42FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25AFD4354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_25AFD43E8()
{
  result = qword_27FA266B8;
  if (!qword_27FA266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266B8);
  }

  return result;
}

unint64_t sub_25AFD4440()
{
  result = qword_27FA266C0;
  if (!qword_27FA266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266C0);
  }

  return result;
}

unint64_t sub_25AFD4498()
{
  result = qword_27FA266C8;
  if (!qword_27FA266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266C8);
  }

  return result;
}

unint64_t sub_25AFD44EC()
{
  result = qword_27FA266D0;
  if (!qword_27FA266D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266D0);
  }

  return result;
}

unint64_t sub_25AFD4540()
{
  result = qword_27FA266D8;
  if (!qword_27FA266D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266D8);
  }

  return result;
}

unint64_t sub_25AFD4594()
{
  result = qword_27FA266E0;
  if (!qword_27FA266E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA266E0);
  }

  return result;
}

uint64_t sub_25AFD45F4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_17NanoControlCenter17ColorMatrixEffectV0dF0O(uint64_t *a1)
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

uint64_t sub_25AFD4688(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AFD46EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_25AFD473C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ColorMatrixEffect.ColorMatrixEffect(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy81_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ColorMatrixEffect.ColorMatrixEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColorMatrixEffect.ColorMatrixEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 65) = 0u;
    *(result + 52) = 0u;
    *(result + 36) = 0u;
    *(result + 20) = 0u;
    *(result + 4) = 0u;
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

  *(result + 81) = v3;
  return result;
}

uint64_t sub_25AFD4830(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AFD484C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    *(result + 80) = 1;
  }

  else
  {
    *(result + 80) = 0;
  }

  return result;
}

uint64_t sub_25AFD48A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266E8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25AFD4984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 96) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA266E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ColorMatrixEffect()
{
  result = qword_27FA266F0;
  if (!qword_27FA266F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AFD4A80()
{
  sub_25AFD4BE8(319, &qword_27FA249C8, type metadata accessor for ControlCenterStyle.VisualsModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25AFD4BE8(319, &qword_27FA26700, MEMORY[0x277CE0040], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_25AF4A5F0(319, &qword_27FA24270, &qword_27FA24278);
      if (v2 <= 0x3F)
      {
        sub_25AF4A5F0(319, &qword_27FA249D0, &qword_27FA249D8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AFD4BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_25AFD4C4C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  if (*(a1 + 80))
  {
    if (*(a1 + 16) | *(a1 + 8) | *a1 | *(a1 + 32) | *(a1 + 24) | *(a1 + 40) | *(a1 + 48) | *(a1 + 56) | *(a1 + 64) | *(a1 + 72))
    {
      if (a2[10])
      {
        return (v5 | v3 | v2 | v4 | v6 | v7 | v9 | v8 | v11 | v10) != 0;
      }
    }

    else if (a2[10])
    {
      return (v5 | v3 | v2 | v4 | v6 | v7 | v9 | v8 | v11 | v10) == 0;
    }

    return 0;
  }

  else
  {
    if (a2[10])
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_25B004534();
    }

    return v13 & 1;
  }
}

void sub_25AFD4DB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26708);
  MEMORY[0x28223BE20](v82);
  v76 = &v70 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26710);
  MEMORY[0x28223BE20](v87);
  v89 = &v70 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26718);
  MEMORY[0x28223BE20](v80);
  v81 = &v70 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26720);
  MEMORY[0x28223BE20](v88);
  v83 = &v70 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26728);
  MEMORY[0x28223BE20](v79);
  v78 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26730);
  MEMORY[0x28223BE20](v10);
  v90 = &v70 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26738);
  MEMORY[0x28223BE20](v92);
  v94 = &v70 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26740);
  MEMORY[0x28223BE20](v84);
  v86 = &v70 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26748);
  MEMORY[0x28223BE20](v85);
  v77 = &v70 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26750);
  MEMORY[0x28223BE20](v93);
  v16 = &v70 - v15;
  v17 = sub_25B004B14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v2;
  if (*v2 == 2)
  {
    if (!*(v2 + 96))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_21;
    }

    v91.i64[0] = v10;
    if (qword_27FA30B10)
    {
      v74.i32[0] = *(v2 + 89);
      v73.i32[0] = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable);
      v27 = type metadata accessor for ColorMatrixEffect();
      v28 = v2 + *(v27 + 40);
      v29 = *v28;
      v30 = *(v28 + 8) == 1;
      v75 = a1;
      v71 = v16;
      if (!v30)
      {

        sub_25B005CC4();
        v31 = sub_25B004F24();
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v29, 0);
        (*(v18 + 8))(v20, v17);
        LOBYTE(v29) = v97;
      }

      v32 = v2 + *(v27 + 44);
      v33 = *v32;
      if (*(v32 + 8) == 1)
      {
        LOBYTE(v97) = *v32;
      }

      else
      {

        sub_25B005CC4();
        v34 = sub_25B004F24();
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v33, 0);
        (*(v18 + 8))(v20, v17);
        LOBYTE(v33) = v97;
      }

      a1 = v75;
      v16 = v71;
      LOBYTE(v96[0]) = v33;
      v22 = sub_25AFA8BE8(v74.i8[0], v73.i8[0], v29, v96);
      v10 = v91.i64[0];
      goto LABEL_21;
    }
  }

  else
  {
    v22 = *v2;
    if (v21 != 1)
    {
      goto LABEL_21;
    }

    v75 = a1;
    if (!*(v2 + 96))
    {
      v22 = 0;
      a1 = v75;
      goto LABEL_21;
    }

    if (qword_27FA30B10)
    {
      v23 = v2 + *(type metadata accessor for ColorMatrixEffect() + 40);
      if ((*(v23 + 8) & 1) == 0)
      {
        v24 = *v23;

        sub_25B005CC4();
        v71 = v16;
        v25 = sub_25B004F24();
        v16 = v71;
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v24, 0);
        (*(v18 + 8))(v20, v17);
      }

      if (swift_weakLoadStrong())
      {
        v26 = [objc_opt_self() systemWhiteColor];

        a1 = v75;
        if (v26)
        {
          v22 = sub_25B005434();
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      v22 = 0;
      a1 = v75;
LABEL_21:
      v35 = *(v3 + 8);
      v36 = *(v3 + 16);
      v37 = *(v3 + 24);
      v38 = *(v3 + 40);
      v39 = *(v3 + 56);
      v40 = *(v3 + 72);
      if (*(v3 + 88))
      {
        v41 = v37.i64[0] | v36;
        v42 = vorrq_s8(v40, v39);
        *v37.i8 = vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
        v43 = vorrq_s8(v37, v38);
        if (v35 | vorrq_s8(v43, vdupq_laneq_s64(v43, 1)).u64[0] | v41)
        {
          LOBYTE(v97) = 1;
          sub_25AF49F2C(v21);
          v35 = 0;
          v36 = 0;
          v44 = v97;
          v45 = 0uLL;
          v46 = 0uLL;
          v47 = 0uLL;
          v48 = 0uLL;
        }

        else
        {
          sub_25AF49F2C(v21);
          if (qword_27FA23790 != -1)
          {
            swift_once();
          }

          v44 = 0;
          v36 = *(&xmmword_27FA30B70 + 1);
          v35 = xmmword_27FA30B70;
          v45 = xmmword_27FA30B80;
          v46 = xmmword_27FA30B90;
          v47 = xmmword_27FA30BA0;
          v48 = xmmword_27FA30BB0;
          LOBYTE(v97) = 0;
        }
      }

      else
      {
        LOBYTE(v97) = 0;
        v91 = v37;
        v74 = v38;
        v73 = v39;
        v72 = v40;
        sub_25AF49F2C(v21);
        v48 = v72;
        v47 = v73;
        v46 = v74;
        v45 = v91;
        v44 = v97;
      }

      if (*(v3 + 90) == 1)
      {
        if (v22)
        {
          v97 = v22;
        }

        else
        {
          if (v44)
          {
            goto LABEL_39;
          }

          v97 = v35;
          v98 = v36;
          v99 = v45;
          v100 = v46;
          v101 = v47;
          v102 = v48;
          sub_25AFC3B2C(&v97, v96);
        }

        v56 = sub_25B0046E4();
        if (v56)
        {
          v91.i64[0] = v10;
          sub_25B005B34();

          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758);
          v58 = v77;
          (*(*(v57 - 8) + 16))(v77, a1, v57);
          *(v58 + *(v85 + 36)) = v56;
          sub_25AF25FC4(v58, v86, &qword_27FA26748);
          swift_storeEnumTagMultiPayload();
          sub_25AFD62AC();
          sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
          sub_25B004C74();

          sub_25AF2602C(v58, &qword_27FA26748);
          goto LABEL_40;
        }

LABEL_39:
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758);
        (*(*(v59 - 8) + 16))(v86, a1, v59);
        swift_storeEnumTagMultiPayload();
        sub_25AFD62AC();
        sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
        sub_25B004C74();
LABEL_40:
        sub_25AF25FC4(v16, v94, &qword_27FA26750);
        swift_storeEnumTagMultiPayload();
        sub_25AFD61FC(&qword_27FA267A0, &qword_27FA26750, &unk_25B013940, sub_25AFD62AC);
        sub_25AFD61FC(&qword_27FA267C0, &qword_27FA26730, &unk_25B013920, sub_25AFD5FA8);
        sub_25B004C74();

        v60 = v16;
        v61 = &qword_27FA26750;
LABEL_46:
        sub_25AF2602C(v60, v61);
        return;
      }

      if (v22)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758);
        v50 = v22;
        v51 = v78;
        (*(*(v49 - 8) + 16))(v78, a1, v49);
        *(v51 + *(v79 + 36)) = v50;
        sub_25AF25FC4(v51, v81, &qword_27FA26728);
        swift_storeEnumTagMultiPayload();
        sub_25AFD6034();
        sub_25AFD6118();
        v91.i64[0] = v10;

        v52 = v83;
        sub_25B004C74();
        sub_25AF25FC4(v52, v89, &qword_27FA26720);
        swift_storeEnumTagMultiPayload();
        sub_25AFD5FA8();
        sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
        v53 = v90;
        sub_25B004C74();
        sub_25AF2602C(v52, &qword_27FA26720);
        v54 = v51;
        v55 = &qword_27FA26728;
      }

      else
      {
        if (v44)
        {
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758);
          (*(*(v62 - 8) + 16))(v89, a1, v62);
          swift_storeEnumTagMultiPayload();
          sub_25AFD5FA8();
          sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
          v53 = v90;
          sub_25B004C74();
LABEL_45:
          sub_25AF25FC4(v53, v94, &qword_27FA26730);
          swift_storeEnumTagMultiPayload();
          sub_25AFD61FC(&qword_27FA267A0, &qword_27FA26750, &unk_25B013940, sub_25AFD62AC);
          sub_25AFD61FC(&qword_27FA267C0, &qword_27FA26730, &unk_25B013920, sub_25AFD5FA8);
          sub_25B004C74();

          v60 = v53;
          v61 = &qword_27FA26730;
          goto LABEL_46;
        }

        v97 = v35;
        v98 = v36;
        v99 = v45;
        v100 = v46;
        v101 = v47;
        v102 = v48;
        sub_25AFC3B2C(&v97, v96);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26758);
        v64 = v76;
        (*(*(v63 - 8) + 16))(v76, a1, v63);
        v65 = (v64 + *(v82 + 36));
        v66 = v96[3];
        v65[2] = v96[2];
        v65[3] = v66;
        v65[4] = v96[4];
        v67 = v96[1];
        *v65 = v96[0];
        v65[1] = v67;
        sub_25AF25FC4(v64, v81, &qword_27FA26708);
        swift_storeEnumTagMultiPayload();
        sub_25AFD6034();
        sub_25AFD6118();
        v68 = v83;
        sub_25B004C74();
        sub_25AF25FC4(v68, v89, &qword_27FA26720);
        swift_storeEnumTagMultiPayload();
        sub_25AFD5FA8();
        sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
        v69 = v90;
        sub_25B004C74();
        v53 = v69;
        sub_25AF2602C(v68, &qword_27FA26720);
        v54 = v64;
        v55 = &qword_27FA26708;
      }

      sub_25AF2602C(v54, v55);
      goto LABEL_45;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_25AFD5FA8()
{
  result = qword_27FA26760;
  if (!qword_27FA26760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26720);
    sub_25AFD6034();
    sub_25AFD6118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26760);
  }

  return result;
}

unint64_t sub_25AFD6034()
{
  result = qword_27FA26768;
  if (!qword_27FA26768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26728);
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
    sub_25AF0F274(&qword_27FA26778, &qword_27FA26780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26768);
  }

  return result;
}

unint64_t sub_25AFD6118()
{
  result = qword_27FA26788;
  if (!qword_27FA26788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26708);
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
    sub_25AF0F274(&qword_27FA26790, &qword_27FA26798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA26788);
  }

  return result;
}

uint64_t sub_25AFD61FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AFD62AC()
{
  result = qword_27FA267A8;
  if (!qword_27FA267A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA26748);
    sub_25AF0F274(&qword_27FA26770, &qword_27FA26758);
    sub_25AF0F274(&qword_27FA267B0, &qword_27FA267B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA267A8);
  }

  return result;
}

unint64_t sub_25AFD6394()
{
  result = qword_27FA267C8;
  if (!qword_27FA267C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA267D0);
    sub_25AFD61FC(&qword_27FA267A0, &qword_27FA26750, &unk_25B013940, sub_25AFD62AC);
    sub_25AFD61FC(&qword_27FA267C0, &qword_27FA26730, &unk_25B013920, sub_25AFD5FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA267C8);
  }

  return result;
}

uint64_t sub_25AFD6478()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter23LegacyWalkieTalkieModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyWalkieTalkieModel()
{
  result = qword_27FA267E0;
  if (!qword_27FA267E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFD6570()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_25AFD6618()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B005924();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27FA267F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_25AFD6690()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

    byte_27FA267F8 = appleInternalInstallCapability;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static InternalSettingsModel.isInternalInstall.getter()
{
  if (qword_27FA237B0 != -1)
  {
    swift_once();
  }

  return byte_27FA267F8;
}

id static InternalSettingsModel.shouldShowWaterLock.getter()
{
  if (qword_27FA237B0 != -1)
  {
    swift_once();
  }

  if (byte_27FA267F8 != 1)
  {
    return 0;
  }

  if (qword_27FA237A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA267F0;
  v1 = sub_25B005924();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t InternalSettingsModel.observer.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InternalSettingsModel.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_25AFD6990;
}

void sub_25AFD6990(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

id InternalSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InternalSettingsModel.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id InternalSettingsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AFD6BC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25AFD6C1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC17NanoControlCenter21InternalSettingsModel_observer;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25AFD6CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25AF701DC(a3, v22 - v9);
  v11 = sub_25B005B64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25AF2602C(v10, &unk_27FA24790);
  }

  else
  {
    sub_25B005B54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25B005AE4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25B005984() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_25AF2602C(a3, &unk_27FA24790);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AF2602C(a3, &unk_27FA24790);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25AFD6F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25B0040A4();
  v75 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v68 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B004094();
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B004204();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = sub_25B005904();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA26840);
  MEMORY[0x28223BE20](v22 - 8);
  v76 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v74 = &v65 - v29;
  switch(a1)
  {
    case 0:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 1:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 2:
      v65 = v4;
      v67 = a2;
      v36 = sub_25B005924();
      v37 = SFLocalizableWAPIStringKeyForKey();

      sub_25B005934();
      sub_25B005914();
      if (qword_27FA237B8 != -1)
      {
        swift_once();
      }

      v38 = qword_27FA26808;
      sub_25B0041F4();
      v39 = *(v16 + 16);
      v66 = v15;
      v39(v18, v21, v15);
      v40 = v72;
      v41 = v73;
      (*(v72 + 16))(v71, v14, v73);
      v42 = [v38 bundleURL];
      sub_25B004124();

      (*(v70 + 104))(v9, *MEMORY[0x277CC9118], v69);
      sub_25B0040C4();
      (*(v40 + 8))(v14, v41);
      (*(v16 + 8))(v21, v66);
      v30 = v75;
      v43 = v65;
      (*(v75 + 56))(v26, 0, 1, v65);
      v44 = v26;
      v32 = v74;
      sub_25AFDB1D0(v44, v74);
      v45 = sub_25B005924();
      v46 = SFLocalizableWAPIStringKeyForKey();

      v33 = sub_25B005934();
      v34 = v47;

      v4 = v43;
      a2 = v67;
      goto LABEL_64;
    case 3:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 4:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 5:
    case 13:
    case 14:
    case 15:
    case 17:
    case 19:
    case 23:
    case 50:
      v30 = v75;
      (*(v75 + 56))(v26, 1, 1, v4, v28);
      v31 = v26;
      v32 = v74;
      sub_25AFDB1D0(v31, v74);
      v33 = 0;
      if (a1 <= 16)
      {
        if (a1 <= 13)
        {
          if (a1 != 5)
          {
            v34 = 0;
            v35 = v76;
            if (a1 == 13)
            {
              v34 = 0xE800000000000000;
              v33 = 0x6563617254205241;
            }

            goto LABEL_65;
          }

          goto LABEL_17;
        }

        if (a1 != 14)
        {
          v34 = 0;
          v35 = v76;
          if (a1 == 15)
          {
            v34 = 0xEC00000049552065;
            v33 = 0x76697469736E6553;
          }

          goto LABEL_65;
        }

        v33 = 0xD000000000000010;
        v59 = "Screen Recording";
LABEL_63:
        v34 = (v59 - 32) | 0x8000000000000000;
        goto LABEL_64;
      }

      if (a1 > 22)
      {
        if (a1 == 23)
        {
          v33 = 0xD000000000000010;
          v59 = "Screen Mirroring";
          goto LABEL_63;
        }

        v34 = 0;
        v35 = v76;
        if (a1 == 50)
        {
          v34 = 0xE90000000000003ELL;
          v33 = 0x6465766F6D65723CLL;
        }
      }

      else
      {
        if (a1 == 17)
        {
LABEL_17:
          v34 = 0xE90000000000003ELL;
          v33 = 0x6465766F6D65723CLL;
LABEL_64:
          v35 = v76;
          goto LABEL_65;
        }

        v34 = 0;
        v35 = v76;
        if (a1 == 19)
        {
          v34 = 0xEC00000072616461;
          v33 = 0x522D6F742D706154;
        }
      }

LABEL_65:
      sub_25AFDB1D0(v32, v35);
      if ((*(v30 + 48))(v35, 1, v4) != 1)
      {

        v61 = *(v30 + 32);
        v62 = v68;
        v61(v68, v35, v4);
        v61(a2, v62, v4);
        v60 = type metadata accessor for ButtonAXString();
        goto LABEL_69;
      }

      sub_25AF2602C(v35, &qword_27FA26840);
      if (v34)
      {
        *a2 = v33;
        a2[1] = v34;
        v60 = type metadata accessor for ButtonAXString();
LABEL_69:
        swift_storeEnumTagMultiPayload();
        return (*(*(v60 - 8) + 56))(a2, 0, 1, v60);
      }

      v64 = type metadata accessor for ButtonAXString();
      return (*(*(v64 - 8) + 56))(a2, 1, 1, v64);
    case 6:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 7:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 8:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 9:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 10:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_79;
    case 11:
      v67 = a2;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_58;
      }

LABEL_79:
      swift_once();
LABEL_58:
      v53 = qword_27FA26808;
      sub_25B0041F4();
      v54 = *(v16 + 16);
      v66 = v15;
      v54(v18, v21, v15);
      v55 = v72;
      (*(v72 + 16))(v71, v14, v73);
      v56 = [v53 bundleURL];
      sub_25B004124();

      (*(v70 + 104))(v9, *MEMORY[0x277CC9118], v69);
      sub_25B0040C4();
      (*(v55 + 8))(v14, v73);
      (*(v16 + 8))(v21, v66);
      v30 = v75;
      (*(v75 + 56))(v26, 0, 1, v4);
      goto LABEL_59;
    case 12:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 16:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 18:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 20:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 21:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 22:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 24:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 25:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_74;
    case 51:
      v30 = v75;
      (*(v75 + 56))(v26, 1, 1, v4, v28);
      v58 = v26;
      v32 = v74;
      sub_25AFDB1D0(v58, v74);
      v34 = 0xEA0000000000676ELL;
      v33 = 0x69676E615220494ELL;
      goto LABEL_64;
    case 100:
      v67 = a2;
      v65 = v4;
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_54;
      }

LABEL_74:
      swift_once();
LABEL_54:
      v48 = qword_27FA26808;
      sub_25B0041F4();
      v49 = *(v16 + 16);
      v66 = v15;
      v49(v18, v21, v15);
      v50 = v72;
      v51 = v73;
      (*(v72 + 16))(v71, v14, v73);
      v52 = [v48 bundleURL];
      sub_25B004124();

      (*(v70 + 104))(v9, *MEMORY[0x277CC9118], v69);
      sub_25B0040C4();
      (*(v50 + 8))(v14, v51);
      (*(v16 + 8))(v21, v66);
      v30 = v75;
      v4 = v65;
      (*(v75 + 56))(v26, 0, 1, v65);
LABEL_59:
      v57 = v26;
      v32 = v74;
      sub_25AFDB1D0(v57, v74);
      v33 = 0;
      v34 = 0;
      v35 = v76;
      a2 = v67;
      goto LABEL_65;
    default:
      type metadata accessor for LegacyButtonIdentifier(0);
      v77 = a1;
      sub_25B0061E4();
      __break(1u);
      JUMPOUT(0x25AFD88FCLL);
  }
}

uint64_t sub_25AFD8A90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_25B004094();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B004204();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_25B005904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  if (a1)
  {
    sub_25B0058F4();
    if (qword_27FA237B8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_25B0058F4();
  if (qword_27FA237B8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v20 = qword_27FA26808;
  sub_25B0041F4();
  (*(v14 + 16))(v16, v19, v13);
  (*(v7 + 16))(v9, v12, v6);
  v21 = [v20 bundleURL];
  sub_25B004124();

  (*(v23 + 104))(v5, *MEMORY[0x277CC9118], v24);
  sub_25B0040C4();
  (*(v7 + 8))(v12, v6);
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_25AFD8E8C@<X0>(unint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v91 = a5;
  v11 = sub_25B004094();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25B004204();
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v84 - v17;
  v19 = sub_25B005904();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v84 - v25;
  if (a1 <= 0x19)
  {
    if (((1 << a1) & 0x95E39A) != 0)
    {
      goto LABEL_3;
    }

    if (a1 == 2)
    {
      v50 = v24;
      swift_getKeyPath();
      v92 = v6;
      sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
      sub_25B004234();

      v51 = *(v6 + 40);
      if (v51 == 2)
      {
        LOBYTE(v51) = a2;
      }

      if ((v51 & 1) == 0)
      {
        v57 = v26;
        sub_25B0058F4();
        if (qword_27FA237B8 != -1)
        {
          swift_once();
        }

        v58 = qword_27FA26808;
        sub_25B0041F4();
        v59 = *(v20 + 16);
        v84 = v50;
        v59(v22, v26, v50);
        v61 = v89;
        v60 = v90;
        (*(v89 + 16))(v15, v18, v90);
        v62 = [v58 bundleURL];
        v63 = v86;
        sub_25B004124();

        (*(v87 + 104))(v63, *MEMORY[0x277CC9118], v88);
        v33 = v91;
        sub_25B0040C4();
        (*(v61 + 8))(v18, v60);
        (*(v20 + 8))(v57, v84);
        goto LABEL_9;
      }

      sub_25B0058F4();
      if (qword_27FA237B8 != -1)
      {
        swift_once();
      }

      v52 = qword_27FA26808;
      sub_25B0041F4();
      v27 = v50;
      (*(v20 + 16))(v22, v26, v50);
      v30 = v89;
      v29 = v90;
      (*(v89 + 16))(v15, v18, v90);
      v31 = [v52 bundleURL];
      v85 = v26;
LABEL_8:
      v32 = v86;
      sub_25B004124();

      (*(v87 + 104))(v32, *MEMORY[0x277CC9118], v88);
      v33 = v91;
      sub_25B0040C4();
      (*(v30 + 8))(v18, v29);
      (*(v20 + 8))(v85, v27);
LABEL_9:
      v34 = type metadata accessor for ButtonAXString();
LABEL_10:
      swift_storeEnumTagMultiPayload();
      v35 = *(*(v34 - 8) + 56);
      v36 = v33;
      return v35(v36, 0, 1, v34);
    }

    if (a1 == 25)
    {
      if ((a4 & 1) == 0)
      {
        v38 = a3;
        v39 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
        [v39 setNumberStyle_];
        sub_25B0041F4();
        v40 = sub_25B0041D4();
        (*(v89 + 8))(v18, v90);
        [v39 setLocale_];

        v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v42 = [v39 stringFromNumber_];

        if (v42)
        {
          v43 = sub_25B005934();
          v45 = v44;

          v33 = v91;
          *v91 = v43;
          v33[1] = v45;
          v34 = type metadata accessor for ButtonAXString();
          goto LABEL_10;
        }
      }

      goto LABEL_32;
    }
  }

  if (!a1)
  {
    if (a4)
    {
      v53 = 0;
      v54 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v64 = v24;
      v65 = a3;
      v66 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v66 setNumberStyle_];
      sub_25B0041F4();
      v67 = sub_25B0041D4();
      (*(v89 + 8))(v18, v90);
      [v66 setLocale_];

      v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v69 = [v66 stringFromNumber_];

      if (v69)
      {
        v53 = sub_25B005934();
        v54 = v70;
      }

      else
      {
        v53 = 0;
        v54 = 0;
      }

      v24 = v64;
      if ((a2 & 1) == 0)
      {
LABEL_30:
        if (v54)
        {
          v55 = v91;
          *v91 = v53;
          v55[1] = v54;
          v34 = type metadata accessor for ButtonAXString();
          swift_storeEnumTagMultiPayload();
          v35 = *(*(v34 - 8) + 56);
          v36 = v55;
          return v35(v36, 0, 1, v34);
        }

LABEL_32:
        v56 = type metadata accessor for ButtonAXString();
        return (*(*(v56 - 8) + 56))(v91, 1, 1, v56);
      }
    }

    if (v54)
    {
      v71 = qword_27FA237B8;

      if (v71 != -1)
      {
        swift_once();
      }

      sub_25B004014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25770);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_25B00A900;
      *(v72 + 56) = MEMORY[0x277D837D0];
      *(v72 + 64) = sub_25AFA0878();
      *(v72 + 32) = v53;
      *(v72 + 40) = v54;
      v73 = sub_25B005944();
      v75 = v74;

      v76 = v91;
      *v91 = v73;
      v76[1] = v75;
      v34 = type metadata accessor for ButtonAXString();
    }

    else
    {
      v77 = v24;
      sub_25B0058F4();
      if (qword_27FA237B8 != -1)
      {
        swift_once();
      }

      v78 = qword_27FA26808;
      sub_25B0041F4();
      v79 = *(v20 + 16);
      v84 = v77;
      v79(v22, v26, v77);
      v81 = v89;
      v80 = v90;
      (*(v89 + 16))(v15, v18, v90);
      v82 = [v78 bundleURL];
      v85 = v26;
      v83 = v86;
      sub_25B004124();

      (*(v87 + 104))(v83, *MEMORY[0x277CC9118], v88);
      v76 = v91;
      sub_25B0040C4();
      (*(v81 + 8))(v18, v80);
      (*(v20 + 8))(v85, v84);
      v34 = type metadata accessor for ButtonAXString();
    }

    swift_storeEnumTagMultiPayload();
    v35 = *(*(v34 - 8) + 56);
    v36 = v76;
    return v35(v36, 0, 1, v34);
  }

  if (a1 == 100)
  {
LABEL_3:
    v27 = v24;
    v85 = &v84 - v25;
    if (a2)
    {
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_25B0058F4();
      if (qword_27FA237B8 == -1)
      {
LABEL_7:
        v28 = qword_27FA26808;
        sub_25B0041F4();
        (*(v20 + 16))(v22, v26, v27);
        v30 = v89;
        v29 = v90;
        (*(v89 + 16))(v15, v18, v90);
        v31 = [v28 bundleURL];
        goto LABEL_8;
      }
    }

    swift_once();
    goto LABEL_7;
  }

  v46 = type metadata accessor for ButtonAXString();
  v47 = *(*(v46 - 8) + 56);
  v48 = v46;
  v49 = v91;

  return v47(v49, 1, 1, v48);
}

uint64_t sub_25AFD9B98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  swift_getKeyPath();
  v12 = v0;
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();

  if (*(v0 + 48))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25230);
    sub_25B005BF4();
  }

  v4 = sub_25B005B64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_25B005B34();

  v6 = sub_25B005B24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  v9 = sub_25AFD6CC8(0, 0, v3, &unk_25B013BB0, v7);
  return sub_25AFDA2C0(v9);
}

uint64_t sub_25AFD9DB4()
{
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();

  return *(v0 + 40);
}

uint64_t sub_25AFD9E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_25AFD9EFC(int a1)
{
  v2 = *(v1 + 40);
  if (v2 != 2)
  {
    if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
    sub_25B004224();
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 40) = a1;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();

  if (*(v1 + 40) != 2)
  {
    return sub_25AFD9B98();
  }

  return result;
}

uint64_t sub_25AFDA0B4(uint64_t a1, char a2)
{
  *(a1 + 40) = a2;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();

  if (*(a1 + 40) != 2)
  {
    return sub_25AFD9B98();
  }

  return result;
}

uint64_t sub_25AFDA170()
{
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();
}

uint64_t sub_25AFDA214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
  sub_25B004234();

  *a2 = *(v3 + 48);
}

uint64_t sub_25AFDA2C0(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFDB188(&qword_27FA26828, type metadata accessor for LegacyAccessibilityModel);
    sub_25B004224();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25230);
  v3 = sub_25B005BE4();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 48) = a1;
}

uint64_t sub_25AFDA45C()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter24LegacyAccessibilityModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyAccessibilityModel()
{
  result = qword_27FA26818;
  if (!qword_27FA26818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AFDA564()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}