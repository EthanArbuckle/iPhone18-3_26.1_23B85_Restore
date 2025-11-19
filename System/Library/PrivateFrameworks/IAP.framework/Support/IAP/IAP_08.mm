uint64_t sub_100078C34(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((result & 7) == 0)
    {
      v2 = *(result + 32);
      if (!v2)
      {
        return 0;
      }

      if ((v2 & 7) == 0)
      {
        v3 = *(v2 + 58);
        if (v3 >= 2)
        {
LABEL_13:
          __break(0x550Au);
          __break(0x5507u);
          return result;
        }

        if ((v3 & 1) == 0)
        {
          v4 = *(v2 + 40);
          result = sub_1000C4254();
          if (result)
          {
            if ((result & 7) == 0)
            {
              sub_100094564(result, v1, 0);
              (*(*v1 + 16))(v1, 0);
              sub_1000B748C();
            }
          }

          goto LABEL_12;
        }

        return 0;
      }
    }

LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100078E94(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    __break(0x5518u);
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return 2;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = sub_10005BB24(result, 0);
  result = sub_100065198(v8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_100092790(result, v7, 0);
  if (!result)
  {
    v9 = 2;
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if ((a4 + 8) <= 0xF)
  {
    v9 = sub_100075B90(result, a3, a4);
LABEL_16:
    sub_10005BB6C(v7, 0);
    return v9;
  }

LABEL_20:
  __break(0x550Au);
  return result;
}

uint64_t sub_100078F78(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    return result;
  }

  result = 0;
  if (a2 <= 473)
  {
    if (a2 != 70 && a2 != 131 && a2 != 134)
    {
      return result;
    }

    return 1;
  }

  if (a2 == 474 || a2 == 53504 || a2 == 512)
  {
    return 1;
  }

  return result;
}

BOOL sub_100078FD4(int a1, int a2)
{
  result = 1;
  if (a1 <= 130)
  {
    if ((a1 - 27) > 0x2B || ((1 << (a1 - 27)) & 0x80400000001) == 0)
    {
      return a1 || ((a2 - 1) & 0xFFFFFFFB) != 0;
    }

    return 0;
  }

  if (a1 == 131 || a1 == 134)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100079038(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  if ((*(*result + 744))(result))
  {
LABEL_6:
    sub_100075B90(v2, a2, 0);
    sub_100075B90(v2, a2, 3);
    sub_100075B90(v2, a2, 4);
    sub_100075B90(v2, a2, 6);
    return 0;
  }

  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = (*(*result + 752))(result);
  if (!result)
  {
    if (a2)
    {
      goto LABEL_15;
    }

    __break(0x5518u);
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_25;
  }

  result = (*(*a2 + 208))(a2);
  if (result == 1)
  {
    goto LABEL_6;
  }

LABEL_15:
  v4 = *(v2 + 1416);
  if (v4 + 8 <= 0xF)
  {
    if (v4 > 5 || ((1 << v4) & 0x39) == 0)
    {
      sub_100075B90(v2, a2, 0);
    }

    result = sub_100075B90(v2, a2, 3);
    if (result)
    {
      if ((a2 & 7) == 0)
      {
        (*(*a2 + 16))(a2, 0);
        sub_1000B748C();
      }
    }

    else if ((a2 & 7) == 0)
    {
      (*(*a2 + 16))(a2, 0);
      sub_1000B748C();
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(0x550Au);
  __break(0x5507u);
  return result;
}

uint64_t sub_100079318(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v1 = *(result + 1976);
  if (v1 < 2)
  {
    if ((v1 & 1) != 0 || *(result + 1968))
    {
      return 0;
    }

    result = *(result + 8);
    if (result)
    {
      if ((result & 7) == 0)
      {
        result = sub_100018DC0(result);
        if (result)
        {
          if ((result & 7) == 0)
          {
            (*(*result + 16))(result, 0);
            sub_1000B748C();
          }
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

void sub_100079448(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_189;
  }

  v2 = a1;
  if ((a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_189;
  }

  v5 = *(a2 + 128);
  v3 = *(a2 + 8);
  v6 = *(a2 + 68);
  v96 = 4;
  if (!v3)
  {
    sub_1000E1D34();
  }

  v7 = sub_100065198(a1);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_189;
  }

  v82 = sub_1000933B0(v7, v3);
  v95 = 5380;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __buf[14] = v8;
  __buf[15] = v8;
  __buf[12] = v8;
  __buf[13] = v8;
  __buf[10] = v8;
  __buf[11] = v8;
  __buf[8] = v8;
  __buf[9] = v8;
  __buf[6] = v8;
  __buf[7] = v8;
  __buf[4] = v8;
  __buf[5] = v8;
  __buf[2] = v8;
  __buf[3] = v8;
  __buf[0] = v8;
  __buf[1] = v8;
  v9 = kdebug_trace();
  v10 = *(v2 + 1416);
  if ((v10 + 8) >= 0x10)
  {
    goto LABEL_191;
  }

  if (v10 != 3)
  {
    v96 = 7;
    if (*(v2 + 1440) == 2 && *(v2 + 1443) == 7 && *(v2 + 1444) == 7)
    {
      v14 = *(v2 + 1445);
      if (v14 == 255)
      {
        goto LABEL_196;
      }

      v15 = v14 + 1;
      *(v2 + 1445) = v15;
      if ((v15 & 0xFC) == 0)
      {
        v96 = 4;
        LOBYTE(v95) = 4;
        v16 = 1;
        v28 = 2;
LABEL_67:
        v17 = 2;
LABEL_41:
        sub_1000B7DB4(a2, v3, 0, 0, v28, v6, &v95, v17);
        sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
        if ((v16 & 1) == 0)
        {
          sub_100079038(v2, v3);
        }

        goto LABEL_43;
      }
    }

    v16 = 0;
    LOBYTE(v95) = 7;
    v17 = 1;
LABEL_40:
    v28 = 22;
    goto LABEL_41;
  }

  v11 = *(a2 + 24);
  __n = 0;
  v93 = 20;
  v96 = 8;
  if (v5 < 2)
  {
    v13 = 255;
    v12 = 255;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_189;
    }

    if (v11 == -1)
    {
      goto LABEL_195;
    }

    v12 = *v11;
    v13 = v11[1];
  }

  v18 = *(v2 + 1440);
  if (__PAIR64__(*(v2 + 1441), v18) != __PAIR64__(v13, v12))
  {
    syslog(3, "%s ERROR: Auth version mismatch, expected major.minor: %02X.%02X, received %02X.%02X\n", "HandleRetDevAuthenticationInfo", v18, *(v2 + 1441), v12, v13);
    v16 = 0;
    goto LABEL_39;
  }

  v19 = sub_100065198(v9);
  if (!v19 || (v19 & 7) != 0)
  {
    goto LABEL_189;
  }

  v20 = sub_100059008(v19, v3, v12, v13, &__n);
  v21 = *(v2 + 2368);
  if (v21 > 1)
  {
    goto LABEL_191;
  }

  v22 = v20;
  if (v21)
  {
    goto LABEL_44;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_189;
  }

  v20 = (*(*v3 + 272))(v3);
  if (!v20)
  {
LABEL_44:
    if (v22)
    {
      goto LABEL_82;
    }
  }

  else if (v12 != 2 || v13)
  {
    v23 = *(v2 + 8);
    if (v23 && (v23 & 7) == 0)
    {
      if (sub_10005BFD0(v23))
      {
LABEL_36:
        *(v2 + 1438) = 0;
        sub_100075B90(v2, v3, 2);
        sub_100075B90(v2, v3, 0);
        sub_100076C34(*(v2 + 8), v3, 0);
LABEL_37:
        v16 = 1;
LABEL_39:
        LOBYTE(v95) = v96;
        v17 = 1;
        goto LABEL_40;
      }

      v24 = **v3;
      if (v25 && (v25 & 7) == 0)
      {
        v26 = *(v2 + 8);
        v27 = (*(*v25 + 392))(v25);
        sub_100076B84(1, v26, v3, v27);
        goto LABEL_36;
      }
    }

    goto LABEL_189;
  }

  v29 = sub_100065198(v20);
  if (!v29 || (v29 & 7) != 0)
  {
    goto LABEL_189;
  }

  v30 = sub_100092F68(v29, v3) & 3;
  if (v5 == 2 && v12 == 1)
  {
    v96 = 0;
    sub_1000B7DB4(a2, v3, 0, 0, 22, v6, &v96, 1u);
    sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
    v31 = sub_100075B90(v2, v3, 4);
    if (v30 == 2 && v82 != 56 && !*(v2 + 1978))
    {
      v31 = sub_100079318(v2);
    }

    if (__n - 16 > 4)
    {
      __break(0x5518u);
      goto LABEL_135;
    }

    *(v2 + 1446) = __n;
    v32 = sub_100065198(v31);
    if (v32 && (v32 & 7) == 0)
    {
      sub_100059D78(v32, v3, __n, __buf);
      if (!v33)
      {
        if (__n < 0x100)
        {
          if (!__CFADD__(__buf, __n))
          {
            *(__buf + __n) = *(v2 + 1438);
            goto LABEL_60;
          }

          goto LABEL_195;
        }

LABEL_197:
        __break(0x5512u);
LABEL_198:
        sub_1000E22F0();
      }

LABEL_135:
      sub_1000E22F0();
    }

LABEL_189:
    __break(0x5516u);
    goto LABEL_190;
  }

  if (v5 - 5 > 0x7FF || v12 != 2)
  {
LABEL_82:
    v16 = 0;
    goto LABEL_39;
  }

  if (v11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_195;
  }

  v34 = v11[2];
  v35 = v11[3];
  if (v34 > v35)
  {
    goto LABEL_82;
  }

  pthread_mutex_lock((v2 + 1448));
  if (v34 || *(v2 + 1443) || *(v2 + 1444))
  {
    if (v34 != *(v2 + 1443) || v35 != *(v2 + 1444) || (v36 = *(v2 + 1408)) == 0)
    {
      v37 = 7;
      goto LABEL_80;
    }

    v81 = v30;
    if ((v36 & 3) != 0)
    {
      goto LABEL_189;
    }

    if (v11 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if ((v5 - 4) >> 16)
      {
        goto LABEL_196;
      }

      if (sub_10005A0DC(v36, v11 + 4, (v5 - 4)))
      {
        v37 = 4;
LABEL_80:
        v96 = v37;
LABEL_81:
        pthread_mutex_unlock((v2 + 1448));
        goto LABEL_82;
      }

      v96 = 0;
      goto LABEL_93;
    }

LABEL_195:
    __break(0x5513u);
    goto LABEL_196;
  }

  v81 = v30;
  v38 = *(v2 + 1408);
  if (!v38)
  {
    operator new();
  }

  if ((v38 & 3) != 0)
  {
    goto LABEL_189;
  }

  if (v11 > 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_195;
  }

  if ((v5 - 4) >> 16)
  {
    goto LABEL_196;
  }

  if (!sub_10005A084(v38, v11 + 4, (v5 - 4)))
  {
    v96 = 0;
    *(v2 + 1444) = v35;
LABEL_93:
    v39 = 1;
    goto LABEL_94;
  }

  v39 = v96 == 0;
LABEL_94:
  if (!v39 || v34 != v35)
  {
    if (!v39)
    {
      goto LABEL_81;
    }

    if (v34 != 255)
    {
      *(v2 + 1443) = v34 + 1;
      pthread_mutex_unlock((v2 + 1448));
      LOBYTE(v95) = v96;
      v16 = 1;
      v28 = 2;
      goto LABEL_67;
    }

LABEL_196:
    __break(0x5507u);
    goto LABEL_197;
  }

  v92 = 0;
  v40 = *(v2 + 1408);
  if (!v40)
  {
    goto LABEL_132;
  }

  if ((v40 & 3) != 0)
  {
    goto LABEL_189;
  }

  v41 = sub_10005A184(v40, &v92);
  if (v41)
  {
    goto LABEL_132;
  }

  v42 = sub_100065198(v41);
  if (!v42 || (v42 & 7) != 0)
  {
    goto LABEL_189;
  }

  v43 = sub_100092B58(v42, v3);
  if ((v43 & ~v92) != 0)
  {
    v37 = 11;
    goto LABEL_80;
  }

  v46 = *(v2 + 1408);
  if (!v46)
  {
    goto LABEL_132;
  }

  if ((v46 & 3) != 0)
  {
    goto LABEL_189;
  }

  if (!sub_10005A3A0(v46, v44, v45))
  {
    goto LABEL_132;
  }

  v47 = *(v2 + 1408);
  if (!v47 || (v47 & 3) != 0)
  {
    goto LABEL_189;
  }

  if (sub_10005A364(v47))
  {
LABEL_132:
    v37 = 10;
    goto LABEL_80;
  }

  sub_10006733C(v2, -1, &v93, 0, 0xFFFFu);
  v91 = 0x7FFFFFFF;
  v48 = *(v2 + 1408);
  if (!v48 || (v48 & 3) != 0)
  {
    goto LABEL_189;
  }

  v49 = sub_10005A2E0(v48, &v91);
  if (!v49)
  {
    v50 = sub_100065198(v49);
    if (!v50 || (v50 & 7) != 0)
    {
      goto LABEL_189;
    }

    if (v91 < 0)
    {
      goto LABEL_191;
    }

    sub_100058F68(v50, v3, v91);
  }

  if (!v96)
  {
    v51 = *(v2 + 2368);
    if (v51 > 1)
    {
      goto LABEL_191;
    }

    if ((v51 & 1) == 0)
    {
      if ((v3 & 7) != 0)
      {
        goto LABEL_189;
      }

      if ((*(*v3 + 272))(v3))
      {
        if (v91 < 0)
        {
          goto LABEL_191;
        }

        if (v91)
        {
          pthread_mutex_unlock((v2 + 1448));
          v52 = *(v2 + 8);
          if (!v52 || (v52 & 7) != 0)
          {
            goto LABEL_189;
          }

          if ((sub_10005BFD0(v52) & 1) == 0)
          {
            v53 = **v3;
            if (!v54 || (v54 & 7) != 0)
            {
              goto LABEL_189;
            }

            v55 = *(v2 + 8);
            v56 = (*(*v54 + 392))(v54);
            sub_100076B84(1, v55, v3, v56);
          }

          *(v2 + 1438) = 0;
          sub_100075B90(v2, v3, 2);
          sub_100075B90(v2, v3, 0);
          sub_100076C34(*(v2 + 8), v3, 0);
          pthread_mutex_lock((v2 + 1448));
          v96 = 11;
          pthread_mutex_unlock((v2 + 1448));
          goto LABEL_37;
        }
      }
    }
  }

  v87 = 0;
  v88 = &v87;
  v89 = 0x2000000000;
  v90 = 0;
  sub_1000B7DB4(a2, v3, 0, 0, 22, v6, &v96, 1u);
  sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
  v57 = sub_10003848C();
  v58 = *(v2 + 8);
  if (!v58)
  {
    goto LABEL_189;
  }

  if ((v58 & 7) != 0)
  {
    goto LABEL_189;
  }

  v59 = sub_100018DC0(v58);
  if (!v59 || (v59 & 7) != 0)
  {
    goto LABEL_189;
  }

  if ((*(*v59 + 224))(v59))
  {
    *(v88 + 24) = 1;
    goto LABEL_164;
  }

  v60 = *(v2 + 8);
  if (!v60)
  {
    goto LABEL_189;
  }

  if ((v60 & 7) != 0)
  {
    goto LABEL_189;
  }

  sub_10005CB70(v60, 1);
  v86 = 0;
  v61 = *(v2 + 1408);
  if (!v61 || (v61 & 3) != 0)
  {
    goto LABEL_189;
  }

  sub_10005A15C(v61, &v86);
  v97[0] = 0xAAAAAAAAAAAAAAAALL;
  v97[1] = 0xAAAAAAAAAAAAAAAALL;
  v85 = v97;
  v84 = 16;
  v62 = IapAuthCertSerial();
  v63 = dispatch_semaphore_create(0);
  if (v62)
  {
    v64 = v63;
    v65 = malloc_type_calloc((2 * v84) | 1, 1uLL, 0x100004077774924uLL);
    sub_100038378(v65, (2 * v84) | 1, v85, v84, "%02X", 0);
    v66 = sub_100048620();
    if (!v66 || (v66 & 7) != 0)
    {
      goto LABEL_189;
    }

    if ((*(*v66 + 208))(v66))
    {
      v67 = *(v2 + 8);
      if (!v67)
      {
        goto LABEL_189;
      }

      if ((v67 & 7) != 0)
      {
        goto LABEL_189;
      }

      v68 = sub_100018DC0(v67);
      if (!v68 || (v68 & 7) != 0)
      {
        goto LABEL_189;
      }

      v69 = (*(*v68 + 224))(v68) ^ 1;
    }

    else
    {
      v69 = 0;
    }

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 0x40000000;
    v83[2] = sub_10007A218;
    v83[3] = &unk_100116010;
    v83[4] = &v87;
    v83[5] = v64;
    sub_100013804(v65, v2 + 1592, v69, v83);
    syslog(4, "Waiting for user authorization...");
    if (!v64)
    {
      goto LABEL_199;
    }

    dispatch_semaphore_wait(v64, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v64);
    if (v65)
    {
      free(v65);
    }

    syslog(4, "Done waiting for user authorization!");
  }

  else
  {
    syslog(3, "Couldn't get cert serial for user authorization!\n");
  }

  v70 = *(v88 + 24);
  if (v70 > 1)
  {
LABEL_191:
    __break(0x550Au);
    goto LABEL_192;
  }

  if ((v70 & 1) == 0)
  {
LABEL_190:
    pthread_mutex_unlock((v2 + 1448));
    sub_100075B90(v2, v3, -1);
    pthread_mutex_lock((v2 + 1448));
    v80 = 0;
    goto LABEL_193;
  }

LABEL_164:
  v71 = sub_10003848C();
  v72 = v71 >= v57;
  v73 = v71 - v57;
  if (!v72)
  {
    __break(0x5515u);
    __break(0x550Cu);
LABEL_199:
    __break(0x5510u);
LABEL_200:
    __break(0x5500u);
    return;
  }

  syslog(3, "Authorization response time: %dms\n", v73);
  v74 = *(v2 + 8);
  v76 = (v74 & 7) == 0 && v74 != 0;
  if (v73 < 751)
  {
    if (!v76)
    {
      goto LABEL_189;
    }

    sub_10005CB70(v74, 0);
    pthread_mutex_unlock((v2 + 1448));
    sub_100075B90(v2, v3, 4);
    v77 = pthread_mutex_lock((v2 + 1448));
    if (v81 == 2 && v82 != 56 && !*(v2 + 1978))
    {
      v77 = sub_100079318(v2);
    }

    v78 = sub_100065198(v77);
    if (!v78 || (v78 & 7) != 0)
    {
      goto LABEL_189;
    }

    sub_100059D78(v78, v3, __n, __buf);
    v79 = *(v2 + 1408);
    if (v79)
    {
      if ((v79 & 3) != 0)
      {
        goto LABEL_189;
      }

      if (sub_10005A3BC(v79, __buf, __n))
      {
        goto LABEL_198;
      }

      if (__n != -1)
      {
        if (__n <= 0xFF)
        {
          if (!__CFADD__(__buf, __n))
          {
            *(__buf + __n) = *(v2 + 1438);
            v80 = 1;
            goto LABEL_193;
          }

          goto LABEL_195;
        }

        goto LABEL_197;
      }

      goto LABEL_200;
    }

LABEL_192:
    v96 = 10;
    v80 = 1;
LABEL_193:
    _Block_object_dispose(&v87, 8);
    pthread_mutex_unlock((v2 + 1448));
    if (!v80)
    {
LABEL_43:
      kdebug_trace();
      return;
    }

LABEL_60:
    sub_100075B90(v2, v3, 5);
    sub_1000B748C();
  }

  if (!v76)
  {
    goto LABEL_189;
  }

  sub_10005CC18(v74);
  pthread_mutex_unlock((v2 + 1448));
  _Block_object_dispose(&v87, 8);
}

NSObject *sub_10007A218(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  *(*(v3 + 8) + 24) = a2;
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_10007A230(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_90;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_90;
  }

  v37 = 4;
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_90;
  }

  v4 = *(result + 1416);
  if ((v4 + 8) >= 0x10)
  {
    goto LABEL_91;
  }

  v5 = *(a2 + 128);
  v6 = *(a2 + 8);
  if (v5 >= *(result + 1446) && v4 == 5 && v5 <= *(result + 1436))
  {
    v9 = *(a2 + 24);
    v37 = 7;
    v36 = 23;
    v10 = sub_10006733C(result, -1, &v36, 0, 0xFFFFu);
    if ((byte_10012BCB0 & 1) == 0)
    {
      v11 = *(v2 + 1440);
      if (v11 == 2)
      {
        pthread_mutex_lock((v2 + 1448));
        if (!v9 || (result = *(v2 + 1408)) == 0)
        {
          pthread_mutex_unlock((v2 + 1448));
          v8 = 2;
          goto LABEL_30;
        }

        if ((result & 3) != 0)
        {
          goto LABEL_90;
        }

        v8 = sub_10005A414(result, v9);
        pthread_mutex_unlock((v2 + 1448));
        if (v8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 != 1)
        {
          v8 = 94;
          goto LABEL_30;
        }

        result = sub_100065198(v10);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_90;
        }

        result = sub_1000932FC(result, v6);
        v12 = *(v2 + 2369);
        if (v12 > 1)
        {
          goto LABEL_91;
        }

        v13 = result;
        if (result == 53248 && (v12 & 1) != 0)
        {
          sub_1000DDEEC(0, 4, "%s:%d Debug DeviceID, pretend valid signature\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3135);
        }

        else
        {
          v35 = -1431655766;
          v34 = 0xAAAAAAAAAAAAAAAALL;
          v14 = pthread_self();
          pthread_getschedparam(v14, &v35, &v34);
          sched_priority = v34.sched_priority;
          v34.sched_priority = 31;
          v16 = pthread_self();
          v17 = pthread_setschedparam(v16, v35, &v34);
          result = sub_100065198(v17);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_90;
          }

          v8 = sub_100059E14(result, v6, v13, v9, v5);
          v34.sched_priority = sched_priority;
          v18 = pthread_self();
          pthread_setschedparam(v18, v35, &v34);
          if (v8)
          {
            goto LABEL_30;
          }
        }

        v33 = sub_10006825C(v6);
        if (v33)
        {
          result = sub_100065198(v33);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_90;
          }

          if (sub_1000932FC(result, v6) == 474)
          {
            result = sub_10004B1AC();
            if (!result || (result & 7) != 0)
            {
              goto LABEL_90;
            }

            (*(*result + 176))(result, *(v2 + 8), v6);
          }
        }
      }
    }

    v8 = 0;
    v37 = 0;
LABEL_30:
    sub_1000B7DB4(a2, v6, 0, 0, 25, *(a2 + 68), &v37, 1u);
    goto LABEL_31;
  }

  v7 = *(a2 + 68);
  v8 = 2;
  sub_1000B7854(a2);
LABEL_31:
  result = sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
  if (v37 <= 0x1F)
  {
    if (v37)
    {
      if (v4 == 5)
      {
        return sub_100079038(v2, v6);
      }

      return v8;
    }

    result = sub_100075B90(v2, v6, 6);
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_90;
    }

    result = (*(*v6 + 264))(v6);
    *(v2 + 2215) = result;
    v19 = *(v2 + 2214);
    if (v19 <= 1)
    {
      v20 = v19 == 0;
      v21 = result ^ 1;
      if (!v20)
      {
        v21 = 1;
      }

      if (v21)
      {
        goto LABEL_54;
      }

      v22 = sub_100065198(result);
      v23 = (*(*v6 + 208))(v6);
      result = *(v2 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_90;
      }

      result = sub_10005BDFC(result);
      if (v23 <= 7)
      {
        if (v23)
        {
          goto LABEL_54;
        }

        if (result == result)
        {
          if (result == 13)
          {
            if (!v22 || (v22 & 7) != 0)
            {
              goto LABEL_90;
            }

            v24 = sub_1000933B0(v22, v6);
            result = sub_100092B58(v22, v6);
            if (v24 == 56 && (result & 0x440) == 0 && (*(v2 + 1272) & 1) != 0)
            {
              result = sub_100076E70(v2, v25, 1);
              if (result)
              {
                sub_1000DDEEC(0, 4, "%s SetLineOutState failed _ackStatus:%02X\n", "HandleRetDevAuthenticationSignature", result);
              }
            }
          }

LABEL_54:
          result = sub_100065198(result);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_90;
          }

          v26 = sub_100092F68(result, v6);
          v27 = v26 >> 4;
          if (v27 == 2)
          {
            v28 = 1;
          }

          else
          {
            v28 = 5;
          }

          if (v27 == 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28;
          }

          if (v29 == 5)
          {
            goto LABEL_76;
          }

          v26 = (*(*v6 + 208))(v6);
          if (v29 == v26)
          {
            goto LABEL_76;
          }

          v34.sched_priority = 0;
          pthread_mutex_lock((v2 + 1448));
          result = *(v2 + 1408);
          if (result)
          {
            if ((result & 3) != 0)
            {
              goto LABEL_90;
            }

            v30 = sub_10005A184(result, &v34);
            v8 = v30;
            if (!v30)
            {
              result = sub_100065198(v30);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_90;
              }

              v8 = 0;
              v34.sched_priority &= dword_10012CE80;
            }
          }

          v26 = pthread_mutex_unlock((v2 + 1448));
          if (!v34.sched_priority)
          {
LABEL_76:
            result = sub_100065198(v26);
            if (result && (result & 7) == 0)
            {
              if (sub_100058EBC(result, v6) == 6)
              {
                v32 = *(v2 + 1440);
                sub_100074630(v2, v6, 0, 0);
                if (v32)
                {
                  *(v2 + 1440) = v32;
                }
              }

              else
              {
                sub_100074630(v2, v6, 0, 0);
              }

              return v8;
            }

            goto LABEL_90;
          }

          result = sub_100065198(v26);
          if (result)
          {
            if ((result & 7) == 0)
            {
              v31 = sub_10005941C(result, v6, v34.sched_priority);
              result = sub_100065198(v31);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  v26 = sub_10005939C(result, v6, v29);
                  goto LABEL_76;
                }
              }
            }
          }

LABEL_90:
          __break(0x5516u);
        }
      }
    }
  }

LABEL_91:
  __break(0x550Au);
  return result;
}

uint64_t sub_10007A818()
{
  v0 = __chkstk_darwin();
  if (!v0)
  {
    goto LABEL_31;
  }

  v2 = v0;
  if ((v0 & 7) != 0)
  {
    goto LABEL_31;
  }

  v3 = v1;
  bzero(v14, 0x803uLL);
  v13 = 2;
  if (!v3 || (v3 & 7) != 0)
  {
    goto LABEL_31;
  }

  if (*(v3 + 128))
  {
    return 4;
  }

  v6 = *(v3 + 8);
  v7 = sub_100065198(v4);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_31;
  }

  if (sub_100058EBC(v7, v6) != 6)
  {
    return 7;
  }

  if (*(v2 + 1440) != 2)
  {
    return 4;
  }

  memset(__b, 170, sizeof(__b));
  __n = 2048;
  result = sub_100059F60(__b, &__n);
  if (result || (v8 = __n, !__n))
  {
    if (result)
    {
      return 2;
    }

    v10 = 0;
    goto LABEL_28;
  }

  if (__n > 0x8000)
  {
LABEL_34:
    __break(0x5507u);
    return result;
  }

  if (((__n - 1) >> 7))
  {
    if (&v14[2] == 0 || &v13 < 0xFFFFFFFFFFFFFFFDLL)
    {
      v15[4] = __b[4];
      v15[5] = __b[5];
      v15[6] = __b[6];
      v15[7] = __b[7];
      v15[0] = __b[0];
      v15[1] = __b[1];
      v15[2] = __b[2];
      v14[1] = 0;
      v14[2] = (__n - 1) >> 7;
      v15[3] = __b[3];
      if (__b <= 0xFFFFFFFFFFFFFF7FLL)
      {
        if (__n >= 0x80)
        {
          __n -= 128;
          v9 = *(v3 + 68);
          sub_1000B748C();
        }

        __break(0x5515u);
        goto LABEL_34;
      }
    }

LABEL_32:
    __break(0x5513u);
  }

  if (__n - 1 > 0x7F)
  {
    __break(0x5518u);
LABEL_31:
    __break(0x5516u);
    goto LABEL_32;
  }

  if (&v14[2] != 0 && &v13 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_32;
  }

  v14[1] = 0;
  if (&v13 > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_32;
  }

  v14[2] = (__n - 1) >> 7;
  if ((v15 + 1) != 0 && &v13 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_32;
  }

  memcpy(v15, __b, __n);
  v10 = v8 + 4;
LABEL_28:
  sub_1000B7DB4(v3, v6, 0, 0, 27, *(v3 + 68), &v13, v10);
  return 0;
}

uint64_t sub_10007AAC4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 128) != 1)
  {
    return 2;
  }

  v3 = *(a2 + 8);
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = sub_100058EBC(result, v3);
  if (result != 6)
  {
    return 2;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (*v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d authentication status failure.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3518);
  }

  return 0;
}

uint64_t sub_10007AB78(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 128);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v12 + 15) = v7;
  v11[13] = v7;
  v12[0] = v7;
  v11[11] = v7;
  v11[12] = v7;
  v11[9] = v7;
  v11[10] = v7;
  v11[8] = v7;
  v11[6] = v7;
  v11[7] = v7;
  v11[4] = v7;
  v11[5] = v7;
  v11[2] = v7;
  v11[3] = v7;
  v11[0] = v7;
  v11[1] = v7;
  if (v4 < 4)
  {
    return 2;
  }

  v8 = sub_100065198(a1);
  if (!v8 || (v8 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  if (sub_100058EBC(v8, v5) != 6 || *(a1 + 1440) != 2)
  {
    return 2;
  }

  v10 = 255;
  result = sub_100059FD8(v5, v6, (v4 - 1), v11, &v10);
  if (!result)
  {
    sub_1000B7DB4(a2, *(a2 + 8), 0, 0, 30, *(a2 + 68), v11, v10);
    return 0;
  }

  return result;
}

uint64_t sub_10007ACC0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 128) != 1)
  {
    return 2;
  }

  v3 = *(a2 + 8);
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = sub_100058EBC(result, v3);
  if (result != 6)
  {
    return 2;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (*v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d Authentication status failure!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3636);
  }

  return 0;
}

uint64_t sub_10007AD74(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_210;
  }

  v2 = a1;
  if ((a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_210;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 22;
  }

  v5 = *(a1 + 1976);
  if (v5 >= 2)
  {
    goto LABEL_213;
  }

  v6 = *(a2 + 128);
  v7 = 22;
  if (*(a2 + 128) && (v5 & 1) == 0)
  {
    v8 = *(a2 + 24);
    if (!v8)
    {
      goto LABEL_210;
    }

    v9 = *v8;
    switch(*v8)
    {
      case 0:
        if (v6 != 5 || *(a1 + 1968))
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        v25 = bswap32(*(v8 + 1));
        if ((v25 & 1) == 0)
        {
          v16 = 0;
          *(a1 + 1968) = 0;
          goto LABEL_89;
        }

        *(a1 + 1968) = v25 & 0xFFFFCFFF;
        v7 = 22;
        v16 = 1;
        goto LABEL_90;
      case 1:
      case 6:
      case 7:
      case 8:
      case 0xE:
        if ((v6 - 2) > 0x3Fu)
        {
          goto LABEL_88;
        }

        v10 = 1;
        break;
      case 2:
        if (v6 != 8)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        v18 = *(v8 + 1);
        v19 = sub_10004B1AC();
        if (!v19 || (v19 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = (*(*v19 + 112))(v19);
        if (bswap32(v18) != a1)
        {
          goto LABEL_88;
        }

        if (v8 > 0xFFFFFFFFFFFFFFFALL)
        {
          goto LABEL_211;
        }

        *(v2 + 1662) = *(v8 + 5);
        if (v8 > 0xFFFFFFFFFFFFFFF9)
        {
          goto LABEL_211;
        }

        *(v2 + 1663) = *(v8 + 6);
        if (v8 > 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_211;
        }

        *(v2 + 1664) = *(v8 + 7);
        v20 = *(v2 + 8);
        if (!v20 || (v20 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v20, (v2 + 1592));
        v7 = 22;
        v16 = 4;
        goto LABEL_90;
      case 3:
        if (v6 != 4)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v27 = *(v8 + 1);
        if (v27 > 0xE)
        {
          goto LABEL_88;
        }

        if (v8 >= 0xFFFFFFFFFFFFFFFDLL || __CFADD__(a1 + 1666, 2 * v27))
        {
          goto LABEL_211;
        }

        *(a1 + 1666 + 2 * v27) = bswap32(*(v8 + 2)) >> 16;
        v28 = *(a1 + 8);
        if (!v28 || (v28 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v28, (v2 + 1592));
        v7 = 22;
        v16 = 8;
        goto LABEL_90;
      case 4:
        if (v6 != 4)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        *(a1 + 1656) = *(v8 + 1);
        if (v8 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1657) = *(v8 + 2);
        if (v8 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1658) = *(v8 + 3);
        v17 = *(a1 + 8);
        if (!v17 || (v17 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v17, (v2 + 1592));
        v7 = 22;
        v16 = 16;
        goto LABEL_90;
      case 5:
        if (v6 != 4)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        *(a1 + 1659) = *(v8 + 1);
        if (v8 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1660) = *(v8 + 2);
        if (v8 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1661) = *(v8 + 3);
        v26 = *(a1 + 8);
        if (!v26 || (v26 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v26, (v2 + 1592));
        v7 = 22;
        v16 = 32;
        goto LABEL_90;
      case 9:
        if (v6 != 3)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        if (bswap32(*(v8 + 1)) >> 16 < 0x80)
        {
          goto LABEL_88;
        }

        if ((v4 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = (*(*v4 + 144))(*(a2 + 8));
        v7 = 22;
        v16 = 512;
        goto LABEL_90;
      case 0xA:
        if (v6 != 2)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v16 = (*(v8 + 1) > 7u) << 10;
        goto LABEL_89;
      case 0xB:
        if (v6 != 5)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        v21 = bswap32(*(v8 + 1));
        *(a1 + 1952) = v21;
        v22 = *(a1 + 8);
        v23 = (v22 & 7) != 0 || v22 == 0;
        v24 = !v23;
        if ((v21 & 0xF) != 0)
        {
          if (!v24)
          {
            goto LABEL_210;
          }

          sub_10005BD18(v22, 0, 2u);
        }

        else
        {
          if (!v24)
          {
            goto LABEL_210;
          }

          sub_10005BD4C(v22, 0, 2u);
        }

        v59 = *(v2 + 1952);
        if ((v59 & 0xF) != 0)
        {
          v7 = sub_10007B860(*(v2 + 8), v59 & 0xF);
        }

        else
        {
          v7 = 22;
        }

        v60 = *(v2 + 8);
        if (!v60 || (v60 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v60, (v2 + 1592));
        v16 = 2048;
        goto LABEL_90;
      case 0xC:
        sub_1000DDEEC(0, 4, "%s:%d Accessory returned OTA data - should never be here\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3864);
        v7 = 22;
        v16 = 4096;
        goto LABEL_90;
      case 0xD:
        sub_1000DDEEC(0, 4, "%s:%d Accessory returned OTA waiver data - should never be here\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3870);
        v7 = 22;
        v16 = 0x2000;
        goto LABEL_90;
      default:
        return 22;
    }

    while (1)
    {
      if (~v8 < v10)
      {
        goto LABEL_211;
      }

      if (!*(v8 + v10))
      {
        break;
      }

      if (v10 == 0xFF)
      {
        __break(0x5507u);
LABEL_213:
        __break(0x550Au);
LABEL_214:
        __break(0x5514u);
LABEL_215:
        __break(0x5500u);
        JUMPOUT(0x10007B824);
      }

      v11 = v10 + 1;
      if (v10++ >= v6)
      {
        goto LABEL_22;
      }
    }

    v11 = v10;
LABEL_22:
    if (v6 <= v11)
    {
LABEL_88:
      v16 = 0;
      goto LABEL_89;
    }

    if (*v8 <= 6u)
    {
      if (v9 == 1)
      {
        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v14 = v6 - 1;
        v15 = (a1 + 1592);
        goto LABEL_181;
      }

      if (v9 == 6)
      {
        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v14 = v6 - 1;
        v15 = (a1 + 1696);
        goto LABEL_181;
      }
    }

    else
    {
      switch(v9)
      {
        case 7:
          if (v8 == -1)
          {
            goto LABEL_211;
          }

          v14 = v6 - 1;
          v15 = (a1 + 1760);
          goto LABEL_181;
        case 8:
          if (v8 == -1)
          {
            goto LABEL_211;
          }

          v14 = v6 - 1;
          v15 = (a1 + 1824);
          goto LABEL_181;
        case 14:
          if (v8 == -1)
          {
            goto LABEL_211;
          }

          v14 = v6 - 1;
          v15 = (a1 + 1888);
LABEL_181:
          memcpy(v15, (v8 + 1), v14);
          break;
      }
    }

    v53 = *v8;
    if (v53 > 0x1F)
    {
      goto LABEL_214;
    }

    v54 = *(v2 + 8);
    if (!v54 || (v54 & 7) != 0)
    {
      goto LABEL_210;
    }

    v16 = 1 << v53;
    a1 = sub_10005BF5C(v54, (v2 + 1592));
LABEL_89:
    v7 = 22;
LABEL_90:
    if (*(v2 + 1968) && v16)
    {
      if (v16 == 8)
      {
        v29 = sub_100065198(a1);
        if (!v29 || (v29 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_100092B58(v29, v4);
        if (a1 == *(v2 + 1972))
        {
          goto LABEL_104;
        }

LABEL_96:
        LOWORD(v65) = 3;
        v30 = sub_100065198(a1);
        if (!v30 || (v30 & 7) != 0)
        {
          goto LABEL_210;
        }

        v31 = sub_100092B58(v30, v4);
        v32 = 0;
        for (i = 1; ((*(v2 + 1972) ^ v31) & i) == 0; i *= 2)
        {
          if (v32++ > 0xD)
          {
            sub_1000DDEEC(0, 4, "%s:%d invalid lingo number!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 4082);
            return 12;
          }
        }

        if (&v61 != -33)
        {
          BYTE1(v65) = v32;
          v40 = *(a2 + 68);
          sub_1000B748C();
        }
      }

      else
      {
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_214;
        }

LABEL_104:
        while (!(v16 >> 14))
        {
          v35 = 2 * v16;
          v23 = (*(v2 + 1968) & (2 * v16)) == 0;
          v16 *= 2;
          if (!v23)
          {
            if (v35 > 0x7Fu)
            {
              if (v35 <= 0x3FFu)
              {
                switch(v35)
                {
                  case 0x80u:
                    v36 = 7;
                    break;
                  case 0x100u:
                    v36 = 8;
                    break;
                  case 0x200u:
                    v36 = 9;
                    break;
                  default:
                    return v7;
                }
              }

              else if (v35 > 0xFFFu)
              {
                if (v35 == 4096)
                {
                  v36 = 12;
                }

                else
                {
                  if (v35 != 0x2000)
                  {
                    return v7;
                  }

                  v36 = 13;
                }
              }

              else if (v35 == 1024)
              {
                v36 = 10;
              }

              else
              {
                if (v35 != 2048)
                {
                  return v7;
                }

                v36 = 11;
              }

LABEL_198:
              LOBYTE(v65) = v36;
              v58 = *(a2 + 68);
LABEL_199:
              sub_1000B748C();
            }

            if (v35 > 0xFu)
            {
              switch(v35)
              {
                case 0x10u:
                  v36 = 4;
                  break;
                case 0x20u:
                  v36 = 5;
                  break;
                case 0x40u:
                  v36 = 6;
                  break;
                default:
                  return v7;
              }

              goto LABEL_198;
            }

            if (v35 == 2)
            {
              v36 = 1;
              goto LABEL_198;
            }

            if (v35 != 4)
            {
              if (v35 != 8)
              {
                return v7;
              }

              goto LABEL_96;
            }

            v65 = 2;
            v64 = -86;
            v63 = -86;
            v62 = -86;
            v55 = sub_10004B1AC();
            v56 = sub_10004B1AC();
            if (v56)
            {
              if ((v56 & 7) == 0)
              {
                *(&v65 + 1) = bswap32((*(*v56 + 112))(v56));
                if (v55)
                {
                  if ((v55 & 7) == 0)
                  {
                    (*(*v55 + 160))(v55, &v64, &v63, &v62);
                    BYTE5(v65) = v64;
                    BYTE6(v65) = v63;
                    HIBYTE(v65) = v62;
                    v57 = *(a2 + 68);
                    goto LABEL_199;
                  }
                }
              }
            }

            goto LABEL_210;
          }
        }

        if (v16 != 0x4000)
        {
          return v7;
        }

        sub_1000651C8(*(v2 + 8));
        if (v37)
        {
          if ((v37 & 7) != 0)
          {
            goto LABEL_210;
          }

          v37 = sub_1000629DC(v37, *(v2 + 1980));
        }

        v38 = *(v2 + 1968);
        if ((v38 & 8) != 0)
        {
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v43 = sub_100065198(v37);
            if (!v43 || (v43 & 7) != 0)
            {
              goto LABEL_210;
            }

            v37 = sub_100092B58(v43, v4);
            if ((v37 >> v42))
            {
              if (v41 > ~(v2 + 1666))
              {
                goto LABEL_211;
              }

              v37 = sub_10007B9B0(v2, v4, v42, *(v2 + 2 * v42 + 1666));
              if (!v37)
              {
                break;
              }
            }

            ++v42;
            v41 += 2;
            if (v42 == 15)
            {
              v39 = 1;
              goto LABEL_149;
            }
          }

          v39 = 0;
LABEL_149:
          v38 = *(v2 + 1968);
        }

        else
        {
          v39 = 1;
        }

        if ((v38 & 4) == 0 || (v44 = *(v2 + 1662), v44 == 255) || (v45 = *(v2 + 1663), v45 == 255) || (v46 = *(v2 + 1664), v46 == 255))
        {
          v47 = 1;
        }

        else
        {
          v47 = sub_10007BA9C(v2, v44, v45, v46);
        }

        v48 = *(v2 + 8);
        if (v48 && (v48 & 7) == 0)
        {
          v49 = sub_10005BDFC(v48);
          if (v47)
          {
            if (v39)
            {
              *(v2 + 1976) = 1;
              if (v49 != v49)
              {
                goto LABEL_213;
              }

              v50 = 7;
            }

            else
            {
              if (v49 != v49)
              {
                goto LABEL_213;
              }

              v50 = 4;
            }
          }

          else
          {
            if (v49 != v49)
            {
              goto LABEL_213;
            }

            v50 = 2;
          }

          if (v49 == -1)
          {
            v51 = 16;
          }

          else
          {
            v51 = v49;
          }

          sub_100065778(v2, v4, v50, v51);
          if (*(v2 + 1696) || *(v2 + 1760) || *(v2 + 1592))
          {
            v52 = sub_100048620();
            if (!v52 || (v52 & 7) != 0)
            {
              goto LABEL_210;
            }

            (*(*v52 + 312))(v52, v4, *(v2 + 2208), v2 + 1592, v2 + 1760, v2 + 1696);
          }

          return 0;
        }

LABEL_210:
        __break(0x5516u);
      }

LABEL_211:
      __break(0x5513u);
    }
  }

  return v7;
}

uint64_t sub_10007B860(uint64_t result, char a2)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_17;
    }

    result = sub_10005BD04(result);
    if (!result)
    {
      goto LABEL_17;
    }

    v3 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_17;
    }

    v4 = sub_100018DC0(result);
    if (!v4)
    {
      return 2;
    }

    v5 = v4;
    sub_10005BB24(v3, 0);
    result = sub_1000653EC(0, v3);
    if (!result)
    {
      v6 = 2;
LABEL_14:
      sub_10005BB6C(v3, 0);
      return v6;
    }

    if ((result & 7) == 0)
    {
      if ((*(result + 1952) & a2 & 0xF) != 0)
      {
        *(result + 1984) = a2 & 0xF;
        if ((v5 & 7) == 0)
        {
          (*(*v5 + 16))(v5, 0);
          sub_1000B748C();
        }

        goto LABEL_17;
      }

      v6 = 22;
      goto LABEL_14;
    }
  }

  else
  {
    __break(0x5518u);
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

BOOL sub_10007B9B0(_BOOL8 result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = *(result + 1516);
    v7 = (*(*a2 + 224))(a2);
    if (a3 > 0xE)
    {
      return 0;
    }

    v8 = v6 & 0x721D;
    if (!v7)
    {
      v8 = v6;
    }

    if ((v8 >> a3))
    {
      v10 = -1;
      v9 = -1;
      sub_100065198(v7);
      sub_1000C9B60(a3, &v10, &v9);
      result = 0;
      if (v10 != 255 && v9 != 255)
      {
        return (v9 | (v10 << 8)) >= a4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007BA9C(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (!result || (result & 7) != 0 || (v9 = -86, v8 = -86, v7 = -86, (result = sub_10004B1AC()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 160))(result, &v9, &v8, &v7);
    return ((a2 << 16) | (a3 << 8) | a4) <= ((v9 << 16) | (v8 << 8) | v7);
  }

  return result;
}

uint64_t sub_10007BB60(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_143;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_143;
  }

  if (!a2)
  {
    goto LABEL_143;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_143;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 128);
  v31 = -21846;
  v7 = sub_100046A8C();
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_143;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_143;
  }

  v9 = sub_10005BC54(v8);
  v10 = sub_100065198(v9);
  if (!v10)
  {
    goto LABEL_143;
  }

  v11 = v10;
  if ((v10 & 7) != 0)
  {
    goto LABEL_143;
  }

  v12 = sub_100092F68(v10, v4);
  v13 = sub_100058FB0(v11, v4);
  if (!v6 || (v12 & 3) != 1 || v13)
  {
    goto LABEL_16;
  }

  if (!v5)
  {
LABEL_143:
    __break(0x5516u);
    goto LABEL_144;
  }

  v14 = *v5;
  if (v14 != 3 && v14 <= 0x16)
  {
    v15 = *(a2 + 68);
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v26 = -1;
    v25 = 0;
    sub_1000B7854(a2);
    sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
    sub_100079038(a1, v4);
    return 25;
  }

LABEL_16:
  v16 = 4;
  if (v5)
  {
    if (v6 == 1)
    {
      v17 = *v5;
      if (v17 <= 0x16)
      {
        LOBYTE(v31) = *v5;
        switch(v17)
        {
          case 0u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v19 = sub_1000BE5F8(v9 + 16);
            if (v19 > 3)
            {
              goto LABEL_145;
            }

            if (v19 == 1)
            {
              goto LABEL_127;
            }

            if (v19 != 2)
            {
              goto LABEL_132;
            }

            goto LABEL_130;
          case 1u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BF398(v9 + 16);
            goto LABEL_92;
          case 2u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BF360(v9 + 16);
            if (v18 > 3)
            {
              goto LABEL_145;
            }

            LOBYTE(v18) = v18 != 0;
            goto LABEL_93;
          case 3u:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 192))(v7, v4))
            {
              goto LABEL_132;
            }

            if (!sub_10006852C(v4))
            {
              return 7;
            }

            if (!v9)
            {
              goto LABEL_143;
            }

            if ((v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v20 = *(v9 + 168);
            if (!v20 || (v20 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (&v25 == -31)
            {
              goto LABEL_144;
            }

            LOBYTE(v18) = *(v20 + 16) != 0;
            goto LABEL_94;
          case 4u:
          case 5u:
          case 6u:
          case 7u:
            if (sub_10007C398(v4))
            {
              return 16;
            }

            else
            {
              return 7;
            }

          case 8u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v22 = sub_1000BF3D0(v9 + 16);
            if (v22 > 7)
            {
              goto LABEL_145;
            }

            v16 = 7;
            if (v22 <= 1)
            {
              if (v22)
              {
LABEL_130:
                if (&v31 == -1)
                {
                  goto LABEL_144;
                }

                LOBYTE(v18) = 1;
              }

              else
              {
LABEL_132:
                if (&v31 == -1)
                {
                  goto LABEL_144;
                }

                LOBYTE(v18) = 0;
              }
            }

            else
            {
              switch(v22)
              {
                case 2:
LABEL_127:
                  if (&v25 == -31)
                  {
                    goto LABEL_144;
                  }

                  LOBYTE(v18) = 2;
                  break;
                case 3:
                  if (&v25 == -31)
                  {
                    goto LABEL_144;
                  }

                  LOBYTE(v18) = 3;
                  break;
                case 4:
                  if (&v25 != -31)
                  {
                    LOBYTE(v18) = 4;
                    break;
                  }

LABEL_144:
                  __break(0x5513u);
LABEL_145:
                  __break(0x550Au);
                  JUMPOUT(0x10007C33CLL);
                default:
                  return v16;
              }
            }

LABEL_94:
            HIBYTE(v31) = v18;
LABEL_95:
            v21 = *(a2 + 8);
            if (v21)
            {
              sub_1000B7DB4(a2, v21, 0, 0, 42, *(a2 + 68), &v31, 2u);
              return 0;
            }

            __break(0x5518u);
            goto LABEL_143;
          case 9u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BF408(v9 + 16);
            goto LABEL_92;
          case 0xAu:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BF328(v9 + 16);
            goto LABEL_92;
          case 0xCu:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BF440(v9 + 16);
            goto LABEL_92;
          case 0xDu:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BF478(v9 + 16);
LABEL_92:
            if (v18 <= 1)
            {
              goto LABEL_93;
            }

            goto LABEL_145;
          case 0xEu:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 240))(v7, v4))
            {
              return v16;
            }

            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v18) = sub_10007C408(v9);
            goto LABEL_93;
          case 0xFu:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            v18 = *(a1 + 2203);
            goto LABEL_92;
          case 0x10u:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 248))(v7, v4))
            {
              return v16;
            }

            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v18) = sub_10007C43C(v9);
            goto LABEL_93;
          case 0x11u:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (((*(*v7 + 184))(v7) & 1) == 0 && !(*(*v7 + 200))(v7))
            {
              return v16;
            }

            if (!sub_100068624(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v23 = *(v9 + 328);
            if (v23 >= 4)
            {
              goto LABEL_145;
            }

            switch(v23)
            {
              case 2u:
                goto LABEL_127;
              case 1u:
                goto LABEL_130;
              case 0u:
                goto LABEL_132;
            }

            goto LABEL_95;
          case 0x12u:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 176))(v7) || ((*(*v7 + 160))(v7) & 1) != 0 || ((*(*v7 + 168))(v7) & 1) != 0)
            {
LABEL_112:
              sub_1000DDEEC(0, 4, "%s:%d Bad parameter!\n");
              return v16;
            }

            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v18) = sub_10007C470(v9);
LABEL_93:
            if (&v25 != -31)
            {
              goto LABEL_94;
            }

            goto LABEL_144;
          case 0x15u:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v18) = sub_10007C4A4(v9);
            goto LABEL_93;
          case 0x16u:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 112))(v7))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v18) = (*(*(v9 + 1296) + 112))(v9 + 1296, 0);
            goto LABEL_93;
          default:
            goto LABEL_112;
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10007C398(uint64_t a1)
{
  result = sub_100065198(a1);
  if (!result)
  {
    __break(0x5518u);
LABEL_8:
    sub_1000E1D34();
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = sub_100092B58(result, a1);
    LODWORD(result) = sub_100058FB0(v3, a1);
    if (v4)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10007C408(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 680);
    if (v1 && (*(result + 680) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007C43C(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 776);
    if (v1 && (*(result + 776) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007C470(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 872);
    if (v1 && (*(result + 872) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007C4A4(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 1256);
    if (v1 && (*(result + 1256) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10007C4D8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_48:
    __break(0x5516u);
    return;
  }

  if (!strcmp((a1 + 1592), "Drive Kit Plus"))
  {
    if (*(a1 + 2104))
    {
      v2 = *(a1 + 2088);
      v22 = v2;
      if (v2 != a1 + 2096)
      {
        v3 = 0;
        while (!v3)
        {
          if (!v2 || (v2 & 7) != 0)
          {
            goto LABEL_48;
          }

          v4 = *(v2 + 40);
          if (v4)
          {
            if ((v4 & 7) != 0)
            {
              goto LABEL_48;
            }

            v3 = strcmp(*(v4 + 24), "com.mbrdna.drivestyle") == 0;
          }

          else
          {
            v3 = 0;
          }

          sub_100007D44(&v22);
          v2 = v22;
          if (v22 == a1 + 2096)
          {
            if (!v3)
            {
              return;
            }

            break;
          }
        }

        v5 = sub_10000C0EC();
        pthread_mutex_lock(&stru_10012B758);
        v6 = *(v5 + 8);
        if (v6 == v5)
        {
LABEL_47:
          pthread_mutex_unlock(&stru_10012B758);
          return;
        }

        while (v6 && (v6 & 7) == 0)
        {
          if (*(v6 + 16))
          {
            v7 = *(a1 + 8);
            if (!v7)
            {
              goto LABEL_48;
            }

            if ((v7 & 7) != 0)
            {
              goto LABEL_48;
            }

            v8 = sub_100018DC0(v7);
            if (!v8 || (v8 & 7) != 0)
            {
              goto LABEL_48;
            }

            if ((*(*v8 + 96))(v8, *(v6 + 16)))
            {
              v9 = *(v6 + 16);
              if (!v9 || (v9 & 7) != 0)
              {
                goto LABEL_48;
              }

              if (*(v9 + 32))
              {
                v10 = sub_1000CC7A0();
                if (!v10 || (v10 & 7) != 0)
                {
                  goto LABEL_48;
                }

                v11 = (*(*v10 + 104))(v10, *(v6 + 16));
                if (v11)
                {
                  v12 = v11;
                  v13 = *(a1 + 8);
                  if (!v13 || (v13 & 7) != 0)
                  {
                    goto LABEL_48;
                  }

                  v14 = *(v6 + 16);
                  if (v14 != sub_100018DC0(v13))
                  {
                    if ((v12 & 7) != 0)
                    {
                      goto LABEL_48;
                    }

                    if (((*(*v12 + 48))(v12) & 0x1000) != 0)
                    {
                      v15 = *(v6 + 16);
                      if (!v15)
                      {
                        goto LABEL_48;
                      }

                      if ((v15 & 7) != 0)
                      {
                        goto LABEL_48;
                      }

                      v16 = (*(*v15 + 200))(v15);
                      v17 = (*(*v12 + 104))(v12);
                      if (!v17)
                      {
                        goto LABEL_48;
                      }

                      v18 = v17;
                      if ((v17 & 3) != 0)
                      {
                        goto LABEL_48;
                      }

                      v19 = (*(*v12 + 104))(v12);
                      if (!v19)
                      {
                        goto LABEL_48;
                      }

                      v20 = v19;
                      if ((v19 & 3) != 0)
                      {
                        goto LABEL_48;
                      }

                      v21 = (*(*v12 + 104))(v12);
                      if (!v21 || (v21 & 3) != 0)
                      {
                        goto LABEL_48;
                      }

                      syslog(4, "%s:%s-%d found another port %s that supports Display Port on same connector, with acc details %s, %s, %s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "CheckForVideoResourceOverride", 4796, v16, v18, (v20 + 104), (v21 + 168));
                    }
                  }
                }
              }
            }
          }

          v6 = *(v6 + 8);
          if (v6 == v5)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_48;
      }
    }
  }
}

uint64_t sub_10007C83C(uint64_t result)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (qword_10012BCB8 != -1)
  {
    sub_1000E23E0();
  }

  v2 = byte_10012B488;
  v3 = byte_10012BCB1;
  result = sub_10007C9B4(*(v1 + 8));
  v4 = *(v1 + 1976);
  if (v4 >= 2)
  {
    goto LABEL_19;
  }

  v5 = result;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = *(v1 + 1977);
  if (v6 > 1)
  {
LABEL_19:
    __break(0x550Au);
    goto LABEL_20;
  }

  if ((v6 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "AccInfo Pending, skip sending Database Changed Notification until ready(%d) or timeout(%d)");
    return 0;
  }

LABEL_9:
  if (((v2 | v3) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (v5 && (byte_10012BCB1 & 1) == 0)
  {
    if ((v5 & 3) == 0)
    {
      if (!strstr((v5 + 104), "TOYOTA"))
      {
        return 1;
      }

      sub_1000DDEEC(0, 4, "Detected Blacklisted HeadUnit ('%s' / '%s'), skip sending Database Changed Notification");
      return 0;
    }

LABEL_20:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10007C9B4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = sub_10005A9E0(a1);
  if (!result)
  {
    return 0;
  }

  if ((a1 & 7) != 0 || (result = sub_10005BD04(a1)) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    return sub_10005BF44(result);
  }

  return result;
}

uint64_t sub_10007CA30(uint64_t result, int a2)
{
  if (!result)
  {
    goto LABEL_40;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_40;
  }

  v5 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_1000933B0(result, v5);
  if (result != 56)
  {
    goto LABEL_14;
  }

  v6 = *(v2 + 2200);
  if (v6 > 1)
  {
LABEL_41:
    __break(0x550Au);
    return result;
  }

  if (v6 == 1)
  {
LABEL_14:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  LOBYTE(v7) = 1;
  if (a2 <= 9)
  {
    if (a2 >= 3)
    {
      if (a2 == 3)
      {
        v7 = *(v2 + 2056);
        return v7 & 1;
      }

      if (a2 != 8)
      {
        return v7 & 1;
      }
    }

    goto LABEL_30;
  }

  if (a2 <= 16)
  {
    if (a2 != 10)
    {
      if (a2 == 14)
      {
        v7 = (*(v2 + 2057) >> 6) & 1;
      }

      return v7 & 1;
    }

LABEL_30:
    v7 = (*(v2 + 2056) >> 2) & 1;
    return v7 & 1;
  }

  if (a2 == 17)
  {
    v7 = (*(v2 + 2056) >> 1) & 1;
    return v7 & 1;
  }

  if (a2 == 18)
  {
    v7 = (*(v2 + 2057) >> 4) & 1;
    return v7 & 1;
  }

  if (a2 != 22)
  {
    return v7 & 1;
  }

  if ((*(v2 + 2058) & 0x80) == 0)
  {
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  result = sub_100046A8C();
  if (!result || (result & 7) != 0)
  {
LABEL_40:
    __break(0x5516u);
    goto LABEL_41;
  }

  v8 = *(*result + 112);

  return v8();
}

uint64_t sub_10007CBB8(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    goto LABEL_249;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_249;
  }

  if (!a2)
  {
    goto LABEL_249;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_249;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 128);
  v9 = sub_100046A8C();
  v10 = *(a1 + 8);
  if (!v10)
  {
    goto LABEL_249;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_249;
  }

  v11 = sub_10005BC54(v10);
  v12 = sub_100065198(v11);
  if (!v12)
  {
    goto LABEL_249;
  }

  v13 = v12;
  if ((v12 & 7) != 0)
  {
    goto LABEL_249;
  }

  v14 = sub_100092F68(v12, v6);
  v15 = sub_100058FB0(v13, v6);
  if (v8 && (v14 & 3) == 1 && !v15)
  {
    if (!v7)
    {
LABEL_249:
      __break(0x5516u);
      goto LABEL_250;
    }

    v16 = *v7;
    if (v16 != 3 && v16 <= 0x16)
    {
      v17 = *(a2 + 68);
      sub_1000B7854(a2);
      sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
      sub_100079038(a1, v6);
      v18 = 25;
LABEL_26:
      sub_1000DDEEC(0, 4, "%s:%d invalid payload!\n");
      return v18;
    }
  }

  else if (!v7)
  {
    v18 = 4;
    goto LABEL_26;
  }

  if (v8 >= 3)
  {
    v19 = *v7;
    if (v19 <= 0x16)
    {
      if (sub_10007CA30(a1, *v7))
      {
        switch(v19)
        {
          case 0u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v38 = v7[1];
            if (v38 > 2)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v39 = v7[2];
            if (v39 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v24 = sub_1000BF518(v11 + 16, dword_1000EF204[v38], v39 != 0);
            goto LABEL_242;
          case 1u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v44 = v7[1];
            if (v7[1] && v44 != 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] == 1)
            {
              v45 = 1;
              goto LABEL_235;
            }

            if (!v7[2])
            {
              v45 = 0;
LABEL_235:
              if (v11 && (v11 & 7) == 0)
              {
                v24 = sub_10007D7A4(v11, v44, v45);
                goto LABEL_242;
              }

              goto LABEL_249;
            }

            return 4;
          case 2u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v32 = v7[1];
            if (v32 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] == 1)
            {
              v33 = 1;
              goto LABEL_231;
            }

            if (!v7[2])
            {
              v33 = 0;
LABEL_231:
              if (v11 && (v11 & 7) == 0)
              {
                v24 = sub_10007D780(v11, v32, v33);
LABEL_242:
                v18 = v24;
                goto LABEL_243;
              }

              goto LABEL_249;
            }

            return 4;
          case 3u:
            if (v8 != 3)
            {
              return 4;
            }

            if (!v6 || (v6 & 7) != 0)
            {
              goto LABEL_249;
            }

            if ((*(*v6 + 224))(v6))
            {
              return 4;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_249;
            }

            v48 = (*(*v9 + 192))(v9, v6);
            if (!v48)
            {
              if (v7 != -1)
              {
                return 4 * (v7[1] != 0);
              }

LABEL_250:
              __break(0x5513u);
              JUMPOUT(0x10007D6A0);
            }

            v49 = sub_100065198(v48);
            if (!v49 || (v49 & 7) != 0)
            {
              goto LABEL_249;
            }

            v50 = sub_100092B58(v49, v6);
            v51 = sub_10007D6FC(*(a1 + 8));
            *(a1 + 2212) = 1;
            if ((v50 & 0x400) != 0)
            {
              v65 = v51;
              v66 = sub_100069E2C(v6);
              if (v65 & 0x200000) == 0 && (v66)
              {
                return 0;
              }
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            if (!v7[1])
            {
LABEL_245:
              v52 = 0;
              goto LABEL_246;
            }

            if (v7[1] != 1)
            {
              return 4;
            }

            v52 = 1;
LABEL_246:

            return sub_100076E70(a1, v25, v52);
          case 4u:
          case 5u:
          case 6u:
          case 7u:
            v20 = sub_10007C398(v6) == 0;
            v21 = 16;
            goto LABEL_22;
          case 8u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            if (v7[1] > 4u)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v34 = sub_1000BF3D0(v11 + 16);
            v25 = v7[1];
            if ((v25 - 1) >= 4)
            {
              v25 = v34;
              if (v34 > 7)
              {
                goto LABEL_244;
              }
            }

            v24 = sub_10007D7C8(v11, v25, 0);
            goto LABEL_242;
          case 9u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v30 = v7[1];
            if (v30 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v31 = v7[2];
            if (v31 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v24 = sub_10007D7EC(v11, v30, v31 != 0);
            goto LABEL_242;
          case 0xAu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v46 = v7[1];
            if (v7[1] && v46 != 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] == 1)
            {
              v47 = 1;
              goto LABEL_239;
            }

            if (!v7[2])
            {
              v47 = 0;
LABEL_239:
              if (v11 && (v11 & 7) == 0)
              {
                v24 = sub_10007D75C(v11, v46, v47);
                goto LABEL_242;
              }

              goto LABEL_249;
            }

            return 4;
          case 0xCu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v26 = v7[1];
            if (v26 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v27 = v7[2];
            if (v27 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v24 = sub_10007D810(v11, v26, v27 != 0);
            goto LABEL_242;
          case 0xDu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v22 = v7[1];
            if (v22 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v23 = v7[2];
            if (v23 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v24 = sub_10007D834(v11, v22, v23 != 0);
            goto LABEL_242;
          case 0xEu:
            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_249;
            }

            if (!(*(*v9 + 240))(v9, v6))
            {
              return 4;
            }

            if (sub_10007C398(v6))
            {
              if (v8 != 3)
              {
                v53 = 0;
                v18 = 7;
                goto LABEL_200;
              }
            }

            else
            {
              v53 = 0;
              v18 = 7;
              if (v8 != 3 || (a3 & 1) == 0)
              {
                goto LABEL_200;
              }
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v57 = v7[1];
            v20 = v57 == 1;
            v58 = v57 > 1;
            v53 = v20;
            v18 = (4 * v58);
LABEL_200:
            sub_100075A48(a1, v53, 0);
            return v18;
          case 0xFu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v35 = v7[1];
            if (v35 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v36 = v7[2];
            if (v36 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v18 = sub_1000C05AC(v11 + 432, v35 != 0, v36 != 0);
            *(a1 + 2203) = sub_10007D858(v11);
            goto LABEL_243;
          case 0x10u:
            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_249;
            }

            if (!(*(*v9 + 248))(v9, v6))
            {
              return 4;
            }

            if ((a3 & 1) == 0 && !sub_10007C398(v6))
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v37 = v7[1];
            if (v37 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            sub_1000C05AC(v11 + 720, v37 == 1, 0);
            return 0;
          case 0x11u:
            v20 = sub_10007C398(v6) == 0;
            v21 = 4;
LABEL_22:
            if (v20)
            {
              return 7;
            }

            else
            {
              return v21;
            }

          case 0x12u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v40 = v7[1];
            if (v40 > 1)
            {
              return 4;
            }

            v41 = *(a1 + 8);
            v43 = (v41 & 7) == 0 && v41 != 0;
            if (v40 == 1)
            {
              if (!v43)
              {
                goto LABEL_249;
              }

              sub_10005BD18(v41, 0, 3u);
            }

            else
            {
              if (!v43)
              {
                goto LABEL_249;
              }

              sub_10005BD4C(v41, 0, 3u);
            }

            v63 = *(a1 + 2200);
            if (v63 > 1)
            {
              goto LABEL_244;
            }

            if ((v63 & 1) == 0 && (*(a1 + 1273) & 0x10) == 0)
            {
              v18 = 4;
LABEL_224:
              if (!v63 && (*(a1 + 1273) & 0x10) != 0)
              {
                sub_10007D8C0(*(a1 + 8));
              }

LABEL_243:
              if (v18 > 0x1F)
              {
                goto LABEL_244;
              }

              return v18;
            }

            if (v11 && (v11 & 7) == 0)
            {
              v64 = sub_1000C05AC(v11 + 816, v40 == 1, 0);
              v63 = *(a1 + 2200);
              if (v63 <= 1)
              {
                v18 = v64;
                goto LABEL_224;
              }

LABEL_244:
              __break(0x550Au);
              goto LABEL_245;
            }

            goto LABEL_249;
          case 0x13u:
            if (sub_10007C398(v6))
            {
              if (v8 != 3)
              {
                return 4;
              }
            }

            else
            {
              v18 = 4;
              if (v8 != 3 || (a3 & 1) == 0)
              {
                return v18;
              }
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v55 = v7[1];
            if (v55 <= 1)
            {
              if (v7 > 0xFFFFFFFFFFFFFFFDLL)
              {
                goto LABEL_250;
              }

              v56 = v7[2];
              if (v56 <= 1)
              {
                if (v11 && (v11 & 7) == 0)
                {
                  v18 = sub_1000C05AC(v11 + 528, v55 != 0, v56 != 0);
                  *(a1 + 2213) = sub_10007D88C(v11);
                  goto LABEL_243;
                }

                goto LABEL_249;
              }
            }

            break;
          case 0x15u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v28 = v7[1];
            if (v28 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] > 1u)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v29 = *(a1 + 2200);
            if (v29 > 1)
            {
              goto LABEL_244;
            }

            v24 = sub_1000C2978(v11 + 1200, v28 == 1, 1, v29 == 0);
            goto LABEL_242;
          case 0x16u:
            v54 = sub_100046A8C();
            if (!v54 || (v54 & 7) != 0)
            {
              goto LABEL_249;
            }

            if (!(*(*v54 + 112))(v54))
            {
              return 4;
            }

            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v59 = v7[1];
            if (v59 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v60 = v7[2];
            if (v60 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v61 = *(a1 + 2200);
            if (v61 > 1)
            {
              goto LABEL_244;
            }

            v24 = sub_1000BD004(v11 + 1296, v59 != 0, v60 != 0, v61 == 0);
            goto LABEL_242;
          default:
            v18 = 4;
            sub_1000DDEEC(0, 4, "CIapLingoGeneral::HandleSetiPodPreferences invalid preference: 0x%02X\n");
            return v18;
        }
      }
    }
  }

  return 4;
}

uint64_t sub_10007D6FC(uint64_t result)
{
  if (!result)
  {
    __break(0x5518u);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result;
  result = sub_10005A9E0(result);
  if (!result)
  {
    return 0;
  }

  if ((v1 & 7) != 0)
  {
    goto LABEL_9;
  }

  return sub_10005BF14(v1);
}

uint64_t sub_10007D75C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BF768(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D780(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 4)
  {
    return sub_1000BF7D8(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D7A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BF848(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D7C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 8)
  {
    return sub_1000BF8B8(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D7EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BEEDC(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D810(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BEE6C(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D834(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BF928(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

BOOL sub_10007D858(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 488);
    if (v1 && (*(result + 488) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007D88C(_BOOL8 result)
{
  if (result && (result & 7) == 0)
  {
    v1 = *(result + 584);
    if (v1 && (*(result + 584) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10007D8C0(uint64_t result)
{
  if (!result)
  {
    sub_1000DDEEC(0, 4, "%s:%d SetDisplayPort:  no handle!..", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 13295);
    return 22;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    return 22;
  }

  if ((result & 7) == 0)
  {
    (*(*result + 16))(result, 0);
    sub_1000B748C();
  }

LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_10007D9D0(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_119;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_119;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  if (!a2)
  {
    goto LABEL_119;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_119;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 128);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = sub_1000C4254();
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_119;
  }

  v9 = 0;
  if (sub_100094598(v8, v5))
  {
    v10 = *(a2 + 68);
LABEL_12:
    WORD5(v35) = v10;
    goto LABEL_13;
  }

  if (v6 && v7 >= 2)
  {
    v10 = bswap32(*v6) >> 16;
    v9 = 2;
    goto LABEL_12;
  }

LABEL_13:
  result = sub_10007C398(v5);
  if (!result)
  {
    v20 = 0;
    v19 = 7;
    goto LABEL_109;
  }

  if (!v5 || !v6)
  {
    __break(0x5518u);
LABEL_119:
    __break(0x5516u);
    goto LABEL_120;
  }

  v12 = v9 + 2;
  if (v9 + 2 >= v7)
  {
    goto LABEL_108;
  }

  *&v35 = v5;
  WORD4(v35) = 44;
  v13 = ~v6;
  if (~v6 < v9)
  {
    goto LABEL_120;
  }

  v14 = *(v6 + v9);
  LODWORD(v36) = v14;
  v15 = v9 | 1;
  if (v13 < v15)
  {
    goto LABEL_120;
  }

  v16 = *(v6 + v15);
  DWORD1(v36) = v16;
  if (v13 < v12)
  {
    goto LABEL_120;
  }

  v17 = v7 - v12;
  if (v7 < v12)
  {
    goto LABEL_122;
  }

  if (WORD1(v17))
  {
LABEL_123:
    __break(0x5507u);
    goto LABEL_124;
  }

  if (v14 > 1)
  {
    goto LABEL_121;
  }

  if (v14)
  {
    v32 = 1;
    v31 = 5996;
    v18 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: Invalid tunnel class: %d\n";
LABEL_25:
    v19 = 4;
    sub_1000DDEEC(0, 4, v18, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", v31, v32);
    v20 = 0;
    goto LABEL_109;
  }

  if (v16 > 0x1F)
  {
LABEL_121:
    __break(0x550Au);
LABEL_122:
    __break(0x5515u);
    goto LABEL_123;
  }

  v21 = (v6 + v12);
  v22 = (v7 - v12);
  if (v16 <= 7)
  {
    if (v16 <= 3)
    {
      if (!v16)
      {
        if (v22 != 2)
        {
          goto LABEL_108;
        }

        LOBYTE(v37) = *v21;
        if (v21 == -1)
        {
          goto LABEL_120;
        }

        v19 = 0;
        v27 = v21[1];
LABEL_74:
        HIDWORD(v36) = v27;
        goto LABEL_75;
      }

      if (v16 != 3)
      {
        goto LABEL_76;
      }

      if (v22 != 2)
      {
        goto LABEL_108;
      }

      BYTE12(v36) = *v21;
      if (v21 == -1)
      {
        goto LABEL_120;
      }

      v19 = 0;
      v23 = v21[1];
LABEL_43:
      BYTE13(v36) = v23;
      goto LABEL_75;
    }

    if (v16 == 4)
    {
      if (v22 != 2)
      {
        goto LABEL_108;
      }

      v19 = 0;
      v28 = *v21;
      goto LABEL_65;
    }

    if (v16 != 6)
    {
      goto LABEL_76;
    }

    if (!v22)
    {
      goto LABEL_108;
    }

    v24 = *v21;
    DWORD2(v36) = v24;
    if (v24 <= 7)
    {
      if (v24 > 2)
      {
        if (v24 > 4)
        {
          if (v24 == 5)
          {
            v20 = 0;
            v19 = 4;
            if (v22 == 1 || v22 > 0x41)
            {
              goto LABEL_109;
            }

            if (v21 == -1)
            {
              goto LABEL_120;
            }

            memcpy(&v36 + 12, v21 + 1, v22 - 1);
            if (sub_100067C84(&v36 + 12, 0x40u))
            {
              goto LABEL_68;
            }

            v25 = 5843;
          }

          else
          {
            if (v24 != 6)
            {
              v32 = v24;
              v31 = 5880;
              v18 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: Invalid tunnel dev info type: 0x%02X\n";
              goto LABEL_25;
            }

            v20 = 0;
            v19 = 4;
            if (v22 == 1 || v22 > 0x41)
            {
              goto LABEL_109;
            }

            if (v21 == -1)
            {
              goto LABEL_120;
            }

            memcpy(&v36 + 12, v21 + 1, v22 - 1);
            if (sub_100067C84(&v36 + 12, 0x40u))
            {
              goto LABEL_68;
            }

            v25 = 5870;
          }

          goto LABEL_84;
        }

        if (v24 != 3)
        {
          v20 = 0;
          v19 = 4;
          if (v22 == 1 || v22 > 0x21)
          {
            goto LABEL_109;
          }

          if (v21 == -1)
          {
            goto LABEL_120;
          }

          memcpy(&v36 + 12, v21 + 1, v22 - 1);
          if (sub_100067C84(&v36 + 12, 0x20u))
          {
            goto LABEL_68;
          }

          v25 = 5816;
          goto LABEL_84;
        }

        if (v22 == 2)
        {
          if (v21 == -1)
          {
            goto LABEL_120;
          }

          v19 = 0;
          BYTE12(v36) = v21[1];
          goto LABEL_75;
        }

        goto LABEL_108;
      }

      if (v24)
      {
        if (v24 == 1)
        {
          if (v22 != 3)
          {
            goto LABEL_108;
          }

          if (v21 == -1)
          {
            goto LABEL_120;
          }

          BYTE12(v36) = v21[1];
          if (v21 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_120;
          }

          v19 = 0;
          v23 = v21[2];
          goto LABEL_43;
        }

        if (v22 == 3)
        {
          if (v21 == -1)
          {
            goto LABEL_120;
          }

          HIDWORD(v36) = v21[1];
          if (v21 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_120;
          }

          v19 = 0;
          LOBYTE(v37) = v21[2];
          goto LABEL_75;
        }

LABEL_108:
        v20 = 0;
        v19 = 4;
        goto LABEL_109;
      }

      if (v22 != 3)
      {
        goto LABEL_108;
      }

      if (v21 == -1)
      {
        goto LABEL_124;
      }

      v19 = 0;
      v28 = *(v21 + 1);
LABEL_65:
      WORD6(v36) = bswap32(v28) >> 16;
      goto LABEL_75;
    }

    goto LABEL_121;
  }

  if (v16 <= 14)
  {
    if (v16 != 8)
    {
      if (v16 != 11)
      {
        goto LABEL_76;
      }

      goto LABEL_58;
    }

    if (v22 != 7)
    {
      goto LABEL_108;
    }

    BYTE3(v37) = *v21;
    if (v21 != -1)
    {
      LOWORD(v37) = bswap32(*(v21 + 1)) >> 16;
      if (v21 > 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_120;
      }

      BYTE2(v37) = v21[3];
      v19 = 0;
      v26 = *(v21 + 3) & 0xFFFFFF00;
LABEL_73:
      v27 = bswap32(v26);
      goto LABEL_74;
    }

LABEL_124:
    __break(0x5500u);
    return result;
  }

  if (v16 == 15)
  {
    if (v22 - 1 > 0x1F)
    {
      goto LABEL_108;
    }

    memcpy(&v36 + 12, v21, v17);
    if (sub_100067C84(&v36 + 12, 0x20u))
    {
LABEL_68:
      v19 = 0;
      goto LABEL_75;
    }

    v25 = 5943;
LABEL_84:
    v31 = v25;
    v18 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: 0 length buffer provided\n";
    goto LABEL_25;
  }

  if (v16 == 17)
  {
LABEL_58:
    if (v22 != 4)
    {
      goto LABEL_108;
    }

    v19 = 0;
    v26 = *v21;
    goto LABEL_73;
  }

  if (v16 != 19)
  {
LABEL_76:
    v32 = v16;
    v31 = 5984;
    v18 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: Invalid tunnel cmdID: 0x%02X\n";
    goto LABEL_25;
  }

  if (!v22)
  {
    goto LABEL_108;
  }

  v20 = 0;
  v19 = 4;
  if (v22 == 1 && !*v21)
  {
    v19 = 0;
    HIDWORD(v36) = 0;
LABEL_75:
    v20 = 1;
  }

LABEL_109:
  v33 = -21846;
  v34 = -86;
  v29 = sub_1000C4254();
  if (!v29 || (v29 & 7) != 0)
  {
    goto LABEL_119;
  }

  if (sub_100094598(v29, v5))
  {
    v30 = 0;
  }

  else
  {
    v33 = bswap32(WORD5(v35)) >> 16;
    v30 = 2;
  }

  if (__CFADD__(&v33, v30))
  {
LABEL_120:
    __break(0x5513u);
  }

  *(&v33 + v30) = v19;
  sub_1000B7DB4(a2, v5, 0, 0, 45, *(a2 + 68), &v33, v30 | 1);
  sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
  if (v20)
  {
    sub_100077384(a1, 0, 1, &v35, 96);
  }

  return v19;
}

uint64_t sub_10007E020(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
LABEL_24:
    __break(0x5516u);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    __break(0x5518u);
    goto LABEL_24;
  }

  v5 = *(a2 + 128);
  v6 = *(a2 + 8);
  if (!sub_10007C398(v6))
  {
    return 7;
  }

  if (v5 != 3)
  {
    return 4;
  }

  HIWORD(v11) = -1;
  LODWORD(v11) = 0;
  v7 = sub_1000C4254();
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_24;
  }

  result = sub_100094598(v7, v6);
  if (result)
  {
    v9 = *(a2 + 68);
  }

  else
  {
    if (v4 >= 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_26:
      __break(0x5513u);
      goto LABEL_27;
    }

    v9 = bswap32(*v4++) >> 16;
  }

  v10 = *v4;
  if (v10 > 0x1F)
  {
    __break(0x550Au);
    goto LABEL_26;
  }

  if (!v10)
  {
    return v10;
  }

  result = sub_10006733C(a1, *(a2 + 68), &v11 + 3, &v11, 0xFFFFu);
  if (result)
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::HandleAckTunnelDataToDev timeout before response received !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6137);
    return v10;
  }

  v13 = 0u;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = v6;
  LOWORD(v13) = HIWORD(v11);
  if (!HIWORD(v9))
  {
    WORD1(v13) = v9;
    DWORD1(v14) = v11;
    BYTE8(v14) = 4;
    sub_100077384(a1, 0, 1, &v12, 96);
    return v10;
  }

LABEL_27:
  __break(0x5507u);
  return result;
}

uint64_t sub_10007E1E0(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_35;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 128);
  result = sub_10007C398(v5);
  if (!result)
  {
    return 7;
  }

  if (v6 < 4)
  {
    return 4;
  }

  if (!v5)
  {
LABEL_34:
    __break(0x5518u);
    goto LABEL_35;
  }

  v19 = 0;
  v20 = 0;
  v17 = v5;
  v18 = 49;
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_100094598(result, v5);
  if (result)
  {
    v7 = 0;
    v8 = *(a2 + 68);
  }

  else
  {
    v8 = bswap32(*v4) >> 16;
    v7 = 2;
  }

  WORD1(v18) = v8;
  if (~v4 < v7)
  {
    goto LABEL_36;
  }

  v10 = *(v4 + v7);
  LODWORD(v19) = v10;
  if (v10 <= 1)
  {
    if (v10)
    {
      v9 = 4;
      sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::HandleTxdTunnelControlToiPod invalid control type: 0x%02X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6223, 1);
      v11 = 0;
    }

    else
    {
      if (v7 + 2 != v6)
      {
        goto LABEL_24;
      }

      v12 = v7 | 1;
      if (~v4 < v12)
      {
LABEL_36:
        __break(0x5513u);
        goto LABEL_37;
      }

      v13 = *(v4 + v12);
      if (v13 <= 3)
      {
        v9 = 0;
        HIDWORD(v19) = v13;
        LOBYTE(v20) = 0;
        v11 = 1;
      }

      else
      {
LABEL_24:
        v11 = 0;
        v9 = 4;
      }
    }

    v15 = -21846;
    v16 = -86;
    result = sub_1000C4254();
    if (result && (result & 7) == 0)
    {
      result = sub_100094598(result, v5);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v15 = bswap32(v8) >> 16;
        v14 = 2;
      }

      if (!__CFADD__(&v15, v14))
      {
        *(&v15 + v14) = v9;
        sub_1000B7DB4(a2, v5, 0, 0, 50, *(a2 + 68), &v15, v14 | 1);
        sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
        if (v11)
        {
          sub_100077384(v2, 0, 2, &v17, 32);
        }

        return v9;
      }

      goto LABEL_36;
    }

LABEL_35:
    __break(0x5516u);
    goto LABEL_36;
  }

LABEL_37:
  __break(0x550Au);
  return result;
}

uint64_t sub_10007E414(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (memset(&__str, 0, sizeof(__str)), (result = sub_100065198(result)) == 0) || (result & 7) != 0 || (v6 = sub_1000949E0(result, a3, 0), (result = sub_10004B1AC()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_29;
  }

  if ((*(*result + 344))(result, &__str, v6))
  {
    v7 = *(v3 + 2343);
    if (v7 < 0)
    {
      v8 = *(v3 + 2328);
    }

    else
    {
      v8 = *(v3 + 2343);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v8 == size)
    {
      v10 = v7 >= 0 ? (v3 + 2320) : *(v3 + 2320);
      v11 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (!memcmp(v10, v11, v8) && !a2)
      {
        sub_1000DDEEC(0, 4, "%s:%d REPEAT NOTIFICATION: notification %d m_LastAppFocus is %s and audioFocusAppBundleID = %s\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6345, 10, v10, v11);
        goto LABEL_25;
      }
    }

    result = sub_1000D6C34(a3, 2);
    if (result < 0x10000)
    {
      operator new[]();
    }

LABEL_29:
    __break(0x5507u);
    return result;
  }

LABEL_25:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t sub_10007E6A8(uint64_t result, unsigned int a2, char *a3, unsigned int a4, unsigned int a5, unint64_t a6, int a7)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 <= 0x1F && a5 < 4)
  {
    return sub_100088544(*(result + 8), a2, a3, a4, a5, a6, a7);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007E6D4(uint64_t result)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (!v2 || (*(result + 8) & 7) != 0)
  {
    goto LABEL_13;
  }

  if ((*(v2 + 1994) & 0x10) == 0)
  {
    return 2;
  }

  v4 = 0;
  result = sub_10004B1AC();
  if (result && (result & 7) == 0)
  {
    v4 = (*(*result + 200))(result) != 0;
    sub_100088544(*(v1 + 8), 0x14u, &v4, 1u, 1u, 0, -1);
    return 0;
  }

  else
  {
LABEL_13:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10007E798(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (memset(&__str, 0, sizeof(__str)), (result = sub_10004B1AC()) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_28;
  }

  if ((*(*result + 312))(result, &__str))
  {
    v6 = *(v3 + 2367);
    if (v6 < 0)
    {
      v7 = *(v3 + 2352);
    }

    else
    {
      v7 = *(v3 + 2367);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v7 == size)
    {
      v9 = v6 >= 0 ? (v3 + 2344) : *(v3 + 2344);
      v10 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (!memcmp(v9, v10, v7) && !a2)
      {
        sub_1000DDEEC(0, 4, "%s:%d REPEAT NOTIFICATION: notification %d m_LastAppFocusAppName is %s and audioFocusAppName = %s\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6451, 19, v9, v10);
        goto LABEL_24;
      }
    }

    result = sub_1000D6C34(a3, 2);
    if (result < 0x10000)
    {
      operator new[]();
    }

LABEL_28:
    __break(0x5507u);
    return result;
  }

  syslog(4, "GetNowPlayingAppName() failed to return now playing app display name\n");
LABEL_24:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t sub_10007EA24(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_499;
  }

  if (!*(a1 + 8))
  {
    return 89;
  }

  v5 = sub_100065198(a1);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_499;
  }

  if (!sub_100094BFC(v5, *(a1 + 8)))
  {
    return 89;
  }

  v6 = *(a1 + 8);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_499;
  }

  v7 = sub_10005ACA0(v6);
  if (v7)
  {
    return 89;
  }

  if (!a2 || (a2 & 7) != 0 || (v10 = *(a2 + 8), v11 = *(a2 + 126), (v12 = sub_100065198(v7)) == 0) || (v12 & 7) != 0)
  {
LABEL_499:
    __break(0x5516u);
  }

  v13 = sub_100092B58(v12, v10);
  v14 = *(a1 + 1416);
  if ((v14 + 8) >= 0x10)
  {
LABEL_500:
    __break(0x550Au);
    goto LABEL_501;
  }

  v15 = v13;
  v16 = *(a2 + 128);
  v17 = *(a2 + 24);
  if (v14 == -2)
  {
    sub_100074630(a1, v10, 1, 1);
    v13 = sub_100076C34(*(a1 + 8), v10, 0);
  }

  if (v11 <= 0x38u && ((1 << v11) & 0x100000000080002) != 0)
  {
    strcpy(v193, "y");
    v13 = sub_10006733C(a1, -1, v193, 0, 0xFFFFu);
  }

  switch(v11)
  {
    case 1:
      sub_100074DFC(a1, a2);
      goto LABEL_344;
    case 3:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_431;
      }

      v193[0] = -86;
      if (!sub_100097578(v193, *(a1 + 8)))
      {
        sub_1000B7DB4(a2, v10, 0, 0, 4, *(a2 + 68), v193, 1u);
      }

      goto LABEL_470;
    case 5:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_431;
      }

      kdebug_trace();
      if (!sub_10007717C(a1, 1u))
      {
        v80 = *(a2 + 68);
        HIDWORD(v187) = 0;
        LOWORD(v187) = 0;
        sub_1000B7768();
      }

      goto LABEL_470;
    case 6:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_431;
      }

      v193[0] = 0;
      if (sub_100097578(v193, *(a1 + 8)))
      {
        goto LABEL_470;
      }

      if (v193[0] > 1u)
      {
        goto LABEL_500;
      }

      if (v193[0])
      {
        sub_100097394(*(a1 + 8), 1);
        if (!v77)
        {
          v78 = *(a2 + 68);
          HIDWORD(v187) = 0;
          LOWORD(v187) = 0;
          sub_1000B7768();
        }
      }

      goto LABEL_470;
    case 7:
      memset(v193, 170, 24);
      v117 = sub_10004B1AC();
      if (!v117 || (v117 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v117 + 88))(v193);
      v118 = v193[23];
      if (v193[23] >= 0)
      {
        v51 = v193;
      }

      else
      {
        v51 = *v193;
      }

      if (v193[23] < 0)
      {
        v118 = *&v193[8];
      }

      v52 = __CFADD__(v118, 1);
      v119 = v118 + 1;
      if (v52)
      {
        goto LABEL_502;
      }

      if (v119 >> 16)
      {
        goto LABEL_503;
      }

      v54 = *(a2 + 68);
      v55 = v119;
      v56 = a2;
      v57 = v10;
      v58 = 8;
      goto LABEL_275;
    case 9:
      LOBYTE(v189) = -86;
      v192 = -86;
      v191 = -86;
      v79 = sub_10004B1AC();
      if (!v79 || (v79 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v79 + 160))(v79, &v189, &v192, &v191);
      v193[0] = v189;
      v193[1] = v192;
      v193[2] = v191;
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 10;
      goto LABEL_429;
    case 11:
      memset(v193, 170, 24);
      v49 = sub_10004B1AC();
      if (!v49 || (v49 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v49 + 96))(v193);
      v50 = v193[23];
      if (v193[23] >= 0)
      {
        v51 = v193;
      }

      else
      {
        v51 = *v193;
      }

      if (v193[23] < 0)
      {
        v50 = *&v193[8];
      }

      v52 = __CFADD__(v50, 1);
      v53 = v50 + 1;
      if (v52)
      {
        goto LABEL_502;
      }

      if (v53 >> 16)
      {
        goto LABEL_503;
      }

      v54 = *(a2 + 68);
      v55 = v53;
      v56 = a2;
      v57 = v10;
      v58 = 12;
LABEL_275:
      sub_1000B7DB4(v56, v57, 0, 0, v58, v54, v51, v55);
      if ((v193[23] & 0x80000000) != 0)
      {
        operator delete(*v193);
      }

      goto LABEL_431;
    case 13:
      v59 = sub_10004B1AC();
      if (!v59)
      {
        goto LABEL_499;
      }

      if ((v59 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v59 + 112))(v59);
      memset(v193, 170, 24);
      v60 = sub_10004B1AC();
      if (!v60 || (v60 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v60 + 104))(v193);
      v61 = v193[23];
      if (v193[23] < 0)
      {
        v61 = *&v193[8];
      }

      v52 = __CFADD__(v61, 4);
      v62 = v61 + 4;
      if (!v52 && v62 != -1)
      {
        operator new[]();
      }

      goto LABEL_502;
    case 15:
      if (*(a2 + 128) != 1)
      {
        goto LABEL_431;
      }

      LOBYTE(v189) = -1;
      v192 = -1;
      v72 = *(a2 + 24);
      if (!v72)
      {
        goto LABEL_499;
      }

      v73 = *v72;
      if (v73 > 0xE)
      {
        goto LABEL_171;
      }

      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v74 = *(a1 + 1516);
      v75 = (*(*v10 + 224))(v10);
      v76 = v74 & 0x721D;
      if (!v75)
      {
        v76 = v74;
      }

      if ((v76 >> v73))
      {
        sub_100065198(v75);
        sub_1000C9B60(v73, &v189, &v192);
      }

LABEL_171:
      if (v189 == 255 && v192 == 255)
      {
        goto LABEL_431;
      }

      v193[0] = v73;
      v193[1] = v189;
      v193[2] = v192;
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 16;
      goto LABEL_429;
    case 17:
      if (*(a2 + 128))
      {
        goto LABEL_431;
      }

      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      *v193 = __rev16((*(*v10 + 168))(v10));
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 18;
      goto LABEL_255;
    case 19:
      sub_100077528(a1, a2);
      return 0;
    case 21:
      v40 = *(a1 + 1512);
      if (v40 > 1)
      {
        goto LABEL_500;
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_103;
      }

      v41 = *(a1 + 1514);
      if (v41 == 255)
      {
        goto LABEL_503;
      }

      v42 = v41 + 1;
      v43 = (v41 + 1);
      *(a1 + 1514) = v42;
      if (v43 < 2 || v43 > *(a1 + 1513))
      {
LABEL_103:
        sub_100079448(a1, a2);
        return v39;
      }

      sub_1000B9034(a2);
      if (*(a1 + 1514) != *(a1 + 1513))
      {
        return 0;
      }

      v8 = 0;
      *(a1 + 1513) = 0;
      return v8;
    case 24:
      return sub_10007A230(a1, a2);
    case 26:
      sub_10007A818();
      goto LABEL_470;
    case 28:
      if (!sub_10007AAC4(a1, a2))
      {
        goto LABEL_344;
      }

      goto LABEL_431;
    case 29:
      sub_10007AB78(a1, a2);
      goto LABEL_431;
    case 31:
      if (!sub_10007ACC0(a1, a2))
      {
        goto LABEL_344;
      }

      goto LABEL_431;
    case 32:
      v193[0] = 0;
      v103 = sub_10000C0EC();
      v104 = pthread_mutex_lock(&stru_10012B758);
      v105 = *(v103 + 8);
      while (2)
      {
        if (v105 == v103)
        {
          goto LABEL_405;
        }

        if (!v105 || (v105 & 7) != 0)
        {
          goto LABEL_499;
        }

        v106 = *(v105 + 16);
        if (!v106 || (*(v105 + 16) & 7) != 0)
        {
          goto LABEL_499;
        }

        if (!*(v106 + 32))
        {
          goto LABEL_242;
        }

        v108 = sub_100065198(v104);
        if (!v108 || (v108 & 7) != 0)
        {
          goto LABEL_499;
        }

        v104 = sub_1000930CC(v108, *(v105 + 16));
        if (!v104)
        {
LABEL_242:
          v105 = *(v105 + 8);
          continue;
        }

        break;
      }

      v193[0] = 1;
LABEL_405:
      pthread_mutex_unlock(&stru_10012B758);
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 33;
LABEL_406:
      v71 = 1;
      goto LABEL_430;
    case 34:
      if (*(a2 + 128) != 1)
      {
        goto LABEL_431;
      }

      v133 = sub_100065198(v13);
      if (!v133 || (v133 & 7) != 0)
      {
        goto LABEL_499;
      }

      v134 = sub_100092F68(v133, v10);
      if ((v134 & 0xC) != 8)
      {
        goto LABEL_343;
      }

      v135 = *(a2 + 24);
      if (!v135)
      {
        goto LABEL_499;
      }

      v136 = *v135;
      v137 = sub_100065198(v134);
      if (!v137 || (v137 & 7) != 0)
      {
        goto LABEL_499;
      }

      sub_100092FE4(v137, v10, 0, v136 != 0);
      goto LABEL_470;
    case 36:
      if (*(a2 + 128))
      {
        goto LABEL_431;
      }

      *v193 = 0xAAAAAAAAAAAAAAAALL;
      v63 = sub_100046A8C();
      v64 = sub_100045A94();
      if (!v64)
      {
        goto LABEL_499;
      }

      if ((v64 & 7) != 0)
      {
        goto LABEL_499;
      }

      v65 = (*(*v64 + 128))(v64);
      if (!v63 || (v63 & 7) != 0)
      {
        goto LABEL_499;
      }

      if (v65)
      {
        v66 = 0x100000000000041;
      }

      else
      {
        v66 = 65;
      }

      if ((*(*v63 + 192))(v63, v10))
      {
        v66 |= 2uLL;
      }

      if ((*(*v63 + 216))(v63))
      {
        v66 |= 4uLL;
      }

      if ((*(*v63 + 224))(v63))
      {
        v66 |= 8uLL;
      }

      if ((*(*v63 + 232))(v63))
      {
        v66 |= 0x10uLL;
      }

      v67 = (*(*v63 + 240))(v63, v10);
      v68 = v66 | 0x20;
      if (!v67)
      {
        v68 = v66;
      }

      *v193 = _byteswap_uint64(v68);
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 37;
      goto LABEL_161;
    case 38:
      if (v16 != 1)
      {
        goto LABEL_431;
      }

      v126 = *(a1 + 1192);
      if (v126 == v10 || !v126)
      {
        *(a1 + 1192) = v10;
        if (!v17)
        {
          goto LABEL_499;
        }

        v163 = *v17;
        v164 = sub_100048620();
        if (!v164 || (v164 & 7) != 0)
        {
          goto LABEL_499;
        }

        v25 = 0;
        (*(*v164 + 256))(v164, (v163 & 1) == 0);
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_471;
    case 40:
      if (!sub_10007AD74(a1, a2))
      {
        goto LABEL_344;
      }

      goto LABEL_431;
    case 41:
      if (sub_10007BB60(a1, a2) == 25)
      {
        return 0;
      }

      goto LABEL_470;
    case 43:
      pthread_mutex_lock((a1 + 1280));
      v32 = *(a1 + 8);
      if (!v32)
      {
        goto LABEL_499;
      }

      if ((v32 & 7) != 0)
      {
        goto LABEL_499;
      }

      v33 = sub_10005BDFC(v32);
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v34 = v33;
      if ((*(*v10 + 208))(v10) == 1 || ((*(*v10 + 224))(v10) & 1) != 0 || !sub_10006825C(v10))
      {
        goto LABEL_84;
      }

      if (!sub_10006825C(v10))
      {
        goto LABEL_86;
      }

      if (v34 != v34)
      {
        goto LABEL_500;
      }

      if (v34 != -1 && v34 <= 15)
      {
LABEL_84:
        if (sub_10007CBB8(a1, a2, 0) == 25)
        {
          a2 = 0;
        }
      }

LABEL_86:
      pthread_mutex_unlock((a1 + 1280));
      goto LABEL_391;
    case 44:
      v70 = sub_10007D9D0(a1, a2);
      return 2 * (v70 != 0);
    case 47:
      v8 = 2 * (sub_10007E020(a1, a2) != 0);
      goto LABEL_441;
    case 49:
      v70 = sub_10007E1E0(a1, a2);
      return 2 * (v70 != 0);
    case 52:
      if (v16 != 1)
      {
        goto LABEL_431;
      }

      v143 = sub_10004B1AC();
      if (!v143 || (v143 & 7) != 0 || !v17)
      {
        goto LABEL_499;
      }

      (*(*v143 + 632))(v143, 2, *v17);
      goto LABEL_335;
    case 53:
      *v193 = sub_100081574(a1);
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 54;
      goto LABEL_406;
    case 55:
      kdebug_trace();
      if (v16 != 1)
      {
        goto LABEL_385;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v69 = *v17;
      if (v69 > 7)
      {
        goto LABEL_500;
      }

      sub_10007717C(a1, v69);
LABEL_385:
      kdebug_trace();
      goto LABEL_470;
    case 56:
      sub_100081650(a1);
      goto LABEL_470;
    case 57:
      v25 = 0;
      sub_100081DB4(a1, a2);
      goto LABEL_471;
    case 59:
      if (sub_100082D70(a1, a2))
      {
        goto LABEL_343;
      }

      goto LABEL_344;
    case 62:
      if (v16 != 8)
      {
        goto LABEL_344;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v35 = bswap64(*v17);
      if (v35 >> 25)
      {
        goto LABEL_344;
      }

      *(a1 + 1272) = v35;
      v36 = *(a1 + 8);
      if (!v36 || (v36 & 7) != 0)
      {
        goto LABEL_499;
      }

      v37 = sub_10005BDFC(v36);
      if (v37 != v37)
      {
        goto LABEL_500;
      }

      if (v37 == -1)
      {
        v38 = 16;
      }

      else
      {
        v38 = v37;
      }

      sub_100065778(a1, v10, 0xEu, v38);
LABEL_344:
      sub_1000B9034(a2);
      return 0;
    case 65:
      sub_100083398(a1, a2);
      return 0;
    case 66:
      sub_100083698(a1, a2);
      goto LABEL_344;
    case 71:
      if (v16 != 4)
      {
        goto LABEL_440;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v26 = bswap32(*v17);
      v27 = *(a1 + 1984);
      if (v26 != v27)
      {
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::ProcessCmd: RetAccStatusNotification 0x%08X != 0x%08X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7286, v26, v27);
      }

      v8 = 0;
      *(a1 + 1984) = v26;
      goto LABEL_441;
    case 72:
      *&v84 = 0xAAAAAAAAAAAAAAAALL;
      *(&v84 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v193[28] = v84;
      *v193 = v84;
      *&v193[16] = v84;
      if (v16 < 2)
      {
        goto LABEL_440;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v85 = *v17;
      if (v85 > 1)
      {
        if (v85 == 2)
        {
          v8 = 2;
          if (v16 != 3)
          {
            goto LABEL_441;
          }

          *&v193[4] = 2;
          *v193 = sub_1000CE018(*(a1 + 8));
          if (v17 == -1)
          {
            goto LABEL_501;
          }

          v175 = *(v17 + 1);
          *&v193[8] = v175;
          if (v17 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_501;
          }

          v176 = *(v17 + 2);
          *&v193[12] = v176;
          if (v175 <= 3 && v176 <= 3)
          {
            sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Fault %02xh %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7421, v175, v176);
            if ((*(a1 + 1984) & 4) == 0)
            {
              goto LABEL_451;
            }

            goto LABEL_448;
          }
        }

        else
        {
          if (v85 != 3)
          {
            goto LABEL_432;
          }

          if (v16 != 2)
          {
LABEL_440:
            v8 = 2;
LABEL_441:
            sub_1000B9034(a2);
            return v8;
          }

          *&v193[4] = 3;
          *v193 = sub_1000CE018(*(a1 + 8));
          if (v17 == -1)
          {
            goto LABEL_501;
          }

          v165 = *(v17 + 1);
          *&v193[8] = v165;
          if (v165 <= 1)
          {
            sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Unreliable Accessory %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7450, v165);
            if ((*(a1 + 1984) & 8) == 0)
            {
              goto LABEL_451;
            }

            goto LABEL_448;
          }
        }

        goto LABEL_500;
      }

      if (*v17)
      {
        if (v85 == 1)
        {
          sub_100007DB0(a1 + 2376);
          if (v10 && (v10 & 7) == 0)
          {
            sub_100007DB0(v10 + 48);
            HIDWORD(v86) = 954437177 * (v16 - 1);
            LODWORD(v86) = HIDWORD(v86);
            if ((v86 >> 2) <= 0x71C71C7 && v16 >= 0x25)
            {
              v87 = 0;
              v88 = ~v17;
              v8 = 2;
              LODWORD(v89) = 36;
              while (1)
              {
                *&v193[4] = 1;
                *v193 = sub_1000CE018(*(a1 + 8));
                v90 = v87 + 1;
                v52 = __CFADD__(v17, v90);
                v91 = (v17 + v90);
                if (v52)
                {
                  goto LABEL_502;
                }

                if (!v91)
                {
                  goto LABEL_499;
                }

                *&v193[8] = bswap32(*v91);
                v92 = v87 + 5;
                v52 = __CFADD__(v17, v92);
                v93 = (v17 + v92);
                if (v52)
                {
                  goto LABEL_502;
                }

                if (!v93)
                {
                  goto LABEL_499;
                }

                *&v193[12] = bswap32(*v93);
                v94 = v87 + 9;
                v52 = __CFADD__(v17, v94);
                v95 = (v17 + v94);
                if (v52)
                {
                  goto LABEL_502;
                }

                if (!v95)
                {
                  goto LABEL_499;
                }

                *&v193[16] = bswap32(*v95);
                v96 = v87 + 13;
                if (v88 < v96)
                {
                  goto LABEL_501;
                }

                v193[20] = *(v17 + v96);
                v97 = v87 + 14;
                if (v88 < v97)
                {
                  goto LABEL_501;
                }

                v193[21] = *(v17 + v97);
                v98 = v87 + 15;
                if (v88 < v98)
                {
                  goto LABEL_501;
                }

                strlcpy(&v193[22], (v17 + v98), 0x10uLL);
                v99 = v87 + 31;
                if (v88 < v99)
                {
                  goto LABEL_501;
                }

                v100 = (v17 + v99);
                v101 = *v100;
                *&v193[42] = *(v100 + 2);
                *&v193[38] = v101;
                if (&vars0 == 120)
                {
                  goto LABEL_501;
                }

                sub_1000DDEEC(0, 4, "%s:%s:%d Ret/AccStatus/Notification BT %08xh %08xh %08xh %02xh %02xh %02xh:%02xh:%02xh:%02xh:%02xh:%02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "ProcessCmd", 7369, *&v193[8], *&v193[12], *&v193[16], v193[20], v193[21], v193[38], v193[39], v193[40], v193[41], v193[42], v193[43]);
                if (v193[21])
                {
                  goto LABEL_441;
                }

                if ((*(a1 + 1984) & 2) != 0)
                {
                  v189 = *&v193[38];
                  v190 = *&v193[42];
                  sub_1000505C0(v10 + 48, &v189);
                  v102 = *(a1 + 8);
                  if (!v102 || (v102 & 7) != 0)
                  {
                    goto LABEL_499;
                  }

                  sub_10005BCC8(v102, 0, 5, v193, 44);
                }

                v8 = 0;
                v87 = v89;
                v89 = v89 + 36;
                if (v89 >= v16)
                {
                  goto LABEL_441;
                }
              }
            }

            goto LABEL_440;
          }

          goto LABEL_499;
        }

LABEL_432:
        if (v17 < 0xFFFFFFFFFFFFFFFELL)
        {
          sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Unknown type=%xh data=%02xh %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7467, v85, *(v17 + 1), *(v17 + 2));
          goto LABEL_440;
        }

        goto LABEL_501;
      }

      if (v16 != 3)
      {
        goto LABEL_440;
      }

      *&v193[4] = 0;
      *v193 = sub_1000CE018(*(a1 + 8));
      if (v17 == -1)
      {
        goto LABEL_501;
      }

      v173 = *(v17 + 1);
      *&v193[8] = v173;
      if (v17 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_501;
      }

      v174 = *(v17 + 2);
      v193[12] = *(v17 + 2);
      if (v173 <= 7)
      {
        sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Power %02xh %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7321, v173, v174);
        if ((*(a1 + 1984) & 1) == 0)
        {
          goto LABEL_451;
        }

LABEL_448:
        v177 = *(a1 + 8);
        if (!v177 || (v177 & 7) != 0)
        {
          goto LABEL_499;
        }

        sub_10005BCC8(v177, 0, 5, v193, 44);
LABEL_451:
        v8 = 0;
        goto LABEL_441;
      }

      goto LABEL_500;
    case 73:
      if (v16 != 8)
      {
        goto LABEL_431;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v24 = bswap64(*v17);
      if (sub_10008387C(a1, v24))
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      goto LABEL_471;
    case 75:
      v21 = kdebug_trace();
      if (*(a2 + 128) != 1)
      {
        goto LABEL_431;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v22 = *v17;
      __chkstk_darwin(v21);
      LOBYTE(v188) = -86;
      v187 = 0xAAAAAAAAAAAAAAAALL;
      if (!v10)
      {
        goto LABEL_469;
      }

      if (v22 > 0x1F)
      {
        goto LABEL_500;
      }

      if (v22 > 0xE)
      {
        goto LABEL_469;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      if ((!(*(*v10 + 224))(v10) || ((1 << v22) & 0x8DE2) == 0) && sub_100068B4C(v22))
      {
        switch(v22)
        {
          case 0:
            sub_1000811F4(v10, &v187, 9);
            goto LABEL_468;
          case 1:
            v178 = sub_1000924A8(&v187, 9);
            goto LABEL_467;
          case 2:
            v178 = sub_1000AD154(v10, &v187, 9);
            goto LABEL_467;
          case 3:
            v178 = sub_100073670(&v187, 9);
            goto LABEL_467;
          case 4:
            v178 = sub_1000A78D4(&v187, 9);
            goto LABEL_467;
          case 5:
            v178 = sub_1000AA130(&v187, 9);
            goto LABEL_467;
          case 6:
            v178 = sub_1000B55D4(&v187, 9);
            goto LABEL_467;
          case 8:
            v178 = sub_100064E98(&v187, 9);
            goto LABEL_467;
          case 9:
            v178 = sub_1000B01A8(&v187, 9);
            goto LABEL_467;
          case 10:
            v178 = sub_10006B7B0(&v187, 9);
            goto LABEL_467;
          case 12:
            v178 = sub_1000B2984(&v187, 9);
            goto LABEL_467;
          case 13:
            v178 = sub_100096B84(&v187, 9);
            goto LABEL_467;
          case 14:
            v178 = sub_100091684(&v187, 9);
LABEL_467:
            if (!v178)
            {
LABEL_468:
              sub_1000B7DB4(a2, v10, 0, 0, 76, *(a2 + 68), &v187, 9u);
            }

            break;
          default:
            break;
        }
      }

LABEL_469:
      kdebug_trace();
      goto LABEL_470;
    case 77:
      if (v16)
      {
        goto LABEL_431;
      }

      v48 = *(a1 + 8);
      if (!v48 || (v48 & 7) != 0)
      {
        goto LABEL_499;
      }

      *v193 = bswap64(*(v48 + 1992));
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 78;
LABEL_161:
      v71 = 8;
      goto LABEL_430;
    case 79:
      if (v16)
      {
        goto LABEL_431;
      }

      *v193 = bswap64(sub_100083924(a1));
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 81;
      goto LABEL_161;
    case 80:
      if (v16 < 4)
      {
        goto LABEL_431;
      }

      if (v17 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_502;
      }

      v123 = *(v17 + 3);
      v124 = sub_1000C4254();
      if (!v124 || (v124 & 7) != 0)
      {
        goto LABEL_499;
      }

      if (!sub_100094598(v124, v10))
      {
        goto LABEL_431;
      }

      v125 = *(a1 + 8);
      if (!v125 || (v125 & 7) != 0)
      {
        goto LABEL_499;
      }

      sub_10005C6CC(v125, bswap32(v123) >> 16);
LABEL_335:
      v25 = 0;
      goto LABEL_471;
    case 82:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v149 = (*(*v10 + 224))(v10);
      v25 = 0;
      if (v16 != 4 || (v149 & 1) != 0)
      {
        goto LABEL_471;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v150 = *v17;
      if (v17 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_502;
      }

      v151 = *(v17 + 2);
      v193[0] = -86;
      v152 = sub_100048620();
      if (!v152 || (v152 & 7) != 0)
      {
        goto LABEL_499;
      }

      v153 = (*(*v152 + 272))(v152, v10, bswap32(v150) >> 16, __rev16(v151));
      if (v153 > 3)
      {
        goto LABEL_500;
      }

      v193[0] = v153;
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 83;
      goto LABEL_406;
    case 84:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v28 = (*(*v10 + 224))(v10);
      v25 = 0;
      if (v16 != 2 || (v28 & 1) != 0)
      {
        goto LABEL_471;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v29 = bswap32(*v17) >> 16;
      *(a1 + 2208) = v29;
      v30 = sub_1000839D4(a1, v10, v29);
      v31 = sub_100048620();
      if (!v31 || (v31 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v31 + 288))(v31, v10, v30);
      v25 = 0;
      *(a1 + 2204) = 1;
      goto LABEL_471;
    case 85:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v81 = (*(*v10 + 224))(v10);
      v25 = 0;
      if (v16 != 2 || (v81 & 1) != 0)
      {
        goto LABEL_471;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v82 = *v17;
      v83 = sub_100048620();
      if (!v83 || (v83 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v83 + 320))(v83, v10, __rev16(v82));
      goto LABEL_470;
    case 86:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v114 = (*(*v10 + 224))(v10);
      v25 = 0;
      if (v16 != 1 || (v114 & 1) != 0)
      {
        goto LABEL_471;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v115 = *v17;
      if (v115 > 1)
      {
        goto LABEL_431;
      }

      v116 = sub_100048620();
      if (!v116 || (v116 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v116 + 336))(v116, v10, v115 != 0);
      goto LABEL_470;
    case 88:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v145 = (*(*v10 + 224))(v10);
      v25 = 0;
      if (v16 != 1 || (v145 & 1) != 0)
      {
        goto LABEL_471;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v146 = *v17;
      if (v146 > 3)
      {
        goto LABEL_500;
      }

      if (v146 == 2)
      {
        v172 = sub_100048620();
        if (!v172 || (v172 & 7) != 0)
        {
          goto LABEL_499;
        }

        v148 = (*(*v172 + 344))(v172, v10);
      }

      else if (v146 == 1)
      {
        v171 = sub_100048620();
        if (!v171 || (v171 & 7) != 0)
        {
          goto LABEL_499;
        }

        v148 = (*(*v171 + 328))(v171, v10);
      }

      else
      {
        if (*v17)
        {
          goto LABEL_431;
        }

        v147 = sub_100048620();
        if (!v147 || (v147 & 7) != 0)
        {
          goto LABEL_499;
        }

        v148 = (*(*v147 + 296))(v147, v10);
      }

      *&v193[1] = -21846;
      v193[0] = v146;
      if (&vars0 == 159)
      {
LABEL_502:
        __break(0x5500u);
        goto LABEL_503;
      }

      *&v193[1] = __rev16(v148);
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 89;
LABEL_429:
      v71 = 3;
LABEL_430:
      sub_1000B7DB4(v45, v46, 0, 0, v47, v44, v193, v71);
LABEL_431:
      v25 = 0;
      goto LABEL_471;
    case 90:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_499;
      }

      v109 = (*(*v10 + 224))(v10);
      v25 = 0;
      if (v16 || (v109 & 1) != 0)
      {
        goto LABEL_471;
      }

      *v193 = -21846;
      v110 = sub_100048620();
      if (!v110 || (v110 & 7) != 0)
      {
        goto LABEL_499;
      }

      v111 = (*(*v110 + 280))(v110, v10);
      if (!(*(*v10 + 272))(v10))
      {
        goto LABEL_254;
      }

      v112 = **v10;
      if (!v113 || (v113 & 7) != 0)
      {
        goto LABEL_499;
      }

      if (v111 >= v113[94])
      {
        v111 = v113[94];
      }

LABEL_254:
      *v193 = __rev16(v111);
      v44 = *(a2 + 68);
      v45 = a2;
      v46 = v10;
      v47 = 91;
LABEL_255:
      v71 = 2;
      goto LABEL_430;
    case 92:
      v23 = sub_100065198(v13);
      if (!v23 || (v23 & 7) != 0)
      {
        goto LABEL_499;
      }

      if (sub_100058EBC(v23, v10) != 6)
      {
        goto LABEL_431;
      }

      sub_100083BA0(a1, a2);
      goto LABEL_470;
    case 94:
      v18 = sub_100065198(v13);
      if (!v18 || (v18 & 7) != 0)
      {
        goto LABEL_499;
      }

      if (sub_100058EBC(v18, v10) != 6)
      {
        goto LABEL_431;
      }

      v8 = sub_100083C74(a1, a2);
      if (!v8)
      {
        goto LABEL_441;
      }

      goto LABEL_470;
    case 97:
      if (v16 != 1)
      {
        goto LABEL_431;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v154 = *v17;
      *&v155 = 0xAAAAAAAAAAAAAAAALL;
      *(&v155 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v193[16] = v155;
      *&v193[32] = v155;
      *v193 = v155;
      v156 = v154 == 1 ? 0 : 9;
      *v193 = v156;
      *&v193[8] = v10;
      v157 = sub_100065198(v13);
      if (!v157)
      {
        goto LABEL_499;
      }

      if ((v157 & 7) != 0)
      {
        goto LABEL_499;
      }

      v158 = sub_1000932FC(v157, v10);
      *&v193[16] = v158;
      v159 = sub_100065198(v158);
      if (!v159 || (v159 & 7) != 0)
      {
        goto LABEL_499;
      }

      *&v193[20] = sub_100092B58(v159, v10);
      *&v193[24] = *(a1 + 8);
      sub_100077384(a1, 0, 4, v193, 48);
      goto LABEL_470;
    case 98:
      if (!v16)
      {
        goto LABEL_431;
      }

      if (v17)
      {
        v144 = *v17;
        operator new[]();
      }

      goto LABEL_499;
    case 100:
      sub_100083D34(a1, a2);
      goto LABEL_470;
    case 101:
      memset(v193, 0, 24);
      v120 = sub_100065198(v13);
      if (!v120)
      {
        goto LABEL_499;
      }

      if ((v120 & 7) != 0)
      {
        goto LABEL_499;
      }

      v121 = sub_1000949E0(v120, v10, 0);
      v122 = sub_10004B1AC();
      if (!v122 || (v122 & 7) != 0)
      {
        goto LABEL_499;
      }

      if ((*(*v122 + 344))(v122, v193, v121))
      {
        if (!(sub_1000D6C34(v10, 0) >> 16))
        {
          operator new[]();
        }

LABEL_503:
        __break(0x5507u);
        __break(0x5515u);
        JUMPOUT(0x100081000);
      }

      if ((v193[23] & 0x80000000) != 0)
      {
        operator delete(*v193);
      }

LABEL_391:
      if (!a2)
      {
        return 0;
      }

      goto LABEL_470;
    case 103:
      if (v16 != 1)
      {
        goto LABEL_431;
      }

      if (!v17)
      {
        goto LABEL_499;
      }

      v127 = *v17;
      memset(v193, 0, 24);
      if (v127 > 1)
      {
        goto LABEL_500;
      }

      v128 = sub_10002DDA4();
      if (!v128 || (v128 & 7) != 0)
      {
        goto LABEL_499;
      }

      (*(*v128 + 96))(v128, v127, v193);
      v129 = v193[23];
      if (v193[23] < 0)
      {
        v129 = *&v193[8];
      }

      if (v129 < 0xFFFFFFFFFFFFFFFELL)
      {
        sub_1000D6C34(v10, 0);
        operator new[]();
      }

      goto LABEL_502;
    case 105:
      if (v16)
      {
        goto LABEL_343;
      }

      v19 = sub_10004B1AC();
      if (!v19 || (v19 & 7) != 0)
      {
        goto LABEL_499;
      }

      if ((*(*v19 + 192))(v19))
      {
        v20 = sub_1000154F0();
        if (!v20 || (v20 & 7) != 0)
        {
          goto LABEL_499;
        }

        sub_10001804C(v20);
        goto LABEL_343;
      }

      v166 = sub_10004B1AC();
      if (!v166 || (v166 & 7) != 0)
      {
        goto LABEL_499;
      }

      v167 = (*(*v166 + 184))(v166);
      v168 = sub_1000154F0();
      v170 = (v168 & 7) == 0 && v168 != 0;
      if ((v167 & 1) == 0)
      {
        if (!v170)
        {
          goto LABEL_499;
        }

        sub_100017F50(v168);
LABEL_343:
        v25 = 0;
        goto LABEL_471;
      }

      if (!v170)
      {
        goto LABEL_499;
      }

      sub_10001814C(v168);
      goto LABEL_470;
    case 108:
      if (*(a2 + 128) != 7)
      {
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::ProcessCmd error handling kIapGeneralRequestSiriMode\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8033);
        goto LABEL_470;
      }

      if (v17 > 0xFFFFFFFFFFFFFFF9)
      {
LABEL_501:
        __break(0x5513u);
        goto LABEL_502;
      }

      v2.i32[0] = *v17;
      v138 = *(v17 + 4);
      v139 = *(v17 + 5);
      v140 = *(v17 + 6);
      v141 = sub_10004B1AC();
      if (!v141 || (v141 & 7) != 0)
      {
        goto LABEL_499;
      }

      v142 = vmovl_u8(v2).u64[0];
      *v193 = vuzp1_s8(v142, v142).u32[0];
      v193[4] = v138;
      v193[5] = v139;
      if (v140 > 3)
      {
        goto LABEL_500;
      }

      (*(*v141 + 704))(v141, v193, v140);
LABEL_470:
      v25 = 0;
LABEL_471:
      if ((a2 & 7) != 0)
      {
        goto LABEL_499;
      }

      if (*(a2 + 126) == v11)
      {
        v179 = *(a2 + 68);
        HIDWORD(v187) = 0;
        WORD1(v187) = 0;
        LOBYTE(v187) = 0;
        sub_1000B7854(a2);
      }

      v180 = *(a1 + 8);
      if (v11 != 80)
      {
        v8 = sub_1000B6DB4(v180, a2, 0, 1u);
        if (v11 != 73 || !v25)
        {
          return v8;
        }

        if (v25)
        {
          v181 = sub_100052234();
          if (!v181 || (v181 & 7) != 0)
          {
            goto LABEL_499;
          }

          *v193 = (*(*v181 + 88))(v181);
          sub_100088544(*(a1 + 8), 0, v193, 4u, 2u, 0, -1);
        }

        if ((v25 & 0x400) != 0)
        {
          sub_10007E414(a1, 1, v10);
        }

        if ((v25 & 0x4000) != 0)
        {
          v182 = sub_100052234();
          if (!v182 || (v182 & 7) != 0)
          {
            goto LABEL_499;
          }

          *v193 = (*(*v182 + 96))(v182);
          sub_100088544(*(a1 + 8), 0xEu, v193, 4u, 2u, 0, -1);
        }

        if ((v25 & 0x8000) != 0)
        {
          v183 = sub_1000D5ED0();
          if (!v183 || (v183 & 7) != 0)
          {
            goto LABEL_499;
          }

          *v193 = (*(*v183 + 104))(v183);
          sub_100088544(*(a1 + 8), 0xFu, v193, 1u, 2u, 0, -1);
        }

        if ((v25 & 0x20000) == 0)
        {
          goto LABEL_497;
        }

        v184 = sub_10004B1AC();
        if (v184 && (v184 & 7) == 0)
        {
          (*(*v184 + 664))(v184, 0);
LABEL_497:
          if ((v25 & 0x80000) != 0)
          {
            sub_10007E798(a1, 1, v10);
          }

          return v8;
        }

        goto LABEL_499;
      }

      return sub_1000B6DB4(v180, a2, 1, 0);
    case 109:
      v130 = *(a2 + 128);
      v131 = *(a2 + 24);
      if (*(a2 + 128) && v131)
      {
        v132 = sub_10004B1AC();
        if (!v132 || (v132 & 7) != 0)
        {
          goto LABEL_499;
        }

        (*(*v132 + 728))(v132, v131, v130);
      }

      else
      {
        v185 = *(a2 + 128);
        syslog(4, "%s:%s-%d kIapGeneralAccessoryUserLog error, tmpDataLen=%u and dataPtr=%hhx");
      }

      goto LABEL_470;
    case 110:
      v160 = *(a2 + 128);
      v161 = *(a2 + 24);
      if (*(a2 + 128) && v161)
      {
        v162 = sub_10004B1AC();
        if (!v162 || (v162 & 7) != 0)
        {
          goto LABEL_499;
        }

        (*(*v162 + 736))(v162, v161, v160);
      }

      else
      {
        v186 = *(a2 + 128);
        syslog(4, "%s:%s-%d kIapGeneralAccessoryKernelLog error, tmpDataLen=%u and dataPtr=%hhx");
      }

      goto LABEL_470;
    default:
      sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::ProcessCmd: Invalid CmdID: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8073, v11);
      goto LABEL_470;
  }
}

uint64_t sub_1000811F4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2 || a3 != 9)
  {
    __break(0x5518u);
    goto LABEL_41;
  }

  v4 = result;
  v5 = sub_100046A8C();
  result = sub_100065198(v5);
  if (!result)
  {
    goto LABEL_41;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  result = sub_1000949E0(result, v4, 0);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_41;
  }

  v6 = result;
  v7 = (*(*v5 + 192))(v5, v4);
  v8 = (*(*v5 + 256))(v5);
  v9 = 0x404A853FELL;
  if (v8)
  {
    v9 = 0x604A853FELL;
  }

  v10 = v9 | v7;
  if ((*(*v5 + 216))(v5))
  {
    v10 |= 0x8000uLL;
  }

  if ((*(*v5 + 224))(v5))
  {
    v10 |= 0x10000uLL;
  }

  if ((*(*v5 + 232))(v5))
  {
    v10 |= 0x20000uLL;
  }

  if (v4)
  {
    if ((*(*v5 + 240))(v5, v4))
    {
      v10 |= 0x40000uLL;
    }

    if ((*(*v5 + 248))(v5, v4))
    {
      v10 |= 0x400000uLL;
    }
  }

  if ((*(*v5 + 152))(v5))
  {
    v11 = v10 | 0x1000000;
  }

  else
  {
    v11 = v10;
  }

  if ((*(*v5 + 120))(v5))
  {
    v11 |= 0x8000000uLL;
  }

  if ((*(*v5 + 128))(v5))
  {
    v11 |= 0x10000000uLL;
  }

  result = (*(*v5 + 136))(v5);
  if (result)
  {
    v11 |= 0x20000000uLL;
  }

  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_41;
    }

    if (sub_10005BDCC(v6))
    {
      v11 |= 0x2000uLL;
    }
  }

  result = (*(*v5 + 88))(v5);
  if (v6 && result)
  {
    if ((v6 & 7) == 0)
    {
      result = sub_10005BDCC(v6);
      if (result)
      {
        v11 |= 0x100100000uLL;
      }

      goto LABEL_38;
    }

LABEL_41:
    __break(0x5516u);
    goto LABEL_42;
  }

LABEL_38:
  *a2 = 0;
  if (a2 != -1)
  {
    *(a2 + 1) = bswap64(v11);
    return 0;
  }

LABEL_42:
  __break(0x5500u);
  return result;
}

uint64_t sub_100081574(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (v3 = 0, (result = sub_100065198(result)) == 0) || (result & 7) != 0 || (result = sub_100092790(result, *(v1 + 8), 0xDu), (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_15;
  }

  v2 = result;
  result = sub_100097578(&v3, *(v1 + 8));
  if (v3 >= 2u)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  result = v3 == 1;
  if (v2 && v3 != 1)
  {
    result = sub_100095A00(v2);
    if (result <= 3)
    {
      if (result != 3)
      {
        return dword_1000EF210[result];
      }

      sub_1000DDEEC(0, 4, "%s:%d Got an unknown iPod Out Mode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18272);
      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100081650(uint64_t result)
{
  if (!result)
  {
    goto LABEL_95;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_95;
  }

  result = kdebug_trace();
  *(v1 + 2212) = 1;
  if (!*(v1 + 8))
  {
    __break(0x5518u);
    goto LABEL_95;
  }

  v2 = sub_100065198(result);
  result = *(v1 + 8);
  if (!result)
  {
    goto LABEL_95;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_95;
  }

  result = sub_100018DC0(result);
  if (!v2 || (v2 & 7) != 0)
  {
    goto LABEL_95;
  }

  v3 = result;
  result = sub_1000592F0(v2, result);
  v31 = -21846;
  v4 = *(v1 + 1588);
  v8 = __CFADD__(v4, 1);
  v5 = v4 + 1;
  if (!v8)
  {
    v6 = result;
    *(v1 + 1588) = v5;
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB24(result, 3u);
    result = sub_100092790(v2, *(v1 + 8), 3u);
    if (result)
    {
      if ((result & 7) != 0)
      {
        goto LABEL_95;
      }

      (*(*result + 88))(result, *(v1 + 8));
    }

    result = *(v1 + 8);
    if (!result)
    {
      goto LABEL_95;
    }

    if ((result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB6C(result, 3u);
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB24(result, 4u);
    result = sub_100092790(v2, *(v1 + 8), 4u);
    if (result)
    {
      if ((result & 7) != 0)
      {
        goto LABEL_95;
      }

      (*(*result + 88))(result, *(v1 + 8));
    }

    result = *(v1 + 8);
    if (!result)
    {
      goto LABEL_95;
    }

    if ((result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB6C(result, 4u);
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_95;
    }

    result = sub_10005BDFC(result);
    if (result == result)
    {
      v7 = result;
      if (result != -1)
      {
        goto LABEL_39;
      }

      if (!v3 || (v3 & 7) != 0)
      {
        goto LABEL_95;
      }

      if (((*(*v3 + 224))(v3) & 1) != 0 || ((*(*v3 + 56))(v3), !IOAccessoryManagerGetServiceWithPrimaryPort()))
      {
        v7 = -1;
        goto LABEL_39;
      }

      result = IOAccessoryManagerGetAccessoryID();
      if (result == result)
      {
        v8 = result != 100 && result >= 0x10;
        if (v8)
        {
          v7 = -1;
        }

        else
        {
          v7 = result;
        }

LABEL_39:
        *(v1 + 1224) = 1;
        if (v7 == -1)
        {
          v9 = 16;
        }

        else
        {
          v9 = v7;
        }

        *(v1 + 1228) = v9;
        *(v1 + 1232) = v3;
        *(v1 + 1240) = 0;
        *(v1 + 1248) = *(v1 + 8);
        pthread_mutex_lock((v1 + 1280));
        v31 = 112;
        sub_10006733C(v1, -1, &v31, 0, 0xFFFFu);
        v31 = 113;
        sub_10006733C(v1, -1, &v31, 0, 0xFFFFu);
        v31 = 115;
        sub_10006733C(v1, -1, &v31, 0, 0xFFFFu);
        pthread_mutex_unlock((v1 + 1280));
        sub_100075A08(v1);
        v31 = 0;
        sub_10006733C(v1, -1, &v31, 0, 0xFFFFu);
        v31 = 20;
        sub_10006733C(v1, -1, &v31, 0, 0xFFFFu);
        v31 = 23;
        v10 = sub_10006733C(v1, -1, &v31, 0, 0xFFFFu);
        result = sub_100065198(v10);
        if (result && (result & 7) == 0)
        {
          v11 = sub_100059100(result, v3);
          if (!v6)
          {
            goto LABEL_55;
          }

          result = sub_100065198(v11);
          if (result)
          {
            if ((result & 7) == 0)
            {
              v12 = sub_100092B58(result, v6);
              v13 = v12;
              result = sub_100065198(v12);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  v14 = sub_100059100(result, v6);
                  result = sub_100065198(v14);
                  if (result)
                  {
                    if ((result & 7) == 0)
                    {
                      sub_100092C44(result, v6);
                      v15 = sub_1000769C0(v1, *(v1 + 8), -1);
                      result = sub_100065198(v15);
                      if (result)
                      {
                        if ((result & 7) == 0)
                        {
                          sub_100058CA0(result, v6, -1);
                          if (v13)
                          {
                            LOWORD(v27[0]) = 120;
                            sub_10006733C(v1, -1, v27, 0, 0xFFFFu);
                            sub_100076A8C(v1, *(v1 + 8), v6, v13);
                          }

LABEL_55:
                          result = sub_10008387C(v1, 132);
                          if (*(v1 + 2202))
                          {
                            v16 = 15;
LABEL_93:
                            kdebug_trace();
                            return v16;
                          }

                          if (v3)
                          {
                            if ((v3 & 7) == 0)
                            {
                              v17 = (*(*v3 + 264))(v3);
                              *(v1 + 2214) = v17;
                              result = sub_100065198(v17);
                              if (result)
                              {
                                if ((result & 7) == 0)
                                {
                                  sub_100093338(result, v3, 56);
                                  sub_100075B90(v1, v3, 0);
                                  *(v1 + 2200) = 1;
                                  result = *(v1 + 8);
                                  if (result)
                                  {
                                    if ((result & 7) == 0)
                                    {
                                      v18 = sub_10005BC54(result);
                                      result = sub_100075A48(v1, 0, 0);
                                      if (v18)
                                      {
                                        if ((v18 & 7) == 0)
                                        {
                                          v19 = *(v18 + 776);
                                          if (v19)
                                          {
                                            if ((v19 & 7) == 0)
                                            {
                                              if (*(v19 + 16))
                                              {
                                                result = sub_1000C05AC(v18 + 720, 0, 0);
                                              }

                                              result = sub_100065198(result);
                                              if (result)
                                              {
                                                if ((result & 7) == 0)
                                                {
                                                  v20 = sub_100093438(result, v3);
                                                  result = sub_100065198(v20);
                                                  if (result)
                                                  {
                                                    if ((result & 7) == 0)
                                                    {
                                                      sub_100092FE4(result, v3, 0, 0);
                                                      sub_10007692C(v1, v21, 1);
                                                      if (((*(*v3 + 224))(v3) & 1) == 0)
                                                      {
                                                        sub_100076E70(v1, v22, 0);
                                                      }

                                                      v29 = 0xAAAAAAAAAAAAAAAALL;
                                                      v30 = 0xAAAAAAAAAAAAAAAALL;
                                                      v27[0] = 0xF00000000;
                                                      v27[1] = v3;
                                                      v27[2] = 0;
                                                      v28 = *(v1 + 8);
                                                      sub_10005FBC8(0, 0, v27, 48, v28);
                                                      result = sub_1000CC7A0();
                                                      if (result)
                                                      {
                                                        v23 = result;
                                                        if ((result & 7) == 0)
                                                        {
                                                          v24 = sub_1000CE018(*(v1 + 8));
                                                          (*(*v23 + 120))(v23, v24);
                                                          sub_1000743E4(v1, 1);
                                                          *(v1 + 1272) = 0;
                                                          sub_10007478C(v1 + 1992);
                                                          sub_100074588(v1);
                                                          result = *(v1 + 8);
                                                          if (result)
                                                          {
                                                            if ((result & 7) == 0)
                                                            {
                                                              sub_10005BD80(result);
                                                              v31 = 116;
                                                              v25 = sub_10006797C(v1, 116);
                                                              if (v25)
                                                              {
LABEL_87:
                                                                if (sub_10006825C(v3) && (v7 == 100 || v7 == -1))
                                                                {
                                                                  *(v1 + 1533) = 1;
                                                                  if (sub_1000671A8(v1, -1, 115, 0, 2000))
                                                                  {
                                                                    sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16006);
                                                                  }
                                                                }

                                                                sub_10008387C(v1, 132);
                                                                v16 = 0;
                                                                goto LABEL_93;
                                                              }

                                                              result = sub_100065198(v25);
                                                              if (result && (result & 7) == 0)
                                                              {
                                                                if (sub_1000C9FD0(result))
                                                                {
                                                                  if ((*(*v3 + 208))(v3) == 2)
                                                                  {
                                                                    v26 = 10100;
                                                                  }

                                                                  else
                                                                  {
                                                                    v26 = 3100;
                                                                  }

                                                                  sub_1000671A8(v1, -1, v31, 0, v26);
                                                                }

                                                                goto LABEL_87;
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

LABEL_95:
        __break(0x5516u);
      }
    }

    __break(0x550Au);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_100081DB4(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = kdebug_trace(), !a2) || (a2 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    __break(0x5513u);
    __break(0x5507u);
    goto LABEL_18;
  }

  if (!*(a2 + 128))
  {
    v5 = 22;
    goto LABEL_11;
  }

  v4 = *(v2 + 2200);
  if (v4 < 2)
  {
    if ((v4 & 1) == 0 || *(v2 + 2202))
    {
      v5 = 2;
LABEL_11:
      kdebug_trace();
      return v5;
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      v6 = *(a2 + 8);
      if (*v7)
      {
        if (*(a2 + 128) != 1)
        {
          operator new();
        }
      }

      sub_10008B6B4((v2 + 1992), 0);
      sub_10008B7B4(v2);
      v5 = 0;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(0x550Au);
  __break(0x5500u);
  __break(0x5515u);
  __break(0x5514u);
  return result;
}

uint64_t sub_100082D70(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_39;
  }

  v16 = 8;
  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  result = sub_100018DC0(result);
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_39;
  }

  v5 = *(a2 + 128);
  v6 = *(a2 + 24);
  v7 = *(a2 + 68);
  v15 = 116;
  if (v5 != 1)
  {
    return 2;
  }

  if (v6)
  {
    v8 = v2[34].__opaque[16];
    if (v8 < 2)
    {
      v9 = *v6;
      if ((v8 & 1) == 0 && !v2[34].__opaque[18])
      {
        return 4;
      }

      if (v2[34].__opaque[18])
      {
        v16 = 5;
        v15 = 116;
        sub_10006733C(v2, -1, &v15, 0, 0xFFFFu);
        goto LABEL_17;
      }

      if ((v8 & 1) == 0)
      {
        return 4;
      }

      if (v9 <= 7)
      {
        if (v9 <= 1)
        {
          if (v9)
          {
            v11 = 4;
LABEL_24:
            v16 = v11;
            goto LABEL_17;
          }

          result = sub_10008BCD0(v2[31].__opaque);
          v16 = result;
          if (result)
          {
LABEL_17:
            v2[34].__opaque[16] = 0;
            sub_1000B748C();
          }

          v12 = v2[30].__opaque[37];
          if (v12 <= 1)
          {
            if ((v12 & 1) == 0)
            {
              goto LABEL_17;
            }

            v13 = v2[30].__opaque[36];
            if (v13 <= 1)
            {
              if ((v13 & 1) == 0)
              {
                v11 = 2;
                goto LABEL_24;
              }

              goto LABEL_17;
            }
          }

          goto LABEL_40;
        }

        if (v9 == 2)
        {
          v16 = 6;
          v15 = 116;
          sub_10006733C(v2, -1, &v15, 0, 0xFFFFu);
          result = pthread_mutex_lock(v2 + 21);
          v14 = v2[34].__opaque[18];
          if (v14 != 255)
          {
            v2[34].__opaque[18] = v14 + 1;
            pthread_mutex_unlock(v2 + 21);
            sub_100087400(v2, 0);
            goto LABEL_17;
          }

          goto LABEL_41;
        }

        if (v9 == 3)
        {
          v16 = 4;
          v15 = 116;
          sub_10006733C(v2, -1, &v15, 0, 0xFFFFu);
          v2[34].__opaque[17] = 1;
          sub_1000671A8(v2, -1, 114, 0, 3000);
          goto LABEL_17;
        }

        v10 = 4;
        sub_1000DDEEC(0, 4, "%s:%d accEndIDPSStatus %X is not supported\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16147, v9);
        return v10;
      }
    }
  }

  else
  {
LABEL_39:
    __break(0x5516u);
  }

LABEL_40:
  __break(0x550Au);
LABEL_41:
  __break(0x5507u);
  return result;
}

uint64_t sub_100083398(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_49;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_49;
  }

  if (*(a2 + 128) != 2)
  {
    return sub_1000B9034(a2);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_49;
  }

  if (v4 == -1)
  {
LABEL_50:
    __break(0x5513u);
    goto LABEL_51;
  }

  v5 = *(a2 + 68);
  v6 = *v4;
  v7 = v4[1];
  if (v7 <= 66)
  {
    if (v7 != 63)
    {
      if (v7 == 64)
      {
        return sub_1000B9034(a2);
      }

      goto LABEL_15;
    }

    v14 = 0;
    v15 = 117;
    if (sub_10006733C(result, v5, &v15, &v14, 0xFFFFu) || !v14)
    {
      return sub_1000B9034(a2);
    }

    v13 = bswap32(*v14) >> 16;
    if (!v6)
    {
      result = sub_100013610(v2 + 1200, &v13);
      if (v2 + 1208 != result)
      {
        if (!result)
        {
          goto LABEL_49;
        }

        if ((result & 7) != 0)
        {
          goto LABEL_49;
        }

        v10 = *(result + 40);
        if (!v10 || (v10 & 7) != 0)
        {
          goto LABEL_49;
        }

        *(v10 + 32) = 1;
      }
    }

    if (v14)
    {
      operator delete[]();
    }

    result = sub_10004AB10();
    if (result)
    {
      v11 = result;
      if ((result & 7) == 0)
      {
        v12 = sub_1000CE018(*(v2 + 8));
        (*(*v11 + 128))(v11, v12, v13, v6 == 0);
        return sub_1000B9034(a2);
      }
    }

    goto LABEL_49;
  }

  if (v7 != 67)
  {
    if (v7 != 93)
    {
      if (v7 == 96)
      {
        v15 = 96;
        sub_10006733C(result, v5, &v15, 0, 0xFFFFu);
        return sub_1000B9034(a2);
      }

LABEL_15:
      sub_1000DDEEC(0, 4, "%s:%d DevACK for cmdID %X not handled\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 12711, v7);
      return sub_1000B9034(a2);
    }

    v14 = 0;
    v15 = 93;
    if (sub_10006733C(result, v5, &v15, &v14, 0xFFFFu))
    {
      return sub_1000B9034(a2);
    }

    result = v14;
    if (!v14)
    {
      return sub_1000B9034(a2);
    }

    if ((v14 & 7) == 0)
    {
      operator delete();
    }

    goto LABEL_49;
  }

  v14 = 0;
  v15 = 118;
  v8 = sub_10006733C(result, v5, &v15, &v14, 0xFFFFu);
  v9 = v14;
  if (v8 || !v14)
  {
LABEL_28:
    if (v9)
    {
      operator delete[]();
    }

    return sub_1000B9034(a2);
  }

  v13 = bswap32(*v14) >> 16;
  result = sub_100013610(v2 + 1200, &v13);
  if (v2 + 1208 == result)
  {
LABEL_25:
    if (!v6)
    {
      sub_100087A14(v2, v13, -1);
    }

    v9 = v14;
    goto LABEL_28;
  }

  if (!result || (result & 7) != 0 || (result = *(result + 40)) == 0 || (result & 7) != 0)
  {
LABEL_49:
    __break(0x5516u);
    goto LABEL_50;
  }

  if (!HIWORD(v5))
  {
    sub_1000891A4(result, v5);
    goto LABEL_25;
  }

LABEL_51:
  __break(0x5507u);
  return result;
}

void sub_100083698(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 128);
  v16 = 0;
  if (v5 < 3)
  {
    v13 = 0;
    LODWORD(v11) = 0;
LABEL_21:
    v14 = *(a1 + 8);
    if (v14 && (v14 & 7) == 0)
    {
      sub_100018DC0(v14);
      if (v11 >= v13)
      {
        v15 = *(a2 + 68);
        sub_1000B7768();
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(0x5516u);
LABEL_26:
    __break(0x5515u);
    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_25;
  }

  v16 = bswap32(*v4) >> 16;
  v6 = sub_100013610(a1 + 1200, &v16);
  if (a1 + 1208 == v6)
  {
    v13 = 0;
    LODWORD(v11) = 0;
    goto LABEL_21;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_25;
  }

  v7 = *(v6 + 40);
  v8 = sub_10004AB10();
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  if ((v8 & 7) != 0)
  {
    goto LABEL_25;
  }

  v10 = sub_1000CE018(*(a1 + 8));
  if (v4 < 0xFFFFFFFFFFFFFFFELL)
  {
    v11 = v5 - 2;
    v12 = (*(*v9 + 120))(v9, v10, v16, v11, v4 + 1);
    v13 = v12;
    if (v12 != v11)
    {
      sub_1000DDEEC(0, 4, "%s:%d ERROR: acceptedBytes=%d, sentBytes=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 14086, v12, v11);
    }

    if (!v7 || (v7 & 7) != 0)
    {
      goto LABEL_25;
    }

    *(v7 + 36) = v11;
    *(v7 + 40) = v13;
    goto LABEL_21;
  }

LABEL_27:
  __break(0x5513u);
}

uint64_t sub_10008387C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_100083924(result);
  if ((a2 & ~result) != 0)
  {
    return 22;
  }

  v4 = v2[1];
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    *(v4 + 1992) = a2 | 0x84;
    if ((a2 & 0x100000) != 0)
    {
      (*(*v2 + 16))(v2, 327688, 0, 0);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100083924(uint64_t result)
{
  if (!result || (result & 7) != 0 || (result = sub_100046A8C()) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v1 = (*(*result + 216))(result);
    if (v1)
    {
      v2 = 1769125;
    }

    else
    {
      v2 = 1769124;
    }

    v5 = -1;
    v4 = -1;
    sub_100065198(v1);
    sub_1000C9B60(7, &v5, &v4);
    if (v4 == -1 || v5 == 255)
    {
      return v2;
    }

    else
    {
      return v2 | 8;
    }
  }

  return result;
}

uint64_t sub_1000839D4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  v6 = a3;
  if (sub_1000477BC() == 1)
  {
LABEL_26:
    syslog(4, "MapAvailableCurrent: %d -> %d", a3, v6);
    return v6;
  }

  v7 = sub_100047284();
  result = sub_1000C4254();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  result = sub_10005A468(result, a2);
  if (v7 >= 8)
  {
LABEL_28:
    __break(0x550Au);
    goto LABEL_29;
  }

  v8 = result;
  v9 = a3 < 0x5DD || v7 == 3;
  v10 = v9 ? 1 : result;
  v11 = v10 ? a3 : 1500;
  result = sub_100048620();
  v18 = v11;
  if (!result || (v12 = result, (result & 7) != 0))
  {
LABEL_27:
    __break(0x5516u);
    goto LABEL_28;
  }

  v13 = (*(*result + 232))(result);
  result = (*(*v12 + 240))(v12);
  v14 = 100 * v13;
  if ((v14 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_29:
    __break(0x550Cu);
    goto LABEL_30;
  }

  if (!result)
  {
LABEL_30:
    __break(0x5503u);
    goto LABEL_31;
  }

  v15 = v14 / result;
  if (v14 / result <= 0xFF)
  {
    if (a2 && (a2 & 7) == 0)
    {
      v16 = (*(*a2 + 224))(a2);
      sub_100047814(v16, v3 + 1592, v3 + 1760, v3 + 1696, v8, v7, v11, v15, &v18);
      if (v17)
      {
        v6 = v18;
      }

      else
      {
        v6 = v11;
      }

      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_31:
  __break(0x5507u);
  return result;
}

uint64_t sub_100083BA0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    return 4;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  v3 = *(a2 + 128);
  v4 = v3 - 2;
  if (v3 < 2)
  {
    return 4;
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  if (v5 == -1)
  {
    goto LABEL_21;
  }

  v6 = *v5;
  v7 = v5[1];
  if (v7 != 1)
  {
    if (!v5[1])
    {
      if (v5 <= 0xFFFFFFFFFFFFFFFDLL)
      {

        return sub_10008CC60(result, v6);
      }

LABEL_21:
      __break(0x5513u);
      return result;
    }

    sub_1000DDEEC(0, 4, "%s:%d Unknown VPortType(%d) Id=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18604, v7, v6);
    return 4;
  }

  if (v5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_21;
  }

  return sub_10008CD3C(result, v6, v5 + 2, v4);
}

uint64_t sub_100083C74(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
    return 4;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_15;
  }

  v2 = *(a2 + 128);
  v3 = 4;
  if (!*(a2 + 128))
  {
    return v3;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    return v3;
  }

  result = sub_10008D110(result, *v4);
  if (!result)
  {
    return 4;
  }

  if ((result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  result = *(result + 16);
  if (!result)
  {
    return 4;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  if (v4 != -1)
  {
    (*(*result + 360))(result, v4 + 1, (v2 - 1));
    return 0;
  }

LABEL_16:
  __break(0x5513u);
  return result;
}

uint64_t *sub_100083D34(uint64_t *result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_47;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_47;
  }

  v3 = *(a2 + 24);
  v4 = *(a2 + 128);
  v5 = *(a2 + 8);
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  if (v4 <= 1)
  {
    goto LABEL_36;
  }

  v22 = v5;
  if (!v3)
  {
    goto LABEL_47;
  }

  if (v3 == -1)
  {
    goto LABEL_46;
  }

  v6 = *(v3 + 1);
  if (v6 >= 4)
  {
    goto LABEL_49;
  }

  v7 = *v3;
  if ((v6 - 1) < 2)
  {
    if (v4 != 2)
    {
      v21 = *v3;
      if (v3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v4 >= 4)
        {
          v8 = *(v3 + 2);
          if (*(v3 + 2))
          {
            v9 = 0;
            v10 = result + 262;
            v11 = 3;
            while (1)
            {
              v12 = v11 + 1;
              if (((v11 + 1) & 0x100) != 0)
              {
                goto LABEL_48;
              }

              if (~v3 < v11)
              {
                goto LABEL_46;
              }

              v23 = *(v3 + v11);
              result = sub_10008E904((v2 + 261), &v23);
              if (v10 != result)
              {
                v13 = *sub_1000894D0((v2 + 261), &v23);
                result = sub_1000894D0(&v24, &v23);
                *result = v13;
                ++v9;
              }

              if (v4 > v12)
              {
                v11 = v12;
                if (v9 < v8)
                {
                  continue;
                }
              }

              if (v4 <= v12)
              {
                goto LABEL_36;
              }

              v14 = v12;
              goto LABEL_34;
            }
          }
        }

        if (v4 < 4)
        {
          goto LABEL_36;
        }

        v14 = 3;
LABEL_34:
        v18 = (v4 - 1);
        if (v18 <= ~v3)
        {
          if (*(v3 + v18))
          {
            goto LABEL_36;
          }

          if (v14 <= ~v3)
          {
            v15 = (v3 + v14);
            if (v6 == 2)
            {
              if (!sub_1000E1434(v15))
              {
                v17 = 2;
                goto LABEL_37;
              }

              result = sub_1000154F0();
              if (result)
              {
                v19 = result;
                if ((result & 7) == 0)
                {
                  v20 = sub_1000CE018(v2[1]);
                  v16 = sub_100017960(v19, v15, v20);
LABEL_29:
                  if (v16)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = 2;
                  }

                  goto LABEL_37;
                }
              }

LABEL_47:
              __break(0x5516u);
LABEL_48:
              __break(0x5507u);
              goto LABEL_49;
            }

            v7 = v21;
            goto LABEL_25;
          }
        }
      }

LABEL_46:
      __break(0x5513u);
      goto LABEL_47;
    }

LABEL_36:
    v17 = 4;
LABEL_37:
    sub_1000089F8(&v24);
    return v17;
  }

  if (*(v3 + 1))
  {
    goto LABEL_36;
  }

  sub_10008A054(&v24, result + 261);
  v15 = v2[264];
  if (!v15)
  {
    goto LABEL_36;
  }

LABEL_25:
  result = sub_10004B1AC();
  if (!result || (result & 7) != 0)
  {
    goto LABEL_47;
  }

  if (v7 <= 1)
  {
    v16 = (*(*result + 320))(result, v6, v7, v22, &v24, v15);
    goto LABEL_29;
  }

LABEL_49:
  __break(0x550Au);
  return result;
}

uint64_t sub_100083FBC(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_298;
  }

  v120 = 0;
  v5 = *(a1 + 8);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_298;
  }

  result = sub_10005BC54(v5);
  v11 = result;
  if (a2 > 127)
  {
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        if (a3)
        {
          return sub_100085C34(a1, a4, a3);
        }

        return v120;
      }

      if (a2 != 2048 && a2 != 0x4000)
      {
        return v120;
      }

      if (result && (result & 7) == 0)
      {
        v12 = *(a1 + 8);
        sub_1000BB6E0(result, a2, a3);
        return v120;
      }

      goto LABEL_298;
    }

    if (a2 == 128)
    {
      sub_1000857D8(128, a3);
      if (a4)
      {
        if ((a4 & 7) != 0)
        {
          goto LABEL_298;
        }

        if ((*(*a4 + 272))(a4))
        {
          *(a1 + 1516) &= *(a4 + 204);
        }
      }

      pthread_mutex_lock((a1 + 1280));
      if (a3 != a3)
      {
        goto LABEL_299;
      }

      if (a3 > 15 || a3 == -1)
      {
        if (a3 == 100)
        {
          *(a1 + 1528) = 0;
          *(a1 + 1532) = 0;
          *(a1 + 1588) = 0;
        }

        else
        {
          sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::NotifyEvent invalid accessory resistor ID: %d !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8617, a3);
        }
      }

      else
      {
        LOWORD(v119) = 112;
        *&v121 = 0;
        if ((a3 & 0x80000000) == 0)
        {
          v46 = 1 << a3;
        }

        else
        {
          v46 = 0;
        }

        sub_10006733C(a1, -1, &v119, &v121, 0xFFFFu);
        if ((v46 & 0x18CB) != 0)
        {
          if ((v46 & 0xC1) == 0)
          {
            goto LABEL_131;
          }

          v48 = *(a1 + 2368);
          if (v48 > 1)
          {
            goto LABEL_299;
          }

          if (v48)
          {
            goto LABEL_169;
          }

          v49 = *(a1 + 8);
          if (!v49 || (v49 & 7) != 0)
          {
            goto LABEL_298;
          }

          if ((sub_10005BCA0(v49) & 1) == 0)
          {
LABEL_169:
            v50 = 1;
          }

          else
          {
LABEL_131:
            v50 = 0;
          }

          sub_100076E70(a1, v47, v50);
        }

        v69 = *(a1 + 1528);
        if (v69 > 7)
        {
          goto LABEL_299;
        }

        if (v69 <= 1)
        {
          *(a1 + 1528) = 1;
          v70 = *(a1 + 8);
          if (!v70 || (v70 & 7) != 0)
          {
            goto LABEL_298;
          }

          v71 = sub_10005BDFC(v70);
          if (v71 != v71)
          {
            goto LABEL_299;
          }

          v120 = sub_1000671A8(a1, -1, 112, v71, 3000);
        }

        v72 = *(a1 + 1533);
        if (v72 > 1)
        {
          goto LABEL_299;
        }

        if (v72)
        {
          LOWORD(v119) = 115;
          v120 = sub_10006733C(a1, -1, &v119, 0, 0xFFFFu);
          if (v120)
          {
            sub_1000DDEEC(0, 4, "%s:%d ClrCmdTimeout failed!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8631);
          }

          v73 = *(a1 + 1536);
          if (v73 > 0x1F)
          {
            goto LABEL_299;
          }

          if (v73 != 25)
          {
            *(a1 + 1540) = a3;
            sub_100077384(a1, 0, 0, a1 + 1536, 48);
          }

          if ((a3 & 0x80000000) == 0 && ((1 << a3) & 0xE400) != 0)
          {
            v74 = *(a1 + 2212);
            if (v74 > 1)
            {
              goto LABEL_299;
            }

            if ((v74 & 1) == 0)
            {
              v75 = *(a1 + 1552);
              LODWORD(v121) = 0x7FFFFFFF;
              v76 = *(a1 + 1408);
              if (v76)
              {
                if ((v76 & 3) != 0)
                {
                  goto LABEL_298;
                }

                v76 = sub_10005A2E0(v76, &v121);
              }

              v77 = sub_100065198(v76);
              if (!v77 || (v77 & 7) != 0)
              {
                goto LABEL_298;
              }

              v78 = sub_100092B58(v77, a4);
              v80 = *(a1 + 1584);
              if (v80 > 3)
              {
                goto LABEL_299;
              }

              if (v80)
              {
                if (v80 == 2)
                {
                  goto LABEL_199;
                }

                if (sub_100078FD4(v75, v78))
                {
                  if ((v121 & 0x80000000) != 0)
                  {
                    goto LABEL_299;
                  }

                  if (v121)
                  {
LABEL_199:
                    sub_100076E70(a1, v79, v80 == 1);
                  }
                }
              }
            }
          }
        }

        *(a1 + 1533) = 0;
        *(a1 + 1536) = 0x6400000019;
        *(a1 + 1544) = a4;
        *(a1 + 1552) = 0;
        *(a1 + 1560) = *(a1 + 8);
        *(a1 + 1584) = 0;
      }

      pthread_mutex_unlock((a1 + 1280));
      return v120;
    }

    if (a2 != 256)
    {
      return v120;
    }

    sub_1000857D8(256, a3);
    v13 = *(a1 + 1524);
    if (v13 <= 3)
    {
      *(a1 + 1524) = a3;
      if (a3 <= 3)
      {
        if (a3 >= 2)
        {
          __break(0x5518u);
          goto LABEL_298;
        }

        v14 = sub_100048620();
        if (!v14 || (v14 & 7) != 0)
        {
          goto LABEL_298;
        }

        if (*(a1 + 1524) <= 3u)
        {
          (*(*v14 + 264))(v14, a4);
          v15 = *(a1 + 1524);
          if (v15 <= 3)
          {
            if (v15 == v13)
            {
              return v120;
            }

            v16 = *(a1 + 1528);
            if (v16 > 7)
            {
              goto LABEL_299;
            }

            if (v16 < 4)
            {
              return v120;
            }

            v17 = *(a1 + 8);
            if (v17 && (v17 & 7) == 0)
            {
              v18 = sub_10005BDFC(v17);
              v19 = *(a1 + 1524);
              if (v19 > 3)
              {
                goto LABEL_299;
              }

              if (v19 == 1)
              {
                if (!v11)
                {
                  goto LABEL_298;
                }

                if ((v11 & 7) != 0)
                {
                  goto LABEL_298;
                }

                v81 = *(v11 + 1256);
                if (!v81 || (v81 & 7) != 0)
                {
                  goto LABEL_298;
                }

                if (*(v81 + 16))
                {
                  v82 = sub_10004B1AC();
                  if (!v82 || (v82 & 7) != 0)
                  {
                    goto LABEL_298;
                  }

                  (*(*v82 + 456))(v82);
                }

                v83 = sub_1000D0360();
                if (v83 && (v83 & 7) == 0)
                {
                  if ((*(*v83 + 120))(v83))
                  {
                    v84 = sub_1000D0360();
                    if (!v84 || (v84 & 7) != 0)
                    {
                      goto LABEL_298;
                    }

                    if ((*(*v84 + 176))(v84))
                    {
                      *&v85 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v125 = v85;
                      v126 = v85;
                      v123 = v85;
                      v124 = v85;
                      v121 = v85;
                      v122 = v85;
                      v86 = sub_1000D0360();
                      if (!v86 || (v86 & 7) != 0)
                      {
                        goto LABEL_298;
                      }

                      *&v121 = (*(*v86 + 104))(v86);
                      WORD5(v121) = 0;
                      *&v122 = 0x1200000000;
                      HIDWORD(v122) = 0;
                      LOBYTE(v123) = 1;
                      sub_1000858FC(&v121);
                    }
                  }

                  if (v18 != v18)
                  {
                    goto LABEL_299;
                  }

                  if (v18 == 14)
                  {
                    goto LABEL_224;
                  }

                  v87 = *(a1 + 2203);
                  if (v87 > 1)
                  {
                    goto LABEL_299;
                  }

                  if (v87)
                  {
LABEL_224:
                    sub_1000BD2E0(v11 + 112, 1);
                  }

                  return v120;
                }
              }

              else
              {
                if (v19)
                {
                  sub_1000E23F4(v19);
                }

                v20 = sub_10004B1AC();
                if (!v20)
                {
                  goto LABEL_298;
                }

                if ((v20 & 7) != 0)
                {
                  goto LABEL_298;
                }

                (*(*v20 + 464))(v20);
                v21 = sub_1000D0360();
                if (!v21 || (v21 & 7) != 0)
                {
                  goto LABEL_298;
                }

                if ((*(*v21 + 120))(v21))
                {
                  v22 = sub_1000D0360();
                  if (!v22 || (v22 & 7) != 0)
                  {
                    goto LABEL_298;
                  }

                  if ((*(*v22 + 176))(v22))
                  {
                    *&v23 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v125 = v23;
                    v126 = v23;
                    v123 = v23;
                    v124 = v23;
                    v121 = v23;
                    v122 = v23;
                    v24 = sub_1000D0360();
                    if (!v24 || (v24 & 7) != 0)
                    {
                      goto LABEL_298;
                    }

                    *&v121 = (*(*v24 + 104))(v24);
                    WORD5(v121) = 0;
                    *&v122 = 0x1200000000;
                    HIDWORD(v122) = 0;
                    LOBYTE(v123) = 0;
                    sub_1000858FC(&v121);
                  }
                }

                if (v18 != v18)
                {
                  goto LABEL_299;
                }

                if (v18 != 14)
                {
                  v25 = *(a1 + 2203);
                  if (v25 > 1)
                  {
                    goto LABEL_299;
                  }

                  if ((v25 & 1) == 0)
                  {
                    return v120;
                  }
                }

                v26 = *(a1 + 8);
                if (v26)
                {
                  if ((v26 & 7) == 0)
                  {
                    v27 = sub_10005AC88(v26);
                    if (v11)
                    {
                      if ((v11 & 7) == 0)
                      {
                        if (a4)
                        {
                          v28 = a4;
                        }

                        else
                        {
                          v28 = v27;
                        }

                        sub_1000BD8A0(v11 + 112, v28, 0);
                        return v120;
                      }
                    }
                  }
                }
              }
            }

LABEL_298:
            __break(0x5516u);
          }
        }
      }
    }

LABEL_299:
    __break(0x550Au);
  }

  if (a2 <= 7)
  {
    if (a2 != 1)
    {
      if (a2 != 4)
      {
        return v120;
      }

      sub_1000857D8(4, a3);
      if (a4 && (a4 & 7) == 0)
      {
        if ((*(*a4 + 208))(a4) && (sub_1000D6BF8(a4) & 1) == 0)
        {
          LOWORD(v121) = 121;
          sub_10006733C(a1, -1, &v121, 0, 0xFFFFu);
          sub_1000671A8(a1, -1, v121, 0, 3000);
        }

        return v120;
      }

      goto LABEL_298;
    }

    LODWORD(v121) = -1;
    v119 = -1;
    v29 = sub_100065198(result);
    if (!v29 || (v29 & 7) != 0)
    {
      goto LABEL_298;
    }

    sub_1000C7FA0(v29, &v121, &v119);
    if ((v119 + 8) > 0xF || (v121 + 8) > 0xF)
    {
      goto LABEL_299;
    }

    if (v119 == v121)
    {
      return v120;
    }

    v30 = *(a1 + 8);
    if (!v30 || (v30 & 7) != 0)
    {
      goto LABEL_298;
    }

    v31 = sub_100018DC0(v30);
    v32 = v31;
    if (!v31)
    {
      v33 = sub_100065198(0);
      if (!v33 || (v33 & 7) != 0)
      {
        goto LABEL_298;
      }

      v31 = sub_100094CA0(v33, 0);
      v32 = v31;
    }

    v34 = sub_100065198(v31);
    if (!v34 || (v34 & 7) != 0)
    {
      goto LABEL_298;
    }

    v35 = sub_1000933B0(v34, v32);
    if (v35 != 56 && v35 != 19)
    {
      goto LABEL_277;
    }

    v36 = *(a1 + 8);
    if (!v36 || (v36 & 7) != 0)
    {
      goto LABEL_298;
    }

    v35 = sub_10005BF90(v36);
    if (v35)
    {
LABEL_277:
      if ((v119 + 8) > 0xF)
      {
        goto LABEL_299;
      }

      v108 = v121;
      if (v119 == 2)
      {
        if ((v121 + 8) > 0xF)
        {
          goto LABEL_299;
        }

        if (v121 == 4)
        {
          v109 = sub_1000C4254();
          if (!v109 || (v109 & 7) != 0)
          {
            goto LABEL_298;
          }

          v35 = sub_100094564(v109, a4, 0);
          v108 = v121;
        }
      }

      if ((v108 + 8) > 0xF)
      {
        goto LABEL_299;
      }

      if ((v108 - 1) > 1)
      {
        return v120;
      }

      v110 = sub_100065198(v35);
      if (v110)
      {
        if ((v110 & 7) == 0)
        {
          v111 = sub_100092B58(v110, a4);
          v112 = v111;
          v113 = sub_100065198(v111);
          if (v113)
          {
            if ((v113 & 7) == 0)
            {
              v114 = sub_1000592F0(v113, a4);
              *(a1 + 2200) = 0;
              *(a1 + 2202) = 0;
              sub_10008DD60(0, a4, 0);
              sub_100085118(a1, a4, 9u, v112);
              if (!v114)
              {
                return v120;
              }

              v116 = sub_100065198(v115);
              if (v116 && (v116 & 7) == 0)
              {
                v117 = sub_100092B58(v116, v114);
                sub_1000856D8(a1, *(a1 + 8), 9u, v117);
                return v120;
              }
            }
          }
        }
      }

      goto LABEL_298;
    }

    if ((v119 + 8) > 0xF)
    {
      goto LABEL_299;
    }

    if ((v119 - 1) < 2)
    {
      goto LABEL_260;
    }

    if (!v32 || (v32 & 7) != 0)
    {
      goto LABEL_298;
    }

    v35 = (*(*v32 + 272))(v32);
    if ((v35 & 1) == 0)
    {
      v37 = sub_100065198(v35);
      if (!v37 || (v37 & 7) != 0)
      {
        goto LABEL_298;
      }

      v35 = sub_1000932FC(v37, v32);
      v38 = v121 + 8;
      if (v35 == 70)
      {
        if (v38 > 0xF)
        {
          goto LABEL_299;
        }

        if (v121 == 3)
        {
          goto LABEL_251;
        }
      }

      else if (v38 > 0xF)
      {
        goto LABEL_299;
      }

      if (v121 == 2)
      {
        sub_100074AEC(a1, 1, 1);
      }

      else
      {
        v88 = pthread_mutex_lock((a1 + 2256));
        for (i = *(a1 + 2240); i != a1 + 2232; i = *(i + 8))
        {
          if (!i)
          {
            goto LABEL_298;
          }

          if ((i & 7) != 0)
          {
            goto LABEL_298;
          }

          v90 = *(i + 16);
          v91 = sub_100065198(v88);
          if (!v91)
          {
            goto LABEL_298;
          }

          if ((v91 & 7) != 0)
          {
            goto LABEL_298;
          }

          if (!v90)
          {
            goto LABEL_298;
          }

          if ((v90 & 7) != 0)
          {
            goto LABEL_298;
          }

          v92 = *(v90 + 16);
          if ((v92 & 7) != 0)
          {
            goto LABEL_298;
          }

          v93 = sub_1000949E0(v91, v92, 0);
          v94 = sub_100065198(v93);
          if (!v94)
          {
            goto LABEL_298;
          }

          if ((v94 & 7) != 0)
          {
            goto LABEL_298;
          }

          v95 = *(v90 + 16);
          if ((v95 & 7) != 0)
          {
            goto LABEL_298;
          }

          v88 = sub_1000933B0(v94, v95);
          if (v93 && (v88 == 56 || v88 == 19))
          {
            if ((v93 & 7) != 0)
            {
              goto LABEL_298;
            }

            v88 = sub_10005BF90(v93);
            if ((v88 & 1) == 0)
            {
              v88 = sub_10008505C(v93);
            }
          }
        }

        pthread_mutex_unlock((a1 + 2256));
      }

      v35 = sub_10008505C(*(a1 + 8));
      v120 = v35;
    }

LABEL_251:
    if ((v119 + 8) > 0xF)
    {
      goto LABEL_299;
    }

    if (v119 == 3)
    {
      v96 = v121;
      if ((v121 + 8) > 0xF)
      {
        goto LABEL_299;
      }

      if (v121 != 4)
      {
        goto LABEL_261;
      }

      *(a1 + 2200) = 0;
      *(a1 + 2202) = 0;
      v97 = sub_10006825C(a4);
      if ((v97 & 1) == 0)
      {
        goto LABEL_259;
      }

      v98 = sub_100065198(v97);
      if (!v98 || (v98 & 7) != 0)
      {
        goto LABEL_298;
      }

      if (sub_100058F00(v98, a4) || (v35 = strcmp((a1 + 1592), "Apple Component AV Cable"), v35) && (v35 = strcmp((a1 + 1592), "Apple Composite AV Cable"), v35))
      {
LABEL_259:
        v35 = sub_100078C34(v32);
      }
    }

LABEL_260:
    v96 = v121;
    if ((v121 + 8) > 0xF)
    {
      goto LABEL_299;
    }

LABEL_261:
    if (v96 == 4)
    {
      v118 = -21846;
      v99 = sub_100075B90(a1, a4, 0);
      *(a1 + 2200) = 0;
      *(a1 + 2202) = 0;
      *(a1 + 1528) = 0;
      *(a1 + 1532) = 0;
      *(a1 + 1588) = 0;
      v100 = sub_100065198(v99);
      if (!v100)
      {
        goto LABEL_298;
      }

      if ((v100 & 7) != 0)
      {
        goto LABEL_298;
      }

      v101 = sub_1000592F0(v100, a4);
      v102 = sub_100065198(v101);
      if (!v102 || (v102 & 7) != 0)
      {
        goto LABEL_298;
      }

      v103 = sub_100059100(v102, a4);
      if (v101)
      {
        v104 = sub_100065198(v103);
        if (!v104 || (v104 & 7) != 0)
        {
          goto LABEL_298;
        }

        sub_100059100(v104, v101);
      }

      v118 = 20;
      sub_10006733C(a1, -1, &v118, 0, 0xFFFFu);
      v118 = 23;
      v35 = sub_10006733C(a1, -1, &v118, 0, 0xFFFFu);
      v96 = v121;
      if ((v121 + 8) > 0xF)
      {
        goto LABEL_299;
      }
    }

    if (v96 == 3)
    {
      v105 = sub_100065198(v35);
      if (!v105)
      {
        goto LABEL_298;
      }

      if ((v105 & 7) != 0)
      {
        goto LABEL_298;
      }

      v106 = sub_100093438(v105, a4);
      v107 = sub_100065198(v106);
      if (!v107 || (v107 & 7) != 0)
      {
        goto LABEL_298;
      }

      sub_100092FE4(v107, a4, 0, 0);
    }

    goto LABEL_277;
  }

  if (a2 == 8)
  {
    sub_1000857D8(8, a3);
    v39 = *(a1 + 8);
    if (!v39 || (v39 & 7) != 0)
    {
      goto LABEL_298;
    }

    v40 = sub_10005BDFC(v39);
    if (v40 != v40)
    {
      goto LABEL_299;
    }

    if (v40 == 14)
    {
      goto LABEL_104;
    }

    v41 = *(a1 + 2203);
    if (v41 > 1)
    {
      goto LABEL_299;
    }

    if (v41)
    {
LABEL_104:
      if (!v11 || (v11 & 7) != 0)
      {
        goto LABEL_298;
      }

      sub_1000BD8A0(v11 + 112, a4, 0);
    }

    v42 = *(a1 + 8);
    if (v42 && (v42 & 7) == 0)
    {
      v43 = sub_10005ACF4(v42);
      if (v43)
      {
        v44 = *(a1 + 8);
        if (!v44 || (v44 & 7) != 0)
        {
          goto LABEL_298;
        }

        v45 = sub_10005BE5C(v44);
      }

      else
      {
        v53 = sub_100065198(v43);
        if (!v53 || (v53 & 7) != 0)
        {
          goto LABEL_298;
        }

        v45 = sub_100092B58(v53, a4);
      }

      v54 = v45;
      v55 = sub_100065198(v45);
      if (v55)
      {
        if ((v55 & 7) == 0)
        {
          v56 = sub_1000592F0(v55, a4);
          *(a1 + 2200) = 0;
          *(a1 + 2202) = 0;
          if (v11)
          {
            if ((v11 & 7) == 0)
            {
              v57 = *(v11 + 776);
              if (v57)
              {
                if ((v57 & 7) == 0)
                {
                  v58 = v56;
                  if (*(v57 + 16))
                  {
                    sub_1000C05AC(v11 + 720, 0, 0);
                  }

                  if (a4)
                  {
                    sub_10008DD60(0, a4, 0);
                  }

                  sub_1000C1FF4(v11 + 1104, 0);
                  sub_100085118(a1, a4, 9u, v54);
                  if (v58)
                  {
                    v60 = sub_100065198(v59);
                    if (!v60 || (v60 & 7) != 0)
                    {
                      goto LABEL_298;
                    }

                    v61 = sub_100092B58(v60, v58);
                    sub_10007702C(a1, v58, v61);
                    sub_1000856D8(a1, *(a1 + 8), 9u, v61);
                  }

                  v62 = *(a1 + 2368);
                  if (v62 > 1)
                  {
                    goto LABEL_299;
                  }

                  if (v62)
                  {
                    return v120;
                  }

                  v63 = *(a1 + 8);
                  if (v63 && (v63 & 7) == 0)
                  {
                    v64 = sub_10005BFD0(v63);
                    if (!a4 || !v64)
                    {
                      return v120;
                    }

                    if ((a4 & 7) == 0)
                    {
                      if (!(*(*a4 + 272))(a4))
                      {
                        return v120;
                      }

                      v65 = **a4;
                      if (v66 && (v66 & 7) == 0)
                      {
                        v67 = *(a1 + 8);
                        v68 = (*(*v66 + 392))(v66);
                        sub_100076B84(0, v67, a4, v68);
                        return v120;
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

    goto LABEL_298;
  }

  if (a2 != 32)
  {
    return v120;
  }

  if (*(a1 + 1176) == a3)
  {
    sub_10006770C(a1, &v120);
    return 0;
  }

  if (*(a1 + 1980) != a3)
  {
    return v120;
  }

  if (*(a1 + 1976) > 1u)
  {
    goto LABEL_299;
  }

  if (*(a1 + 1976))
  {
    return v120;
  }

  v51 = *(a1 + 1978);
  if (v51 != 255)
  {
    v52 = v51 + 1;
    if ((v51 + 1) > 2u)
    {
      *(a1 + 1977) = 1;
    }

    else
    {
      sub_1000743E4(a1, 0);
      sub_100079318(a1);
    }

    *(a1 + 1978) = v52;
    return v120;
  }

  __break(0x5507u);
  return result;
}