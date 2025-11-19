char *NotificationModel.ModalAlertModel.validate(errors:automakerSymbolValidator:)(char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 32);
  v69 = v2[6];
  v9 = v2[8];
  v68 = v2[5];
  v10 = v2[9];

  if (v8 > 1)
  {
    v12 = a1;
  }

  else
  {

    v11 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = a1;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_242C832C4(0, *(a1 + 2) + 1, 1, a1);
      }

      v14 = *(a1 + 2);
      v13 = *(a1 + 3);
      if (v14 >= v13 >> 1)
      {
        a1 = sub_242C832C4((v13 > 1), v14 + 1, 1, a1);
      }

      *(a1 + 2) = v14 + 1;
      v15 = &a1[40 * v14];
      *(v15 + 4) = 1;
      *(v15 + 5) = 0;
      *(v15 + 6) = 0;
      *(v15 + 7) = 0;
      v15[64] = 5;
      v12 = a1;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v5 = v6;
    v4 = v7;
  }

  v16 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v16 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
    }

    v23 = *(v12 + 2);
    v22 = *(v12 + 3);
    if (v23 >= v22 >> 1)
    {
      v12 = sub_242C832C4((v22 > 1), v23 + 1, 1, v12);
    }

    *(v12 + 2) = v23 + 1;
    v24 = &v12[40 * v23];
    *(v24 + 4) = 2;
    *(v24 + 5) = 0;
    *(v24 + 6) = 0;
    *(v24 + 7) = 0;
    v24[64] = 5;
    v17 = *(v9 + 16);
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_29:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_30;
    }

    goto LABEL_105;
  }

LABEL_17:
  v17 = *(v9 + 16);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_18:
  if (v10 >= v17)
  {
    goto LABEL_34;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
  }

  v19 = *(v12 + 2);
  v18 = *(v12 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    v12 = sub_242C832C4((v18 > 1), v19 + 1, 1, v12);
  }

  for (i = 4; ; i = 3)
  {
    *(v12 + 2) = v20;
    v26 = &v12[40 * v19];
    *(v26 + 4) = i;
    *(v26 + 5) = 0;
    *(v26 + 6) = 0;
    *(v26 + 7) = 0;
    v26[64] = 5;
LABEL_34:
    sub_242CD6078(v10, v9);
    v30 = v29 >> 1;
    if (v29 >> 1 == v28)
    {
      break;
    }

    if (v10 < 0)
    {
      goto LABEL_103;
    }

    v34 = v28;
    v35 = v30 - v28;
    if (v30 > v28)
    {
      v36 = v27;
      if (v17 >= v10)
      {
        v37 = v10;
      }

      else
      {
        v37 = v17;
      }

      if (v10)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v10 = 48;
      v70 = (v9 + 48 * v38 - 16);

      v17 = (v36 + 48 * v34 + 24);
      v71 = v38;
      v72 = v9;
      while (1)
      {
        if (*(v9 + 16) < v38)
        {
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v78 = v12;
        v40 = *(v17 - 2);
        v39 = *(v17 - 1);
        v41 = *v17;
        v42 = *(v17 + 1);
        v10 = *(v17 + 2);
        v79 = v40;
        v80 = *(v17 - 24);
        if (!v38)
        {
          break;
        }

        v43 = *v17;
        v77 = *v70;
        v44 = *(v70 + 2);
        v74 = *(v70 + 1);
        v75 = v70[24];
        v45 = *(v70 + 4);
        v46 = *(v70 + 5);

        v76 = v45;
        sub_242CA0064(v45, v46);
        if (!v39)
        {
          v41 = v43;
          if (!v44)
          {
LABEL_63:

            sub_242CA0064(v42, v10);

            sub_242CA0064(v42, v10);
            sub_242D0D6D8(v80, v40, 0, v41, v42);
            v12 = v78;
LABEL_64:
            if (v41)
            {
              goto LABEL_80;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
            }

            v38 = v71;
            v9 = v72;
            v52 = *(v12 + 2);
            v51 = *(v12 + 3);
            v53 = v52 + 1;
            if (v52 >= v51 >> 1)
            {
              v12 = sub_242C832C4((v51 > 1), v52 + 1, 1, v12);
            }

            v54 = 3;
            goto LABEL_79;
          }

          v73 = v35;
          sub_242CA0064(v42, v10);
          sub_242CA0064(v42, v10);
          v49 = v40;
          v50 = v80;
          goto LABEL_72;
        }

        if (!v44)
        {
          v73 = v35;
          v41 = v43;
          goto LABEL_71;
        }

        v41 = v43;
        if (v80 != v77)
        {

          sub_242CA0064(v42, v10);

          sub_242CA0064(v42, v10);
          sub_242D0D724(v80, v40, v39, v43, v42, v10);
          sub_242D0D6D8(v77, v74, v44, v75, v45);
          v48 = v40;
          v12 = v78;
LABEL_90:

          sub_242C655DC(v42);
          sub_242D0D6D8(v80, v48, v39, v41, v42);
          goto LABEL_73;
        }

        if (v40 == v74 && v44 == v39)
        {

          sub_242CA0064(v42, v10);

          sub_242CA0064(v42, v10);
          sub_242D0D724(v80, v40, v39, v43, v42, v10);
          v47 = v75;
          sub_242D0D6D8(v77, v40, v44, v75, v45);
          v48 = v40;
          v12 = v78;
        }

        else
        {
          v67 = sub_242F06110();

          sub_242CA0064(v42, v10);

          sub_242CA0064(v42, v10);
          sub_242D0D724(v80, v40, v39, v43, v42, v10);
          v47 = v75;
          sub_242D0D6D8(v77, v74, v44, v75, v45);
          v48 = v40;
          v12 = v78;
          if ((v67 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        sub_242C655DC(v42);
        sub_242D0D6D8(v80, v48, v39, v41, v42);
        if (v47 == v41)
        {
          goto LABEL_64;
        }

LABEL_73:
        if (!v41)
        {
LABEL_80:
          v38 = v71;
          v9 = v72;
          goto LABEL_81;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
        }

        v38 = v71;
        v9 = v72;
        v52 = *(v12 + 2);
        v55 = *(v12 + 3);
        v53 = v52 + 1;
        if (v52 >= v55 >> 1)
        {
          v12 = sub_242C832C4((v55 > 1), v52 + 1, 1, v12);
        }

        v54 = 4;
LABEL_79:
        *(v12 + 2) = v53;
        v56 = &v12[40 * v52];
        *(v56 + 4) = v80;
        *(v56 + 5) = 0;
        *(v56 + 6) = 0;
        *(v56 + 7) = 0;
        v56[64] = v54;
LABEL_81:
        v57 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v57 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (v57)
        {

          sub_242C655DC(v42);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
          }

          v59 = *(v12 + 2);
          v58 = *(v12 + 3);
          if (v59 >= v58 >> 1)
          {
            v12 = sub_242C832C4((v58 > 1), v59 + 1, 1, v12);
          }

          sub_242C655DC(v42);
          *(v12 + 2) = v59 + 1;
          v60 = &v12[40 * v59];
          *(v60 + 4) = v80;
          *(v60 + 5) = 0;
          *(v60 + 6) = 0;
          *(v60 + 7) = 0;
          v60[64] = 0;
        }

        v17 += 48;
        if (!--v35)
        {
          goto LABEL_36;
        }
      }

      if (!v39)
      {
        goto LABEL_63;
      }

      v73 = v35;
      v74 = 0;
      v76 = 0;
      v77 = 0;
      v75 = 0;
LABEL_71:

      sub_242CA0064(v42, v10);

      sub_242CA0064(v42, v10);
      v49 = v40;
      v50 = v80;
      sub_242D0D724(v80, v79, v39, v41, v42, v10);

      sub_242C655DC(v42);
      v44 = 0;
LABEL_72:
      sub_242D0D6D8(v50, v49, v39, v41, v42);
      sub_242D0D6D8(v77, v74, v44, v75, v76);
      v12 = v78;
      v35 = v73;
      goto LABEL_73;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
LABEL_30:
    v19 = *(v12 + 2);
    v25 = *(v12 + 3);
    v20 = v19 + 1;
    if (v19 >= v25 >> 1)
    {
      v12 = sub_242C832C4((v25 > 1), v19 + 1, 1, v12);
    }
  }

LABEL_36:
  swift_unknownObjectRelease();
  if (v69)
  {
    v31 = objc_opt_self();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v32 = sub_242F04F00();
    v33 = [v31 _systemImageNamed_];

    if (v33)
    {

LABEL_39:
      sub_242CD54A4(v68, v69);
      sub_242CD54A4(v68, v69);
      return v12;
    }

    if (a2)
    {

      v61 = a2(v68, v69);
      sub_242C655DC(a2);
      if (v61)
      {
        goto LABEL_39;
      }
    }

    sub_242CD54A4(v68, v69);
    sub_242CD54A4(v68, v69);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_242C832C4(0, *(v12 + 2) + 1, 1, v12);
    }

    v63 = *(v12 + 2);
    v62 = *(v12 + 3);
    if (v63 >= v62 >> 1)
    {
      v12 = sub_242C832C4((v62 > 1), v63 + 1, 1, v12);
    }

    *(v12 + 2) = v63 + 1;
    v64 = &v12[40 * v63];
    *(v64 + 4) = v68;
    *(v64 + 5) = v69;
    *(v64 + 6) = 0;
    *(v64 + 7) = 0;
    v64[64] = 1;
  }

  return v12;
}

uint64_t NotificationModel.ModalAlertModel.correct(validationError:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[1];
  v49 = v2[2];
  v50 = v4;
  v51 = v5;
  v7 = v2[1];
  v48[0] = *v2;
  v48[1] = v7;
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *(a1 + 32);
  v45 = v48[0];
  v46 = v6;
  v47 = *(v2 + 4);
  v13 = *(&v49 + 1);
  v15 = *(&v4 + 1);
  v14 = v4;
  v16 = *(&v51 + 1);
  v17 = v51;
  if (v12)
  {
    if (v12 == 1)
    {
      sub_242D0D770(v48, &v40);
      sub_242CD54A4(v13, v14);
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      if (v12 != 5)
      {
        goto LABEL_16;
      }

      v18 = v11 | v9;
      if (!(v18 | v8 | v10))
      {
        goto LABEL_9;
      }

      v19 = v18 | v10;
      if ((v8 - 1) <= 1 && !v19)
      {
        goto LABEL_9;
      }

      if (v8 == 3 && !v19)
      {
        goto LABEL_9;
      }

      if (v8 == 4 && !v19)
      {
        v24 = sub_242CD6078(*(&v51 + 1), v51);
        v26 = v25;
        if (v25)
        {
          v37 = v22;
          v38 = v23;
          swift_unknownObjectRetain();
          sub_242D0D770(v48, &v40);
          sub_242F061F0();

          swift_unknownObjectRetain();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = MEMORY[0x277D84F90];
          }

          v35 = *(v34 + 16);

          if (__OFSUB__(v26 >> 1, v38))
          {
            __break(1u);
          }

          else if (v35 == (v26 >> 1) - v38)
          {
            v36 = swift_dynamicCastClass();

            swift_unknownObjectRelease();
            if (v36)
            {
              v17 = v36;
            }

            else
            {
              swift_unknownObjectRelease();
              v17 = MEMORY[0x277D84F90];
            }

            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          v28 = v37;
          v27 = v38;
        }

        else
        {
          v27 = v23;
          v28 = v22;
          sub_242D0D770(v48, &v40);
        }

        sub_242CD4FC4(v24, v28, v27, v26);
        v30 = v29;

        swift_unknownObjectRelease();
        v17 = v30;
      }

      else
      {
LABEL_16:
        sub_242D0D770(v48, &v40);
      }
    }

LABEL_17:
    v31 = v46;
    v40 = v45;
    v41 = v46;
    *&v42 = v47;
    *(&v42 + 1) = v13;
    *&v43 = v14;
    *(&v43 + 1) = v15;
    *&v44 = v17;
    *(&v44 + 1) = v16;
    *a2 = v45;
    a2[1] = v31;
    v32 = v43;
    a2[2] = v42;
    a2[3] = v32;
    a2[4] = v44;
    v20 = &v40;
    v21 = &v39;
    goto LABEL_18;
  }

LABEL_9:
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v20 = v48;
  v21 = &v40;
LABEL_18:
  sub_242D0D770(v20, v21);
  v40 = v45;
  v41 = v46;
  *&v42 = v47;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  *&v44 = v17;
  *(&v44 + 1) = v16;
  return sub_242D0D7A8(&v40);
}

void sub_242D0D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    sub_242C655DC(a5);
  }
}

void sub_242D0D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_242CA0064(a5, a6);
  }
}

uint64_t _s14CarPlayAssetUI17NotificationModelV010ModalAlertF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v28 = *(a2 + 56);
  v29 = *a2;
  v24 = v14;
  v25 = *(a2 + 72);
  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  v34 = v2;
  v35 = v3;
  v36 = v4;
  v37 = v5;
  v38 = v15;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v16;
  sub_242CD52B8(v2, v3, v4, v5, v15);
  sub_242CD52B8(v29, v9, v10, v11, v16);
  v17 = _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(&v34, &v29);
  sub_242CD5324(v29, v30, v31, v32, v33);
  sub_242CD5324(v34, v35, v36, v37, v38);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v7;
  if (v7)
  {
    v19 = v6;
    if (v13)
    {
      if (v6 == v12 && v7 == v13 || (sub_242F06110() & 1) != 0)
      {
        if (!v8)
        {
          sub_242CD5460(v6, v7);
          if (!v28)
          {
            sub_242CD5460(v12, v13);
            sub_242CD5460(v6, v7);
            sub_242CD54A4(v12, v13);
LABEL_24:

            goto LABEL_25;
          }

          goto LABEL_18;
        }

        if (v28)
        {
          sub_242CD5460(v6, v7);
          sub_242CD5460(v12, v13);
          sub_242CD5460(v6, v7);

          v20 = sub_242F04710();

          sub_242CD54A4(v12, v13);
          if (v20)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }
      }

      sub_242CD5460(v6, v7);
LABEL_18:
      sub_242CD5460(v12, v13);
      sub_242CD5460(v6, v7);
      sub_242CD54A4(v12, v13);
LABEL_19:

      v21 = v6;
      v22 = v7;
      goto LABEL_20;
    }

    sub_242CD5460(v6, v7);
    sub_242CD5460(v12, 0);
    sub_242CD5460(v6, v7);
  }

  else
  {
    v19 = v6;
    sub_242CD5460(v6, 0);
    if (!v13)
    {
      sub_242CD5460(v12, 0);
      v18 = 0;
LABEL_25:
      sub_242CD54A4(v19, v18);
      return sub_242C72D78(v26, v24) & (v27 == v25);
    }

    sub_242CD5460(v12, v13);
  }

  sub_242CD54A4(v19, v7);
  v21 = v12;
  v22 = v13;
LABEL_20:
  sub_242CD54A4(v21, v22);
  return 0;
}

unint64_t sub_242D0DB24(uint64_t a1)
{
  result = sub_242D0DB4C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242D0DB4C()
{
  result = qword_27ECF2B78;
  if (!qword_27ECF2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2B78);
  }

  return result;
}

uint64_t sub_242D0DBA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242D0DBE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double WidgetMultiStackRowLayout.iconImageInfo.getter()
{
  v1 = *v0;
  if (qword_27ECEEF90 != -1)
  {
    swift_once();
  }

  v2 = qword_27ECF1930;
  [qword_27ECF1930 cornerRadius];
  [v2 size];
  return v1;
}

uint64_t sub_242D0DCF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242D0DD68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel__carouselModel;
  *&v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C10);
  sub_242F03A40();
  (*(v7 + 32))(v3 + v10, v9, v6);
  sub_242D10B7C(a1, v3 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, type metadata accessor for Zone);
  v11 = *(a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (*(v11 + 16) && (v12 = sub_242CE5568(a1), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 112 * v12);
    v16 = v14[1];
    v15 = v14[2];
    v35 = *v14;
    v36 = v16;
    v37 = v15;
    v17 = *(v14 + 89);
    v19 = v14[4];
    v18 = v14[5];
    v38 = v14[3];
    *v39 = v19;
    *&v39[16] = v18;
    *&v39[25] = v17;
    v33 = *(&v35 + 1);
    v20 = v35;
    v31 = *(&v36 + 1);
    v32 = v36;
    v21 = *(&v37 + 1);
    v30 = v37;
    v28 = *(&v38 + 1);
    v29 = v38;
    v27 = *&v39[8];
    v22 = v19;
    v23 = *&v39[24];
    v24 = v17 >> 56;
    v25 = HIBYTE(v17);
    sub_242CA321C(&v35, v34, &qword_27ECF21A8);
    sub_242D1162C(v33, v32, v31, v30, v21, v29, v28, v22, v27, *(&v27 + 1), v23, v24, v25);
  }

  else
  {
    v20 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v35 = v20;

  sub_242F03A90();

  sub_242D116FC(a1, type metadata accessor for Zone);
  return v3;
}

uint64_t ZoneModel.deinit()
{
  sub_242D116FC(v0 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, type metadata accessor for Zone);
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel__carouselModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ZoneModel.__deallocating_deinit()
{
  sub_242D116FC(v0 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, type metadata accessor for Zone);
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel__carouselModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_242D0E1BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ZoneModel(0);
  result = sub_242F03A10();
  *a1 = result;
  return result;
}

uint64_t sub_242D0E1FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_242CA321C(v2, &v14 - v9, &qword_27ECF0BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_242F03BB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for ZoneView(0);
  v4 = v3 - 8;
  v43 = *(v3 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v41 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B98);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BA0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  *v11 = sub_242F04A70();
  v11[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BA8);
  sub_242D0EACC(v2, v11 + *(v21 + 44));
  sub_242F04A70();
  sub_242F03E40();
  sub_242CF6B3C(v11, v15, &qword_27ECF2B90);
  v22 = &v15[*(v13 + 44)];
  v23 = v51;
  *(v22 + 4) = v50;
  *(v22 + 5) = v23;
  *(v22 + 6) = v52;
  v24 = v47;
  *v22 = v46;
  *(v22 + 1) = v24;
  v25 = v49;
  *(v22 + 2) = v48;
  *(v22 + 3) = v25;
  v41 = *(v2 + *(v4 + 28) + 8);
  v42 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone;
  sub_242D10B7C(v41 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v8, type metadata accessor for Zone);
  v26 = Zone.overlayComponents.getter();
  sub_242D116FC(v8, type metadata accessor for Zone);
  v45 = v26;
  swift_getKeyPath();
  sub_242D10B7C(v2, &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ZoneView);
  v27 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v28 = swift_allocObject();
  sub_242D11694(&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ZoneView);
  v29 = &v19[*(v17 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BB0);
  sub_242C7E000(&qword_27ECF2BB8, &qword_27ECF2338);
  sub_242D10BE8();
  sub_242D10C9C();
  sub_242F04990();
  v30 = sub_242F04A70();
  v32 = v31;
  v33 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BE0) + 36)];
  *v33 = v30;
  v33[1] = v32;
  sub_242CF6B3C(v15, v19, &qword_27ECF2B98);
  KeyPath = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BE8);
  v36 = v44;
  v37 = (v44 + *(v35 + 36));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BF0) + 28);
  sub_242CA321C(v41 + v42, v37 + v38, &qword_27ECFC780);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  (*(*(v39 - 8) + 56))(v37 + v38, 0, 1, v39);
  *v37 = KeyPath;
  return sub_242CF6B3C(v19, v36, &qword_27ECF2BA0);
}

uint64_t sub_242D0E9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_242CA321C(a1, &v9 - v6, &qword_27ECF2C70);
  sub_242CA321C(v7, v5, &qword_27ECF2C70);
  sub_242D11640();
  sub_242F04020();
  return sub_242C6D138(v7, &qword_27ECF2C70);
}

uint64_t sub_242D0EACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ZoneView(0);
  v4 = v3 - 8;
  v42 = *(v3 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D00);
  MEMORY[0x28223BE20](v45);
  v7 = (&v41 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BB0);
  MEMORY[0x28223BE20](v44);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v48 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D10);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v47 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v46 = &v41 - v24;
  sub_242D0F28C(&v41 - v24);
  v25 = *(a1 + *(v4 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  if (v50)
  {
    v26 = v43;
    sub_242D10B7C(a1, v43, type metadata accessor for ZoneView);
    v27 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v28 = swift_allocObject();
    sub_242D11694(v26, v28 + v27, type metadata accessor for ZoneView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D30);
    sub_242C7E000(&qword_27ECF2D38, &qword_27ECF2D30);
    *v7 = sub_242F03DA0();
    v7[1] = v29;
    v7[2] = sub_242D12014;
    v7[3] = v28;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D18);
    sub_242C7E000(&qword_27ECF2D20, &qword_27ECF2D18);
    sub_242D10C9C();
    sub_242F041C0();
  }

  else
  {
    v43 = a1;
    sub_242D10B7C(v25 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v13, type metadata accessor for Zone);
    v30 = Zone.primaryComponents.getter();
    sub_242D116FC(v13, type metadata accessor for Zone);
    if (*(v30 + 16))
    {
      v31 = type metadata accessor for Component();
      v32 = *(v31 - 8);
      sub_242D10B7C(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v10, type metadata accessor for Component);
      v33 = v10;

      (*(v32 + 56))(v10, 0, 1, v31);
    }

    else
    {

      v34 = type metadata accessor for Component();
      v33 = v10;
      (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    }

    sub_242D0FED0(v33, v15);
    sub_242C6D138(v33, &qword_27ECF2730);
    sub_242CA321C(v15, v7, &qword_27ECF2BB0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D18);
    sub_242C7E000(&qword_27ECF2D20, &qword_27ECF2D18);
    sub_242D10C9C();
    sub_242F041C0();
    sub_242C6D138(v15, &qword_27ECF2BB0);
  }

  v35 = v46;
  v36 = v47;
  sub_242CA321C(v46, v47, &qword_27ECF2D10);
  v37 = v48;
  sub_242CA321C(v20, v48, &qword_27ECF2D08);
  v38 = v49;
  sub_242CA321C(v36, v49, &qword_27ECF2D10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D28);
  sub_242CA321C(v37, v38 + *(v39 + 48), &qword_27ECF2D08);
  sub_242C6D138(v20, &qword_27ECF2D08);
  sub_242C6D138(v35, &qword_27ECF2D10);
  sub_242C6D138(v37, &qword_27ECF2D08);
  return sub_242C6D138(v36, &qword_27ECF2D10);
}

uint64_t sub_242D0F28C@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D40);
  MEMORY[0x28223BE20](v70);
  v3 = (&v57 - v2);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D48);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - v4;
  v61 = sub_242F03BB0();
  v60 = *(v61 - 8);
  v5 = MEMORY[0x28223BE20](v61);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v57 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D50);
  MEMORY[0x28223BE20](v71);
  v9 = &v57 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D58);
  MEMORY[0x28223BE20](v64);
  v65 = &v57 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D60);
  MEMORY[0x28223BE20](v72);
  v66 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D68);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D70);
  MEMORY[0x28223BE20](v15);
  v17 = (&v57 - v16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D78);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - v18;
  v19 = type metadata accessor for Zone();
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ZoneView(0);
  sub_242D10B7C(*(v1 + *(v23 + 20) + 8) + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v22, type metadata accessor for Zone);
  v24 = &v22[*(v20 + 52)];
  v25 = *v24;
  v26 = v24[8];
  sub_242D116FC(v22, type metadata accessor for Zone);
  if (v26 == 255)
  {
    v27 = sub_242D10D74();
    v28 = sub_242F04740();
    *v3 = v27;
    v3[1] = v28;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D80);
    sub_242D11AF4();
    sub_242D11C00();
    v29 = v67;
    sub_242F041C0();
    sub_242CA321C(v29, v9, &qword_27ECF2D48);
    swift_storeEnumTagMultiPayload();
    sub_242D11CB8();
    sub_242D11DF4();
    sub_242F041C0();

    v30 = v29;
    v31 = &qword_27ECF2D48;
  }

  else
  {
    v57 = v9;
    if (v26)
    {
      if (v26 == 1)
      {
        v32 = sub_242D10D74();
        v33 = *&v25;
        if (*(&v25 + 1) <= 0.0)
        {
          v34 = 0;
          v35 = 0;
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = 0;
        }

        else
        {
          v34 = sub_242D10D74();
          v35 = sub_242D10D74();
          v36 = v58;
          sub_242D0E1FC(v58);
          v37 = v60;
          v38 = v59;
          v39 = v61;
          (*(v60 + 104))(v59, *MEMORY[0x277CDF3C0], v61);
          v40 = sub_242F03BA0();
          v41 = *(v37 + 8);
          v41(v38, v39);
          v41(v36, v39);
          if (v40)
          {
            sub_242F04730();
          }

          else
          {
            sub_242F04750();
          }

          v45 = sub_242F04770();

          v47 = sub_242F04A70();
          v48 = v51;
          v46 = 256;
        }

        v67 = v34;
        *&v74 = v32;
        *(&v74 + 1) = v33;
        LOBYTE(v75) = 1;
        *(&v75 + 1) = v34;
        *&v76 = v35;
        *(&v76 + 1) = v45;
        *&v77 = v46;
        *(&v77 + 1) = v47;
        v78 = v48;
        v83 = v48;
        v81 = v76;
        v82 = v77;
        v79 = v74;
        v80 = v75;

        sub_242D11E80(v34);

        sub_242D11E80(v34);
        sub_242D11ECC(v34);

        v52 = v82;
        v53 = v65;
        *(v65 + 32) = v81;
        *(v53 + 48) = v52;
        *(v53 + 64) = v83;
        v54 = v80;
        *v53 = v79;
        *(v53 + 16) = v54;
        swift_storeEnumTagMultiPayload();
        sub_242CA321C(&v74, v73, &qword_27ECF2DE8);
        v70 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2DD8);
        sub_242D11D70();
        sub_242C7E000(&qword_27ECF2DD0, &qword_27ECF2DD8);
        v55 = v66;
        sub_242F041C0();
        sub_242CA321C(v55, v57, &qword_27ECF2D60);
        swift_storeEnumTagMultiPayload();
        sub_242D11CB8();
        sub_242D11DF4();
        sub_242F041C0();
        sub_242C6D138(&v74, &qword_27ECF2DE8);
        sub_242D11ECC(v67);

        v30 = v55;
        v31 = &qword_27ECF2D60;
      }

      else
      {
        v43 = sub_242D10D74();
        _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
        *v17 = v43;
        sub_242CA321C(v17, v3, &qword_27ECF2D70);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D80);
        sub_242D11AF4();
        sub_242D11C00();
        v44 = v67;
        sub_242F041C0();
        sub_242CA321C(v44, v57, &qword_27ECF2D48);
        swift_storeEnumTagMultiPayload();
        sub_242D11CB8();
        sub_242D11DF4();
        sub_242F041C0();
        sub_242C6D138(v44, &qword_27ECF2D48);
        v30 = v17;
        v31 = &qword_27ECF2D70;
      }
    }

    else
    {
      v42 = sub_242D10D74();
      if (v25)
      {
        sub_242F04A10();
      }

      else
      {
        sub_242F049F0();
      }

      *v17 = v42;
      sub_242CA321C(v17, v14, &qword_27ECF2D70);
      swift_storeEnumTagMultiPayload();
      sub_242D11AF4();
      v49 = v62;
      sub_242F041C0();
      sub_242C6D138(v17, &qword_27ECF2D70);
      sub_242CA321C(v49, v65, &qword_27ECF2D78);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2DD8);
      sub_242D11D70();
      sub_242C7E000(&qword_27ECF2DD0, &qword_27ECF2DD8);
      v50 = v66;
      sub_242F041C0();
      sub_242CA321C(v50, v57, &qword_27ECF2D60);
      swift_storeEnumTagMultiPayload();
      sub_242D11CB8();
      sub_242D11DF4();
      sub_242F041C0();
      sub_242C6D138(v50, &qword_27ECF2D60);
      v30 = v49;
      v31 = &qword_27ECF2D78;
    }
  }

  return sub_242C6D138(v30, v31);
}

uint64_t sub_242D0FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Component();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, v9, &qword_27ECF2730);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_242C6D138(v9, &qword_27ECF2730);
    return (*(v4 + 56))(v19, 1, 1, v3);
  }

  else
  {
    sub_242D11694(v9, v13, type metadata accessor for Component);
    *v6 = sub_242F04A70();
    v6[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C80);
    sub_242D10188(v13, v18, v6 + *(v16 + 44));
    v17 = v19;
    sub_242CF6B3C(v6, v19, &qword_27ECF2BD8);
    (*(v4 + 56))(v17, 0, 1, v3);
    return sub_242D116FC(v13, type metadata accessor for Component);
  }
}

uint64_t sub_242D10188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a2;
  v37 = a3;
  v4 = sub_242F03720();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C88);
  v8 = *(v34 - 8);
  v9 = MEMORY[0x28223BE20](v34);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Component();
  v38 = *(a1 + *(v13 + 36));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C98);
  sub_242C7E000(&qword_27ECF2CA0, &qword_27ECF2C90);
  sub_242D1175C();
  sub_242D112C0(&qword_27ECF2CE8, type metadata accessor for Slot);
  v35 = v12;
  sub_242F049A0();
  v14 = *(a1 + *(v13 + 32));
  if (v14 != 2 && (v14 & 1) != 0 || (sub_242DD5490()) && (v15 = type metadata accessor for ZoneView(0), sub_242D10B7C(*(v33 + *(v15 + 20) + 8) + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v7, type metadata accessor for Zone), v16 = v7[*(v32 + 32) + 96], sub_242D116FC(v7, type metadata accessor for Zone), v16 == 1))
  {
    v38 = 0x3A706D6F63;
    v39 = 0xE500000000000000;
    (*(v30 + 16))(v29, a1, v31);
    v17 = sub_242F04F90();
    MEMORY[0x245D26660](v17);

    v18 = [objc_allocWithZone(MEMORY[0x277CD9E18]) init];
    v19 = sub_242F04F00();

    [v18 setIdentifier_];

    [v18 setCornerRadius_];
  }

  else
  {
    v18 = 0;
  }

  v20 = *(v8 + 16);
  v22 = v35;
  v21 = v36;
  v23 = v34;
  v20(v36, v35, v34);
  v24 = v37;
  v20(v37, v21, v23);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF0) + 48)] = v18;
  v25 = *(v8 + 8);
  v26 = v18;
  v25(v22, v23);

  return (v25)(v21, v23);
}

uint64_t sub_242D10654@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlotView();
  sub_242D10B7C(a1, a2 + *(v4 + 28), type metadata accessor for Slot);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  v5 = *(v4 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8);
  swift_storeEnumTagMultiPayload();
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  CGRectGetWidth(v19);
  v20.origin.x = v6;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  CGRectGetHeight(v20);
  sub_242F04A70();
  sub_242F03C70();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CC8) + 36));
  *v10 = v16;
  v10[1] = v17;
  v10[2] = v18;
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v6;
  v22.origin.y = v7;
  v22.size.width = v8;
  v22.size.height = v9;
  MidY = CGRectGetMidY(v22);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CB8) + 36));
  *v13 = MidX;
  v13[1] = MidY;
  v14 = *(a1 + 14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C98);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_242D1082C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BD8);
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = (&v21 - v5);
  v7 = type metadata accessor for Component();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_242D10B7C(a1, &v21 - v15, type metadata accessor for Component);
  (*(v8 + 56))(v16, 0, 1, v7);
  sub_242CA321C(v16, v14, &qword_27ECF2730);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_242C6D138(v16, &qword_27ECF2730);
    sub_242C6D138(v14, &qword_27ECF2730);
    return (*(v4 + 56))(v24, 1, 1, v23);
  }

  else
  {
    sub_242D11694(v14, v10, type metadata accessor for Component);
    *v6 = sub_242F04A70();
    v6[1] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C80);
    sub_242D10188(v10, v22, v6 + *(v19 + 44));
    sub_242C6D138(v16, &qword_27ECF2730);
    v20 = v24;
    sub_242CF6B3C(v6, v24, &qword_27ECF2BD8);
    (*(v4 + 56))(v20, 0, 1, v23);
    return sub_242D116FC(v10, type metadata accessor for Component);
  }
}

uint64_t sub_242D10B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_242D10BE8()
{
  result = qword_27ECF2BC0;
  if (!qword_27ECF2BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF23E8);
    sub_242D112C0(&qword_27ECF2258, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2BC0);
  }

  return result;
}

unint64_t sub_242D10C9C()
{
  result = qword_27ECF2BC8;
  if (!qword_27ECF2BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2BB0);
    sub_242C7E000(&qword_27ECF2BD0, &qword_27ECF2BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2BC8);
  }

  return result;
}

uint64_t sub_242D10D74()
{
  v1 = sub_242F03E20();
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Zone();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for ZoneView(0) + 20) + 8) + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone;
  sub_242D10B7C(v8, v7, type metadata accessor for Zone);
  v9 = &v7[*(v5 + 52)];
  v10 = v9[8] ^ 0xFF;
  v11 = *(v9 + 3);
  sub_242D116FC(v7, type metadata accessor for Zone);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v8 + *(v5 + 44);
  if (*(v13 + 9))
  {
    v20 = *&v12;
    sub_242D11F18();
  }

  else
  {
    if (*(v13 + 8))
    {
      v20 = *&v12;
      sub_242D11F6C();
    }

    else
    {
      v14 = *v13;
      v15 = *(sub_242F03E30() + 20);
      v16 = *MEMORY[0x277CE0118];
      v17 = sub_242F04070();
      (*(*(v17 - 8) + 104))(&v3[v15], v16, v17);
      *v3 = v14;
      *(v3 + 1) = v14;
      *&v3[*(v1 + 20)] = v12;
      sub_242D112C0(&qword_27ECF2E08, MEMORY[0x277CDFBC8]);
    }

    v20 = sub_242F049C0();
    sub_242D11FC0();
  }

  return sub_242F049C0();
}

uint64_t sub_242D11000(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242D11038()
{
  type metadata accessor for Zone();
  if (v0 <= 0x3F)
  {
    sub_242D1111C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_242D1111C()
{
  if (!qword_27ECF2C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C10);
    v0 = sub_242F03AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF2C08);
    }
  }
}

void sub_242D111A8()
{
  sub_242CA3094();
  if (v0 <= 0x3F)
  {
    sub_242D1122C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242D1122C()
{
  if (!qword_27ECF2C30)
  {
    type metadata accessor for ZoneModel(255);
    sub_242D112C0(&qword_27ECF2C38, type metadata accessor for ZoneModel);
    v0 = sub_242F03DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF2C30);
    }
  }
}

uint64_t sub_242D112C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242D11308()
{
  result = qword_27ECF2C40;
  if (!qword_27ECF2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2BE8);
    sub_242D113C0();
    sub_242C7E000(&qword_27ECF2C68, &qword_27ECF2BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C40);
  }

  return result;
}

unint64_t sub_242D113C0()
{
  result = qword_27ECF2C48;
  if (!qword_27ECF2C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2BA0);
    sub_242D11478();
    sub_242C7E000(&qword_27ECF2C60, &qword_27ECF2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C48);
  }

  return result;
}

unint64_t sub_242D11478()
{
  result = qword_27ECF2C50;
  if (!qword_27ECF2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2B98);
    sub_242C7E000(&qword_27ECF2C58, &qword_27ECF2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C50);
  }

  return result;
}

uint64_t sub_242D11530@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  *a1 = v3;
  return result;
}

uint64_t sub_242D115B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D1162C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  if (a13 <= 1u)
  {
  }

  return result;
}

unint64_t sub_242D11640()
{
  result = qword_27ECF2C78;
  if (!qword_27ECF2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C78);
  }

  return result;
}

uint64_t sub_242D11694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D116FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242D1175C()
{
  result = qword_27ECF2CA8;
  if (!qword_27ECF2CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C98);
    sub_242D11814();
    sub_242C7E000(&qword_27ECF2CD8, &qword_27ECF2CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2CA8);
  }

  return result;
}

unint64_t sub_242D11814()
{
  result = qword_27ECF2CB0;
  if (!qword_27ECF2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2CB8);
    sub_242D118A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2CB0);
  }

  return result;
}

unint64_t sub_242D118A0()
{
  result = qword_27ECF2CC0;
  if (!qword_27ECF2CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2CC8);
    sub_242D112C0(&qword_27ECF2CD0, type metadata accessor for SlotView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2CC0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for ZoneView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_242F03BB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_242D11AF4()
{
  result = qword_27ECF2D88;
  if (!qword_27ECF2D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D70);
    sub_242D11BAC();
    sub_242C7E000(&qword_27ECF2D98, &qword_27ECF2DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2D88);
  }

  return result;
}

unint64_t sub_242D11BAC()
{
  result = qword_27ECF2D90;
  if (!qword_27ECF2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2D90);
  }

  return result;
}

unint64_t sub_242D11C00()
{
  result = qword_27ECF2DA8;
  if (!qword_27ECF2DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D80);
    sub_242D11BAC();
    sub_242C7E000(&qword_27ECF2DB0, &qword_27ECF2DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DA8);
  }

  return result;
}

unint64_t sub_242D11CB8()
{
  result = qword_27ECF2DC0;
  if (!qword_27ECF2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D60);
    sub_242D11D70();
    sub_242C7E000(&qword_27ECF2DD0, &qword_27ECF2DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DC0);
  }

  return result;
}

unint64_t sub_242D11D70()
{
  result = qword_27ECF2DC8;
  if (!qword_27ECF2DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D78);
    sub_242D11AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DC8);
  }

  return result;
}

unint64_t sub_242D11DF4()
{
  result = qword_27ECF2DE0;
  if (!qword_27ECF2DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D48);
    sub_242D11AF4();
    sub_242D11C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DE0);
  }

  return result;
}

uint64_t sub_242D11E80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242D11ECC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_242D11F18()
{
  result = qword_27ECF2DF0;
  if (!qword_27ECF2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DF0);
  }

  return result;
}

unint64_t sub_242D11F6C()
{
  result = qword_27ECF2DF8;
  if (!qword_27ECF2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DF8);
  }

  return result;
}

unint64_t sub_242D11FC0()
{
  result = qword_27ECF2E00;
  if (!qword_27ECF2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2E00);
  }

  return result;
}

uint64_t sub_242D12194(uint64_t a1, uint64_t *a2)
{
  v3 = sub_242F04700();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_242F047B0();
  *a2 = result;
  return result;
}

uint64_t sub_242D125C8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_242F04700();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_242F047A0();
  *a2 = result;
  return result;
}

uint64_t sub_242D126E0(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_242D12740(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = 0x32656E6F7ALL;
  }

  else
  {
    v3 = 0x31656E6F7ALL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = *(v5 + v4) ? 0x32656E6F7ALL : 0x31656E6F7ALL;
    if (v6 == v3)
    {
      break;
    }

    v7 = sub_242F06110();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v4;
}

uint64_t sub_242D1282C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Zone();
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_242D39B5C(a3 + v15 + v16 * v13, v12, type metadata accessor for Zone);
      v17 = a1(v12);
      if (v3)
      {
        sub_242D39AFC(v12, type metadata accessor for Zone);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_242D39C68(v12, v24, type metadata accessor for Zone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BF10(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_242E3BF10(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_242D39C68(v24, v14 + v15 + v20 * v16, type metadata accessor for Zone);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_242D39AFC(v12, type metadata accessor for Zone);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_242D12AB8()
{
  v0 = sub_242F039A0();
  __swift_allocate_value_buffer(v0, qword_27ED5D270);
  __swift_project_value_buffer(v0, qword_27ED5D270);
  return sub_242F03990();
}

uint64_t sub_242D12B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3158);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EB0);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D12D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3150);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC0);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D12EEC()
{
  v1 = type metadata accessor for Zone();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones);
  if (v9)
  {

    return v9;
  }

  v21 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones;
  v23 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v22 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    *(v22 + v21) = v9;

    return v9;
  }

  v14 = 0;
  v26 = v8 + 96;
  v9 = MEMORY[0x277D84F90];
  v15 = v23;
  v24 = v12;
  v25 = v5;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    if (v26[*(v15 + 32)])
    {
      result = sub_242D39AFC(v8, type metadata accessor for Zone);
    }

    else
    {
      sub_242D39C68(v8, v5, type metadata accessor for Zone);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_242E3BF10(0, *(v9 + 16) + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_242E3BF10(v19 > 1, v20 + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      *(v9 + 16) = v20 + 1;
      v5 = v25;
      result = sub_242D39C68(v25, v9 + v16 + v20 * v17, type metadata accessor for Zone);
      v12 = v24;
    }

    if (v12 == ++v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D131A0()
{
  v1 = type metadata accessor for Zone();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___DCAZones);
  if (v9)
  {

    return v9;
  }

  v21 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___DCAZones;
  v23 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v22 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    *(v22 + v21) = v9;

    return v9;
  }

  v14 = 0;
  v26 = v8 + 96;
  v9 = MEMORY[0x277D84F90];
  v15 = v23;
  v24 = v12;
  v25 = v5;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    if (v26[*(v15 + 32)] == 1)
    {
      sub_242D39C68(v8, v5, type metadata accessor for Zone);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_242E3BF10(0, *(v9 + 16) + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_242E3BF10(v19 > 1, v20 + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      *(v9 + 16) = v20 + 1;
      v5 = v25;
      result = sub_242D39C68(v25, v9 + v16 + v20 * v17, type metadata accessor for Zone);
      v12 = v24;
    }

    else
    {
      result = sub_242D39AFC(v8, type metadata accessor for Zone);
    }

    if (v12 == ++v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D13458()
{
  v1 = type metadata accessor for Zone();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region1Zones);
  if (v9)
  {

    return v9;
  }

  v25 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region1Zones;
  v27 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v26 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  v29 = v12;
  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_19:

    *(v26 + v25) = v9;

    return v9;
  }

  v14 = 0;
  v9 = MEMORY[0x277D84F90];
  v15 = v27;
  v28 = v5;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    v18 = v8[*(v15 + 40)];
    if (v18 != 2)
    {
      if ((v18 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
LABEL_13:
        sub_242D39C68(v8, v5, type metadata accessor for Zone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BF10(0, *(v9 + 16) + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        v22 = *(v9 + 16);
        v21 = *(v9 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_242E3BF10(v21 > 1, v22 + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        *(v9 + 16) = v22 + 1;
        v23 = v9 + v16 + v22 * v17;
        v5 = v28;
        result = sub_242D39C68(v28, v23, type metadata accessor for Zone);
        goto LABEL_6;
      }

      v19 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if (v19)
      {
        goto LABEL_13;
      }
    }

    result = sub_242D39AFC(v8, type metadata accessor for Zone);
LABEL_6:
    if (v29 == ++v14)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D13758()
{
  v1 = type metadata accessor for Zone();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region2Zones);
  if (v9)
  {

    return v9;
  }

  v25 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region2Zones;
  v27 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v26 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  v29 = v12;
  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_18:

    *(v26 + v25) = v9;

    return v9;
  }

  v14 = 0;
  v9 = MEMORY[0x277D84F90];
  v15 = v27;
  v28 = v5;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    v18 = v8[*(v15 + 40)];
    if (v18 != 2)
    {
      if (v18)
      {
        swift_bridgeObjectRelease_n();
LABEL_12:
        sub_242D39C68(v8, v5, type metadata accessor for Zone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BF10(0, *(v9 + 16) + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        v22 = *(v9 + 16);
        v21 = *(v9 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_242E3BF10(v21 > 1, v22 + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        *(v9 + 16) = v22 + 1;
        v23 = v9 + v16 + v22 * v17;
        v5 = v28;
        result = sub_242D39C68(v28, v23, type metadata accessor for Zone);
        goto LABEL_6;
      }

      v19 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if (v19)
      {
        goto LABEL_12;
      }
    }

    result = sub_242D39AFC(v8, type metadata accessor for Zone);
LABEL_6:
    if (v29 == ++v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D13A58(uint64_t a1, uint64_t a2, int a3)
{
  v64 = a3;
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3178);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = (&v49 - v5);
  v58 = type metadata accessor for PopoverModel(0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Zone();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = v8;
  v63 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v61 = type metadata accessor for Component();
  v62 = *(v61 - 8);
  v12 = MEMORY[0x28223BE20](v61);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v13;
  MEMORY[0x28223BE20](v12);
  v52 = &v49 - v14;
  v15 = type metadata accessor for RequestContentModel();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  v50 = *(v19 - 8);
  v20 = *(v50 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v51 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  sub_242CA321C(a1, &v49 - v25, &qword_27ECF2EC8);
  v59 = a1;
  sub_242CA321C(a1, v24, &qword_27ECF2EC8);
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    sub_242D39B5C(v24, v18, type metadata accessor for RequestContentModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v65;
    if (EnumCaseMultiPayload)
    {
      sub_242D39AFC(v18, type metadata accessor for RequestContentModel);
    }

    else
    {
      v32 = v18[3];
      v73 = v18[2];
      v74 = v32;
      v75 = v18[4];
      v33 = v18[1];
      v71 = *v18;
      v72 = v33;
      if ((BYTE9(v74) & 1) == 0)
      {
        sub_242D39AFC(v24, type metadata accessor for RequestContentModel);
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v66 = v71;
        v67 = v72;
        sub_242D23678(v29, &v66, v11);
        v35 = v62;
        if ((*(v62 + 48))(v11, 1, v61) != 1)
        {
          sub_242D3A090(&v71);
          v37 = v52;
          v60 = type metadata accessor for Component;
          sub_242D39C68(v11, v52, type metadata accessor for Component);
          v61 = swift_allocObject();
          swift_weakInit();
          v38 = v51;
          sub_242CA321C(v59, v51, &qword_27ECF2EC8);
          sub_242D39B5C(v29, v63, type metadata accessor for Zone);
          v39 = v37;
          v40 = v54;
          sub_242D39C68(v39, v54, type metadata accessor for Component);
          v41 = (*(v50 + 80) + 16) & ~*(v50 + 80);
          v42 = (v20 + *(v55 + 80) + v41) & ~*(v55 + 80);
          v43 = (v56 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
          v44 = (*(v35 + 80) + v43 + 8) & ~*(v35 + 80);
          v45 = v44 + v53;
          v28 = swift_allocObject();
          sub_242CF6B3C(v38, v28 + v41, &qword_27ECF2EC8);
          sub_242D39C68(v63, v28 + v42, type metadata accessor for Zone);
          *(v28 + v43) = v61;
          v46 = v28 + v44;
          v29 = v65;
          sub_242D39C68(v40, v46, v60);
          v30 = v64;
          *(v28 + v45) = v64 & 1;
          v27 = sub_242D3D698;
          goto LABEL_9;
        }

        sub_242C6D138(v11, &qword_27ECF2730);
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v66 = v71;
        v67 = v72;
        v36 = v60;
        sub_242D2614C(&v66, v60);
        sub_242C6D138(v26, &qword_27ECF2EC8);
        sub_242D3A090(&v71);
        if ((*(v57 + 48))(v36, 1, v58) == 1)
        {
          sub_242C6D138(v36, &qword_27ECF3178);
          (*(v16 + 56))(v26, 1, 1, v15);
        }

        else
        {
          v47 = v36;
          v48 = v49;
          sub_242D39C68(v47, v49, type metadata accessor for PopoverModel);
          sub_242D39C68(v48, v26, type metadata accessor for PopoverModel);
          swift_storeEnumTagMultiPayload();
          (*(v16 + 56))(v26, 0, 1, v15);
        }

        goto LABEL_8;
      }

      sub_242D3A090(&v71);
    }

    sub_242D39AFC(v24, type metadata accessor for RequestContentModel);
LABEL_8:
    v27 = 0;
    v28 = 0;
    v30 = v64;
    goto LABEL_9;
  }

  sub_242C6D138(v24, &qword_27ECF2EC8);
  v27 = 0;
  v28 = 0;
  v29 = v65;
  v30 = v64;
LABEL_9:
  sub_242D2675C(v26, v29, v27, v28, v30 & 1);
  sub_242C655DC(v27);
  return sub_242C6D138(v26, &qword_27ECF2EC8);
}

uint64_t sub_242D143A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_242CA321C(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_242D1445C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_242CA321C(v2 + v4, a2, &qword_27ECF2EC8);
}

uint64_t sub_242D144E0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v33 - v11;
  v12 = type metadata accessor for Zone();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = *a2;
  swift_beginAccess();
  v42 = v19;
  sub_242D3B630(a1, v3 + v19);
  v20 = swift_endAccess();
  result = a3(v20);
  v41 = *(result + 16);
  if (v41)
  {
    v34 = a1;
    v35 = v9;
    v22 = 0;
    v23 = *(v13 + 80);
    v36 = v3;
    v37 = (v23 + 32) & ~v23;
    v39 = v13;
    v40 = result + v37;
    v38 = result;
    while (v22 < *(result + 16))
    {
      v25 = *(v13 + 72);
      sub_242D39B5C(v40 + v25 * v22, v18, type metadata accessor for Zone);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      v26 = v43;

      v27 = type metadata accessor for Layout();
      if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
      {
        v28 = *(v26 + *(v27 + 24));

        sub_242C6D138(v26, &qword_27ECF2F98);
        result = v28 + v37;
        v29 = -*(v28 + 16);
        v30 = -1;
        while (1)
        {
          if (v29 + v30 == -1)
          {

            v24 = 0;
            goto LABEL_13;
          }

          if (++v30 >= *(v28 + 16))
          {
            break;
          }

          v31 = result + v25;
          sub_242D39B5C(result, v16, type metadata accessor for Zone);
          sub_242F03720();
          sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
          v32 = sub_242F04EE0();
          sub_242D39AFC(v16, type metadata accessor for Zone);
          result = v31;
          if (v32)
          {

            v24 = 1;
LABEL_13:
            v9 = v35;
            v3 = v36;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

      sub_242C6D138(v26, &qword_27ECF2F98);
      v24 = 0;
LABEL_4:
      ++v22;
      sub_242CA321C(v3 + v42, v9, &qword_27ECF2EC8);
      sub_242D13A58(v9, v18, v24);
      sub_242C6D138(v9, &qword_27ECF2EC8);
      sub_242D39AFC(v18, type metadata accessor for Zone);
      result = v38;
      v13 = v39;
      if (v22 == v41)
      {

        a1 = v34;
        return sub_242C6D138(a1, &qword_27ECF2EC8);
      }
    }

    __break(1u);
  }

  else
  {

    return sub_242C6D138(a1, &qword_27ECF2EC8);
  }

  return result;
}

uint64_t sub_242D149A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D14B80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D14C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3148);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EE8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D14E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D15010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_242F03A90();
  return a7(v8);
}

uint64_t sub_242D150A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v57 - v3;
  v75 = type metadata accessor for Component();
  v78 = *(v75 - 8);
  v4 = MEMORY[0x28223BE20](v75);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v58 = &v57 - v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v57 - v9;
  v57 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v10 = *(v57 - 8);
  v11 = MEMORY[0x28223BE20](v57);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v57 - v13;
  v14 = type metadata accessor for Zone();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v18 = *(v81 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v81) = v18 != 0;

  sub_242F03A90();
  result = sub_242D12EEC();
  v74 = *(result + 16);
  if (!v74)
  {
  }

  v20 = 0;
  v21 = *(v15 + 80);
  v69 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
  v72 = v15;
  v73 = result + ((v21 + 32) & ~v21);
  v22 = v62;
  v23 = v68;
  v60 = v10;
  v61 = v1;
  v71 = result;
  while (v20 < *(result + 16))
  {
    sub_242D39B5C(v73 + *(v15 + 72) * v20, v17, type metadata accessor for Zone);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v24 = v81;
    if (*(v81 + 16) && (v25 = sub_242CE5568(v17), (v26 & 1) != 0))
    {
      sub_242D39B5C(*(v24 + 56) + *(v10 + 72) * v25, v22, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);

      sub_242D39C68(v22, v23, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      v27 = *(v1 + v69);
      if (*(v27 + 16))
      {
        v28 = sub_242CE5568(v17);
        if (v29)
        {
          v30 = (*(v27 + 56) + 112 * v28);
          v32 = v30[1];
          v31 = v30[2];
          v81 = *v30;
          v82 = v32;
          v83 = v31;
          v33 = *(v30 + 89);
          v35 = v30[4];
          v34 = v30[5];
          v84 = v30[3];
          *v85 = v35;
          *&v85[16] = v34;
          *&v85[25] = v33;
          v36 = v81;
          v76 = v82;
          v77 = *(&v81 + 1);
          v67 = *(&v82 + 1);
          v37 = v83;
          v65 = v84;
          v66 = *(&v83 + 1);
          v64 = *(&v84 + 1);
          v63 = *&v85[8];
          v38 = v35;
          v39 = *&v85[24];
          v40 = v33 >> 56;
          v41 = HIBYTE(v33);
          sub_242CA321C(&v81, v80, &qword_27ECF21A8);
          sub_242D1162C(v77, v76, v67, v37, v66, v65, v64, v38, v63, *(&v63 + 1), v39, v40, v41);
          v42 = *(*v36 + 144);
          swift_beginAccess();
          v43 = *(v36 + v42);

          v77 = *(v43 + 16);
          if (v77)
          {
            v44 = 0;
            v76 = v43 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
            while (v44 < *(v43 + 16))
            {
              sub_242D39B5C(v76 + *(v78 + 72) * v44, v6, type metadata accessor for Component);
              v45 = *&v6[*(v75 + 36)];
              if (*(v45 + 16))
              {
                v46 = type metadata accessor for Slot();
                v47 = v70;
                sub_242CA321C(v45 + *(v46 + 36) + ((*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80)), v70, &qword_27ECF0B08);
                v48 = type metadata accessor for Instrument();
                v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
                sub_242C6D138(v47, &qword_27ECF0B08);
                if (v49 == 1)
                {

                  v50 = v58;
                  sub_242D39C68(v6, v58, type metadata accessor for Component);
                  sub_242D39C68(v50, v59, type metadata accessor for Component);
                  sub_242F03720();
                  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
                  v51 = sub_242F04EE0();
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v52 = v61;
                  v53 = sub_242F03A70();
                  v55 = v54;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v79 = *v55;
                  *v55 = 0x8000000000000000;
                  sub_242CDEDCC((v51 & 1) == 0, v17, isUniquelyReferenced_nonNull_native);
                  *v55 = v79;

                  v53(v80, 0);
                  v1 = v52;

                  v23 = v68;

                  sub_242D39AFC(v59, type metadata accessor for Component);
                  sub_242D39AFC(v23, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
                  sub_242D39AFC(v17, type metadata accessor for Zone);
                  v10 = v60;
                  v22 = v62;
                  goto LABEL_19;
                }
              }

              ++v44;
              result = sub_242D39AFC(v6, type metadata accessor for Component);
              if (v77 == v44)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
            break;
          }

LABEL_16:

          v10 = v60;
          v1 = v61;
          v22 = v62;
          v23 = v68;
        }
      }

      sub_242D39AFC(v23, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    }

    else
    {
    }

    sub_242D39AFC(v17, type metadata accessor for Zone);
LABEL_19:
    ++v20;
    result = v71;
    v15 = v72;
    if (v20 == v74)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D15994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3140);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F00);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D15B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3138);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F10);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D15D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D15F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_242CA321C(a1, &v9 - v6, &qword_27ECF2F90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v7, v5, &qword_27ECF2F90);

  sub_242F03A90();
  sub_242D16044();
  return sub_242C6D138(v7, &qword_27ECF2F90);
}

uint64_t sub_242D16044()
{
  v0 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v12 = *(v1 + 48);
  v13 = v12(v11, 1, v0);
  sub_242C6D138(v11, &qword_27ECF2F90);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    if (v12(v9, 1, v0))
    {
      sub_242C6D138(v9, &qword_27ECF2F90);
      v15 = type metadata accessor for Layout();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v14 = 0;
    }

    else
    {
      v16 = v19;
      sub_242D39B5C(v9, v19, type metadata accessor for ClusterTransitionCoordinator.LayoutTransition);
      sub_242C6D138(v9, &qword_27ECF2F90);
      sub_242CA321C(v16 + *(v0 + 24), v5, &qword_27ECF2F98);
      sub_242D39AFC(v16, type metadata accessor for ClusterTransitionCoordinator.LayoutTransition);
      v17 = type metadata accessor for Layout();
      v14 = (*(*(v17 - 8) + 48))(v5, 1, v17) != 1;
    }

    sub_242C6D138(v5, &qword_27ECF2F98);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v14;

  return sub_242F03A90();
}

uint64_t sub_242D16434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3130);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F28);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D165E8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  *a1 = v3;
  return result;
}

uint64_t sub_242D16678()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D166FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242D16768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D16940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  sub_242CA321C(a1, &v14 - v11, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v12, v10, a5);

  sub_242F03A90();
  return sub_242C6D138(v12, a5);
}

uint64_t sub_242D16A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3120);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F40);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D16C30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();
}

uint64_t sub_242D16CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();
}

uint64_t sub_242D16D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(a1, v7, &qword_27ECF2F80);

  sub_242F03A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v8 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_242C6D138(v5, &qword_27ECF2F80);
  swift_getKeyPath();
  swift_getKeyPath();
  v11[15] = v9;

  sub_242F03A90();
  return sub_242C6D138(a1, &qword_27ECF2F80);
}

uint64_t sub_242D16F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3118);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F50);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D17104@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  *a1 = v3;
  return result;
}

uint64_t sub_242D17194()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D17220()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242D1728C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

void (*sub_242D172FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_242F03A70();
  return sub_242D173A0;
}

void sub_242D173A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_242D17408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242D17484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F68);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_242D17624(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242D1769C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_242D177D4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F68);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60);
  sub_242F03A50();
  swift_endAccess();
  return sub_242D17944;
}

void sub_242D17944(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_242F03A60();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_242F03A60();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_242D17AAC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_242D3E218;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_242C5573C(v4);
}

uint64_t sub_242D17B4C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D3E19C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_242C5573C(v3);
  sub_242C5573C(v6);
  sub_242C655DC(v8);
  sub_242D17C30();
  return sub_242C655DC(v6);
}

uint64_t sub_242D17C30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v66 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v10 = *(v9 + 64);
  v62 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v61 = (v11 + 63) >> 6;
  v67 = v9;
  v68 = v0;

  v15 = 0;
  v16 = &qword_27ECF2F78;
  v17 = &unk_242F17938;
  v63 = v8;
  v64 = v6;
  if (v13)
  {
    while (1)
    {
      v18 = v15;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v67;
      v24 = v65;
      sub_242CA321C(*(v67 + 48) + *(v66 + 72) * v22, v65, &qword_27ECFC780);
      v25 = (*(v23 + 56) + 112 * v22);
      v26 = *(v25 + 89);
      v28 = v25[4];
      v27 = v25[5];
      v74 = v25[3];
      v75 = v28;
      v76[0] = v27;
      *(v76 + 9) = v26;
      v30 = v25[1];
      v29 = v25[2];
      v71 = *v25;
      v72 = v30;
      v73 = v29;
      v17 = &unk_242F17938;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78);
      v32 = &v64[*(v31 + 48)];
      v33 = v24;
      v6 = v64;
      sub_242CF6B3C(v33, v64, &qword_27ECFC780);
      v34 = v76[0];
      *(v32 + 4) = v75;
      *(v32 + 5) = v34;
      *(v32 + 89) = *(v76 + 9);
      v35 = v72;
      *v32 = v71;
      *(v32 + 1) = v35;
      v36 = v74;
      *(v32 + 2) = v73;
      *(v32 + 3) = v36;
      v16 = &qword_27ECF2F78;
      (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
      sub_242CA321C(&v71, v70, &qword_27ECF21A8);
      v20 = v18;
      v8 = v63;
LABEL_13:
      sub_242CF6B3C(v6, v8, &qword_27ECF31D8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
      if ((*(*(v37 - 8) + 48))(v8, 1, v37) == 1)
      {
      }

      v38 = &v8[*(v37 + 48)];
      v39 = *(v38 + 3);
      v40 = *(v38 + 5);
      v75 = *(v38 + 4);
      v76[0] = v40;
      *(v76 + 9) = *(v38 + 89);
      v41 = *(v38 + 1);
      v71 = *v38;
      v72 = v41;
      v73 = *(v38 + 2);
      v74 = v39;
      v42 = v71;
      v43 = *(v38 + 24);
      v44 = *(v38 + 40);
      v77 = *(v38 + 8);
      v78 = v43;
      v45 = *(v38 + 56);
      v46 = *(v38 + 72);
      v47 = *(v38 + 88);
      v83 = v38[104];
      v81 = v46;
      v82 = v47;
      v79 = v44;
      v80 = v45;
      sub_242CA321C(&v71, v70, &qword_27ECF21A8);
      sub_242CF3AF4(&v71 + 8);

      v48 = swift_allocObject();
      v69 = v20;
      v49 = v8;
      v50 = v6;
      v51 = v17;
      v52 = v16;
      v53 = v48;
      swift_weakInit();
      v54 = swift_allocObject();
      v55 = v79;
      *(v54 + 72) = v80;
      v56 = v82;
      *(v54 + 88) = v81;
      *(v54 + 104) = v56;
      v57 = v78;
      *(v54 + 24) = v77;
      *(v54 + 40) = v57;
      *(v54 + 16) = v53;
      *(v54 + 120) = v83;
      *(v54 + 56) = v55;
      v58 = (v42 + *(*v42 + 128));
      swift_beginAccess();
      v59 = *v58;
      *v58 = sub_242D3E188;
      v58[1] = v54;
      v16 = v52;
      v17 = v51;
      v6 = v50;
      v8 = v49;
      sub_242C655DC(v59);

      result = sub_242C6D138(v49, &qword_27ECFC780);
      v15 = v69;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v61 <= v15 + 1)
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = v61;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v61)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
        (*(*(v60 - 8) + 56))(v6, 1, 1, v60);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v62 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D18198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for Instrument();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for Component() + 36));
  if (!*(v12 + 16))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_242C6D138(v7, &qword_27ECF0B08);
  }

  v13 = type metadata accessor for Slot();
  sub_242CA321C(v12 + *(v13 + 36) + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), v7, &qword_27ECF0B08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_242C6D138(v7, &qword_27ECF0B08);
  }

  sub_242D39C68(v7, v11, type metadata accessor for Instrument);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = (Strong + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
    swift_beginAccess();
    v16 = *v15;
    sub_242C5573C(*v15);

    if (v16)
    {
      v17 = *(a3 + 80);
      v21[4] = *(a3 + 64);
      v21[5] = v17;
      v22 = *(a3 + 96);
      v18 = *(a3 + 16);
      v21[0] = *a3;
      v21[1] = v18;
      v19 = *(a3 + 48);
      v21[2] = *(a3 + 32);
      v21[3] = v19;
      v16(v11, v21);
      sub_242C655DC(v16);
    }
  }

  return sub_242D39AFC(v11, type metadata accessor for Instrument);
}

uint64_t (*sub_242D1847C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_242D184E0;
}

uint64_t sub_242D184F8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_242D3E218;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_242C5573C(v4);
}

uint64_t sub_242D18598(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D3E19C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_242C5573C(v3);
  return sub_242C655DC(v8);
}

uint64_t sub_242D1866C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_242C655DC(v6);
}

uint64_t sub_242D1872C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_242D3B5C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_242C5573C(v4);
}

uint64_t sub_242D187CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D3B59C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_242C5573C(v3);
  sub_242C5573C(v6);
  sub_242C655DC(v8);
  sub_242D188B0();
  return sub_242C655DC(v6);
}

uint64_t sub_242D188B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v66 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v10 = *(v9 + 64);
  v62 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v61 = (v11 + 63) >> 6;
  v67 = v9;
  v68 = v0;

  v15 = 0;
  v16 = &qword_27ECF2F78;
  v17 = &unk_242F17938;
  v63 = v8;
  v64 = v6;
  if (v13)
  {
    while (1)
    {
      v18 = v15;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v67;
      v24 = v65;
      sub_242CA321C(*(v67 + 48) + *(v66 + 72) * v22, v65, &qword_27ECFC780);
      v25 = (*(v23 + 56) + 112 * v22);
      v26 = *(v25 + 89);
      v28 = v25[4];
      v27 = v25[5];
      v74 = v25[3];
      v75 = v28;
      v76[0] = v27;
      *(v76 + 9) = v26;
      v30 = v25[1];
      v29 = v25[2];
      v71 = *v25;
      v72 = v30;
      v73 = v29;
      v17 = &unk_242F17938;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78);
      v32 = &v64[*(v31 + 48)];
      v33 = v24;
      v6 = v64;
      sub_242CF6B3C(v33, v64, &qword_27ECFC780);
      v34 = v76[0];
      *(v32 + 4) = v75;
      *(v32 + 5) = v34;
      *(v32 + 89) = *(v76 + 9);
      v35 = v72;
      *v32 = v71;
      *(v32 + 1) = v35;
      v36 = v74;
      *(v32 + 2) = v73;
      *(v32 + 3) = v36;
      v16 = &qword_27ECF2F78;
      (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
      sub_242CA321C(&v71, v70, &qword_27ECF21A8);
      v20 = v18;
      v8 = v63;
LABEL_13:
      sub_242CF6B3C(v6, v8, &qword_27ECF31D8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
      if ((*(*(v37 - 8) + 48))(v8, 1, v37) == 1)
      {
      }

      v38 = &v8[*(v37 + 48)];
      v39 = *(v38 + 3);
      v40 = *(v38 + 5);
      v75 = *(v38 + 4);
      v76[0] = v40;
      *(v76 + 9) = *(v38 + 89);
      v41 = *(v38 + 1);
      v71 = *v38;
      v72 = v41;
      v73 = *(v38 + 2);
      v74 = v39;
      v42 = v71;
      v43 = *(v38 + 24);
      v44 = *(v38 + 40);
      v77 = *(v38 + 8);
      v78 = v43;
      v45 = *(v38 + 56);
      v46 = *(v38 + 72);
      v47 = *(v38 + 88);
      v83 = v38[104];
      v81 = v46;
      v82 = v47;
      v79 = v44;
      v80 = v45;
      sub_242CA321C(&v71, v70, &qword_27ECF21A8);
      sub_242CF3AF4(&v71 + 8);

      v48 = swift_allocObject();
      v69 = v20;
      v49 = v8;
      v50 = v6;
      v51 = v17;
      v52 = v16;
      v53 = v48;
      swift_weakInit();
      v54 = swift_allocObject();
      v55 = v79;
      *(v54 + 72) = v80;
      v56 = v82;
      *(v54 + 88) = v81;
      *(v54 + 104) = v56;
      v57 = v78;
      *(v54 + 24) = v77;
      *(v54 + 40) = v57;
      *(v54 + 16) = v53;
      *(v54 + 120) = v83;
      *(v54 + 56) = v55;
      v58 = (v42 + *(*v42 + 136));
      swift_beginAccess();
      v59 = *v58;
      *v58 = sub_242D3E110;
      v58[1] = v54;
      v16 = v52;
      v17 = v51;
      v6 = v50;
      v8 = v49;
      sub_242C655DC(v59);

      result = sub_242C6D138(v49, &qword_27ECFC780);
      v15 = v69;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v61 <= v15 + 1)
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = v61;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v61)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
        (*(*(v60 - 8) + 56))(v6, 1, 1, v60);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v62 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D18E18(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27[-v6];
  v8 = type metadata accessor for Instrument();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + *(type metadata accessor for Component() + 36));
  if (!*(v12 + 16))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_242C6D138(v7, &qword_27ECF0B08);
  }

  v13 = type metadata accessor for Slot();
  sub_242CA321C(v12 + *(v13 + 36) + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), v7, &qword_27ECF0B08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_242C6D138(v7, &qword_27ECF0B08);
  }

  sub_242D39C68(v7, v11, type metadata accessor for Instrument);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = (Strong + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
    swift_beginAccess();
    v16 = *v15;
    sub_242C5573C(*v15);

    if (v16)
    {
      v17 = a3[5];
      v32 = a3[4];
      v33 = v17;
      v34 = *(a3 + 96);
      v18 = a3[1];
      v28 = *a3;
      v29 = v18;
      v19 = a3[3];
      v30 = a3[2];
      v31 = v19;
      v16(v11, &v28);
      sub_242C655DC(v16);
    }
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = (v20 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
    swift_beginAccess();
    v22 = *v21;
    sub_242C5573C(*v21);

    if (v22)
    {
      v23 = a3[5];
      v32 = a3[4];
      v33 = v23;
      v34 = *(a3 + 96);
      v24 = a3[1];
      v28 = *a3;
      v29 = v24;
      v25 = a3[3];
      v30 = a3[2];
      v31 = v25;
      v22(v11, &v28);
      sub_242C655DC(v22);
    }
  }

  return sub_242D39AFC(v11, type metadata accessor for Instrument);
}

uint64_t sub_242D19178(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_242C5573C(*v2);
  return v3;
}

uint64_t sub_242D191F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;
  sub_242C5573C(a1);
  v10 = sub_242C655DC(v9);
  a4(v10);
  return sub_242C655DC(a1);
}

uint64_t (*sub_242D19288(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_242D192EC;
}

uint64_t sub_242D19304(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t ClusterTransitionCoordinator.__allocating_init(zones:additionalDynamicListItems:additionalMapsMediaItems:)(void (**a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ClusterTransitionCoordinator.init(zones:additionalDynamicListItems:additionalMapsMediaItems:)(a1, a2, a3);
  return v6;
}

uint64_t ClusterTransitionCoordinator.init(zones:additionalDynamicListItems:additionalMapsMediaItems:)(void (**a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v352 = a3;
  v356 = a2;
  v361 = 0;
  v362 = a1;
  v360 = type metadata accessor for Component();
  v312 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v347 = &v307 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F70);
  MEMORY[0x28223BE20](v4 - 8);
  v366 = &v307 - v5;
  v365 = type metadata accessor for Slot();
  v344 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v346 = &v307 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v353 = *(v311 - 8);
  v7 = MEMORY[0x28223BE20](v311);
  v350 = v8;
  v351 = &v307 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v349 = &v307 - v9;
  v10 = sub_242F03960();
  v314 = *(v10 - 8);
  v315 = v10;
  MEMORY[0x28223BE20](v10);
  v313 = &v307 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78);
  MEMORY[0x28223BE20](v348);
  v357 = &v307 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v13 - 8);
  v359 = (&v307 - v14);
  v375 = type metadata accessor for Zone();
  v369 = *(v375 - 8);
  v15 = MEMORY[0x28223BE20](v375);
  v367 = &v307 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v355 = &v307 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v354 = &v307 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v307 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60);
  v342 = *(v23 - 8);
  v343 = v23;
  MEMORY[0x28223BE20](v23);
  *&v372 = &v307 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F50);
  v340 = *(v25 - 8);
  v341 = v25;
  MEMORY[0x28223BE20](v25);
  *&v371 = &v307 - v26;
  *&v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80);
  v27 = MEMORY[0x28223BE20](v370);
  *&v368 = &v307 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  *&v364 = &v307 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F40);
  v338 = *(v30 - 8);
  v339 = v30;
  MEMORY[0x28223BE20](v30);
  *&v363 = &v307 - v31;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F88);
  v32 = MEMORY[0x28223BE20](v358);
  v328 = &v307 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v327 = &v307 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F28);
  v336 = *(v35 - 8);
  v337 = v35;
  MEMORY[0x28223BE20](v35);
  v326 = &v307 - v36;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90);
  v37 = MEMORY[0x28223BE20](v325);
  v324 = &v307 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v323 = &v307 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F10);
  v334 = *(v40 - 8);
  v335 = v40;
  MEMORY[0x28223BE20](v40);
  v322 = &v307 - v41;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  v42 = MEMORY[0x28223BE20](v321);
  v320 = &v307 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v319 = &v307 - v44;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F00);
  v331 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v318 = &v307 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EE8);
  v329 = *(v46 - 8);
  v330 = v46;
  MEMORY[0x28223BE20](v46);
  v317 = &v307 - v47;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  v332 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v316 = &v307 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC0);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v307 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EB0);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v307 - v55;
  v57 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContent;
  v58 = MEMORY[0x277D84F90];
  *v398 = sub_242CE7230(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FA0);
  sub_242F03A40();
  v307 = v54;
  v308 = v53;
  v59 = *(v54 + 32);
  v60 = v376;
  v59(v376 + v57, v56, v53);
  v61 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__focusOrder;
  *v398 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FA8);
  sub_242F03A40();
  v309 = v50;
  v310 = v49;
  (*(v50 + 32))(v60 + v61, v52, v49);
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones) = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___DCAZones) = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region1Zones) = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region2Zones) = 0;
  v62 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone1RequestContent;
  v63 = type metadata accessor for RequestContentModel();
  v64 = *(*(v63 - 8) + 56);
  v64(v60 + v62, 1, 1, v63);
  v64(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone2RequestContent, 1, 1, v63);
  v65 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningRequestContent;
  v398[0] = 0;
  v66 = v316;
  sub_242F03A40();
  v68 = (v332 + 32);
  v67 = *(v332 + 32);
  v69 = v345;
  v67(v60 + v65, v66, v345);
  v70 = v67;
  v373 = v67;
  v374 = v68;
  v71 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContentTransitions;
  v72 = MEMORY[0x277D84F90];
  *v398 = sub_242CE7440(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FD0);
  v73 = v317;
  sub_242F03A40();
  (*(v329 + 32))(v60 + v71, v73, v330);
  v74 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningComponent;
  v398[0] = 0;
  sub_242F03A40();
  v70(v60 + v74, v66, v69);
  v75 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__componentTransitions;
  *v398 = sub_242CE752C(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FD8);
  v76 = v318;
  sub_242F03A40();
  (*(v331 + 32))(v60 + v75, v76, v333);
  v77 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeLayout;
  v78 = type metadata accessor for Layout();
  v79 = v319;
  (*(*(v78 - 8) + 56))(v319, 1, 1, v78);
  sub_242CA321C(v79, v320, &qword_27ECF2F98);
  v80 = v322;
  sub_242F03A40();
  sub_242C6D138(v79, &qword_27ECF2F98);
  (*(v334 + 32))(v60 + v77, v80, v335);
  v81 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningLayout;
  v398[0] = 0;
  sub_242F03A40();
  v82 = v66;
  v373(v60 + v81, v66, v345);
  v83 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__layoutTransition;
  v84 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v85 = v323;
  (*(*(v84 - 8) + 56))(v323, 1, 1, v84);
  sub_242CA321C(v85, v324, &qword_27ECF2F90);
  v86 = v326;
  sub_242F03A40();
  sub_242C6D138(v85, &qword_27ECF2F90);
  (*(v336 + 32))(v60 + v83, v86, v337);
  v87 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningAppearance;
  v398[0] = 0;
  sub_242F03A40();
  v373(v60 + v87, v82, v345);
  v88 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeAppearance;
  v89 = sub_242F03BB0();
  v90 = v327;
  (*(*(v89 - 8) + 56))(v327, 1, 1, v89);
  sub_242CA321C(v90, v328, &qword_27ECF2F88);
  v91 = v363;
  sub_242F03A40();
  sub_242C6D138(v90, &qword_27ECF2F88);
  (*(v338 + 32))(v60 + v88, v91, v339);
  v92 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__appearanceTransition;
  v93 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  v94 = v364;
  (*(*(v93 - 8) + 56))(v364, 1, 1, v93);
  sub_242CA321C(v94, v368, &qword_27ECF2F80);
  v95 = v371;
  sub_242F03A40();
  sub_242C6D138(v94, &qword_27ECF2F80);
  (*(v340 + 32))(v60 + v92, v95, v341);
  v96 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment;
  *v398 = sub_242CE773C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FE0);
  v97 = v372;
  sub_242F03A40();
  v98 = v60 + v96;
  v99 = v362;
  (*(v342 + 32))(v98, v97, v343);
  v100 = (v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
  *v100 = 0;
  v100[1] = 0;
  v101 = (v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  *v101 = 0;
  v101[1] = 0;
  v102 = (v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
  *v102 = 0;
  v102[1] = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones) = v99;
  v103 = v369;
  v374 = v99[2];
  if (!v374)
  {

    v105 = MEMORY[0x277D84F98];
LABEL_18:
    *(v376 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels) = v105;
    v133 = *(v105 + 64);
    v373 = (v105 + 64);
    v134 = 1 << *(v105 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & v133;
    *&v372 = (v134 + 63) >> 6;
    *&v368 = v105;
    swift_bridgeObjectRetain_n();
    for (i = 0; v136; v103 = v369)
    {
      v138 = i;
      v139 = v368;
LABEL_27:
      v140 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      v141 = v140 | (v138 << 6);
      v142 = v353;
      v143 = v357;
      sub_242CA321C(*(v139 + 48) + *(v353 + 72) * v141, v357, &qword_27ECFC780);
      v144 = (*(v139 + 56) + 112 * v141);
      v145 = *(v144 + 89);
      v147 = v144[4];
      v146 = v144[5];
      v390[3] = v144[3];
      v390[4] = v147;
      v391[0] = v146;
      *(v391 + 9) = v145;
      v149 = v144[1];
      v148 = v144[2];
      v390[0] = *v144;
      v390[1] = v149;
      v390[2] = v148;
      v150 = v143 + *(v348 + 48);
      v151 = *&v390[0];
      memmove(v150, v144, 0x69uLL);
      v152 = *(v150 + 56);
      v153 = *(v150 + 88);
      v395 = *(v150 + 72);
      v396 = v153;
      v397 = *(v150 + 104);
      v154 = *(v150 + 24);
      v392[0] = *(v150 + 8);
      v392[1] = v154;
      v393 = *(v150 + 40);
      v394 = v152;
      *v398 = v151;
      *&v398[8] = v392[0];
      *&v398[24] = v154;
      *&v398[40] = v393;
      v398[104] = v397;
      *&v398[88] = v153;
      *&v398[56] = v152;
      *&v398[72] = v395;
      sub_242CA321C(v390, &v385, &qword_27ECF21A8);
      sub_242CA321C(v398, &v385, &qword_27ECF21A8);
      sub_242CF3AF4(v392);
      v155 = swift_allocObject();
      swift_weakInit();
      v156 = v143;
      v157 = v349;
      sub_242CA321C(v156, v349, &qword_27ECFC780);
      v158 = (*(v142 + 80) + 24) & ~*(v142 + 80);
      v375 = v158 + v350;
      v374 = v158;
      v159 = (v158 + v350 + 7) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      *(v160 + 16) = v155;
      sub_242CF6B3C(v157, v160 + v158, &qword_27ECFC780);
      *(v160 + v159) = v362;
      v161 = (v151 + *(*v151 + 112));
      v162 = *v161;
      *v161 = sub_242D39100;
      v161[1] = v160;

      sub_242C655DC(v162);
      v163 = swift_allocObject();
      swift_weakInit();
      v164 = v357;
      sub_242CA321C(v357, v157, &qword_27ECFC780);
      v165 = swift_allocObject();
      *(v165 + 16) = v163;
      sub_242CF6B3C(v157, v374 + v165, &qword_27ECFC780);
      v166 = (v151 + *(*v151 + 120));
      v167 = *v166;
      *v166 = sub_242D391AC;
      v166[1] = v165;
      sub_242C655DC(v167);

      sub_242C6D138(v164, &qword_27ECF2F78);
    }

    v139 = v368;
    while (1)
    {
      v138 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_96;
      }

      if (v138 >= v372)
      {
        break;
      }

      v136 = *(v373 + v138);
      ++i;
      if (v136)
      {
        i = v138;
        goto LABEL_27;
      }
    }

    if (qword_27ECEF0A8 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_30;
  }

  v373 = (v99 + ((*(v369 + 80) + 32) & ~*(v369 + 80)));
  v358 = (v312 + 56);

  v104 = 0;
  v105 = MEMORY[0x277D84F98];
  v106 = v356;
  v107 = v352;
  while (1)
  {
    if (v104 >= v99[2])
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
LABEL_30:
      v168 = sub_242F039A0();
      __swift_project_value_buffer(v168, qword_27ED5D270);

      v169 = v313;
      sub_242F03950();
      v170 = sub_242F03980();
      v171 = sub_242F05780();

      v172 = &unk_278D8C000;
      v173 = &unk_278D8C000;
      if (sub_242F05840())
      {
        LODWORD(v375) = v171;
        v174 = swift_slowAlloc();
        v374 = swift_slowAlloc();
        *&v390[0] = v374;
        *v174 = 136315394;
        v175 = objc_opt_self();
        v176 = [v175 standardUserDefaults];
        v177 = sub_242F04F00();
        v178 = [v176 stringForKey_];

        if (v178)
        {
          v179 = sub_242F04F30();
          v181 = v180;

          *v398 = v179;
          *&v398[8] = v181;
          v182 = sub_242F04F90();
          v184 = v183;
        }

        else
        {
          v184 = 0x8000000242F5A160;
          v182 = 0xD00000000000002DLL;
        }

        v185 = sub_242C8FD38(v182, v184, v390);

        *(v174 + 4) = v185;
        *(v174 + 12) = 2080;
        v186 = [v175 standardUserDefaults];
        v187 = sub_242F04F00();
        v188 = [v186 stringForKey_];

        v103 = v369;
        if (v188)
        {
          v189 = sub_242F04F30();
          v191 = v190;

          *v398 = v189;
          *&v398[8] = v191;
          v192 = sub_242F04F90();
          v194 = v193;
        }

        else
        {
          v194 = 0x8000000242F5A160;
          v192 = 0xD00000000000002DLL;
        }

        v195 = sub_242C8FD38(v192, v194, v390);

        *(v174 + 14) = v195;
        v196 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v170, v375, v196, "Selecting previous session active carousel items: ", "DCA: %s, MapsMedia: %s", v174, 0x16u);
        v197 = v374;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v197, -1, -1);
        MEMORY[0x245D287D0](v174, -1, -1);

        (*(v314 + 8))(v169, v315);
        v172 = &unk_278D8C000;
      }

      else
      {

        (*(v314 + 8))(v169, v315);
      }

      v198 = objc_opt_self();
      v199 = [v198 standardUserDefaults];
      v200 = sub_242F04F00();
      v201 = [v199 stringForKey_];

      if (v201)
      {
        v202 = sub_242F04F30();
        v204 = v203;
      }

      else
      {
        v202 = 0;
        v204 = 0;
      }

      *&v385 = v202;
      *(&v385 + 1) = v204;
      v205 = sub_242D131A0();
      *&v392[0] = MEMORY[0x277D84F90];
      v206 = *(v205 + 16);
      if (v206)
      {
        v374 = v198;
        v207 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
        v208 = *(v103 + 80);
        v375 = v205;
        v209 = v205 + ((v208 + 32) & ~v208);
        v210 = *(v103 + 72);
        v211 = MEMORY[0x277D84F90];
        v212 = v354;
        do
        {
          sub_242D39B5C(v209, v212, type metadata accessor for Zone);
          v213 = *(v376 + v207);
          if (*(v213 + 16) && (v214 = sub_242CE5568(v212), (v215 & 1) != 0))
          {
            v216 = (*(v213 + 56) + 112 * v214);
            v218 = v216[1];
            v217 = v216[2];
            *v398 = *v216;
            *&v398[16] = v218;
            *&v398[32] = v217;
            v219 = v216[3];
            v220 = v216[4];
            v221 = v216[5];
            *&v398[89] = *(v216 + 89);
            *&v398[64] = v220;
            *&v398[80] = v221;
            *&v398[48] = v219;
            sub_242CA321C(v398, v390, &qword_27ECF21A8);
            sub_242D39AFC(v212, type metadata accessor for Zone);
            v222 = sub_242CF3AF4(&v398[8]);
            MEMORY[0x245D268D0](v222);
            if (*((*&v392[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v392[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_242F05330();
            }

            sub_242F05370();
            v211 = *&v392[0];
            v212 = v354;
          }

          else
          {
            sub_242D39AFC(v212, type metadata accessor for Zone);
          }

          v209 += v210;
          --v206;
        }

        while (v206);

        v173 = &unk_278D8C000;
        v172 = &unk_278D8C000;
        v198 = v374;
      }

      else
      {

        v211 = MEMORY[0x277D84F90];
      }

      sub_242D392D8(&v385, v211, 0);

      v223 = [v198 v172[372]];
      v224 = sub_242F04F00();
      v225 = [v223 v173[373]];

      if (v225)
      {
        v226 = sub_242F04F30();
        v228 = v227;
      }

      else
      {
        v226 = 0;
        v228 = 0;
      }

      v229 = v369;
      *&v385 = v226;
      *(&v385 + 1) = v228;
      v230 = sub_242D12EEC();
      *&v392[0] = MEMORY[0x277D84F90];
      v231 = *(v230 + 16);
      if (v231)
      {
        v232 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
        v233 = *(v229 + 80);
        v375 = v230;
        v234 = v230 + ((v233 + 32) & ~v233);
        v235 = *(v229 + 72);
        v236 = MEMORY[0x277D84F90];
        v237 = v355;
        do
        {
          sub_242D39B5C(v234, v237, type metadata accessor for Zone);
          v238 = *(v376 + v232);
          if (*(v238 + 16) && (v239 = sub_242CE5568(v237), (v240 & 1) != 0))
          {
            v241 = (*(v238 + 56) + 112 * v239);
            v243 = v241[1];
            v242 = v241[2];
            *v398 = *v241;
            *&v398[16] = v243;
            *&v398[32] = v242;
            v244 = v241[3];
            v245 = v241[4];
            v246 = v241[5];
            *&v398[89] = *(v241 + 89);
            *&v398[64] = v245;
            *&v398[80] = v246;
            *&v398[48] = v244;
            sub_242CA321C(v398, v390, &qword_27ECF21A8);
            sub_242D39AFC(v237, type metadata accessor for Zone);
            v247 = sub_242CF3AF4(&v398[8]);
            MEMORY[0x245D268D0](v247);
            if (*((*&v392[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v392[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_242F05330();
            }

            sub_242F05370();
            v236 = *&v392[0];
            v237 = v355;
          }

          else
          {
            sub_242D39AFC(v237, type metadata accessor for Zone);
          }

          v234 += v235;
          --v231;
        }

        while (v231);
      }

      else
      {

        v236 = MEMORY[0x277D84F90];
      }

      sub_242D392D8(&v385, v236, 0);

      v248 = *(v376 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones);
      v249 = v368;
      *&v364 = *(v248 + 16);
      if (!v364)
      {
LABEL_94:

        return v376;
      }

      v250 = v369;
      *&v363 = v248 + ((*(v250 + 80) + 32) & ~*(v250 + 80));
      v362 = (v344 + 56);
      v359 = (v344 + 48);

      v251 = 0;
      v103 = v367;
      v361 = v248;
      while (1)
      {
        if (v251 >= *(v248 + 16))
        {
          goto LABEL_97;
        }

        v261 = *(v250 + 72);
        *&v370 = v251;
        sub_242D39B5C(v363 + v261 * v251, v103, type metadata accessor for Zone);
        if (!*(v249 + 16))
        {
          break;
        }

        v262 = sub_242CE5568(v103);
        if ((v263 & 1) == 0)
        {
          break;
        }

        v264 = (*(v249 + 56) + 112 * v262);
        v266 = v264[1];
        v265 = v264[2];
        *v398 = *v264;
        *&v398[16] = v266;
        *&v398[32] = v265;
        v267 = *(v264 + 89);
        v269 = v264[4];
        v268 = v264[5];
        *&v398[48] = v264[3];
        *&v398[64] = v269;
        *&v398[80] = v268;
        *&v398[89] = v267;
        v270 = *v398;
        v259 = *&v398[8];
        v258 = *&v398[16];
        v257 = *&v398[24];
        v256 = *&v398[32];
        v255 = *&v398[40];
        v254 = *&v398[48];
        v253 = *&v398[56];
        *&v371 = *(&v269 + 1);
        v252 = v269;
        v373 = *&v398[88];
        *&v372 = v268;
        v374 = (v267 >> 56);
        LODWORD(v375) = HIBYTE(v267);
        sub_242CA321C(v398, v390, &qword_27ECF21A8);
        if (!v270)
        {
          goto LABEL_70;
        }

        *v398 = v270;
        *&v398[8] = v259;
        *&v398[16] = v258;
        *&v398[24] = v257;
        *&v398[32] = v256;
        *&v398[40] = v255;
        *&v398[48] = v254;
        *&v398[56] = v253;
        *&v398[64] = v252;
        *&v398[72] = v371;
        *&v398[80] = v372;
        *&v398[88] = v373;
        *&v398[96] = v374;
        v398[104] = v375;

        v271 = sub_242C6D138(v398, &qword_27ECF2FF0);
        MEMORY[0x28223BE20](v271);
        v272 = v360;
        *(&v307 - 4) = v360;
        v273 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
        *(&v307 - 3) = v273;
        v274 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
        *(&v307 - 2) = v274;
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v307 - 4) = v272;
        *(&v307 - 3) = v273;
        *(&v307 - 2) = v274;
        swift_getKeyPath();
        v276 = v347;
        sub_242F03A80();

        v277 = *(v276 + *(v272 + 36));

        sub_242D39AFC(v276, type metadata accessor for Component);
        if (*(v277 + 16))
        {
          v260 = v366;
          sub_242D39B5C(v277 + ((*(v344 + 80) + 32) & ~*(v344 + 80)), v366, type metadata accessor for Slot);
          v278 = 0;
        }

        else
        {
          v278 = 1;
          v260 = v366;
        }

        v250 = v369;
        v103 = v367;

        v279 = v365;
        (*v362)(v260, v278, 1, v365);
        if ((*v359)(v260, 1, v279) == 1)
        {
          sub_242D39AFC(v103, type metadata accessor for Zone);
          goto LABEL_71;
        }

        v280 = v346;
        sub_242D39C68(v260, v346, type metadata accessor for Slot);
        v281 = v351;
        sub_242CA321C(v103, v351, &qword_27ECFC780);
        v282 = *(v279 + 36);
        v283 = type metadata accessor for Instrument();
        v284 = (*(*(v283 - 8) + 48))(v280 + v282, 1, v283);
        v285 = swift_getKeyPath();
        swift_getKeyPath();
        v375 = v285;
        v374 = sub_242F03A70();
        v287 = v286;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v385 = *v287;
        v289 = v385;
        *v287 = 0x8000000000000000;
        v291 = sub_242CE5568(v281);
        v292 = *(v289 + 16);
        v293 = (v290 & 1) == 0;
        v294 = v292 + v293;
        if (__OFADD__(v292, v293))
        {
          goto LABEL_98;
        }

        v295 = v290;
        if (*(v289 + 24) >= v294)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_242D026AC();
          }
        }

        else
        {
          sub_242D06904(v294, isUniquelyReferenced_nonNull_native);
          v296 = sub_242CE5568(v351);
          if ((v295 & 1) != (v297 & 1))
          {
            goto LABEL_102;
          }

          v291 = v296;
        }

        v298 = v385;
        if (v295)
        {
          *(*(v385 + 56) + v291) = v284 != 1;
          sub_242C6D138(v351, &qword_27ECFC780);
        }

        else
        {
          *(v385 + 8 * (v291 >> 6) + 64) |= 1 << v291;
          v299 = v351;
          sub_242CA321C(v351, v298[6] + *(v353 + 72) * v291, &qword_27ECFC780);
          *(v298[7] + v291) = v284 != 1;
          sub_242C6D138(v299, &qword_27ECFC780);
          v300 = v298[2];
          v301 = __OFADD__(v300, 1);
          v302 = v300 + 1;
          if (v301)
          {
            __break(1u);
            goto LABEL_101;
          }

          v298[2] = v302;
        }

        *v287 = v298;

        (v374)(v390, 0);

        sub_242D39AFC(v103, type metadata accessor for Zone);
        sub_242D39AFC(v346, type metadata accessor for Slot);
LABEL_72:
        v249 = v368;
        v248 = v361;
        v251 = v370 + 1;
        if (v364 == v370 + 1)
        {

          goto LABEL_94;
        }
      }

      LODWORD(v375) = 0;
      v374 = 0;
      v373 = 0;
      *&v372 = 0;
      *&v371 = 0;
      v252 = 0;
      v253 = 0;
      v254 = 0;
      v255 = 0;
      v256 = 0;
      v257 = 0;
      v258 = 0;
      v259 = 0;
LABEL_70:
      v103 = v367;
      sub_242D39AFC(v367, type metadata accessor for Zone);
      *v398 = 0;
      *&v398[8] = v259;
      *&v398[16] = v258;
      *&v398[24] = v257;
      *&v398[32] = v256;
      *&v398[40] = v255;
      *&v398[48] = v254;
      *&v398[56] = v253;
      *&v398[64] = v252;
      *&v398[72] = v371;
      *&v398[80] = v372;
      *&v398[88] = v373;
      *&v398[96] = v374;
      v398[104] = v375;
      sub_242C6D138(v398, &qword_27ECF2FF0);
      v260 = v366;
      (*v362)(v366, 1, 1, v365);
      v250 = v369;
LABEL_71:
      sub_242C6D138(v260, &qword_27ECF2F70);
      goto LABEL_72;
    }

    sub_242D39B5C(v373 + *(v103 + 72) * v104, v22, type metadata accessor for Zone);
    v115 = &v22[*(v375 + 32)];
    v116 = v115[96];
    if (v116 > 1)
    {
      goto LABEL_4;
    }

    v117 = v116 == 0;
    v118 = 8;
    if (v117)
    {
      v118 = 16;
    }

    v119 = &v115[v118];
    v120 = *(v119 + 2);
    v121 = *(v119 + 3);
    v122 = *v119;
    v386 = *(v119 + 1);
    v387 = v120;
    v123 = *(v119 + 4);
    v388 = v121;
    v389 = v123;
    v385 = v122;
    v399[2] = v120;
    v399[3] = v121;
    v399[4] = v123;
    v399[0] = v122;
    v399[1] = v386;
    v124 = Zone.primaryComponents.getter();
    *&v392[0] = v124;
    if (v106 && v115[96] == 1)
    {
      v125 = v105;
      MEMORY[0x28223BE20](v124);
      *(&v307 - 2) = v22;

      v126 = v361;
      v127 = sub_242CE892C(sub_242D3E1A0, (&v307 - 4), v106);
      v361 = v126;
      if (v126)
      {
        goto LABEL_101;
      }

      v128 = v127;

      v124 = sub_242C81E28(v128);
      v103 = v369;
      v105 = v125;
      v107 = v352;
    }

    if (v107 && !v115[96])
    {
      break;
    }

LABEL_3:
    v108 = *&v392[0];
    v109 = v359;
    (*v358)(v359, 1, 1, v360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D30);
    swift_allocObject();
    v110 = sub_242D2D864(v108, v109, v399);
    v111 = *(v115 + 1);
    *v398 = *v115;
    *&v398[16] = v111;
    v112 = *(v115 + 5);
    *&v398[64] = *(v115 + 4);
    *&v398[80] = v112;
    v113 = *(v115 + 3);
    *&v398[32] = *(v115 + 2);
    *&v398[48] = v113;
    v398[96] = v115[96];
    LOBYTE(v109) = v398[96];
    v368 = *&v398[16];
    v371 = *&v398[32];
    v372 = *v398;
    v370 = *&v398[64];
    v363 = v112;
    v364 = v113;
    sub_242CF3ABC(v398, v390);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    *&v390[0] = v105;
    v377 = v110;
    v379 = v368;
    v378 = v372;
    v381 = v364;
    v380 = v371;
    v383 = v363;
    v382 = v370;
    v384 = v109;
    sub_242CDEF48(&v377, v22, v114);
    v105 = *&v390[0];
    v99 = v362;
LABEL_4:
    ++v104;
    sub_242D39AFC(v22, type metadata accessor for Zone);
    if (v374 == v104)
    {
      goto LABEL_18;
    }
  }

  v129 = v105;
  MEMORY[0x28223BE20](v124);
  *(&v307 - 2) = v22;

  v130 = v361;
  v131 = sub_242CE892C(sub_242D39BC4, (&v307 - 4), v107);
  v361 = v130;
  if (!v130)
  {
    v132 = v131;

    sub_242C81E28(v132);
    v103 = v369;
    v105 = v129;
    v106 = v356;
    goto LABEL_3;
  }

LABEL_101:
  v304 = v376;
  (*(v307 + 8))(v376 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContent, v308);
  (*(v309 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__focusOrder, v310);

  sub_242C6D138(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone1RequestContent, &qword_27ECF2EC8);
  sub_242C6D138(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone2RequestContent, &qword_27ECF2EC8);
  v305 = *(v332 + 8);
  v306 = v345;
  v305(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningRequestContent, v345);
  (*(v329 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContentTransitions, v330);
  v305(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningComponent, v306);
  (*(v331 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__componentTransitions, v333);
  (*(v334 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeLayout, v335);
  v305(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningLayout, v306);
  (*(v336 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__layoutTransition, v337);
  v305(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningAppearance, v306);
  (*(v338 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeAppearance, v339);
  (*(v340 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__appearanceTransition, v341);
  (*(v342 + 8))(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment, v343);
  sub_242C655DC(*(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear));
  sub_242C655DC(*(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear));
  sub_242C655DC(*(v304 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear));
  type metadata accessor for ClusterTransitionCoordinator(0);
  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_102:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t sub_242D1BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v124 = a2;
  v123 = type metadata accessor for Component();
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v5 - 8);
  v126 = &v106 - v6;
  v7 = type metadata accessor for Instrument();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v108 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v106 - v17;
  v19 = type metadata accessor for Slot();
  v20 = (v19 - 8);
  v120 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v106 - v23;
  v25 = v2[1];
  v117 = *v2;
  v118 = v25;
  v26 = v2[3];
  v116 = v2[2];
  v125 = v26;
  v27 = *(v2 + 32);
  v28 = type metadata accessor for Zone();
  v29 = a1 + *(v28 + 24);
  v30 = *(v29 + 16);
  v31 = *(v29 + 24);
  v32 = *(v8 + 56);
  v32(v18, 1, 1, v7);
  v33 = v20[11];
  v114 = v7;
  v109 = v8 + 56;
  v112 = v32;
  v32(&v24[v33], 1, 1, v7);
  v34 = &v24[v20[12]];
  v35 = &v24[v20[13]];
  sub_242F03710();
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140) + 52)] = 7;
  v36 = v20[14];
  v37 = v27;
  *&v24[v36] = 0;
  *(v24 + 15) = 12620;
  *(v24 + 16) = 0xE200000000000000;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *(v24 + 5) = 1;
  *(v24 + 6) = 0;
  *(v24 + 7) = 0;
  *(v24 + 8) = v30;
  *(v24 + 9) = v31;
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 14) = 0;
  v111 = v33;
  v38 = &v24[v33];
  v40 = v116;
  v39 = v117;
  v41 = v18;
  v42 = v125;
  sub_242CF42A0(v41, v38);
  *v34 = 0;
  *(v34 + 1) = 0;
  v43 = v118;
  v44 = v115 + *(v28 + 32);
  v45 = *(v44 + 80);
  v134[4] = *(v44 + 64);
  v134[5] = v45;
  v135 = *(v44 + 96);
  v46 = *(v44 + 48);
  v134[2] = *(v44 + 32);
  v134[3] = v46;
  v47 = *(v44 + 16);
  v134[0] = *v44;
  v134[1] = v47;
  if (v135 <= 1u)
  {
    v48 = *&v134[0];
    v128[0] = v39;
    v128[1] = v118;
    v128[2] = v40;
    v128[3] = v42;
    LOBYTE(v128[4]) = v37;
    sub_242CF3ABC(v134, v129);
    Instrument.WidgetInfo.instrumentKind.getter(v131);
    memcpy(v132, v131, sizeof(v132));
    memcpy(v133, v131, sizeof(v133));
    if (sub_242D3DE10(v133) == 1)
    {
      sub_242CF3AF4(v134);
      goto LABEL_15;
    }

    memcpy(v129, v133, 0x238uLL);
    if (sub_242C9E788(v129) != 6)
    {
      sub_242CF3AF4(v134);
      sub_242C6D138(v132, &qword_27ECF3198);
      goto LABEL_15;
    }

    LODWORD(v115) = v37;
    v49 = sub_242C556B4(v129);
    v50 = *v49;
    v51 = v49[1];

    sub_242C6D138(v132, &qword_27ECF3198);
    if (v48)
    {
      if (*(v48 + 16))
      {
        v52 = sub_242CE519C(v50, v51);
        v54 = v53;

        if (v54)
        {
          v55 = (*(v48 + 56) + 32 * v52);
          v56 = *v55;
          v106 = v55[1];
          v107 = v56;
          sub_242CF3AF4(v134);
          v57 = v106;
          *(v24 + 5) = v107;
          *(v24 + 6) = v57;
        }

        else
        {
          sub_242CF3AF4(v134);
        }

        v42 = v125;
        goto LABEL_14;
      }

      sub_242CF3AF4(v134);
    }

LABEL_14:
    LOBYTE(v37) = v115;
  }

LABEL_15:
  v129[71] = v39;
  v129[72] = v43;
  v129[73] = v40;
  v129[74] = v42;
  v130 = v37;
  Instrument.WidgetInfo.instrumentKind.getter(v132);
  memcpy(v133, v132, sizeof(v133));
  if (sub_242D3DE10(v133) == 1)
  {
    v58 = v120;
    goto LABEL_29;
  }

  v59 = v119;
  sub_242F03710();
  v60 = sub_242F04730();
  v61 = v113;
  sub_242F03710();
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170) + 52);
  *(v61 + v62) = 7;
  v63 = v59;
  v64 = v110;
  sub_242CA321C(v63, v110, &qword_27ECF2168);
  sub_242C6D138(v61, &qword_27ECF2170);
  sub_242CF6B3C(v64, v61, &qword_27ECF2168);
  *(v61 + v62) = 7;
  v65 = v114;
  memcpy((v61 + *(v114 + 20)), v133, 0x238uLL);
  v66 = v61 + *(v65 + 24);
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  *v66 = v60;
  *(v66 + 24) = 256;
  *(v66 + 32) = 0;
  *(v66 + 40) = 0;
  *(v66 + 50) = -1;
  *(v66 + 48) = 0;
  memcpy(v131, v133, sizeof(v131));

  sub_242CA321C(v132, v129, &qword_27ECF3198);
  v67 = Instrument.Kind.defaultVerifierIdentifier.getter();
  v69 = v68;

  *(v66 + 8) = v67;
  *(v66 + 16) = v69;
  memcpy(v131, v133, sizeof(v131));
  if (sub_242C9E788(v131) != 1)
  {
    goto LABEL_22;
  }

  v70 = sub_242C556B4(v131);
  memcpy(v129, v70, 0x228uLL);
  if (sub_242D3DE48(v129) != 3)
  {
    goto LABEL_22;
  }

  v71 = sub_242C65548(v129);
  memcpy(v128, v71, sizeof(v128));
  v72 = sub_242D3DE64(v128);
  if (v72)
  {
    if (v72 == 7)
    {
      sub_242C58D34(v128);

LABEL_36:
      v73 = 1;
      goto LABEL_23;
    }

LABEL_22:

    v73 = 0;
    goto LABEL_23;
  }

  v127 = *sub_242C58D34(v128);
  if (InstrumentDataIdentifier.rawValue.getter() == 0x53656C6369686576 && v94 == 0xEC00000064656570)
  {

    goto LABEL_36;
  }

  v73 = sub_242F06110();

LABEL_23:
  v74 = v108;
  sub_242C6D138(v119, &qword_27ECF2168);
  *(v66 + 24) = v73 & 1;
  memcpy(v129, v133, 0x238uLL);
  v75 = sub_242C9E788(v129);
  if (v75 == 2)
  {
    sub_242C556B4(v129);
    sub_242C6D138(v132, &qword_27ECF3198);
    goto LABEL_27;
  }

  if (v75 == 8)
  {
LABEL_27:
    *(v66 + 25) = 0;
    goto LABEL_28;
  }

  sub_242C6D138(v132, &qword_27ECF3198);
LABEL_28:
  v58 = v120;
  sub_242D39C68(v61, v74, type metadata accessor for Instrument);
  v112(v74, 0, 1, v65);
  sub_242CF42A0(v74, &v24[v111]);
LABEL_29:
  sub_242F03710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330);
  v76 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_242F09510;
  sub_242D39B5C(v24, v77 + v76, type metadata accessor for Slot);
  v131[0] = MEMORY[0x277D84F90];
  sub_242E3BC70(0, 1, 0);
  v78 = v131[0];
  v79 = v121;
  sub_242D39B5C(v77 + v76, v121, type metadata accessor for Slot);
  v81 = *(v79 + 120);
  v80 = *(v79 + 128);

  sub_242D39AFC(v79, type metadata accessor for Slot);
  v83 = *(v78 + 16);
  v82 = *(v78 + 24);
  if (v83 >= v82 >> 1)
  {
    sub_242E3BC70((v82 > 1), v83 + 1, 1);
    v78 = v131[0];
  }

  *(v78 + 16) = v83 + 1;
  v84 = v78 + 16 * v83;
  *(v84 + 32) = v81;
  *(v84 + 40) = v80;

  v86 = sub_242C86440(v85);

  v87 = *(v86 + 16);

  v88 = *(v78 + 16);

  if (v87 == v88)
  {
    v89 = v122;
    sub_242CF6B3C(v126, v122, &qword_27ECF23E8);
    v90 = v123;
    *(v89 + *(v123 + 20)) = 0;
    v91 = (v89 + v90[6]);
    *v91 = 0x746E65746E6F43;
    v91[1] = 0xE700000000000000;
    v92 = (v89 + v90[7]);
    *v92 = v30;
    v92[1] = v31;
    *(v89 + v90[9]) = v77;
    *(v89 + v90[8]) = 2;
    sub_242D39C68(v89, v124, type metadata accessor for Component);
    return sub_242D39AFC(v24, type metadata accessor for Slot);
  }

  else
  {
    v131[0] = 0;
    v131[1] = 0xE000000000000000;
    sub_242F05A80();

    v131[0] = 0xD000000000000023;
    v131[1] = 0x8000000242F59E80;
    v129[0] = MEMORY[0x277D84F90];
    sub_242E3BC70(0, 1, 0);
    v95 = v129[0];
    v96 = v77 + v76;
    v97 = v121;
    sub_242D39B5C(v96, v121, type metadata accessor for Slot);
    v99 = *(v97 + 120);
    v98 = *(v97 + 128);

    sub_242D39AFC(v97, type metadata accessor for Slot);
    v101 = *(v95 + 16);
    v100 = *(v95 + 24);
    if (v101 >= v100 >> 1)
    {
      sub_242E3BC70((v100 > 1), v101 + 1, 1);
      v95 = v129[0];
    }

    *(v95 + 16) = v101 + 1;
    v102 = v95 + 16 * v101;
    *(v102 + 32) = v99;
    *(v102 + 40) = v98;
    v103 = MEMORY[0x245D26920](v95, MEMORY[0x277D837D0]);
    v105 = v104;

    MEMORY[0x245D26660](v103, v105);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242D1CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v58 = type metadata accessor for Zone();
  v8 = *(v58 - 8);
  v9 = MEMORY[0x28223BE20](v58);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v56 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v22 = type metadata accessor for Layout();
    if ((*(*(v22 - 8) + 48))(v19, 1, v22))
    {

      return sub_242C6D138(v19, &qword_27ECF2F98);
    }

    else
    {
      v54 = a1;
      v55 = v11;
      v57 = v21;
      v53 = v14;
      v23 = *&v19[*(v22 + 24)];

      result = sub_242C6D138(v19, &qword_27ECF2F98);
      v24 = 0;
      v25 = *(v23 + 16);
      while (1)
      {
        if (v25 == v24)
        {
        }

        if (v24 >= *(v23 + 16))
        {
          break;
        }

        v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v27 = *(v8 + 72);
        sub_242D39B5C(v23 + v26 + v27 * v24++, v16, type metadata accessor for Zone);
        sub_242F03720();
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
        v28 = sub_242F04EE0();
        result = sub_242D39AFC(v16, type metadata accessor for Zone);
        if (v28)
        {

          v29 = v60;
          v30 = sub_242D1D29C(v60, v54);
          MEMORY[0x28223BE20](v30);
          *(&v53 - 2) = v29;
          v31 = v56;
          sub_242CE8BC4(sub_242D3E1FC, v59, v56);
          v32 = v58;
          if ((*(v8 + 48))(v31, 1, v58) == 1)
          {

            return sub_242C6D138(v31, &qword_27ECF31B8);
          }

          v33 = v31;
          v34 = v53;
          sub_242D39C68(v33, v53, type metadata accessor for Zone);
          if (*(v34 + *(v32 + 32) + 96))
          {
            if (*(v34 + *(v32 + 32) + 96) == 1)
            {
              Component.stableIdentifier.getter(v62);
              v61[0] = v62[0];
              sub_242D39D34(v61);
              v35 = sub_242D131A0();
              MEMORY[0x28223BE20](v35);
              *(&v53 - 2) = v34;
              v37 = sub_242D1282C(sub_242D3E09C, (&v53 - 4), v36);
              v64 = MEMORY[0x277D84F90];
              v38 = *(v37 + 16);
              if (v38)
              {
                v39 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
                v40 = MEMORY[0x277D84F90];
                v60 = v37;
                v41 = v37 + v26;
                do
                {
                  v42 = v55;
                  sub_242D39B5C(v41, v55, type metadata accessor for Zone);
                  v43 = *(v57 + v39);
                  if (*(v43 + 16) && (v44 = sub_242CE5568(v42), (v45 & 1) != 0))
                  {
                    v46 = (*(v43 + 56) + 112 * v44);
                    v48 = v46[1];
                    v47 = v46[2];
                    v62[0] = *v46;
                    v62[1] = v48;
                    v62[2] = v47;
                    v49 = v46[3];
                    v50 = v46[4];
                    v51 = v46[5];
                    *(v63 + 9) = *(v46 + 89);
                    v62[4] = v50;
                    v63[0] = v51;
                    v62[3] = v49;
                    sub_242CA321C(v62, v61, &qword_27ECF21A8);
                    sub_242D39AFC(v42, type metadata accessor for Zone);
                    v52 = sub_242CF3AF4(v62 + 8);
                    MEMORY[0x245D268D0](v52);
                    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_242F05330();
                    }

                    sub_242F05370();
                    v40 = v64;
                  }

                  else
                  {
                    sub_242D39AFC(v42, type metadata accessor for Zone);
                  }

                  v41 += v27;
                  --v38;
                }

                while (v38);

                v34 = v53;
              }

              else
              {

                v40 = MEMORY[0x277D84F90];
              }

              Component.stableIdentifier.getter(v62);
              v61[0] = v62[0];
              sub_242D392D8(v61, v40, 0);

              return sub_242D39AFC(v34, type metadata accessor for Zone);
            }
          }

          else
          {
            Component.stableIdentifier.getter(v62);
            v61[0] = v62[0];
            sub_242D39DFC(v61);
          }

          return sub_242D39AFC(v34, type metadata accessor for Zone);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_242D1D29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &isa - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &isa - v9;
  v11 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v74 = &isa - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &isa - v14;
  v16 = sub_242F03720();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x28223BE20](v16);
  v71 = &isa - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v70 = &isa - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &isa - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &isa - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &isa - v30;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v32 = sub_242F039D0();
  __swift_project_value_buffer(v32, qword_27ED5D310);
  v76 = a2;
  sub_242CA321C(a2, v31, &qword_27ECF23E8);
  v77 = a1;
  sub_242CA321C(a1, v25, &qword_27ECFC780);
  v33 = sub_242F039B0();
  v34 = sub_242F05720();
  v35 = v25;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v65 = v34;
    v37 = v36;
    v66 = swift_slowAlloc();
    v81[0] = v66;
    *v37 = 136315394;
    v68 = v15;
    v69 = v3;
    sub_242CA321C(v31, v29, &qword_27ECF23E8);
    v67 = v10;
    v38 = v71;
    isa = v72[2].isa;
    v39 = v73;
    (isa)(v71, v29, v73);
    v40 = sub_242F04F90();
    v72 = v33;
    v41 = v21;
    v42 = v40;
    v64 = v35;
    v44 = v43;
    sub_242C6D138(v29, &qword_27ECF23E8);
    sub_242C6D138(v31, &qword_27ECF23E8);
    v45 = v42;
    v21 = v41;
    v46 = sub_242C8FD38(v45, v44, v81);

    *(v37 + 4) = v46;
    *(v37 + 12) = 2080;
    v47 = v64;
    v48 = v70;
    sub_242CA321C(v64, v70, &qword_27ECFC780);
    (isa)(v38, v48, v39);
    v10 = v67;
    v49 = sub_242F04F90();
    v51 = v50;
    sub_242C6D138(v48, &qword_27ECFC780);
    sub_242C6D138(v47, &qword_27ECFC780);
    v52 = sub_242C8FD38(v49, v51, v81);
    v15 = v68;

    *(v37 + 14) = v52;
    v53 = v72;
    _os_log_impl(&dword_242C53000, v72, v65, "Starting component %s transition on zone %s", v37, 0x16u);
    v54 = v66;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v54, -1, -1);
    MEMORY[0x245D287D0](v37, -1, -1);
  }

  else
  {

    sub_242C6D138(v25, &qword_27ECFC780);
    sub_242C6D138(v31, &qword_27ECF23E8);
  }

  v55 = v79;
  sub_242CA321C(v76, &v15[*(v79 + 20)], &qword_27ECF23E8);
  sub_242F03710();
  sub_242CA321C(v77, v21, &qword_27ECFC780);
  sub_242D39B5C(v15, v10, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  v56 = v78;
  (*(v78 + 56))(v10, 0, 1, v55);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v57 = v81[0];
  if ((*(v56 + 48))(v10, 1, v55) == 1)
  {
    sub_242C6D138(v10, &qword_27ECF31D0);
    v58 = v75;
    sub_242D37C00(v21, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, sub_242ED0740, sub_242D02B84, v75);
    sub_242C6D138(v58, &qword_27ECF31D0);
    sub_242C6D138(v21, &qword_27ECFC780);
    v59 = v81[0];
  }

  else
  {
    v60 = v74;
    sub_242D39C68(v10, v74, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_242CDF290(v60, v21, isUniquelyReferenced_nonNull_native);
    sub_242C6D138(v21, &qword_27ECFC780);
    v59 = v80;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v59;

  sub_242F03A90();
  sub_242D150A0();
  return sub_242D39AFC(v15, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
}

BOOL sub_242D1DAE0()
{
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return (sub_242F04EE0() & 1) == 0;
}

uint64_t sub_242D1DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Zone();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v13 = type metadata accessor for Layout();
    if ((*(*(v13 - 8) + 48))(v11, 1, v13))
    {

      return sub_242C6D138(v11, &qword_27ECF2F98);
    }

    else
    {
      v14 = *&v11[*(v13 + 24)];

      result = sub_242C6D138(v11, &qword_27ECF2F98);
      v15 = 0;
      v16 = *(v14 + 16);
      while (1)
      {
        if (v16 == v15)
        {
        }

        if (v15 >= *(v14 + 16))
        {
          break;
        }

        sub_242D39B5C(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v8, type metadata accessor for Zone);
        sub_242F03720();
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
        v17 = sub_242F04EE0();
        result = sub_242D39AFC(v8, type metadata accessor for Zone);
        if (v17)
        {

          sub_242D1DE78(a3, a1);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_242D1DE78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a1;
  v73 = sub_242F04B60();
  v84 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v82 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_242F04B80();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_242F04BA0();
  v79 = *(v86 - 8);
  v7 = MEMORY[0x28223BE20](v86);
  v74 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v65 - v9;
  v10 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v75 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76 = v12;
  v77 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = v65 - v13;
  v14 = sub_242F03720();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v71 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v87 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v65 - v27;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v29 = sub_242F039D0();
  __swift_project_value_buffer(v29, qword_27ED5D310);
  sub_242CA321C(a2, v28, &qword_27ECF23E8);
  sub_242CA321C(v88, v22, &qword_27ECFC780);
  v30 = sub_242F039B0();
  v31 = sub_242F05720();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v68 = v31;
    v33 = v32;
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v33 = 136315394;
    v70 = v3;
    v67 = v30;
    sub_242CA321C(v28, v26, &qword_27ECF23E8);
    v34 = *(v15 + 16);
    v65[1] = v15 + 16;
    v66 = v34;
    v34(v17, v26, v14);
    v35 = sub_242F04F90();
    v37 = v36;
    sub_242C6D138(v26, &qword_27ECF23E8);
    sub_242C6D138(v28, &qword_27ECF23E8);
    v38 = sub_242C8FD38(v35, v37, aBlock);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = v87;
    sub_242CA321C(v22, v87, &qword_27ECFC780);
    v66(v17, v39, v14);
    v40 = sub_242F04F90();
    v42 = v41;
    sub_242C6D138(v39, &qword_27ECFC780);
    sub_242C6D138(v22, &qword_27ECFC780);
    v43 = sub_242C8FD38(v40, v42, aBlock);

    *(v33 + 14) = v43;
    v44 = v67;
    _os_log_impl(&dword_242C53000, v67, v68, "Ending component %s transition on zone %s", v33, 0x16u);
    v45 = v69;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v45, -1, -1);
    MEMORY[0x245D287D0](v33, -1, -1);
  }

  else
  {

    sub_242C6D138(v22, &qword_27ECFC780);
    sub_242C6D138(v28, &qword_27ECF23E8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v46 = aBlock[0];
  if (!*(aBlock[0] + 16))
  {
  }

  v47 = sub_242CE5568(v88);
  if ((v48 & 1) == 0)
  {
  }

  v49 = v75;
  v50 = v85;
  sub_242D39B5C(*(v46 + 56) + *(v75 + 72) * v47, v85, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);

  sub_242D3DCD0();
  v70 = sub_242F05750();
  v51 = v74;
  sub_242F04B90();
  v52 = v78;
  sub_242F04BF0();
  v79 = *(v79 + 8);
  (v79)(v51, v86);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = v87;
  sub_242CA321C(v88, v87, &qword_27ECFC780);
  v55 = v77;
  sub_242D39B5C(v50, v77, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  v56 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v57 = (v72 + *(v49 + 80) + v56) & ~*(v49 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v53;
  sub_242CF6B3C(v54, v58 + v56, &qword_27ECFC780);
  sub_242D39C68(v55, v58 + v57, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  aBlock[4] = sub_242D3DFC0;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_342;
  v59 = _Block_copy(aBlock);

  v60 = v80;
  sub_242F04B70();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_242D3DC24(&qword_27ECFC050, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
  sub_242D3DC6C();
  v61 = v82;
  v62 = v73;
  sub_242F05930();
  v63 = v70;
  MEMORY[0x245D26D30](v52, v60, v61, v59);
  _Block_release(v59);

  (*(v84 + 8))(v61, v62);
  (*(v81 + 8))(v60, v83);
  (v79)(v52, v86);
  return sub_242D39AFC(v85, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
}

uint64_t sub_242D1E904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v77 - v4;
  v83 = type metadata accessor for Component();
  MEMORY[0x28223BE20](v83);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78);
  v6 = MEMORY[0x28223BE20](v81);
  v89 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v77 - v9;
  MEMORY[0x28223BE20](v8);
  v88 = &v77 - v10;
  v11 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v91[2] = a1;
  v12 = sub_242D36D1C(sub_242D39C48, v91, v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v85 = v12;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v78 = v17;
  v79 = v13;
  v90 = MEMORY[0x277D84F90];
  if (v16)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_242F06320();
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      do
      {
LABEL_8:
        v21 = __clz(__rbit64(v16)) | (v18 << 6);
        v22 = v85;
        v23 = *(v85 + 48);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
        v25 = v88;
        sub_242CA321C(v23 + *(*(v24 - 8) + 72) * v21, v88, &qword_27ECFC780);
        v26 = (*(v22 + 56) + 112 * v21);
        v27 = *(v26 + 89);
        v29 = v26[4];
        v28 = v26[5];
        v93[3] = v26[3];
        v93[4] = v29;
        v94[0] = v28;
        *(v94 + 9) = v27;
        v31 = v26[1];
        v30 = v26[2];
        v93[0] = *v26;
        v93[1] = v31;
        v93[2] = v30;
        v32 = v81;
        memmove((v25 + *(v81 + 48)), v26, 0x69uLL);
        v33 = v80;
        sub_242CA321C(v25, v80, &qword_27ECF2F78);
        v34 = (v33 + *(v32 + 48));
        v35 = v34[5];
        v95[4] = v34[4];
        v96[0] = v35;
        *(v96 + 9) = *(v34 + 89);
        v36 = v34[1];
        v95[0] = *v34;
        v95[1] = v36;
        v37 = v34[3];
        v95[2] = v34[2];
        v95[3] = v37;
        sub_242CA321C(v93, &v92, &qword_27ECF21A8);
        sub_242C6D138(v95, &qword_27ECF21A8);
        v38 = sub_242F036F0();
        v86 = v39;
        v87 = v38;
        sub_242C6D138(v33, &qword_27ECFC780);
        v40 = v89;
        sub_242CA321C(v25, v89, &qword_27ECF2F78);
        v41 = v40 + *(v32 + 48);
        v42 = sub_242D1162C(*(v41 + 8), *(v41 + 16), *(v41 + 24), *(v41 + 32), *(v41 + 40), *(v41 + 48), *(v41 + 56), *(v41 + 64), *(v41 + 72), *(v41 + 80), *(v41 + 88), *(v41 + 96), *(v41 + 104));
        MEMORY[0x28223BE20](v42);
        sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
        sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        swift_getKeyPath();
        v44 = v82;
        sub_242F03A80();

        v45 = v84;
        sub_242CA321C(v44, v84, &qword_27ECF23E8);
        sub_242D39AFC(v44, type metadata accessor for Component);
        v46 = sub_242F036F0();
        v48 = v47;
        sub_242C6D138(v45, &qword_27ECF23E8);
        sub_242C6D138(v88, &qword_27ECF2F78);
        sub_242C6D138(v89, &qword_27ECFC780);
        v19 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_242C83648(0, v19[2] + 1, 1, v19);
        }

        v50 = v19[2];
        v49 = v19[3];
        if (v50 >= v49 >> 1)
        {
          v19 = sub_242C83648((v49 > 1), v50 + 1, 1, v19);
        }

        v16 &= v16 - 1;
        v19[2] = v50 + 1;
        v51 = &v19[4 * v50];
        v52 = v86;
        v51[4] = v87;
        v51[5] = v52;
        v51[6] = v46;
        v51[7] = v48;
        v17 = v78;
        v13 = v79;
        v90 = v19;
      }

      while (v16);
    }
  }

  v53 = sub_242CE7918(MEMORY[0x277D84F90]);
  v89 = v19[2];
  if (v89)
  {
    v54 = 0;
    v55 = v19 + 7;
    while (1)
    {
      if (v54 >= v19[2])
      {
        goto LABEL_31;
      }

      v59 = *(v55 - 3);
      v58 = *(v55 - 2);
      v61 = *(v55 - 1);
      v60 = *v55;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v95[0] = v53;
      v63 = sub_242CE519C(v59, v58);
      v65 = v53[2];
      v66 = (v64 & 1) == 0;
      v67 = __OFADD__(v65, v66);
      v68 = v65 + v66;
      if (v67)
      {
        goto LABEL_32;
      }

      v69 = v64;
      if (v53[3] < v68)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v75 = v63;
      sub_242D02EA4();
      v63 = v75;
      if (v69)
      {
LABEL_16:
        v56 = v63;

        v53 = *&v95[0];
        v57 = (*(*&v95[0] + 56) + 16 * v56);
        *v57 = v61;
        v57[1] = v60;

        goto LABEL_17;
      }

LABEL_25:
      v53 = *&v95[0];
      *(*&v95[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
      v71 = (v53[6] + 16 * v63);
      *v71 = v59;
      v71[1] = v58;
      v72 = (v53[7] + 16 * v63);
      *v72 = v61;
      v72[1] = v60;

      v73 = v53[2];
      v67 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v67)
      {
        goto LABEL_33;
      }

      v53[2] = v74;
LABEL_17:
      ++v54;
      v55 += 4;
      v19 = v90;
      if (v89 == v54)
      {
        goto LABEL_29;
      }
    }

    sub_242D0755C(v68, isUniquelyReferenced_nonNull_native);
    v63 = sub_242CE519C(v59, v58);
    if ((v69 & 1) != (v70 & 1))
    {
      goto LABEL_34;
    }

LABEL_24:
    if (v69)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_29:

  return v53;
}

BOOL sub_242D1F0E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v24 - v11;
  v13 = a2[5];
  v30 = a2[4];
  v31[0] = v13;
  *(v31 + 9) = *(a2 + 89);
  v14 = a2[1];
  v26 = *a2;
  v27 = v14;
  v15 = a2[3];
  v28 = a2[2];
  v29 = v15;
  sub_242CA321C(a1, v24 - v11, &qword_27ECFC780);
  v16 = &v12[*(v10 + 56)];
  v17 = v31[0];
  *(v16 + 4) = v30;
  *(v16 + 5) = v17;
  *(v16 + 89) = *(v31 + 9);
  v18 = v27;
  *v16 = v26;
  *(v16 + 1) = v18;
  v19 = v29;
  *(v16 + 2) = v28;
  *(v16 + 3) = v19;
  v20 = *(a3 + *(type metadata accessor for Layout() + 24));
  v24[2] = v12;
  sub_242CA321C(&v26, &v25, &qword_27ECF21A8);
  sub_242CE8BC4(sub_242D3DF3C, v20, v8);
  v21 = type metadata accessor for Zone();
  v22 = (*(*(v21 - 8) + 48))(v8, 1, v21) != 1;
  sub_242C6D138(v8, &qword_27ECF31B8);
  sub_242C6D138(v12, &qword_27ECF2F78);
  return v22;
}

uint64_t sub_242D1F31C(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for Zone() + 32) + 96) != 1)
  {
    return 0;
  }

  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242D1F3D0(uint64_t a1)
{
  v94 = a1;
  v97 = type metadata accessor for Zone();
  v91 = *(v97 - 8);
  v2 = MEMORY[0x28223BE20](v97);
  v96 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v98 = &v84 - v5;
  MEMORY[0x28223BE20](v4);
  v92 = &v84 - v6;
  v7 = sub_242F03960();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &unk_242F17930;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v84 - v11;
  v95 = v1;
  v13 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v20 = 0;
  v90 = MEMORY[0x277D84F90];
  v99 = v13;
LABEL_4:
  v21 = v19;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
    v19 = v21;
LABEL_9:
    sub_242CA321C(*(v13 + 48) + *(v93 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v12, &qword_27ECFC780);
    sub_242D1FEA8(v12, v95, v94, &v101);
    v17 &= v17 - 1;
    v22 = v9;
    sub_242C6D138(v12, &qword_27ECFC780);
    v23 = *(&v101 + 1);
    if (*(&v101 + 1))
    {
      v86 = v101;
      v24 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_242C8377C(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v25 = v24[3];
      v90 = v24;
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v30 = v26 + 1;
        v85 = v26;
        v31 = sub_242C8377C((v25 > 1), v26 + 1, 1, v90);
        v27 = v30;
        v26 = v85;
        v9 = v22;
        v90 = v31;
      }

      else
      {
        v9 = v22;
      }

      v28 = v90;
      v90[2] = v27;
      v29 = &v28[2 * v26];
      v29[4] = v86;
      v29[5] = v23;
      v13 = v99;
      goto LABEL_4;
    }

    v21 = v19;
    v13 = v99;
  }

  while (v17);
  while (1)
  {
LABEL_6:
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v21;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  if (!v90[2])
  {
  }

  v19 = v90[5];
  v94 = v90[4];

  v32 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v33 = [v32 standardUserDefaults];
  v34 = sub_242F04F00();
  v35 = [v33 stringForKey_];

  if (!v35)
  {
    v20 = v98;
    if (!v19)
    {
      return swift_bridgeObjectRelease_n();
    }

    goto LABEL_29;
  }

  v36 = sub_242F04F30();
  v38 = v37;

  v20 = v98;
  if (!v19)
  {
    if (!v38)
    {
      return swift_bridgeObjectRelease_n();
    }

    goto LABEL_29;
  }

  if (!v38)
  {
LABEL_29:

LABEL_30:

    v39 = [v32 standardUserDefaults];
    *&v101 = v94;
    *(&v101 + 1) = v19;
    v40 = sub_242F06300();
    v41 = sub_242F04F00();
    [v39 setObject:v40 forKey:v41];

    swift_unknownObjectRelease();
    if (qword_27ECEF0A8 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v42 = sub_242F039A0();
      __swift_project_value_buffer(v42, qword_27ED5D270);

      v43 = v87;
      sub_242F03950();
      v44 = sub_242F03980();
      v45 = sub_242F05780();

      v46 = sub_242F05840();
      v47 = v92;
      v93 = v19;
      if (v46)
      {
        v48 = swift_slowAlloc();
        LODWORD(v90) = v45;
        v49 = v48;
        v50 = swift_slowAlloc();
        v51 = v19;
        v52 = v50;
        v100[0] = v50;
        *v49 = 136315138;
        *&v101 = v94;
        *(&v101 + 1) = v51;
        v53 = sub_242F04F90();
        v55 = sub_242C8FD38(v53, v54, v100);

        *(v49 + 4) = v55;
        v56 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v44, v90, v56, "Setting new active DCA carousel item: ", "%s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v52);
        MEMORY[0x245D287D0](v52, -1, -1);
        MEMORY[0x245D287D0](v49, -1, -1);
      }

      else
      {
      }

      (*(v88 + 8))(v43, v89);
      v57 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
      v58 = v95;
      swift_beginAccess();
      v59 = *(v58 + v57);
      v60 = *(v59 + 16);

      v19 = MEMORY[0x277D84F90];
      if (!v60)
      {
        break;
      }

      v61 = 0;
      v62 = v47 + 96;
      v63 = v91;
      v95 = v47 + 96;
      while (v61 < *(v59 + 16))
      {
        v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v65 = *(v63 + 72);
        sub_242D39B5C(v59 + v64 + v65 * v61, v47, type metadata accessor for Zone);
        if (*(v62 + *(v97 + 32)) == 1)
        {
          sub_242D39C68(v47, v96, type metadata accessor for Zone);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_242E3BF10(0, *(v19 + 16) + 1, 1);
            v63 = v91;
            v19 = v101;
          }

          v68 = *(v19 + 16);
          v67 = *(v19 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_242E3BF10(v67 > 1, v68 + 1, 1);
            v63 = v91;
            v19 = v101;
          }

          *(v19 + 16) = v68 + 1;
          sub_242D39C68(v96, v19 + v64 + v68 * v65, type metadata accessor for Zone);
          v47 = v92;
          v62 = v95;
        }

        else
        {
          sub_242D39AFC(v47, type metadata accessor for Zone);
        }

        ++v61;
        v20 = v98;
        v13 = v99;
        if (v60 == v61)
        {
          goto LABEL_47;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      swift_once();
    }

    v63 = v91;
LABEL_47:

    v107 = MEMORY[0x277D84F90];
    v69 = *(v19 + 16);
    if (v69)
    {
      v70 = v19 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v71 = MEMORY[0x277D84F90];
      v72 = *(v63 + 72);
      do
      {
        sub_242D39B5C(v70, v20, type metadata accessor for Zone);
        if (*(v13 + 16) && (v73 = sub_242CE5568(v20), (v74 & 1) != 0))
        {
          v75 = (*(v13 + 56) + 112 * v73);
          v77 = v75[1];
          v76 = v75[2];
          v101 = *v75;
          v102 = v77;
          v103 = v76;
          v78 = v75[3];
          v79 = v75[4];
          v80 = v75[5];
          *(v106 + 9) = *(v75 + 89);
          v105 = v79;
          v106[0] = v80;
          v104 = v78;
          sub_242CA321C(&v101, v100, &qword_27ECF21A8);
          sub_242D39AFC(v20, type metadata accessor for Zone);
          v81 = sub_242D1162C(*(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), *&v106[0], *(&v106[0] + 1), *&v106[1], BYTE8(v106[1]));
          MEMORY[0x245D268D0](v81);
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_242F05330();
            v20 = v98;
          }

          sub_242F05370();
          v71 = v107;
        }

        else
        {
          sub_242D39AFC(v20, type metadata accessor for Zone);
        }

        v70 += v72;
        --v69;
      }

      while (v69);
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    *&v101 = v94;
    *(&v101 + 1) = v93;
    sub_242D392D8(&v101, v71, 0);
  }

  if (v94 != v36 || v38 != v19)
  {
    v83 = sub_242F06110();

    if (v83)
    {
      return swift_bridgeObjectRelease_n();
    }

    goto LABEL_30;
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_242D1FEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a3;
  v50 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_242F03720();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v42 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Zone();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v23 = *(a2 + v22);
  v48 = a1;

  sub_242CE8BC4(sub_242D3DE70, v23, v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = &qword_27ECF31B8;
    v25 = v17;
LABEL_3:
    result = sub_242C6D138(v25, v24);
LABEL_10:
    v33 = v50;
    *v50 = 0;
    v33[1] = 0;
    return result;
  }

  sub_242D39C68(v17, v21, type metadata accessor for Zone);
  v27 = sub_242F036F0();
  if (!*(v47 + 16))
  {

    goto LABEL_9;
  }

  sub_242CE519C(v27, v28);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_9:
    result = sub_242D39AFC(v21, type metadata accessor for Zone);
    goto LABEL_10;
  }

  sub_242F036E0();

  v32 = v45;
  v31 = v46;
  if ((*(v45 + 48))(v12, 1, v46) == 1)
  {
    sub_242D39AFC(v21, type metadata accessor for Zone);
    v24 = &qword_27ECF31B0;
LABEL_13:
    v25 = v12;
    goto LABEL_3;
  }

  v34 = v42;
  (*(v32 + 32))(v42, v12, v31);
  v35 = v43;
  v36 = (*(v32 + 16))(v43, v34, v31);
  MEMORY[0x28223BE20](v36);
  *(&v42 - 2) = v35;
  v12 = v44;
  sub_242CE8B5C(sub_242D3DF1C, v37, v44);
  sub_242C6D138(v35, &qword_27ECF23E8);
  v38 = type metadata accessor for Component();
  if ((*(*(v38 - 8) + 48))(v12, 1, v38) == 1)
  {
    (*(v32 + 8))(v34, v31);
    sub_242D39AFC(v21, type metadata accessor for Zone);
    v24 = &qword_27ECF2730;
    goto LABEL_13;
  }

  Component.stableIdentifier.getter(v49);
  (*(v32 + 8))(v34, v31);
  sub_242D39AFC(v21, type metadata accessor for Zone);
  v39 = v49[0];
  v40 = v49[1];
  result = sub_242D39AFC(v12, type metadata accessor for Component);
  if (!v40)
  {
    goto LABEL_10;
  }

  v41 = v50;
  *v50 = v39;
  v41[1] = v40;
  return result;
}

uint64_t CarouselModel.Direction<>.init(direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v8 = *(v4 - 8);
  v5 = (*(v8 + 48))(a1, 2, v4);
  if (!v5)
  {
    sub_242CF6B3C(a1, a2, &qword_27ECF23E8);
  }

  v6 = *(v8 + 56);

  return v6(a2, v5, 2, v4);
}

uint64_t sub_242D20588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for Zone();
  v66 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v61 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3010);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = (v47 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3018);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (v47 - v17);
  v19 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v49 = v19;
  v20 = *(v3 + v19);
  v21 = *(v20 + 16);
  v63 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
  v68 = (v11 + 56);
  v69 = v21;
  v67 = (v11 + 48);
  v65 = v20;

  v23 = 0;
  v62 = 0;
  v51 = v3;
  v47[1] = a2;
  v48 = v16;
  while (v23 == v69)
  {
    v24 = 1;
    v23 = v69;
LABEL_8:
    (*v68)(v16, v24, 1, v10);
    sub_242CF6B3C(v16, v18, &qword_27ECF3018);
    if ((*v67)(v18, 1, v10) == 1)
    {
    }

    v28 = *v18;
    sub_242D39C68(v18 + *(v10 + 48), v9, type metadata accessor for Zone);
    swift_getAtKeyPath();
    if (v71 == 1 && (v29 = *(v3 + v63), *(v29 + 16)) && (v30 = sub_242CE5568(v9), (v31 & 1) != 0))
    {
      v32 = (*(v29 + 56) + 112 * v30);
      v34 = v32[1];
      v33 = v32[2];
      v71 = *v32;
      v72 = v34;
      v73 = v33;
      v35 = *(v32 + 89);
      v37 = v32[4];
      v36 = v32[5];
      v74 = v32[3];
      *v75 = v37;
      *&v75[16] = v36;
      *&v75[25] = v35;
      v38 = v71;
      v59 = v72;
      v60 = *(&v71 + 1);
      v58 = *(&v72 + 1);
      v56 = *(&v73 + 1);
      v57 = v73;
      v54 = *(&v74 + 1);
      v55 = v74;
      v52 = *&v75[8];
      v53 = v37;
      v39 = *&v75[24];
      v40 = v35 >> 56;
      v41 = HIBYTE(v35);
      sub_242CA321C(&v71, &v70, &qword_27ECF21A8);
      sub_242D1162C(v60, v59, v58, v57, v56, v55, v54, v53, v52, *(&v52 + 1), v39, v40, v41);
      sub_242D39B5C(v9, v61, type metadata accessor for Zone);

      v42 = v62;
      sub_242D3922C(v50);
      v62 = v42;
      v3 = v51;
      v60 = v38;

      v43 = v49;
      swift_beginAccess();
      v44 = *(v3 + v43);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v43) = v44;
      if (result)
      {
        v16 = v48;
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_242D37E6C(v44);
        v44 = result;
        *(v3 + v43) = result;
        v16 = v48;
        if ((v28 & 0x8000000000000000) != 0)
        {
LABEL_17:
          __break(1u);
        }
      }

      if (v28 >= v44[2])
      {
        goto LABEL_21;
      }

      v45 = v44 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v28;
      v46 = v61;
      sub_242D39CD0(v61, v45);
      *(v3 + v43) = v44;
      swift_endAccess();

      sub_242D39AFC(v9, type metadata accessor for Zone);
      result = sub_242D39AFC(v46, type metadata accessor for Zone);
    }

    else
    {
      result = sub_242D39AFC(v9, type metadata accessor for Zone);
    }
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v23 >= *(v65 + 16))
    {
      goto LABEL_20;
    }

    v25 = v65 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v23;
    v26 = *(v10 + 48);
    v27 = v64;
    *v64 = v23;
    sub_242D39B5C(v25, v27 + v26, type metadata accessor for Zone);
    sub_242CF6B3C(v27, v16, &qword_27ECF3010);
    v24 = 0;
    ++v23;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_242D20B28(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v50 = v2;
  v51 = v3;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v38[-v6];
  v48 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v48);
  v45 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v38[-v9];
  v68 = type metadata accessor for Component();
  v49 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68);
  v52 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v38[-v15];
  v17 = *v4;
  v18 = *(v4 + 8);
  v19 = *(v4 + 16);
  v20 = *(v4 + 24);
  v21 = *(v4 + 32);
  v62[0] = *v4;
  v62[1] = v18;
  v62[2] = v19;
  v62[3] = v20;
  LOBYTE(v62[4]) = v21;
  Instrument.WidgetInfo.instrumentKind.getter(v66);
  memcpy(v67, v66, 0x238uLL);
  v22 = sub_242D3DE10(v67);
  v47 = v14;
  if (v22 != 1)
  {
    v39 = v21;
    v40 = v20;
    v41 = v19;
    v42 = v18;
    v43 = v17;
    v23 = *(v50 + *(v48 + 28));
    v24 = *(v23 + 16);

    v25 = v49;
    v26 = v44;
    v53 = v24;
    if (v24)
    {
      v27 = 0;
      while (1)
      {
        if (v27 >= *(v23 + 16))
        {
          __break(1u);
LABEL_28:
          v25 = sub_242C83620(0, *(v25 + 16) + 1, 1, v25);
          v31 = v26;
          *(v26 + v14) = v25;
          goto LABEL_22;
        }

        sub_242D39B5C(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v27, v16, type metadata accessor for Component);
        v14 = *&v16[*(v68 + 36)];
        if (!*(v14 + 16))
        {
          goto LABEL_11;
        }

        v28 = type metadata accessor for Slot();
        sub_242CA321C(v14 + *(v28 + 36) + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)), v26, &qword_27ECF0B08);
        v14 = type metadata accessor for Instrument();
        if ((*(*(v14 - 8) + 48))(v26, 1, v14) == 1)
        {
          break;
        }

        memcpy(v60, (v26 + *(v14 + 20)), 0x238uLL);
        sub_242CF6BA4(v60, v62);
        sub_242D39AFC(v26, type metadata accessor for Instrument);
        memcpy(v62, v60, 0x238uLL);
        nullsub_2(v62);
        memcpy(v65, v62, sizeof(v65));
LABEL_13:
        memcpy(v63, v67, sizeof(v63));
        nullsub_2(v63);
        memcpy(v62, v65, 0x238uLL);
        memcpy(&v62[71], v63, 0x238uLL);
        memcpy(v64, v65, sizeof(v64));
        if (sub_242D3DE10(v64) == 1)
        {
          memcpy(v60, &v62[71], 0x238uLL);
          if (sub_242D3DE10(v60) == 1)
          {
            memcpy(v61, v62, sizeof(v61));
            sub_242CF6BA4(v67, v59);
            sub_242C6D138(v61, &qword_27ECF3198);
            sub_242D39AFC(v16, type metadata accessor for Component);

            return sub_242C6D138(v66, &qword_27ECF3198);
          }

          sub_242CF6BA4(v67, v61);
          goto LABEL_5;
        }

        memcpy(v61, v62, sizeof(v61));
        memcpy(v59, v62, sizeof(v59));
        memcpy(v60, &v62[71], 0x238uLL);
        if (sub_242D3DE10(v60) == 1)
        {
          memcpy(v58, v62, sizeof(v58));
          v14 = &qword_27ECF3198;
          sub_242CA321C(v66, v57, &qword_27ECF3198);
          sub_242CA321C(v61, v57, &qword_27ECF3198);
          sub_242CF6C60(v58);
LABEL_5:
          memcpy(v60, v62, sizeof(v60));
          sub_242C6D138(v60, &qword_27ECF3190);
          sub_242D39AFC(v16, type metadata accessor for Component);
          goto LABEL_6;
        }

        memcpy(v55, &v62[71], sizeof(v55));
        sub_242CA321C(v66, v54, &qword_27ECF3198);
        sub_242CA321C(v61, v54, &qword_27ECF3198);
        v14 = _s14CarPlayAssetUI10InstrumentV4KindO2eeoiySbAE_AEtFZ_0(v59);
        memcpy(v56, v55, sizeof(v56));
        sub_242CF6C60(v56);
        memcpy(v57, v59, sizeof(v57));
        sub_242CF6C60(v57);
        memcpy(v58, v62, sizeof(v58));
        sub_242C6D138(v58, &qword_27ECF3198);
        sub_242D39AFC(v16, type metadata accessor for Component);
        if (v14)
        {

          return sub_242C6D138(v66, &qword_27ECF3198);
        }

LABEL_6:
        if (v53 == ++v27)
        {
          goto LABEL_19;
        }
      }

      sub_242C6D138(v26, &qword_27ECF0B08);
LABEL_11:
      sub_242CFB3C4(v65);
      goto LABEL_13;
    }

LABEL_19:

    sub_242C6D138(v66, &qword_27ECF3198);
    v14 = v47;
    v18 = v42;
    v17 = v43;
    v20 = v40;
    v19 = v41;
    LOBYTE(v21) = v39;
  }

  v62[0] = v17;
  v62[1] = v18;
  v62[2] = v19;
  v62[3] = v20;
  LOBYTE(v62[4]) = v21;
  v26 = v50;
  v29 = v45;
  sub_242D39B5C(v50, v45, type metadata accessor for Zone);
  sub_242D1BF1C(v29, v14);
  sub_242D39AFC(v29, type metadata accessor for Zone);
  sub_242D39B5C(v14, v52, type metadata accessor for Component);
  v14 = *(v48 + 28);
  v25 = *(v26 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v14) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_28;
  }

  v31 = v26;
LABEL_22:
  v32 = v49;
  v34 = *(v25 + 16);
  v33 = *(v25 + 24);
  if (v34 >= v33 >> 1)
  {
    v25 = sub_242C83620(v33 > 1, v34 + 1, 1, v25);
    *(v31 + v14) = v25;
  }

  *(v25 + 16) = v34 + 1;
  sub_242D39C68(v52, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v34, type metadata accessor for Component);
  v35 = v46;
  (*(v32 + 56))(v46, 1, 1, v68);
  v36 = v47;
  sub_242D2ECD4(v47, v35);
  sub_242C6D138(v35, &qword_27ECF2730);
  return sub_242D39AFC(v36, type metadata accessor for Component);
}

uint64_t sub_242D2150C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = &v99 - v7;
  v102 = type metadata accessor for Component();
  v117 = *(v102 - 8);
  v8 = MEMORY[0x28223BE20](v102);
  v109 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v119 = &v99 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v124 = &v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v99 - v15;
  MEMORY[0x28223BE20](v14);
  v126 = &v99 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = &v99 - v18;
  v106 = type metadata accessor for Zone();
  v19 = *(v106 - 8);
  v20 = MEMORY[0x28223BE20](v106);
  v120 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v99 - v23;
  MEMORY[0x28223BE20](v22);
  v133 = &v99 - v24;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3010);
  v25 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v122 = (&v99 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3018);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v125 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v28);
  v131 = &v99 - v31;
  v33 = *a1;
  v32 = *(a1 + 8);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_242F09510;
    v35 = qword_27ECEEF60;

    if (v35 != -1)
    {
LABEL_87:
      swift_once();
    }

    swift_beginAccess();
    v36 = byte_27ECF1000;
    v37 = dword_27ECF1004;
    if (qword_27ECEEED8 != -1)
    {
      swift_once();
    }

    v137[0] = v36;
    *&v137[4] = v37;
    *&v137[8] = xmmword_27ECF0E90;
    *&v137[24] = xmmword_27ECF0EA0;
    *&v137[40] = unk_27ECF0EB0;
    v138 = xmmword_27ECF0E90;
    v139 = xmmword_27ECF0EA0;
    *&v140 = unk_27ECF0EB0;
    sub_242CB5A7C(v137);
    v38 = v142;
    *(v34 + 128) = v141;
    *(v34 + 144) = v38;
    *(v34 + 160) = v143;
    v39 = v138;
    *(v34 + 64) = *&v137[32];
    *(v34 + 80) = v39;
    v40 = v140;
    *(v34 + 96) = v139;
    *(v34 + 112) = v40;
    v41 = *&v137[16];
    *(v34 + 32) = *v137;
    *(v34 + 48) = v41;
    VisibilityConfiguration.init(arrayLiteral:)(v34, v150);
    v149[0] = v33;
    v149[1] = v32;
    v149[2] = v150[0];
    sub_242CFB420(v149);
    memcpy(v150, v149, 0x238uLL);
    v42 = v125;
  }

  else
  {
    v43 = *(a1 + 16);
    v44 = *(a1 + 24);
    v149[0] = *a1;
    v149[1] = v32;
    v149[2] = v43;
    v149[3] = v44;
    sub_242CFB44C(v149);
    memcpy(v150, v149, 0x238uLL);

    v42 = v125;
  }

  memcpy(v149, v150, sizeof(v149));
  v45 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v116 = v45;
  v46 = *(v3 + v45);
  v47 = *(v46 + 16);
  v121 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
  v129 = (v25 + 56);
  v130 = v47;
  v128 = (v25 + 48);
  v101 = (v117 + 56);
  v123 = v46;

  v48 = 0;
  v108 = 0;
  v32 = v133;
  v34 = v110;
  v114 = v3;
  v105 = a2;
  v111 = v19;
  while (1)
  {
    if (v48 == v130)
    {
      v49 = 1;
      v135 = v130;
    }

    else
    {
      if (v48 >= *(v123 + 16))
      {
        goto LABEL_76;
      }

      v50 = v48 + 1;
      v51 = v123 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v48;
      v52 = *(v34 + 48);
      v53 = v122;
      *v122 = v48;
      sub_242D39B5C(v51, v53 + v52, type metadata accessor for Zone);
      v54 = v53;
      v42 = v125;
      sub_242CF6B3C(v54, v125, &qword_27ECF3010);
      v49 = 0;
      v135 = v50;
    }

    (*v129)(v42, v49, 1, v34);
    v25 = v131;
    sub_242CF6B3C(v42, v131, &qword_27ECF3018);
    if ((*v128)(v25, 1, v34) == 1)
    {
      break;
    }

    v132 = *v25;
    sub_242D39C68(v25 + *(v34 + 48), v32, type metadata accessor for Zone);
    swift_getAtKeyPath();
    if (v137[0] == 1 && (v25 = *(v3 + v121), *(v25 + 16)) && (v55 = sub_242CE5568(v32), (v56 & 1) != 0))
    {
      v57 = (*(v25 + 56) + 112 * v55);
      v59 = v57[1];
      v58 = v57[2];
      v144 = *v57;
      v145 = v59;
      v146 = v58;
      v60 = *(v57 + 89);
      v62 = v57[4];
      v61 = v57[5];
      v147 = v57[3];
      v148[0] = v62;
      v148[1] = v61;
      *(&v148[1] + 9) = v60;
      v136 = *(&v144 + 1);
      v118 = v144;
      v63 = *(&v145 + 1);
      v134 = v145;
      v65 = *(&v146 + 1);
      v64 = v146;
      v66 = *(&v147 + 1);
      v19 = v147;
      v127 = *(v148 + 8);
      v67 = v62;
      v68 = *(&v148[1] + 1);
      v69 = v60 >> 56;
      v70 = HIBYTE(v60);
      sub_242CA321C(&v144, v137, &qword_27ECF21A8);
      v71 = v65;
      v3 = v114;
      sub_242D1162C(v136, v134, v63, v64, v71, v19, v66, v67, v127, *(&v127 + 1), v68, v69, v70);
      swift_getKeyPath();
      swift_getKeyPath();
      v72 = v107;
      sub_242F03A80();

      v25 = type metadata accessor for Layout();
      if ((*(*(v25 - 8) + 48))(v72, 1, v25))
      {
        sub_242C6D138(v72, &qword_27ECF2F98);
      }

      else
      {
        v32 = *(v72 + *(v25 + 24));

        sub_242C6D138(v72, &qword_27ECF2F98);
        v34 = 0;
        v73 = *(v32 + 16);
        v33 = v111;
        v74 = v100;
        a2 = &qword_27ECF2260;
        while (v73 != v34)
        {
          if (v34 >= *(v32 + 16))
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          sub_242D39B5C(v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v34++, v74, type metadata accessor for Zone);
          sub_242F03720();
          sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
          v25 = sub_242F04EE0();
          sub_242D39AFC(v74, type metadata accessor for Zone);
          if (v25)
          {

            v113 = 1;
            goto LABEL_27;
          }
        }
      }

      v113 = 0;
LABEL_27:
      v75 = v120;
      sub_242D39B5C(v133, v120, type metadata accessor for Zone);
      v112 = *(v106 + 28);
      v76 = *(v75 + v112);
      v33 = v76[2];

      sub_242CF6BA4(v150, v137);
      v34 = v117;
      v32 = v115;
      v42 = v125;
      if (v33)
      {
        a2 = 0;
        v134 = v76;
        v136 = v33;
        do
        {
          v25 = a2;
          while (1)
          {
            if (v25 >= v33)
            {
              __break(1u);
LABEL_73:
              __break(1u);
              goto LABEL_74;
            }

            v33 = (*(v34 + 80) + 32) & ~*(v34 + 80);
            v19 = v76;
            v77 = v76 + v33;
            v78 = *(v34 + 72);
            sub_242D39B5C(&v77[v78 * v25], v32, type metadata accessor for Component);
            a2 = (v25 + 1);
            if (__OFADD__(v25, 1))
            {
              goto LABEL_73;
            }

            if (sub_242D224F0(v32, v149))
            {
              break;
            }

            sub_242D39AFC(v32, type metadata accessor for Component);
            ++v25;
            v33 = v136;
            v76 = v19;
            if (a2 == v136)
            {
              goto LABEL_65;
            }
          }

          v79 = v126;
          v80 = sub_242D39C68(v32, v126, type metadata accessor for Component);
          v104 = &v99;
          MEMORY[0x28223BE20](v80);
          v98[2] = v79;
          v25 = v134;
          v34 = v108;
          v81 = sub_242CDAC68(sub_242D3E1FC, v98, v134);
          v108 = v34;
          if (v82)
          {
            v32 = *(v25 + 16);
            v83 = v32;
            v34 = v120;
          }

          else
          {
            v32 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_86;
            }

            *&v127 = v81;
            v3 = (v25 + 16);
            v84 = *(v25 + 16);
            if (v32 != v84)
            {
              v34 = v33 + v32 * v78;
              while (v32 < v84)
              {
                v134 = v25;
                v92 = v124;
                sub_242D39B5C(v25 + v34, v124, type metadata accessor for Component);
                sub_242F03720();
                sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
                v25 = sub_242F04EE0();
                sub_242D39AFC(v92, type metadata accessor for Component);
                if (v25)
                {
                  v25 = v134;
                }

                else
                {
                  v93 = v127;
                  if (v32 == v127)
                  {
                    v25 = v134;
                  }

                  else
                  {
                    v94 = v134;
                    if ((v127 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_77;
                    }

                    v3 = *v3;
                    if (v127 >= v3)
                    {
                      goto LABEL_78;
                    }

                    v25 = v127 * v78;
                    sub_242D39B5C(v134 + v33 + v127 * v78, v119, type metadata accessor for Component);
                    if (v32 >= v3)
                    {
                      goto LABEL_79;
                    }

                    v3 = v109;
                    sub_242D39B5C(v94 + v34, v109, type metadata accessor for Component);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v134 = sub_242D37E58(v134);
                    }

                    v95 = v134 + v33 + v25;
                    v25 = v134;
                    sub_242D3A00C(v3, v95);
                    if (v32 >= *(v25 + 16))
                    {
                      goto LABEL_80;
                    }

                    sub_242D3A00C(v119, v25 + v34);
                    v93 = v127;
                  }

                  *&v127 = v93 + 1;
                }

                ++v32;
                v3 = (v25 + 16);
                v84 = *(v25 + 16);
                v34 += v78;
                if (v32 == v84)
                {
                  goto LABEL_39;
                }
              }

LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_39:
            v83 = v127;
            if (v32 < v127)
            {
              goto LABEL_83;
            }

            v34 = v120;
            if ((v127 & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }
          }

          v3 = v25;
          v85 = v83;
          v86 = v83 - v32;
          v25 = v32 + v86;
          if (__OFADD__(v32, v86))
          {
            goto LABEL_85;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v112;
          *(v34 + v112) = v3;
          if (!isUniquelyReferenced_nonNull_native || v25 > v3[3] >> 1)
          {
            if (v32 <= v25)
            {
              v89 = v25;
            }

            else
            {
              v89 = v32;
            }

            v3 = sub_242C83620(isUniquelyReferenced_nonNull_native, v89, 1, v3);
            *(v34 + v88) = v3;
          }

          v76 = v19;
          sub_242D39EC4(v85, v32, 0);
          v134 = v3;
          *(v34 + v88) = v3;
          v90 = v103;
          (*v101)(v103, 1, 1, v102);
          v91 = v126;
          sub_242D30AAC(v126, v90, v113);
          sub_242C6D138(v90, &qword_27ECF2730);
          sub_242D39AFC(v91, type metadata accessor for Component);
          v33 = v136;
          v34 = v117;
          v3 = v114;
          v32 = v115;
          v42 = v125;
        }

        while (a2 != v136);
      }

LABEL_65:

      sub_242CF6C60(v150);
      v96 = v116;
      swift_beginAccess();
      v25 = *(v3 + v96);
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v96) = v25;
      if ((v97 & 1) == 0)
      {
        v25 = sub_242D37E6C(v25);
        *(v3 + v116) = v25;
      }

      a2 = v105;
      v19 = v111;
      v34 = v120;
      v32 = v133;
      if ((v132 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (v132 >= *(v25 + 16))
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      sub_242D39CD0(v120, v25 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v132);
      *(v3 + v116) = v25;
      swift_endAccess();

      v25 = type metadata accessor for Zone;
      sub_242D39AFC(v32, type metadata accessor for Zone);
      sub_242D39AFC(v34, type metadata accessor for Zone);
      v34 = v110;
      v48 = v135;
    }

    else
    {
      sub_242D39AFC(v32, type metadata accessor for Zone);
      v48 = v135;
    }
  }

  return sub_242CF6C60(v150);
}

uint64_t sub_242D224F0(uint64_t a1, const void *a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Slot();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Component();
  v11 = *(a1 + *(result + 36));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v6 + 36);
    v14 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = MEMORY[0x277D84F90];
    v16 = *(v7 + 72);
    do
    {
      sub_242D39B5C(v14, v9, type metadata accessor for Slot);
      v17 = type metadata accessor for Instrument();
      if ((*(*(v17 - 8) + 48))(&v9[v13], 1, v17) == 1)
      {
        result = sub_242D39AFC(v9, type metadata accessor for Slot);
      }

      else
      {
        sub_242CA321C(&v9[v13], v5, &qword_27ECF0B08);
        memcpy(v28, &v5[*(v17 + 20)], 0x238uLL);
        sub_242CF6BA4(v28, v27);
        sub_242D39AFC(v5, type metadata accessor for Instrument);
        sub_242D39AFC(v9, type metadata accessor for Slot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_242C838D8(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_242C838D8((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        result = memcpy(&v15[568 * v19 + 32], v28, 0x238uLL);
      }

      v14 += v16;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v20 = *(v15 + 2);
  v21 = v24;
  if (v20)
  {
    v22 = 0;
    v23 = 32;
    while (v22 < *(v15 + 2))
    {
      memcpy(v28, &v15[v23], 0x238uLL);
      memcpy(v27, v28, sizeof(v27));
      memcpy(v26, v21, sizeof(v26));
      sub_242CF6BA4(v28, &v25);
      if (_s14CarPlayAssetUI10InstrumentV4KindO2eeoiySbAE_AEtFZ_0(v27))
      {

        sub_242CF6C60(v28);
        return 1;
      }

      ++v22;
      result = sub_242CF6C60(v28);
      v23 += 568;
      if (v20 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_242D22874()
{
  v1 = v0;
  v2 = type metadata accessor for Zone();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v33 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Layout();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  sub_242F03A80();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_242C6D138(v12, &qword_27ECF2F98);
  }

  result = sub_242D39C68(v12, v16, type metadata accessor for Layout);
  v18 = *&v16[*(v13 + 24)];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      sub_242D39B5C(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v6, type metadata accessor for Zone);
      if (v6[*(v2 + 32) + 96] < 2u)
      {
        break;
      }

      ++v20;
      result = sub_242D39AFC(v6, type metadata accessor for Zone);
      if (v19 == v20)
      {
        return sub_242D39AFC(v16, type metadata accessor for Layout);
      }
    }

    v21 = v33;
    sub_242D39C68(v6, v33, type metadata accessor for Zone);
    v22 = v35;
    sub_242D39C68(v21, v35, type metadata accessor for Zone);
    v23 = *(v34 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
    if (*(v23 + 16))
    {
      v24 = sub_242CE5568(v22);
      if (v25)
      {
        v26 = (*(v23 + 56) + 112 * v24);
        v28 = v26[1];
        v27 = v26[2];
        v37[0] = *v26;
        v37[1] = v28;
        v37[2] = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[5];
        *&v38[9] = *(v26 + 89);
        v37[4] = v30;
        *v38 = v31;
        v37[3] = v29;
        sub_242CA321C(v37, v36, &qword_27ECF21A8);
        sub_242CF3AF4(v37 + 8);
        sub_242D33B3C(1);
      }
    }

    sub_242D39AFC(v22, type metadata accessor for Zone);
  }

  return sub_242D39AFC(v16, type metadata accessor for Layout);
}

uint64_t sub_242D22CA0()
{
  v1 = v0;
  v2 = type metadata accessor for Zone();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v33 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Layout();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  sub_242F03A80();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_242C6D138(v12, &qword_27ECF2F98);
  }

  result = sub_242D39C68(v12, v16, type metadata accessor for Layout);
  v18 = *&v16[*(v13 + 24)];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      sub_242D39B5C(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v6, type metadata accessor for Zone);
      if (v6[*(v2 + 32) + 96] < 2u)
      {
        break;
      }

      ++v20;
      result = sub_242D39AFC(v6, type metadata accessor for Zone);
      if (v19 == v20)
      {
        return sub_242D39AFC(v16, type metadata accessor for Layout);
      }
    }

    v21 = v33;
    sub_242D39C68(v6, v33, type metadata accessor for Zone);
    v22 = v35;
    sub_242D39C68(v21, v35, type metadata accessor for Zone);
    v23 = *(v34 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
    if (*(v23 + 16))
    {
      v24 = sub_242CE5568(v22);
      if (v25)
      {
        v26 = (*(v23 + 56) + 112 * v24);
        v28 = v26[1];
        v27 = v26[2];
        v37[0] = *v26;
        v37[1] = v28;
        v37[2] = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[5];
        *&v38[9] = *(v26 + 89);
        v37[4] = v30;
        *v38 = v31;
        v37[3] = v29;
        sub_242CA321C(v37, v36, &qword_27ECF21A8);
        sub_242CF3AF4(v37 + 8);
        sub_242D347D8(0.0);
      }
    }

    sub_242D39AFC(v22, type metadata accessor for Zone);
  }

  return sub_242D39AFC(v16, type metadata accessor for Layout);
}

uint64_t ClusterTransitionCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__focusOrder;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_242C6D138(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone1RequestContent, &qword_27ECF2EC8);
  sub_242C6D138(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone2RequestContent, &qword_27ECF2EC8);
  v5 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningRequestContent;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContentTransitions;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EE8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v7(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningComponent, v6);
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__componentTransitions;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F00);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeLayout;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F10);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v7(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningLayout, v6);
  v14 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__layoutTransition;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F28);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v7(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningAppearance, v6);
  v16 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeAppearance;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F40);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__appearanceTransition;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F50);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  sub_242C655DC(*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear));
  sub_242C655DC(*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear));
  sub_242C655DC(*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear));

  return v0;
}

uint64_t ClusterTransitionCoordinator.__deallocating_deinit()
{
  ClusterTransitionCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_242D23580@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClusterTransitionCoordinator(0);
  result = sub_242F03A10();
  *a1 = result;
  return result;
}

uint64_t ClusterTransitionCoordinator.updateRequestContent(with:for:)(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  LOBYTE(a2) = *a2;
  sub_242CA321C(a1, &v8 - v5, &qword_27ECF2EC8);
  if (a2)
  {
    return sub_242D144C0(v6);
  }

  else
  {
    return sub_242D14384(v6);
  }
}

uint64_t sub_242D23678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for Component();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  if (*(a2 + 56) || (v19 = *(a2 + 48)) == 0)
  {
    v49 = *(v17 + 56);

    return v49(a3, 1, 1, v10);
  }

  v20 = *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (!*(v20 + 16))
  {
    return (*(v17 + 56))(a3, 1, 1, v10);
  }

  v62 = &v50 - v18;
  v63 = v17;
  v61 = *(a2 + 17);
  v21 = *(a2 + 40);

  v22 = sub_242CE5568(a1);
  if ((v23 & 1) == 0)
  {

LABEL_16:
    v17 = v63;
    return (*(v17 + 56))(a3, 1, 1, v10);
  }

  v50 = v9;
  v51 = v21;
  v24 = (*(v20 + 56) + 112 * v22);
  v26 = v24[1];
  v25 = v24[2];
  v66 = *v24;
  v67 = v26;
  v68 = v25;
  v27 = *(v24 + 89);
  v29 = v24[4];
  v28 = v24[5];
  v69 = v24[3];
  *v70 = v29;
  *&v70[16] = v28;
  *&v70[25] = v27;
  v59 = v66;
  v60 = a3;
  v57 = v67;
  v58 = *(&v66 + 1);
  v56 = *(&v67 + 1);
  v30 = *(&v68 + 1);
  v54 = v69;
  v55 = v68;
  v53 = *(&v69 + 1);
  v52 = *&v70[8];
  v31 = v29;
  v32 = *&v70[24];
  v33 = v27 >> 56;
  v34 = HIBYTE(v27);
  sub_242CA321C(&v66, v65, &qword_27ECF21A8);
  v35 = v30;
  v36 = v59;
  sub_242D1162C(v58, v57, v56, v55, v35, v54, v53, v31, v52, *(&v52 + 1), v32, v33, v34);
  v37 = *(*v36 + 144);
  swift_beginAccess();
  v65[0] = *(v36 + v37);
  v65[1] = sub_242D29B10;
  v65[2] = 0;
  v65[3] = sub_242CF33D8;
  v65[4] = 0;
  v65[5] = sub_242CF3448;
  v65[6] = 0;
  v64[0] = MEMORY[0x277D84F98];

  sub_242CF2908(v65, 1, v64);
  v38 = v64[0];
  if (!*(v64[0] + 16))
  {

LABEL_15:
    a3 = v60;

    goto LABEL_16;
  }

  v39 = sub_242CE519C(v51, v19);
  v41 = v40;

  if ((v41 & 1) == 0)
  {

    goto LABEL_15;
  }

  sub_242D39B5C(*(v38 + 56) + *(v63 + 72) * v39, v16, type metadata accessor for Component);

  v42 = v62;
  v43 = sub_242D39C68(v16, v62, type metadata accessor for Component);
  MEMORY[0x28223BE20](v43);
  sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
  sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_242F03A80();

  v45 = v50;
  sub_242CA321C(v13, v50, &qword_27ECF23E8);
  sub_242D39AFC(v13, type metadata accessor for Component);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
  v46 = sub_242F04EE0();

  sub_242C6D138(v45, &qword_27ECF23E8);
  if (v46)
  {
    v47 = v60;
    sub_242D39C68(v42, v60, type metadata accessor for Component);
    return (*(v63 + 56))(v47, 0, 1, v10);
  }

  a3 = v60;
  if (v61)
  {
    sub_242D39AFC(v62, type metadata accessor for Component);
    goto LABEL_16;
  }

  sub_242D39C68(v62, v60, type metadata accessor for Component);
  return (*(v63 + 56))(a3, 0, 1, v10);
}

uint64_t sub_242D23D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v43 = a4;
  v45 = a3;
  v8 = type metadata accessor for ClusterTransitionCoordinator.ListDirection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_242F03960();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Zone();
  MEMORY[0x28223BE20](v42);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  if (qword_27ECEF0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_242F039A0();
  __swift_project_value_buffer(v22, qword_27ED5D270);
  sub_242CA321C(a1, v21, &qword_27ECF2EC8);
  sub_242D39B5C(a2, v15, type metadata accessor for Zone);
  sub_242F03950();
  v23 = sub_242F03980();
  v41 = sub_242F05780();
  if ((sub_242F05840() & 1) == 0)
  {

    (*(v11 + 8))(v13, v44);
    sub_242D39AFC(v15, type metadata accessor for Zone);
    sub_242C6D138(v21, &qword_27ECF2EC8);
    goto LABEL_18;
  }

  v38 = v10;
  v39 = a2;
  v40 = v5;
  v5 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v46[0] = v24;
  *v5 = 136315394;
  sub_242CA321C(v21, v19, &qword_27ECF2EC8);
  v25 = type metadata accessor for RequestContentModel();
  if ((*(*(v25 - 8) + 48))(v19, 1, v25) == 1)
  {
    sub_242C6D138(v19, &qword_27ECF2EC8);
LABEL_8:

    v26 = 0xD000000000000015;
    v28 = 0x8000000242F5A1F0;
    goto LABEL_9;
  }

  v26 = RequestContentModel.displayName.getter();
  v28 = v27;
  sub_242D39AFC(v19, type metadata accessor for RequestContentModel);
  if (!v28)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_242C6D138(v21, &qword_27ECF2EC8);
  v29 = sub_242C8FD38(v26, v28, v46);

  *(v5 + 4) = v29;
  *(v5 + 12) = 2080;
  v30 = v15[*(v42 + 40)];
  v31 = 0x31656E6F7ALL;
  if (v30)
  {
    v31 = 0x32656E6F7ALL;
  }

  if (v30 == 2)
  {
    v32 = 0xD000000000000015;
  }

  else
  {
    v32 = v31;
  }

  if (v30 == 2)
  {
    v33 = 0x8000000242F5A1F0;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  sub_242D39AFC(v15, type metadata accessor for Zone);
  v34 = sub_242C8FD38(v32, v33, v46);

  *(v5 + 14) = v34;
  v35 = sub_242F03940();
  _os_signpost_emit_with_name_impl(&dword_242C53000, v23, v41, v35, "RequestContent transition - rotation: ", "newContent: %s, ZoneRegion: %s", v5, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245D287D0](v24, -1, -1);
  MEMORY[0x245D287D0](v5, -1, -1);

  (*(v11 + 8))(v13, v44);
  LOBYTE(v5) = v40;
  v10 = v38;
  a2 = v39;
LABEL_18:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_242CA321C(v43, v10, &qword_27ECF23E8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
    (*(*(v37 - 8) + 56))(v10, 0, 2, v37);
    ClusterTransitionCoordinator.rotateCarousel(zone:direction:dismissRequestContent:animated:)(a2, v10, 0, v5 & 1);

    return sub_242D39AFC(v10, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  }

  return result;
}

uint64_t ClusterTransitionCoordinator.rotateCarousel(zone:direction:dismissRequestContent:animated:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v267 = a4;
  v260 = a3;
  v290 = a2;
  v6 = sub_242F03960();
  v274 = *(v6 - 8);
  v275 = v6;
  MEMORY[0x28223BE20](v6);
  v279 = v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for RequestContentModel();
  v269 = *(v271 - 8);
  v8 = MEMORY[0x28223BE20](v271);
  v259 = v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v261 = v249 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v263 = v249 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v262 = (v249 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v268 = v249 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v270 = v249 - v19;
  MEMORY[0x28223BE20](v18);
  v272 = v249 - v20;
  v286 = sub_242F03720();
  v282 = *(v286 - 8);
  MEMORY[0x28223BE20](v286);
  v278 = v249 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v22 - 8);
  v277 = v249 - v23;
  v24 = type metadata accessor for ClusterTransitionCoordinator.ListDirection(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v265 = v249 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v289 = (v249 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v264 = v249 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v266 = v249 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  *&v287 = v249 - v34;
  MEMORY[0x28223BE20](v33);
  v288 = v249 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v249 - v37;
  *&v291 = type metadata accessor for Component();
  v39 = *(v291 - 8);
  v40 = MEMORY[0x28223BE20](v291);
  v276 = v249 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v280 = v249 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v273 = v249 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v283 = v249 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v281 = v249 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v285 = (v249 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = v249 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = v249 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v249 - v58;
  sub_242CA321C(a1, v249 - v58, &qword_27ECFC780);
  v284 = v4;
  v60 = *(v4 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (!*(v60 + 16) || (v61 = sub_242CE5568(v59), (v62 & 1) == 0))
  {
    sub_242C6D138(v59, &qword_27ECFC780);
    (*(v39 + 56))(v38, 1, 1, v291);
    goto LABEL_8;
  }

  v250 = v54;
  v251 = v60;
  v257 = v56;
  v258 = v59;
  v63 = (*(v60 + 56) + 112 * v61);
  v65 = v63[1];
  v64 = v63[2];
  v302 = *v63;
  v303 = v65;
  v304 = v64;
  v66 = *(v63 + 89);
  v68 = v63[4];
  v67 = v63[5];
  v305 = v63[3];
  *v306 = v68;
  *&v306[16] = v67;
  *&v306[25] = v66;
  v255 = v303;
  v256 = *(&v302 + 1);
  v69 = v304;
  v70 = v305;
  v253 = v68;
  *&v254 = *(&v303 + 1);
  v252 = *&v306[8];
  v71 = *&v306[24];
  v72 = v66 >> 56;
  v73 = HIBYTE(v66);
  sub_242CA321C(&v302, &v297, &qword_27ECF21A8);
  sub_242D1162C(v256, v255, v254, v69, *(&v69 + 1), v70, *(&v70 + 1), v253, v252, *(&v252 + 1), v71, v72, v73);
  v74 = v289;
  sub_242D39B5C(v290, v289, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v76 = *(v75 - 8);
  v77 = v76 + 48;
  v256 = *(v76 + 48);
  v78 = v256(v74, 2, v75);
  v79 = v287;
  if (!v78)
  {
    sub_242CF6B3C(v74, v287, &qword_27ECF23E8);
  }

  v81 = *(v76 + 56);
  v80 = v76 + 56;
  v289 = v81;
  (v81)(v79, v78, 2, v75);
  v82 = v79;
  v83 = v288;
  sub_242CF6B3C(v82, v288, &qword_27ECF3020);
  sub_242D2E420(v83, v38);

  sub_242C6D138(v83, &qword_27ECF3020);
  v84 = (*(v39 + 48))(v38, 1, v291);
  v86 = v257;
  v85 = v258;
  if (v84 != 1)
  {
    sub_242D39C68(v38, v257, type metadata accessor for Component);
    v90 = v251;
    if (!*(v251 + 16) || (v91 = sub_242CE5568(v85), (v92 & 1) == 0))
    {
      sub_242D39AFC(v86, type metadata accessor for Component);
      v87 = &qword_27ECFC780;
      v88 = v85;
      return sub_242C6D138(v88, v87);
    }

    v249[1] = v77;
    *&v252 = v80;
    v253 = v75;
    v93 = (*(v90 + 56) + 112 * v91);
    v95 = v93[1];
    v94 = v93[2];
    v297 = *v93;
    v298 = v95;
    v299 = v94;
    v96 = *(v93 + 89);
    v98 = v93[4];
    v97 = v93[5];
    v300 = v93[3];
    v301[0] = v98;
    v301[1] = v97;
    *(&v301[1] + 9) = v96;
    *&v287 = *(&v297 + 1);
    v288 = v297;
    v99 = *(&v298 + 1);
    v255 = v298;
    v100 = v299;
    v102 = *(&v300 + 1);
    v101 = v300;
    v254 = *(v301 + 8);
    v103 = v98;
    v104 = *(&v301[1] + 1);
    v105 = v96 >> 56;
    v106 = HIBYTE(v96);
    sub_242CA321C(&v297, &v294, &qword_27ECF21A8);
    v107 = v102;
    v108 = v257;
    v109 = sub_242D1162C(v287, v255, v99, v100, *(&v100 + 1), v101, v107, v103, v254, *(&v254 + 1), v104, v105, v106);
    MEMORY[0x28223BE20](v109);
    sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component);
    sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    v111 = v285;
    sub_242F03A80();

    v112 = v250;
    sub_242D39C68(v111, v250, type metadata accessor for Component);
    sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0]);
    v113 = v286;
    if (sub_242F04EE0())
    {
      sub_242D39AFC(v112, type metadata accessor for Component);
      v114 = v108;
LABEL_14:
      sub_242D39AFC(v114, type metadata accessor for Component);
      v87 = &qword_27ECFC780;
      v88 = v258;
      return sub_242C6D138(v88, v87);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v115 = v258;
    if (v294 == 1)
    {
      if (qword_27ECEF4D0 != -1)
      {
        swift_once();
      }

      v116 = sub_242F039D0();
      __swift_project_value_buffer(v116, qword_27ED5D310);
      v117 = v281;
      sub_242D39B5C(v108, v281, type metadata accessor for Component);
      v118 = sub_242F039B0();
      v119 = sub_242F05700();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v294 = v121;
        *v120 = 136315138;
        v122 = v117;
        v123 = v277;
        sub_242CA321C(v122, v277, &qword_27ECF23E8);
        (*(v282 + 16))(v278, v123, v113);
        v124 = sub_242F04F90();
        v126 = v125;
        sub_242C6D138(v123, &qword_27ECF23E8);
        sub_242D39AFC(v281, type metadata accessor for Component);
        v127 = sub_242C8FD38(v124, v126, &v294);

        *(v120 + 4) = v127;
        _os_log_impl(&dword_242C53000, v118, v119, "In an active layout transition. Preventing component transition %s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v121);
        MEMORY[0x245D287D0](v121, -1, -1);
        MEMORY[0x245D287D0](v120, -1, -1);

        sub_242D39AFC(v250, type metadata accessor for Component);
        v114 = v257;
        goto LABEL_14;
      }

      sub_242D39AFC(v117, type metadata accessor for Component);
      v138 = v112;
      goto LABEL_47;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v128 = v294;
    if (!*(v294 + 16))
    {

      v131 = v279;
LABEL_28:
      v139 = v276;
      v130 = v280;
      v132 = v283;
LABEL_30:
      if (qword_27ECEF0A8 != -1)
      {
        swift_once();
      }

      v140 = sub_242F039A0();
      __swift_project_value_buffer(v140, qword_27ED5D270);
      sub_242D39B5C(v112, v132, type metadata accessor for Component);
      v141 = v273;
      sub_242D39B5C(v112, v273, type metadata accessor for Component);
      sub_242D39B5C(v108, v130, type metadata accessor for Component);
      sub_242D39B5C(v108, v139, type metadata accessor for Component);
      sub_242F03950();
      v142 = sub_242F03980();
      LODWORD(v291) = sub_242F05780();
      if (sub_242F05840())
      {
        v285 = v142;
        v143 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        v292 = v288;
        *v143 = 136315906;
        v144 = v283;
        v145 = v277;
        sub_242CA321C(v283, v277, &qword_27ECF23E8);
        v146 = *(v282 + 16);
        v282 += 16;
        *&v287 = v146;
        v146(v278, v145, v113);
        v147 = sub_242F04F90();
        v149 = v148;
        sub_242C6D138(v145, &qword_27ECF23E8);
        sub_242D39AFC(v144, type metadata accessor for Component);
        v150 = sub_242C8FD38(v147, v149, &v292);

        *(v143 + 4) = v150;
        *(v143 + 12) = 2080;
        Component.stableIdentifier.getter(&v294);
        v151 = v141;
        if (*(&v294 + 1))
        {
          v293[0] = v294;
          v152 = sub_242F04F90();
          v154 = v153;
          sub_242D39AFC(v151, type metadata accessor for Component);
        }

        else
        {
          v154 = 0x8000000242F5A160;
          sub_242D39AFC(v141, type metadata accessor for Component);
          v152 = 0xD00000000000002DLL;
        }

        v155 = sub_242C8FD38(v152, v154, &v292);

        *(v143 + 14) = v155;
        *(v143 + 22) = 2080;
        v156 = v280;
        v157 = v277;
        sub_242CA321C(v280, v277, &qword_27ECF23E8);
        (v287)(v278, v157, v286);
        v158 = sub_242F04F90();
        v160 = v159;
        sub_242C6D138(v157, &qword_27ECF23E8);
        sub_242D39AFC(v156, type metadata accessor for Component);
        v161 = sub_242C8FD38(v158, v160, &v292);

        *(v143 + 24) = v161;
        *(v143 + 32) = 2080;
        v162 = v276;
        Component.stableIdentifier.getter(&v294);
        v163 = v285;
        if (*(&v294 + 1))
        {
          v293[0] = v294;
          v164 = sub_242F04F90();
          v166 = v165;
          sub_242D39AFC(v162, type metadata accessor for Component);
        }

        else
        {
          v166 = 0x8000000242F5A160;
          sub_242D39AFC(v162, type metadata accessor for Component);
          v164 = 0xD00000000000002DLL;
        }

        v108 = v257;
        v115 = v258;
        v112 = v250;
        v167 = v279;
        v168 = v291;
        v169 = sub_242C8FD38(v164, v166, &v292);

        *(v143 + 34) = v169;
        v170 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v163, v168, v170, "Dynamic Content area transition started.", "Starting Component: %s, Starting Instrument kind: %s, Target Component: %s, Target Instrument kind: %s", v143, 0x2Au);
        v171 = v288;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v171, -1, -1);
        MEMORY[0x245D287D0](v143, -1, -1);

        (*(v274 + 8))(v167, v275);
      }

      else
      {

        (*(v274 + 8))(v131, v275);
        sub_242D39AFC(v139, type metadata accessor for Component);
        sub_242D39AFC(v130, type metadata accessor for Component);
        sub_242D39AFC(v141, type metadata accessor for Component);
        sub_242D39AFC(v283, type metadata accessor for Component);
        v115 = v258;
      }

      v172 = v251;
      if (!*(v251 + 16) || (v173 = sub_242CE5568(v115), (v174 & 1) == 0))
      {
        v138 = v112;
LABEL_47:
        sub_242D39AFC(v138, type metadata accessor for Component);
        v195 = v108;
LABEL_48:
        sub_242D39AFC(v195, type metadata accessor for Component);
        v87 = &qword_27ECFC780;
        v88 = v115;
        return sub_242C6D138(v88, v87);
      }

      v175 = (*(v172 + 56) + 112 * v173);
      v177 = v175[1];
      v176 = v175[2];
      v294 = *v175;
      v295[0] = v177;
      v295[1] = v176;
      v178 = *(v175 + 89);
      v180 = v175[4];
      v179 = v175[5];
      v295[2] = v175[3];
      v296[0] = v180;
      v296[1] = v179;
      *(&v296[1] + 9) = v178;
      *&v291 = *(&v294 + 1);
      v181 = *(&v295[0] + 1);
      v288 = *&v295[0];
      v182 = v295[1];
      v183 = v295[2];
      v184 = v180;
      v287 = *(v296 + 8);
      v185 = *(&v296[1] + 1);
      v186 = v178 >> 56;
      v187 = HIBYTE(v178);
      sub_242CA321C(&v294, v293, &qword_27ECF21A8);
      sub_242D1162C(v291, v288, v181, v182, *(&v182 + 1), v183, *(&v183 + 1), v184, v287, *(&v287 + 1), v185, v186, v187);
      v188 = v265;
      sub_242D39B5C(v290, v265, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
      v189 = v253;
      v190 = v256(v188, 2, v253);
      v191 = v264;
      if (!v190)
      {
        sub_242CF6B3C(v188, v264, &qword_27ECF23E8);
      }

      (v289)(v191, v190, 2, v189);
      v192 = v191;
      v193 = v266;
      sub_242CF6B3C(v192, v266, &qword_27ECF3020);
      sub_242D32994(v193, v267 & 1);

      sub_242C6D138(v193, &qword_27ECF3020);
      v194 = v250;
LABEL_65:
      sub_242D39AFC(v194, type metadata accessor for Component);
      v114 = v257;
      goto LABEL_14;
    }

    v129 = sub_242CE5568(v115);
    v131 = v279;
    v130 = v280;
    v132 = v283;
    if ((v133 & 1) == 0)
    {

      v139 = v276;
      goto LABEL_30;
    }

    v134 = v272;
    sub_242D39B5C(*(v128 + 56) + *(v269 + 72) * v129, v272, type metadata accessor for RequestContentModel);

    v135 = v270;
    sub_242D39B5C(v134, v270, type metadata accessor for RequestContentModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v137 = type metadata accessor for RequestContentModel;
    if (EnumCaseMultiPayload > 1)
    {
      if ((EnumCaseMultiPayload - 2) >= 2)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (EnumCaseMultiPayload)
    {
      v137 = type metadata accessor for PopoverModel;
LABEL_53:
      sub_242D39AFC(v135, v137);
LABEL_54:
      v198 = v268;
      if (qword_27ECEF4D0 != -1)
      {
        swift_once();
      }

      v199 = sub_242F039D0();
      __swift_project_value_buffer(v199, qword_27ED5D310);
      sub_242D39B5C(v134, v198, type metadata accessor for RequestContentModel);
      v200 = sub_242F039B0();
      v201 = sub_242F05700();
      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *&v294 = v203;
        *v202 = 136315138;
        v204 = RequestContentModel.displayName.getter();
        if (v205)
        {
          v206 = v204;
        }

        else
        {
          v206 = 0xD000000000000015;
        }

        v207 = v198;
        if (v205)
        {
          v208 = v205;
        }

        else
        {
          v208 = 0x8000000242F5A1F0;
        }

        sub_242D39AFC(v207, type metadata accessor for RequestContentModel);
        v209 = sub_242C8FD38(v206, v208, &v294);

        *(v202 + 4) = v209;
        _os_log_impl(&dword_242C53000, v200, v201, "Preventing carousel rotation. Showing floating content. %s", v202, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v203);
        MEMORY[0x245D287D0](v203, -1, -1);
        MEMORY[0x245D287D0](v202, -1, -1);

        v210 = v134;
LABEL_64:
        sub_242D39AFC(v210, type metadata accessor for RequestContentModel);
        v194 = v112;
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    sub_242D39AFC(v135, type metadata accessor for RequestContentModel);
    v196 = v262;
    sub_242D39B5C(v134, v262, type metadata accessor for RequestContentModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_242D39AFC(v196, type metadata accessor for RequestContentModel);
      v197 = v263;
    }

    else
    {
      v212 = v196[2];
      v211 = v196[3];
      v213 = *v196;
      v295[0] = v196[1];
      v295[1] = v212;
      v214 = v196[4];
      v295[2] = v211;
      v296[0] = v214;
      v294 = v213;
      v197 = v263;
      if ((BYTE9(v211) & 1) == 0)
      {
        v225 = 0;
        v219 = v296[0];
        v220 = *(v295 + 8);
        v221 = *(&v295[1] + 8);
        v222 = BYTE8(v295[2]);
        v223 = BYTE1(v295[0]);
        v224 = v295[0];
LABEL_75:
        LOBYTE(v295[0]) = v224;
        BYTE1(v295[0]) = v223;
        *(v295 + 8) = v220;
        *(&v295[1] + 8) = v221;
        BYTE8(v295[2]) = v222;
        BYTE9(v295[2]) = v225;
        v296[0] = v219;
        if ((v224 & 1) == 0)
        {
          if (qword_27ECEF4D0 != -1)
          {
            swift_once();
          }

          v238 = sub_242F039D0();
          __swift_project_value_buffer(v238, qword_27ED5D310);
          v198 = v261;
          sub_242D39B5C(v134, v261, type metadata accessor for RequestContentModel);
          v239 = sub_242F039B0();
          v240 = sub_242F05700();
          if (os_log_type_enabled(v239, v240))
          {
            v241 = swift_slowAlloc();
            v242 = swift_slowAlloc();
            *&v293[0] = v242;
            *v241 = 136315138;
            v243 = RequestContentModel.displayName.getter();
            v245 = v198;
            if (v244)
            {
              v246 = v243;
            }

            else
            {
              v246 = 0xD000000000000015;
            }

            if (v244)
            {
              v247 = v244;
            }

            else
            {
              v247 = 0x8000000242F5A1F0;
            }

            sub_242D39AFC(v245, type metadata accessor for RequestContentModel);
            v248 = sub_242C8FD38(v246, v247, v293);

            *(v241 + 4) = v248;
            _os_log_impl(&dword_242C53000, v239, v240, "Preventing carousel rotation. non-dismissible content is active.  %s", v241, 0xCu);
            __swift_destroy_boxed_opaque_existential_2Tm(v242);
            MEMORY[0x245D287D0](v242, -1, -1);
            MEMORY[0x245D287D0](v241, -1, -1);

            sub_242D3A090(&v294);
            v210 = v134;
            goto LABEL_64;
          }

          sub_242D3A090(&v294);
LABEL_67:
          sub_242D39AFC(v198, type metadata accessor for RequestContentModel);
          sub_242D39AFC(v134, type metadata accessor for RequestContentModel);
          sub_242D39AFC(v112, type metadata accessor for Component);
          v195 = v257;
          goto LABEL_48;
        }

        if ((v260 & 1) == 0)
        {
          sub_242D39AFC(v134, type metadata accessor for RequestContentModel);
          sub_242D3A090(&v294);
          goto LABEL_99;
        }

        v291 = v219;
        if (qword_27ECEF4D0 != -1)
        {
          swift_once();
        }

        v226 = sub_242F039D0();
        __swift_project_value_buffer(v226, qword_27ED5D310);
        v227 = v259;
        sub_242D39B5C(v134, v259, type metadata accessor for RequestContentModel);
        v228 = sub_242F039B0();
        v229 = sub_242F05700();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *&v293[0] = v231;
          *v230 = 136315138;
          v232 = RequestContentModel.displayName.getter();
          if (v233)
          {
            v234 = v232;
          }

          else
          {
            v234 = 0xD000000000000015;
          }

          if (v233)
          {
            v235 = v233;
          }

          else
          {
            v235 = 0x8000000242F5A1F0;
          }

          sub_242D39AFC(v227, type metadata accessor for RequestContentModel);
          v236 = sub_242C8FD38(v234, v235, v293);

          *(v230 + 4) = v236;
          _os_log_impl(&dword_242C53000, v228, v229, "Rotation requested while widget content is active. Turning off Request Content. %s", v230, 0xCu);
          __swift_destroy_boxed_opaque_existential_2Tm(v231);
          MEMORY[0x245D287D0](v231, -1, -1);
          MEMORY[0x245D287D0](v230, -1, -1);
        }

        else
        {

          v237 = sub_242D39AFC(v227, type metadata accessor for RequestContentModel);
        }

        if (v291)
        {
          (v291)(v237);
        }

        sub_242D3A090(&v294);
        sub_242D39AFC(v272, type metadata accessor for RequestContentModel);
        v108 = v257;
        v112 = v250;
        v131 = v279;
        v113 = v286;
        goto LABEL_28;
      }

      sub_242D3A090(&v294);
    }

    sub_242D39B5C(v134, v197, type metadata accessor for RequestContentModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_242D39AFC(v197, type metadata accessor for RequestContentModel);
LABEL_98:
      sub_242D39AFC(v134, type metadata accessor for RequestContentModel);
LABEL_99:
      v139 = v276;
      v108 = v257;
      v130 = v280;
      goto LABEL_30;
    }

    v216 = v197[2];
    v215 = v197[3];
    v217 = *v197;
    v295[0] = v197[1];
    v295[1] = v216;
    v218 = v197[4];
    v295[2] = v215;
    v296[0] = v218;
    v294 = v217;
    if ((BYTE9(v215) & 1) == 0)
    {
      sub_242D3A090(&v294);
      goto LABEL_98;
    }

    v219 = v296[0];
    v220 = *(v295 + 8);
    v221 = *(&v295[1] + 8);
    v222 = BYTE8(v295[2]);
    v223 = BYTE1(v295[0]);
    v224 = v295[0];
    v225 = 1;
    goto LABEL_75;
  }

  sub_242C6D138(v258, &qword_27ECFC780);
LABEL_8:
  v87 = &qword_27ECF2730;
  v88 = v38;
  return sub_242C6D138(v88, v87);
}

uint64_t sub_242D2614C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Instrument();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v61 = a1[2];
  v62 = v15;
  v63 = a1[4];
  v16 = a1[1];
  v59 = *a1;
  v60 = v16;
  v17 = v61;
  if (BYTE8(v15))
  {
    if (BYTE8(v15) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_242F09510;
      v19 = qword_27ECEEF60;

      if (v19 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = byte_27ECF1000;
      v21 = dword_27ECF1004;
      if (qword_27ECEEED8 != -1)
      {
        swift_once();
      }

      v58[0] = v20;
      *&v58[4] = v21;
      *&v58[8] = xmmword_27ECF0E90;
      *&v58[24] = unk_27ECF0EA0;
      *&v58[32] = qword_27ECF0EA8;
      *&v58[40] = unk_27ECF0EB0;
      *&v58[48] = xmmword_27ECF0E90;
      *&v58[64] = unk_27ECF0EA0;
      *&v58[72] = qword_27ECF0EA8;
      *&v58[80] = unk_27ECF0EB0;
      sub_242CB5A7C(v58);
      v22 = *&v58[80];
      v23 = *&v58[112];
      *(v18 + 128) = *&v58[96];
      *(v18 + 144) = v23;
      v24 = *&v58[48];
      v25 = *&v58[64];
      *(v18 + 64) = *&v58[32];
      *(v18 + 80) = v24;
      *(v18 + 160) = *&v58[128];
      *(v18 + 96) = v25;
      *(v18 + 112) = v22;
      v26 = *&v58[16];
      *(v18 + 32) = *v58;
      *(v18 + 48) = v26;
      VisibilityConfiguration.init(arrayLiteral:)(v18, &v56);

      v27 = type metadata accessor for PopoverModel(0);
      return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    }

    else
    {
      v46 = type metadata accessor for PopoverModel(0);
      v47 = *(*(v46 - 8) + 56);

      return v47(a2, 1, 1, v46);
    }
  }

  else
  {
    v55 = a2;
    v30 = *(&v61 + 1);
    v29 = v62;
    v31 = *(&v60 + 1);
    *v58 = *(&v60 + 1);
    *&v58[8] = v61;
    v52 = v62;
    v53 = *(&v60 + 1);
    *&v58[24] = v62;
    v54 = *(&v61 + 1);
    v50 = v12;
    sub_242CFB44C(v58);
    sub_242CF6A84(v31, v17, v30, v29, 0);

    sub_242F03710();
    v49 = sub_242F04730();
    sub_242F03710();
    sub_242CA321C(v8, v14, &qword_27ECF2168);
    sub_242C6D138(v8, &qword_27ECF2168);
    v48 = v17;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
    v51 = v2;
    v33 = *(v32 + 52);
    *&v14[v33] = 7;
    sub_242CA321C(v10, v8, &qword_27ECF2168);
    sub_242C6D138(v14, &qword_27ECF2170);
    sub_242CA321C(v8, v14, &qword_27ECF2168);
    sub_242C6D138(v8, &qword_27ECF2168);
    *&v14[v33] = 7;
    v34 = v50;
    memcpy(&v14[*(v50 + 20)], v58, 0x238uLL);
    v35 = *(v34 + 24);

    v36 = &v14[v35];
    *(v36 + 12) = 256;
    *(v36 + 4) = 0;
    *(v36 + 5) = 0;
    v36[50] = -1;
    *(v36 + 24) = 0;
    *(v36 + 1) = 0;
    *(v36 + 2) = 0;
    *v36 = v49;
    sub_242C6D138(v10, &qword_27ECF2168);
    sub_242CF6AD8(v53, v48, v54, v52, 0);
    v36[24] = 0;
    LOBYTE(v30) = v60;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v39 = v62;
    *(v38 + 3) = v61;
    *(v38 + 4) = v39;
    *(v38 + 5) = v63;
    v40 = v60;
    *(v38 + 1) = v59;
    *(v38 + 2) = v40;
    v41 = v14;
    v42 = v55;
    sub_242D39C68(v41, v55, type metadata accessor for Instrument);
    v43 = type metadata accessor for PopoverModel(0);
    *(v42 + v43[5]) = v30;
    v44 = (v42 + v43[6]);
    *v44 = sub_242D3D7FC;
    v44[1] = v37;
    v45 = (v42 + v43[7]);
    *v45 = sub_242D3D804;
    v45[1] = v38;
    (*(*(v43 - 1) + 56))(v42, 0, 1, v43);
    return sub_242D3D834(&v59, &v57);
  }
}

uint64_t sub_242D2675C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), int a5)
{
  v133 = a5;
  v132 = a4;
  v135 = a3;
  v148 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v117 - v8;
  v130 = type metadata accessor for Zone();
  v121 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v122 = v9;
  v123 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_242F042C0();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3178);
  MEMORY[0x28223BE20](v11 - 8);
  v142 = &v117 - v12;
  v13 = type metadata accessor for PopoverModel(0);
  v14 = *(v13 - 8);
  v140 = v13;
  v141 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v16;
  MEMORY[0x28223BE20](v15);
  v118 = &v117 - v17;
  v18 = type metadata accessor for RequestContentModel();
  v147 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v128 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v117 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v127 = &v117 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v117 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3180);
  MEMORY[0x28223BE20](v27);
  v29 = &v117 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v129 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v139 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v138 = &v117 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v137 = &v117 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v146 = &v117 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v117 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v117 - v44;
  swift_getKeyPath();
  swift_getKeyPath();
  v143 = v5;
  sub_242F03A80();

  v46 = v149;
  v47 = *(v149 + 16);
  v144 = a2;
  if (v47 && (v48 = sub_242CE5568(a2), (v49 & 1) != 0))
  {
    sub_242D39B5C(*(v46 + 56) + *(v147 + 72) * v48, v45, type metadata accessor for RequestContentModel);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v147;
  v136 = *(v147 + 56);
  v136(v45, v50, 1, v18);
  v52 = *(v27 + 48);
  sub_242CA321C(v45, v29, &qword_27ECF2EC8);
  sub_242CA321C(v148, &v29[v52], &qword_27ECF2EC8);
  v53 = *(v51 + 48);
  v54 = v53(v29, 1, v18);
  v145 = v53;
  if (v54 == 1)
  {
    sub_242C6D138(v45, &qword_27ECF2EC8);
    if (v53(&v29[v52], 1, v18) == 1)
    {
      return sub_242C6D138(v29, &qword_27ECF2EC8);
    }

    goto LABEL_10;
  }

  sub_242CA321C(v29, v43, &qword_27ECF2EC8);
  if (v53(&v29[v52], 1, v18) == 1)
  {
    sub_242C6D138(v45, &qword_27ECF2EC8);
    sub_242D39AFC(v43, type metadata accessor for RequestContentModel);
LABEL_10:
    sub_242C6D138(v29, &qword_27ECF3180);
    goto LABEL_11;
  }

  sub_242D39C68(&v29[v52], v26, type metadata accessor for RequestContentModel);
  v65 = _s14CarPlayAssetUI19RequestContentModelO2eeoiySbAC_ACtFZ_0(v43, v26);
  sub_242D39AFC(v26, type metadata accessor for RequestContentModel);
  sub_242C6D138(v45, &qword_27ECF2EC8);
  sub_242D39AFC(v43, type metadata accessor for RequestContentModel);
  result = sub_242C6D138(v29, &qword_27ECF2EC8);
  if ((v65 & 1) == 0)
  {
LABEL_11:
    v150 = 0;
    v151 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v117 = (v56 + 16);
    *(v56 + 24) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = v143;
    sub_242F03A80();

    v58 = v149;
    if (*(v149 + 16))
    {
      v59 = sub_242CE5568(v144);
      v60 = v146;
      v62 = v137;
      v61 = v138;
      if (v63)
      {
        sub_242D39B5C(*(v58 + 56) + *(v147 + 72) * v59, v146, type metadata accessor for RequestContentModel);
        v64 = 0;
      }

      else
      {
        v64 = 1;
      }
    }

    else
    {
      v64 = 1;
      v60 = v146;
      v62 = v137;
      v61 = v138;
    }

    v136(v60, v64, 1, v18);
    sub_242CA321C(v60, v62, &qword_27ECF2EC8);
    v66 = v145;
    if (v145(v62, 1, v18) == 1)
    {
      sub_242C6D138(v62, &qword_27ECF2EC8);
      v67 = v139;
LABEL_20:
      sub_242CA321C(v148, v61, &qword_27ECF2EC8);
      if (v66(v61, 1, v18) == 1)
      {
        sub_242C6D138(v61, &qword_27ECF2EC8);
LABEL_22:
        v68 = 0;
        goto LABEL_41;
      }

      sub_242D39B5C(v61, v134, type metadata accessor for RequestContentModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v73 = type metadata accessor for PopoverModel;
      }

      else
      {
        if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
        {
          sub_242D39AFC(v134, type metadata accessor for RequestContentModel);
          sub_242D39AFC(v61, type metadata accessor for RequestContentModel);
          goto LABEL_22;
        }

        v73 = type metadata accessor for RequestContentModel;
      }

      sub_242D39AFC(v134, v73);
      v62 = v61;
LABEL_36:
      sub_242D39AFC(v62, type metadata accessor for RequestContentModel);
      if (qword_27ECEF4D0 != -1)
      {
        swift_once();
      }

      v74 = sub_242F039D0();
      __swift_project_value_buffer(v74, qword_27ED5D310);
      v75 = sub_242F039B0();
      v76 = sub_242F05720();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_242C53000, v75, v76, "RequestContent - Either presenting or dismissing floating content.", v77, 2u);
        MEMORY[0x245D287D0](v77, -1, -1);
      }

      v68 = v133;
LABEL_41:
      sub_242CA321C(v60, v67, &qword_27ECF2EC8);
      if (v145(v67, 1, v18) == 1)
      {
        sub_242C6D138(v67, &qword_27ECF2EC8);
        v78 = v142;
        (*(v141 + 56))(v142, 1, 1, v140);
      }

      else
      {
        v79 = v128;
        sub_242D39B5C(v67, v128, type metadata accessor for RequestContentModel);
        v80 = swift_getEnumCaseMultiPayload();
        v81 = v141;
        v78 = v142;
        v82 = v140;
        if (v80 == 1)
        {
          sub_242D39C68(v79, v142, type metadata accessor for PopoverModel);
          (*(v81 + 56))(v78, 0, 1, v82);
        }

        else
        {
          (*(v141 + 56))(v142, 1, 1, v140);
          sub_242D39AFC(v79, type metadata accessor for RequestContentModel);
        }

        sub_242D39AFC(v67, type metadata accessor for RequestContentModel);
        if ((*(v81 + 48))(v78, 1, v82) != 1)
        {
          v87 = v68;
          v88 = v118;
          sub_242D39C68(v78, v118, type metadata accessor for PopoverModel);
          v89 = v56;
          v90 = v120;
          sub_242D39B5C(v88, v120, type metadata accessor for PopoverModel);
          v91 = (*(v81 + 80) + 24) & ~*(v81 + 80);
          v92 = swift_allocObject();
          *(v92 + 16) = v57;
          sub_242D39C68(v90, v92 + v91, type metadata accessor for PopoverModel);
          v150 = sub_242D3D95C;
          v151 = v92;
          v93 = v88;
          v83 = sub_242D3D95C;
          sub_242D39C68(v93, v90, type metadata accessor for PopoverModel);
          v94 = swift_allocObject();
          *(v94 + 16) = v57;
          v95 = v90;
          v56 = v89;
          sub_242D39C68(v95, v94 + v91, type metadata accessor for PopoverModel);
          v96 = *(v89 + 16);
          *(v89 + 16) = sub_242D3DB74;
          *(v89 + 24) = v94;
          swift_retain_n();
          v97 = v96;
          LOBYTE(v96) = v87;
          sub_242C655DC(v97);
          v84 = 0;
          if (v96)
          {
LABEL_48:
            v85 = v144;
            v86 = *(v144 + *(v130 + 40));
            if (v86 != 2)
            {
              v147 = v56;
              if (qword_27ECEF800 != -1)
              {
                swift_once();
              }

              v142 = qword_27ED5D358;
              v105 = v124;
              v106 = sub_242F042B0();
              v145 = &v117;
              MEMORY[0x28223BE20](v106);
              *(&v117 - 6) = v57;
              v107 = v86 & 1;
              *(&v117 - 40) = v107;
              *(&v117 - 4) = v148;
              *(&v117 - 3) = v85;
              *(&v117 - 2) = &v150;
              v108 = v123;
              sub_242D39B5C(v85, v123, type metadata accessor for Zone);
              v109 = v57;
              v110 = (*(v121 + 80) + 24) & ~*(v121 + 80);
              v111 = v110 + v122;
              v112 = (((v110 + v122) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
              v113 = swift_allocObject();
              *(v113 + 16) = v109;
              sub_242D39C68(v108, v113 + v110, type metadata accessor for Zone);
              *(v113 + v111) = v107;
              *(v113 + (v111 & 0xFFFFFFFFFFFFFFF8) + 8) = v147;
              v114 = (v113 + v112);
              v115 = v135;
              v116 = v132;
              *v114 = v135;
              v114[1] = v116;

              sub_242C5573C(v115);
              sub_242F03D40();

              (*(v125 + 8))(v105, v126);
              sub_242C6D138(v146, &qword_27ECF2EC8);

              v104 = v150;
              return sub_242C655DC(v104);
            }

LABEL_57:
            sub_242C6D138(v146, &qword_27ECF2EC8);

            v104 = v83;
            return sub_242C655DC(v104);
          }

LABEL_51:
          v147 = v56;
          v98 = v131;
          sub_242CA321C(v144, v131, &qword_27ECFC780);
          v99 = v129;
          sub_242CA321C(v148, v129, &qword_27ECF2EC8);
          swift_getKeyPath();
          swift_getKeyPath();
          v100 = sub_242F03A70();
          sub_242E080E0(v99, v98);
          v100(&v149, 0);

          if ((v84 & 1) == 0)
          {
            v101 = (v83)(v101);
          }

          v102 = *v117;
          if (*v117)
          {

            v102(v103);
            v101 = sub_242C655DC(v102);
          }

          if (v135)
          {
            v135(v101);
          }

          goto LABEL_57;
        }
      }

      sub_242C6D138(v78, &qword_27ECF3178);
      v83 = 0;
      v84 = 1;
      if (v68)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    v69 = v127;
    sub_242D39B5C(v62, v127, type metadata accessor for RequestContentModel);
    v70 = swift_getEnumCaseMultiPayload();
    v67 = v139;
    if (v70 == 1)
    {
      v71 = type metadata accessor for PopoverModel;
    }

    else
    {
      if (v70 != 2 && v70 != 3)
      {
        sub_242D39AFC(v69, type metadata accessor for RequestContentModel);
        sub_242D39AFC(v62, type metadata accessor for RequestContentModel);
        goto LABEL_20;
      }

      v71 = type metadata accessor for RequestContentModel;
    }

    sub_242D39AFC(v69, v71);
    goto LABEL_36;
  }

  return result;
}