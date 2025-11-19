void sub_7220F4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void sub_722240(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  if (*(a2 + 1) == 0x7FFFFFFFFFFFFFFFLL || *(a2 + 2) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = "Maneuvers.Cycling";
  }

  else
  {
    v7 = "Maneuvers.Driving.";
  }

  if (*a2)
  {
    v8 = 17;
  }

  else
  {
    v8 = 18;
  }

  v61 = v8;
  memcpy(&__dst, v7, v8);
  *(&__dst + v8) = 0;
  qmemcpy(v67, "isRoundabout", 12);
  LODWORD(v62) = 1;
  v9 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v10 = v61;
  }

  else
  {
    v10 = v60;
  }

  if (v10 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 12 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v10 + 12;
  if (v10)
  {
    if ((v61 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    memmove(&__p, p_dst, v10);
  }

  v12 = &__p + v10;
  v13 = *v67;
  *(v12 + 2) = *&v67[8];
  *v12 = v13;
  v12[12] = 0;
  v63 = 4;
  sub_725004(a3, &__p, &v63, &v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__dst);
LABEL_24:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v14 = 17;
  if (!v6)
  {
    v14 = 18;
  }

  *(&__dst + v14) = 0;
  qmemcpy(v67, "Circumference", 13);
  v15 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v16 = v61;
  }

  else
  {
    v16 = v60;
  }

  if (v16 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v16 + 13 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v16 + 13;
  if (v16)
  {
    if ((v61 & 0x80u) == 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst;
    }

    memmove(&__p, v17, v16);
  }

  v18 = &__p + v16;
  v19 = *v67;
  *(v18 + 5) = *&v67[5];
  *v18 = v19;
  v18[13] = 0;
  v63 = 7;
  v20 = *(a2 + 1);
  v21 = v20 / 100;
  v22 = v20 % 100;
  if (v20 < 0)
  {
    v23 = -50;
  }

  else
  {
    v23 = 50;
  }

  v62 = v21 + (((5243 * (v23 + v22)) >> 19) + ((5243 * (v23 + v22)) >> 31));
  sub_725298(a3, &__p, &v63, &v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(__dst);
LABEL_42:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v24 = 17;
  if (!v6)
  {
    v24 = 18;
  }

  *(&__dst + v24) = 0;
  qmemcpy(v67, "TraversedDistance", 17);
  v25 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v26 = v61;
  }

  else
  {
    v26 = v60;
  }

  if (v26 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v26 + 17 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v26 + 17;
  if (v26)
  {
    if ((v61 & 0x80u) == 0)
    {
      v27 = &__dst;
    }

    else
    {
      v27 = __dst;
    }

    memmove(&__p, v27, v26);
  }

  v28 = &__p + v26;
  v29 = *v67;
  v28[16] = v67[16];
  *v28 = v29;
  v28[17] = 0;
  v63 = 7;
  v30 = *(a2 + 2);
  v31 = v30 / 100;
  v32 = v30 % 100;
  if (v30 < 0)
  {
    v33 = -50;
  }

  else
  {
    v33 = 50;
  }

  v62 = v31 + (((5243 * (v33 + v32)) >> 19) + ((5243 * (v33 + v32)) >> 31));
  sub_725298(a3, &__p, &v63, &v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

  operator delete(__dst);
LABEL_60:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v34 = 17;
  if (!v6)
  {
    v34 = 18;
  }

  *(&__dst + v34) = 0;
  qmemcpy(v67, "RoundaboutBranchCount", sizeof(v67));
  LODWORD(v62) = *(a2 + 4);
  v35 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v36 = v61;
  }

  else
  {
    v36 = v60;
  }

  if (v36 + 21 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v36 + 21 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v36 + 21;
  if (v36)
  {
    if ((v61 & 0x80u) == 0)
    {
      v37 = &__dst;
    }

    else
    {
      v37 = __dst;
    }

    memmove(&__p, v37, v36);
  }

  v38 = &__p + v36;
  v39 = *v67;
  *(v38 + 13) = *&v67[13];
  *v38 = v39;
  v38[21] = 0;
  v63 = 4;
  sub_725004(a3, &__p, &v63, &v62);
  if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_84:
    operator delete(__dst);
    if (a2[24] != 1)
    {
      goto LABEL_100;
    }

    goto LABEL_85;
  }

  operator delete(__p);
  if (v35 < 0)
  {
    goto LABEL_84;
  }

LABEL_75:
  if (a2[24] != 1)
  {
LABEL_100:
    if (a2[25] == 1)
    {
      goto LABEL_101;
    }

    goto LABEL_106;
  }

LABEL_85:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v40 = 17;
  if (!v6)
  {
    v40 = 18;
  }

  *(&__dst + v40) = 0;
  qmemcpy(v67, "IsSimpleRoundabout", 18);
  LODWORD(v62) = 1;
  v41 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v42 = v61;
  }

  else
  {
    v42 = v60;
  }

  if (v42 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v42 + 18 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v42 + 18;
  if (v42)
  {
    if ((v61 & 0x80u) == 0)
    {
      v43 = &__dst;
    }

    else
    {
      v43 = __dst;
    }

    memmove(&__p, v43, v42);
  }

  v44 = &__p + v42;
  v45 = *v67;
  *(v44 + 8) = *&v67[16];
  *v44 = v45;
  v44[18] = 0;
  v63 = 4;
  sub_725004(a3, &__p, &v63, &v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_100;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(__dst);
  if (a2[25] == 1)
  {
LABEL_101:
    v61 = v8;
    memcpy(&__dst, v7, v8);
    v46 = 17;
    if (!v6)
    {
      v46 = 18;
    }

    *(&__dst + v46) = 0;
    operator new();
  }

LABEL_106:
  if (a2[26] != 1)
  {
    goto LABEL_124;
  }

  v61 = v8;
  memcpy(&__dst, v7, v8);
  v47 = 17;
  if (!v6)
  {
    v47 = 18;
  }

  *(&__dst + v47) = 0;
  qmemcpy(v67, "HasTwoStageGuidance", 19);
  LODWORD(v62) = 1;
  v48 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v49 = v61;
  }

  else
  {
    v49 = v60;
  }

  if (v49 + 19 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v49 + 19 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v49 + 19;
  if (v49)
  {
    if ((v61 & 0x80u) == 0)
    {
      v50 = &__dst;
    }

    else
    {
      v50 = __dst;
    }

    memmove(&__p, v50, v49);
  }

  v51 = &__p + v49;
  v52 = *v67;
  *(v51 + 15) = *&v67[15];
  *v51 = v52;
  v51[19] = 0;
  v63 = 4;
  sub_725004(a3, &__p, &v63, &v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
    if (v48 < 0)
    {
      goto LABEL_141;
    }

LABEL_124:
    if (a2[27] != 1)
    {
      return;
    }

    goto LABEL_125;
  }

  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_124;
  }

LABEL_141:
  operator delete(__dst);
  if (a2[27] != 1)
  {
    return;
  }

LABEL_125:
  v61 = v8;
  memcpy(&__dst, v7, v8);
  v53 = 17;
  if (!v6)
  {
    v53 = 18;
  }

  *(&__dst + v53) = 0;
  qmemcpy(v67, "HasSmallLoop", 12);
  LODWORD(v62) = 1;
  v54 = v61;
  if ((v61 & 0x80u) == 0)
  {
    v55 = v61;
  }

  else
  {
    v55 = v60;
  }

  if (v55 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v55 + 12 >= 0x17)
  {
    operator new();
  }

  v65 = 0;
  v66 = 0;
  __p = 0;
  HIBYTE(v66) = v55 + 12;
  if (v55)
  {
    if ((v61 & 0x80u) == 0)
    {
      v56 = &__dst;
    }

    else
    {
      v56 = __dst;
    }

    memmove(&__p, v56, v55);
  }

  v57 = &__p + v55;
  v58 = *v67;
  *(v57 + 2) = *&v67[8];
  *v57 = v58;
  v57[12] = 0;
  v63 = 4;
  sub_725004(a3, &__p, &v63, &v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p);
    if ((v54 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((v54 & 0x80000000) == 0)
  {
    return;
  }

  operator delete(__dst);
}

void sub_722E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v24 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(a11);
  goto LABEL_6;
}

void sub_722F64(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  v3 = (a2 + 24);
  *(a2 + 23) = 9;
  *(a2 + 8) = 115;
  *a2 = *"Maneuvers";
  HIBYTE(v80[2]) = 6;
  strcpy(v80, "NoTurn");
  v4 = a1[1];
  v77 = *a1;
  v78 = v4;
  v79 = *(a1 + 4);
  sub_724830(v80, &v77, (a2 + 24));
  HIBYTE(v80[2]) = 10;
  strcpy(v80, "StartRoute");
  v5 = a1[6];
  v77 = a1[5];
  v78 = v5;
  v79 = *(a1 + 14);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 11;
  strcpy(v80, "ResumeRoute");
  v6 = a1[6];
  v77 = a1[5];
  v78 = v6;
  v79 = *(a1 + 14);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "StartRouteUTurn");
  v7 = *(a1 + 136);
  v77 = *(a1 + 120);
  v78 = v7;
  v79 = *(a1 + 19);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "ResumeRouteUTurn");
  v8 = a1[11];
  v77 = a1[10];
  v78 = v8;
  v79 = *(a1 + 24);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 12;
  strcpy(v80, "WaypointStop");
  v9 = *(a1 + 216);
  v77 = *(a1 + 200);
  v78 = v9;
  v79 = *(a1 + 29);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "WaypointStopLeft");
  v10 = a1[16];
  v77 = a1[15];
  v78 = v10;
  v79 = *(a1 + 34);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 17;
  strcpy(v80, "WaypointStopRight");
  v11 = *(a1 + 296);
  v77 = *(a1 + 280);
  v78 = v11;
  v79 = *(a1 + 39);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 5;
  strcpy(v80, "Uturn");
  v12 = a1[21];
  v77 = a1[20];
  v78 = v12;
  v79 = *(a1 + 44);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 17;
  strcpy(v80, "UturnWhenPossible");
  v13 = *(a1 + 376);
  v77 = *(a1 + 360);
  v78 = v13;
  v79 = *(a1 + 49);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 8;
  strcpy(v80, "LeftTurn");
  v14 = a1[26];
  v77 = a1[25];
  v78 = v14;
  v79 = *(a1 + 54);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 9;
  strcpy(v80, "RightTurn");
  v15 = *(a1 + 456);
  v77 = *(a1 + 440);
  v78 = v15;
  v79 = *(a1 + 59);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 13;
  strcpy(v80, "SharpLeftTurn");
  v16 = a1[31];
  v77 = a1[30];
  v78 = v16;
  v79 = *(a1 + 64);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 14;
  strcpy(v80, "SharpRightTurn");
  v17 = *(a1 + 536);
  v77 = *(a1 + 520);
  v78 = v17;
  v79 = *(a1 + 69);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 14;
  strcpy(v80, "SlightLeftTurn");
  v18 = a1[36];
  v77 = a1[35];
  v78 = v18;
  v79 = *(a1 + 74);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "SlightRightTurn");
  v19 = *(a1 + 616);
  v77 = *(a1 + 600);
  v78 = v19;
  v79 = *(a1 + 79);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 13;
  strcpy(v80, "LeftTurnAtEnd");
  v20 = a1[41];
  v77 = a1[40];
  v78 = v20;
  v79 = *(a1 + 84);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 14;
  strcpy(v80, "RightTurnAtEnd");
  v21 = *(a1 + 696);
  v77 = *(a1 + 680);
  v78 = v21;
  v79 = *(a1 + 89);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 8;
  strcpy(v80, "KeepLeft");
  v22 = a1[46];
  v77 = a1[45];
  v78 = v22;
  v79 = *(a1 + 94);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 9;
  strcpy(v80, "KeepRight");
  v23 = *(a1 + 776);
  v77 = *(a1 + 760);
  v78 = v23;
  v79 = *(a1 + 99);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 13;
  strcpy(v80, "StraightAhead");
  v24 = a1[51];
  v77 = a1[50];
  v78 = v24;
  v79 = *(a1 + 104);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 10;
  strcpy(v80, "followRoad");
  v25 = *(a1 + 856);
  v77 = *(a1 + 840);
  v78 = v25;
  v79 = *(a1 + 109);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 21;
  strcpy(v80, "FollowRoadEnterDetour");
  v26 = a1[56];
  v77 = a1[55];
  v78 = v26;
  v79 = *(a1 + 114);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 20;
  strcpy(v80, "followRoadExitDetour");
  v27 = *(a1 + 936);
  v77 = *(a1 + 920);
  v78 = v27;
  v79 = *(a1 + 119);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 10;
  strcpy(v80, "TurnAround");
  v28 = a1[61];
  v77 = a1[60];
  v78 = v28;
  v79 = *(a1 + 124);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 6;
  strcpy(v80, "OnRamp");
  v29 = *(a1 + 1016);
  v77 = *(a1 + 1000);
  v78 = v29;
  v79 = *(a1 + 129);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 7;
  strcpy(v80, "OffRamp");
  v30 = a1[66];
  v77 = a1[65];
  v78 = v30;
  v79 = *(a1 + 134);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 11;
  strcpy(v80, "OffRampLeft");
  v31 = *(a1 + 1096);
  v77 = *(a1 + 1080);
  v78 = v31;
  v79 = *(a1 + 139);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 12;
  strcpy(v80, "OffRampRight");
  v32 = a1[71];
  v77 = a1[70];
  v78 = v32;
  v79 = *(a1 + 144);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 13;
  strcpy(v80, "ChangeHighway");
  v33 = *(a1 + 1176);
  v77 = *(a1 + 1160);
  v78 = v33;
  v79 = *(a1 + 149);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 17;
  strcpy(v80, "ChangeHighwayLeft");
  v34 = a1[76];
  v77 = a1[75];
  v78 = v34;
  v79 = *(a1 + 154);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 18;
  strcpy(v80, "ChangeHighwayRight");
  v35 = *(a1 + 1256);
  v77 = *(a1 + 1240);
  v78 = v35;
  v79 = *(a1 + 159);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 10;
  strcpy(v80, "EnterFerry");
  v36 = a1[81];
  v77 = a1[80];
  v78 = v36;
  v79 = *(a1 + 164);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 9;
  strcpy(v80, "ExitFerry");
  v37 = *(a1 + 1336);
  v77 = *(a1 + 1320);
  v78 = v37;
  v79 = *(a1 + 169);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 11;
  strcpy(v80, "ChangeFerry");
  v38 = a1[86];
  v77 = a1[85];
  v78 = v38;
  v79 = *(a1 + 174);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 19;
  strcpy(v80, "EnterRailwayShuttle");
  v39 = *(a1 + 1416);
  v77 = *(a1 + 1400);
  v78 = v39;
  v79 = *(a1 + 179);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 18;
  strcpy(v80, "ExitRailwayShuttle");
  v40 = a1[91];
  v77 = a1[90];
  v78 = v40;
  v79 = *(a1 + 184);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 20;
  strcpy(v80, "ChangeRailwayShuttle");
  v41 = *(a1 + 1496);
  v77 = *(a1 + 1480);
  v78 = v41;
  v79 = *(a1 + 189);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "EnterBusShuttle");
  v42 = a1[96];
  v77 = a1[95];
  v78 = v42;
  v79 = *(a1 + 194);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 14;
  strcpy(v80, "ExitBusShuttle");
  v43 = *(a1 + 1576);
  v77 = *(a1 + 1560);
  v78 = v43;
  v79 = *(a1 + 199);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "ChangeBusShuttle");
  v44 = a1[101];
  v77 = a1[100];
  v78 = v44;
  v79 = *(a1 + 204);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "EnterRoundabout");
  v45 = *(a1 + 1656);
  v77 = *(a1 + 1640);
  v78 = v45;
  v79 = *(a1 + 209);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 14;
  strcpy(v80, "ExitRoundabout");
  v46 = a1[106];
  v77 = a1[105];
  v78 = v46;
  v79 = *(a1 + 214);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 18;
  strcpy(v80, "RoundaboutExitLeft");
  v47 = *(a1 + 1736);
  v77 = *(a1 + 1720);
  v78 = v47;
  v79 = *(a1 + 219);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 19;
  strcpy(v80, "RoundaboutExitRight");
  v48 = a1[111];
  v77 = a1[110];
  v78 = v48;
  v79 = *(a1 + 224);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "UturnRoundabout");
  v49 = *(a1 + 1816);
  v77 = *(a1 + 1800);
  v78 = v49;
  v79 = *(a1 + 229);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit1");
  v50 = a1[116];
  v77 = a1[115];
  v78 = v50;
  v79 = *(a1 + 234);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit2");
  v51 = *(a1 + 1896);
  v77 = *(a1 + 1880);
  v78 = v51;
  v79 = *(a1 + 239);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit3");
  v52 = a1[121];
  v77 = a1[120];
  v78 = v52;
  v79 = *(a1 + 244);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit4");
  v53 = *(a1 + 1976);
  v77 = *(a1 + 1960);
  v78 = v53;
  v79 = *(a1 + 249);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit5");
  v54 = a1[126];
  v77 = a1[125];
  v78 = v54;
  v79 = *(a1 + 254);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit6");
  v55 = *(a1 + 2056);
  v77 = *(a1 + 2040);
  v78 = v55;
  v79 = *(a1 + 259);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit7");
  v56 = a1[131];
  v77 = a1[130];
  v78 = v56;
  v79 = *(a1 + 264);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit8");
  v57 = *(a1 + 2136);
  v77 = *(a1 + 2120);
  v78 = v57;
  v79 = *(a1 + 269);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 15;
  strcpy(v80, "RoundaboutExit9");
  v58 = a1[136];
  v77 = a1[135];
  v78 = v58;
  v79 = *(a1 + 274);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit10");
  v59 = *(a1 + 2216);
  v77 = *(a1 + 2200);
  v78 = v59;
  v79 = *(a1 + 279);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit11");
  v60 = a1[141];
  v77 = a1[140];
  v78 = v60;
  v79 = *(a1 + 284);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit12");
  v61 = *(a1 + 2296);
  v77 = *(a1 + 2280);
  v78 = v61;
  v79 = *(a1 + 289);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit13");
  v62 = a1[146];
  v77 = a1[145];
  v78 = v62;
  v79 = *(a1 + 294);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit14");
  v63 = *(a1 + 2376);
  v77 = *(a1 + 2360);
  v78 = v63;
  v79 = *(a1 + 299);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit15");
  v64 = a1[151];
  v77 = a1[150];
  v78 = v64;
  v79 = *(a1 + 304);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit16");
  v65 = *(a1 + 2456);
  v77 = *(a1 + 2440);
  v78 = v65;
  v79 = *(a1 + 309);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit17");
  v66 = a1[156];
  v77 = a1[155];
  v78 = v66;
  v79 = *(a1 + 314);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit18");
  v67 = *(a1 + 2536);
  v77 = *(a1 + 2520);
  v78 = v67;
  v79 = *(a1 + 319);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "RoundaboutExit19");
  v68 = a1[161];
  v77 = a1[160];
  v78 = v68;
  v79 = *(a1 + 324);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 14;
  strcpy(v80, "ArriveEndOfNav");
  v69 = *(a1 + 2616);
  v77 = *(a1 + 2600);
  v78 = v69;
  v79 = *(a1 + 329);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 21;
  strcpy(v80, "ArriveEndOfDirections");
  v70 = a1[166];
  v77 = a1[165];
  v78 = v70;
  v79 = *(a1 + 334);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 12;
  strcpy(v80, "ArriveAtDest");
  v71 = *(a1 + 2696);
  v77 = *(a1 + 2680);
  v78 = v71;
  v79 = *(a1 + 339);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 16;
  strcpy(v80, "ArriveAtDestLeft");
  v72 = *(a1 + 2776);
  v77 = *(a1 + 2760);
  v78 = v72;
  v79 = *(a1 + 349);
  sub_724830(v80, &v77, v3);
  HIBYTE(v80[2]) = 17;
  strcpy(v80, "ArriveAtDestRight");
  v73 = a1[171];
  v77 = a1[170];
  v78 = v73;
  v79 = *(a1 + 344);
  sub_724830(v80, &v77, v3);
  v75 = *(a1 + 350);
  for (i = *(a1 + 351); v75 != i; v75 += 40)
  {
    sub_722240(v74, v75, v3);
  }
}

void sub_724830(const void **a1, unsigned int *a2, uint64_t *a3)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (v3 + 3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v3 + 3 >= 0x17)
  {
    operator new();
  }

  v33 = 0;
  v34 = 0;
  v32 = &loc_6D754C + 2;
  HIBYTE(v34) = v3 + 3;
  if (v3)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    memmove(&v32 + 3, v7, v3);
  }

  *(&v32 + v3 + 3) = 0;
  if (v34 >= 0)
  {
    v8 = HIBYTE(v34);
  }

  else
  {
    v8 = v33;
  }

  if (v8 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  if (v8 + 18 >= 0x17)
  {
    operator new();
  }

  *&v30 = 11879;
  *v29 = *"Maneuvers.Driving.";
  if (v8)
  {
    if (v34 >= 0)
    {
      v12 = &v32;
    }

    else
    {
      v12 = v32;
    }

    memmove(&v30 + 2, v12, v8);
  }

  *(&v30 + v8 + 2) = 0;
  LODWORD(v39[0]) = v9;
  if (v9)
  {
    LOBYTE(__p[0]) = 4;
    v13 = a3[1];
    if (v13 >= a3[2])
    {
      v15 = sub_7250B4(a3, v29, __p, v39);
    }

    else
    {
      if (SBYTE7(v30) < 0)
      {
        sub_325C(a3[1], v29[0], v29[1]);
      }

      else
      {
        v14 = *v29;
        *(v13 + 16) = v30;
        *v13 = v14;
      }

      *(v13 + 24) = 4;
      *(v13 + 32) = v9;
      *(v13 + 40) = 1;
      v15 = v13 + 48;
      a3[1] = v13 + 48;
    }

    a3[1] = v15;
  }

  if (v34 >= 0)
  {
    v16 = HIBYTE(v34);
  }

  else
  {
    v16 = v33;
  }

  if (v16 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v16 + 18 >= 0x17)
  {
    operator new();
  }

  BYTE3(v39[2]) = 0;
  HIDWORD(v39[2]) = 0;
  strcpy(v39, "Maneuvers.Cycling.");
  if (v16)
  {
    if (v34 >= 0)
    {
      v17 = &v32;
    }

    else
    {
      v17 = v32;
    }

    memmove(&v39[2] + 2, v17, v16);
  }

  *(&v39[2] + v16 + 2) = 0;
  LODWORD(__p[0]) = v10;
  if (v10)
  {
    LOBYTE(v38) = 4;
    v18 = a3[1];
    if (v18 >= a3[2])
    {
      v20 = sub_7250B4(a3, v29, &v38, __p);
    }

    else
    {
      if (SBYTE7(v30) < 0)
      {
        sub_325C(a3[1], v29[0], v29[1]);
      }

      else
      {
        v19 = *v29;
        *(v18 + 16) = v30;
        *v18 = v19;
      }

      *(v18 + 24) = 4;
      *(v18 + 32) = v10;
      *(v18 + 40) = 1;
      v20 = v18 + 48;
      a3[1] = v18 + 48;
    }

    a3[1] = v20;
  }

  if (v34 >= 0)
  {
    v21 = HIBYTE(v34);
  }

  else
  {
    v21 = v33;
  }

  if (v21 + 18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v21 + 18 >= 0x17)
  {
    operator new();
  }

  v36 = 11879;
  *__p = *"Maneuvers.Walking.";
  if (v21)
  {
    if (v34 >= 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32;
    }

    memmove(&v36 + 2, v22, v21);
  }

  *(&v36 + v21 + 2) = 0;
  v38 = v11;
  if (v11)
  {
    v37 = 4;
    v23 = a3[1];
    if (v23 >= a3[2])
    {
      v25 = sub_7250B4(a3, v29, &v37, &v38);
    }

    else
    {
      if (SBYTE7(v30) < 0)
      {
        sub_325C(a3[1], v29[0], v29[1]);
      }

      else
      {
        v24 = *v29;
        *(v23 + 16) = v30;
        *v23 = v24;
      }

      *(v23 + 24) = 4;
      *(v23 + 32) = v11;
      *(v23 + 40) = 1;
      v25 = v23 + 48;
      a3[1] = v23 + 48;
    }

    a3[1] = v25;
  }

  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_87:
    operator delete(v39[0]);
    if ((SBYTE7(v30) & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_88;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39[2]) < 0)
  {
    goto LABEL_87;
  }

LABEL_71:
  if ((SBYTE7(v30) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_88:
  operator delete(v29[0]);
LABEL_72:
  if (*(a1 + 23) >= 0)
  {
    v26 = *(a1 + 23);
  }

  else
  {
    v26 = a1[1];
  }

  if (v26 + 12 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v26 + 12 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  HIBYTE(v36) = v26 + 12;
  if (v26)
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = *a1;
    }

    memmove(__p, v27, v26);
  }

  strcpy(__p + v26, "StepDistance");
  v28 = *(a2 + 1);
  *v29 = *a2;
  v30 = v28;
  v31 = *(a2 + 4);
  HIBYTE(v39[2]) = 18;
  strcpy(v39, "Maneuvers.Driving.");
  sub_725534(v39, __p, &v30, a3);
  HIBYTE(v39[2]) = 18;
  strcpy(v39, "Maneuvers.Cycling.");
  sub_725534(v39, __p, &v30 + 1, a3);
  HIBYTE(v39[2]) = 18;
  strcpy(v39, "Maneuvers.Walking.");
  sub_725534(v39, __p, &v31, a3);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      return;
    }

LABEL_90:
    operator delete(v32);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v34) < 0)
  {
    goto LABEL_90;
  }
}

void sub_724F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  *(v35 + 8) = v36;
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        if (a22 < 0)
        {
          operator delete(a17);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a30);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_725004(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v9 = sub_7250B4(a1, a2, a3, a4);
    a1[1] = v9;
    return v9 - 48;
  }

  else
  {
    v6 = *a3;
    v7 = *a4;
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v8 = *a2;
      *(v5 + 16) = *(a2 + 16);
      *v5 = v8;
    }

    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 40) = 1;
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_7250B4(uint64_t *a1, uint64_t a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_725284(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_725298(uint64_t *a1, uint64_t a2, char *a3, void *a4)
{
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    v8 = sub_725350(a1, a2, a3, a4);
    a1[1] = v8;
    return v8 - 48;
  }

  else
  {
    v6 = *a3;
    if (*(a2 + 23) < 0)
    {
      v10 = a4;
      sub_325C(a1[1], *a2, *(a2 + 8));
      a4 = v10;
    }

    else
    {
      v7 = *a2;
      *(v5 + 16) = *(a2 + 16);
      *v5 = v7;
    }

    *(v5 + 24) = v6;
    *(v5 + 32) = *a4;
    *(v5 + 40) = 1;
    a1[1] = v5 + 48;
    a1[1] = v5 + 48;
    return v5;
  }
}

uint64_t sub_725350(uint64_t *a1, uint64_t a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((a1[1] - *a1) >> 4);
  v9 = *a3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v10 = v8;
  *(v8 + 24) = v9;
  *(v8 + 32) = *a4;
  *(v8 + 40) = 1;
  v11 = v8 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_725520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

void sub_725534(const void **a1, const void **a2, uint64_t *a3, uint64_t *a4)
{
  if (*a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = a1[1];
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v6 + v5 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v22 = 0;
    __p[0] = 0;
    HIBYTE(v22) = v6 + v5;
    if (v5)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(__p, v9, v5);
    }

    v10 = __p + v5;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      memmove(v10, v11, v6);
    }

    v10[v6] = 0;
    v20 = 7;
    if (*a3 < 0)
    {
      v12 = -50;
    }

    else
    {
      v12 = 50;
    }

    v13 = *a3 / 100 + (((5243 * (v12 + *a3 % 100)) >> 19) + ((5243 * (v12 + *a3 % 100)) >> 31));
    v19 = v13;
    v14 = a4[1];
    if (v14 >= a4[2])
    {
      v17 = sub_725350(a4, __p, &v20, &v19);
      v18 = HIBYTE(v22);
      a4[1] = v17;
      if ((v18 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_31;
    }

    v15 = HIBYTE(v22);
    if (SHIBYTE(v22) < 0)
    {
      sub_325C(a4[1], __p[0], __p[1]);
    }

    else
    {
      v16 = *__p;
      *(v14 + 16) = v22;
      *v14 = v16;
    }

    *(v14 + 24) = 7;
    *(v14 + 32) = v13;
    *(v14 + 40) = 1;
    a4[1] = v14 + 48;
    a4[1] = v14 + 48;
    if (v15 < 0)
    {
LABEL_31:
      operator delete(__p[0]);
    }
  }
}

void sub_725760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  *(v17 + 8) = v18;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_725788()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4108 = 0u;
  unk_27A4118 = 0u;
  dword_27A4128 = 1065353216;
  sub_3A9A34(&xmmword_27A4108, v0);
  sub_3A9A34(&xmmword_27A4108, v3);
  sub_3A9A34(&xmmword_27A4108, __p);
  sub_3A9A34(&xmmword_27A4108, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A40E0 = 0;
    qword_27A40E8 = 0;
    qword_27A40D8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_7259D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A40F0)
  {
    qword_27A40F8 = qword_27A40F0;
    operator delete(qword_27A40F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_725A8C(uint64_t a1)
{
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 244) = 0;
  *(a1 + 250) = 0;
  *(a1 + 264) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  *(a1 + 304) = v2;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 336) = v2;
  *(a1 + 352) = v2;
  *(a1 + 368) = 0;
  *(a1 + 370) = 0;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 400) = v2;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 432) = v2;
  *(a1 + 448) = v2;
  *(a1 + 464) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 472) = 0;
  *(a1 + 516) = 0;
  *(a1 + 512) = 0;
  *(a1 + 480) = v2;
  *(a1 + 496) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 521) = 0;
  *(a1 + 525) = 0;
  *(a1 + 528) = v2;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 560) = v2;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0xBFF0000000000000;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 680) = 1;
  *(a1 + 689) = 0;
  *(a1 + 681) = 0;
  *(a1 + 696) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 720) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 768) = v2;
  *(a1 + 784) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 816) = v2;
  *(a1 + 832) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 840) = 0;
  *(a1 + 848) = v2;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 892) = 0;
  *(a1 + 888) = 0;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 920) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 928) = 0;
  *(a1 + 930) = 0;
  *(a1 + 936) = 0;
  *(a1 + 944) = v2;
  *(a1 + 986) = 0;
  *(a1 + 992) = v2;
  *(a1 + 1008) = v2;
  *(a1 + 1024) = v2;
  *(a1 + 1040) = v2;
  *(a1 + 1056) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1159) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1184) = 1;
  *(a1 + 1192) = 0x4020000000000000;
  *(a1 + 1200) = 3;
  *(a1 + 1208) = 200;
  *(a1 + 1216) = xmmword_229EB80;
  *(a1 + 1232) = xmmword_229EB90;
  operator new();
}

void sub_725E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_725EB8(double *a1, void *a2)
{
  strcpy(v5, "obvious_straight_angle");
  HIBYTE(v5[2]) = 22;
  v3 = sub_62A70(a2, v5);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 12);
  switch(v4)
  {
    case 4:
      *a1 = v3[5];
      if (SHIBYTE(v5[2]) < 0)
      {
        goto LABEL_8;
      }

      break;
    case 3:
      *a1 = v3[5];
      if (SHIBYTE(v5[2]) < 0)
      {
LABEL_8:
        operator delete(v5[0]);
      }

      break;
    case 2:
      *a1 = v3[5];
      if ((SHIBYTE(v5[2]) & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_8;
    default:
LABEL_7:
      *a1 = *a1;
      if ((SHIBYTE(v5[2]) & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_8;
  }

  operator new();
}

void sub_72D09C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_72D558(_Unwind_Exception *a1)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x72D550);
}

void sub_72E04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_72E088(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  sub_72E16C(a1, a2, a3, a3 + ((*(a4 + 8) - *a4) >> 3) - 1, *(a4 + 24), v9);
  if (*v9 != -1 || (v6.i64[0] = -1, v6.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v9[8], v6), vceqq_s64(*&v9[24], v6))))) & 1) != 0) || *&v10[0] != -1)
  {
    if (!*(a4 + 24) && (*(a4 + 244) & 1) == 0)
    {
      *(a4 + 24) = 3;
      *(a4 + 232) = 0;
    }

    if (sub_72E82C(a1, a4))
    {
      v7 = *v9;
      *(a4 + 88) = *&v9[16];
      v8 = v10[0];
      *(a4 + 104) = *&v9[32];
      *(a4 + 120) = v8;
      *(a4 + 132) = *(v10 + 12);
      *(a4 + 72) = v7;
    }

    sub_72E9A0(a1, a4);
  }
}

uint64_t sub_72E16C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v11 = *(a1 + 48);
  v12 = *(sub_4D1F50(a2, a3) + 32);
  v13 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    sub_30C50C(v11 + 3896, v12, 0);
  }

  sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v14 = *(a1 + 48);
  v15 = *(sub_4D1F50(v8, a4) + 32);
  v16 = sub_2B51D8(v14, v15 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    sub_30C50C(v14 + 3896, v15, 0);
  }

  result = sub_31D7E8(v14, v15 & 0xFFFFFFFFFFFFLL, 1);
  if (*a1 & 1) == 0 && (*(a1 + 1) & 1) == 0 && *(a1 + 2) != 1 || (result = sub_72EF68(a1, v8, a3, v18), (result))
  {
    LODWORD(v19) = 0;
    v20 = -1;
    v21 = -1;
    goto LABEL_10;
  }

  result = sub_72F0C4(a1, v8, a3, a4);
  v19 = HIDWORD(result);
  if (result > 1)
  {
    if (result == 3)
    {
      v21 = -1;
      v22 = -1;
      v23 = v20;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if (result == 2)
    {
      v22 = -1;
      v21 = v20;
      v23 = -1;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v21 = -1;
    if (!result)
    {
      v20 = -1;
      LODWORD(v19) = 0;
LABEL_10:
      v22 = -1;
      v23 = -1;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    v22 = v20;
    if (result == 1)
    {
      v23 = -1;
      v98 = v13;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  v21 = -1;
  v22 = -1;
  v23 = -1;
  v98 = v13;
  if (*(a1 + 3) != 1)
  {
    goto LABEL_44;
  }

LABEL_25:
  v24 = (v13 - *v13);
  if (*v24 >= 0x9Bu && v24[77] && (*(v13 + v24[77] + 1) & 4) != 0)
  {
    v25 = v24[23];
    if (!v25 || ((v26 = *(v13 + v25), v27 = v26 > 0x2A, v28 = (1 << v26) & 0x50426810004, !v27) ? (v29 = v28 == 0) : (v29 = 1), v29))
    {
LABEL_44:
      v34 = -1;
      if (*(a1 + 4) != 1)
      {
        goto LABEL_70;
      }

      goto LABEL_56;
    }
  }

  v30 = (v16 - *v16);
  v31 = *v30;
  if (v31 < 0x2F || !v30[23] || *(v16 + v30[23]) != 9)
  {
    goto LABEL_46;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    if (v31 < 0x73)
    {
      goto LABEL_46;
    }

    v32 = v30[57];
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = 1;
  }

  else
  {
    if (v31 < 0x73)
    {
      goto LABEL_46;
    }

    v32 = v30[57];
    if (!v32)
    {
      goto LABEL_46;
    }

    v33 = 2;
  }

  if (*(v16 + v32) == v33)
  {
    goto LABEL_44;
  }

LABEL_46:
  v35 = a6;
  v36 = v8;
  v37 = v19;
  v95 = v16;
  v38 = v21;
  v39 = *(a1 + 8);
  v40 = v20;
  v41 = v36;
  result = sub_731448(a1, v36, a4);
  if (result < v39)
  {
    v34 = -1;
  }

  else
  {
    v34 = v42;
  }

  v100 = v34;
  v101 = v40;
  if (v40 == -1)
  {
    v43 = &v100;
  }

  else
  {
    v43 = &v101;
    if (v34 != -1 && v40 < v34)
    {
      v43 = &v100;
    }
  }

  v21 = v38;
  LODWORD(v19) = v37;
  a6 = v35;
  v20 = *v43;
  v16 = v95;
  v8 = v41;
  v13 = v98;
  if (*(a1 + 4) != 1)
  {
LABEL_70:
    v58 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_71;
  }

LABEL_56:
  v44 = (v13 - *v13);
  if (*v44 >= 0x2Fu)
  {
    v45 = v44[23];
    if (v45)
    {
      if (*(v13 + v45) == 51)
      {
        goto LABEL_70;
      }
    }
  }

  v46 = (v16 - *v16);
  if (*v46 < 0x2Fu)
  {
    goto LABEL_70;
  }

  v47 = v46[23];
  if (!v47 || *(v16 + v47) != 51)
  {
    goto LABEL_70;
  }

  v93 = v34;
  v96 = v16;
  v48 = a6;
  v49 = a4;
  v50 = v19;
  v51 = v21;
  v52 = *(a1 + 16);
  v53 = v20;
  v54 = v8;
  v55 = v8;
  v56 = v49;
  result = sub_7315A0(a1, v55, v49);
  if (result < v52)
  {
    v58 = -1;
  }

  else
  {
    v58 = v57;
  }

  v100 = v58;
  v101 = v53;
  if (v53 == -1)
  {
    v59 = &v100;
  }

  else
  {
    v59 = &v101;
    if (v58 != -1 && v53 < v58)
    {
      v59 = &v100;
    }
  }

  v21 = v51;
  LODWORD(v19) = v50;
  a6 = v48;
  v34 = v93;
  v16 = v96;
  v20 = *v59;
  a4 = v56;
  v8 = v54;
  v13 = v98;
  if (*(a1 + 3) != 1)
  {
LABEL_87:
    v73 = -1;
    v75 = -1;
    v76 = a5;
    if ((a5 - 6) < 2)
    {
      goto LABEL_105;
    }

    goto LABEL_88;
  }

LABEL_71:
  v60 = (v13 - *v13);
  if (*v60 >= 0x9Bu)
  {
    v61 = v60[77];
    if (v61)
    {
      if ((*(v13 + v61 + 1) & 8) != 0)
      {
        goto LABEL_87;
      }
    }
  }

  v94 = v34;
  v97 = v58;
  v62 = a6;
  v63 = v22;
  v64 = v16;
  v65 = v21;
  v66 = a4;
  v67 = v19;
  v68 = *(a1 + 8);
  v69 = v20;
  v70 = v8;
  v71 = v66;
  result = sub_7316C0(a1, v70, v66);
  if (result < v68)
  {
    v73 = -1;
  }

  else
  {
    v73 = v72;
  }

  v100 = v73;
  v101 = v69;
  if (v69 == -1)
  {
    v74 = &v100;
  }

  else
  {
    v74 = &v101;
    if (v73 != -1 && v69 < v73)
    {
      v74 = &v100;
    }
  }

  LODWORD(v19) = v67;
  v21 = v65;
  v22 = v63;
  a6 = v62;
  v34 = v94;
  v58 = v97;
  v20 = *v74;
  a4 = v71;
  v16 = v64;
  v13 = v98;
  v75 = -1;
  v76 = a5;
  if ((a5 - 6) >= 2)
  {
LABEL_88:
    if ((v76 - 86) >= 2)
    {
      if ((v76 - 41) < 0x13 || (v77 = (v13 - *v13), *v77 >= 0x2Fu) && (v78 = v77[23]) != 0 && ((v79 = *(v13 + v78), v27 = v79 > 0x36, v80 = (1 << v79) & 0x44000000000008, !v27) ? (v81 = v80 == 0) : (v81 = 1), !v81) || (v82 = (v16 - *v16), *v82 < 0x2Fu) || (v83 = v82[23]) == 0 || ((v84 = *(v16 + v83), v27 = v84 > 0x36, v85 = (1 << v84) & 0x44000000000008, !v27) ? (v86 = v85 == 0) : (v86 = 1), v86))
      {
        v75 = -1;
      }

      else
      {
        v75 = a4;
      }
    }
  }

LABEL_105:
  if (v23 == -1 && v58 == -1 && v22 == -1 && v34 == -1 && v73 == -1 && v75 == -1 && v21 == -1 && ((v87 = (v16 - *v16), *v87 < 0x2Fu) || (v88 = v87[23]) == 0 || ((v89 = *(v16 + v88), v27 = v89 > 0x36, v90 = (1 << v89) & 0x44000000000008, !v27) ? (v91 = v90 == 0) : (v91 = 1), v91)))
  {
    v20 = -1;
    *(a6 + 48) = -1;
    *&v92 = -1;
    *(&v92 + 1) = -1;
    *(a6 + 16) = v92;
    *(a6 + 32) = v92;
    *a6 = v92;
    *(a6 + 56) = 0;
  }

  else
  {
    *a6 = v23;
    *(a6 + 8) = v58;
    *(a6 + 16) = v22;
    *(a6 + 24) = v34;
    *(a6 + 32) = v73;
    *(a6 + 40) = v75;
    *(a6 + 48) = v21;
    *(a6 + 56) = v19;
  }

  *(a6 + 64) = v20;
  *(a6 + 72) = 0;
  return result;
}

uint64_t sub_72E82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a2 + 8) - 8);
  v5 = sub_2B51D8(v3, v4 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    sub_30C50C(v3 + 3896, v4, 0);
  }

  sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 0x9B)
  {
    if (v7 < 0x39)
    {
      return 0;
    }
  }

  else if (v6[77] && (*(v5 + v6[77]) & 3) != 0)
  {
    return 0;
  }

  if (!v6[28])
  {
    return 0;
  }

  if ((*(v5 + v6[28]) & 0x23) == 0 && (*(v5 + v6[28]) & 7) != 4)
  {
    return 0;
  }

  if (v7 >= 0x47)
  {
    v10 = v6[35];
    if (v10)
    {
      if ((*(v5 + v10) & 3) != 0)
      {
        return 0;
      }
    }
  }

  v11 = *(a2 + 24);
  if (v11 - 6 >= 2 && v11 - 86 >= 2)
  {
    if (v11 - 41 < 0x13)
    {
      return 0;
    }
  }

  else if (v11 < 0x56)
  {
    return 0;
  }

  result = 0;
  if ((v11 > 0x23 || ((1 << v11) & 0x805C00010) == 0) && v11 - 91 >= 6)
  {
    return 1;
  }

  return result;
}

void sub_72E9A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) != -1 || *(a2 + 80) != -1 || *(a2 + 88) != -1 || *(a2 + 120) != -1 || *(a2 + 96) != -1 || *(a2 + 104) != -1)
  {
    v7 = 1;
    switch(*(a2 + 24))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x21:
      case 0x3C:
      case 0x3E:
      case 0x41:
      case 0x56:
        goto LABEL_19;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x22:
      case 0x3D:
      case 0x3F:
      case 0x42:
      case 0x57:
        v7 = 2;
LABEL_19:
        *(a2 + 24) = v7;
        break;
      default:
        return;
    }
  }
}

void sub_72EF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_72EF68(uint64_t a1, void *a2, unint64_t a3, double a4)
{
  v7 = sub_4D23F8(a2, a3, a4);
  if (!a3 || v7 > *(a1 + 32) || sub_4D1DC0(a2) - 1 == a3)
  {
    return 0;
  }

  v9 = sub_4D1F50(a2, a3 - 1);
  v10 = sub_4D1F50(a2, a3 + 1);
  v11 = (*v9 - **v9);
  if (*v11 < 0x2Fu)
  {
    return 0;
  }

  v12 = v11[23];
  if (!v11[23])
  {
    return 0;
  }

  v13 = *(a1 + 1);
  v14 = *(*v9 + v12);
  if (v14 != 9)
  {
    if (v14 == 20 || v13 == 0)
    {
      if (v14 == 20)
      {
        goto LABEL_8;
      }
    }

    else if (v14 == 43)
    {
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v15 = (*v10 - **v10);
  if (*v15 < 0x2Fu)
  {
    return 0;
  }

  v16 = v15[23];
  if (!v16)
  {
    return 0;
  }

  v17 = *(*v10 + v16);
  if (v17 == 9)
  {
    return 1;
  }

  if (v17 != 43)
  {
    LOBYTE(v13) = 0;
  }

  return (v17 == 20) | v13 & 1u;
}

uint64_t sub_72F0C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = *(sub_4D1F50(a2, a3) + 32);
  v9 = sub_2B51D8(v7, v8 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v10 = sub_30C50C(v7 + 3896, v8, 0);
    v11 = &v10[-*v10];
    if (*v11 < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        v12 += &v10[*&v10[v12]];
      }
    }

    v13 = v12 + ((v8 >> 30) & 0x3FFFC) + 4 + *(v12 + ((v8 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v13 = 0;
  }

  v53 = 1;
  v58[0] = v9;
  v58[1] = v13;
  v58[2] = sub_31D7E8(v7, v8 & 0xFFFFFFFFFFFFLL, 1);
  v58[3] = v14;
  v58[4] = v8 & 0xFFFFFFFFFFFFFFLL;
  if (*(a1 + 1) == 1)
  {
    v15 = (v9 - *v9);
    v53 = *v15 >= 0x2Fu && (v16 = v15[23]) != 0 && *(v9 + v16) == 43;
  }

  v17 = a3 + 1;
  v18 = sub_4D1DC0(a2);
  if (a3 + 1 > v18)
  {
    v19 = a3 + 1;
  }

  else
  {
    v19 = v18;
  }

  v55 = v19;
  if (v17 >= v18)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v54 = 0;
  do
  {
    v24 = sub_4D1F50(a2, v17);
    v26 = *v24;
    v27 = &(*v24)[-**v24];
    v28 = *v27;
    if (v17 < a4)
    {
      if (v28 < 0x2F)
      {
        goto LABEL_22;
      }

      v29 = *(v27 + 23);
      if (!v29)
      {
        goto LABEL_22;
      }

      v30 = v26[v29];
      if (v30 != 9)
      {
        v31 = v30 == 20;
        v32 = v53;
        if (v30 == 20)
        {
          v32 = 1;
        }

        if ((v32 & 1) == 0)
        {
          v31 = v30 == 43;
        }

        if (!v31)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_43;
    }

    if (v28 < 0x2F)
    {
      goto LABEL_62;
    }

    v33 = *(v27 + 23);
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = v26[v33];
    if (v34 != 9)
    {
      v35 = v34 == 20;
      v36 = v53;
      if (v34 == 20)
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0)
      {
        v35 = v34 == 43;
      }

      if (!v35)
      {
LABEL_62:
        if (!sub_72EF68(a1, a2, v17, v25))
        {
          break;
        }
      }
    }

LABEL_43:
    v37 = *(a1 + 48);
    v38 = v24[4];
    v39 = sub_2B51D8(v37, v38 & 0xFFFFFFFFFFFFLL);
    if (*(v37 + 7772) == 1)
    {
      v40 = sub_30C50C(v37 + 3896, v38, 0);
      v41 = &v40[-*v40];
      if (*v41 < 5u)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v41 + 2);
        if (v42)
        {
          v42 += &v40[*&v40[v42]];
        }
      }

      v43 = (v42 + ((v38 >> 30) & 0x3FFFC) + 4 + *(v42 + ((v38 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_31D7E8(v37, v38 & 0xFFFFFFFFFFFFLL, 1);
    v57[0] = v39;
    v57[1] = v43;
    v57[2] = v44;
    v57[3] = v45;
    v57[4] = (v38 & 0xFFFFFFFFFFFFFFLL);
    v46 = sub_72F450(a1, v58, v57, v21, v20);
    v48 = v46;
    if (v46)
    {
      v20 = HIDWORD(v46);
      v22 = sub_4D23F8(a2, v17, v47);
      v23 = v54;
      if (v21 != v48)
      {
        v23 = 0;
      }

      v54 = v22 + v23;
    }

    else
    {
      v48 = v21;
    }

    v21 = v48;
LABEL_22:
    ++v17;
  }

  while (v55 != v17);
  v49 = v20 << 32;
  if (v21 != 1)
  {
    if ((v21 & 0xFFFFFFFE) == 2)
    {
      v50 = v54 < *(a1 + 40);
      v51 = v49 | v21;
      goto LABEL_56;
    }

    return 0;
  }

  v50 = v54 < *(a1 + 24);
  v51 = v49 | 1;
LABEL_56:
  if (v50)
  {
    return 0;
  }

  else
  {
    return v51;
  }
}

unint64_t sub_72F450(_BYTE *a1, void *a2, int **a3, unsigned int a4, int a5)
{
  if (*a1 == 1)
  {
    v5 = (*a2 - **a2);
    if (*v5 >= 0x2Fu && (v6 = v5[23]) != 0)
    {
      v7 = *(*a2 + v6) != 20;
      if (a1[1] != 1)
      {
LABEL_12:
        v10 = 0;
        if (a1[2] == 1)
        {
          goto LABEL_13;
        }

LABEL_20:
        v13 = 0;
        v15 = !v7;
        if (a4 != 1)
        {
          v15 = 1;
        }

        if (v15)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v7 = 1;
      if (a1[1] != 1)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = 0;
    if (a1[1] != 1)
    {
      goto LABEL_12;
    }
  }

  v8 = (*a2 - **a2);
  if (*v8 < 0x2Fu || (v9 = v8[23]) == 0)
  {
    v10 = 1;
    if (a1[2] == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  v10 = *(*a2 + v9) != 43;
  if (a1[2] != 1)
  {
    goto LABEL_20;
  }

LABEL_13:
  v11 = (*a2 - **a2);
  if (*v11 < 0x2Fu || (v12 = v11[23]) == 0)
  {
    v13 = 1;
    v21 = !v7;
    if (a4 != 1)
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_30;
    }

LABEL_23:
    v16 = *a3;
    v17 = **a3;
    v18 = (*a3 - v17);
    v19 = *v18;
    if (v19 < 0x2F)
    {
      goto LABEL_49;
    }

    v20 = v18[23];
    if (!v20 || *(v16 + v20) != 20)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

  v13 = *(*a2 + v12) != 9;
  v14 = !v7;
  if (a4 != 1)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_30:
  v22 = !v10;
  if (a4 != 2)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    v16 = *a3;
    v17 = **a3;
    v23 = (*a3 - v17);
    v19 = *v23;
    if (v19 >= 0x2F)
    {
      v24 = v23[23];
      if (v24)
      {
        if (*(v16 + v24) == 43)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_49:
    if (v7)
    {
      v30 = *v16;
      if (*(v16 - v30) >= 0x2Fu && *(v16 - v30 + 46) && *(v16 + *(v16 - v30 + 46)) == 20)
      {
        a4 = 1;
        v31 = (v16 - v30);
        v32 = *v31 >= 0x73u;
        if (!*(a3 + 38))
        {
          goto LABEL_71;
        }

        goto LABEL_77;
      }
    }

    if (v10 && (v33 = *v16, *(v16 - v33) >= 0x2Fu) && (v34 = *(v16 - v33 + 46), *(v16 - v33 + 46)))
    {
      v35 = -v33;
      v36 = *(v16 + v34) == 43;
      v37 = !v36;
      if ((v37 & v13 & 1) == 0)
      {
        a4 = 2 * v36;
        v31 = (v16 + v35);
        v32 = *v31 >= 0x73u;
        if (!*(a3 + 38))
        {
LABEL_71:
          if (!v32)
          {
            return a4;
          }

          v38 = v31[57];
          if (!v38)
          {
            return a4;
          }

          if (*(v16 + v38) == 1)
          {
            return a4 | 0x100000000;
          }

          v39 = 2;
          return ((*(v16 + v38) == v39) << 33) | a4;
        }

LABEL_77:
        if (!v32)
        {
          return a4;
        }

        v38 = v31[57];
        if (!v38)
        {
          return a4;
        }

        if (*(v16 + v38) == 2)
        {
          return a4 | 0x100000000;
        }

        v39 = 1;
        return ((*(v16 + v38) == v39) << 33) | a4;
      }
    }

    else
    {
      v35 = -*v16;
      if (!v13)
      {
LABEL_76:
        a4 = 0;
        v31 = (v16 + v35);
        v32 = *v31 >= 0x73u;
        if (!*(a3 + 38))
        {
          goto LABEL_71;
        }

        goto LABEL_77;
      }
    }

    if (*(v16 + v35) >= 0x2Fu && *(v16 + v35 + 46))
    {
      if (*(v16 + *(v16 + v35 + 46)) == 9)
      {
        a4 = 3;
      }

      else
      {
        a4 = 0;
      }

      v31 = (v16 + v35);
      v32 = *v31 >= 0x73u;
      if (!*(a3 + 38))
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v25 = !v13;
  v16 = *a3;
  if (a4 != 3)
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_49;
  }

  v17 = *v16;
  v19 = *(v16 - v17);
  if (v19 < 0x2F || !*(v16 - v17 + 46) || *(v16 + *(v16 - v17 + 46)) != 9)
  {
    goto LABEL_49;
  }

LABEL_43:
  v26 = v16 - v17;
  if (*(a3 + 38))
  {
    if (v19 < 0x73)
    {
      return a4;
    }

    v27 = *(v26 + 57);
    if (!v27)
    {
      return a4;
    }

    v28 = 1;
    if (a5 == 1 && *(v16 + v27) == 2)
    {
      return a4 | 0x100000000;
    }
  }

  else
  {
    if (v19 < 0x73)
    {
      return a4;
    }

    v27 = *(v26 + 57);
    if (!v27)
    {
      return a4;
    }

    v28 = 2;
    if (a5 == 1 && *(v16 + v27) == 1)
    {
      return a4 | 0x100000000;
    }
  }

  if (a5 == 2 && *(v16 + v27) == v28)
  {
    return a4 | 0x200000000;
  }

  return a4;
}

void sub_72F9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_72FA14(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  sub_72E16C(a1, a2, a3, a3 + ((*(a4 + 8) - *a4) >> 3) - 1, *(a4 + 24), v9);
  if (*v9 != -1 || (v6.i64[0] = -1, v6.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v9[8], v6), vceqq_s64(*&v9[24], v6))))) & 1) != 0) || *&v10[0] != -1)
  {
    if (!*(a4 + 24) && (*(a4 + 244) & 1) == 0)
    {
      *(a4 + 24) = 3;
      *(a4 + 232) = 0;
    }

    if (sub_72E82C(a1, a4))
    {
      v7 = *v9;
      *(a4 + 88) = *&v9[16];
      v8 = v10[0];
      *(a4 + 104) = *&v9[32];
      *(a4 + 120) = v8;
      *(a4 + 132) = *(v10 + 12);
      *(a4 + 72) = v7;
    }

    sub_72FAF8(a1, a4);
  }
}

void sub_72FAF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) != -1 || *(a2 + 80) != -1 || *(a2 + 88) != -1 || *(a2 + 120) != -1 || *(a2 + 96) != -1 || *(a2 + 104) != -1)
  {
    v7 = 1;
    switch(*(a2 + 24))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x21:
      case 0x3C:
      case 0x3E:
      case 0x41:
      case 0x56:
        goto LABEL_19;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x22:
      case 0x3D:
      case 0x3F:
      case 0x42:
      case 0x57:
        v7 = 2;
LABEL_19:
        *(a2 + 24) = v7;
        break;
      default:
        return;
    }
  }
}

void sub_730080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_730244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_730280(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  sub_730364(a1, a2, a3, a3 + ((*(a4 + 8) - *a4) >> 3) - 1, *(a4 + 24), v9);
  if (*v9 != -1 || (v6.i64[0] = -1, v6.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v9[8], v6), vceqq_s64(*&v9[24], v6))))) & 1) != 0) || *&v10[0] != -1)
  {
    if (!*(a4 + 24) && (*(a4 + 244) & 1) == 0)
    {
      *(a4 + 24) = 3;
      *(a4 + 232) = 0;
    }

    if (sub_7309F4(a1, a4))
    {
      v7 = *v9;
      *(a4 + 88) = *&v9[16];
      v8 = v10[0];
      *(a4 + 104) = *&v9[32];
      *(a4 + 120) = v8;
      *(a4 + 132) = *(v10 + 12);
      *(a4 + 72) = v7;
    }

    sub_730ADC(a1, a4);
  }
}

uint64_t sub_730364@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = a2;
  v10 = *(a1 + 48);
  v11 = sub_4D1F50(a2, a3);
  v12 = *(v11 + 32);
  v13 = v12 | (*(v11 + 36) << 32);
  v14 = sub_2B51D8(v10, v13);
  if (*(v10 + 7772) == 1)
  {
    sub_30C50C(v10 + 3896, v12, 0);
  }

  sub_31D7E8(v10, v13, 1);
  v15 = *(a1 + 48);
  v16 = sub_4D1F50(v7, a4);
  v18 = *(v16 + 32);
  v17 = *(v16 + 36);
  v19 = v18 | (v17 << 32);
  v20 = sub_2B51D8(v15, v19);
  if (*(v15 + 7772) == 1)
  {
    sub_30C50C(v15 + 3896, v18, 0);
  }

  result = sub_31D7E8(v15, v19, 1);
  if (*a1 & 1) == 0 && (*(a1 + 1) & 1) == 0 && *(a1 + 2) != 1 || (result = sub_72EF68(a1, v7, a3, v22), (result))
  {
    LODWORD(v88) = 0;
    v23 = -1;
    v24 = -1;
    v25 = -1;
    v26 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  result = sub_7310A4(a1, v7, a3, a4);
  v23 = v27;
  if (result > 1)
  {
    if (result == 3)
    {
      LODWORD(v88) = HIDWORD(result);
      v24 = -1;
      v25 = -1;
      v26 = v27;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if (result == 2)
    {
      v25 = -1;
      v24 = v27;
      LODWORD(v88) = HIDWORD(result);
      v26 = -1;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

LABEL_20:
    v24 = -1;
    v25 = -1;
    v88 = HIDWORD(result);
    v26 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  v24 = -1;
  if (result)
  {
    v25 = v27;
    if (result == 1)
    {
      LODWORD(v88) = HIDWORD(result);
      v26 = -1;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v23 = -1;
  LODWORD(v88) = 0;
  v25 = -1;
  v26 = -1;
  if (*(a1 + 3) != 1)
  {
    goto LABEL_44;
  }

LABEL_25:
  v28 = (v14 - *v14);
  if (*v28 >= 0x9Bu && v28[77] && (*(v14 + v28[77] + 1) & 4) != 0)
  {
    v29 = v28[23];
    if (!v29 || ((v30 = *(v14 + v29), v31 = v30 > 0x2A, v32 = (1 << v30) & 0x50426810004, !v31) ? (v33 = v32 == 0) : (v33 = 1), v33))
    {
LABEL_44:
      v38 = -1;
      if (*(a1 + 4) != 1)
      {
        goto LABEL_70;
      }

      goto LABEL_56;
    }
  }

  v34 = (v20 - *v20);
  v35 = *v34;
  if (v35 < 0x2F || !v34[23] || *(v20 + v34[23]) != 9)
  {
    goto LABEL_46;
  }

  if ((v17 & 0x20000000) != 0)
  {
    if (v35 < 0x73)
    {
      goto LABEL_46;
    }

    v36 = v34[57];
    if (!v36)
    {
      goto LABEL_46;
    }

    v37 = 2;
  }

  else
  {
    if (v35 < 0x73)
    {
      goto LABEL_46;
    }

    v36 = v34[57];
    if (!v36)
    {
      goto LABEL_46;
    }

    v37 = 1;
  }

  if (*(v20 + v36) == v37)
  {
    goto LABEL_44;
  }

LABEL_46:
  v39 = v20;
  v40 = v25;
  v41 = *(a1 + 8);
  result = sub_7317E0(a1, v7, a4);
  if (result < v41)
  {
    v38 = -1;
  }

  else
  {
    v38 = v42;
  }

  v91 = v38;
  v92 = v23;
  if (v23 == -1)
  {
    v43 = &v91;
  }

  else
  {
    v43 = &v92;
    if (v38 != -1 && v23 < v38)
    {
      v43 = &v91;
    }
  }

  v25 = v40;
  v23 = *v43;
  v20 = v39;
  if (*(a1 + 4) != 1)
  {
LABEL_70:
    v54 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_71;
  }

LABEL_56:
  v44 = (v14 - *v14);
  if (*v44 >= 0x2Fu)
  {
    v45 = v44[23];
    if (v45)
    {
      if (*(v14 + v45) == 51)
      {
        goto LABEL_70;
      }
    }
  }

  v46 = (v20 - *v20);
  if (*v46 < 0x2Fu)
  {
    goto LABEL_70;
  }

  v47 = v46[23];
  if (!v47 || *(v20 + v47) != 51)
  {
    goto LABEL_70;
  }

  v48 = v7;
  v49 = v38;
  v86 = v20;
  v50 = v25;
  v51 = *(a1 + 16);
  v52 = v48;
  result = sub_731940(a1, v48, a4);
  if (result < v51)
  {
    v54 = -1;
  }

  else
  {
    v54 = v53;
  }

  v91 = v54;
  v92 = v23;
  if (v23 == -1)
  {
    v55 = &v91;
  }

  else
  {
    v55 = &v92;
    if (v54 != -1 && v23 < v54)
    {
      v55 = &v91;
    }
  }

  v25 = v50;
  v38 = v49;
  v23 = *v55;
  v20 = v86;
  v7 = v52;
  if (*(a1 + 3) != 1)
  {
LABEL_87:
    v66 = -1;
    v68 = a5;
    v69 = -1;
    if ((a5 - 6) < 2)
    {
      goto LABEL_105;
    }

    goto LABEL_88;
  }

LABEL_71:
  v56 = (v14 - *v14);
  if (*v56 >= 0x9Bu)
  {
    v57 = v56[77];
    if (v57)
    {
      if ((*(v14 + v57 + 1) & 8) != 0)
      {
        goto LABEL_87;
      }
    }
  }

  v58 = v54;
  v59 = v7;
  v60 = v38;
  v87 = v26;
  v61 = v14;
  v62 = v20;
  v63 = v25;
  v64 = *(a1 + 8);
  result = sub_731A68(a1, v59, a4);
  if (result < v64)
  {
    v66 = -1;
  }

  else
  {
    v66 = v65;
  }

  v91 = v66;
  v92 = v23;
  if (v23 == -1)
  {
    v67 = &v91;
  }

  else
  {
    v67 = &v92;
    if (v66 != -1 && v23 < v66)
    {
      v67 = &v91;
    }
  }

  v68 = a5;
  v25 = v63;
  v38 = v60;
  v54 = v58;
  v23 = *v67;
  v20 = v62;
  v14 = v61;
  v26 = v87;
  v69 = -1;
  if ((a5 - 6) >= 2)
  {
LABEL_88:
    if ((v68 - 86) >= 2)
    {
      if ((v68 - 41) < 0x13 || (v70 = (v14 - *v14), *v70 >= 0x2Fu) && (v71 = v70[23]) != 0 && ((v72 = *(v14 + v71), v31 = v72 > 0x36, v73 = (1 << v72) & 0x44000000000008, !v31) ? (v74 = v73 == 0) : (v74 = 1), !v74) || (v75 = (v20 - *v20), *v75 < 0x2Fu) || (v76 = v75[23]) == 0 || ((v77 = *(v20 + v76), v31 = v77 > 0x36, v78 = (1 << v77) & 0x44000000000008, !v31) ? (v79 = v78 == 0) : (v79 = 1), v79))
      {
        v69 = -1;
      }

      else
      {
        v69 = a4;
      }
    }
  }

LABEL_105:
  if (v26 == -1 && v54 == -1 && v25 == -1 && v38 == -1 && v66 == -1 && v69 == -1 && v24 == -1 && ((v80 = (v20 - *v20), *v80 < 0x2Fu) || (v81 = v80[23]) == 0 || ((v82 = *(v20 + v81), v31 = v82 > 0x36, v83 = (1 << v82) & 0x44000000000008, !v31) ? (v84 = v83 == 0) : (v84 = 1), v84)))
  {
    v23 = -1;
    *(a6 + 48) = -1;
    *&v85 = -1;
    *(&v85 + 1) = -1;
    *(a6 + 16) = v85;
    *(a6 + 32) = v85;
    *a6 = v85;
    *(a6 + 56) = 0;
  }

  else
  {
    *a6 = v26;
    *(a6 + 8) = v54;
    *(a6 + 16) = v25;
    *(a6 + 24) = v38;
    *(a6 + 32) = v66;
    *(a6 + 40) = v69;
    *(a6 + 48) = v24;
    *(a6 + 56) = v88;
  }

  *(a6 + 64) = v23;
  *(a6 + 72) = 0;
  return result;
}

BOOL sub_7309F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a2 + 8) - 8);
  sub_2B51D8(v3, v4 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    sub_30C50C(v3 + 3896, v4, 0);
  }

  sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v5 = *(a2 + 24);
  if (v5 - 6 >= 2 && v5 - 86 >= 2)
  {
    if (v5 - 41 < 0x13)
    {
      return 0;
    }
  }

  else if (v5 < 0x56)
  {
    return 0;
  }

  if (v5 > 0x23 || ((1 << v5) & 0x805C00010) == 0)
  {
    return v5 - 91 >= 6;
  }

  return 0;
}

void sub_730ADC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) != -1 || *(a2 + 80) != -1 || *(a2 + 88) != -1 || *(a2 + 120) != -1 || *(a2 + 96) != -1 || *(a2 + 104) != -1)
  {
    v7 = 1;
    switch(*(a2 + 24))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x21:
      case 0x3C:
      case 0x3E:
      case 0x41:
      case 0x56:
        goto LABEL_19;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x22:
      case 0x3D:
      case 0x3F:
      case 0x42:
      case 0x57:
        v7 = 2;
LABEL_19:
        *(a2 + 24) = v7;
        break;
      default:
        return;
    }
  }
}

void sub_731064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7310A4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = sub_4D1F50(a2, a3);
  v9 = *(v8 + 32);
  v10 = *(v8 + 36);
  v11 = ((v10 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v10 << 32) | v9;
  v12 = sub_2B51D8(v7, ((v10 & 0x20000000u) << 19) | (v10 << 32) & 0xFFFFFFFFFFFFLL | v9 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v13 = sub_30C50C(v7 + 3896, v9, 0);
    v14 = &v13[-*v13];
    if (*v14 < 5u)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v15 += &v13[*&v13[v15]];
      }
    }

    v16 = v15 + 4 * v10 + 4 + *(v15 + 4 * v10 + 4);
  }

  else
  {
    v16 = 0;
  }

  v58 = 1;
  v63[0] = v12;
  v63[1] = v16;
  v63[2] = sub_31D7E8(v7, v11 & 0xFFFFFFFFFFFFLL, 1);
  v63[3] = v17;
  v63[4] = v11 ^ 0x1000000000000;
  if (*(a1 + 1) == 1)
  {
    v18 = (v12 - *v12);
    v58 = *v18 >= 0x2Fu && (v19 = v18[23]) != 0 && *(v12 + v19) == 43;
  }

  v20 = a3 + 1;
  v21 = sub_4D1DC0(a2);
  if (a3 + 1 > v21)
  {
    v22 = a3 + 1;
  }

  else
  {
    v22 = v21;
  }

  v60 = v22;
  if (v20 >= v21)
  {
    return 0;
  }

  v23 = 0;
  v24 = 0;
  v59 = 0;
  do
  {
    v27 = sub_4D1F50(a2, v20);
    v29 = *v27;
    v30 = (*v27 - **v27);
    v31 = *v30;
    if (v20 < a4)
    {
      if (v31 < 0x2F)
      {
        goto LABEL_22;
      }

      v32 = v30[23];
      if (!v32)
      {
        goto LABEL_22;
      }

      v33 = v29[v32];
      if (v33 != 9)
      {
        v34 = v33 == 20;
        v35 = v58;
        if (v33 == 20)
        {
          v35 = 1;
        }

        if ((v35 & 1) == 0)
        {
          v34 = v33 == 43;
        }

        if (!v34)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_43;
    }

    if (v31 < 0x2F)
    {
      goto LABEL_62;
    }

    v36 = v30[23];
    if (!v36)
    {
      goto LABEL_62;
    }

    v37 = v29[v36];
    if (v37 != 9)
    {
      v38 = v37 == 20;
      v39 = v58;
      if (v37 == 20)
      {
        v39 = 1;
      }

      if ((v39 & 1) == 0)
      {
        v38 = v37 == 43;
      }

      if (!v38)
      {
LABEL_62:
        if (!sub_72EF68(a1, a2, v20, v28))
        {
          break;
        }
      }
    }

LABEL_43:
    v40 = *(a1 + 48);
    v42 = *(v27 + 8);
    v41 = *(v27 + 9);
    v43 = ((v41 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v41 << 32) | v42;
    v44 = sub_2B51D8(v40, ((v41 & 0x20000000u) << 19) | (v41 << 32) & 0xFFFFFFFFFFFFLL | v42 & 0xFFFFFFFFFFFFLL);
    if (*(v40 + 7772) == 1)
    {
      v45 = sub_30C50C(v40 + 3896, v42, 0);
      v46 = &v45[-*v45];
      if (*v46 < 5u)
      {
        v47 = 0;
      }

      else
      {
        v47 = *(v46 + 2);
        if (v47)
        {
          v47 += &v45[*&v45[v47]];
        }
      }

      v48 = (v47 + 4 * v41 + 4 + *(v47 + 4 * v41 + 4));
    }

    else
    {
      v48 = 0;
    }

    v49 = sub_31D7E8(v40, v43 & 0xFFFFFFFFFFFFLL, 1);
    v62[0] = v44;
    v62[1] = v48;
    v62[2] = v49;
    v62[3] = v50;
    v62[4] = (v43 ^ 0x1000000000000);
    v51 = sub_72F450(a1, v63, v62, v24, v23);
    v53 = v51;
    if (v51)
    {
      v23 = HIDWORD(v51);
      v25 = sub_4D23F8(a2, v20, v52);
      v26 = v59;
      if (v24 != v53)
      {
        v26 = 0;
      }

      v59 = v25 + v26;
    }

    else
    {
      v53 = v24;
    }

    v24 = v53;
LABEL_22:
    ++v20;
  }

  while (v60 != v20);
  v54 = v23 << 32;
  if (v24 != 1)
  {
    if ((v24 & 0xFFFFFFFE) == 2)
    {
      v55 = v59 < *(a1 + 40);
      v56 = v54 | v24;
      goto LABEL_56;
    }

    return 0;
  }

  v55 = v59 < *(a1 + 24);
  v56 = v54 | 1;
LABEL_56:
  if (v55)
  {
    return 0;
  }

  else
  {
    return v56;
  }
}

uint64_t sub_731448(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = *(sub_4D1F50(a2, a3) + 32);
    v11 = sub_2B51D8(v9, v10 & 0xFFFFFFFFFFFFLL);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
    v13 = (v11 - *v11);
    if (*v13 < 0x9Bu || !v13[77] || (*(v11 + v13[77] + 1) & 4) == 0)
    {
      break;
    }

    v14 = v13[23];
    if (v14)
    {
      v15 = *(v11 + v14);
      v16 = v15 > 0x2A;
      v17 = (1 << v15) & 0x50426810004;
      if (!v16 && v17 != 0)
      {
        break;
      }
    }

    v8 += sub_4D23F8(a2, a3++, v12);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_7315A0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = *(sub_4D1F50(a2, a3) + 32);
    v11 = sub_2B51D8(v9, v10 & 0xFFFFFFFFFFFFLL);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
    v13 = (v11 - *v11);
    if (*v13 < 0x2Fu)
    {
      break;
    }

    v14 = v13[23];
    if (!v14)
    {
      break;
    }

    if (*(v11 + v14) != 51)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v12);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_7316C0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = *(sub_4D1F50(a2, a3) + 32);
    v11 = sub_2B51D8(v9, v10 & 0xFFFFFFFFFFFFLL);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
    v13 = (v11 - *v11);
    if (*v13 < 0x9Bu)
    {
      break;
    }

    v14 = v13[77];
    if (!v14)
    {
      break;
    }

    if ((*(v11 + v14 + 1) & 8) == 0)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v12);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_7317E0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = sub_4D1F50(a2, a3);
    v11 = *(v10 + 32);
    v12 = v11 | (*(v10 + 36) << 32);
    v13 = sub_2B51D8(v9, v12);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v11, 0);
    }

    sub_31D7E8(v9, v12, 1);
    v15 = (v13 - *v13);
    if (*v15 < 0x9Bu || !v15[77] || (*(v13 + v15[77] + 1) & 4) == 0)
    {
      break;
    }

    v16 = v15[23];
    if (v16)
    {
      v17 = *(v13 + v16);
      v18 = v17 > 0x2A;
      v19 = (1 << v17) & 0x50426810004;
      if (!v18 && v19 != 0)
      {
        break;
      }
    }

    v8 += sub_4D23F8(a2, a3++, v14);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_731940(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = sub_4D1F50(a2, a3);
    v11 = *(v10 + 32);
    v12 = v11 | (*(v10 + 36) << 32);
    v13 = sub_2B51D8(v9, v12);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v11, 0);
    }

    sub_31D7E8(v9, v12, 1);
    v15 = (v13 - *v13);
    if (*v15 < 0x2Fu)
    {
      break;
    }

    v16 = v15[23];
    if (!v16)
    {
      break;
    }

    if (*(v13 + v16) != 51)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v14);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_731A68(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = sub_4D1F50(a2, a3);
    v11 = *(v10 + 32);
    v12 = v11 | (*(v10 + 36) << 32);
    v13 = sub_2B51D8(v9, v12);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v11, 0);
    }

    sub_31D7E8(v9, v12, 1);
    v15 = (v13 - *v13);
    if (*v15 < 0x9Bu)
    {
      break;
    }

    v16 = v15[77];
    if (!v16)
    {
      break;
    }

    if ((*(v13 + v16 + 1) & 8) == 0)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v14);
  }

  while (v7 != a3);
  return v8;
}

void sub_731B90()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4160 = 0u;
  *algn_27A4170 = 0u;
  dword_27A4180 = 1065353216;
  sub_3A9A34(&xmmword_27A4160, v0);
  sub_3A9A34(&xmmword_27A4160, v3);
  sub_3A9A34(&xmmword_27A4160, __p);
  sub_3A9A34(&xmmword_27A4160, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4138 = 0;
    qword_27A4140 = 0;
    qword_27A4130 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_731DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4148)
  {
    qword_27A4150 = qword_27A4148;
    operator delete(qword_27A4148);
  }

  _Unwind_Resume(exception_object);
}

void *sub_731E84(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      v3 = "NO_TURN";
      goto LABEL_86;
    case 1:
      v3 = "LEFT_TURN";
      goto LABEL_35;
    case 2:
      v3 = "RIGHT_TURN";
      goto LABEL_54;
    case 3:
      v3 = "STRAIGHT_AHEAD";
      goto LABEL_82;
    case 4:
      v3 = "U_TURN";
      v4 = 6;
      goto LABEL_89;
    case 5:
      v3 = "FOLLOW_ROAD";
      goto LABEL_41;
    case 6:
      v3 = "ENTER_ROUNDABOUT";
      goto LABEL_77;
    case 7:
      v3 = "EXIT_ROUNDABOUT";
      goto LABEL_75;
    case 11:
      v3 = "OFF_RAMP";
      v4 = 8;
      goto LABEL_89;
    case 12:
      v3 = "ON_RAMP";
      goto LABEL_86;
    case 16:
      v3 = "ARRIVE_END_OF_NAVIGATION";
      goto LABEL_84;
    case 17:
      v3 = "START_ROUTE";
      goto LABEL_41;
    case 18:
      v3 = "ARRIVE_AT_DESTINATION";
      goto LABEL_88;
    case 20:
      v3 = "KEEP_LEFT";
LABEL_35:
      v4 = 9;
      goto LABEL_89;
    case 21:
      v3 = "KEEP_RIGHT";
      goto LABEL_54;
    case 22:
      v3 = "ENTER_FERRY";
      goto LABEL_41;
    case 23:
      v3 = "EXIT_FERRY";
LABEL_54:
      v4 = 10;
      goto LABEL_89;
    case 24:
      v3 = "CHANGE_FERRY";
      goto LABEL_63;
    case 25:
      v3 = "START_ROUTE_WITH_U_TURN";
      goto LABEL_60;
    case 26:
      v3 = "U_TURN_AT_ROUNDABOUT";
      goto LABEL_66;
    case 27:
      v3 = "LEFT_TURN_AT_END";
      goto LABEL_77;
    case 28:
      v3 = "RIGHT_TURN_AT_END";
      goto LABEL_73;
    case 29:
      v3 = "HIGHWAY_OFF_RAMP_LEFT";
      goto LABEL_88;
    case 30:
      v3 = "HIGHWAY_OFF_RAMP_RIGHT";
      goto LABEL_68;
    case 33:
      v3 = "ARRIVE_AT_DESTINATION_LEFT";
      v4 = 26;
      goto LABEL_89;
    case 34:
      v3 = "ARRIVE_AT_DESTINATION_RIGHT";
      v4 = 27;
      goto LABEL_89;
    case 35:
      v3 = "U_TURN_WHEN_POSSIBLE";
      goto LABEL_66;
    case 39:
      v3 = "ARRIVE_END_OF_DIRECTIONS";
      goto LABEL_84;
    case 41:
      v3 = "ROUNDABOUT_EXIT_1";
      goto LABEL_73;
    case 42:
      v3 = "ROUNDABOUT_EXIT_2";
      goto LABEL_73;
    case 43:
      v3 = "ROUNDABOUT_EXIT_3";
      goto LABEL_73;
    case 44:
      v3 = "ROUNDABOUT_EXIT_4";
      goto LABEL_73;
    case 45:
      v3 = "ROUNDABOUT_EXIT_5";
      goto LABEL_73;
    case 46:
      v3 = "ROUNDABOUT_EXIT_6";
      goto LABEL_73;
    case 47:
      v3 = "ROUNDABOUT_EXIT_7";
      goto LABEL_73;
    case 48:
      v3 = "ROUNDABOUT_EXIT_8";
      goto LABEL_73;
    case 49:
      v3 = "ROUNDABOUT_EXIT_9";
      goto LABEL_73;
    case 50:
      v3 = "ROUNDABOUT_EXIT_10";
      goto LABEL_80;
    case 51:
      v3 = "ROUNDABOUT_EXIT_11";
      goto LABEL_80;
    case 52:
      v3 = "ROUNDABOUT_EXIT_12";
      goto LABEL_80;
    case 53:
      v3 = "ROUNDABOUT_EXIT_13";
      goto LABEL_80;
    case 54:
      v3 = "ROUNDABOUT_EXIT_14";
      goto LABEL_80;
    case 55:
      v3 = "ROUNDABOUT_EXIT_15";
      goto LABEL_80;
    case 56:
      v3 = "ROUNDABOUT_EXIT_16";
      goto LABEL_80;
    case 57:
      v3 = "ROUNDABOUT_EXIT_17";
      goto LABEL_80;
    case 58:
      v3 = "ROUNDABOUT_EXIT_18";
      goto LABEL_80;
    case 59:
      v3 = "ROUNDABOUT_EXIT_19";
      goto LABEL_80;
    case 60:
      v3 = "SHARP_LEFT_TURN";
LABEL_75:
      v4 = 15;
      goto LABEL_89;
    case 61:
      v3 = "SHARP_RIGHT_TURN";
      goto LABEL_77;
    case 62:
      v3 = "SLIGHT_LEFT_TURN";
      goto LABEL_77;
    case 63:
      v3 = "SLIGHT_RIGHT_TURN";
      goto LABEL_73;
    case 64:
      v3 = "CHANGE_HIGHWAY";
LABEL_82:
      v4 = 14;
      goto LABEL_89;
    case 65:
      v3 = "CHANGE_HIGHWAY_LEFT";
      goto LABEL_70;
    case 66:
      v3 = "CHANGE_HIGHWAY_RIGHT";
      goto LABEL_66;
    case 82:
      v3 = "WAYPOINT_STOP";
      v4 = 13;
      goto LABEL_89;
    case 83:
      v3 = "WAYPOINT_STOP_LEFT";
      goto LABEL_80;
    case 84:
      v3 = "WAYPOINT_STOP_RIGHT";
LABEL_70:
      v4 = 19;
      goto LABEL_89;
    case 85:
      v3 = "RESUME_ROUTE";
LABEL_63:
      v4 = 12;
      goto LABEL_89;
    case 86:
      v3 = "ROUNDABOUT_EXIT_LEFT";
      goto LABEL_66;
    case 87:
      v3 = "ROUNDABOUT_EXIT_RIGHT";
      goto LABEL_88;
    case 88:
      v3 = "RESUME_ROUTE_WITH_U_TURN";
      goto LABEL_84;
    case 89:
      v3 = "FOLLOW_ROAD_ENTER_DETOUR";
LABEL_84:
      v4 = 24;
      goto LABEL_89;
    case 90:
      v3 = "FOLLOW_ROAD_EXIT_DETOUR";
LABEL_60:
      v4 = 23;
      goto LABEL_89;
    case 91:
      v3 = "ENTER_RAILWAY_SHUTTLE";
LABEL_88:
      v4 = 21;
      goto LABEL_89;
    case 92:
      v3 = "EXIT_RAILWAY_SHUTTLE";
LABEL_66:
      v4 = 20;
      goto LABEL_89;
    case 93:
      v3 = "CHANGE_RAILWAY_SHUTTLE";
LABEL_68:
      v4 = 22;
      goto LABEL_89;
    case 94:
      v3 = "ENTER_BUS_SHUTTLE";
LABEL_73:
      v4 = 17;
      goto LABEL_89;
    case 95:
      v3 = "EXIT_BUS_SHUTTLE";
LABEL_77:
      v4 = 16;
      goto LABEL_89;
    case 96:
      v3 = "CHANGE_BUS_SHUTTLE";
LABEL_80:
      v4 = 18;
      goto LABEL_89;
    case 97:
      v3 = "TURN_AROUND";
LABEL_41:
      v4 = 11;
      goto LABEL_89;
    case 98:
      v3 = "UNKNOWN";
LABEL_86:
      v4 = 7;
LABEL_89:
      sub_4A5C(a1, v3, v4);
      break;
    default:
      return a1;
  }

  return a1;
}

void sub_73245C(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "MultiPointRouteAligner");
  v5[23] = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  *a1 = xmmword_229EBA0;
  *(a1 + 16) = xmmword_229EBB0;
  *(a1 + 32) = 0;
  sub_732F3C(a1, v3);
}

void sub_732560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_732584(int a1, unint64_t a2, int **a3, double a4, double a5, double a6, double a7)
{
  v12 = a2 - 1;
  LODWORD(v13) = *(sub_37268(a3, a2 - 1) + 4);
  v14 = exp(v13 * -6.28318531 / 4294967300.0 + 3.14159265);
  v15 = atan((v14 - 1.0 / v14) * 0.5);
  v16 = 0.00932288077 / (1.0 / cos(v15 * 57.2957795 / 180.0 * 3.14159265));
  v17 = &(*a3)[3 * v12];
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_37268(a3, v12);
  v21 = *v20;
  v22 = v20[1];
  v111 = v12;
  do
  {
    if (!v12)
    {
      break;
    }

    v23 = sub_37268(a3, --v12);
  }

  while (sqrt(((*v23 - v21) * (*v23 - v21) + (v23[1] - v22) * (v23[1] - v22))) / 100.0 <= a6);
  v24 = sub_37268(a3, v12);
  v26 = v24[1];
  v27 = 0.0;
  v28 = v18 == *v24 && v19 == v26;
  v29 = v111;
  if (!v28)
  {
    v30 = -(*v24 - v18);
    if (v18 - *v24 < (*v24 - v18))
    {
      v30 = (v18 - *v24);
    }

    v31 = atan2(v19 - v26, v30);
    HIDWORD(v25) = 1080459264;
    v27 = (v31 + 1.57079633) * 180.0 / 3.14159265;
    if (v27 >= 180.0)
    {
      HIDWORD(v25) = 1080459264;
      do
      {
        v27 = v27 + -360.0;
      }

      while (v27 >= 180.0);
    }

    if (v27 < -180.0)
    {
      HIDWORD(v25) = -1067024384;
      do
      {
        v27 = v27 + 360.0;
      }

      while (v27 < -180.0);
    }
  }

  if (a2)
  {
    v112 = 0;
    HIDWORD(v32) = 1073291771;
    for (i = a2; ; --i)
    {
      v33 = &(*a3)[3 * v29];
      LODWORD(v32) = *v33;
      LODWORD(v25) = v33[1];
      v34 = *&v32;
      v35 = *&v25;
      v36 = v111;
      if (v29 == v111)
      {
        v37 = sub_37268(a3, v111);
        v38 = *v37;
        v39 = v37[1];
        do
        {
          if (!v36)
          {
            break;
          }

          v40 = sub_37268(a3, --v36);
        }

        while (sqrt(((*v40 - v38) * (*v40 - v38) + (v40[1] - v39) * (v40[1] - v39))) / 100.0 <= a6);
        v41 = sub_37268(a3, v36);
        v42 = v41[1];
        v43 = v34 - *v41;
        v44 = v35 - v42;
        if (v42 >= 0xFFFFFFFE)
        {
          v42 = -2;
        }

        v45 = &(*a3)[3 * v111];
        v47 = *v45;
        v46 = v45[1];
        j = 0.0;
        v49 = v47 - *v41;
        if (v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = v42 == v46;
        }

        if (!v50)
        {
          v51 = -(*v41 - v47);
          if (v47 - *v41 < *v41 - v47)
          {
            v51 = v49;
          }

            ;
          }

            ;
          }
        }
      }

      else if (v29)
      {
        v52 = sub_37268(a3, v29);
        v53 = *v52;
        v54 = v52[1];
        v55 = v29;
        do
        {
          if (!v55)
          {
            break;
          }

          v56 = sub_37268(a3, --v55);
        }

        while (sqrt(((*v56 - v53) * (*v56 - v53) + (v56[1] - v54) * (v56[1] - v54))) / 100.0 <= a6);
        v57 = *sub_37268(a3, v55);
        v58 = sub_37268(a3, v29);
        v59 = *v58;
        v60 = v58[1];
        v61 = i;
        while (v61 < a2)
        {
          v62 = sub_37268(a3, v61++);
          if (sqrt(((*v62 - v59) * (*v62 - v59) + (v62[1] - v60) * (v62[1] - v60))) / 100.0 > a6)
          {
            v63 = v61 - 1;
            goto LABEL_48;
          }
        }

        v63 = -1 - 0x5555555555555555 * (a3[1] - *a3);
LABEL_48:
        v70 = sub_37268(a3, v63);
        v71 = HIDWORD(v57);
        v72 = *v70;
        v73 = HIDWORD(*v70);
        v74 = v73;
        if (*v70 == v57 && HIDWORD(v57) == v73)
        {
          v77 = v74 - v71;
          j = 0.0;
        }

        else
        {
          v76 = (*v70 - v57);
          if (*v70 - v57 >= v57 - *v70)
          {
            v76 = -(v57 - *v70);
          }

          v77 = v74 - v71;
            ;
          }

            ;
          }
        }

        v43 = (v72 - v57) * 0.5;
        v44 = v77 * 0.5;
      }

      else
      {
        v64 = sub_37268(a3, 0);
        v66 = *v64;
        v65 = v64[1];
        v67 = 1;
        while (a2 != v67)
        {
          v68 = sub_37268(a3, v67++);
          if (sqrt(((*v68 - v66) * (*v68 - v66) + (v68[1] - v65) * (v68[1] - v65))) / 100.0 > a6)
          {
            v69 = v67 - 1;
            goto LABEL_62;
          }
        }

        v69 = -1 - 0x5555555555555555 * (a3[1] - *a3);
LABEL_62:
        v78 = sub_37268(a3, v69);
        v79 = v78[1];
        v43 = *v78 - v34;
        v44 = v79 - v35;
        v80 = *a3;
        if (v79 >= 0xFFFFFFFE)
        {
          v79 = -2;
        }

        v82 = *v80;
        v81 = v80[1];
        j = 0.0;
        v83 = *v78 - v82;
        if (v83)
        {
          v84 = 0;
        }

        else
        {
          v84 = v81 == v79;
        }

        if (!v84)
        {
          v85 = -(v82 - *v78);
          if (*v78 - v82 < v82 - *v78)
          {
            v85 = v83;
          }

            ;
          }

            ;
          }
        }
      }

      sub_455D0(v27, j);
      if (v32 > a7)
      {
        break;
      }

      v86 = -v43;
      if (a1)
      {
        v86 = v43;
        v87 = -v44;
      }

      else
      {
        v87 = v44;
      }

      v88 = sqrt(v86 * v86 + v87 * v87);
      v89 = 0.0;
      v90 = 0.0;
      if (v88 != 0.0)
      {
        v90 = v87 / v88;
        v89 = v86 / v88;
      }

      v91 = v112 >> 4;
      if (((v112 >> 4) + 1) >> 60)
      {
        sub_1794();
      }

      if (v112 >> 4 != -1)
      {
        if (!(((v112 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v92 = (16 * v91);
      *v92 = a4 * v90 / v16;
      v92[1] = a4 * v89 / v16;
      memcpy(0, 0, v112);
      v93 = 16 * v91 + 16;
      if (!v29)
      {
        goto LABEL_91;
      }

      v112 = 16 * v91 + 16;
      v94 = *a3;
      v95 = sub_37268(a3, v29);
      v96 = &v94[3 * v29];
      v97 = *v95;
      v98 = v95[1];
      v99 = v29;
      do
      {
        if (!v99)
        {
          break;
        }

        v100 = sub_37268(a3, --v99);
      }

      while (sqrt(((*v100 - v97) * (*v100 - v97) + (v100[1] - v98) * (v100[1] - v98))) / 100.0 <= a6);
      v101 = sub_37268(a3, v99);
      v102 = v96[1] - HIDWORD(*v101);
      HIDWORD(v25) = HIDWORD(a5);
      v32 = sqrt(((*v96 - *v101) * (*v96 - *v101) + v102 * v102)) / -100.0 * a5;
      a4 = a4 + v32;
      if (a4 <= 0.0)
      {
        break;
      }

      --v29;
    }

    v93 = v112;
LABEL_91:
    if (v93)
    {
      v103 = v93 >> 4;
      v104 = 3 * a2;
      v105 = dword_8;
      do
      {
        v106 = &(*a3)[v104];
        LODWORD(v32) = *(v106 - 12);
        LODWORD(v25) = *(v106 - 8);
        v32 = *(v105 - 1) + *&v32;
        v25 = *v105 + *&v25;
        LODWORD(v107) = v25;
        v108 = *(v106 - 4);
        if (v25 >= 0xFFFFFFFE)
        {
          v107 = 4294967294;
        }

        else
        {
          v107 = v107;
        }

        *(v106 - 12) = v32 | (v107 << 32);
        *(v106 - 4) = 0x7FFFFFFF;
        (*a3)[v104 - 1] = v108;
        v104 -= 3;
        v105 += 2;
        --v103;
      }

      while (v103);
      operator delete(0);
    }
  }
}

void sub_732EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    v14 = a1;
    operator delete(__p);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

void sub_732F3C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *(a1 + 32) = sub_5FBE4(a2, __p, (a1 + 32));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "minimum_shift_gap");
  sub_63EC4(a2, __p, a1);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "maximum_shift_gap");
  sub_63EC4(a2, __p, (a1 + 8));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_7331D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_733204(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "MultiPointRouteAligner");
  v5[23] = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  *a1 = xmmword_229EBA0;
  *(a1 + 16) = xmmword_229EBB0;
  *(a1 + 32) = 0;
  sub_73332C(a1, v3);
}

void sub_733308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_73332C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *(a1 + 32) = sub_5FBE4(a2, __p, (a1 + 32));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "minimum_shift_gap");
  sub_63EC4(a2, __p, a1);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "maximum_shift_gap");
  sub_63EC4(a2, __p, (a1 + 8));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_7335C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7335F4(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "MultiPointRouteAligner");
  v5[23] = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  *a1 = xmmword_229EBA0;
  *(a1 + 16) = xmmword_229EBB0;
  *(a1 + 32) = 0;
  sub_73371C(a1, v3);
}

void sub_7336F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_73371C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *(a1 + 32) = sub_5FBE4(a2, __p, (a1 + 32));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "minimum_shift_gap");
  sub_63EC4(a2, __p, a1);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "maximum_shift_gap");
  sub_63EC4(a2, __p, (a1 + 8));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_7339B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7339E4(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = nullsub_1(a2);
    v78 = 0x5DDB1ADCB91F64A7 * ((v2[1] - *v2) >> 4);
    if (v78 >= 2)
    {
      v3 = 1;
      v4 = -6.28318531;
      v5 = 1.0;
      while (1)
      {
        v6 = sub_68C454(a2, v3);
        v81 = v3;
        v7 = sub_68C454(a2, v3 - 1);
        v8 = sub_69CB14(v6, 0);
        v9 = sub_4D1DC0(v7);
        v10 = sub_69CB14(v7, v9 - 1);
        v82 = v7;
        if (*v8 == v8[1])
        {
          break;
        }

LABEL_7:
        v11 = sub_4D1DC0(v7);
        v13 = *v10;
        v12 = v10[1];
        v14 = *v10 == v12;
        if (*v10 == v12)
        {
          v15 = (v11 - 1);
          if ((v15 & 0x80000000) == 0)
          {
            v16 = v15 - 1;
            while (1)
            {
              while (1)
              {
                v18 = sub_69CB14(v7, v16);
                if (v10 != v18)
                {
                  break;
                }

                v13 = *v10;
                v12 = v10[1];
                v14 = *v10 == v12;
                if (*v10 != v12 || v16-- == -1)
                {
                  goto LABEL_40;
                }
              }

              v20 = *v18;
              v19 = v18[1];
              v21 = &v19[-*v18];
              v22 = v10[2];
              v23 = *v10;
              if (v22 - *v10 < v21)
              {
                break;
              }

              v27 = v10[1];
              v28 = v27 - v23;
              if (v27 - v23 >= v21)
              {
                if (v19 != v20)
                {
                  v29 = *v10;
                  memmove(v23, v20, v21);
                  v23 = v29;
                }

                v12 = &v23[v21];
              }

              else
              {
                if (v27 != v23)
                {
                  memmove(v23, v20, v27 - v23);
                  v27 = v10[1];
                }

                if (v19 != &v20[v28])
                {
                  memmove(v27, &v20[v28], v19 - &v20[v28]);
                }

                v12 = &v27[v19 - &v20[v28]];
              }

              v10[1] = v12;
              v13 = *v10;
              v14 = *v10 == v12;
              if (*v10 != v12 || v16-- == -1)
              {
                goto LABEL_40;
              }
            }

            if (v23)
            {
              v10[1] = v23;
              operator delete(v23);
              v22 = 0;
              *v10 = 0;
              v10[1] = 0;
              v10[2] = 0;
            }

            v24 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 2);
            if (v24 <= 0x1555555555555555)
            {
              v25 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 2);
              if (2 * v25 > v24)
              {
                v24 = 2 * v25;
              }

              if (v25 >= 0xAAAAAAAAAAAAAAALL)
              {
                v26 = 0x1555555555555555;
              }

              else
              {
                v26 = v24;
              }

              if (v26 <= 0x1555555555555555)
              {
                operator new();
              }
            }

            goto LABEL_108;
          }
        }

LABEL_40:
        if (!v14 && *v8 != v8[1])
        {
          v31 = sub_37268(v10, 0xAAAAAAAAAAAAAAABLL * (&v12[-v13] >> 2) - 2);
          v32 = *v31;
          v33 = v31[1];
          v34 = v10[1];
          v35 = *(v34 - 12);
          v36 = *(v34 - 8);
          v37 = *(v34 - 4);
          v38 = **v8;
          v39 = *(*v8 + 4);
          v40 = *(*v8 + 8);
          v41 = sub_37268(v8, 1uLL);
          v42 = v35 == v38 && v36 == v39;
          if (!v42 || v37 != v40)
          {
            v45 = *v41;
            v44 = v41[1];
            v46 = ((v33 - v36) * (v38 - v35) - (v32 - v35) * (v39 - v36)) / sqrt((v32 - v35) * (v32 - v35) + (v33 - v36) * (v33 - v36));
            v47 = v39 >= 0xFFFFFFFE ? -2 : v39;
            v48 = exp(v47 * v4 / 4294967300.0 + 3.14159265);
            v49 = atan((v48 - v5 / v48) * 0.5);
            v50 = v46 * (0.00932288077 / (v5 / cos(v49 * 57.2957795 / 180.0 * 3.14159265)));
            v51 = fabs(v50);
            if (v51 >= *a1 / 100.0 && sqrt(((v35 - v38) * (v35 - v38) + (v36 - v39) * (v36 - v39))) / 100.0 - v51 < *(a1 + 8) / 100.0)
            {
              v52 = v4;
              if (v35 != v32 || (i = 0.0, v33 != v36))
              {
                v54 = -(v32 - v35);
                if (v35 - v32 < v32 - v35)
                {
                  v54 = (v35 - v32);
                }

                  ;
                }

                  ;
                }
              }

              if (v45 != v38 || (j = 0.0, v39 != v44))
              {
                v56 = -(v38 - v45);
                if (v45 - v38 < (v38 - v45))
                {
                  v56 = (v45 - v38);
                }

                  ;
                }

                  ;
                }
              }

              v57 = vabdd_f64(i, j);
              v4 = v52;
              v5 = 1.0;
              if (v57 < *(a1 + 16))
              {
                v58 = sub_4D1DC0(v82);
                if (v50 != 0.0)
                {
                  v59 = (v58 - 1);
                  if ((v59 & 0x80000000) == 0)
                  {
                    do
                    {
                      v60 = sub_69CB14(v82, v59);
                      v61 = 0xAAAAAAAAAAAAAAABLL * ((v60[1] - *v60) >> 2);
                      v62 = *(a1 + 24);
                      v63 = fabs(v51 / v62) != INFINITY && v61 > 1;
                      if (v63)
                      {
                        sub_732584(v50 > 0.0, v61, v60, v51, v62, 0.5, *(a1 + 16));
                        v51 = v64;
                      }

                      else
                      {
                        v51 = v61;
                      }

                      if (v51 == 0.0)
                      {
                        break;
                      }

                      v63 = v59-- <= 0;
                    }

                    while (!v63);
                  }
                }
              }
            }
          }
        }

        v3 = v81 + 1;
        if (v78 == v81 + 1)
        {
          return;
        }
      }

      LODWORD(v65) = 0;
      while (1)
      {
        while (1)
        {
          if (sub_4D1DC0(v6) <= v65)
          {
            goto LABEL_7;
          }

          v65 = (v65 + 1);
          v66 = sub_69CB14(v6, v65);
          if (v8 != v66)
          {
            break;
          }

          if (*v8 != v8[1])
          {
            goto LABEL_7;
          }
        }

        v68 = *v66;
        v67 = v66[1];
        v69 = &v67[-*v66];
        v70 = v8[2];
        v71 = *v8;
        if (v70 - *v8 < v69)
        {
          break;
        }

        v75 = v8[1];
        v76 = v75 - v71;
        if (v75 - v71 >= v69)
        {
          if (v67 != v68)
          {
            memmove(*v8, v68, v69);
          }

          v77 = &v71[v69];
        }

        else
        {
          if (v75 != v71)
          {
            memmove(*v8, v68, v75 - v71);
            v75 = v8[1];
          }

          if (v67 != &v68[v76])
          {
            memmove(v75, &v68[v76], v67 - &v68[v76]);
          }

          v77 = &v75[v67 - &v68[v76]];
        }

        v8[1] = v77;
        v7 = v82;
        if (*v8 != v77)
        {
          goto LABEL_7;
        }
      }

      if (v71)
      {
        v8[1] = v71;
        operator delete(v71);
        v70 = 0;
        *v8 = 0;
        v8[1] = 0;
        v8[2] = 0;
      }

      v72 = 0xAAAAAAAAAAAAAAABLL * (v69 >> 2);
      if (v72 <= 0x1555555555555555)
      {
        v73 = 0xAAAAAAAAAAAAAAABLL * (v70 >> 2);
        if (2 * v73 > v72)
        {
          v72 = 2 * v73;
        }

        if (v73 >= 0xAAAAAAAAAAAAAAALL)
        {
          v74 = 0x1555555555555555;
        }

        else
        {
          v74 = v72;
        }

        if (v74 <= 0x1555555555555555)
        {
          operator new();
        }
      }

LABEL_108:
      sub_1794();
    }
  }
}

void sub_734218()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A41B8 = 0u;
  unk_27A41C8 = 0u;
  dword_27A41D8 = 1065353216;
  sub_3A9A34(&xmmword_27A41B8, v0);
  sub_3A9A34(&xmmword_27A41B8, v3);
  sub_3A9A34(&xmmword_27A41B8, __p);
  sub_3A9A34(&xmmword_27A41B8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4190 = 0;
    qword_27A4198 = 0;
    qword_27A4188 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_734460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A41A0)
  {
    qword_27A41A8 = qword_27A41A0;
    operator delete(qword_27A41A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_73450C(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 8), *a3, *(a3 + 1));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v6;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v7 = *a4;
      *(a1 + 48) = *(a4 + 2);
      *(a1 + 32) = v7;
      return a1;
    }
  }

  sub_325C((a1 + 32), *a4, *(a4 + 1));
  return a1;
}

void sub_7345A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_7345C4(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      return *a1 != -1;
    }
  }

  else if (*(a1 + 31))
  {
    return *a1 != -1;
  }

  return 0;
}

BOOL sub_7345F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(v32, *a2, *(a2 + 8));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v32 = *a2;
    v33 = *(a2 + 16);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      *v30 = *(a1 + 8);
      v31 = *(a1 + 24);
      goto LABEL_6;
    }
  }

  sub_325C(v30, *(a1 + 8), *(a1 + 16));
LABEL_6:
  if (v33 >= 0)
  {
    v4 = v32;
  }

  else
  {
    v4 = v32[0];
  }

  if (v33 >= 0)
  {
    v5 = SHIBYTE(v33);
  }

  else
  {
    v5 = v32[1];
  }

  for (; v5; v5 = v5 - 1)
  {
    *v4 = __toupper(*v4);
    v4 = (v4 + 1);
  }

  v6 = SHIBYTE(v31);
  v7 = v30;
  v8 = v30[0];
  v9 = v30[1];
  if (v31 >= 0)
  {
    v10 = v30;
  }

  else
  {
    v10 = v30[0];
  }

  if (v31 >= 0)
  {
    v11 = SHIBYTE(v31);
  }

  else
  {
    v11 = v30[1];
  }

  if (v11)
  {
    do
    {
      *v10 = __toupper(*v10);
      v10 = (v10 + 1);
      v11 = v11 - 1;
    }

    while (v11);
    v6 = HIBYTE(v31);
    v8 = v30[0];
    v9 = v30[1];
  }

  if (v33 >= 0)
  {
    v12 = HIBYTE(v33);
  }

  else
  {
    v12 = v32[1];
  }

  if (v33 >= 0)
  {
    v13 = v32;
  }

  else
  {
    v13 = v32[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  if ((v6 & 0x80u) != 0)
  {
    v7 = v8;
  }

  if (v12 == v14 && !memcmp(v13, v7, v12))
  {
LABEL_66:
    v15 = 0;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_67;
    }
  }

  else if (v14)
  {
    if (v12 >= v14)
    {
      v16 = v13 + v12;
      v17 = *v7;
      v18 = v13;
      do
      {
        if (v12 - v14 == -1)
        {
          break;
        }

        v19 = memchr(v18, v17, v12 - v14 + 1);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, v7, v14))
        {
          v15 = 1;
          if (v20 == v16 || v20 - v13 == -1)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v21 = *v7;
            if (v21 < 0 || (_DefaultRuneLocale.__runetype[v21] & 0x400) == 0)
            {
              goto LABEL_66;
            }

            v7 = (v7 + 1);
            if (!--v14)
            {
              goto LABEL_51;
            }
          }
        }

        v18 = (v20 + 1);
        v12 = v16 - (v20 + 1);
      }

      while (v12 >= v14);
    }

    v15 = 1;
    if ((v6 & 0x80) != 0)
    {
LABEL_67:
      operator delete(v30[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_68;
      }

      return v15;
    }
  }

  else
  {
LABEL_51:
    v22 = *(a2 + 23);
    if (v22 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (v22 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    sub_7348D0(v23, v24, __p);
    v25 = __p[1];
    if (v29 >= 0)
    {
      v25 = v29;
    }

    v26 = HIBYTE(v31);
    LOBYTE(v6) = HIBYTE(v31);
    if (v31 < 0)
    {
      v26 = v30[1];
    }

    v15 = v25 != v26;
    if ((v29 & 0x8000000000000000) != 0)
    {
      operator delete(__p[0]);
      LOBYTE(v6) = HIBYTE(v31);
    }

LABEL_63:
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_67;
    }
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_68:
    operator delete(v32[0]);
  }

  return v15;
}

void sub_73487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a20);
  _Unwind_Resume(a1);
}

char *sub_7348D0@<X0>(char *result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = &result[a2];
  if (a2)
  {
    v5 = a2;
    v6 = result;
    while (1)
    {
      v7 = *v6;
      if ((v7 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v7] & 0x400) != 0)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    if (v6 != v4)
    {
LABEL_7:
      v8 = v6;
      while (1)
      {
        v9 = *v8;
        if (v9 < 0 || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
        {
          break;
        }

        if (++v8 == v4)
        {
          goto LABEL_14;
        }
      }

      v4 = v8;
      v10 = v6 - result;
      v11 = a2 - (v6 - result);
      if (a2 < v6 - result)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = result;
    if (result != v4)
    {
      goto LABEL_7;
    }
  }

LABEL_13:
  v6 = &result[a2];
LABEL_14:
  v10 = v6 - result;
  v11 = a2 - (v6 - result);
  if (a2 < v6 - result)
  {
LABEL_25:
    sub_49EC("string_view::substr");
  }

LABEL_15:
  v12 = v4 - v6;
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a3[23] = v13;
  if (v13)
  {
    result = memmove(a3, &result[v10], v13);
    a3[v13] = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

BOOL sub_734A38(uint64_t a1)
{
  v1 = *(a1 + 55);
  if (v1 < 0)
  {
    return *(a1 + 40) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

BOOL sub_734A5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (memcmp(v7, v9, v3))
  {
    return 0;
  }

  v11 = *(a1 + 55);
  if (v11 < 0)
  {
    v12 = a2;
    if (!*(a1 + 40))
    {
      return 1;
    }
  }

  else
  {
    v12 = a2;
    if (!*(a1 + 55))
    {
      return 1;
    }
  }

  v13 = *(v12 + 55);
  if (v13 >= 0)
  {
    v14 = *(v12 + 55);
  }

  else
  {
    v14 = *(v12 + 40);
  }

  if (!v14)
  {
    return 1;
  }

  v15 = *(a1 + 40);
  if (v11 >= 0)
  {
    v15 = *(a1 + 55);
  }

  if (v15 != v14)
  {
    return 0;
  }

  if (v11 >= 0)
  {
    v16 = (a1 + 32);
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v19 = *(v12 + 32);
  v18 = (v12 + 32);
  v17 = v19;
  if (v13 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v14) == 0;
}

uint64_t sub_734B90(uint64_t result, __int128 *a2, int a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    v7 = result;
    sub_325C(result, *a2, *(a2 + 1));
    result = v7;
    *(v7 + 24) = a3;
    *(v7 + 28) = a4;
  }

  else
  {
    v6 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v6;
    *(result + 24) = a3;
    *(result + 28) = a4;
  }

  return result;
}

void *sub_734C00(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x100000000;
  return result;
}

BOOL sub_734C10(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    return *(a1 + 8) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

uint64_t sub_734C34(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
  }

  *(a1 + 24) = sub_12331FC();
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 60) = 0xFFFFFFFF00000001;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_734CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_734CE0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_12331FC();
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 60) = 0xFFFFFFFF00000001;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_734D4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_734D68(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return sub_7345F0(a1 + 64, a1);
    }
  }

  else if (*(a1 + 23))
  {
    return sub_7345F0(a1 + 64, a1);
  }

  return 0;
}

BOOL sub_734D94(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  result = sub_1232EBC((v7 + 3), (v6 + 3));
  if (result)
  {
    result = sub_734A5C((v7 + 8), (v6 + 8));
    if (result)
    {
      return *(v7 + 30) == *(v6 + 30);
    }
  }

  return result;
}

BOOL sub_734E58(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) || !sub_1232EBC((v7 + 3), (v6 + 3)) || !sub_734A5C((v7 + 8), (v6 + 8)) || *(v7 + 30) != *(v6 + 30);
}

void *sub_734F1C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = sub_12331FC();
  a1[4] = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_734F54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_734F70(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return sub_1232EAC((a1 + 24));
    }
  }

  else if (*(a1 + 23))
  {
    return sub_1232EAC((a1 + 24));
  }

  return 0;
}

BOOL sub_734F94(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  result = sub_1232EBC((v7 + 3), (v6 + 3));
  if (result)
  {
    return v7[4] == v6[4];
  }

  return result;
}

void sub_735048(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    goto LABEL_41;
  }

  v5 = *a1;
  do
  {
    if (*v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5[114] == 2;
    }

    v7 = v6;
    v5 += 144;
  }

  while (v7 == 1 && v5 != v4);
  v9 = 0;
  v10 = *a1;
  do
  {
    if (v3[114] == 2)
    {
      v11 = v7;
    }

    else
    {
      v11 = 1;
    }

    if (*v3)
    {
      if (((*v3 == 1) & v11) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (!v11)
    {
      goto LABEL_17;
    }

    if (v9 < v24)
    {
      *v9 = v10;
      v9 += 8;
    }

    else
    {
      v12 = v22;
      v13 = v9 - v22;
      v14 = (v9 - v22) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v16 = v24 - v22;
      if ((v24 - v22) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v18 = (v9 - v22) >> 3;
      v19 = (8 * v14);
      v20 = (8 * v14 - 8 * v18);
      *v19 = v10;
      v9 = (v19 + 1);
      memcpy(v20, v12, v13);
      v22 = v20;
      v24 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    v23 = v9;
LABEL_17:
    v3 += 144;
    v10 += 144;
  }

  while (v3 != v4);
  if (v22 != v9)
  {
    operator new();
  }

  v2 = a2;
LABEL_41:
  sub_734CE0(v2);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_7358D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_3E5388(a12);
  if (v32)
  {
    operator delete(v32);
    v35 = *(v33 - 112);
    if (!v35)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v35 = *(v33 - 112);
    if (!v35)
    {
      goto LABEL_3;
    }
  }

  *(v33 - 104) = v35;
  operator delete(v35);
  _Unwind_Resume(a1);
}

void sub_735990(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a5;
  LOBYTE(v33[0]) = 0;
  v39 = 0;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_28;
  }

  do
  {
    v11 = *(v10 + 48);
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        if (sub_7365DC(a1, v10 + 24) == *(a4 + 32) && (v39 != 1 || *(v10 + 52) < v38))
        {
          sub_7367B0(v33, v10);
        }

        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (v11 - 2 < 2)
    {
      goto LABEL_11;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        goto LABEL_4;
      }

LABEL_11:
      v13 = *(a4 + 40);
      v12 = *(a4 + 48);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    v16 = *(a4 + 40);
    v15 = *(a4 + 48);
    v14 = v15 - v16;
    if (v15 != v16)
    {
LABEL_12:
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

LABEL_4:
    v10 += 56;
  }

  while (v10 != v9);
  v8 = a5;
  if (v39)
  {
    v17 = HIBYTE(v34);
    if (v34 < 0)
    {
      v17 = v33[1];
    }

    if (v17)
    {
      sub_734C00(a5);
      if (v33 != a5)
      {
        if (*(a5 + 23) < 0)
        {
          if (v34 >= 0)
          {
            v25 = v33;
          }

          else
          {
            v25 = v33[0];
          }

          if (v34 >= 0)
          {
            v26 = HIBYTE(v34);
          }

          else
          {
            v26 = v33[1];
          }

          sub_13B38(a5, v25, v26);
        }

        else if (v34 < 0)
        {
          sub_13A68(a5, v33[0], v33[1]);
        }

        else
        {
          *a5 = *v33;
          *(a5 + 16) = v34;
        }
      }

      *(a5 + 24) = sub_73696C(&__p);
      if (v37 > 5uLL)
      {
        *(a5 + 28) = 2;
      }

      else
      {
        *(a5 + 28) = dword_229ED80[v37];
      }

      goto LABEL_41;
    }

LABEL_40:
    sub_734B90(v8, a3, 0, 1);
    goto LABEL_41;
  }

LABEL_28:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_40;
  }

  v19 = *a2;
  v18 = a2[1];
  v20 = *a2 + 56;
  if (*a2 != v18 && v20 != v18)
  {
    do
    {
      if (*(v20 + 52) < *(v19 + 52))
      {
        v19 = v20;
      }

      v20 += 56;
    }

    while (v20 != v18);
  }

  if (v19 == v18)
  {
    goto LABEL_40;
  }

  v22 = *(a4 + 32) - 1;
  if (v22 < 0x2A && ((0x27EFFDFFFBFuLL >> v22) & 1) != 0)
  {
    v23 = dword_229ECD8[v22];
    v24 = (v31 + 3);
    v32 = 3;
    LOWORD(v31[0]) = v23;
    BYTE2(v31[0]) = BYTE2(v23);
  }

  else
  {
    v32 = 0;
    v24 = v31;
  }

  *v24 = 0;
  sub_734C00(v8);
  sub_74AA44(v19, (v19 + 24), v31, &v29);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v29;
  *(v8 + 16) = v30;
  *(v8 + 24) = sub_73696C((v19 + 24));
  *(v8 + 28) = 2;
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

LABEL_41:
  if (v39 == 1)
  {
    if ((v36 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        return;
      }

LABEL_46:
      operator delete(v33[0]);
      return;
    }

    operator delete(__p);
    if (SHIBYTE(v34) < 0)
    {
      goto LABEL_46;
    }
  }
}

void sub_735D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  if (a19 < 0)
  {
    operator delete(__p);
    sub_736B14(&a20);
    _Unwind_Resume(a1);
  }

  sub_736B14(&a20);
  _Unwind_Resume(a1);
}

double sub_735DBC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_13:
    sub_734C00(__p);
    HIDWORD(v41) = 1;
    v15 = *a2;
    v16 = a2[1];
    if (*a2 != v16)
    {
      while (1)
      {
        v17 = *v15;
        v42 = sub_12330DC(0x29u);
        if (sub_1232EBC((v17 + 56), &v42))
        {
          break;
        }

        v15 += 8;
        if (v15 == v16)
        {
          v15 = v16;
          break;
        }
      }

      v18 = v15;
      v15 = *a2;
      v16 = a2[1];
      if (v18 != v16)
      {
        if (v15 != v16)
        {
          while (1)
          {
            v19 = *v15;
            v42 = sub_12330DC(0x2Bu);
            if (sub_1232EBC((v19 + 56), &v42))
            {
              break;
            }

            v15 += 8;
            if (v15 == v16)
            {
              v15 = v16;
              break;
            }
          }

          v16 = a2[1];
        }

        if (v15 != v16)
        {
          v20 = *v15;
          v21 = (*v15 + 8);
          if (__p == v21)
          {
            goto LABEL_80;
          }

          v22 = v20[31];
          if ((SHIBYTE(v40) & 0x80000000) == 0)
          {
            if ((v20[31] & 0x80) != 0)
            {
              sub_13A68(__p, *(v20 + 1), *(v20 + 2));
            }

            else
            {
              v23 = *v21;
              v40 = *(*v15 + 24);
              *__p = v23;
            }

            goto LABEL_80;
          }

          if (v22 >= 0)
          {
            v34 = (*v15 + 8);
          }

          else
          {
            v34 = *(v20 + 1);
          }

          if (v22 >= 0)
          {
            v35 = v20[31];
          }

          else
          {
            v35 = *(v20 + 2);
          }

          goto LABEL_77;
        }

        v15 = *a2;
      }
    }

    v42 = sub_738680(v15, v16);
    v24 = sub_1232EB4(&v42);
    v25 = *a2;
    v26 = a2[1];
    if (!v24)
    {
      if (v25 != v26)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    if (v25 != v26)
    {
      while (!sub_1232EBC((*v25 + 56), &v42))
      {
        if (++v25 == v26)
        {
          v25 = v26;
          break;
        }
      }

      v26 = a2[1];
    }

    if (v25 != v26)
    {
      v29 = *v25;
      LODWORD(v41) = sub_1232E98(*v25 + 7);
      if (__p != (v29 + 8))
      {
        v30 = v29[31];
        if (SHIBYTE(v40) < 0)
        {
          if ((v30 & 0x80u) == 0)
          {
            v36 = v29 + 8;
          }

          else
          {
            v36 = *(v29 + 1);
          }

          if ((v30 & 0x80u) == 0)
          {
            v37 = v29[31];
          }

          else
          {
            v37 = *(v29 + 2);
          }

          sub_13B38(__p, v36, v37);
        }

        else if ((v29[31] & 0x80) != 0)
        {
          sub_13A68(__p, *(v29 + 1), *(v29 + 2));
        }

        else
        {
          v31 = *(v29 + 8);
          v40 = *(v29 + 3);
          *__p = v31;
        }
      }

      goto LABEL_81;
    }

    v25 = *a2;
    if (*a2 == v26)
    {
LABEL_38:
      sub_734C00(a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      return result;
    }

LABEL_33:
    while (1)
    {
      v20 = *v25;
      v27 = sub_6DE68(*v25 + 7);
      if (*v20 < 2u && v27)
      {
        break;
      }

      if (++v25 == v26)
      {
        goto LABEL_38;
      }
    }

    if (__p == (v20 + 8))
    {
LABEL_80:
      LODWORD(v41) = sub_1232E98(v20 + 7);
LABEL_81:
      result = *__p;
      *a4 = *__p;
      v38 = v41;
      *(a4 + 16) = v40;
      *(a4 + 24) = v38;
      return result;
    }

    v32 = v20[31];
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      if ((v20[31] & 0x80) != 0)
      {
        sub_13A68(__p, *(v20 + 1), *(v20 + 2));
      }

      else
      {
        v33 = *(v20 + 8);
        v40 = *(v20 + 3);
        *__p = v33;
      }

      goto LABEL_80;
    }

    if (v32 >= 0)
    {
      v34 = v20 + 8;
    }

    else
    {
      v34 = *(v20 + 1);
    }

    if (v32 >= 0)
    {
      v35 = v20[31];
    }

    else
    {
      v35 = *(v20 + 2);
    }

LABEL_77:
    sub_13B38(__p, v34, v35);
    goto LABEL_80;
  }

  while (1)
  {
    v10 = *v7;
    if (**v7 <= 1u)
    {
      __p[0] = 0;
      __p[1] = 0;
      v40 = 0;
      sub_735990(a1, (v10 + 64), __p, a3, a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = sub_734C10(a4);
      v13 = v11;
      v14 = *(a4 + 23) >= 0 || v11;
      if ((v14 & 1) == 0)
      {
        operator delete(*a4);
      }

      if (v13)
      {
        return result;
      }
    }

    if (++v7 == v8)
    {
      goto LABEL_13;
    }
  }
}

void sub_736160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7361B0(void *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 != a1[1])
  {
    operator new();
  }

  sub_734CE0(a2);
}

void sub_736574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E5388(a11);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7365DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 >= 0x1F)
  {
    v5 = 31;
  }

  else
  {
    v5 = v3;
  }

  if (v3)
  {
    switch(v3)
    {
      case 1uLL:
        v6 = *v4;
        v7 = 1;
        break;
      case 2uLL:
        v6 = *v4;
        v7 = 2;
        break;
      case 3uLL:
        v6 = *v4 | (v4[2] << 16);
        v7 = 3;
        break;
      default:
        sub_852E4(v4, v5, &v18);
        goto LABEL_18;
    }

    *&v18 = v6;
    *(&v18 + 1) = v7;
    v19 = 0u;
    v20 = 0u;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

LABEL_18:
  v11 = sub_1232F28(&v18, 3);
  v30 = xmmword_229EC98;
  v31 = unk_229ECA8;
  *v32 = xmmword_229ECB8;
  *&v32[12] = *(&xmmword_229ECB8 + 12);
  v26 = xmmword_229EC58;
  v27 = unk_229EC68;
  v28 = xmmword_229EC78;
  v29 = unk_229EC88;
  v22 = xmmword_229EC18;
  v23 = unk_229EC28;
  v24 = xmmword_229EC38;
  v25 = unk_229EC48;
  v18 = xmmword_229EBD8;
  v19 = unk_229EBE8;
  v20 = xmmword_229EBF8;
  v21 = unk_229EC08;
  v8 = sub_6EAFC();
  v15[0] = &v11;
  v15[1] = v12;
  v16 = 2;
  v17 = 1;
  v12[0] = &v18;
  v12[1] = &v33;
  v13 = 4;
  v14 = 63;
  v9 = (*(*v8 + 40))(v8, v15, v12);
  if (v9 > 0x3E)
  {
    return sub_73696C(a2);
  }

  result = *(&v18 + (v9 & 0x3F));
  if (!result)
  {
    return sub_73696C(a2);
  }

  return result;
}

uint64_t sub_7367B0(uint64_t a1, char *a2)
{
  v2 = a2;
  if (*(a1 + 56) != 1)
  {
    if (a2[23] < 0)
    {
      sub_325C(a1, *a2, *(a2 + 1));
      if ((v2[47] & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v7;
      if ((a2[47] & 0x80000000) == 0)
      {
LABEL_9:
        v8 = *(v2 + 24);
        *(a1 + 40) = *(v2 + 5);
        *(a1 + 24) = v8;
LABEL_12:
        *(a1 + 48) = *(v2 + 6);
        *(a1 + 56) = 1;
        return a1;
      }
    }

    sub_325C((a1 + 24), *(v2 + 3), *(v2 + 4));
    goto LABEL_12;
  }

  if (a1 == a2)
  {
    goto LABEL_19;
  }

  if (*(a1 + 23) < 0)
  {
    if (a2[23] >= 0)
    {
      v10 = a2[23];
    }

    else
    {
      a2 = *a2;
      v10 = *(v2 + 1);
    }

    sub_13B38(a1, a2, v10);
    v5 = v2 + 24;
    v6 = v2[47];
    if (*(a1 + 47) < 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((a2[23] & 0x80) == 0)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    v5 = a2 + 24;
    v6 = a2[47];
    if (*(a1 + 47) < 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  sub_13A68(a1, *a2, *(a2 + 1));
  v5 = v2 + 24;
  v6 = v2[47];
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x80) != 0)
    {
      sub_13A68((a1 + 24), *(v2 + 3), *(v2 + 4));
      *(a1 + 48) = *(v2 + 6);
      return a1;
    }

    v11 = *v5;
    *(a1 + 40) = *(v5 + 2);
    *(a1 + 24) = v11;
LABEL_19:
    *(a1 + 48) = *(v2 + 6);
    return a1;
  }

LABEL_21:
  if ((v6 & 0x80u) == 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = *(v2 + 3);
  }

  if ((v6 & 0x80u) == 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = *(v2 + 4);
  }

  sub_13B38(a1 + 24, v12, v13);
  *(a1 + 48) = *(v2 + 6);
  return a1;
}

void sub_736950(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_73696C(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = a1[23];
  v3 = *(a1 + 1);
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  if (v2 >= 0x1F)
  {
    v4 = 31;
  }

  else
  {
    v4 = v2;
  }

  switch(v2)
  {
    case 0uLL:
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      goto LABEL_15;
    case 1uLL:
      v5 = *a1;
      v6 = 1;
LABEL_14:
      *&v14 = v5;
      *(&v14 + 1) = v6;
      v15 = 0u;
      v16 = 0u;
      goto LABEL_15;
    case 2uLL:
      v5 = *a1;
      v6 = 2;
      goto LABEL_14;
    case 3uLL:
      v5 = *a1 | (a1[2] << 16);
      v6 = 3;
      goto LABEL_14;
  }

  sub_852E4(a1, v4, &v14);
LABEL_15:
  v13 = sub_1232F28(&v14, 3);
  result = sub_1232E98(&v13);
  if (result)
  {
    return result;
  }

  v8 = v1[23];
  if ((v8 & 0x80u) == 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = *v1;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v1 + 1);
  }

  if (v8 >= 0x1F)
  {
    v10 = 31;
  }

  else
  {
    v10 = v8;
  }

  if (v8)
  {
    switch(v8)
    {
      case 1uLL:
        v11 = *v9;
        v12 = 1;
        break;
      case 2uLL:
        v11 = *v9;
        v12 = 2;
        break;
      case 3uLL:
        v11 = *v9 | (v9[2] << 16);
        v12 = 3;
        break;
      default:
        sub_852E4(v9, v10, &v14);
        goto LABEL_34;
    }

    *&v14 = v11;
    *(&v14 + 1) = v12;
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

LABEL_34:
  v13 = sub_1232F28(&v14, 0);
  return sub_1232E98(&v13);
}

uint64_t sub_736B14(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 47) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 24));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

void sub_736B84(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = a4;
  v6 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    do
    {
      if (*v6 != v6[1])
      {
        sub_845EC(*v6);
        operator new();
      }

      v6 += 16;
    }

    while (v6 != v23);
    v4 = a2;
    v5 = a4;
  }

  v7 = sub_6E9A8();
  sub_852E4("en_US", 5, v30);
  v8 = sub_1232F28(v30, 0);
  v27[0] = a3;
  v27[1] = a3 + 4;
  v28 = 4;
  v29 = 1;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 2;
  v26 = 0;
  v9 = (*(*v7 + 40))(v7, v27, v24);
  if (v9 < 0)
  {
    v11 = a1;
    v10 = a3;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v13 = *v4;
    v12 = v4[1];
    if (*v4 != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v11 = a1;
  v10 = a3;
  if (v9 < 0)
  {
    v8 = *(8 * (v9 & 0x7FFFFFFF));
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v13 = *v4;
  v12 = v4[1];
  if (*v4 == v12)
  {
LABEL_33:
    v17 = *v4;
    v16 = v4[1];
    while (1)
    {
      if (v17 == v16)
      {
        return;
      }

      if (*v17 != v17[1])
      {
        break;
      }

LABEL_34:
      v17 += 16;
    }

    v18 = sub_845EC(*v17);
    sub_737068(v11, v17, v10, v18, v30);
    if (sub_734C10(v30))
    {
      v19 = v5[1];
      if (v19 >= v5[2])
      {
        v20 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v20 = v19 + 152;
        v5[1] = v19 + 152;
      }

      v5[1] = v20;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_44:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_45:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

LABEL_50:
    operator delete(v34);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_52:
      operator delete(v30[0]);
      goto LABEL_34;
    }

LABEL_51:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

  do
  {
LABEL_15:
    sub_737068(v11, v13, v10, v8, v30);
    if (sub_734C10(v30))
    {
      v14 = v5[1];
      if (v14 >= v5[2])
      {
        v15 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v15 = v14 + 152;
      }

      v5[1] = v15;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_23:
      if (v33 < 0)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_28:
    operator delete(v34);
    if (v33 < 0)
    {
LABEL_29:
      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_24:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    operator delete(v30[0]);
LABEL_14:
    v13 += 16;
  }

  while (v13 != v12);
  if (*v5 == v5[1])
  {
    goto LABEL_33;
  }
}

void sub_736FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    v23 = a1;
    operator delete(v22);
    a1 = v23;
  }

  _Unwind_Resume(a1);
}

void sub_737068(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    while (1)
    {
      v51 = sub_845EC(v9);
      v47[0] = sub_1232F20(&v51);
      __p[0] = sub_1232F20(&v55);
      if (sub_1232EBC(v47, __p) || sub_846D0(v9))
      {
        break;
      }

      v9 += 48;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }
  }

  v11 = a2[1];
  sub_734CE0(a5);
  if (v9 != v11)
  {
    if (v9 + 24 != a5)
    {
      v12 = *(v9 + 47);
      if (*(a5 + 23) < 0)
      {
        if (v12 >= 0)
        {
          v14 = (v9 + 24);
        }

        else
        {
          v14 = *(v9 + 24);
        }

        if (v12 >= 0)
        {
          v15 = *(v9 + 47);
        }

        else
        {
          v15 = *(v9 + 32);
        }

        sub_13B38(a5, v14, v15);
      }

      else if ((*(v9 + 47) & 0x80) != 0)
      {
        sub_13A68(a5, *(v9 + 24), *(v9 + 32));
      }

      else
      {
        v13 = *(v9 + 24);
        *(a5 + 16) = *(v9 + 40);
        *a5 = v13;
      }
    }

    *(a5 + 24) = sub_845EC(v9);
    v16 = a2[3];
    v17 = a2[4];
    if (v16 != v17)
    {
      while (1)
      {
        v51 = sub_845EC(v16);
        v47[0] = sub_1232F20(&v51);
        __p[0] = sub_1232F20(&v55);
        if (sub_1232EBC(v47, __p) || sub_846D0(v16))
        {
          break;
        }

        v16 += 48;
        if (v16 == v17)
        {
          v16 = v17;
          break;
        }
      }
    }

    if (v16 == a2[4])
    {
      v19 = a5 + 128;
      v18 = a5;
      v20 = *(a5 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
LABEL_27:
        if ((v20 & 0x80) != 0)
        {
          sub_13A68(v19, *v18, *(v18 + 1));
        }

        else
        {
          v21 = *v18;
          *(v19 + 16) = *(v18 + 2);
          *v19 = v21;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v18 = v16 + 24;
      v19 = a5 + 128;
      if ((a5 + 128) == v18)
      {
        goto LABEL_38;
      }

      v20 = v18[23];
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((v20 & 0x80u) == 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = *v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *(v18 + 1);
    }

    sub_13B38(v19, v22, v23);
LABEL_38:
    if (*(a2 + 49))
    {
      if (*(a2 + 49) == 3)
      {
        goto LABEL_48;
      }

      v24 = *(a2 + 48);
      if (v24 == 5 || v24 == 8)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 1;
    }

    *(a5 + 120) = v26;
LABEL_48:
    v27 = a2[8];
    v28 = a2[7];
    if (v28 == v27)
    {
      goto LABEL_93;
    }

    v29 = a2[7];
    while ((*(v29 + 32) & 1) == 0)
    {
      v29 += 40;
      if (v29 == v27)
      {
        goto LABEL_57;
      }
    }

    if (v29 == v27)
    {
LABEL_57:
      LODWORD(v51) = *v28;
      if (*(v28 + 31) < 0)
      {
        sub_325C(&v52, *(v28 + 8), *(v28 + 16));
      }

      else
      {
        v31 = *(v28 + 8);
        v53 = *(v28 + 24);
        v52 = v31;
      }

      goto LABEL_61;
    }

    LODWORD(v51) = *v29;
    if (*(v29 + 31) < 0)
    {
      sub_325C(&v52, *(v29 + 8), *(v29 + 16));
    }

    else
    {
      v30 = *(v29 + 8);
      v53 = *(v29 + 24);
      v52 = v30;
    }

    v28 = v29;
LABEL_61:
    v54 = *(v28 + 32);
    v46 = 0;
    LOBYTE(__p[0]) = 0;
    sub_73450C(v47, v51, &v52, __p);
    *(a5 + 64) = v47[0];
    if (*(a5 + 95) < 0)
    {
      operator delete(*(a5 + 72));
    }

    *(a5 + 72) = *&v47[1];
    *(a5 + 88) = v48;
    HIBYTE(v48) = 0;
    LOBYTE(v47[1]) = 0;
    v32 = (a5 + 96);
    if ((*(a5 + 119) & 0x80000000) == 0)
    {
      *v32 = v49;
      *(a5 + 112) = v50;
      HIBYTE(v50) = 0;
      LOBYTE(v49) = 0;
      if (v46 < 0)
      {
        goto LABEL_65;
      }

LABEL_69:
      v33 = a2[13];
      v34 = a2[14];
      if (v33 != v34)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    operator delete(*v32);
    v35 = SHIBYTE(v48);
    *v32 = v49;
    *(a5 + 112) = v50;
    HIBYTE(v50) = 0;
    LOBYTE(v49) = 0;
    if (v35 < 0)
    {
      operator delete(v47[1]);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_65:
    operator delete(__p[0]);
    v33 = a2[13];
    v34 = a2[14];
    if (v33 != v34)
    {
LABEL_70:
      while (1)
      {
        __p[0] = sub_845EC(v33);
        v47[0] = sub_1232F20(__p);
        v56 = sub_1232F20(&v55);
        if (sub_1232EBC(v47, &v56) || sub_846D0(v33))
        {
          break;
        }

        v33 += 48;
        if (v33 == v34)
        {
          v33 = v34;
          break;
        }
      }
    }

LABEL_74:
    if (v33 == a2[14])
    {
      HIBYTE(v47[2]) = 0;
      LOBYTE(v47[0]) = 0;
    }

    else if (*(v33 + 47) < 0)
    {
      sub_325C(v47, *(v33 + 24), *(v33 + 32));
    }

    else
    {
      *v47 = *(v33 + 24);
      v47[2] = *(v33 + 40);
    }

    if (v32 != v47)
    {
      if (*(a5 + 119) < 0)
      {
        if (SHIBYTE(v47[2]) >= 0)
        {
          v36 = v47;
        }

        else
        {
          v36 = v47[0];
        }

        if (SHIBYTE(v47[2]) >= 0)
        {
          v37 = HIBYTE(v47[2]);
        }

        else
        {
          v37 = v47[1];
        }

        sub_13B38(a5 + 96, v36, v37);
      }

      else if ((HIBYTE(v47[2]) & 0x80) != 0)
      {
        sub_13A68((a5 + 96), v47[0], v47[1]);
      }

      else
      {
        *v32 = *v47;
        *(a5 + 112) = v47[2];
      }
    }

    if (SHIBYTE(v47[2]) < 0)
    {
      operator delete(v47[0]);
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v52);
LABEL_93:
    sub_735990(a1, a2 + 10, v19, a3, v47);
    if (*(a5 + 55) < 0)
    {
      operator delete(*(a5 + 32));
    }

    *(a5 + 32) = *v47;
    v38 = v48;
    *(a5 + 48) = v47[2];
    *(a5 + 56) = v38;
    memset(v47, 0, sizeof(v47));
    v39 = *(a1 + 23);
    if ((v39 & 0x80) != 0)
    {
      if (*(a1 + 8) != 3)
      {
        return;
      }

      v40 = *a1;
    }

    else
    {
      v40 = a1;
      if (v39 != 3)
      {
LABEL_105:
        if (v39 != 3)
        {
          return;
        }

LABEL_112:
        if (*a1 == 18499 && *(a1 + 2) == 78 && *(a3 + 32) == 5)
        {
          *(a5 + 60) = 0;
        }

        return;
      }
    }

    v41 = *v40;
    v42 = *(v40 + 2);
    if (v41 == 20554 && v42 == 78)
    {
      sub_737720(a1, a5);
      v39 = *(a1 + 23);
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_105;
      }
    }

    else if ((v39 & 0x80) == 0)
    {
      goto LABEL_105;
    }

    if (*(a1 + 8) != 3)
    {
      return;
    }

    a1 = *a1;
    goto LABEL_112;
  }
}

void sub_737638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_3E5388(v32);
    _Unwind_Resume(a1);
  }

  sub_3E5388(v32);
  _Unwind_Resume(a1);
}

void sub_737720(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    if (a1[1] != 3)
    {
      return;
    }

    a1 = *a1;
  }

  else if (v3 != 3)
  {
    return;
  }

  v4 = *a1 == 20554 && *(a1 + 2) == 78;
  if (v4 && sub_7345C4(a2 + 64))
  {
    v5 = *(a2 + 23);
    v6 = v5;
    v7 = *a2;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      do
      {
        v8 = *v7;
        if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
        {
          return;
        }

        ++v7;
      }

      while (--v5);
    }

    __src = 0uLL;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    memset(&__dst, 0, sizeof(__dst));
    v39 = 0;
    v40 = 0;
    v9 = *(a2 + 64);
    v41 = 0;
    if (v9 == 100000)
    {
      HIBYTE(v47) = 15;
      *&__src = *"都道府県道";
      *(&__src + 7) = *"\xBA\x9C県道";
      HIBYTE(__src) = 0;
      sub_195A048(&__dst, "トドウフケンドウ", 0x18uLL);
      if (SHIBYTE(v45) < 0)
      {
        v44 = 6;
        v12 = v43;
      }

      else
      {
        HIBYTE(v45) = 6;
        v12 = &v43;
      }

      v12[2] = -25929;
      *v12 = -407400475;
      *(v12 + 6) = 0;
      if (SHIBYTE(v41) < 0)
      {
        v40 = 12;
        v13 = v39;
      }

      else
      {
        HIBYTE(v41) = 12;
        v13 = &v39;
      }

      v10 = 0;
      v13[2] = -1283202117;
      *v13 = *"ゴウセン";
      *(v13 + 12) = 0;
      v6 = *(a2 + 23);
      v11 = 15;
    }

    else if (v9 == 100006)
    {
      v10 = 0;
      v11 = 6;
      HIBYTE(v47) = 6;
      LODWORD(__src) = -373449755;
      WORD2(__src) = -27775;
      BYTE6(__src) = 0;
      LODWORD(__dst.__r_.__value_.__r.__words[1]) = -1501371511;
      __dst.__r_.__value_.__r.__words[0] = *"コクドウ";
      LODWORD(v43) = -407400475;
      WORD2(v43) = -25929;
      *(&__dst.__r_.__value_.__s + 23) = 12;
      __dst.__r_.__value_.__s.__data_[12] = 0;
      HIBYTE(v45) = 6;
      BYTE6(v43) = 0;
      HIBYTE(v41) = 12;
      LODWORD(v40) = -1283202117;
      v39 = *"ゴウセン";
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v6 < 0)
    {
      sub_325C(v37, *a2, *(a2 + 8));
    }

    else
    {
      *v37 = *a2;
      v38 = *(a2 + 16);
    }

    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = HIBYTE(v45);
    if (v45 < 0)
    {
      v14 = v44;
    }

    if (v14)
    {
LABEL_37:
      if (v38 >= 0)
      {
        v15 = HIBYTE(v38);
      }

      else
      {
        v15 = v37[1];
      }

      if (v15 + v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 + v11 > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v15 + v11;
      if ((v10 & 1) == 0)
      {
        memcpy(&v48, &__src, v11);
      }

      v16 = &v48 + v11;
      if (v15)
      {
        if (v38 >= 0)
        {
          v17 = v37;
        }

        else
        {
          v17 = v37[0];
        }

        memmove(v16, v17, v15);
      }

      v16[v15] = 0;
      if (v45 >= 0)
      {
        v18 = &v43;
      }

      else
      {
        v18 = v43;
      }

      if (v45 >= 0)
      {
        v19 = HIBYTE(v45);
      }

      else
      {
        v19 = v44;
      }

      v20 = std::string::append(&v48, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v36 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (__p != a2)
      {
        if (*(a2 + 23) < 0)
        {
          if (v36 >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (v36 >= 0)
          {
            v23 = HIBYTE(v36);
          }

          else
          {
            v23 = __p[1];
          }

          sub_13B38(a2, v22, v23);
        }

        else if (v36 < 0)
        {
          sub_13A68(a2, __p[0], __p[1]);
        }

        else
        {
          *a2 = *__p;
          *(a2 + 16) = v36;
        }
      }

      sub_852E4("ja_JP", 5, &v48);
      *(a2 + 24) = sub_1232F28(&v48, 0);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_79;
    }

    v25 = HIBYTE(v41);
    if (v41 < 0)
    {
      v25 = v40;
    }

    if (v25)
    {
LABEL_79:
      if (v38 >= 0)
      {
        v26 = HIBYTE(v38);
      }

      else
      {
        v26 = v37[1];
      }

      if (v26 + size > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v26 + size > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v26 + size;
      if (size)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(&v48, p_dst, size);
      }

      v28 = &v48 + size;
      if (v26)
      {
        if (v38 >= 0)
        {
          v29 = v37;
        }

        else
        {
          v29 = v37[0];
        }

        memmove(v28, v29, v26);
      }

      v28[v26] = 0;
      if (v41 >= 0)
      {
        v30 = &v39;
      }

      else
      {
        v30 = v39;
      }

      if (v41 >= 0)
      {
        v31 = HIBYTE(v41);
      }

      else
      {
        v31 = v40;
      }

      v32 = std::string::append(&v48, v30, v31);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v36 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      sub_734B90(&v48, __p, 20, 1);
      if (*(a2 + 55) < 0)
      {
        operator delete(*(a2 + 32));
      }

      *(a2 + 32) = *&v48.__r_.__value_.__l.__data_;
      v34 = v49;
      *(a2 + 48) = *(&v48.__r_.__value_.__l + 2);
      *(a2 + 56) = v34;
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
LABEL_109:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_114;
      }
    }

    else if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    operator delete(v39);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_115;
    }

LABEL_114:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

LABEL_115:
    operator delete(v43);
  }
}

void sub_737DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if (a39 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  operator delete(a28);
  if (a39 < 0)
  {
LABEL_8:
    operator delete(a34);
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_737E50(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v17) = 0;
  LOBYTE(__dst[0]) = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    *a3 = *__dst;
    *(a3 + 16) = v17;
  }

  else
  {
    if (__dst != (v4 + 24))
    {
      if (*(v4 + 47) < 0)
      {
        sub_13A68(__dst, *(v4 + 24), *(v4 + 32));
      }

      else
      {
        *__dst = *(v4 + 24);
        v17 = *(v4 + 40);
      }
    }

    sub_738070(a1, &__p);
    v11 = 50331648;
    v12 = 0;
    v13 = -4294967282;
    v7 = sub_6E9A8();
    v21[0] = a2;
    v21[1] = a2 + 4;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v15;
    v19 = 2;
    v20 = (v15 - __p) >> 3;
    v8 = (*(*v7 + 48))(v7, v21, v18, &v11);
    if (v8 >> 31)
    {
      *a3 = *__dst;
      *(a3 + 16) = v17;
      __dst[1] = 0;
      v17 = 0;
      __dst[0] = 0;
    }

    else
    {
      v9 = *a1;
      if (v8 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v9 += 48 * v8;
      }

      if (*(v9 + 47) < 0)
      {
        sub_325C(a3, *(v9 + 24), *(v9 + 32));
      }

      else
      {
        v10 = *(v9 + 24);
        *(a3 + 16) = *(v9 + 40);
        *a3 = v10;
      }
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_73801C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void *sub_738070@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
  return result;
}

void sub_73836C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v14[2] = v16;
  *v14 = v15;
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  v14[1] = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_7383C8(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_734F1C(a3);
  if (*a1 != a1[1])
  {
    sub_7385A4(a1, &__p);
    v13 = 50331648;
    v14 = 0;
    v15 = -4294967282;
    v6 = sub_6EAFC();
    v21[0] = a2 + 32;
    v21[1] = a2 + 36;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v17;
    v19 = 2;
    v20 = (v17 - __p) >> 3;
    v7 = (*(*v6 + 48))(v6, v21, v18, &v13);
    if (!(v7 >> 31))
    {
      v8 = *a1;
      if (v7 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v8 += 48 * v7;
      }

      *(a3 + 24) = sub_845EC(v8);
      if (v8 + 24 != a3)
      {
        v9 = *(v8 + 47);
        if (*(a3 + 23) < 0)
        {
          if (v9 >= 0)
          {
            v11 = (v8 + 24);
          }

          else
          {
            v11 = *(v8 + 24);
          }

          if (v9 >= 0)
          {
            v12 = *(v8 + 47);
          }

          else
          {
            v12 = *(v8 + 32);
          }

          sub_13B38(a3, v11, v12);
        }

        else if ((*(v8 + 47) & 0x80) != 0)
        {
          sub_13A68(a3, *(v8 + 24), *(v8 + 32));
        }

        else
        {
          v10 = *(v8 + 24);
          *(a3 + 16) = *(v8 + 40);
          *a3 = v10;
        }
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_738550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v13 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v13 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v13);
  _Unwind_Resume(exception_object);
}

void *sub_7385A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_738664(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_738680(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    operator new();
  }

  return sub_12331FC();
}

void sub_7388E0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2732FA0);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_738918(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*a1 == v4)
  {
    goto LABEL_41;
  }

  v5 = *a1;
  do
  {
    if (*v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5[114] == 2;
    }

    v7 = v6;
    v5 += 144;
  }

  while (v7 == 1 && v5 != v4);
  v9 = 0;
  v10 = *a1;
  do
  {
    if (v3[114] == 2)
    {
      v11 = v7;
    }

    else
    {
      v11 = 1;
    }

    if (*v3)
    {
      if (((*v3 == 1) & v11) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (!v11)
    {
      goto LABEL_17;
    }

    if (v9 < v24)
    {
      *v9 = v10;
      v9 += 8;
    }

    else
    {
      v12 = v22;
      v13 = v9 - v22;
      v14 = (v9 - v22) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v16 = v24 - v22;
      if ((v24 - v22) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v18 = (v9 - v22) >> 3;
      v19 = (8 * v14);
      v20 = (8 * v14 - 8 * v18);
      *v19 = v10;
      v9 = (v19 + 1);
      memcpy(v20, v12, v13);
      v22 = v20;
      v24 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    v23 = v9;
LABEL_17:
    v3 += 144;
    v10 += 144;
  }

  while (v3 != v4);
  if (v22 != v9)
  {
    operator new();
  }

  v2 = a2;
LABEL_41:
  sub_734CE0(v2);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_7390F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_3E5388(a14);
  if (v34)
  {
    operator delete(v34);
    v37 = *(v35 - 112);
    if (!v37)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v37 = *(v35 - 112);
    if (!v37)
    {
      goto LABEL_3;
    }
  }

  *(v35 - 104) = v37;
  operator delete(v37);
  _Unwind_Resume(a1);
}

void sub_7391AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a5;
  LOBYTE(v33[0]) = 0;
  v39 = 0;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_28;
  }

  do
  {
    v11 = *(v10 + 48);
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        if (sub_739F40(a1, v10 + 24) == *(a4 + 32) && (v39 != 1 || *(v10 + 52) < v38))
        {
          sub_7367B0(v33, v10);
        }

        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (v11 - 2 < 2)
    {
      goto LABEL_11;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        goto LABEL_4;
      }

LABEL_11:
      v13 = *(a4 + 40);
      v12 = *(a4 + 48);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    v16 = *(a4 + 40);
    v15 = *(a4 + 48);
    v14 = v15 - v16;
    if (v15 != v16)
    {
LABEL_12:
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

LABEL_4:
    v10 += 56;
  }

  while (v10 != v9);
  v8 = a5;
  if (v39)
  {
    v17 = HIBYTE(v34);
    if (v34 < 0)
    {
      v17 = v33[1];
    }

    if (v17)
    {
      sub_734C00(a5);
      if (v33 != a5)
      {
        if (*(a5 + 23) < 0)
        {
          if (v34 >= 0)
          {
            v25 = v33;
          }

          else
          {
            v25 = v33[0];
          }

          if (v34 >= 0)
          {
            v26 = HIBYTE(v34);
          }

          else
          {
            v26 = v33[1];
          }

          sub_13B38(a5, v25, v26);
        }

        else if (v34 < 0)
        {
          sub_13A68(a5, v33[0], v33[1]);
        }

        else
        {
          *a5 = *v33;
          *(a5 + 16) = v34;
        }
      }

      *(a5 + 24) = sub_73696C(&__p);
      if (v37 > 5uLL)
      {
        *(a5 + 28) = 2;
      }

      else
      {
        *(a5 + 28) = dword_229ED80[v37];
      }

      goto LABEL_41;
    }

LABEL_40:
    sub_734B90(v8, a3, 0, 1);
    goto LABEL_41;
  }

LABEL_28:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_40;
  }

  v19 = *a2;
  v18 = a2[1];
  v20 = *a2 + 56;
  if (*a2 != v18 && v20 != v18)
  {
    do
    {
      if (*(v20 + 52) < *(v19 + 52))
      {
        v19 = v20;
      }

      v20 += 56;
    }

    while (v20 != v18);
  }

  if (v19 == v18)
  {
    goto LABEL_40;
  }

  v22 = *(a4 + 32) - 1;
  if (v22 < 0x2A && ((0x27EFFDFFFBFuLL >> v22) & 1) != 0)
  {
    v23 = dword_229ECD8[v22];
    v24 = (v31 + 3);
    v32 = 3;
    LOWORD(v31[0]) = v23;
    BYTE2(v31[0]) = BYTE2(v23);
  }

  else
  {
    v32 = 0;
    v24 = v31;
  }

  *v24 = 0;
  sub_734C00(v8);
  sub_74AA44(v19, (v19 + 24), v31, &v29);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v29;
  *(v8 + 16) = v30;
  *(v8 + 24) = sub_73696C((v19 + 24));
  *(v8 + 28) = 2;
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

LABEL_41:
  if (v39 == 1)
  {
    if ((v36 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        return;
      }

LABEL_46:
      operator delete(v33[0]);
      return;
    }

    operator delete(__p);
    if (SHIBYTE(v34) < 0)
    {
      goto LABEL_46;
    }
  }
}