void *sub_25880DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BC608();
  v11 = 1;
  sub_25880E028(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  v5 = MEMORY[0x277CE14B8];
  sub_25880EB00(__dst, &v8, &qword_27F95EE28, sub_25880E834, MEMORY[0x277CE14B8]);
  sub_25880EB70(v13, &qword_27F95EE28, sub_25880E834, v5);
  memcpy(&v10[7], __dst, 0x140uLL);
  v6 = v11;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  return memcpy((a2 + 17), v10, 0x147uLL);
}

uint64_t sub_25880E028@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = sub_2588BC6E8();
  v64 = 1;
  sub_25880E454(a1, v79);
  *&v63[7] = v79[0];
  *&v63[23] = v79[1];
  *&v63[39] = v79[2];
  *&v63[55] = v79[3];
  sub_2588BD5D8();
  sub_2588BC328();
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (*(a1 + 32))
  {
    v3 = sub_2588BD258();
    sub_2588BD5E8();
    sub_2588BC328();
    v4 = v65;
    v5 = v66;
    v6 = v67;
    v7 = v68;
    v8 = v69;
    v9 = v70;
    v10 = v71;
    v11 = v72;
    v12 = v73;
    v13 = v74;
    v14 = v75;
    v15 = v76;
    v16 = v77;
    v17 = v78;
  }

  v24 = v16;
  v25 = v12;
  v26 = v17;
  v27 = v11;
  v28 = v4;
  v32 = v30;
  v33[0] = 1;
  *&v33[17] = *&v63[16];
  *&v33[33] = *&v63[32];
  *&v33[49] = *&v63[48];
  *&v33[64] = *&v63[63];
  *&v33[1] = *v63;
  *&v33[168] = v62;
  *&v33[152] = v61;
  *&v33[136] = v60;
  *&v33[120] = v59;
  *&v33[72] = v56;
  *&v33[88] = v57;
  *&v33[104] = v58;
  __src[10] = *&v33[144];
  __src[11] = *&v33[160];
  __src[6] = *&v33[80];
  __src[7] = *&v33[96];
  __src[8] = *&v33[112];
  __src[9] = *&v33[128];
  __src[2] = *&v33[16];
  __src[3] = *&v33[32];
  __src[4] = *&v33[48];
  __src[5] = *&v33[64];
  __src[0] = v30;
  __src[1] = *v33;
  *&v34 = v3;
  *(&v34 + 1) = v4;
  *&v35 = v5;
  *(&v35 + 1) = v6;
  *&v36 = v7;
  *(&v36 + 1) = v8;
  *&v37 = v9;
  *(&v37 + 1) = v10;
  *&v38 = v11;
  *(&v38 + 1) = v12;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  *&v40 = v15;
  *(&v40 + 1) = v16;
  v41 = v17;
  *(&__src[16] + 8) = v38;
  *(&__src[17] + 8) = v39;
  *(&__src[18] + 8) = v40;
  *&__src[12] = *(&v62 + 1);
  *(&__src[19] + 1) = v17;
  *(&__src[15] + 8) = v37;
  *(&__src[14] + 8) = v36;
  *(&__src[13] + 8) = v35;
  *(&__src[12] + 8) = v34;
  v18 = v3;
  v19 = v5;
  v20 = v8;
  v21 = v13;
  memcpy(a2, __src, 0x140uLL);
  v42[0] = v18;
  v42[1] = v28;
  v42[2] = v19;
  v42[3] = v6;
  v42[4] = v7;
  v42[5] = v20;
  v42[6] = v9;
  v42[7] = v10;
  v42[8] = v27;
  v42[9] = v25;
  v42[10] = v21;
  v42[11] = v14;
  v42[12] = v15;
  v42[13] = v24;
  v42[14] = v26;
  sub_25880EA9C(&v32, v43);
  v22 = MEMORY[0x277D83D88];
  sub_25880EB00(&v34, v43, &qword_27F95EE40, sub_25880E998, MEMORY[0x277D83D88]);
  sub_25880EB70(v42, &qword_27F95EE40, sub_25880E998, v22);
  v43[0] = v30;
  v43[1] = 0;
  v44 = 1;
  v46 = *&v63[16];
  v47 = *&v63[32];
  *v48 = *&v63[48];
  *&v48[15] = *&v63[63];
  v45 = *v63;
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v55 = v62;
  v54 = v61;
  v53 = v60;
  v52 = v59;
  return sub_25880EBCC(v43);
}

uint64_t sub_25880E454@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1[2];
  v35 = a1[3];
  sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v8 = v7;
  sub_2588BCC08();
  v9 = sub_2588BCDD8();
  v30 = v10;
  v31 = v9;
  v29 = v11;
  v32 = v12;

  sub_2587B1CF8(v4, v6, v8 & 1);

  v34 = *a1;
  v36 = a1[1];

  v13 = sub_2588BCDF8();
  v15 = v14;
  LOBYTE(v6) = v16;
  sub_2588BCC08();
  v17 = sub_2588BCDD8();
  v19 = v18;
  LOBYTE(v4) = v20;

  sub_2587B1CF8(v13, v15, v6 & 1);

  v21 = [objc_opt_self() secondaryLabelColor];
  sub_2588BD148();
  v22 = sub_2588BCD88();
  v24 = v23;
  LOBYTE(v15) = v25;
  v27 = v26;

  sub_2587B1CF8(v17, v19, v4 & 1);

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v27;
  sub_2587A99B0(v31, v30, v29 & 1);

  sub_2587A99B0(v22, v24, v15 & 1);

  sub_2587B1CF8(v22, v24, v15 & 1);

  sub_2587B1CF8(v31, v30, v29 & 1);
}

uint64_t sub_25880E6A0()
{
  v3 = v0[1];
  v4 = v0[2];
  v2 = *v0;
  v5 = *(v0 + 6);
  sub_25880E780();
  sub_25880EA54(&qword_27F95EE58, sub_25880E780);

  return sub_2588BD318();
}

void sub_25880E780()
{
  if (!qword_27F95EE20)
  {
    sub_25880E934(255, &qword_27F95EE28, sub_25880E834, MEMORY[0x277CE14B8]);
    sub_25880E9F0(&qword_27F95EE50, &qword_27F95EE28, sub_25880E834);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EE20);
    }
  }
}

void sub_25880E834()
{
  if (!qword_27F95EE30)
  {
    sub_25880E8D4();
    sub_25880E934(255, &qword_27F95EE40, sub_25880E998, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95EE30);
    }
  }
}

void sub_25880E8D4()
{
  if (!qword_27F95EE38)
  {
    sub_2587A9ABC();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EE38);
    }
  }
}

void sub_25880E934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25880E998()
{
  if (!qword_27F95EE48)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EE48);
    }
  }
}

uint64_t sub_25880E9F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25880E934(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25880EA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25880EA9C(uint64_t a1, uint64_t a2)
{
  sub_25880E8D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880EB00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_25880E934(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_25880EB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_25880E934(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_25880EBCC(uint64_t a1)
{
  sub_25880E8D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25880EC28()
{
  if (!qword_27F95EE68[0])
  {
    sub_25880E780();
    sub_25880EA54(&qword_27F95EE58, sub_25880E780);
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, qword_27F95EE68);
    }
  }
}

void sub_25880ECC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2588BDA08();
  if (v2 <= 0x3F)
  {
    sub_2587B2F78();
    if (v3 <= 0x3F)
    {
      sub_2588BD488();
      if (v4 <= 0x3F)
      {
        sub_258810D18(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25880EDC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_2588BC298();
  v11 = *(*(v10 - 8) + 80);
  v12 = 8;
  v13 = *(v6 + 80);
  if (((v11 + 16) & ~v11) + *(*(v10 - 8) + 64) > 8)
  {
    v12 = ((v11 + 16) & ~v11) + *(*(v10 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v13 | 7;
  if (a2 <= v9)
  {
    goto LABEL_33;
  }

  v15 = v12 + ((*(v6 + 64) + (v11 | 7) - (((-17 - v13) | v13) + ((-41 - v13) | v14)) - 2) & ~(v11 | 7)) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v9 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v9 == 0x7FFFFFFF)
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }

      else
      {
        v24 = *(v6 + 48);

        return v24((v13 + ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13, v7, v5);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v9 + (v22 | v20) + 1;
}

void sub_25880F08C(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_2588BC298() - 8);
  v13 = *(v12 + 80);
  v14 = ((v13 + 16) & ~v13) + *(v12 + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 80);
  v17 = ((v16 + 16) & ~v16) + *(v8 + 64);
  v18 = v15 + ((((v16 + 40) & ~(v16 | 7)) + (v13 | 7) + v17) & ~(v13 | 7)) + 1;
  if (a3 <= v11)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v11 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v11 < a2)
  {
    v20 = ~v11 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_63:
              if (v19 == 2)
              {
                *(a1 + v18) = v21;
              }

              else
              {
                *(a1 + v18) = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v19)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v18) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  *(a1 + v18) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }
  }

  else
  {
    v25 = ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 16) & ~(v16 | 7));
    if (v10 >= a2)
    {
      v29 = *(v30 + 56);

      v29((v16 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v9, v7);
    }

    else
    {
      if (v17 <= 3)
      {
        v26 = ~(-1 << (8 * v17));
      }

      else
      {
        v26 = -1;
      }

      if (v17)
      {
        v27 = v26 & (~v10 + a2);
        if (v17 <= 3)
        {
          v28 = v17;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v17);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }
}

uint64_t sub_25880F4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2588BC598();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258810D18(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  sub_25880B950(v2 + *(a1 + 48), &v17 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258811004(v13, a2);
  }

  v15 = *v13;
  sub_2588BDBE8();
  v16 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25880F690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v99 = sub_2588BC9E8();
  v100 = *(v99 - 8);
  v3 = *(v100 + 64);
  v4 = MEMORY[0x28223BE20](v99);
  v94 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v107 = a1;
  v90 = *(a1 - 8);
  v92 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v89 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FB424();
  v95 = v8;
  v97 = *(v8 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258810BA0();
  v96 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v98 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = v81 - v15;
  v16 = *(a1 + 16);
  v88 = sub_2588BD488();
  v17 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v87 = v81 - v18;
  v19 = sub_2588BDA08();
  v20 = *(*(v6 + 24) + 16);
  v106 = *(v6 + 24);
  v21 = v106;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = sub_2588BDCE8();
  v24 = *(v21 + 8);
  v121 = v24;
  v81[0] = v24;
  WitnessTable = swift_getWitnessTable();
  v114 = MEMORY[0x277CE0BD8];
  v115 = v23;
  v116 = MEMORY[0x277CE0BC8];
  v117 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = swift_getWitnessTable();
  v28 = v16;
  v103 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v114 = v19;
  v115 = AssociatedTypeWitness;
  v116 = OpaqueTypeMetadata2;
  v117 = v27;
  v118 = AssociatedConformanceWitness;
  v30 = sub_2588BD4D8();
  v81[1] = v30;
  v31 = MEMORY[0x277CE0BD8];
  v114 = MEMORY[0x277CE0BD8];
  v115 = v23;
  v32 = MEMORY[0x277CE0BC8];
  v116 = MEMORY[0x277CE0BC8];
  v117 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v114 = v31;
  v115 = v28;
  v116 = v30;
  v117 = v32;
  v118 = v24;
  v119 = v33;
  v34 = sub_2588BD3B8();
  v82 = *(v34 - 8);
  v35 = *(v82 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = v81 - v36;
  v38 = sub_2588BC1E8();
  v83 = *(v38 - 8);
  v39 = *(v83 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v81 - v40;
  v42 = sub_2588BC1E8();
  v85 = *(v42 - 8);
  v43 = *(v85 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = v81 - v44;
  v84 = sub_2588BC1E8();
  v86 = *(v84 - 8);
  v46 = *(v86 + 64);
  v47 = MEMORY[0x28223BE20](v84);
  v102 = v81 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v104 = v81 - v49;
  v50 = v105;
  v51 = v105 + *(v107 + 44);
  sub_2588BD458();
  v52 = v50[1];
  v114 = *v50;
  v115 = v52;
  LOBYTE(v116) = 0;
  v117 = MEMORY[0x277D84F90];
  v108 = v103;
  v109 = v106;
  v110 = v50;

  sub_2588BD388();
  sub_2588BD5C8();
  v53 = swift_getWitnessTable();
  sub_2588BD058();
  (*(v82 + 8))(v37, v34);
  sub_2588BCB98();
  v113[6] = v53;
  v113[7] = MEMORY[0x277CDF678];
  v54 = swift_getWitnessTable();
  sub_2588BD0A8();
  (*(v83 + 8))(v41, v38);
  sub_2588BCBA8();
  v55 = MEMORY[0x277CDF918];
  v113[4] = v54;
  v113[5] = MEMORY[0x277CDF918];
  v56 = swift_getWitnessTable();
  v57 = v102;
  sub_2588BD0A8();
  (*(v85 + 8))(v45, v42);
  v113[2] = v56;
  v113[3] = v55;
  v58 = v84;
  v88 = swift_getWitnessTable();
  v59 = v57;
  sub_2587DCF7C(v57, v58, v88);
  v60 = v86;
  v61 = *(v86 + 8);
  v61(v59, v58);
  v62 = v90;
  v63 = v89;
  v64 = v107;
  (*(v90 + 16))(v89, v105, v107);
  v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v66 = swift_allocObject();
  v67 = v106;
  *(v66 + 16) = v103;
  *(v66 + 24) = v67;
  (*(v62 + 32))(v66 + v65, v63, v64);
  v68 = v91;
  sub_2588BD318();
  v69 = v94;
  sub_2588BC9D8();
  sub_258810F60(&qword_27F95E9D8, sub_2587FB424);
  sub_258810F60(&qword_27F95EF00, MEMORY[0x277CDE400]);
  v70 = v93;
  v71 = v95;
  v72 = v99;
  sub_2588BCE48();
  (*(v100 + 8))(v69, v72);
  (*(v97 + 8))(v68, v71);
  v73 = sub_2588BD1A8();
  KeyPath = swift_getKeyPath();
  v75 = v96;
  v76 = (v70 + *(v96 + 36));
  *v76 = KeyPath;
  v76[1] = v73;
  v77 = v102;
  v78 = v104;
  (*(v60 + 16))(v102, v104, v58);
  v114 = v77;
  v79 = v98;
  sub_25879C3C0(v70, v98);
  v115 = v79;
  v113[0] = v58;
  v113[1] = v75;
  v111 = v88;
  v112 = sub_258810E00();
  sub_25881C7E0(&v114, 2uLL, v113);
  sub_25879C424(v70);
  v61(v78, v58);
  sub_25879C424(v79);
  return (v61)(v77, v58);
}

uint64_t sub_258810284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a4;
  v6 = sub_2588BDA08();
  v22 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2588BDCE8();
  v37 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = v6;
  v23 = swift_getWitnessTable();
  v25 = AssociatedTypeWitness;
  v32 = v6;
  v33 = AssociatedTypeWitness;
  v34 = OpaqueTypeMetadata2;
  v35 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_2588BD4D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v31 = *(v28 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  v32 = MEMORY[0x277CE0BD8];
  v33 = v8;
  v34 = MEMORY[0x277CE0BC8];
  v35 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD4C8();
  v30 = OpaqueTypeConformance2;
  v19 = swift_getWitnessTable();
  sub_2587DCF7C(v14, v9, v19);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_2587DCF7C(v16, v9, v19);
  return (v20)(v16, v9);
}

uint64_t sub_25881059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v35 = a4;
  v6 = sub_2588BDCE8();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v40 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x277CE0BD8];
  v37 = v6;
  v38 = MEMORY[0x277CE0BC8];
  v39 = WitnessTable;
  v32 = &unk_2588CBCBC;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v30 = &v29 - v15;
  v36 = (*(a3 + 24))(a2, a3);
  v37 = v16;
  sub_25878F648();
  v17 = sub_2588BCDF8();
  v19 = v18;
  v36 = v17;
  v37 = v18;
  v21 = v20 & 1;
  LOBYTE(v38) = v20 & 1;
  v39 = v22;
  v23 = *(a2 - 8);
  (*(v23 + 16))(v9, v29, a2);
  (*(v23 + 56))(v9, 0, 1, a2);
  v24 = WitnessTable;
  sub_2587A8F0C(v9, 1, MEMORY[0x277CE0BD8], v6, MEMORY[0x277CE0BC8]);
  (*(v34 + 8))(v9, v6);
  sub_2587B1CF8(v17, v19, v21);

  v36 = MEMORY[0x277CE0BD8];
  v37 = v6;
  v38 = MEMORY[0x277CE0BC8];
  v39 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v30;
  sub_2587DCF7C(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v33 + 8);
  v27(v14, OpaqueTypeMetadata2);
  sub_2587DCF7C(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v27)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_258810910(uint64_t a1)
{
  v2 = sub_2588BC298();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258804A60(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  (*(a1 + 24))(v7);
  v11 = type metadata accessor for NanoPickerView();
  sub_25880F4B0(v11, v9);
  MEMORY[0x259C8C5A0](v5);
  sub_2588BC288();
  sub_2588BD438();
  return sub_258810FA8(v9);
}

uint64_t sub_258810A3C@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  sub_2588BD188();
  v8 = sub_2588BCD98();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2587B1CF8(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

void sub_258810BA0()
{
  if (!qword_27F95EEF0)
  {
    sub_258810C08();
    sub_25880B11C();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EEF0);
    }
  }
}

void sub_258810C08()
{
  if (!qword_27F95EEF8)
  {
    sub_2587FB424();
    sub_2588BC9E8();
    sub_258810F60(&qword_27F95E9D8, sub_2587FB424);
    sub_258810F60(&qword_27F95EF00, MEMORY[0x277CDE400]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EEF8);
    }
  }
}

void sub_258810D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258810D7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for NanoPickerView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_258810910(v4);
}

unint64_t sub_258810E00()
{
  result = qword_27F95EF08;
  if (!qword_27F95EF08)
  {
    sub_258810BA0();
    sub_2587FB424();
    sub_2588BC9E8();
    sub_258810F60(&qword_27F95E9D8, sub_2587FB424);
    sub_258810F60(&qword_27F95EF00, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_258810F60(&qword_27F95ECE8, sub_25880B11C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EF08);
  }

  return result;
}

uint64_t sub_258810F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258810FA8(uint64_t a1)
{
  sub_258804A60(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258811004(uint64_t a1, uint64_t a2)
{
  sub_258804A60(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258811084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for NanoConfirmationDeleteView()
{
  result = qword_27F95EF10;
  if (!qword_27F95EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258811148()
{
  sub_258811084(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258811084(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258812730(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258811284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258811084(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_25880B950(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258812B14(v12, a1, sub_258804A60);
  }

  v14 = *v12;
  sub_2588BDBE8();
  v15 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_258811474()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NanoConfirmationDeleteView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2588115C4@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2588BC6E8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_2588127C8();
  return sub_258811610(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_258811610@<X0>(void (*a1)(void, void, void)@<X0>, _OWORD *a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v53 = sub_2588BD748();
  v52 = *(v53 - 8);
  v2 = *(v52 + 64);
  v3 = MEMORY[0x28223BE20](v53);
  v61 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v46 - v5;
  v6 = type metadata accessor for NanoConfirmationDeleteView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_258811084(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  sub_2587FB424();
  v47 = v13;
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v46 - v17;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v18 = qword_27F95DA88;
  v19 = sub_2588BCDE8();
  v57 = v20;
  v58 = v19;
  v22 = v21;
  v59 = v23;
  KeyPath = swift_getKeyPath();
  v55 = v22 & 1;
  LOBYTE(v65[0]) = v22 & 1;
  sub_2588BBDC8();
  v24 = sub_2588BBDE8();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  v25 = v48;
  sub_258812A4C(v48, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoConfirmationDeleteView);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  sub_258812B14(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for NanoConfirmationDeleteView);
  v28 = v60;
  sub_2588BD308();
  sub_258812A4C(v25, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoConfirmationDeleteView);
  v29 = swift_allocObject();
  sub_258812B14(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v26, type metadata accessor for NanoConfirmationDeleteView);
  v30 = v54;
  sub_2588BD718();
  v31 = v50;
  v48 = *(v50 + 16);
  v32 = v49;
  v33 = v47;
  v48(v49, v28, v47);
  v34 = v52;
  v35 = *(v52 + 16);
  v36 = v53;
  v35(v61, v30, v53);
  *&v63 = v58;
  *(&v63 + 1) = v57;
  v64[0] = v55;
  *&v64[1] = *v62;
  *&v64[4] = *&v62[3];
  *&v64[8] = v59;
  *&v64[16] = KeyPath;
  *&v64[24] = 1;
  v64[26] = 1;
  v37 = v51;
  *(v51 + 27) = *&v64[11];
  v38 = *v64;
  *v37 = v63;
  v37[1] = v38;
  sub_258812648();
  v40 = v39;
  v48(v37 + *(v39 + 48), v32, v33);
  v41 = v37 + *(v40 + 64);
  v42 = v61;
  v35(v41, v61, v36);
  sub_258812A4C(&v63, v65, sub_2588126D0);
  v43 = *(v34 + 8);
  v43(v54, v36);
  v44 = *(v31 + 8);
  v44(v60, v33);
  v43(v42, v36);
  v44(v32, v33);
  v65[0] = v58;
  v65[1] = v57;
  v66 = v55;
  *v67 = *v62;
  *&v67[3] = *&v62[3];
  v68 = v59;
  v69 = KeyPath;
  v70 = 1;
  v71 = 1;
  return sub_258812AB4(v65, sub_2588126D0);
}

uint64_t sub_258811CB0(uint64_t a1)
{
  v2 = type metadata accessor for NanoConfirmationDeleteView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258811084(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_2588BDAA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_258812A4C(a1, v5, type metadata accessor for NanoConfirmationDeleteView);
  sub_2588BDA78();
  v11 = sub_2588BDA68();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_258812B14(v5, v13 + v12, type metadata accessor for NanoConfirmationDeleteView);
  sub_2587ABD24(0, 0, v9, &unk_2588C3718, v13);
}

uint64_t sub_258811EB4@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_258811F94()
{
  v0 = sub_2588BC298();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_258804A60(0);
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258811284(v6);
  MEMORY[0x259C8C5A0](v3);
  sub_2588BC288();
  sub_2588BD438();
  return sub_258812AB4(v6, sub_258804A60);
}

uint64_t sub_25881209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_2588BC298() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_258804A60(0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_2588BDA78();
  v4[9] = sub_2588BDA68();
  v9 = sub_2588BDA28();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_258812190, v9, v8);
}

uint64_t sub_258812190()
{
  v1 = v0[5];
  v0[12] = sub_258811474();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_258812230;

  return MedicalIDDataManager.delete()();
}

uint64_t sub_258812230(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 34) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_25881237C, v6, v5);
}

uint64_t sub_25881237C()
{
  v1 = *(v0 + 34);
  v2 = *(v0 + 72);

  if (v1 == 1)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_258811284(v3);
    MEMORY[0x259C8C5A0](v4);
    sub_2588BC288();
    sub_2588BD438();
    sub_258812AB4(v3, sub_258804A60);
    v7 = (v6 + *(type metadata accessor for NanoConfirmationDeleteView() + 24));
    v8 = *v7;
    v9 = v7[1];
    LOBYTE(v7) = *(v7 + 16);
    *(v0 + 16) = v8;
    *(v0 + 24) = v9;
    *(v0 + 32) = v7;
    *(v0 + 33) = 1;
    sub_258812730(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    sub_2588BD438();
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2588124CC()
{
  sub_2588BCB68();
  sub_258812580();
  sub_258812780(&qword_27F95EF48, sub_258812580);
  return sub_2588BBEE8();
}

void sub_258812580()
{
  if (!qword_27F95EF20)
  {
    sub_258812614(255);
    sub_258812780(&qword_27F95EF40, sub_258812614);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF20);
    }
  }
}

void sub_258812648()
{
  if (!qword_27F95EF30)
  {
    sub_2588126D0();
    sub_2587FB424();
    sub_2588BD748();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EF30);
    }
  }
}

void sub_2588126D0()
{
  if (!qword_27F95EF38)
  {
    sub_2587E5DE8();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF38);
    }
  }
}

void sub_258812730(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258812780(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2588127C8()
{
  if (!qword_27F95EF50)
  {
    sub_258812614(255);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF50);
    }
  }
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for NanoConfirmationDeleteView();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_258811084(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v3 + 1);

    sub_258804A60(0);
    v8 = *(v7 + 32);
    v9 = sub_2588BC298();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  v10 = *&v3[*(v1 + 20)];

  v11 = &v3[*(v1 + 24)];
  v12 = *v11;

  v13 = *(v11 + 1);

  return swift_deallocObject();
}

uint64_t sub_2588129D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoConfirmationDeleteView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_258812A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258812AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258812B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258812B7C(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoConfirmationDeleteView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_25881209C(a1, v6, v7, v1 + v5);
}

void sub_258812C6C()
{
  if (!qword_27F95EF60)
  {
    sub_258812580();
    sub_258812780(&qword_27F95EF48, sub_258812580);
    v0 = sub_2588BBED8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF60);
    }
  }
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_258812D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258812D7C(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_258812E0C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v37[6] = *(v1 + 96);
  v37[7] = v3;
  v38 = *(v1 + 128);
  v4 = *(v1 + 48);
  v37[2] = *(v1 + 32);
  v37[3] = v4;
  v5 = *(v1 + 80);
  v37[4] = *(v1 + 64);
  v37[5] = v5;
  v6 = *(v1 + 16);
  v37[0] = *v1;
  v37[1] = v6;
  v7 = sub_2588BC6F8();
  v36 = 1;
  sub_25881308C(v37, &v20);
  v51 = v32;
  v52 = v33;
  v53 = v34;
  v47 = v28;
  v48 = v29;
  v50 = v31;
  v49 = v30;
  v43 = v24;
  v44 = v25;
  v46 = v27;
  v45 = v26;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v54[12] = v32;
  v54[13] = v33;
  v54[14] = v34;
  v54[8] = v28;
  v54[9] = v29;
  v54[11] = v31;
  v54[10] = v30;
  v54[4] = v24;
  v54[5] = v25;
  v54[7] = v27;
  v54[6] = v26;
  v54[0] = v20;
  v54[1] = v21;
  v54[3] = v23;
  v54[2] = v22;
  sub_2588144EC(&v39, v19);
  sub_25881456C(v54);
  *&v35[183] = v50;
  *&v35[199] = v51;
  *&v35[215] = v52;
  *&v35[231] = v53;
  *&v35[119] = v46;
  *&v35[135] = v47;
  *&v35[151] = v48;
  *&v35[167] = v49;
  *&v35[55] = v42;
  *&v35[71] = v43;
  *&v35[87] = v44;
  *&v35[103] = v45;
  *&v35[7] = v39;
  *&v35[23] = v40;
  *&v35[39] = v41;
  v8 = v36;
  sub_2588BD5C8();
  sub_2588BC328();
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  v9 = *&v35[208];
  *(a1 + 209) = *&v35[192];
  *(a1 + 225) = v9;
  *(a1 + 241) = *&v35[224];
  *(a1 + 256) = *&v35[239];
  v10 = *&v35[144];
  *(a1 + 145) = *&v35[128];
  *(a1 + 161) = v10;
  v11 = *&v35[176];
  *(a1 + 177) = *&v35[160];
  *(a1 + 193) = v11;
  v12 = *&v35[80];
  *(a1 + 81) = *&v35[64];
  *(a1 + 97) = v12;
  v13 = *&v35[112];
  *(a1 + 113) = *&v35[96];
  *(a1 + 129) = v13;
  v14 = *&v35[16];
  *(a1 + 17) = *v35;
  *(a1 + 33) = v14;
  v15 = *&v35[48];
  *(a1 + 49) = *&v35[32];
  *(a1 + 65) = v15;
  v16 = v25;
  *(a1 + 328) = v24;
  *(a1 + 344) = v16;
  *(a1 + 360) = v26;
  v17 = v21;
  *(a1 + 264) = v20;
  *(a1 + 280) = v17;
  result = v23;
  *(a1 + 296) = v22;
  *(a1 + 312) = result;
  return result;
}

uint64_t sub_25881308C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[11];
  if (a1[1])
  {
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = a1[10];
  *&v104[0] = v4;
  *(&v104[0] + 1) = v5;
  sub_2588144B4(a1, &v111);
  sub_25878F648();

  v7 = sub_2588BCDF8();
  v52 = v8;
  v53 = v7;
  v10 = v9;
  v54 = v11;
  *(&v51 + 1) = sub_2588BCCC8();
  *&v51 = swift_getKeyPath();
  *(&v50 + 1) = sub_2588BD1D8();
  *&v50 = swift_getKeyPath();
  v49 = v10 & 1;
  v119 = v10 & 1;
  if (v3)
  {
    *&v111 = v6;
    *(&v111 + 1) = v3;
    strcpy(v104, "[^A-Za-z0-9]+");
    HIWORD(v104[0]) = -4864;
    v55 = 0;
    v56 = 0xE000000000000000;
    v12 = sub_2588BDD08();
    v14 = v13;
    sub_2588145E4(a1);
  }

  else
  {
    sub_2588145E4(a1);
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  *&v111 = v12;
  *(&v111 + 1) = v14;
  v15 = sub_2588BCDF8();
  v45 = v16;
  v46 = v15;
  v18 = v17;
  v44 = v19;
  *(&v43 + 1) = sub_2588BCCC8();
  *&v43 = swift_getKeyPath();
  *(&v42 + 1) = sub_2588BD1E8();
  *&v42 = swift_getKeyPath();
  v41 = v18 & 1;
  v110 = v18 & 1;
  v40 = sub_2588BC608();
  LOBYTE(v104[0]) = 1;
  sub_2588135B4(a1, &v111);
  v20 = v111;
  v21 = v112;
  v22 = BYTE8(v112);
  v23 = v113;
  v39 = v114;
  LOBYTE(v55) = BYTE8(v112);
  LOBYTE(v105[0]) = v114;
  v24 = sub_2588BCCC8();
  KeyPath = swift_getKeyPath();
  *(&v47 + 1) = sub_2588BD1E8();
  v83 = v40;
  v84[0] = 1;
  *&v84[8] = v20;
  *&v84[24] = v21;
  v85[0] = v22;
  *&v85[8] = v23;
  v85[24] = v39;
  *&v86 = KeyPath;
  *(&v86 + 1) = v24;
  *&v47 = swift_getKeyPath();
  v79 = *&v84[16];
  v80 = *v85;
  v81 = *&v85[16];
  v82 = v86;
  v77 = v40;
  v78 = *v84;
  v87[0] = v40;
  v87[1] = 0;
  v88 = 1;
  v89 = v20;
  v90 = v21;
  v91 = v22;
  v92 = v23;
  v93 = v39;
  v94 = KeyPath;
  v95 = v24;
  sub_258814614(&v83, &v111, sub_25881413C);
  sub_25881467C(v87, sub_25881413C);
  *&v96 = v53;
  *(&v96 + 1) = v52;
  LOBYTE(v97) = v49;
  *(&v97 + 1) = *v118;
  DWORD1(v97) = *&v118[3];
  *(&v97 + 1) = v54;
  v98 = v51;
  v99 = v50;
  v64 = v51;
  v65 = v50;
  v62 = v96;
  v63 = v97;
  *&v100 = v46;
  *(&v100 + 1) = v45;
  LOBYTE(v101) = v41;
  *(&v101 + 1) = v44;
  v102 = v43;
  v103 = v42;
  v68 = v43;
  v69 = v42;
  v66 = v100;
  v67 = v101;
  v26 = v78;
  v104[0] = v40;
  v104[1] = v78;
  v27 = v81;
  v28 = v82;
  v104[5] = v82;
  v104[4] = v81;
  v29 = v79;
  v30 = v80;
  v104[2] = v79;
  v104[3] = v80;
  v104[6] = v47;
  v70 = v40;
  v71 = v78;
  v76 = v47;
  v74 = v81;
  v75 = v82;
  v72 = v79;
  v73 = v80;
  v31 = v97;
  *a2 = v96;
  a2[1] = v31;
  v32 = v67;
  a2[4] = v66;
  a2[5] = v32;
  v33 = v65;
  a2[2] = v64;
  a2[3] = v33;
  v34 = v71;
  a2[8] = v70;
  a2[9] = v34;
  v35 = v69;
  a2[6] = v68;
  a2[7] = v35;
  v36 = v76;
  a2[13] = v75;
  a2[14] = v36;
  v37 = v74;
  a2[11] = v73;
  a2[12] = v37;
  a2[10] = v72;
  v113 = v29;
  v114 = v30;
  v115 = v27;
  v116 = v28;
  v111 = v40;
  v112 = v26;
  v117 = v47;
  sub_258814614(&v96, &v55, sub_258813FA8);
  sub_258814614(&v100, &v55, sub_258813FA8);
  sub_258814614(v104, &v55, sub_258814098);
  sub_25881467C(&v111, sub_258814098);
  v105[0] = v46;
  v105[1] = v45;
  v106 = v41;
  v107 = v44;
  v108 = v43;
  v109 = v42;
  sub_25881467C(v105, sub_258813FA8);
  v55 = v53;
  v56 = v52;
  v57 = v49;
  *v58 = *v118;
  *&v58[3] = *&v118[3];
  v59 = v54;
  v60 = v51;
  v61 = v50;
  return sub_25881467C(&v55, sub_258813FA8);
}

uint64_t sub_2588135B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BD258();
  if (*(a1 + 56))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
  }

  sub_25878F648();

  v7 = sub_2588BCDF8();
  v9 = v8;
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v11 = v10 & 1;
  *(a2 + 24) = v10 & 1;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;

  sub_2587A99B0(v7, v9, v11);

  sub_2587B1CF8(v7, v9, v11);
}

uint64_t sub_2588136BC@<X0>(uint64_t a1@<X8>)
{
  sub_258814828(0, &qword_27F95EF68, MEMORY[0x277CE0330]);
  v45 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v39 - v5;
  v7 = sub_2588BC278();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258813DD0();
  v12 = v11;
  v42 = *(v11 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258813CCC();
  v46 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v1 + 128);
  v21 = *(v1 + 112);
  v52[6] = *(v1 + 96);
  v52[7] = v21;
  v22 = *(v1 + 48);
  v52[2] = *(v1 + 32);
  v52[3] = v22;
  v23 = *(v1 + 80);
  v52[4] = *(v1 + 64);
  v52[5] = v23;
  v24 = *(v1 + 16);
  v52[0] = *v1;
  v52[1] = v24;
  if (v53)
  {
    v40 = v17;
    v25 = swift_allocObject();
    v41 = a1;
    *(v25 + 144) = *(v1 + 128);
    v26 = *(v1 + 112);
    *(v25 + 112) = *(v1 + 96);
    *(v25 + 128) = v26;
    v27 = *(v1 + 48);
    *(v25 + 48) = *(v1 + 32);
    *(v25 + 64) = v27;
    v28 = *(v1 + 80);
    *(v25 + 80) = *(v1 + 64);
    *(v25 + 96) = v28;
    v29 = *(v1 + 16);
    *(v25 + 16) = *v1;
    *(v25 + 32) = v29;
    MEMORY[0x28223BE20](v25);
    v39[-2] = v52;
    sub_2588144B4(v52, v51);
    sub_258813E34();
    v39[0] = v30;
    v39[1] = sub_258814368();
    sub_2588BD318();
    sub_2588BC268();
    v31 = sub_258814418(&qword_27F95EFF8, sub_258813DD0);
    v32 = sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18]);
    v33 = v44;
    sub_2588BCE48();
    (*(v43 + 8))(v10, v33);
    (*(v42 + 8))(v15, v12);
    v34 = v40;
    v35 = v46;
    (*(v40 + 16))(v6, v20, v46);
    swift_storeEnumTagMultiPayload();
    v51[0] = v12;
    v51[1] = v33;
    v51[2] = v31;
    v51[3] = v32;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return (*(v34 + 8))(v20, v35);
  }

  else
  {
    sub_258812E0C(v51);
    memcpy(v6, v51, 0x178uLL);
    swift_storeEnumTagMultiPayload();
    sub_258813E34();
    v37 = sub_258814418(&qword_27F95EFF8, sub_258813DD0);
    v38 = sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18]);
    v47 = v12;
    v48 = v44;
    v49 = v37;
    v50 = v38;
    swift_getOpaqueTypeConformance2();
    sub_258814368();
    return sub_2588BC778();
  }
}

void sub_258813C34(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = *(a1 + 48);
    v2 = objc_opt_self();
    v3 = sub_2588BD868();
    [v2 callEmergencyContact_];
  }
}

void sub_258813CCC()
{
  if (!qword_27F95EF70)
  {
    sub_258813DD0();
    sub_2588BC278();
    sub_258814418(&qword_27F95EFF8, sub_258813DD0);
    sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EF70);
    }
  }
}

void sub_258813DD0()
{
  if (!qword_27F95EF78)
  {
    sub_258813E34();
    sub_258814368();
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF78);
    }
  }
}

void sub_258813E34()
{
  if (!qword_27F95EF80)
  {
    sub_258813E94();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF80);
    }
  }
}

void sub_258813E94()
{
  if (!qword_27F95EF88)
  {
    sub_25881425C(255, &qword_27F95EF90, sub_258813F34);
    sub_258814318(&qword_27F95EFE0, &qword_27F95EF90, sub_258813F34);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EF88);
    }
  }
}

void sub_258813F34()
{
  if (!qword_27F95EF98)
  {
    sub_258813FA8(255);
    sub_258814098(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EF98);
    }
  }
}

void sub_258813FC8()
{
  if (!qword_27F95EFA8)
  {
    sub_258814040(255, &qword_27F95D998, &qword_27F95D9A0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EFA8);
    }
  }
}

void sub_258814040(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2587FC7CC(255, a3);
    v4 = sub_2588BCA88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2588140B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258814040(255, &qword_27F95ECD0, &qword_27F95ECD8);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25881413C()
{
  if (!qword_27F95EFB8)
  {
    sub_2588141BC();
    sub_258814040(255, &qword_27F95D998, &qword_27F95D9A0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EFB8);
    }
  }
}

void sub_2588141BC()
{
  if (!qword_27F95EFC0)
  {
    sub_25881425C(255, &qword_27F95EFC8, sub_2588142B0);
    sub_258814318(&qword_27F95EFD8, &qword_27F95EFC8, sub_2588142B0);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EFC0);
    }
  }
}

void sub_25881425C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD658();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2588142B0()
{
  if (!qword_27F95EFD0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EFD0);
    }
  }
}

uint64_t sub_258814318(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25881425C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258814368()
{
  result = qword_27F95EFE8;
  if (!qword_27F95EFE8)
  {
    sub_258813E34();
    sub_258814418(&qword_27F95EFF0, sub_258813E94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EFE8);
  }

  return result;
}

uint64_t sub_258814418(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_258814468@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_258812E0C(__src);
  return memcpy(a1, __src, 0x178uLL);
}

uint64_t sub_2588144EC(uint64_t a1, uint64_t a2)
{
  sub_25881425C(0, &qword_27F95EF90, sub_258813F34);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25881456C(uint64_t a1)
{
  sub_25881425C(0, &qword_27F95EF90, sub_258813F34);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258814614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25881467C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2588146DC()
{
  result = qword_27F95F000;
  if (!qword_27F95F000)
  {
    sub_258814828(255, &qword_27F95F008, MEMORY[0x277CE0338]);
    sub_258813DD0();
    sub_2588BC278();
    sub_258814418(&qword_27F95EFF8, sub_258813DD0);
    sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_258814368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F000);
  }

  return result;
}

void sub_258814828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258813CCC();
    v7 = v6;
    sub_258813E34();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for NanoMedicalIDDataView()
{
  result = qword_27F95F010;
  if (!qword_27F95F010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25881490C()
{
  type metadata accessor for MedicalIDDataViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDModelProvider();
    if (v1 <= 0x3F)
    {
      sub_2588164BC(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2588149E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  sub_25881658C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881650C();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v35 - v11;
  v12 = sub_2588BC868();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  sub_25881608C();
  v15 = v14;
  v37 = *(v14 - 8);
  v16 = v37;
  v17 = *(v37 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  sub_2588BC6F8();
  v43 = a1;
  v44 = 0;
  sub_258816F8C(&qword_27F95DB70, MEMORY[0x277CE0428]);
  sub_2588BE0D8();
  sub_258816120(0);
  sub_258816F8C(&qword_27F95F080, sub_258816120);
  v36 = v22;
  sub_2588BBEA8();
  sub_2588155CC(a1, v6);
  sub_258816674();
  v23 = v42;
  sub_2588BC118();
  v24 = *(v16 + 16);
  v35 = v20;
  v24(v20, v22, v15);
  v25 = v38;
  v26 = v39;
  v27 = *(v39 + 16);
  v28 = v23;
  v29 = v40;
  v27(v38, v28, v40);
  v30 = v41;
  v24(v41, v20, v15);
  sub_25881637C(0, &qword_27F95F030, sub_25881608C, sub_25881650C);
  v27(&v30[*(v31 + 48)], v25, v29);
  v32 = *(v26 + 8);
  v32(v42, v29);
  v33 = *(v37 + 8);
  v33(v36, v15);
  v32(v25, v29);
  return (v33)(v35, v15);
}

uint64_t sub_258814E3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v66 = sub_2588BD4A8();
  v77 = *(v66 - 8);
  v3 = v77[8];
  v4 = MEMORY[0x28223BE20](v66);
  v80 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v59 - v6;
  v7 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588161E8();
  v73 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v84 = a1;
  v18 = sub_2587BC3F8(sub_258816BDC, v83, &unk_2869BCC68);
  v82 = a1;
  v92 = sub_2587EE62C(sub_258816C44, v81, v18);
  swift_getKeyPath();
  sub_2588162B0(0);
  sub_2588162E4(0);
  sub_258816F8C(&qword_27F95F070, sub_2588162B0);
  sub_2587A815C();
  sub_258816F8C(&qword_27F95F0D0, sub_2588162E4);
  v76 = v17;
  sub_2588BD4B8();
  if (qword_27F95D0B0 != -1)
  {
    swift_once();
  }

  v64 = qword_27F9697B8;
  v70 = unk_27F9697C0;
  v19 = *(a1 + *(type metadata accessor for NanoMedicalIDDataView() + 20));

  sub_2587B5F90(v10);
  locked = MedicalIDSettingsViewModel.showWhenLockedDetail.getter();
  v22 = v21;
  sub_258816D58(v10, type metadata accessor for MedicalIDSettingsViewModel);
  v92 = locked;
  v93 = v22;
  sub_25878F648();
  v23 = sub_2588BCDF8();
  v67 = v23;
  v68 = v24;
  v26 = v25;
  v62 = v27;
  v28 = v78;
  sub_2588BD498();
  v92 = sub_2587B8E1C();
  v93 = v29;
  v75 = sub_2588BCDF8();
  v59 = v30;
  v32 = v31;
  v61 = v33;
  v60 = sub_2588BCCC8();
  KeyPath = swift_getKeyPath();
  v74 = sub_2588BD1E8();
  v72 = swift_getKeyPath();
  v69 = v32 & 1;
  LOBYTE(v92) = v32 & 1;
  v63 = v12;
  v34 = *(v12 + 16);
  v35 = v79;
  v36 = v73;
  v34(v79, v76, v73);
  v86 = 1;
  v85 = v26 & 1;
  v37 = v36;
  v38 = v77[2];
  v39 = v80;
  v40 = v66;
  v38(v80, v28, v66);
  v41 = v65;
  v34(v65, v35, v37);
  sub_258816154();
  v43 = v42;
  v44 = &v41[*(v42 + 48)];
  v45 = v86;
  v46 = v85;
  v47 = v70;
  *v44 = v64;
  *(v44 + 1) = v47;
  v44[16] = v45;
  v48 = v68;
  *(v44 + 3) = v23;
  *(v44 + 4) = v48;
  v44[40] = v46;
  *(v44 + 6) = v62;
  v38(&v41[*(v42 + 64)], v39, v40);
  v49 = &v41[*(v43 + 80)];
  v50 = v59;
  *&v88 = v75;
  *(&v88 + 1) = v59;
  LOBYTE(v89) = v69;
  *(&v89 + 1) = *v87;
  DWORD1(v89) = *&v87[3];
  v51 = v61;
  *(&v89 + 1) = v61;
  *&v90 = KeyPath;
  v52 = v60;
  *(&v90 + 1) = v60;
  *&v91 = v72;
  *(&v91 + 1) = v74;
  v53 = v91;
  *(v49 + 2) = v90;
  *(v49 + 3) = v53;
  v54 = v89;
  *v49 = v88;
  *(v49 + 1) = v54;

  sub_2587A99B0(v67, v48, v46);

  sub_258816CF0(&v88, &v92, sub_258813FA8);
  v55 = v77[1];
  v55(v78, v40);
  v56 = *(v63 + 8);
  v57 = v73;
  v56(v76, v73);
  v92 = v75;
  v93 = v50;
  v94 = v69;
  *v95 = *v87;
  *&v95[3] = *&v87[3];
  v96 = v51;
  v97 = KeyPath;
  v98 = v52;
  v99 = v72;
  v100 = v74;
  sub_258816D58(&v92, sub_258813FA8);
  v55(v80, v40);
  LOBYTE(v55) = v85;

  sub_2587B1CF8(v67, v68, v55);

  return (v56)(v79, v57);
}

uint64_t sub_2588155CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for NanoMedicalIDEditView();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DC758();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258816CF0(a1, v6, type metadata accessor for MedicalIDDataViewModel);
  v13 = type metadata accessor for NanoMedicalIDDataView();
  v14 = *(a1 + *(v13 + 20));
  v15 = a1 + *(v13 + 24);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v15) = *(v15 + 16);
  v33 = v16;
  v34 = v17;
  v35 = v15;
  sub_2588164BC(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);

  sub_2588BD458();
  v19 = v30;
  v18 = v31;
  v20 = v32;
  *&v6[v3[6]] = swift_getKeyPath();
  sub_258816B78(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager();
  sub_258816F8C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v21 = sub_2588BBF58();
  *&v6[v3[5]] = v14;
  v22 = &v6[v3[7]];
  *v22 = v21;
  v22[8] = v23 & 1;
  v24 = &v6[v3[8]];
  LOBYTE(v30) = 0;
  sub_2588BD2B8();
  v25 = v34;
  *v24 = v33;
  *(v24 + 1) = v25;
  v26 = &v6[v3[9]];
  *v26 = v19;
  *(v26 + 1) = v18;
  v26[16] = v20;
  sub_258816F8C(&qword_27F95E2F0, type metadata accessor for NanoMedicalIDEditView);
  sub_2588BCFF8();
  sub_258816D58(v6, type metadata accessor for NanoMedicalIDEditView);
  sub_2587D81D0(0, v14, v29);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25881590C@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2588159EC()
{
  v0 = sub_2588BC828();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_258816838();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC7E8();
  sub_2588168A0();
  sub_2588BBF88();
  v8 = sub_258816F8C(&qword_27F95F0C0, sub_258816838);
  MEMORY[0x259C8B9F0](v7, v3, v8);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258815B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoMedicalIDGridItemsView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BD4A8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_2588BD498();
  sub_258816CF0(a1, v7, type metadata accessor for NanoMedicalIDGridItemsView);
  v16 = v9[2];
  v16(v13, v15, v8);
  sub_258816CF0(v7, a2, type metadata accessor for NanoMedicalIDGridItemsView);
  sub_25881637C(0, &qword_27F95F068, type metadata accessor for NanoMedicalIDGridItemsView, MEMORY[0x277CDF088]);
  v16((a2 + *(v17 + 48)), v13, v8);
  v18 = v9[1];
  v18(v15, v8);
  v18(v13, v8);
  return sub_258816D58(v7, type metadata accessor for NanoMedicalIDGridItemsView);
}

uint64_t sub_258815D94()
{
  sub_258815FBC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0;
  sub_2588BCB68();
  sub_258816050(0);
  sub_258816F8C(&qword_27F95F0A0, sub_258816050);
  sub_2588BBEE8();
  sub_258816784();
  sub_258816F8C(&qword_27F95F0C8, sub_258815FBC);
  sub_258816838();
  v8 = v7;
  v9 = sub_258816F8C(&qword_27F95F0C0, sub_258816838);
  v13 = v8;
  v14 = v9;
  swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  return (*(v3 + 8))(v6, v2);
}

void sub_258815FBC()
{
  if (!qword_27F95F020)
  {
    sub_258816050(255);
    sub_258816F8C(&qword_27F95F0A0, sub_258816050);
    v0 = sub_2588BBED8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F020);
    }
  }
}

void sub_25881608C()
{
  if (!qword_27F95F038)
  {
    sub_258816120(255);
    sub_258816F8C(&qword_27F95F080, sub_258816120);
    v0 = sub_2588BBEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F038);
    }
  }
}

void sub_258816154()
{
  if (!qword_27F95F048)
  {
    sub_2588161E8();
    sub_2588163F8();
    sub_2588BD4A8();
    sub_258813FA8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95F048);
    }
  }
}

void sub_2588161E8()
{
  if (!qword_27F95F050)
  {
    sub_2588162B0(255);
    sub_2588162E4(255);
    sub_258816F8C(&qword_27F95F070, sub_2588162B0);
    sub_2587A815C();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F050);
    }
  }
}

void sub_258816320(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_25881637C(255, a3, a4, a5);
    v6 = sub_2588BD658();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_25881637C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2588163F8()
{
  if (!qword_27F95F078)
  {
    v0 = type metadata accessor for NanoGridItemCell();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F078);
    }
  }
}

void sub_258816450(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2588164BC(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2588164BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25881650C()
{
  if (!qword_27F95F088)
  {
    sub_25881658C();
    sub_258816674();
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F088);
    }
  }
}

void sub_25881658C()
{
  if (!qword_27F95F090)
  {
    sub_2587DCA90();
    sub_2587DC80C();
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F090);
    }
  }
}

unint64_t sub_2588165F4()
{
  result = qword_27F95E330;
  if (!qword_27F95E330)
  {
    sub_2587DC648();
    sub_2587DC9B0();
    sub_2587A8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E330);
  }

  return result;
}

unint64_t sub_258816674()
{
  result = qword_27F95F098;
  if (!qword_27F95F098)
  {
    sub_25881658C();
    sub_2587DCB18();
    sub_2587DC648();
    type metadata accessor for MedicalIDDataManager();
    sub_2588165F4();
    sub_258816F8C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F098);
  }

  return result;
}

void sub_258816784()
{
  if (!qword_27F95F0A8)
  {
    sub_258816838();
    sub_258816F8C(&qword_27F95F0C0, sub_258816838);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F0A8);
    }
  }
}

void sub_258816838()
{
  if (!qword_27F95F0B0)
  {
    sub_2588168A0();
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F0B0);
    }
  }
}

unint64_t sub_2588168A0()
{
  result = qword_27F95F0B8;
  if (!qword_27F95F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F0B8);
  }

  return result;
}

uint64_t sub_2588168FC@<X0>(uint64_t a1@<X8>)
{
  v18 = sub_2588BD258();
  v17 = sub_2588BD168();
  KeyPath = swift_getKeyPath();
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  sub_2588BD168();
  v8 = sub_2588BCD88();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_2587B1CF8(v3, v5, v7 & 1);

  *a1 = v18;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v17;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  v12 &= 1u;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;

  sub_2587A99B0(v8, v10, v12);

  sub_2587B1CF8(v8, v10, v12);
}

__n128 sub_258816B04@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BC608();
  v13 = 1;
  sub_2588168FC(v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v7 = v9[0];
  result = v9[1];
  v8 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = result;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_258816B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258816BDC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  sub_258816CF0(v4, a2, type metadata accessor for MedicalIDDataViewModel);
  result = type metadata accessor for NanoMedicalIDGridItemsView();
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_258816C44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + *(type metadata accessor for NanoMedicalIDGridItemsView() + 20));
  return sub_2587B89DC(&v4) & 1;
}

uint64_t sub_258816C98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC3E8();
  *a1 = result;
  return result;
}

uint64_t sub_258816CC4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2588BC3F8();
}

uint64_t sub_258816CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258816D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258816DE4()
{
  if (!qword_27F95F0E0)
  {
    sub_258816E78(255);
    sub_258816F8C(&qword_27F95F0F8, sub_258816E78);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F0E0);
    }
  }
}

void sub_258816EAC()
{
  if (!qword_27F95F0F0)
  {
    sub_258816F14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F0F0);
    }
  }
}

void sub_258816F14()
{
  if (!qword_27F95ECC8)
  {
    sub_258816450(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ECC8);
    }
  }
}

uint64_t sub_258816F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NanoMedicalIDDeleteView()
{
  result = qword_27F95F100;
  if (!qword_27F95F100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258817048()
{
  sub_2588171F8(319, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_258817194(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258817194(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2588171F8(319, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258817194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2588171F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258817268(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for NanoMedicalIDDeleteView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_258817194(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  sub_2587FB424();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258817CF8();
  v40 = *(v16 - 8);
  v41 = v16;
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BBDC8();
  v20 = sub_2588BBDE8();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  sub_258817FC4(a1, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_258818028(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_2588BD308();
  v23 = a1 + *(v4 + 36);
  v24 = *v23;
  v25 = *(v23 + 8);
  v49 = v24;
  v50 = v25;
  sub_2588171F8(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_258817FC4(a1, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v19;
  v27 = swift_allocObject() + v21;
  v28 = v43;
  sub_258818028(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  sub_258817E34();
  v30 = v29;
  v31 = sub_258817F7C(&qword_27F95E9D8, sub_2587FB424);
  sub_258817EE8();
  v33 = v32;
  v34 = sub_258817F7C(&qword_27F95F140, sub_258817EE8);
  v45 = v33;
  v46 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD068();

  (*(v44 + 8))(v15, v28);
  v36 = sub_2588BD9A8();
  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    sub_2588BD8A8();

    v45 = v28;
    v46 = v30;
    v47 = v31;
    v48 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v38 = v41;
    sub_2588BCFB8();

    (*(v40 + 8))(v26, v38);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2588177B8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NanoMedicalIDDeleteView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2588171F8(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25881783C(uint64_t a1)
{
  sub_258817EE8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1;
  type metadata accessor for NanoConfirmationDeleteView();
  sub_258817F7C(&qword_27F95F138, type metadata accessor for NanoConfirmationDeleteView);
  sub_2588BC148();
  sub_258817194(0, &qword_27F95F148, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  v8 = *(sub_2588BC2F8() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588C00B0;
  sub_2588BC2E8();
  v12 = sub_258817F7C(&qword_27F95F140, sub_258817EE8);
  MEMORY[0x259C8C250](2, v11, v3, v12);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258817A84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  sub_2588171F8(0, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
  sub_2588BD458();
  *a2 = swift_getKeyPath();
  sub_258817194(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager();
  sub_258817F7C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v3 = sub_2588BBF58();
  v5 = v4;
  result = type metadata accessor for NanoConfirmationDeleteView();
  v7 = a2 + *(result + 20);
  *v7 = v3;
  v7[8] = v5 & 1;
  v8 = a2 + *(result + 24);
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = v11;
  return result;
}

void sub_258817BE0(uint64_t a1@<X8>)
{
  *a1 = sub_2588BC6E8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_258817C28();
  sub_258817268(v1, a1 + *(v3 + 44));
}

void sub_258817C28()
{
  if (!qword_27F95F110)
  {
    sub_258817C90();
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F110);
    }
  }
}

void sub_258817C90()
{
  if (!qword_27F95F118)
  {
    sub_258817CF8();
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F118);
    }
  }
}

void sub_258817CF8()
{
  if (!qword_27F95F120)
  {
    sub_2587FB424();
    sub_258817E34();
    sub_258817F7C(&qword_27F95E9D8, sub_2587FB424);
    sub_258817EE8();
    sub_258817F7C(&qword_27F95F140, sub_258817EE8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F120);
    }
  }
}

void sub_258817E34()
{
  if (!qword_27F95F128)
  {
    sub_258817EE8();
    sub_258817F7C(&qword_27F95F140, sub_258817EE8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F128);
    }
  }
}

void sub_258817EE8()
{
  if (!qword_27F95F130)
  {
    type metadata accessor for NanoConfirmationDeleteView();
    sub_258817F7C(&qword_27F95F138, type metadata accessor for NanoConfirmationDeleteView);
    v0 = sub_2588BC158();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F130);
    }
  }
}

uint64_t sub_258817F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258817FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoMedicalIDDeleteView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258818028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoMedicalIDDeleteView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25881808C()
{
  v1 = *(type metadata accessor for NanoMedicalIDDeleteView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2588177B8(v2);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for NanoMedicalIDDeleteView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = v1[5];
  sub_258817194(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2588BC038();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  else
  {
    v8 = *&v3[v6];
  }

  v9 = *&v3[v1[6]];

  v10 = *&v3[v1[7] + 8];

  return swift_deallocObject();
}

uint64_t sub_25881825C()
{
  v1 = *(type metadata accessor for NanoMedicalIDDeleteView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25881783C(v2);
}

void sub_2588182D4()
{
  if (!qword_27F95F158)
  {
    sub_258817C90();
    sub_258818338();
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F158);
    }
  }
}

unint64_t sub_258818338()
{
  result = qword_27F95F160;
  if (!qword_27F95F160)
  {
    sub_258817C90();
    sub_2587FB424();
    sub_258817E34();
    sub_258817F7C(&qword_27F95E9D8, sub_2587FB424);
    sub_258817EE8();
    sub_258817F7C(&qword_27F95F140, sub_258817EE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258817F7C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F160);
  }

  return result;
}

uint64_t sub_2588184FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881C0EC(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for NanoMedicalIDEditView();
  sub_25880B950(v1 + *(v12 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25881B490(v11, a1, sub_258804A60);
  }

  v14 = *v11;
  sub_2588BDBE8();
  v15 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2588186F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for NanoMedicalIDEditView();
  v4 = v3 - 8;
  v34 = *(v3 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881ACE8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25881B1D8();
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  sub_25881AD98(0);
  sub_25881C1B8(&qword_27F95F1E0, sub_25881AD98);
  sub_2588BCD48();
  v38 = v2;
  sub_25881B314();
  v18 = v17;
  v19 = sub_25881C1B8(&qword_27F95F200, sub_25881ACE8);
  sub_25881B3C8();
  v21 = v20;
  v22 = sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8);
  v40 = v21;
  v41 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  (*(v8 + 8))(v11, v7);
  v24 = v2 + *(v4 + 40);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v40) = v25;
  v41 = v26;
  sub_25881AC78(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v27 = v33;
  sub_25881C150(v2, v33, type metadata accessor for NanoMedicalIDEditView);
  v28 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v29 = swift_allocObject();
  sub_25881B490(v27, v29 + v28, type metadata accessor for NanoMedicalIDEditView);
  v40 = v7;
  v41 = v18;
  v42 = v19;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_2588BD118();

  return (*(v36 + 8))(v16, v30);
}

uint64_t sub_258818B58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v82 = type metadata accessor for NanoMedicalIDDeleteView();
  v3 = *(*(v82 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v82);
  v93 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = (&v78 - v6);
  sub_25881AF94(0, &qword_27F95F1C8, sub_25881B134);
  v99 = v7;
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v78 - v11;
  sub_25881AF94(0, &qword_27F95F1C0, type metadata accessor for NanoEmergencyContactsOverallEditView);
  v97 = v12;
  v101 = *(v12 - 8);
  v13 = v101[8];
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v78 - v16;
  sub_25881AF94(0, &qword_27F95F1A8, sub_25881AFFC);
  v92 = v17;
  v100 = *(v17 - 8);
  v18 = v100[8];
  v19 = MEMORY[0x28223BE20](v17);
  v95 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  sub_25881AF94(0, &qword_27F95F190, sub_25881AEF8);
  v91 = v23;
  v90 = *(v23 - 8);
  v24 = v90[8];
  v25 = MEMORY[0x28223BE20](v23);
  v88 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v78 - v27;
  v104 = a1;
  sub_25881AEF8();
  sub_25881C1B8(&qword_27F95F208, sub_25881AEF8);
  v87 = v28;
  sub_2588BD508();
  v103 = a1;
  sub_25881AFFC();
  sub_25881C1B8(&qword_27F95F210, sub_25881AFFC);
  v89 = v22;
  sub_2588BD508();
  v102 = a1;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v29 = qword_27F95DA88;
  v109 = sub_2588BCDE8();
  v110 = v30;
  v111 = v31 & 1;
  v112 = v32;
  sub_2588BC688();
  v33 = v29;
  v34 = sub_2588BCDE8();
  v36 = v35;
  v38 = v37;
  sub_2588BCCC8();
  v39 = sub_2588BCDD8();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_2587B1CF8(v34, v36, v38 & 1);

  v105 = v39;
  v106 = v41;
  v107 = v43 & 1;
  v108 = v45;
  type metadata accessor for NanoEmergencyContactsOverallEditView();
  sub_25881C1B8(&qword_27F95F218, type metadata accessor for NanoEmergencyContactsOverallEditView);
  v46 = v86;
  v47 = sub_2588BD4F8();
  MEMORY[0x28223BE20](v47);
  sub_25881B134(0);
  sub_25881C1B8(qword_27F95F220, sub_25881B134);
  sub_2588BD508();
  v48 = (a1 + *(type metadata accessor for NanoMedicalIDEditView() + 32));
  v49 = *v48;
  v50 = *(v48 + 1);
  LOBYTE(v105) = v49;
  v106 = v50;
  sub_25881AC78(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v51 = v109;
  v52 = v110;
  v53 = v111;
  type metadata accessor for MedicalIDDataManager();
  sub_25881C1B8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v54 = sub_2588BBF58();
  LOBYTE(v45) = v55;
  v56 = v83;
  *v83 = v51;
  *(v56 + 8) = v52;
  *(v56 + 16) = v53;
  v57 = v82;
  v58 = *(v82 + 20);
  *(v56 + v58) = swift_getKeyPath();
  sub_25881C0EC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v59 = v56 + *(v57 + 24);
  *v59 = v54;
  *(v59 + 8) = v45 & 1;
  v60 = v56 + *(v57 + 28);
  LOBYTE(v105) = 0;
  sub_2588BD2B8();
  v61 = v110;
  *v60 = v109;
  *(v60 + 8) = v61;
  v78 = v90[2];
  v62 = v88;
  v63 = v91;
  v78(v88, v87, v91);
  v82 = v100[2];
  (v82)(v95, v89, v92);
  v81 = v101[2];
  v81(v96, v46, v97);
  v64 = v84;
  v80 = *(v84 + 16);
  v80(v98, v94, v99);
  v79 = type metadata accessor for NanoMedicalIDDeleteView;
  v65 = v93;
  sub_25881C150(v56, v93, type metadata accessor for NanoMedicalIDDeleteView);
  v66 = v85;
  v78(v85, v62, v63);
  sub_25881ADCC();
  v68 = v67;
  v69 = v92;
  (v82)(&v66[v67[12]], v95, v92);
  v81(&v66[v68[16]], v96, v97);
  v70 = v99;
  v80(&v66[v68[20]], v98, v99);
  sub_25881C150(v65, &v66[v68[24]], v79);
  sub_25881C200(v56, type metadata accessor for NanoMedicalIDDeleteView);
  v71 = *(v64 + 8);
  v71(v94, v70);
  v72 = v101[1];
  ++v101;
  v73 = v97;
  v72(v86, v97);
  v74 = v100[1];
  ++v100;
  v74(v89, v69);
  v75 = v90[1];
  v76 = v91;
  v75(v87, v91);
  sub_25881C200(v93, type metadata accessor for NanoMedicalIDDeleteView);
  v71(v98, v99);
  v72(v96, v73);
  v74(v95, v69);
  return (v75)(v88, v76);
}

uint64_t sub_258819798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NanoOrganDonorEditView();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v41 - v10;
  v11 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = type metadata accessor for NanoNameEditView();
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  v26 = *(type metadata accessor for MedicalIDDataViewModel() + 40);
  sub_25881C150(a1 + v26, v25, type metadata accessor for MedicalIDPersonalInfoViewModel);
  type metadata accessor for MedicalIDDataManager();
  sub_25881C1B8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v27 = sub_2588BBF58();
  v28 = &v25[*(v19 + 28)];
  *v28 = v27;
  v28[8] = v29 & 1;
  sub_25881C150(a1 + v26, v17, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v30 = sub_2588BBF58();
  v31 = &v17[*(v12 + 28)];
  *v31 = v30;
  v31[8] = v32 & 1;
  v33 = v44;
  sub_25881C150(a1 + v26, v44, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v34 = v42;
  sub_25880364C(v33, v42);
  sub_25881C150(v25, v23, type metadata accessor for NanoNameEditView);
  v35 = v43;
  sub_25881C150(v17, v43, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v36 = v45;
  sub_25881C150(v34, v45, type metadata accessor for NanoOrganDonorEditView);
  v37 = v46;
  sub_25881C150(v23, v46, type metadata accessor for NanoNameEditView);
  sub_25881B098(0, &qword_27F95F1A0, type metadata accessor for NanoNameEditView, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView, type metadata accessor for NanoOrganDonorEditView);
  v39 = v38;
  sub_25881C150(v35, v37 + *(v38 + 48), type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  sub_25881C150(v36, v37 + *(v39 + 64), type metadata accessor for NanoOrganDonorEditView);
  sub_25881C200(v34, type metadata accessor for NanoOrganDonorEditView);
  sub_25881C200(v17, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  sub_25881C200(v25, type metadata accessor for NanoNameEditView);
  sub_25881C200(v36, type metadata accessor for NanoOrganDonorEditView);
  sub_25881C200(v35, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  return sub_25881C200(v23, type metadata accessor for NanoNameEditView);
}

uint64_t sub_258819BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoAllergyEditView();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for NanoMedicationEditView();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = type metadata accessor for MedicalIDPregnancyViewModel();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NanoPregnancyEditView();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v34 - v27;
  v29 = type metadata accessor for MedicalIDDataViewModel();
  sub_25881C150(a1 + *(v29 + 48), v21, type metadata accessor for MedicalIDPregnancyViewModel);
  sub_258804E9C(v21, v28);
  v30 = *(v29 + 44);
  sub_25881C150(a1 + v30, v17, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(a1 + v30, v10, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(v28, v26, type metadata accessor for NanoPregnancyEditView);
  sub_25881C150(v17, v15, type metadata accessor for NanoMedicationEditView);
  sub_25881C150(v10, v8, type metadata accessor for NanoAllergyEditView);
  sub_25881C150(v26, a2, type metadata accessor for NanoPregnancyEditView);
  sub_25881B098(0, &qword_27F95F1B8, type metadata accessor for NanoPregnancyEditView, type metadata accessor for NanoMedicationEditView, type metadata accessor for NanoAllergyEditView);
  v32 = v31;
  sub_25881C150(v15, a2 + *(v31 + 48), type metadata accessor for NanoMedicationEditView);
  sub_25881C150(v8, a2 + *(v32 + 64), type metadata accessor for NanoAllergyEditView);
  sub_25881C200(v10, type metadata accessor for NanoAllergyEditView);
  sub_25881C200(v17, type metadata accessor for NanoMedicationEditView);
  sub_25881C200(v28, type metadata accessor for NanoPregnancyEditView);
  sub_25881C200(v8, type metadata accessor for NanoAllergyEditView);
  sub_25881C200(v15, type metadata accessor for NanoMedicationEditView);
  return sub_25881C200(v26, type metadata accessor for NanoPregnancyEditView);
}

uint64_t sub_258819F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + *(type metadata accessor for NanoMedicalIDEditView() + 20)) + 16);
  v4 = *(v3 + 32);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  swift_beginAccess();
  v6 = *(v3 + 40);
  v7 = type metadata accessor for MedicalIDEditableEmergencyContactsModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  v11 = sub_2588BD9A8();
  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    v13 = sub_2588BD8A8();
    v15 = v14;
  }

  else
  {
    v15 = 0x80000002588C8A90;
    v13 = 0xD000000000000011;
  }

  v10[4] = v13;
  v10[5] = v15;
  sub_2588BBBC8();
  v10[2] = v6;
  v10[3] = v5;

  type metadata accessor for MedicalIDDataManager();
  sub_25881C1B8(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v16 = sub_2588BBF58();
  v18 = v17;
  sub_25881C1B8(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BD548();
  result = type metadata accessor for NanoEmergencyContactsOverallEditView();
  v20 = a2 + *(result + 20);
  *v20 = v16;
  *(v20 + 8) = v18 & 1;
  return result;
}

uint64_t sub_25881A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoNotesEditView();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for NanoConditionsEditView();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = *(type metadata accessor for MedicalIDDataViewModel() + 44);
  sub_25881C150(a1 + v18, v17, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(a1 + v18, v10, type metadata accessor for MedicalIDMedicalInfoViewModel);
  sub_25881C150(v17, v15, type metadata accessor for NanoConditionsEditView);
  sub_25881C150(v10, v8, type metadata accessor for NanoNotesEditView);
  sub_25881C150(v15, a2, type metadata accessor for NanoConditionsEditView);
  sub_25881B168();
  sub_25881C150(v8, a2 + *(v19 + 48), type metadata accessor for NanoNotesEditView);
  sub_25881C200(v10, type metadata accessor for NanoNotesEditView);
  sub_25881C200(v17, type metadata accessor for NanoConditionsEditView);
  sub_25881C200(v8, type metadata accessor for NanoNotesEditView);
  return sub_25881C200(v15, type metadata accessor for NanoConditionsEditView);
}

uint64_t sub_25881A398(uint64_t a1)
{
  v2 = sub_2588BC828();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25881B3C8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC7E8();
  v13 = a1;
  sub_25880AF38();
  sub_25881C1B8(&qword_27F95ECB0, sub_25880AF38);
  sub_2588BBF88();
  v10 = sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8);
  MEMORY[0x259C8B9F0](v9, v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25881A568(uint64_t a1)
{
  v2 = type metadata accessor for NanoMedicalIDEditView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25881C150(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoMedicalIDEditView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25881B490(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for NanoMedicalIDEditView);
  return sub_2588BD318();
}

uint64_t sub_25881A6CC(uint64_t a1, char a2)
{
  v4 = sub_2588BC298();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_258804A60(0);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588184FC(v10);
  MEMORY[0x259C8C5A0](v7);
  sub_2588BC288();
  sub_2588BD438();
  sub_25881C200(v10, sub_258804A60);
  v11 = (a1 + *(type metadata accessor for NanoMedicalIDEditView() + 36));
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(v11 + 16);
  v16 = v12;
  v17 = v13;
  v18 = v11;
  v15[7] = a2;
  sub_25881AC78(0, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
  return sub_2588BD438();
}

uint64_t sub_25881A844@<X0>(uint64_t a1@<X8>)
{
  sub_25878F648();

  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5;
  sub_2588BC8D8();
  v7 = sub_2588BCD98();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2587B1CF8(v2, v4, v6 & 1);

  v14 = sub_2588BCDF8();
  v16 = v15;
  v17 = v11 & 1;
  v22 = v11 & 1;
  v19 = v18 & 1;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v17;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v18 & 1;
  *(a1 + 56) = v20;
  sub_2587A99B0(v7, v9, v17);

  sub_2587A99B0(v14, v16, v19);

  sub_2587B1CF8(v14, v16, v19);

  sub_2587B1CF8(v7, v9, v22);
}

__n128 sub_25881A9DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_2588BC6F8();
  sub_25881A844(v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t type metadata accessor for NanoMedicalIDEditView()
{
  result = qword_27F95F168;
  if (!qword_27F95F168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25881AAFC()
{
  type metadata accessor for MedicalIDDataViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDModelProvider();
    if (v1 <= 0x3F)
    {
      sub_25881C0EC(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_25881C0EC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_25881AC78(319, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_25881AC78(319, &qword_27F95DAF0, MEMORY[0x277CE11F8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25881AC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25881ACE8()
{
  if (!qword_27F95F178)
  {
    sub_25881AD98(255);
    sub_25881C1B8(&qword_27F95F1E0, sub_25881AD98);
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F178);
    }
  }
}

void sub_25881ADCC()
{
  if (!qword_27F95F188)
  {
    sub_25881AF94(255, &qword_27F95F190, sub_25881AEF8);
    sub_25881AF94(255, &qword_27F95F1A8, sub_25881AFFC);
    sub_25881AF94(255, &qword_27F95F1C0, type metadata accessor for NanoEmergencyContactsOverallEditView);
    sub_25881AF94(255, &qword_27F95F1C8, sub_25881B134);
    type metadata accessor for NanoMedicalIDDeleteView();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95F188);
    }
  }
}

void sub_25881AEF8()
{
  if (!qword_27F95F198)
  {
    sub_25881B098(255, &qword_27F95F1A0, type metadata accessor for NanoNameEditView, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView, type metadata accessor for NanoOrganDonorEditView);
    v0 = sub_2588BD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F198);
    }
  }
}

void sub_25881AF94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25881AFFC()
{
  if (!qword_27F95F1B0)
  {
    sub_25881B098(255, &qword_27F95F1B8, type metadata accessor for NanoPregnancyEditView, type metadata accessor for NanoMedicationEditView, type metadata accessor for NanoAllergyEditView);
    v0 = sub_2588BD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F1B0);
    }
  }
}

void sub_25881B098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_25881B168()
{
  if (!qword_27F95F1D8)
  {
    type metadata accessor for NanoConditionsEditView();
    type metadata accessor for NanoNotesEditView();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F1D8);
    }
  }
}

void sub_25881B1D8()
{
  if (!qword_27F95F1E8)
  {
    sub_25881ACE8();
    sub_25881B314();
    sub_25881C1B8(&qword_27F95F200, sub_25881ACE8);
    sub_25881B3C8();
    sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F1E8);
    }
  }
}

void sub_25881B314()
{
  if (!qword_27F95F1F0)
  {
    sub_25881B3C8();
    sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F1F0);
    }
  }
}

void sub_25881B3C8()
{
  if (!qword_27F95ECA0)
  {
    sub_25880AF38();
    sub_25881C1B8(&qword_27F95ECB0, sub_25880AF38);
    v0 = sub_2588BBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ECA0);
    }
  }
}

uint64_t sub_25881B490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_15()
{
  v96 = type metadata accessor for NanoMedicalIDEditView();
  v97 = *(*(v96 - 1) + 80);
  v95 = *(*(v96 - 1) + 64);
  v1 = (v0 + ((v97 + 16) & ~v97));

  v2 = type metadata accessor for MedicalIDDataViewModel();
  v3 = v1 + v2[5];
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 4);

  v7 = *(v3 + 6);

  v8 = *(v3 + 8);

  v9 = *(v3 + 10);

  v10 = type metadata accessor for MedicalIDData();
  v11 = v10[13];
  v12 = sub_2588BB9B8();
  v106 = *(v12 - 8);
  v13 = *(v106 + 48);
  if (!v13(&v3[v11], 1, v12))
  {
    (*(v106 + 8))(&v3[v11], v12);
  }

  v14 = v10[14];
  if (!v13(&v3[v14], 1, v12))
  {
    (*(v106 + 8))(&v3[v14], v12);
  }

  v15 = *&v3[v10[15] + 8];

  v16 = &v3[v10[18]];
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v10[19];
  v19 = sub_2588BB818();
  v98 = *(v19 - 8);
  v104 = *(v98 + 48);
  if (!v104(&v3[v18], 1, v19))
  {
    (*(v98 + 8))(&v3[v18], v19);
  }

  v20 = v10[21];
  if (!v13(&v3[v20], 1, v12))
  {
    (*(v106 + 8))(&v3[v20], v12);
  }

  v21 = v2[6];
  v99 = sub_2588BBB48();
  v100 = (*(v99 - 8) + 8);
  v101 = *v100;
  (*v100)(v1 + v21);

  v22 = v2[8];
  v23 = sub_2588BBAC8();
  v102 = *(*(v23 - 8) + 8);
  v103 = v23;
  v102(v1 + v22);
  v105 = v2;
  v24 = v1 + v2[9];
  v25 = *(v24 + 1);

  v26 = type metadata accessor for MedicalIDBiometricsViewModel();
  v27 = &v24[v26[5]];
  v28 = *(v27 + 1);

  v29 = *(v27 + 2);

  v30 = *(v27 + 4);

  v31 = *(v27 + 6);

  v32 = *(v27 + 8);

  v33 = *(v27 + 10);

  v34 = v10[13];
  if (!v13(&v27[v34], 1, v12))
  {
    (*(v106 + 8))(&v27[v34], v12);
  }

  v35 = v10[14];
  if (!v13(&v27[v35], 1, v12))
  {
    (*(v106 + 8))(&v27[v35], v12);
  }

  v36 = *&v27[v10[15] + 8];

  v37 = &v27[v10[18]];
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    sub_2587C2610(*v37, v38);
  }

  v39 = v10[19];
  if (!v104(&v27[v39], 1, v19))
  {
    (*(v98 + 8))(&v27[v39], v19);
  }

  v40 = v10[21];
  if (!v13(&v27[v40], 1, v12))
  {
    (*(v106 + 8))(&v27[v40], v12);
  }

  (v102)(&v24[v26[6]], v103);
  v41 = &v24[v26[7]];
  (v102)(v41, v103);

  v42 = &v24[v26[8]];
  (v102)(v42, v103);
  v43 = type metadata accessor for MedicalIDWeightFormatter();

  v44 = v1 + v105[10];
  v45 = *(v44 + 1);

  v46 = *(v44 + 2);

  v47 = *(v44 + 4);

  v48 = *(v44 + 6);

  v49 = *(v44 + 8);

  v50 = *(v44 + 10);

  v51 = v10[13];
  if (!v13(&v44[v51], 1, v12))
  {
    (*(v106 + 8))(&v44[v51], v12);
  }

  v52 = v10[14];
  if (!v13(&v44[v52], 1, v12))
  {
    (*(v106 + 8))(&v44[v52], v12);
  }

  v53 = *&v44[v10[15] + 8];

  v54 = &v44[v10[18]];
  v55 = v54[1];
  if (v55 >> 60 != 15)
  {
    sub_2587C2610(*v54, v55);
  }

  v56 = v10[19];
  if (!v104(&v44[v56], 1, v19))
  {
    (*(v98 + 8))(&v44[v56], v19);
  }

  v57 = v10[21];
  if (!v13(&v44[v57], 1, v12))
  {
    (*(v106 + 8))(&v44[v57], v12);
  }

  v58 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v101)(&v44[v58[5]], v99);
  (v102)(&v44[v58[6]], v103);

  v59 = *&v44[v58[9] + 8];

  v60 = (v1 + v105[11]);

  v61 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v101)(v60 + *(v61 + 20), v99);
  (v102)(v60 + *(v61 + 24), v103);
  v62 = v1 + v105[12];
  v63 = *(v62 + 1);

  v64 = type metadata accessor for MedicalIDPregnancyViewModel();
  v65 = &v62[v64[5]];
  v66 = *(v65 + 1);

  v67 = *(v65 + 2);

  v68 = *(v65 + 4);

  v69 = *(v65 + 6);

  v70 = *(v65 + 8);

  v71 = *(v65 + 10);

  v72 = v10[13];
  if (!v13(&v65[v72], 1, v12))
  {
    (*(v106 + 8))(&v65[v72], v12);
  }

  v73 = v10[14];
  if (!v13(&v65[v73], 1, v12))
  {
    (*(v106 + 8))(&v65[v73], v12);
  }

  v74 = *&v65[v10[15] + 8];

  v75 = &v65[v10[18]];
  v76 = v75[1];
  if (v76 >> 60 != 15)
  {
    sub_2587C2610(*v75, v76);
  }

  v77 = v10[19];
  if (!v104(&v65[v77], 1, v19))
  {
    (*(v98 + 8))(&v65[v77], v19);
  }

  v78 = v10[21];
  if (!v13(&v65[v78], 1, v12))
  {
    (*(v106 + 8))(&v65[v78], v12);
  }

  (v101)(&v62[v64[6]], v99);
  (v102)(&v62[v64[7]], v103);
  v79 = *&v62[v64[8]];

  v80 = v64[9];
  if (!v13(&v62[v80], 1, v12))
  {
    (*(v106 + 8))(&v62[v80], v12);
  }

  v81 = *(v1 + v96[5]);

  v82 = v1 + v96[6];
  sub_25881C0EC(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v84 = *v82;

  if (EnumCaseMultiPayload == 1)
  {
    v85 = *(v82 + 1);

    sub_258804A60(0);
    v87 = *(v86 + 32);
    v88 = sub_2588BC298();
    (*(*(v88 - 8) + 8))(&v82[v87], v88);
  }

  v89 = *(v1 + v96[7]);

  v90 = *(v1 + v96[8] + 8);

  v91 = (v1 + v96[9]);
  v92 = *v91;

  v93 = v91[1];

  return swift_deallocObject();
}

uint64_t sub_25881C058(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoMedicalIDEditView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_25881C0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25881C150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25881C1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25881C200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25881C268(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25881C2F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_25881C474(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t type metadata accessor for NanoMedicalIDGridItemsView()
{
  result = qword_27F95F2A8;
  if (!qword_27F95F2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25881C750()
{
  result = type metadata accessor for MedicalIDDataViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25881C7E0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_2588BD668();
}

uint64_t sub_25881C9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277CE0330];
  sub_258821468(0, &qword_27F95F2D8, sub_25882012C, sub_2588208A4, MEMORY[0x277CE0330]);
  v126 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v125 - v6);
  sub_258821468(0, &qword_27F95F388, sub_258820174, sub_2588205B0, v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v125 - v10);
  sub_25882012C(0);
  v127 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258820900(0);
  v131 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v128 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258820174();
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258821468(0, &qword_27F95F398, sub_258820948, sub_258820900, v3);
  v130 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v125 - v26;
  v28 = *(v1 + *(type metadata accessor for NanoMedicalIDGridItemsView() + 20));
  if (v28 > 3)
  {
    if (v28 > 5)
    {
      v129 = a1;
      if (v28 == 6)
      {
        if (qword_27F95D148 != -1)
        {
          swift_once();
        }

        v64 = qword_27F9698E8;
        v65 = qword_27F9698F0;
        v66 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44));

        v67 = [v66 medicalConditions];
        if (v67)
        {
          v68 = v67;
          v69 = sub_2588BD8A8();
          v71 = v70;
        }

        else
        {
          if (qword_27F95D0C0 != -1)
          {
            swift_once();
          }

          v69 = qword_27F9697D8;
          v71 = unk_27F9697E0;
        }

        *&v209 = v69;
        *(&v209 + 1) = v71;
        sub_25878F648();
        v106 = sub_2588BCDF8();
        v108 = v107;
        v110 = v109 & 1;
        LOBYTE(v188) = v109 & 1;
        LOBYTE(v178) = 0;
        *&v199 = v64;
        *(&v199 + 1) = v65;
        LOBYTE(v200) = 1;
        *(&v200 + 1) = v106;
        *&v201 = v107;
        BYTE8(v201) = v109 & 1;
        *&v202 = v111;
        BYTE8(v202) = 0;
      }

      else
      {
        if (qword_27F95D150 != -1)
        {
          swift_once();
        }

        v91 = qword_27F9698F8;
        v65 = qword_27F969900;
        v92 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44));

        v93 = [v92 medicalNotes];
        if (v93)
        {
          v94 = v93;
          v95 = sub_2588BD8A8();
          v97 = v96;
        }

        else
        {
          if (qword_27F95D0C0 != -1)
          {
            swift_once();
          }

          v95 = qword_27F9697D8;
          v97 = unk_27F9697E0;
        }

        *&v209 = v95;
        *(&v209 + 1) = v97;
        sub_25878F648();
        v106 = sub_2588BCDF8();
        v108 = v120;
        v110 = v121 & 1;
        LOBYTE(v188) = v121 & 1;
        LOBYTE(v178) = 1;
        *&v199 = v91;
        *(&v199 + 1) = v65;
        LOBYTE(v200) = 1;
        *(&v200 + 1) = v106;
        *&v201 = v120;
        BYTE8(v201) = v121 & 1;
        *&v202 = v122;
        BYTE8(v202) = 1;
      }

      sub_2587A99B0(v106, v108, v110);
      sub_2588163F8();
      v125 = v65;
      sub_258820E1C(&qword_27F95F3D8, sub_2588163F8);

      sub_2588BC778();
      v123 = v210;
      *v7 = v209;
      v7[1] = v123;
      v7[2] = v211[0];
      *(v7 + 41) = *(v211 + 9);
      swift_storeEnumTagMultiPayload();
      sub_2588208A4();
      sub_258820BCC();
      sub_258820C7C();
      v124 = v128;
      sub_2588BC778();
      sub_258820F38(v124, v27, sub_258820900);
      swift_storeEnumTagMultiPayload();
      sub_258820948(0);
      sub_258820D24();
      sub_258820E64();
      sub_2588BC778();

      sub_2587B1CF8(v106, v108, v110);

      v54 = sub_258820900;
      v55 = v124;
    }

    else if (v28 == 4)
    {
      v129 = a1;
      if (qword_27F95D0F8 != -1)
      {
        swift_once();
      }

      v51 = unk_27F969850;
      *v23 = qword_27F969848;
      *(v23 + 1) = v51;
      v23[16] = 1;
      v52 = *(v20 + 40);

      sub_25881E9F0(v1, &v23[v52]);
      sub_258820F38(v23, v11, sub_258820174);
      swift_storeEnumTagMultiPayload();
      sub_2588205B0();
      sub_258820C14();
      sub_258820C48();
      sub_2588BC778();
      sub_258820F38(v15, v7, sub_25882012C);
      swift_storeEnumTagMultiPayload();
      sub_2588208A4();
      sub_258820BCC();
      sub_258820C7C();
      v53 = v128;
      sub_2588BC778();
      sub_258821150(v15, sub_25882012C);
      sub_258820F38(v53, v27, sub_258820900);
      swift_storeEnumTagMultiPayload();
      sub_258820948(0);
      sub_258820D24();
      sub_258820E64();
      sub_2588BC778();
      sub_258821150(v53, sub_258820900);
      v54 = sub_258820174;
      v55 = v23;
    }

    else
    {
      if (qword_27F95D108 != -1)
      {
        swift_once();
      }

      v199 = xmmword_27F969868;
      LOBYTE(v200) = 1;

      sub_25881F004(v1, &v200 + 8);
      *(v214 + 9) = *(v205 + 9);
      v77 = v204;
      v213 = v204;
      v214[0] = v205[0];
      v78 = v200;
      v79 = v199;
      v209 = v199;
      v210 = v200;
      v80 = v201;
      v81 = v202;
      v211[0] = v201;
      v211[1] = v202;
      v212 = v203;
      v11[4] = v203;
      v11[5] = v77;
      v11[6] = v214[0];
      *(v11 + 105) = *(v214 + 9);
      *v11 = v79;
      v11[1] = v78;
      v11[2] = v80;
      v11[3] = v81;
      swift_storeEnumTagMultiPayload();
      sub_2588200C4(&v209, &v199, sub_2588205B0);
      sub_2588205B0();
      sub_258820C14();
      sub_258820C48();
      sub_2588BC778();
      sub_258820F38(v15, v7, sub_25882012C);
      swift_storeEnumTagMultiPayload();
      sub_2588208A4();
      sub_258820BCC();
      sub_258820C7C();
      v82 = v128;
      sub_2588BC778();
      sub_258821150(v15, sub_25882012C);
      sub_258820F38(v82, v27, sub_258820900);
      swift_storeEnumTagMultiPayload();
      sub_258820948(0);
      sub_258820D24();
      sub_258820E64();
      sub_2588BC778();
      sub_2588211B0(&v209, sub_2588205B0);
      v54 = sub_258820900;
      v55 = v82;
    }

    return sub_258821150(v55, v54);
  }

  else if (v28 > 1)
  {
    v129 = a1;
    if (v28 == 2)
    {
      if (qword_27F95D0F0 != -1)
      {
        swift_once();
      }

      v56 = qword_27F969838;
      v57 = qword_27F969840;
      v58 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44));

      v59 = [v58 medicationInfo];
      if (v59)
      {
        v60 = v59;
        v61 = sub_2588BD8A8();
        v63 = v62;
      }

      else
      {
        if (qword_27F95D0C0 != -1)
        {
          swift_once();
        }

        v61 = qword_27F9697D8;
        v63 = unk_27F9697E0;
      }

      *&v209 = v61;
      *(&v209 + 1) = v63;
      sub_25878F648();
      v98 = sub_2588BCDF8();
      v100 = v99;
      v102 = v101 & 1;
      LOBYTE(v167) = v101 & 1;
      LOBYTE(v156) = 0;
      *&v209 = v56;
      *(&v209 + 1) = v57;
      LOBYTE(v210) = 1;
      *(&v210 + 1) = v98;
      *&v211[0] = v99;
      BYTE8(v211[0]) = v101 & 1;
      *&v211[1] = v103;
      BYTE8(v211[1]) = 0;

      sub_2587A99B0(v98, v100, v102);
      sub_2588163F8();
      sub_258820E1C(&qword_27F95F3D8, sub_2588163F8);
      v128 = v57;

      sub_2588BC778();
      v209 = v178;
      v210 = v179;
      v211[0] = v180[0];
      *(v211 + 9) = *(v180 + 9);
      sub_258820FA0(&v209);
      v196 = v215;
      v197 = v216;
      v198 = v217;
      v192 = v212;
      v193 = v213;
      v194 = v214[0];
      v195 = v214[1];
      v188 = v209;
      v189 = v210;
      v105 = v211[0];
      v104 = v211[1];
    }

    else
    {
      if (qword_27F95D140 != -1)
      {
        swift_once();
      }

      v83 = qword_27F9698D8;
      v84 = qword_27F9698E0;
      v85 = *(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44));

      v86 = [v85 allergyInfo];
      if (v86)
      {
        v87 = v86;
        v88 = sub_2588BD8A8();
        v90 = v89;
      }

      else
      {
        if (qword_27F95D0C0 != -1)
        {
          swift_once();
        }

        v88 = qword_27F9697D8;
        v90 = unk_27F9697E0;
      }

      *&v209 = v88;
      *(&v209 + 1) = v90;
      sub_25878F648();
      v98 = sub_2588BCDF8();
      v100 = v112;
      v102 = v113 & 1;
      LOBYTE(v167) = v113 & 1;
      LOBYTE(v156) = 1;
      *&v209 = v83;
      *(&v209 + 1) = v84;
      LOBYTE(v210) = 1;
      *(&v210 + 1) = v98;
      *&v211[0] = v112;
      BYTE8(v211[0]) = v113 & 1;
      *&v211[1] = v114;
      BYTE8(v211[1]) = 1;

      sub_2587A99B0(v98, v100, v102);
      sub_2588163F8();
      v128 = v84;
      sub_258820E1C(&qword_27F95F3D8, sub_2588163F8);

      sub_2588BC778();
      v209 = v178;
      v210 = v179;
      v211[0] = v180[0];
      *(v211 + 9) = *(v180 + 9);
      sub_258820FA0(&v209);
      v196 = v215;
      v197 = v216;
      v198 = v217;
      v192 = v212;
      v193 = v213;
      v194 = v214[0];
      v195 = v214[1];
      v188 = v209;
      v189 = v210;
      v105 = v211[0];
      v104 = v211[1];
    }

    v190 = v105;
    v191 = v104;
    sub_258820990(0);
    sub_2588208A4();
    sub_258820D6C();
    sub_258820C7C();
    sub_2588BC778();
    v115 = v207;
    *(v27 + 8) = v206;
    *(v27 + 9) = v115;
    *(v27 + 80) = v208;
    v116 = v204;
    *(v27 + 4) = v203;
    *(v27 + 5) = v116;
    v117 = v205[1];
    *(v27 + 6) = v205[0];
    *(v27 + 7) = v117;
    v118 = v200;
    *v27 = v199;
    *(v27 + 1) = v118;
    v119 = v202;
    *(v27 + 2) = v201;
    *(v27 + 3) = v119;
    swift_storeEnumTagMultiPayload();
    sub_258820948(0);
    sub_258820D24();
    sub_258820E64();
    sub_2588BC778();

    sub_2587B1CF8(v98, v100, v102);
  }

  else if (v28)
  {
    if (qword_27F95D0D0 != -1)
    {
      swift_once();
    }

    v209 = xmmword_27F9697F8;
    LOBYTE(v210) = 1;

    sub_25881E550(&v210 + 8);
    v160 = v212;
    v161 = v213;
    v162 = v214[0];
    v156 = v209;
    v157 = v210;
    v158 = v211[0];
    v159 = v211[1];
    v179 = v210;
    v180[0] = v211[0];
    v178 = v209;
    v183 = v214[0];
    v182 = v213;
    v181 = v212;
    v180[1] = v211[1];
    sub_258820FAC(&v178);
    v215 = v185;
    v216 = v186;
    LOBYTE(v217) = v187;
    v212 = v181;
    v213 = v182;
    v214[0] = v183;
    v214[1] = v184;
    v209 = v178;
    v210 = v179;
    v211[0] = v180[0];
    v211[1] = v180[1];
    sub_2588200C4(&v156, &v199, sub_258820B38);
    sub_2588209D8(0);
    sub_258820B38();
    sub_258820DB4();
    sub_258820DE8();
    sub_2588BC778();
    v215 = v175;
    v216 = v176;
    LOBYTE(v217) = v177;
    v212 = v171;
    v213 = v172;
    v214[0] = v173;
    v214[1] = v174;
    v209 = v167;
    v210 = v168;
    v211[0] = v169;
    v211[1] = v170;
    sub_258820FB8(&v209);
    v196 = v215;
    v197 = v216;
    v198 = v217;
    v192 = v212;
    v193 = v213;
    v194 = v214[0];
    v195 = v214[1];
    v188 = v209;
    v189 = v210;
    v190 = v211[0];
    v191 = v211[1];
    sub_258820990(0);
    sub_2588208A4();
    sub_258820D6C();
    sub_258820C7C();
    sub_2588BC778();
    v72 = v207;
    *(v27 + 8) = v206;
    *(v27 + 9) = v72;
    *(v27 + 80) = v208;
    v73 = v204;
    *(v27 + 4) = v203;
    *(v27 + 5) = v73;
    v74 = v205[1];
    *(v27 + 6) = v205[0];
    *(v27 + 7) = v74;
    v75 = v200;
    *v27 = v199;
    *(v27 + 1) = v75;
    v76 = v202;
    *(v27 + 2) = v201;
    *(v27 + 3) = v76;
    swift_storeEnumTagMultiPayload();
    sub_258820948(0);
    sub_258820D24();
    sub_258820E64();
    sub_2588BC778();
    return sub_2588211B0(&v156, sub_258820B38);
  }

  else
  {
    v29 = (v1 + *(type metadata accessor for MedicalIDDataViewModel() + 40));
    v30 = v29[1];
    v129 = a1;
    if (!v30)
    {
      goto LABEL_8;
    }

    v31 = *v29;
    v32 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v32 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
LABEL_8:
      if (qword_27F95D0C0 != -1)
      {
        swift_once();
      }

      v31 = qword_27F9697D8;
    }

    *&v209 = v31;
    *(&v209 + 1) = v33;
    sub_25878F648();
    v34 = sub_2588BCDF8();
    v126 = v35;
    v127 = v34;
    v37 = v36;
    v128 = v38;
    sub_25881E27C(&v188);
    v39 = sub_2588BCCC8();
    KeyPath = swift_getKeyPath();
    v41 = sub_2588BD1E8();
    v135 = v190;
    v136 = v191;
    v137 = v192;
    v138 = v193;
    v133 = v188;
    v134 = v189;
    *&v139 = KeyPath;
    *(&v139 + 1) = v39;
    v42 = swift_getKeyPath();
    v211[1] = v136;
    v212 = v137;
    v213 = v138;
    v214[0] = v139;
    v209 = v133;
    v210 = v134;
    v211[0] = v135;
    v140[0] = v188;
    v140[4] = v192;
    v140[5] = v193;
    v140[2] = v190;
    v140[3] = v191;
    v140[1] = v189;
    v141 = KeyPath;
    v142 = v39;
    sub_2588200C4(&v133, &v199, sub_258820B18);
    sub_2588211B0(v140, sub_258820B18);
    v143[4] = v212;
    v143[5] = v213;
    v143[6] = v214[0];
    v143[0] = v209;
    v143[1] = v210;
    v143[2] = v211[0];
    v143[3] = v211[1];
    *&v144 = v42;
    *(&v144 + 1) = v41;
    v166[4] = v212;
    v166[5] = v213;
    v166[6] = v214[0];
    v166[7] = v144;
    v166[0] = v209;
    v166[1] = v210;
    v166[2] = v211[0];
    v166[3] = v211[1];
    v132 = v37 & 1;
    v145[2] = v211[0];
    v145[3] = v211[1];
    v145[0] = v209;
    v145[1] = v210;
    v145[6] = v214[0];
    v145[7] = v144;
    v145[4] = v212;
    v145[5] = v213;
    v152 = v212;
    v153 = v213;
    v154 = v214[0];
    v155 = v144;
    v150 = v211[0];
    v151 = v211[1];
    v148 = v209;
    v149 = v210;
    v43 = v127;
    *&v146 = v127;
    *(&v146 + 1) = v126;
    LOBYTE(v147) = v37 & 1;
    *(&v147 + 1) = v128;
    v160 = v211[0];
    v161 = v211[1];
    v158 = v209;
    v159 = v210;
    v164 = v214[0];
    v165 = v144;
    v162 = v212;
    v163 = v213;
    v156 = v146;
    v157 = v147;
    v44 = v126;
    sub_2587A99B0(v127, v126, v37 & 1);

    sub_2588200C4(v143, &v209, sub_258820A74);
    sub_2587A99B0(v43, v44, v37 & 1);

    sub_2588200C4(v145, &v209, sub_258820A74);
    sub_2588211B0(v166, sub_258820A74);
    sub_2587B1CF8(v43, v44, v37 & 1);

    v183 = v162;
    v184 = v163;
    v185 = v164;
    v186 = v165;
    v180[1] = v159;
    v181 = v160;
    v182 = v161;
    v178 = v156;
    v179 = v157;
    v180[0] = v158;
    sub_258820FC0(&v178);
    v215 = v185;
    v216 = v186;
    LOBYTE(v217) = v187;
    v212 = v181;
    v213 = v182;
    v214[0] = v183;
    v214[1] = v184;
    v209 = v178;
    v210 = v179;
    v211[0] = v180[0];
    v211[1] = v180[1];
    sub_2588200C4(&v146, &v199, sub_258820A0C);
    sub_2588209D8(0);
    sub_258820B38();
    sub_258820DB4();
    sub_258820DE8();
    sub_2588BC778();
    v215 = v175;
    v216 = v176;
    LOBYTE(v217) = v177;
    v212 = v171;
    v213 = v172;
    v214[0] = v173;
    v214[1] = v174;
    v209 = v167;
    v210 = v168;
    v211[0] = v169;
    v211[1] = v170;
    sub_258820FB8(&v209);
    v196 = v215;
    v197 = v216;
    v198 = v217;
    v192 = v212;
    v193 = v213;
    v194 = v214[0];
    v195 = v214[1];
    v188 = v209;
    v189 = v210;
    v190 = v211[0];
    v191 = v211[1];
    sub_258820990(0);
    sub_2588208A4();
    sub_258820D6C();
    sub_258820C7C();
    sub_2588BC778();
    v45 = v207;
    *(v27 + 8) = v206;
    *(v27 + 9) = v45;
    *(v27 + 80) = v208;
    v46 = v204;
    *(v27 + 4) = v203;
    *(v27 + 5) = v46;
    v47 = v205[1];
    *(v27 + 6) = v205[0];
    *(v27 + 7) = v47;
    v48 = v200;
    *v27 = v199;
    *(v27 + 1) = v48;
    v49 = v202;
    *(v27 + 2) = v201;
    *(v27 + 3) = v49;
    swift_storeEnumTagMultiPayload();
    sub_258820948(0);
    sub_258820D24();
    sub_258820E64();
    sub_2588BC778();
    sub_2588211B0(&v146, sub_258820A0C);
    sub_2588211B0(v143, sub_258820A74);
    sub_2587B1CF8(v127, v44, v37 & 1);
  }
}

uint64_t sub_25881E27C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for MedicalIDDataViewModel() + 40);
  if (!MedicalIDPersonalInfoViewModel.localizedAgeDescription()().value._object)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  sub_25878F648();
  v3 = sub_2588BCDF8();
  v5 = v4;
  v21 = v6;
  v23 = v7;
  if (!MedicalIDPersonalInfoViewModel.spokenLanguageDescription()().value._object)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  v8 = sub_2588BCDF8();
  v10 = v9;
  v12 = v11;
  v22 = v13;
  if (!MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()().value._object)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  v14 = sub_2588BCDF8();
  v16 = v15;
  v18 = v17 & 1;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12 & 1;
  *(a1 + 56) = v22;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v17 & 1;
  *(a1 + 88) = v19;
  sub_2587A99B0(v3, v5, v21 & 1);

  sub_2587A99B0(v8, v10, v12 & 1);

  sub_2587A99B0(v14, v16, v18);

  sub_2587B1CF8(v14, v16, v18);

  sub_2587B1CF8(v8, v10, v12 & 1);

  sub_2587B1CF8(v3, v5, v21 & 1);
}

double sub_25881E550@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BD858();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v4;
  sub_2588BBAB8();
  v8 = sub_2588BD8B8();
  v10 = v9;
  v11 = sub_2588BC6E8();
  v18 = 1;
  sub_25881E73C(v8, v10, v16);

  *&v17[55] = v16[3];
  *&v17[39] = v16[2];
  *&v17[23] = v16[1];
  *&v17[7] = v16[0];
  v12 = *v17;
  *(a1 + 33) = *&v17[16];
  result = *&v17[32];
  v14 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = v14;
  v15 = v18;
  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
  *(a1 + 80) = *&v17[63];
  *(a1 + 17) = v12;
  return result;
}

uint64_t sub_25881E73C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a2;
  v34 = sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v35 = v7;
  v9 = v8;
  v10 = *(type metadata accessor for MedicalIDDataViewModel() + 48);
  sub_2587AFFC8(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2588BB9B8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_2588BE0A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BE088();
  v21 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v14, v20);
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  sub_2588211B0(v14, sub_2587AFFC8);
  v24 = 4271950;
  if (v23)
  {
    v24 = v21;
  }

  v25 = 0xE300000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v38 = v24;
  v39 = v25;
  v26 = sub_2588BCDF8();
  v28 = v27;
  v29 = v35 & 1;
  v36 = v35 & 1;
  LOBYTE(v38) = v35 & 1;
  v31 = v30 & 1;
  v37 = v30 & 1;
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v29;
  *(a3 + 24) = v9;
  *(a3 + 32) = v26;
  *(a3 + 40) = v27;
  *(a3 + 48) = v30 & 1;
  *(a3 + 56) = v32;
  sub_2587A99B0(v4, v6, v29);

  sub_2587A99B0(v26, v28, v31);

  sub_2587B1CF8(v26, v28, v31);

  sub_2587B1CF8(v4, v6, v36);
}

uint64_t sub_25881E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_258820394();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588202E0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588202AC(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v53 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  v21 = *(a1 + *(type metadata accessor for MedicalIDDataViewModel() + 20) + 16);
  v22 = *(v21 + 16);
  v55 = v20;
  if (v22)
  {
    KeyPath = swift_getKeyPath();
    v51 = &v50;
    v61[0] = v21;
    v24 = MEMORY[0x28223BE20](KeyPath);
    *(&v50 - 4) = v61;
    *(&v50 - 3) = v24;
    v48 = sub_25881EF9C;
    v49 = 0;
    sub_258820458();
    v52 = v10;
    sub_258820800(&qword_27F95F320, sub_258820458, sub_25882055C);

    v25 = v55;
    sub_2588BCD48();

    sub_258820E1C(&qword_27F95F330, sub_258820394);
    sub_2588BCF98();
    (*(v5 + 8))(v8, v4);
    v26 = v52;
    (*(v11 + 32))(v25, v14, v52);
    (*(v11 + 56))(v25, 0, 1, v26);
  }

  else
  {
    (*(v11 + 56))(v20, 1, 1, v10);
  }

  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v27 = qword_27F95DA88;
  LOWORD(v49) = 256;
  v48 = 0;
  v28 = sub_2588BCDE8();
  v30 = v29;
  v50 = v29;
  v32 = v31;
  v52 = v33;
  v51 = sub_2588BCCC8();
  v34 = swift_getKeyPath();
  v35 = sub_2588BD1E8();
  v36 = swift_getKeyPath();
  LOBYTE(v61[0]) = v32 & 1;
  v37 = v55;
  v38 = v53;
  sub_258820F38(v55, v53, sub_2588202AC);
  v39 = v54;
  sub_258820F38(v38, v54, sub_2588202AC);
  sub_25882023C();
  v41 = (v39 + *(v40 + 48));
  v42 = v28;
  *&v57 = v28;
  *(&v57 + 1) = v30;
  LOBYTE(v58) = v32 & 1;
  *(&v58 + 1) = *v56;
  DWORD1(v58) = *&v56[3];
  v43 = v52;
  *(&v58 + 1) = v52;
  *&v59 = v34;
  v44 = v51;
  *(&v59 + 1) = v51;
  *&v60 = v36;
  *(&v60 + 1) = v35;
  v45 = v58;
  *v41 = v57;
  v41[1] = v45;
  v46 = v60;
  v41[2] = v59;
  v41[3] = v46;
  sub_2588200C4(&v57, v61, sub_258813FA8);
  sub_258821150(v37, sub_2588202AC);
  v61[0] = v42;
  v61[1] = v50;
  v62 = v32 & 1;
  *v63 = *v56;
  *&v63[3] = *&v56[3];
  v64 = v43;
  v65 = v34;
  v66 = v44;
  v67 = v36;
  v68 = v35;
  sub_2588211B0(v61, sub_258813FA8);
  return sub_258821150(v38, sub_2588202AC);
}

uint64_t sub_25881EF9C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v14 = a1[4];
  v2 = v14;
  v15 = v3;
  v5 = a1[7];
  v16 = a1[6];
  v4 = v16;
  v17 = v5;
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v8 = a1[3];
  v12 = a1[2];
  v7 = v12;
  v13 = v8;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = v5;
  *(a2 + 128) = 1;
  return sub_2587914E8(v11, &v10);
}

__n128 sub_25881F004@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for MedicalIDDataViewModel() + 36);
  v5 = (v4 + *(type metadata accessor for MedicalIDBiometricsViewModel() + 20));
  if (v5[12] || v5[13] || v5[11])
  {
    sub_25881F1F4(a1, v15);
    v19 = 0;
    v18 = 0;
  }

  else
  {
    sub_2588BC688();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v10 = qword_27F95DA88;
    v11 = sub_2588BCDE8();
    v19 = v12 & 1;
    v15[0] = v11;
    v15[1] = v13;
    v16 = v12 & 1;
    v17 = v14;
    v18 = 1;
  }

  sub_258820674(0);
  sub_258820800(&qword_27F95F370, sub_258820674, sub_258820870);
  sub_2588BC778();
  result = v23;
  v7 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v7;
  *(a2 + 96) = v26;
  v8 = v21;
  v9 = v22;
  *a2 = v20;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_25881F1F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v2 = a1 + *(type metadata accessor for MedicalIDDataViewModel() + 36);
  sub_258821310(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v62 - v7;
  sub_258821368(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = type metadata accessor for MedicalIDBiometricsViewModel();
  v14 = v2 + v13[5];
  v15 = v13[7];
  sub_2587F1E14(*(v14 + 96), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2588213C4(v12, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    v16 = qword_27F9697D8;
    v17 = unk_27F9697E0;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v16 = sub_2587F21C4(v8);
    v17 = v18;
    (*(v5 + 8))(v8, v4);
  }

  v72 = v16;
  v73 = v17;
  sub_25878F648();
  v19 = sub_2588BCDF8();
  v66 = v14;
  v67 = v19;
  v63 = v20;
  v22 = v21;
  v65 = v23;
  v24 = v2 + v13[8];
  v25 = *(v14 + 104);
  sub_258821310(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v27 = v26;
  v62 = &v62;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v62 - v30;
  sub_258821368(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v62 - v34;
  sub_25884D544(v25, &v62 - v34);
  if ((*(v28 + 48))(v35, 1, v27) == 1)
  {
    sub_2588213C4(v35, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    v36 = qword_27F9697D8;
    v37 = unk_27F9697E0;
  }

  else
  {
    (*(v28 + 32))(v31, v35, v27);
    v38 = *(v24 + *(type metadata accessor for MedicalIDWeightFormatter() + 24));
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v36 = sub_2588BDC68();
    v37 = v39;
    (*(v28 + 8))(v31, v27);
  }

  v40 = v66;
  v72 = v36;
  v73 = v37;
  v41 = sub_2588BCDF8();
  v66 = v42;
  v44 = v43;
  v46 = v45;
  v47 = *(v40 + 88);
  v48 = HKStringForBloodType();
  v49 = sub_2588BD8A8();
  v51 = v50;

  v72 = v49;
  v73 = v51;
  v52 = sub_2588BCDF8();
  v54 = v53;
  LOBYTE(v72) = v22 & 1;
  v44 &= 1u;
  v71 = v44;
  v70 = v22 & 1;
  v69 = v44;
  LOBYTE(v48) = v55 & 1;
  v68 = v55 & 1;
  v57 = v66;
  v56 = v67;
  v59 = v63;
  v58 = v64;
  *v64 = v67;
  v58[1] = v59;
  *(v58 + 16) = v22 & 1;
  v58[3] = v65;
  v58[4] = v41;
  v58[5] = v57;
  *(v58 + 48) = v44;
  v58[7] = v46;
  v58[8] = v52;
  v58[9] = v53;
  *(v58 + 80) = v55 & 1;
  v58[11] = v60;
  sub_2587A99B0(v56, v59, v22 & 1);

  sub_2587A99B0(v41, v57, v44);

  sub_2587A99B0(v52, v54, v48);

  sub_2587B1CF8(v52, v54, v48);

  sub_2587B1CF8(v41, v57, v71);

  sub_2587B1CF8(v67, v59, v72);
}

uint64_t sub_25881F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v61 = a2;
  v55 = *(a1 + 16);
  sub_25881FD44(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
  v59 = sub_2588BC1E8();
  sub_25881FD44(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
  v3 = sub_2588BC1E8();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v54 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v57 = &v50[-v7];
  sub_25881FDB0(0);
  v53 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v50[-v12];
  v52 = v2;
  v14 = v2[1];
  v65 = *v2;
  v66 = v14;
  sub_25878F648();

  v15 = sub_2588BCDF8();
  v17 = v16;
  v51 = v18;
  v20 = v19;
  sub_2587E6008();
  v22 = &v13[*(v21 + 36)];
  sub_2587E6068(0);
  v24 = *(v23 + 28);
  v25 = *MEMORY[0x277CE0B48];
  v26 = sub_2588BCDB8();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v22 + v24, v25, v26);
  (*(v27 + 56))(v22 + v24, 0, 1, v26);
  *v22 = swift_getKeyPath();
  *v13 = v15;
  *(v13 + 1) = v17;
  v28 = v51;
  LOBYTE(v25) = v51 & 1;
  v13[16] = v51 & 1;
  *(v13 + 3) = v20;
  sub_2587A99B0(v15, v17, v28 & 1);

  v29 = sub_2588BCCC8();
  KeyPath = swift_getKeyPath();
  sub_25881FDD0(0);
  v32 = &v13[*(v31 + 36)];
  *v32 = KeyPath;
  v32[1] = v29;
  v33 = sub_2588BD1E8();
  sub_2587B1CF8(v15, v17, v25);

  v34 = swift_getKeyPath();
  v35 = v52;
  v36 = v53;
  v37 = &v13[*(v53 + 36)];
  *v37 = v34;
  v37[1] = v33;
  v38 = *(v58 + 24);
  v39 = v35 + *(v58 + 40);
  v40 = v54;
  sub_25886A430(*(v35 + 16), v55, v38);
  v41 = sub_25881FF34(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
  v64[4] = v38;
  v64[5] = v41;
  WitnessTable = swift_getWitnessTable();
  v43 = sub_25881FF34(&qword_27F95ECE8, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
  v64[2] = WitnessTable;
  v64[3] = v43;
  v44 = swift_getWitnessTable();
  v45 = v57;
  sub_2587DCF7C(v40, v3, v44);
  v46 = v60;
  v47 = *(v60 + 8);
  v47(v40, v3);
  v48 = v56;
  sub_2588200C4(v13, v56, sub_25881FDB0);
  v65 = v48;
  (*(v46 + 16))(v40, v45, v3);
  v66 = v40;
  v64[0] = v36;
  v64[1] = v3;
  v62 = sub_25881FF84();
  v63 = v44;
  sub_25881C7E0(&v65, 2uLL, v64);
  v47(v45, v3);
  sub_2588211B0(v13, sub_25881FDB0);
  v47(v40, v3);
  return sub_2588211B0(v48, sub_25881FDB0);
}

void sub_25881FD44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25882050C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25881FDF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25881FD44(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25881FE98(uint64_t a1)
{
  sub_2587E609C(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588200C4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587E609C);
  return sub_2588BC518();
}

uint64_t sub_25881FF34(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25881FD44(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25881FF84()
{
  result = qword_27F95F2C8;
  if (!qword_27F95F2C8)
  {
    sub_25881FDB0(255);
    sub_258820024();
    sub_25881FF34(&qword_27F95ECE8, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F2C8);
  }

  return result;
}

unint64_t sub_258820024()
{
  result = qword_27F95F2D0;
  if (!qword_27F95F2D0)
  {
    sub_25881FDD0(255);
    sub_2587E643C();
    sub_25881FF34(&qword_27F95D9B8, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F2D0);
  }

  return result;
}

uint64_t sub_2588200C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258820174()
{
  if (!qword_27F95F2E8)
  {
    sub_258820208(255);
    sub_258820E1C(&qword_27F95F338, sub_258820208);
    v0 = type metadata accessor for NanoGridItemCell();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F2E8);
    }
  }
}

void sub_25882023C()
{
  if (!qword_27F95F2F8)
  {
    sub_2588202AC(255);
    sub_258813FA8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F2F8);
    }
  }
}

void sub_2588202E0()
{
  if (!qword_27F95F308)
  {
    sub_258820394();
    sub_258820E1C(&qword_27F95F330, sub_258820394);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F308);
    }
  }
}

void sub_258820394()
{
  if (!qword_27F95F310)
  {
    sub_258820458();
    sub_258820800(&qword_27F95F320, sub_258820458, sub_25882055C);
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F310);
    }
  }
}

void sub_258820458()
{
  if (!qword_27F95F318)
  {
    sub_25882050C(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    sub_2587E7F94();
    sub_258791374();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F318);
    }
  }
}

void sub_25882050C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25882055C()
{
  result = qword_27F95F328;
  if (!qword_27F95F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F328);
  }

  return result;
}

void sub_2588205B0()
{
  if (!qword_27F95F340)
  {
    sub_258820614();
    sub_25882073C();
    v0 = type metadata accessor for NanoGridItemCell();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F340);
    }
  }
}

void sub_258820614()
{
  if (!qword_27F95F348)
  {
    sub_258820674(255);
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F348);
    }
  }
}

void sub_2588206DC()
{
  if (!qword_27F95F360)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F360);
    }
  }
}

unint64_t sub_25882073C()
{
  result = qword_27F95F368;
  if (!qword_27F95F368)
  {
    sub_258820614();
    sub_258820800(&qword_27F95F370, sub_258820674, sub_258820870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F368);
  }

  return result;
}

uint64_t sub_258820800(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588208A4()
{
  if (!qword_27F95F380)
  {
    sub_2588163F8();
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F380);
    }
  }
}

void sub_258820A0C()
{
  if (!qword_27F95F3B8)
  {
    sub_258820A74(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F3B8);
    }
  }
}

void sub_258820A94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25881FD44(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258820B38()
{
  if (!qword_27F95F3D0)
  {
    sub_2587A9ABC();
    sub_258820E1C(&qword_27F95D440, sub_2587A9ABC);
    v0 = type metadata accessor for NanoGridItemCell();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F3D0);
    }
  }
}

unint64_t sub_258820C7C()
{
  result = qword_27F95F3F8;
  if (!qword_27F95F3F8)
  {
    sub_2588208A4();
    sub_258820E1C(&qword_27F95F3D8, sub_2588163F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F3F8);
  }

  return result;
}

uint64_t sub_258820E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258820EAC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258820F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258820FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25882102C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_25882050C(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  sub_2587E7F94();
  sub_258791374();
  sub_25882055C();

  return sub_2588BD4B8();
}

uint64_t sub_258821150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588211B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_258821210@<Q0>(_OWORD *a1@<X0>, void (*a2)(__int128 *__return_ptr, _OWORD *)@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[5];
  v22[4] = a1[4];
  v22[5] = v4;
  v5 = a1[7];
  v22[6] = a1[6];
  v22[7] = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v22[2] = a1[2];
  v22[3] = v7;
  a2(&v13, v22);
  v29 = v19;
  v30 = v20;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v23 = v13;
  v24 = v14;
  v32[6] = v19;
  v32[7] = v20;
  v32[2] = v15;
  v32[3] = v16;
  v32[4] = v17;
  v32[5] = v18;
  v31 = v21;
  v33 = v21;
  v32[0] = v13;
  v32[1] = v14;
  sub_2588144B4(&v23, &v12);
  sub_2588145E4(v32);
  v8 = v30;
  *(a3 + 96) = v29;
  *(a3 + 112) = v8;
  *(a3 + 128) = v31;
  v9 = v26;
  *(a3 + 32) = v25;
  *(a3 + 48) = v9;
  v10 = v28;
  *(a3 + 64) = v27;
  *(a3 + 80) = v10;
  result = v24;
  *a3 = v23;
  *(a3 + 16) = result;
  return result;
}

double sub_258821308@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  *&result = sub_258821210(a1, *(v2 + 16), a2).n128_u64[0];
  return result;
}

void sub_258821310(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BB6D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258821368(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_258821310(255, a3, a4, a5);
    v6 = sub_2588BDCE8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2588213C4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  sub_258821368(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_258821468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void *NanoMedicalIDMainView.init(healthStore:medicalIDData:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2588BD2B8();
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  sub_2588BD2B8();
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  v6 = [objc_opt_self() standardConfiguration];
  type metadata accessor for MedicalIDModelProvider();
  swift_allocObject();
  result = sub_2587B31A0(a1, a2, v6);
  *a3 = result;
  return result;
}

uint64_t NanoMedicalIDMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_258821EDC();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258821F78();
  v8 = v7;
  v72 = *(v7 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MedicalIDDataViewModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258822A90(0, &qword_27F95F498, sub_2587DB1F0, sub_258821F78, MEMORY[0x277CE0330]);
  v73 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v64 - v16;
  sub_2587DB1F0();
  v75 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1[1];
  v81 = *v1;
  *v82 = v26;
  *&v82[16] = *(v1 + 4);
  v27 = v81;
  v28 = *(v81 + 56);
  swift_getKeyPath();
  *&v76 = v28;
  sub_258822824(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v29 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258822B14(v28 + v29, v25, sub_2587B63B8);
  v30 = type metadata accessor for MedicalIDData();
  if ((*(*(v30 - 8) + 48))(v25, 1, v30) == 1)
  {
    sub_2588BBFC8();
    v31 = v75;
    (*(v18 + 16))(v74, v21, v75);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95E1C0, sub_2587DB1F0);
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    v33 = v32;
    v34 = sub_258822038();
    v35 = sub_2588221D4();
    *&v76 = v4;
    *(&v76 + 1) = v33;
    v77 = v34;
    v78 = v35;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return (*(v18 + 8))(v21, v31);
  }

  else
  {
    v37 = sub_2588BBB48();
    v64 = &v64;
    v38 = *(v37 - 8);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    v41 = &v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBB18();
    v42 = sub_2588BBAC8();
    v65 = v4;
    v43 = v42;
    v68 = a1;
    v44 = *(v42 - 8);
    v66 = v8;
    v45 = v44;
    v46 = *(v44 + 64);
    MEMORY[0x28223BE20](v42);
    v48 = &v64 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BBA98();
    v67 = v25;
    v49 = v70;
    sub_2587B4D50(v41, v48, v70);
    (*(v45 + 8))(v48, v43);
    (*(v38 + 8))(v41, v37);
    v50 = v69;
    v51 = v49;
    sub_258822260(&v81, v49, v69);
    sub_258822790(0, &qword_27F95F4A0, MEMORY[0x277D84560]);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_2588BFF50;
    v76 = *&v82[8];
    sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    *(v52 + 32) = v80;
    v53 = *(v27 + 56);
    swift_beginAccess();
    *(v52 + 33) = [*(v53 + 16) isEmpty];
    v79 = v52;
    v54 = swift_allocObject();
    v55 = *v82;
    *(v54 + 16) = v81;
    *(v54 + 32) = v55;
    *(v54 + 48) = *&v82[16];
    sub_2588227EC(&v81, &v76);
    sub_258822790(0, &qword_27F95F468, MEMORY[0x277D83940]);
    v57 = v56;
    v58 = sub_258822038();
    v59 = sub_2588221D4();
    v60 = v71;
    v61 = v65;
    sub_2588BD118();

    sub_258822B7C(v50, sub_258821EDC);
    v62 = v72;
    v63 = v66;
    (*(v72 + 16))(v74, v60, v66);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95E1C0, sub_2587DB1F0);
    *&v76 = v61;
    *(&v76 + 1) = v57;
    v77 = v58;
    v78 = v59;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    (*(v62 + 8))(v60, v63);
    sub_258822B7C(v51, type metadata accessor for MedicalIDDataViewModel);
    return sub_258822B7C(v67, sub_2587B63B8);
  }
}

void sub_258821EDC()
{
  if (!qword_27F95F450)
  {
    sub_258822A90(255, &qword_27F95F458, type metadata accessor for NanoSetupMedicalIDView, type metadata accessor for NanoMedicalIDDataView, MEMORY[0x277CE0338]);
    v0 = sub_2588BD238();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F450);
    }
  }
}

void sub_258821F78()
{
  if (!qword_27F95F460)
  {
    sub_258821EDC();
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    sub_258822038();
    sub_2588221D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95F460);
    }
  }
}

unint64_t sub_258822038()
{
  result = qword_27F95F470;
  if (!qword_27F95F470)
  {
    sub_258821EDC();
    sub_2588220B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F470);
  }

  return result;
}

unint64_t sub_2588220B0()
{
  result = qword_27F95F478;
  if (!qword_27F95F478)
  {
    sub_258822A90(255, &qword_27F95F458, type metadata accessor for NanoSetupMedicalIDView, type metadata accessor for NanoMedicalIDDataView, MEMORY[0x277CE0338]);
    sub_258822824(&qword_27F95F480, type metadata accessor for NanoSetupMedicalIDView);
    sub_258822824(&qword_27F95F488, type metadata accessor for NanoMedicalIDDataView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F478);
  }

  return result;
}

unint64_t sub_2588221D4()
{
  result = qword_27F95F490;
  if (!qword_27F95F490)
  {
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F490);
  }

  return result;
}

uint64_t sub_258822260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = type metadata accessor for NanoMedicalIDDataView();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258822A90(0, &qword_27F95F4B8, type metadata accessor for NanoSetupMedicalIDView, type metadata accessor for NanoMedicalIDDataView, MEMORY[0x277CE0330]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = type metadata accessor for NanoSetupMedicalIDView();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(a1 + 1);
  sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if (v31)
  {
    sub_258822B14(a2, v8, type metadata accessor for MedicalIDDataViewModel);
    v17 = *a1;
    v31 = *(a1 + 3);

    sub_2588BD2E8();
    v18 = v29;
    *&v8[*(v5 + 20)] = v17;
    v19 = v30;
    v20 = &v8[*(v5 + 24)];
    *v20 = v18;
    v20[16] = v19;
    sub_258822B14(v8, v12, type metadata accessor for NanoMedicalIDDataView);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95F480, type metadata accessor for NanoSetupMedicalIDView);
    sub_258822824(&qword_27F95F488, type metadata accessor for NanoMedicalIDDataView);
    sub_2588BC778();
    v21 = type metadata accessor for NanoMedicalIDDataView;
    v22 = v8;
  }

  else
  {
    v23 = *a1;
    sub_258822B14(a2, v16 + *(v13 + 20), type metadata accessor for MedicalIDDataViewModel);
    v31 = *(a1 + 3);

    sub_2588BD2E8();
    v24 = v29;
    v25 = v30;
    *v16 = v23;
    v26 = v16 + *(v13 + 24);
    *v26 = v24;
    v26[16] = v25;
    sub_258822B14(v16, v12, type metadata accessor for NanoSetupMedicalIDView);
    swift_storeEnumTagMultiPayload();
    sub_258822824(&qword_27F95F480, type metadata accessor for NanoSetupMedicalIDView);
    sub_258822824(&qword_27F95F488, type metadata accessor for NanoMedicalIDDataView);
    sub_2588BC778();
    v21 = type metadata accessor for NanoSetupMedicalIDView;
    v22 = v16;
  }

  return sub_258822B7C(v22, v21);
}

uint64_t sub_258822688(uint64_t a1)
{
  v2 = *(*a1 + 56);
  swift_beginAccess();
  if ([*(v2 + 16) isEmpty] && (v5 = *(a1 + 24), sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]), sub_2588BD2C8(), (v4 & 1) == 0))
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = *(a1 + 8);
    sub_258822790(0, &qword_27F95DAF8, MEMORY[0x277CE10B8]);
  }

  return sub_2588BD2D8();
}

void sub_258822790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258822824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258822888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2588228D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_258822928()
{
  result = qword_27F95F4A8;
  if (!qword_27F95F4A8)
  {
    sub_258822A90(255, &qword_27F95F4B0, sub_2587DB1F0, sub_258821F78, MEMORY[0x277CE0338]);
    sub_258822824(&qword_27F95E1C0, sub_2587DB1F0);
    sub_258821EDC();
    sub_258822790(255, &qword_27F95F468, MEMORY[0x277D83940]);
    sub_258822038();
    sub_2588221D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F4A8);
  }

  return result;
}

void sub_258822A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_258822B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258822B7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NanoSetupMedicalIDView()
{
  result = qword_27F95F4C0;
  if (!qword_27F95F4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258822C50()
{
  type metadata accessor for MedicalIDModelProvider();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDDataViewModel();
    if (v1 <= 0x3F)
    {
      sub_258823BD0(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_258822D2C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2588BC6E8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  sub_258823FE4();
  sub_258822DA8(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_2588BCB88();
  sub_2588238BC();
  v6 = a2 + *(v5 + 36);
  *v6 = a1;
  result = 20.0;
  *(v6 + 8) = xmmword_2588C3E40;
  *(v6 + 24) = xmmword_2588C3E40;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_258822DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  sub_258823CE4(0, &qword_27F95F518, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0338]);
  v53 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  sub_258823C20();
  v51 = v7;
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v46 - v11;
  sub_2587E6128(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2588BD258();
  v16 = sub_2588BCC18();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v63 = sub_2588BCC38();
  sub_2588241C4(v15, sub_2587E6128);
  KeyPath = swift_getKeyPath();
  v62 = sub_2588BD168();
  v61 = sub_2588BD1B8();
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v17 = qword_27F95DA88;
  v60 = sub_2588BCDE8();
  v59 = v18;
  v20 = v19;
  v58 = v21;
  v56 = swift_getKeyPath();
  v57 = sub_2588BCCD8();
  v22 = swift_getKeyPath();
  v50 = v22;
  v23 = v20 & 1;
  LOBYTE(v75[0]) = v20 & 1;
  v49 = v20 & 1;
  sub_2588BC688();
  v48 = sub_2588BCDE8();
  v25 = v24;
  v46 = v24;
  v27 = v26;
  v47 = v28;
  v55 = swift_getKeyPath();
  sub_2588234EC(v54, v6);
  sub_258823DE8();
  v29 = v64;
  sub_2588BC118();
  v68 = v27 & 1;
  v30 = v52;
  v31 = *(v52 + 16);
  v32 = v65;
  v33 = v29;
  v34 = v51;
  v31(v65, v33, v51);
  v35 = KeyPath;
  *a2 = v67;
  *(a2 + 8) = v35;
  v36 = v62;
  *(a2 + 16) = v63;
  *(a2 + 24) = v36;
  *(a2 + 32) = v61;
  *&v71 = v60;
  *(&v71 + 1) = v59;
  LOBYTE(v72) = v23;
  *(&v72 + 1) = *v70;
  DWORD1(v72) = *&v70[3];
  *(&v72 + 1) = v58;
  *&v73 = v56;
  BYTE8(v73) = 1;
  HIDWORD(v73) = *&v69[3];
  *(&v73 + 9) = *v69;
  *&v74 = v22;
  *(&v74 + 1) = v57;
  v37 = v71;
  v38 = v72;
  v39 = v73;
  *(a2 + 88) = v74;
  *(a2 + 72) = v39;
  *(a2 + 56) = v38;
  *(a2 + 40) = v37;
  LOBYTE(v22) = v68;
  v40 = v48;
  *(a2 + 104) = v48;
  *(a2 + 112) = v25;
  *(a2 + 120) = v22;
  v41 = v55;
  *(a2 + 128) = v47;
  *(a2 + 136) = v41;
  *(a2 + 144) = 1;
  sub_2588239E4();
  v31((a2 + *(v42 + 80)), v32, v34);

  sub_2588240F8(&v71, v75, sub_258823B88);
  v43 = v46;
  sub_2587A99B0(v40, v46, v22);
  v44 = *(v30 + 8);

  v44(v64, v34);
  v44(v65, v34);
  sub_2587B1CF8(v40, v43, v68);

  v75[0] = v60;
  v75[1] = v59;
  v76 = v49;
  *v77 = *v70;
  *&v77[3] = *&v70[3];
  v78 = v58;
  v79 = v56;
  v80 = 1;
  *v81 = *v69;
  *&v81[3] = *&v69[3];
  v82 = v50;
  v83 = v57;
  sub_2588241C4(v75, sub_258823B88);
}

uint64_t sub_2588234EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoMedicalIDEditView();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NanoSetupMedicalIDView();
  sub_2588240F8(a1 + *(v9 + 20), v8, type metadata accessor for MedicalIDDataViewModel);
  v10 = *a1;
  v11 = a1 + *(v9 + 24);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v11) = v11[16];
  v26 = v12;
  v27 = v13;
  v28 = v11;
  sub_258823BD0(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);

  sub_2588BD458();
  v14 = v24[0];
  v15 = v24[1];
  v16 = v25;
  *&v8[v5[8]] = swift_getKeyPath();
  sub_258824160(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager();
  sub_258824224(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v17 = sub_2588BBF58();
  *&v8[v5[7]] = v10;
  v18 = &v8[v5[9]];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = &v8[v5[10]];
  LOBYTE(v24[0]) = 0;
  sub_2588BD2B8();
  v21 = v27;
  *v20 = v26;
  *(v20 + 1) = v21;
  v22 = &v8[v5[11]];
  *v22 = v14;
  *(v22 + 1) = v15;
  v22[16] = v16;
  sub_2587D850C(0, v10, a2);
  return sub_2588241C4(v8, type metadata accessor for NanoMedicalIDEditView);
}

uint64_t sub_258823754@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_258823838()
{
  sub_2588BCB68();
  sub_2588238BC();
  sub_258823F34();
  return sub_2588BBEE8();
}

void sub_2588238BC()
{
  if (!qword_27F95F4D0)
  {
    sub_25882391C();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F4D0);
    }
  }
}

void sub_25882391C()
{
  if (!qword_27F95F4D8)
  {
    sub_2588239B0(255);
    sub_258824224(&qword_27F95F528, sub_2588239B0);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F4D8);
    }
  }
}

void sub_2588239E4()
{
  if (!qword_27F95F4E8)
  {
    sub_258823CE4(255, &qword_27F95F4F0, sub_258823ABC, sub_258823B1C, MEMORY[0x277CDFAB8]);
    sub_258823B88(255);
    sub_2587E5DE8();
    sub_258823C20();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95F4E8);
    }
  }
}

void sub_258823ABC()
{
  if (!qword_27F95F4F8)
  {
    sub_2587B1964();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F4F8);
    }
  }
}

void sub_258823B1C()
{
  if (!qword_27F95F500)
  {
    v0 = sub_2588BC948();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F500);
    }
  }
}

void sub_258823BD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258823C20()
{
  if (!qword_27F95F510)
  {
    sub_258823CE4(255, &qword_27F95F518, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0338]);
    sub_258823DE8();
    v0 = sub_2588BC128();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F510);
    }
  }
}

void sub_258823CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_258823D68()
{
  result = qword_27F95E2E0;
  if (!qword_27F95E2E0)
  {
    sub_2587DC1A4();
    sub_2587DC3CC();
    sub_2587A8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E2E0);
  }

  return result;
}

unint64_t sub_258823DE8()
{
  result = qword_27F95F520;
  if (!qword_27F95F520)
  {
    sub_258823CE4(255, &qword_27F95F518, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0338]);
    sub_2587DC504();
    sub_2587DC1A4();
    type metadata accessor for MedicalIDDataManager();
    sub_258823D68();
    sub_258824224(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F520);
  }

  return result;
}

unint64_t sub_258823F34()
{
  result = qword_27F95F530;
  if (!qword_27F95F530)
  {
    sub_2588238BC();
    sub_258824224(&qword_27F95F538, sub_25882391C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F530);
  }

  return result;
}

void sub_258823FE4()
{
  if (!qword_27F95F540)
  {
    sub_2588239B0(255);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F540);
    }
  }
}

uint64_t sub_25882404C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC488();
  *a1 = result;
  return result;
}

uint64_t sub_258824078(uint64_t *a1)
{
  v1 = *a1;

  return sub_2588BC498();
}

uint64_t sub_2588240A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2588BC458();
  *a1 = result;
  return result;
}

uint64_t sub_2588240F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258824160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2588241C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258824224(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25882426C()
{
  if (!qword_27F95F550)
  {
    sub_2588238BC();
    sub_258823F34();
    v0 = sub_2588BBED8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F550);
    }
  }
}

uint64_t PregnancySampleDataProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = v1;
  sub_258825320(0, &qword_27F95D830, MEMORY[0x277D85720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v2;
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  v13 = sub_2588BB9B8();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = a1;
  sub_2588BBBC8();
  *(v11 + 16) = &unk_2588C3F58;
  *(v11 + 24) = v8;
  v15 = sub_2588BDAA8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_2588BDA78();

  v16 = sub_2588BDA68();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v11;
  sub_2587ABD24(0, 0, v7, &unk_2588C3F68, v17);

  return v11;
}

uint64_t PregnancySampleDataProvider.ongoingEstimatedDueDate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_258825208();
  sub_2588BBB98();

  v3 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  return sub_2588252AC(v5 + v3, a1);
}

uint64_t PregnancySampleDataProvider.ongoingEstimatedDueDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  sub_2588252AC(v1 + v3, v11 - v6);
  v8 = sub_258825E88(v7, a1);
  sub_258826118(v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_258825208();
    sub_2588BBB88();
  }

  else
  {
    swift_beginAccess();
    sub_258826184(a1, v1 + v3);
    swift_endAccess();
  }

  return sub_258826118(a1);
}

uint64_t sub_2588246FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  swift_beginAccess();
  sub_258826184(a2, a1 + v4);
  return swift_endAccess();
}

void (*PregnancySampleDataProvider.ongoingEstimatedDueDate.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_258825208();
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  swift_beginAccess();
  return sub_258824880;
}

void sub_258824880(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_2588BBBA8();

  free(v1);
}

uint64_t sub_258824904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2588249AC;

  return sub_258826214(a1);
}

uint64_t sub_2588249AC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t static PregnancySampleDataProvider.defaultPregnancyModelProvider(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258824B84;

  return sub_258826214(a1);
}

uint64_t sub_258824B84(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t PregnancySampleDataProvider.__allocating_init(modelProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_258825320(0, &qword_27F95D830, MEMORY[0x277D85720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  v14 = sub_2588BB9B8();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  sub_2588BBBC8();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v15 = sub_2588BDAA8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_2588BDA78();

  v16 = sub_2588BDA68();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v12;
  sub_2587ABD24(0, 0, v9, &unk_2588C3FA8, v17);

  return v12;
}

uint64_t PregnancySampleDataProvider.init(modelProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_258825320(0, &qword_27F95D830, MEMORY[0x277D85720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate;
  v11 = sub_2588BB9B8();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  sub_2588BBBC8();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v12 = sub_2588BDAA8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_2588BDA78();

  v13 = sub_2588BDA68();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v3;
  sub_2587ABD24(0, 0, v9, &unk_2588C3FB0, v14);

  return v3;
}

uint64_t sub_258825010()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2587B672C;

  return sub_258824904(v2);
}

uint64_t sub_2588250A8()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587AB3F4;

  return PregnancySampleDataProvider.fetchData()();
}

uint64_t sub_258825154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2587AEAC8;

  return sub_2588250A8();
}

unint64_t sub_258825208()
{
  result = qword_27F95F568;
  if (!qword_27F95F568)
  {
    type metadata accessor for PregnancySampleDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F568);
  }

  return result;
}

uint64_t type metadata accessor for PregnancySampleDataProvider()
{
  result = qword_27F95F570;
  if (!qword_27F95F570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588252AC(uint64_t a1, uint64_t a2)
{
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258825320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PregnancySampleDataProvider.fetchData()()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_258825434, v3, v2);
}

uint64_t sub_258825434()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_258825520;

  return v6();
}

uint64_t sub_258825520(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 56);
  v8 = *(v3 + 48);
  if (v1)
  {
    v9 = sub_2588257C8;
  }

  else
  {
    v9 = sub_258825664;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_258825664()
{
  v1 = v0[9];
  v2 = v0[5];

  if (v1)
  {
    v3 = v0[9];
    if ([v3 state] == 1)
    {
      v4 = [v3 estimatedDueDate];
      sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
      v6 = *(*(v5 - 8) + 64) + 15;
      v7 = swift_task_alloc();
      if (v4)
      {
        sub_2588BB988();

        v8 = 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = v0[3];
      v10 = sub_2588BB9B8();
      (*(*(v10 - 8) + 56))(v7, v8, 1, v10);
      PregnancySampleDataProvider.ongoingEstimatedDueDate.setter(v7);
    }

    else
    {
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2588257C8()
{
  v22 = v0;
  v1 = v0[5];

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = sub_2588BBC98();
  __swift_project_value_buffer(v3, qword_27F969938);
  v4 = v2;
  v5 = sub_2588BBC78();
  v6 = sub_2588BDBD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315650;
    v12 = sub_2588BE0E8();
    v14 = sub_258790224(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_258790224(0x7461446863746566, 0xEB00000000292861, &v21);
    *(v10 + 22) = 2080;
    v0[2] = v8;
    v15 = v8;
    sub_25878D8F4();
    v16 = sub_2588BD8D8();
    v18 = sub_258790224(v16, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_25878B000, v5, v6, "%s %s Error: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v11, -1, -1);
    MEMORY[0x259C8DBE0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

void sub_258825A04(uint64_t a1, void *a2)
{
  sub_2588267E8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v10 = objc_allocWithZone(MEMORY[0x277CCD5B0]);
  aBlock[4] = sub_258826858;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258825DE8;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = a2;
  v13 = [v10 initWithUpdateHandler_];
  _Block_release(v11);

  [v12 executeQuery_];
}

id sub_258825BE0(uint64_t a1, void *a2, id a3, void *a4)
{
  if (a2)
  {
    sub_2588267E8();
    v7 = a2;
    sub_2588BDA48();
  }

  else
  {
    if (!a3)
    {
      v8 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a3 = 0;
    }

    v9 = a3;
    sub_2588267E8();
    sub_2588BDA38();
  }

  return [a4 stopQuery_];
}

uint64_t PregnancySampleDataProvider.deinit()
{
  v1 = *(v0 + 24);

  sub_258826118(v0 + OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate);
  v2 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider___observationRegistrar;
  v3 = sub_2588BBBD8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PregnancySampleDataProvider.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  sub_258826118(&v0[OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider__ongoingEstimatedDueDate]);
  v2 = OBJC_IVAR____TtC11MedicalIDUI27PregnancySampleDataProvider___observationRegistrar;
  v3 = sub_2588BBBD8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_258825DE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t sub_258825E88(uint64_t a1, uint64_t a2)
{
  sub_2588268E4();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 56);
  sub_2588252AC(a1, v8);
  sub_2588252AC(a2, &v8[v9]);
  v10 = sub_2588BB9B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
    v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v14 - 8);
    v17 = &v25 - v16;
    sub_2588252AC(v8, &v25 - v16);
    v18 = v12(&v8[v9], 1, v10);
    if (v18 != 1)
    {
      v19 = *(v11 + 64);
      MEMORY[0x28223BE20](v18);
      v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v21, &v8[v9], v10);
      sub_2588269B4();
      v22 = sub_2588BD7D8();
      v23 = *(v11 + 8);
      v23(v21, v10);
      v23(v17, v10);
      sub_258826118(v8);
      v13 = v22 ^ 1;
      return v13 & 1;
    }

    (*(v11 + 8))(v17, v10);
    goto LABEL_6;
  }

  if (v12(&v8[v9], 1, v10) != 1)
  {
LABEL_6:
    sub_258826958(v8);
    v13 = 1;
    return v13 & 1;
  }

  sub_258826118(v8);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_258826118(uint64_t a1)
{
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258826184(uint64_t a1, uint64_t a2)
{
  sub_258825320(0, &qword_27F95D880, MEMORY[0x28220BFA0]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_258826214(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2588262B0, v3, v2);
}

uint64_t sub_2588262B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_2588BDA68();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_25882679C();
  *v6 = v0;
  v6[1] = sub_2588263BC;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v3, v8, 0xD000000000000024, 0x80000002588C9F00, sub_258826794, v4, v7);
}

uint64_t sub_2588263BC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_258826548;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_2588264E0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2588264E0()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_258826548()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_2588265C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2587AE310;

  return sub_2588250A8();
}

void sub_25882667C()
{
  sub_258825320(319, &qword_27F95D880, MEMORY[0x28220BFA0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2588BBBD8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_25882679C()
{
  result = qword_27F95F580;
  if (!qword_27F95F580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95F580);
  }

  return result;
}

void sub_2588267E8()
{
  if (!qword_27F95F588)
  {
    sub_25882679C();
    sub_25878D8F4();
    v0 = sub_2588BDA58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F588);
    }
  }
}

id sub_258826858(uint64_t a1, void *a2, void *a3)
{
  sub_2588267E8();
  v8 = *(*(v7 - 8) + 80);
  v9 = *(v3 + 16);

  return sub_258825BE0(a1, a2, a3, v9);
}

void sub_2588268E4()
{
  if (!qword_27F95E758)
  {
    sub_258825320(255, &qword_27F95D880, MEMORY[0x28220BFA0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E758);
    }
  }
}

uint64_t sub_258826958(uint64_t a1)
{
  sub_2588268E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2588269B4()
{
  result = qword_27F95E768;
  if (!qword_27F95E768)
  {
    sub_2588BB9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E768);
  }

  return result;
}

uint64_t sub_258826A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258826A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258826AD0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_258828558(0, &qword_27F95F5B8, &qword_27F95F5C0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  sub_258827D60();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v51 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v22 = a1[1];
  v59 = v5;
  v60 = v4;
  if (v22)
  {
    v61 = *a1;
    v62 = v22;
    sub_25878F648();

    v23 = sub_2588BCDF8();
    v52 = v24;
    v53 = v23;
    v61 = v23;
    v62 = v24;
    v26 = v25 & 1;
    v63 = v25 & 1;
    v54 = v27;
    v64 = v27;
    sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2588BFF50;
    v29 = a1[5];
    *(v28 + 32) = a1[4];
    *(v28 + 40) = v29;
    *(v28 + 48) = 0x656C746954;
    *(v28 + 56) = 0xE500000000000000;

    v30 = sub_2588BD9A8();

    v31 = HKUIJoinStringsForAutomationIdentifier();

    if (!v31)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    sub_2588BCFB8();

    sub_2587B1CF8(v53, v52, v26);

    sub_258828224(v10, v21);
    v4 = v60;
    v32 = *(v59 + 56);
    v32(v21, 0, 1, v60);
  }

  else
  {
    v32 = *(v5 + 56);
    v32(&v51 - v20, 1, 1, v4);
  }

  v33 = a1[3];
  if (!v33)
  {
    v45 = 1;
    goto LABEL_9;
  }

  v61 = a1[2];
  v62 = v33;
  sub_25878F648();

  v34 = sub_2588BCDF8();
  v36 = v35;
  v53 = v34;
  v54 = v37;
  v61 = v34;
  v62 = v35;
  v39 = v38 & 1;
  v63 = v38 & 1;
  v64 = v37;
  sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2588BFF50;
  v41 = a1[5];
  *(v40 + 32) = a1[4];
  *(v40 + 40) = v41;
  *(v40 + 48) = 0x65756C6156;
  *(v40 + 56) = 0xE500000000000000;

  v42 = sub_2588BD9A8();

  v43 = HKUIJoinStringsForAutomationIdentifier();

  if (v43)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    v44 = v55;
    sub_2588BCFB8();

    sub_2587B1CF8(v53, v36, v39);

    sub_258828224(v44, v19);
    v45 = 0;
    v4 = v60;
LABEL_9:
    v32(v19, v45, 1, v4);
    v46 = v56;
    sub_258828110(v21, v56);
    v47 = v57;
    sub_258828110(v19, v57);
    v48 = v58;
    sub_258828110(v46, v58);
    sub_258827CF4();
    v50 = v48 + *(v49 + 48);
    *v50 = 0;
    *(v50 + 8) = 1;
    sub_258828110(v47, v48 + *(v49 + 64));
    sub_258828174(v19);
    sub_258828174(v21);
    sub_258828174(v47);
    sub_258828174(v46);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_258827088@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v9 = a5 + *(a3(0) + 44);
  return a4(a1);
}

void sub_2588270F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_258828558(0, &qword_27F95F5B8, &qword_27F95F5C0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  sub_258827D60();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v50 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = a1[1];
  v58 = v5;
  v59 = v4;
  if (v22)
  {
    v60 = *a1;
    v61 = v22;
    sub_25878F648();

    v23 = sub_2588BCDF8();
    v51 = v24;
    v52 = v23;
    v60 = v23;
    v61 = v24;
    v26 = v25 & 1;
    v62 = v25 & 1;
    v53 = v27;
    v63 = v27;
    sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2588BFF50;
    v29 = a1[5];
    *(v28 + 32) = a1[4];
    *(v28 + 40) = v29;
    *(v28 + 48) = 0x656C746954;
    *(v28 + 56) = 0xE500000000000000;

    v30 = sub_2588BD9A8();

    v31 = HKUIJoinStringsForAutomationIdentifier();

    if (!v31)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    sub_2588BCFB8();

    sub_2587B1CF8(v52, v51, v26);

    sub_258828224(v10, v21);
    v4 = v59;
    v32 = *(v58 + 56);
    v32(v21, 0, 1, v59);
  }

  else
  {
    v32 = *(v5 + 56);
    v32(&v50 - v20, 1, 1, v4);
  }

  v33 = a1[3];
  if (!v33)
  {
    v45 = 1;
    goto LABEL_9;
  }

  v60 = a1[2];
  v61 = v33;
  sub_25878F648();

  v34 = sub_2588BCDF8();
  v36 = v35;
  v52 = v34;
  v53 = v37;
  v60 = v34;
  v61 = v35;
  v39 = v38 & 1;
  v62 = v38 & 1;
  v63 = v37;
  sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2588BFF50;
  v41 = a1[5];
  *(v40 + 32) = a1[4];
  *(v40 + 40) = v41;
  *(v40 + 48) = 0x65756C6156;
  *(v40 + 56) = 0xE500000000000000;

  v42 = sub_2588BD9A8();

  v43 = HKUIJoinStringsForAutomationIdentifier();

  if (v43)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F5C0);
    sub_258828388(&qword_27F95F608, &qword_27F95F5C0, &type metadata for MedicalIDCellBodyTextStyle, sub_2588281D0);
    v44 = v54;
    sub_2588BCFB8();

    sub_2587B1CF8(v52, v36, v39);

    sub_258828224(v44, v19);
    v45 = 0;
    v4 = v59;
LABEL_9:
    v32(v19, v45, 1, v4);
    v46 = v55;
    sub_258828110(v21, v55);
    v47 = v56;
    sub_258828110(v19, v56);
    v48 = v57;
    sub_258828110(v46, v57);
    sub_258827EE8();
    sub_258828110(v47, v48 + *(v49 + 48));
    sub_258828174(v19);
    sub_258828174(v21);
    sub_258828174(v47);
    sub_258828174(v46);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_258827690@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v19 = v1[2];
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 1) = *v1;
  *(v4 + 2) = v5;
  *(v4 + 3) = v1[2];
  v6 = swift_allocObject();
  v7 = v1[1];
  *(v6 + 1) = *v1;
  *(v6 + 2) = v7;
  *(v6 + 3) = v1[2];
  *a1 = swift_getKeyPath();
  sub_258827E84(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258827B54();
  v9 = v8;
  v10 = *(v8 + 52);
  v11 = *MEMORY[0x277CDF988];
  v12 = sub_2588BC1C8();
  (*(*(v12 - 8) + 104))(a1 + v10, v11, v12);
  v13 = (a1 + *(v9 + 56));
  *v13 = sub_258827A5C;
  v13[1] = v4;
  v14 = (a1 + *(v9 + 60));
  *v14 = sub_258827AFC;
  v14[1] = v6;
  sub_258827FF8(&v17, v16);
  sub_258827FF8(&v18, v16);
  sub_2587FB4AC(&v19, v16);
  sub_258827FF8(&v17, v16);
  sub_258827FF8(&v18, v16);
  return sub_2587FB4AC(&v19, v16);
}

void sub_258827858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25878F648();

  v6 = sub_2588BCDF8();
  v8 = v7;
  v10 = v9 & 1;
  sub_25878E2E0(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = 0x6C6F686563616C50;
  *(v11 + 56) = 0xEB00000000726564;

  v12 = sub_2588BD9A8();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {
    sub_2588BD8A8();

    sub_258828338(0, &qword_27F95F620);
    sub_258828388(&qword_27F95F628, &qword_27F95F620, &type metadata for MedicalIDCellPlaceholderTextStyle, sub_258828408);
    sub_2588BCFB8();

    sub_2587B1CF8(v6, v8, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroyTm_16()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

void sub_258827B54()
{
  if (!qword_27F95F590)
  {
    sub_258827C40();
    sub_258827DD0();
    sub_258827FB0(&qword_27F95F5F0, sub_258827C40);
    sub_258827FB0(&qword_27F95F5F8, sub_258827DD0);
    v0 = type metadata accessor for MedicalIDAXLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F590);
    }
  }
}

void sub_258827C40()
{
  if (!qword_27F95F598)
  {
    sub_258827E84(255, &qword_27F95F5A0, sub_258827CF4, MEMORY[0x277CE14B8]);
    sub_258827F4C(&qword_27F95F5C8, &qword_27F95F5A0, sub_258827CF4);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F598);
    }
  }
}

void sub_258827CF4()
{
  if (!qword_27F95F5A8)
  {
    sub_258827D60();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95F5A8);
    }
  }
}

void sub_258827D60()
{
  if (!qword_27F95F5B0)
  {
    sub_258828558(255, &qword_27F95F5B8, &qword_27F95F5C0);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F5B0);
    }
  }
}

void sub_258827DD0()
{
  if (!qword_27F95F5D0)
  {
    sub_258827E84(255, &qword_27F95F5D8, sub_258827EE8, MEMORY[0x277CE14B8]);
    sub_258827F4C(&qword_27F95F5E8, &qword_27F95F5D8, sub_258827EE8);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F5D0);
    }
  }
}

void sub_258827E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258827EE8()
{
  if (!qword_27F95F5E0)
  {
    sub_258827D60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95F5E0);
    }
  }
}

uint64_t sub_258827F4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258827E84(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258827FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258827FF8(uint64_t a1, uint64_t a2)
{
  sub_25878E2E0(0, &qword_27F95D458, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258828078()
{
  if (!qword_27F95F600)
  {
    sub_258827E84(255, &qword_27F95F5D8, sub_258827EE8, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F600);
    }
  }
}

uint64_t sub_258828110(uint64_t a1, uint64_t a2)
{
  sub_258827D60();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258828174(uint64_t a1)
{
  sub_258827D60();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2588281D0()
{
  result = qword_27F95F610;
  if (!qword_27F95F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F610);
  }

  return result;
}

uint64_t sub_258828224(uint64_t a1, uint64_t a2)
{
  sub_258828558(0, &qword_27F95F5B8, &qword_27F95F5C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2588282A0()
{
  if (!qword_27F95F618)
  {
    sub_258827E84(255, &qword_27F95F5A0, sub_258827CF4, MEMORY[0x277CE14B8]);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95F618);
    }
  }
}

void sub_258828338(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2588BC1E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_258828388(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_258828338(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258828408()
{
  result = qword_27F95F630;
  if (!qword_27F95F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F630);
  }

  return result;
}

unint64_t sub_25882845C()
{
  result = qword_27F95F640;
  if (!qword_27F95F640)
  {
    sub_258828558(255, &qword_27F95F648, &qword_27F95F620);
    sub_258828388(&qword_27F95F628, &qword_27F95F620, &type metadata for MedicalIDCellPlaceholderTextStyle, sub_258828408);
    sub_258827FB0(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F640);
  }

  return result;
}

void sub_258828558(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_258828338(255, a3);
    sub_2588BCA98();
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2588285C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_25882C898(0);
  MEMORY[0x259C8C5A0](v17);
  v10 = v17[0];
  v11 = v17[1];
  v12 = type metadata accessor for EditPhotoCellView.ViewModel();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 64) = xmmword_2588C0670;
  *(v15 + 80) = 0;
  *(v15 + 88) = 1;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 144) = 0;
  sub_2588BBBC8();
  result = sub_2587C4E98(*(v15 + 64), *(v15 + 72));
  *(v15 + 64) = v10;
  *(v15 + 72) = v11;
  *(v15 + 16) = sub_25882ECB0;
  *(v15 + 24) = 0;
  *(v15 + 32) = sub_25882EED8;
  *(v15 + 40) = 0;
  *(v15 + 48) = sub_25882EF68;
  *(v15 + 56) = 0;
  *a5 = v15;
  a5[1] = 0;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t EditPhotoCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_258828C84();
  v27[1] = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588291A0(0, &qword_27F95F6B0, sub_2588290A8);
  v28 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v27[0] = v27 - v8;
  v9 = v1[1];
  v37 = *v1;
  v38 = v9;
  v39 = v1[2];
  *v5 = sub_2588BC608();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_25882BED8(0, &qword_27F95F6E0, sub_258828D18);
  sub_2588292D8(&v37, &v5[*(v10 + 44)]);
  v40 = v37;
  v30 = v37;
  sub_25882CBB8(0, &qword_27F95F6E8, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v11 = v41;
  v12 = v42;
  swift_getKeyPath();
  v30 = v11;
  *&v31 = v12;
  sub_25882CBB8(0, &qword_27F95F6F0, type metadata accessor for EditPhotoCellView.ViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v13 = swift_allocObject();
  v14 = v38;
  v13[1] = v37;
  v13[2] = v14;
  v13[3] = v39;
  sub_25882A178(&v37, &v41);
  sub_2588291A0(0, &qword_27F95F6C0, type metadata accessor for ImagePickerView);
  sub_25882CB3C(&qword_27F95F6C8, sub_258828C84);
  sub_258829204();
  v15 = v27[0];
  sub_2588BCF18();

  sub_25882CA14(v5, sub_258828C84);
  v30 = v40;
  sub_2588BD2E8();
  v16 = v41;
  v17 = v42;
  swift_getKeyPath();
  v35 = v16;
  v36 = v17;
  sub_2588BD448();

  v43 = v32;
  v44 = v33;
  v45 = v34;
  v41 = v30;
  v42 = v31;

  v18 = v15 + *(v28 + 36);
  v19 = v44;
  *(v18 + 32) = v43;
  *(v18 + 48) = v19;
  *(v18 + 64) = v45;
  v20 = v42;
  *v18 = v41;
  *(v18 + 16) = v20;
  v30 = v40;
  sub_2588BD2C8();
  v21 = v35;
  swift_getKeyPath();
  *&v30 = v21;
  sub_25882CB3C(&qword_27F95F6F8, type metadata accessor for EditPhotoCellView.ViewModel);
  sub_2588BBB98();

  v22 = *(v21 + 64);
  v23 = *(v21 + 72);
  sub_2587CC620(v22, v23);

  *&v35 = v22;
  *(&v35 + 1) = v23;
  v24 = swift_allocObject();
  v25 = v38;
  v24[1] = v37;
  v24[2] = v25;
  v24[3] = v39;
  sub_25882A178(&v37, &v30);
  sub_2587CC4B0();
  sub_25882BA28();
  sub_25882BB70();
  sub_2588BD108();

  sub_2587C4E98(v35, *(&v35 + 1));
  return sub_25879DC40(v15);
}