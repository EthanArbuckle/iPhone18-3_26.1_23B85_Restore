uint64_t sub_59C118(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v5 = *result;
  v4 = *(result + 8);
  v78 = v4;
  while (v5 != v4)
  {
    result = sub_4D1DC0(v5);
    if (result)
    {
      v7 = result;
      v8 = 0;
      v6 = 0;
      while (1)
      {
        v9 = sub_4D1F50(v5, v8);
        v10 = *(a1 + 3568);
        v11 = *(v9 + 32);
        v12 = v11 & 0xFFFFFFFFFFFFLL;
        v13 = sub_2B51D8(v10, v11 & 0xFFFFFFFFFFFFLL);
        if (*(v10 + 7772) != 1)
        {
          v17 = 0;
          v18 = *(v10 + 7773);
          if (v18 != 1)
          {
            goto LABEL_81;
          }

          goto LABEL_26;
        }

        v92 = 0;
        v93 = v11;
        v90 = &v92;
        v91 = &v93;
        v14 = *(v10 + 7752) + 1;
        *(v10 + 7752) = v14;
        v15 = *(v10 + 3896);
        if (!v15)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v95 = *v91;
          v94[0] = sub_7FCF0(8u);
          v94[1] = v74;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v94, &v85);
          if (v87 >= 0)
          {
            v75 = &v85;
          }

          else
          {
            v75 = v85;
          }

          if (v87 >= 0)
          {
            v76 = HIBYTE(v87);
          }

          else
          {
            v76 = v86;
          }

          v77 = sub_2D390(exception, v75, v76);
        }

        if (*(v10 + 4680) == v11)
        {
          v16 = "/System/Library/Frameworks/Foundation.framework/Foundation" + 40;
          goto LABEL_20;
        }

        if (*(v10 + 4704) == v11)
        {
          v16 = &stru_1260;
          goto LABEL_20;
        }

        if (*(v10 + 4728) == v11)
        {
          break;
        }

        if (*(v10 + 4752) == v11)
        {
          v16 = "/usr/lib/libobjc.A.dylib" + 24;
LABEL_20:
          v19 = &v16[v10];
          ++*(v10 + 7760);
          *(v19 + 1) = v14;
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_112;
          }

          goto LABEL_21;
        }

        v44 = *(v10 + 4736);
        v45 = *(v10 + 4712);
        v46 = *(v10 + 4688);
        v47 = v46 < v14;
        if (v46 < v14)
        {
          v14 = *(v10 + 4688);
        }

        v48 = v45 >= v14;
        if (v45 < v14)
        {
          v14 = *(v10 + 4712);
        }

        v49 = 32 * v47;
        if (!v48)
        {
          v49 = 33;
        }

        v50 = v44 >= v14;
        if (v44 < v14)
        {
          v14 = *(v10 + 4736);
        }

        v83 = v14;
        v51 = 34;
        if (v50)
        {
          v51 = v49;
        }

        v79 = v51;
        v81 = *(v10 + 4760);
        v52 = v13;
        v20 = sub_2D52A4(v15, 8, v11, 1);
        v13 = v52;
        v53 = 35;
        if (v81 >= v83)
        {
          v53 = v79;
        }

        v54 = v10 + 3912 + 24 * v53;
        *v54 = v93;
        *(v54 + 8) = *(v10 + 7752);
        *(v54 + 16) = v20;
        if (!v20)
        {
LABEL_112:
          result = sub_30C6E0(&v90);
          __break(1u);
          return result;
        }

LABEL_21:
        v21 = (v20 + *v20);
        v22 = (v21 - *v21);
        if (*v22 >= 5u && (v23 = v22[2]) != 0)
        {
          v24 = v21 + v23 + *(v21 + v23);
        }

        else
        {
          v24 = 0;
        }

        v17 = &v24[((v11 >> 30) & 0x3FFFC) + 4 + *&v24[((v11 >> 30) & 0x3FFFC) + 4]];
        v18 = *(v10 + 7773);
        if (v18 != 1)
        {
          goto LABEL_81;
        }

LABEL_26:
        LODWORD(v94[0]) = v11;
        LODWORD(v90) = v18;
        v85 = &v90;
        v86 = v94;
        v25 = *(v10 + 7752) + 1;
        *(v10 + 7752) = v25;
        v26 = *(v10 + 3896);
        if (!v26)
        {
          goto LABEL_80;
        }

        if (*(v10 + 6024) == v11)
        {
          v27 = 6024;
          goto LABEL_35;
        }

        if (*(v10 + 6048) == v11)
        {
          v27 = 6048;
          goto LABEL_35;
        }

        if (*(v10 + 6072) == v11)
        {
          v27 = 6072;
          goto LABEL_35;
        }

        if (*(v10 + 6096) == v11)
        {
          v27 = 6096;
LABEL_35:
          v28 = v10 + v27;
          ++*(v10 + 7760);
          *(v28 + 8) = v25;
          v29 = *(v28 + 16);
          if (!v29)
          {
            goto LABEL_80;
          }

          goto LABEL_36;
        }

        v55 = *(v10 + 6080);
        v56 = *(v10 + 6056);
        v57 = *(v10 + 6032);
        v58 = v57 >= v25;
        if (v57 < v25)
        {
          v25 = *(v10 + 6032);
        }

        v59 = 88;
        if (v58)
        {
          v59 = 0;
        }

        v60 = v56 >= v25;
        if (v56 < v25)
        {
          v25 = *(v10 + 6056);
        }

        v61 = 89;
        if (v60)
        {
          v61 = v59;
        }

        v62 = v55 >= v25;
        if (v55 < v25)
        {
          v25 = *(v10 + 6080);
        }

        v84 = v25;
        v63 = 90;
        if (v62)
        {
          v63 = v61;
        }

        v80 = v63;
        v82 = *(v10 + 6104);
        v64 = v13;
        v29 = sub_2D52A4(v26, 22, v11, 1);
        v13 = v64;
        v65 = 91;
        if (v82 >= v84)
        {
          v65 = v80;
        }

        v66 = v10 + 3912 + 24 * v65;
        *v66 = v94[0];
        *(v66 + 8) = *(v10 + 7752);
        *(v66 + 16) = v29;
        if (!v29)
        {
LABEL_80:
          v67 = v13;
          sub_31DB68(&v85);
          v13 = v67;
LABEL_81:
          v68 = 0;
          v39 = 0;
          goto LABEL_82;
        }

LABEL_36:
        v30 = (v29 + *v29);
        v31 = (v30 - *v30);
        if (*v31 < 0xBu)
        {
          goto LABEL_81;
        }

        if (!v31[5])
        {
          goto LABEL_81;
        }

        v32 = (v30 + v31[5] + *(v30 + v31[5]));
        if (*v32 <= HIDWORD(v12))
        {
          goto LABEL_81;
        }

        v33 = &v32[2 * HIDWORD(v12)];
        v36 = v33[1];
        v35 = v33 + 1;
        v34 = v36;
        if (!v36)
        {
          goto LABEL_81;
        }

        v37 = v13;
        v38 = sub_2B3284(v10 + 3896, v34, 1);
        v39 = v38;
        if (!v38)
        {
          v68 = 0;
          v13 = v37;
          goto LABEL_82;
        }

        v40 = &v38[-*v38];
        v41 = *v40;
        if ((*(v35 + 6) & 2) != 0)
        {
          v13 = v37;
          if (v41 < 5)
          {
            goto LABEL_81;
          }

          v42 = *(v40 + 2);
          if (*(v40 + 2))
          {
            v42 = (v42 + v39 + *(v42 + v39));
          }

          if (v41 >= 7)
          {
            v43 = *(v40 + 3);
            if (v43)
            {
LABEL_91:
              v70 = (v39 + v43 + *(v39 + v43));
              if (!v42)
              {
                goto LABEL_99;
              }

              goto LABEL_96;
            }
          }
        }

        else if (v41 < 7)
        {
          if (v41 < 5)
          {
            v68 = 0;
            v39 = 0;
            v13 = v37;
            goto LABEL_82;
          }

          v42 = 0;
          v13 = v37;
          v43 = *(v40 + 2);
          if (v43)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v42 = *(v40 + 3);
          if (*(v40 + 3))
          {
            v42 = (v42 + v38 + *(v42 + v38));
          }

          v13 = v37;
          v43 = *(v40 + 2);
          if (v43)
          {
            goto LABEL_91;
          }
        }

        v70 = 0;
        if (!v42)
        {
          goto LABEL_99;
        }

LABEL_96:
        v71 = *(v35 + 2);
        if (*v42 <= v71)
        {
LABEL_99:
          v39 = 0;
          if (!v70)
          {
            goto LABEL_102;
          }

          goto LABEL_100;
        }

        v39 = &v42[v71 + 1] + v42[v71 + 1];
        if (!v70)
        {
          goto LABEL_102;
        }

LABEL_100:
        v72 = *(v35 + 2);
        if (*v70 <= v72)
        {
LABEL_102:
          v68 = 0;
          goto LABEL_82;
        }

        v68 = &v70[v72 + 1] + v70[v72 + 1];
LABEL_82:
        v85 = v13;
        v86 = v17;
        v87 = v39;
        v88 = v68;
        v89 = v11 & 0xFFFFFFFFFFFFFFLL;
        if (sub_43388C(a1, &v85))
        {
          result = sub_4D23F8(v5, v8, v69);
          v6 += result;
          if (v7 == ++v8)
          {
            goto LABEL_3;
          }
        }

        else
        {
          result = 0;
          if (v7 == ++v8)
          {
            goto LABEL_3;
          }
        }
      }

      v16 = "/usr/lib/libobjc.A.dylib";
      goto LABEL_20;
    }

    v6 = 0;
LABEL_3:
    v5[1546] = v6;
    v5 += 1582;
    v4 = v78;
  }

  return result;
}

void sub_59C734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_59C7B0(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v5 = *result;
  v4 = *(result + 8);
  v78 = v4;
  while (v5 != v4)
  {
    result = sub_4D1DC0(v5);
    v86 = result;
    if (result)
    {
      v7 = 0;
      v6 = 0;
      while (1)
      {
        v8 = sub_4D1F50(v5, v7);
        v9 = *(a1 + 3568);
        v10 = *(v8 + 32);
        v11 = *(v8 + 36);
        v12 = ((v11 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v11 << 32) | v10;
        v13 = ((v11 & 0x20000000u) << 19) | (v11 << 32) & 0xFFFFFFFFFFFFLL | v10 & 0xFFFFFFFFFFFFLL;
        v14 = sub_2B51D8(v9, v13);
        if (*(v9 + 7772) != 1)
        {
          v18 = 0;
          v19 = *(v9 + 7773);
          if (v19 != 1)
          {
            goto LABEL_81;
          }

          goto LABEL_26;
        }

        v95 = v10;
        v94 = 0;
        v92 = &v94;
        v93 = &v95;
        v15 = *(v9 + 7752) + 1;
        *(v9 + 7752) = v15;
        v16 = *(v9 + 3896);
        if (!v16)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v97 = *v93;
          v96[0] = sub_7FCF0(8u);
          v96[1] = v74;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v96, &v87);
          if (v89 >= 0)
          {
            v75 = &v87;
          }

          else
          {
            v75 = v87;
          }

          if (v89 >= 0)
          {
            v76 = HIBYTE(v89);
          }

          else
          {
            v76 = v88;
          }

          v77 = sub_2D390(exception, v75, v76);
        }

        if (*(v9 + 4680) == v10)
        {
          v17 = "/System/Library/Frameworks/Foundation.framework/Foundation" + 40;
          goto LABEL_20;
        }

        if (*(v9 + 4704) == v10)
        {
          v17 = &stru_1260;
          goto LABEL_20;
        }

        if (*(v9 + 4728) == v10)
        {
          break;
        }

        if (*(v9 + 4752) == v10)
        {
          v17 = "/usr/lib/libobjc.A.dylib" + 24;
LABEL_20:
          v20 = &v17[v9];
          ++*(v9 + 7760);
          *(v20 + 1) = v15;
          v21 = *(v20 + 2);
          if (!v21)
          {
            goto LABEL_112;
          }

          goto LABEL_21;
        }

        v85 = v14;
        v45 = *(v9 + 4736);
        v46 = *(v9 + 4712);
        v47 = *(v9 + 4688);
        v48 = v47 < v15;
        if (v47 < v15)
        {
          v15 = *(v9 + 4688);
        }

        v49 = v46 >= v15;
        if (v46 < v15)
        {
          v15 = *(v9 + 4712);
        }

        v50 = 32 * v48;
        if (!v49)
        {
          v50 = 33;
        }

        v51 = v45 >= v15;
        if (v45 < v15)
        {
          v15 = *(v9 + 4736);
        }

        v82 = v15;
        v52 = 34;
        if (v51)
        {
          v52 = v50;
        }

        v79 = v52;
        v80 = *(v9 + 4760);
        v21 = sub_2D52A4(v16, 8, v10, 1);
        v14 = v85;
        v53 = 35;
        if (v80 >= v82)
        {
          v53 = v79;
        }

        v54 = v9 + 3912 + 24 * v53;
        *v54 = v95;
        *(v54 + 8) = *(v9 + 7752);
        *(v54 + 16) = v21;
        if (!v21)
        {
LABEL_112:
          result = sub_30C6E0(&v92);
          __break(1u);
          return result;
        }

LABEL_21:
        v22 = (v21 + *v21);
        v23 = (v22 - *v22);
        if (*v23 >= 5u && (v24 = v23[2]) != 0)
        {
          v25 = v22 + v24 + *(v22 + v24);
        }

        else
        {
          v25 = 0;
        }

        v18 = &v25[4 * v11 + 4 + *&v25[4 * v11 + 4]];
        v19 = *(v9 + 7773);
        if (v19 != 1)
        {
          goto LABEL_81;
        }

LABEL_26:
        LODWORD(v96[0]) = v10;
        LODWORD(v92) = v19;
        v87 = &v92;
        v88 = v96;
        v26 = *(v9 + 7752) + 1;
        *(v9 + 7752) = v26;
        v27 = *(v9 + 3896);
        if (!v27)
        {
          goto LABEL_80;
        }

        if (*(v9 + 6024) == v10)
        {
          v28 = 6024;
          goto LABEL_35;
        }

        if (*(v9 + 6048) == v10)
        {
          v28 = 6048;
          goto LABEL_35;
        }

        if (*(v9 + 6072) == v10)
        {
          v28 = 6072;
          goto LABEL_35;
        }

        if (*(v9 + 6096) == v10)
        {
          v28 = 6096;
LABEL_35:
          v29 = v9 + v28;
          ++*(v9 + 7760);
          *(v29 + 8) = v26;
          v30 = *(v29 + 16);
          if (!v30)
          {
            goto LABEL_80;
          }

          goto LABEL_36;
        }

        v55 = *(v9 + 6080);
        v56 = *(v9 + 6056);
        v57 = *(v9 + 6032);
        v58 = v57 >= v26;
        if (v57 < v26)
        {
          v26 = *(v9 + 6032);
        }

        v59 = 88;
        if (v58)
        {
          v59 = 0;
        }

        v60 = v56 >= v26;
        if (v56 < v26)
        {
          v26 = *(v9 + 6056);
        }

        v61 = 89;
        if (v60)
        {
          v61 = v59;
        }

        v62 = v55 >= v26;
        if (v55 < v26)
        {
          v26 = *(v9 + 6080);
        }

        v84 = v26;
        v63 = 90;
        if (v62)
        {
          v63 = v61;
        }

        v81 = v63;
        v83 = *(v9 + 6104);
        v64 = v14;
        v30 = sub_2D52A4(v27, 22, v10, 1);
        v14 = v64;
        v65 = 91;
        if (v83 >= v84)
        {
          v65 = v81;
        }

        v66 = v9 + 3912 + 24 * v65;
        *v66 = v96[0];
        *(v66 + 8) = *(v9 + 7752);
        *(v66 + 16) = v30;
        if (!v30)
        {
LABEL_80:
          v67 = v14;
          sub_31DB68(&v87);
          v14 = v67;
LABEL_81:
          v68 = 0;
          v40 = 0;
          goto LABEL_82;
        }

LABEL_36:
        v31 = (v30 + *v30);
        v32 = (v31 - *v31);
        if (*v32 < 0xBu)
        {
          goto LABEL_81;
        }

        if (!v32[5])
        {
          goto LABEL_81;
        }

        v33 = (v31 + v32[5] + *(v31 + v32[5]));
        if (*v33 <= HIDWORD(v13))
        {
          goto LABEL_81;
        }

        v34 = &v33[2 * HIDWORD(v13)];
        v37 = v34[1];
        v36 = v34 + 1;
        v35 = v37;
        if (!v37)
        {
          goto LABEL_81;
        }

        v38 = v14;
        v39 = sub_2B3284(v9 + 3896, v35, 1);
        v40 = v39;
        if (!v39)
        {
          v68 = 0;
          v14 = v38;
          goto LABEL_82;
        }

        v41 = &v39[-*v39];
        v42 = *v41;
        if ((*(v36 + 6) & 2) != 0)
        {
          v14 = v38;
          if (v42 < 5)
          {
            goto LABEL_81;
          }

          v43 = *(v41 + 2);
          if (*(v41 + 2))
          {
            v43 = (v43 + v40 + *(v43 + v40));
          }

          if (v42 >= 7)
          {
            v44 = *(v41 + 3);
            if (v44)
            {
LABEL_91:
              v70 = (v40 + v44 + *(v40 + v44));
              if (!v43)
              {
                goto LABEL_99;
              }

              goto LABEL_96;
            }
          }
        }

        else if (v42 < 7)
        {
          if (v42 < 5)
          {
            v68 = 0;
            v40 = 0;
            v14 = v38;
            goto LABEL_82;
          }

          v43 = 0;
          v14 = v38;
          v44 = *(v41 + 2);
          if (v44)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v43 = *(v41 + 3);
          if (*(v41 + 3))
          {
            v43 = (v43 + v39 + *(v43 + v39));
          }

          v14 = v38;
          v44 = *(v41 + 2);
          if (v44)
          {
            goto LABEL_91;
          }
        }

        v70 = 0;
        if (!v43)
        {
          goto LABEL_99;
        }

LABEL_96:
        v71 = *(v36 + 2);
        if (*v43 <= v71)
        {
LABEL_99:
          v40 = 0;
          if (!v70)
          {
            goto LABEL_102;
          }

          goto LABEL_100;
        }

        v40 = &v43[v71 + 1] + v43[v71 + 1];
        if (!v70)
        {
          goto LABEL_102;
        }

LABEL_100:
        v72 = *(v36 + 2);
        if (*v70 <= v72)
        {
LABEL_102:
          v68 = 0;
          goto LABEL_82;
        }

        v68 = &v70[v72 + 1] + v70[v72 + 1];
LABEL_82:
        v87 = v14;
        v88 = v18;
        v89 = v40;
        v90 = v68;
        v91 = v12 ^ 0x1000000000000;
        if (sub_434208(a1, &v87))
        {
          result = sub_4D23F8(v5, v7, v69);
          v6 += result;
          if (v86 == ++v7)
          {
            goto LABEL_3;
          }
        }

        else
        {
          result = 0;
          if (v86 == ++v7)
          {
            goto LABEL_3;
          }
        }
      }

      v17 = "/usr/lib/libobjc.A.dylib";
      goto LABEL_20;
    }

    v6 = 0;
LABEL_3:
    v5[1546] = v6;
    v5 += 1582;
    v4 = v78;
  }

  return result;
}

void sub_59CDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_59CE0C()
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
  xmmword_2794A38 = 0u;
  unk_2794A48 = 0u;
  dword_2794A58 = 1065353216;
  sub_3A9A34(&xmmword_2794A38, v0);
  sub_3A9A34(&xmmword_2794A38, v3);
  sub_3A9A34(&xmmword_2794A38, __p);
  sub_3A9A34(&xmmword_2794A38, v9);
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
    qword_2794A10 = 0;
    qword_2794A18 = 0;
    qword_2794A08 = 0;
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

void sub_59D054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2794A20)
  {
    qword_2794A28 = qword_2794A20;
    operator delete(qword_2794A20);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_59D100(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 776) != 1)
  {
    return 0;
  }

  v56[16] = v2;
  v56[17] = v3;
  v6 = *a1;
  v7 = **a2;
  v8 = sub_2B51D8(*a1, v7 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    sub_30C50C(v6 + 3896, v7, 0);
  }

  v9 = sub_31D7E8(v6, v7 & 0xFFFFFFFFFFFFLL, 1);
  v11 = v10;
  v12 = *a1;
  v13 = *(a2[1] - 1);
  v14 = sub_2B51D8(*a1, v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    sub_30C50C(v12 + 3896, v13, 0);
  }

  sub_31D7E8(v12, v13 & 0xFFFFFFFFFFFFLL, 1);
  v15 = (v8 - *v8);
  v16 = *v15;
  v17 = v7 & 0xFF000000000000;
  if ((v7 & 0xFF000000000000) != 0)
  {
    if (v16 < 0x47 || !v15[35] || (*(v8 + v15[35]) & 2) == 0)
    {
      return 0;
    }
  }

  else if (v16 < 0x47 || !v15[35] || (*(v8 + v15[35]) & 1) == 0)
  {
    return 0;
  }

  v19 = (v14 - *v14);
  v20 = *v19;
  if ((v13 & 0xFF000000000000) != 0)
  {
    if (v20 < 0x47)
    {
      return 0;
    }

    v21 = v19[35];
    if (!v19[35])
    {
      return 0;
    }

    v22 = 2;
  }

  else
  {
    if (v20 < 0x47)
    {
      return 0;
    }

    v21 = v19[35];
    if (!v19[35])
    {
      return 0;
    }

    v22 = 1;
  }

  if ((*(v14 + v21) & v22) == 0)
  {
    return 0;
  }

  v23 = v15[23];
  if (v23)
  {
    v24 = *(v8 + v23);
    v51 = v24 > 0x2D;
    v25 = (1 << v24) & 0x208040000000;
    v26 = v51 || v25 == 0;
    if (!v26 && v19[23])
    {
      v27 = *(v14 + v19[23]);
      v51 = v27 > 0x2D;
      v28 = (1 << v27) & 0x208040000000;
      if (!v51 && v28 != 0)
      {
        return 0;
      }
    }
  }

  v30 = *a1;
  v31 = sub_2B51D8(*a1, v7 & 0xFFFFFFFFFFFFLL);
  v32 = (v31 - *v31);
  v33 = *v32;
  if (v17)
  {
    if (v33 < 0x29)
    {
      goto LABEL_44;
    }

    v34 = v32[20];
    if (!v34)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (v33 < 0x27)
    {
      goto LABEL_44;
    }

    v34 = v32[19];
    if (!v34)
    {
      goto LABEL_44;
    }
  }

  if (!*(v31 + v34 + *(v31 + v34)) || (v35 = sub_3EC10C(v30, v7 & 0xFFFFFFFFFFFFFFLL, 0), v36 = (v35 - *v35), *v36 < 5u) || (v37 = v36[2]) == 0)
  {
LABEL_44:
    v38 = 0;
    goto LABEL_45;
  }

  v38 = (*(v35 + v37) >> 2) & 1;
LABEL_45:
  v39 = (v8 - *v8);
  v40 = *v39;
  if (v40 >= 0x9B && v39[77])
  {
    if (v38 != ((*(v8 + v39[77]) & 0x8000) == 0))
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }
  }

  else if (v38)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  if (*(a2 + 6) != v41)
  {
    return 0;
  }

  if (v17)
  {
    if (v40 >= 0x4D && v39[38] && (*(v8 + v39[38]) & 0xA) != 0)
    {
      v9 = v11;
      v42 = v39[8];
      if (v42)
      {
        goto LABEL_59;
      }

LABEL_67:
      v44 = -1.0;
      v45 = -1.0;
      if (!v9)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }

    return 0;
  }

  if (v40 < 0x4D || !v39[38] || (*(v8 + v39[38]) & 5) == 0)
  {
    return 0;
  }

  v42 = v39[7];
  if (!v42)
  {
    goto LABEL_67;
  }

LABEL_59:
  v43 = *(v8 + v42);
  v44 = v43;
  if (!v43)
  {
    v44 = -1.0;
  }

  v45 = -1.0;
  if (v9)
  {
LABEL_68:
    v46 = &v9[-*v9];
    if (*v46 >= 9u)
    {
      v47 = *(v46 + 4);
      if (v47)
      {
        v48 = *&v9[v47];
        if ((v48 - 1) <= 0xFFFDu)
        {
          v45 = v48 / 100.0;
        }
      }
    }
  }

LABEL_72:
  result = 0;
  v51 = (*&v44 <= -1 || ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && *&v44 != 0 || v44 <= 0.0;
  if (v51)
  {
    v44 = 0.0;
  }

  if ((*&v45 <= -1 || ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v45 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v45 = 0.0;
  }

  if (v44 < v45)
  {
    v44 = v45;
  }

  if (*&v44 >> 52 <= 0x7FEuLL && v44 > 0.0)
  {
    if (v44 >= *(a1 + 784))
    {
      v54 = sub_59D570(*a1, v7 & 0xFFFFFFFFFFFFFFLL);
      sub_59D6CC(*a1, v7 & 0xFFFFFFFFFFFFFFLL, v13 & 0xFFFFFFFFFFFFFFLL, v56);
      v55 = v56[3] - v56[2];
      sub_59D84C(v56);
      return *(a1 + 777) + (v55 >> 5) <= v54;
    }

    return 0;
  }

  return result;
}

uint64_t sub_59D570(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xFF000000000000;
  v5 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v6 = (v5 - *v5);
  v7 = *v6;
  if (!v4)
  {
    if (v7 < 0x27)
    {
      goto LABEL_8;
    }

    v8 = v6[19];
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(v5 + v8 + *(v5 + v8));
    goto LABEL_9;
  }

  if (v7 >= 0x29)
  {
    v8 = v6[20];
    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = 0;
LABEL_9:
  v10 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v4)
  {
    if (v12 < 0x29)
    {
      return v9;
    }

    v13 = v11[20];
    if (!v13)
    {
      return v9;
    }
  }

  else
  {
    if (v12 < 0x27)
    {
      return v9;
    }

    v13 = v11[19];
    if (!v13)
    {
      return v9;
    }
  }

  v14 = (v10 + v13 + *(v10 + v13));
  v15 = *v14;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = 4 * v15;
    do
    {
      v19 = v14[v16 / 4 + 1];
      v20 = &v14[v16 / 4] + v19 - *(&v14[v16 / 4 + 1] + v19);
      if (*(v20 + 2) >= 5u)
      {
        v21 = *(v20 + 4);
        if (v21)
        {
          v17 += (*(&v14[v16 / 4 + 1] + v19 + v21) >> 2) & 1;
        }
      }

      v16 += 4;
    }

    while (v18 != v16);
  }

  else
  {
    v17 = 0;
  }

  return v9 - sub_314EB0(v17);
}

double sub_59D6CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_59DC48(a1, a2, 0, (a1 + 7776));
  v7 = *(a1 + 7776);
  v8 = *(a1 + 7784);
  if (v7 != v8)
  {
    while (__PAIR64__(*(v7 + 2), *v7) != __PAIR64__(WORD2(a3), a3) || *(v7 + 6) != BYTE6(a3))
    {
      v7 += 3;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_11:
    *&v9 = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 6) = 1;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
  }

  else
  {
    v9 = *v7;
    *a4 = *v7;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    v10 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    *(a4 + 40) = *(v7 + 20);
  }

  return *&v9;
}

void sub_59D820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 24) = v10;
  sub_4B5A18(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_59D84C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_59D8C0(uint64_t a1, char **a2, char **a3, void *a4, unsigned int a5)
{
  v9 = sub_70E748(a1 + 1432, a2);
  if (v9 == sub_70E748(a1 + 1432, a3))
  {
    return 1;
  }

  if (*a4 >= *(a1 + 1000))
  {
    return 1;
  }

  return a5;
}

BOOL sub_59D944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(sub_4D1F50(a2, a4) + 32);
  v13 = sub_2B51D8(v11, v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    sub_30C50C(v11 + 3896, v12, 0);
  }

  sub_31D7E8(v11, v12 & 0xFFFFFFFFFFFFLL, 1);
  v14 = *a1;
  v15 = *(sub_4D1F50(a2, a5) + 32);
  v16 = sub_2B51D8(v14, v15 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    sub_30C50C(v14 + 3896, v15, 0);
  }

  sub_31D7E8(v14, v15 & 0xFFFFFFFFFFFFLL, 1);
  v17 = (v13 - *v13);
  v18 = *v17;
  if ((v12 & 0xFF000000000000) != 0)
  {
    if (v18 < 0x49)
    {
      goto LABEL_15;
    }

    v19 = v17[36];
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else if (v18 < 0x4B || (v19 = v17[37]) == 0)
  {
LABEL_15:
    v20 = -1;
    v21 = (v16 - *v16);
    v22 = *v21;
    if ((v15 & 0xFF000000000000) != 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v22 >= 0x49)
    {
      v23 = v21[36];
      if (v23)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  v20 = *(v13 + v19);
  v21 = (v16 - *v16);
  v22 = *v21;
  if ((v15 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (v22 >= 0x4B)
  {
    v23 = v21[37];
    if (v23)
    {
LABEL_18:
      v24 = *(v16 + v23);
      goto LABEL_20;
    }
  }

LABEL_19:
  v24 = 0xFFFF;
LABEL_20:
  v25 = v20 + 18000;
  v26 = v20 - 18000;
  if ((v25 >> 5) < 0x465u)
  {
    v26 = v25;
  }

  v27 = v24 - v26;
  if (v27 > 18000)
  {
    v27 -= 36000;
  }

  if (v27 < -17999)
  {
    v27 += 36000;
  }

  if (fabs(v27 / 100.0) <= *(a1 + 200))
  {
    return 0;
  }

  return sub_6E39C8(a1, a2, a3, a5, a6);
}

uint64_t sub_59DB7C(uint64_t a1, int **a2, int **a3, void *a4)
{
  if (sub_7102E4(a1 + 1432, a2, a3))
  {
    return 1;
  }

  v9 = sub_71A018(a1 + 1432, a2, a3);
  if (fabs(sub_70E2E0(a1 + 1432, a2, a3)) >= *(a1 + 200))
  {
    return (*a4 > *(a1 + 1008)) | v9 & 1u;
  }

  else
  {
    return 0;
  }
}

void sub_59DC48(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = *a4;
  for (i = a4[1]; i != v8; i -= 48)
  {
    v11 = *(i - 32);
    if (v11)
    {
      v12 = *(i - 24);
      v10 = *(i - 32);
      if (v12 != v11)
      {
        do
        {
          v13 = *(v12 - 24);
          if (v13)
          {
            *(v12 - 16) = v13;
            operator delete(v13);
          }

          v12 -= 32;
        }

        while (v12 != v11);
        v10 = *(i - 32);
      }

      *(i - 24) = v11;
      operator delete(v10);
    }
  }

  a4[1] = v8;
  v14 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v15 = (v14 - *v14);
  v16 = *v15;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v16 < 0x29)
    {
      return;
    }

    v17 = v15[20];
    if (!v17)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v16 >= 0x27)
  {
    v17 = v15[19];
    if (v17)
    {
LABEL_18:
      v18 = v14 + v17 + *(v14 + v17);
      v71 = *v18;
      if (!*v18)
      {
        return;
      }

      v19 = 0;
      v70 = v18 + 4;
      v74 = a4;
      v73 = a3;
      v72 = a1;
      while (1)
      {
        v20 = &v70[4 * v19 + *&v70[4 * v19]];
        v21 = (v20 - *v20);
        if (*v21 >= 0xDu)
        {
          v22 = v21[6];
          if (v22)
          {
            v23 = (v20 + v22 + *(v20 + v22));
            v24 = *v23;
            if (v24)
            {
              break;
            }
          }
        }

LABEL_20:
        if (++v19 == v71)
        {
          return;
        }
      }

      v25 = &v23[v24];
      v75 = v19;
      v76 = v25;
      while (1)
      {
        v26 = v23[1];
        v27 = (++v23 + v26);
        v28 = (v27 - *v27);
        v29 = *v28;
        if (v29 < 9)
        {
          goto LABEL_35;
        }

        if (v28[4] && *(v27 + v28[4]))
        {
          if ((a3 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_36;
        }

        if (v29 >= 0xB && v28[5])
        {
          if (((*(v27 + v28[5]) != 0) ^ a3))
          {
            goto LABEL_25;
          }
        }

        else
        {
LABEL_35:
          if (a3)
          {
            goto LABEL_25;
          }
        }

LABEL_36:
        v30 = *(v27 + v28[2]);
        v31 = (v30 & 0xFF000000000000) == 0;
        if (v30)
        {
          if (*(a1 + 7774) != 1 || (v32 = sub_2AF704(a1 + 3896, v30, 1)) != 0 && (v33 = &v32[-*v32], *v33 >= 5u) && (v34 = *(v33 + 2)) != 0 && *&v32[v34 + *&v32[v34]] > WORD2(v30) && sub_2B817C(a1, v30 & 0xFFFFFFFFFFFFLL))
          {
            v35 = sub_2B51D8(a1, v30 & 0xFFFFFFFFFFFFLL);
            v36 = (v35 - *v35);
            v37 = *v36;
            if ((v30 & 0xFF000000000000) != 0)
            {
              if (v37 < 0x27)
              {
                goto LABEL_50;
              }

              v38 = v36[19];
              if (!v38)
              {
                goto LABEL_50;
              }

LABEL_49:
              v77 = *(v35 + v38 + *(v35 + v38));
            }

            else
            {
              if (v37 >= 0x29)
              {
                v38 = v36[20];
                if (v38)
                {
                  goto LABEL_49;
                }
              }

LABEL_50:
              v77 = 0;
            }

            v83 = 0uLL;
            v84 = 0;
            v39 = (v27 - *v27);
            if (*v39 < 7u)
            {
              goto LABEL_71;
            }

            v40 = v39[3];
            if (!v40)
            {
              goto LABEL_71;
            }

            if (*(v27 + v40 + *(v27 + v40)))
            {
              operator new();
            }

            v41 = (v27 + *(v27 - *v27 + 6));
            v42 = (v41 + *v41);
            v43 = *v42;
            v25 = v76;
            if (v43)
            {
              v44 = v42 + 1;
              while (1)
              {
                v45 = *v44;
                if (v77 <= v45)
                {
                  break;
                }

                v46 = *(&v83 + 1);
                if (*(&v83 + 1) < v84)
                {
                  **(&v83 + 1) = v45;
                  *(&v83 + 1) = v46 + 1;
                  ++v44;
                  if (!--v43)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  v47 = v83;
                  v48 = (*(&v83 + 1) - v83);
                  v49 = *(&v83 + 1) - v83 + 1;
                  if (v49 < 0)
                  {
                    sub_1794();
                  }

                  v50 = v84 - v83;
                  if (2 * (v84 - v83) > v49)
                  {
                    v49 = 2 * v50;
                  }

                  if (v50 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v51 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v51 = v49;
                  }

                  if (v51)
                  {
                    operator new();
                  }

                  v52 = *(&v83 + 1) - v83;
                  *v48 = *v44;
                  v53 = v48 + 1;
                  memcpy(0, v47, v52);
                  *&v83 = 0;
                  *(&v83 + 1) = v48 + 1;
                  v84 = 0;
                  if (v47)
                  {
                    operator delete(v47);
                  }

                  v25 = v76;
                  v31 = (v30 & 0xFF000000000000) == 0;
                  *(&v83 + 1) = v53;
                  ++v44;
                  if (!--v43)
                  {
                    goto LABEL_71;
                  }
                }
              }

              *(&v83 + 1) = v83;
              v54 = v74;
              v56 = *v74;
              v55 = v74[1];
              v57 = HIDWORD(v30);
              if (*v74 == v55)
              {
LABEL_83:
                a3 = v73;
                v19 = v75;
                if (v56 == v55)
                {
                  goto LABEL_84;
                }

LABEL_78:
                LOBYTE(v79) = v19;
                v58 = *(v56 + 24);
                if (v58 >= *(v56 + 32))
                {
                  v59 = sub_59E328((v56 + 16), &v79, &v83);
                }

                else
                {
                  *v58 = v19;
                  *(v58 + 16) = 0;
                  *(v58 + 24) = 0;
                  *(v58 + 8) = v83;
                  *(v58 + 24) = v84;
                  v83 = 0uLL;
                  v84 = 0;
                  v59 = v58 + 32;
                }

                a1 = v72;
                *(v56 + 24) = v59;
                goto LABEL_102;
              }
            }

            else
            {
LABEL_71:
              v54 = v74;
              v56 = *v74;
              v55 = v74[1];
              v57 = HIDWORD(v30);
              if (*v74 == v55)
              {
                goto LABEL_83;
              }
            }

            a3 = v73;
            v19 = v75;
            while (*v56 != v30 || *(v56 + 4) != v57 || *(v56 + 6) != v31)
            {
              v56 += 48;
              if (v56 == v55)
              {
                goto LABEL_84;
              }
            }

            if (v56 != v55)
            {
              goto LABEL_78;
            }

LABEL_84:
            *(&v79 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            __p[1] = 0;
            v81 = 0;
            __p[0] = 0;
            v82 = 0;
            LODWORD(v79) = v30;
            WORD2(v79) = v57;
            BYTE6(v79) = v31;
            v60 = (v27 - *v27);
            v61 = *v60;
            if (v61 < 9)
            {
              LOBYTE(v63) = 0;
              a1 = v72;
            }

            else
            {
              v62 = v60[4];
              a1 = v72;
              if (v60[4])
              {
                LOBYTE(v62) = *(v27 + v62) != 0;
              }

              LOBYTE(v82) = v62;
              if (v61 < 0xB)
              {
                LOBYTE(v63) = 0;
              }

              else
              {
                v63 = v60[5];
                if (v63)
                {
                  LOBYTE(v63) = *(v27 + v63) != 0;
                }
              }
            }

            HIBYTE(v82) = v63;
            v78 = v19;
            __p[1] = sub_59E328(__p, &v78, &v83);
            v64 = v54[1];
            if (v64 >= v54[2])
            {
              v65 = sub_59E488(v54, &v79);
              v66 = __p[0];
              v54[1] = v65;
              if (v66)
              {
                v67 = __p[1];
                v68 = v66;
                if (__p[1] != v66)
                {
                  do
                  {
                    v69 = *(v67 - 3);
                    if (v69)
                    {
                      *(v67 - 2) = v69;
                      operator delete(v69);
                    }

                    v67 -= 32;
                  }

                  while (v67 != v66);
                  v68 = __p[0];
                }

                __p[1] = v66;
                operator delete(v68);
              }
            }

            else
            {
              *v64 = v79;
              *(v64 + 24) = 0;
              *(v64 + 32) = 0;
              *(v64 + 16) = 0;
              *(v64 + 16) = *__p;
              *(v64 + 32) = v81;
              __p[0] = 0;
              __p[1] = 0;
              v81 = 0;
              *(v64 + 40) = v82;
              v54[1] = v64 + 48;
            }

LABEL_102:
            if (v83)
            {
              *(&v83 + 1) = v83;
              operator delete(v83);
            }
          }
        }

LABEL_25:
        if (v23 == v25)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

void sub_59E2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *(v19 - 112);
  if (v21)
  {
    *(v19 - 104) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_59E328(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 32 * v3;
  *v8 = *a2;
  *(v8 + 8) = *a3;
  *(v8 + 24) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = 32 * v3 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = v8 + *a1 - v10;
    v13 = *a1;
    do
    {
      *v12 = *v13;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = *(v13 + 1);
      *(v12 + 24) = v13[3];
      v13[1] = 0;
      v13[2] = 0;
      v13[3] = 0;
      v13 += 4;
      v12 += 32;
    }

    while (v13 != v10);
    do
    {
      v14 = v9[1];
      if (v14)
      {
        v9[2] = v14;
        operator delete(v14);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 32 * v3 + 32;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 32 * v3 + 32;
}

uint64_t sub_59E488(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v6 + 40) = *(a2 + 40);
  v8 = 48 * v2 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v12[4];
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      *(v13 + 40) = *(v12 + 20);
      v12 += 6;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      v15 = v9[2];
      if (v15)
      {
        v16 = v9[3];
        v14 = v9[2];
        if (v16 != v15)
        {
          do
          {
            v17 = *(v16 - 24);
            if (v17)
            {
              *(v16 - 16) = v17;
              operator delete(v17);
            }

            v16 -= 32;
          }

          while (v16 != v15);
          v14 = v9[2];
        }

        v9[3] = v15;
        operator delete(v14);
      }

      v9 += 6;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_59E64C()
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
  xmmword_2794A90 = 0u;
  unk_2794AA0 = 0u;
  dword_2794AB0 = 1065353216;
  sub_3A9A34(&xmmword_2794A90, v0);
  sub_3A9A34(&xmmword_2794A90, v3);
  sub_3A9A34(&xmmword_2794A90, __p);
  sub_3A9A34(&xmmword_2794A90, v9);
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
    qword_2794A68 = 0;
    qword_2794A70 = 0;
    qword_2794A60 = 0;
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

void sub_59E894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2794A78)
  {
    qword_2794A80 = qword_2794A78;
    operator delete(qword_2794A78);
  }

  _Unwind_Resume(exception_object);
}

void sub_59E9C4(void *a1, uint64_t *a2)
{
  v3 = a1[33];
  v4 = a1[34];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
LABEL_3:
    a1[33] = v6;
    return;
  }

  v7 = a1[32];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2) + 1;
  if (v8 > 0x1555555555555555)
  {
    sub_1794();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0xAAAAAAAAAAAAAAALL)
  {
    v10 = 0x1555555555555555;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 4 * ((v3 - v7) >> 2);
  *v11 = *a2;
  *(v11 + 8) = *(a2 + 2);
  v6 = v11 + 12;
  v12 = (v11 - (v3 - v7));
  memcpy(v12, v7, v3 - v7);
  a1[32] = v12;
  a1[33] = v6;
  a1[34] = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  a1[33] = v6;
}

void sub_59EC38(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  sub_5597A0((a1 + 3));
}

void sub_59F014(_Unwind_Exception *a1)
{
  sub_528AB4(v1 + 3272);
  sub_559B98(v1 + 24);
  sub_1F1A8(v2);
  _Unwind_Resume(a1);
}

void sub_59F078(_Unwind_Exception *a1)
{
  sub_559B98(v1 + 24);
  sub_1F1A8(v2);
  _Unwind_Resume(a1);
}

void sub_59F0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104((v20 - 104));
  if (a18 < 0)
  {
    operator delete(__p);
    sub_559B98(v18 + 24);
    sub_1F1A8(v19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x59F060);
}

void sub_59F0F0(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  sub_5C0A00(a3);
  if (*(a1 + 4729))
  {
    v6 = 35;
  }

  else
  {
    v6 = 36;
  }

  *a3 = v6;
  a3[189] = sub_5CC2B4(v6);
  sub_5CB20C(v42, *a3);
  v7 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v42);
  v8 = __p;
  if (__p)
  {
    v9 = v66;
    v10 = __p;
    if (v66 != __p)
    {
      do
      {
        v9 -= 2000;
        sub_5C0D2C(v9);
      }

      while (v9 != v8);
      v10 = __p;
    }

    v66 = v8;
    operator delete(v10);
  }

  v11 = v63;
  if (v63)
  {
    v12 = v64;
    v13 = v63;
    if (v64 != v63)
    {
      do
      {
        v12 -= 2000;
        sub_5C0D2C(v12);
      }

      while (v12 != v11);
      v13 = v63;
    }

    v64 = v11;
    operator delete(v13);
  }

  v14 = v61;
  if (v61)
  {
    v15 = v62;
    v16 = v61;
    if (v62 != v61)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = v61;
    }

    v62 = v14;
    operator delete(v16);
  }

  if (v60 == 1)
  {
    if (v59 < 0)
    {
      operator delete(v58);
      if (v57 != 1)
      {
        goto LABEL_37;
      }
    }

    else if (v57 != 1)
    {
LABEL_37:
      v21 = v45;
      if (v45)
      {
LABEL_38:
        v22 = v46;
        v23 = v21;
        if (v46 != v21)
        {
          do
          {
            v22 = sub_3A9518(v22 - 1120);
          }

          while (v22 != v21);
          v23 = v45;
        }

        v46 = v21;
        operator delete(v23);
      }

LABEL_42:
      sub_570440(&v44);
      if (v43[1120] == 1)
      {
        sub_3A9518(v43);
      }

      goto LABEL_44;
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    v17 = v53;
    if (v53)
    {
      v18 = v54;
      v19 = v53;
      if (v54 != v53)
      {
        do
        {
          v20 = *(v18 - 1);
          v18 -= 3;
          if (v20 < 0)
          {
            operator delete(*v18);
          }
        }

        while (v18 != v17);
        v19 = v53;
      }

      v54 = v17;
      operator delete(v19);
    }

    if (v52 < 0)
    {
      operator delete(v51);
      if ((v50 & 0x80000000) == 0)
      {
LABEL_36:
        if ((v48 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_63;
      }
    }

    else if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    operator delete(v49);
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_63:
    operator delete(v47);
    v21 = v45;
    if (v45)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_44:
  v24 = sub_68C454(a2, 0);
  v35 = sub_4D1DB8(v24);
  sub_5CBF60(a3, &v35);
  v35 = 0;
  sub_5CBF8C(a3, &v35);
  v25 = *a3;
  if (v25 > 0x29)
  {
    v26 = 156;
  }

  else
  {
    v26 = qword_229A3B8[v25];
  }

  v41 = *(v7 + v26);
  sub_5CBFB8(a3, &v41);
  v27 = *a3;
  if (v27 > 0x29)
  {
    v28 = 208;
  }

  else
  {
    v28 = qword_229A508[v27];
  }

  LODWORD(v35) = *(v7 + v28);
  sub_5CBFC4(a3, &v35);
  sub_59F958(a1, a3);
  sub_59FCE4(a1, &v35);
  sub_5A0314(a3 + 15, &v35);
  sub_53A868(&v40);
  sub_53A868(&v39);
  v29 = v37;
  if (v37)
  {
    v30 = v38;
    v31 = v37;
    if (v38 != v37)
    {
      do
      {
        v30 = sub_53A868(v30 - 160);
      }

      while (v30 != v29);
      v31 = v37;
    }

    v38 = v29;
    operator delete(v31);
  }

  v32 = v35;
  if (v35)
  {
    v33 = v36;
    v34 = v35;
    if (v36 != v35)
    {
      do
      {
        v33 = sub_53A868(v33 - 160);
      }

      while (v33 != v32);
      v34 = v35;
    }

    v36 = v32;
    operator delete(v34);
  }

  sub_5A04B4(a1, a3);
}

void sub_59F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

uint64_t sub_59F53C(unsigned int *a1, _DWORD *a2)
{
  switch(*a2)
  {
    case 1:
    case 2:
    case 3:
      result = a1[55];
      break;
    case 4:
      result = a1[64];
      break;
    case 5:
      v3 = a1;
      sub_5CB2AC(a2, v10);
      v4 = 96;
      if (v11)
      {
        v4 = 228;
      }

      v5 = *&v10[v4];
      if (v5 <= 0xF)
      {
        v6 = &unk_229A880;
        goto LABEL_24;
      }

      v8 = 272;
      goto LABEL_31;
    case 6:
      v3 = a1;
      sub_5CB2AC(a2, v10);
      v7 = 96;
      if (v11)
      {
        v7 = 228;
      }

      v5 = *&v10[v7];
      if (v5 > 0xF)
      {
        v8 = 260;
      }

      else
      {
        v6 = &unk_229A900;
LABEL_24:
        v8 = v6[v5];
      }

LABEL_31:
      v9 = *(v3 + v8);
      sub_3A9518(v10);
      result = v9;
      break;
    case 7:
      result = a1[74];
      break;
    case 8:
      result = a1[76];
      break;
    case 9:
      result = a1[75];
      break;
    case 0xA:
    case 0xB:
    case 0xC:
    case 0x15:
      result = a1[53];
      break;
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x20:
      result = a1[54];
      break;
    case 0x19:
      result = a1[58];
      break;
    case 0x1A:
      result = a1[63];
      break;
    case 0x1B:
      result = a1[56];
      break;
    case 0x1C:
      result = a1[57];
      break;
    case 0x1D:
      result = a1[59];
      break;
    case 0x1E:
      result = a1[60];
      break;
    case 0x1F:
      result = a1[61];
      break;
    case 0x21:
    case 0x22:
      result = a1[77];
      break;
    case 0x23:
    case 0x24:
      result = a1[78];
      break;
    case 0x25:
      result = a1[62];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_59F87C(uint64_t a1)
{
  sub_5C0BF4((a1 + 2016));
  if (*(a1 + 2008) != 1)
  {
    return a1;
  }

  if (*(a1 + 2007) < 0)
  {
    operator delete(*(a1 + 1984));
    if (*(a1 + 1976) != 1)
    {
LABEL_4:
      v2 = *(a1 + 1760);
      if (!v2)
      {
        goto LABEL_5;
      }

LABEL_10:
      v4 = *(a1 + 1768);
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3A9518(v4 - 1120);
        }

        while (v4 != v2);
        v5 = *(a1 + 1760);
      }

      *(a1 + 1768) = v2;
      operator delete(v5);
      sub_570440(a1 + 1144);
      if (*(a1 + 1136) == 1)
      {
        goto LABEL_6;
      }

      return a1;
    }
  }

  else if (*(a1 + 1976) != 1)
  {
    goto LABEL_4;
  }

  sub_52A624(a1 + 1808);
  v2 = *(a1 + 1760);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_570440(a1 + 1144);
  if (*(a1 + 1136) == 1)
  {
LABEL_6:
    sub_3A9518(a1 + 16);
  }

  return a1;
}

void sub_59F958(uint64_t a1, uint64_t a2)
{
  v2 = *a2 > 0x24u || ((1 << *a2) & 0x1FE0401EEELL) == 0;
  if (!v2 || *(a1 + 4240) == 11 && *(a1 + 4272) == 11)
  {
    if (*(a1 + 4799) == 1)
    {
      if ((*(a1 + 3264) & 1) == 0)
      {
        return;
      }
    }

    else if (*(a1 + 3265) != 1)
    {
      return;
    }

    if (*(a1 + 4694) == 1)
    {
      switch(*a2)
      {
        case 1:
        case 2:
        case 3:

          goto LABEL_22;
        case 5:
        case 6:
        case 7:
        case 0x20:
          if (sub_5CC010(a2) && sub_5CC024(a2))
          {
            if (sub_5CBD3C(*(a2 + 712)))
            {

              sub_5BBEAC(a1, a2);
            }

            else
            {

              sub_5BBDFC(a1, a2);
            }
          }

          return;
        case 9:

          goto LABEL_22;
        case 0xA:
        case 0xB:
        case 0xC:
        case 0x25:

          goto LABEL_22;
        case 0x16:

LABEL_22:
          sub_5CDB34();
        case 0x1D:
          v8 = *(a1 + 3056);
          v6 = a2;
          v7 = v8;

          goto LABEL_28;
        case 0x1E:
          v10 = *(a1 + 3052);
          v6 = a2;
          v7 = v10;

          goto LABEL_28;
        case 0x1F:
          v11 = *(a1 + 3068);
          v6 = a2;
          v7 = v11;

          goto LABEL_28;
        case 0x21:
          v13 = *(a1 + 3060);
          v6 = a2;
          v7 = v13;

          goto LABEL_28;
        case 0x22:
          v12 = *(a1 + 3064);
          v6 = a2;
          v7 = v12;

          goto LABEL_28;
        case 0x23:
          v5 = *(a1 + 3044);
          v6 = a2;
          v7 = v5;

          goto LABEL_28;
        case 0x24:
          v9 = *(a1 + 3048);
          v6 = a2;
          v7 = v9;

LABEL_28:
          sub_5CDD0C(v6, v7);
          break;
        default:
          return;
      }
    }
  }
}

void sub_59FCE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v4 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v4 = "_Old";
LABEL_6:
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v42 = v5;
  if (v5)
  {
    memcpy(__dst, v4, v5);
  }

  *(__dst + v6) = 0;
  *v37 = 0u;
  v38 = 0u;
  *v36 = 0u;
  sub_64B998(v39);
  sub_64B998(v40);
  v7 = v42;
  if ((v42 & 0x80u) == 0)
  {
    v8 = v42;
  }

  else
  {
    v8 = __dst[1];
  }

  if (v8 + 40 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = *(a1 + 8);
  if (v8 + 40 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "BannerHead_E_Bike_Offline_SAR_or_Reroute", sizeof(__p));
  if ((v42 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  memmove(v28, v10, v8);
  *(v28 + v8) = 0;
  v11 = sub_9274F4(v9, __p);
  if (*(v11 + 23) < 0)
  {
    sub_325C(v34, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v35 = v11[2];
    *v34 = v12;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *(a1 + 8);
  memset(__p, 0, 24);
  HIBYTE(__p[2]) = v8 + 40;
  qmemcpy(__p, "BannerBody_E_Bike_Offline_SAR_or_Reroute", sizeof(__p));
  if (v7 >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  memmove(v28, v14, v8);
  *(v28 + v8) = 0;
  v15 = sub_9274F4(v13, __p);
  if (*(v15 + 23) < 0)
  {
    sub_325C(v32, *v15, v15[1]);
  }

  else
  {
    v16 = *v15;
    v33 = v15[2];
    *v32 = v16;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(v28, 0, 24);
  HIBYTE(v28[2]) = v8 + 40;
  qmemcpy(v28, "VoiceAlert_E_Bike_Offline_SAR_or_Reroute", sizeof(v28));
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  memmove(v29, v17, v8);
  *(v29 + v8) = 0;
  memset(__p, 0, 32);
  LODWORD(__p[4]) = 1065353216;
  sub_65F810(a1 + 24, v28, __p, *(a1 + 3261), &v28[3]);
  *v30 = *&v28[3];
  v31 = v29[0];
  v29[0] = 0;
  *&v28[3] = 0uLL;
  v18 = __p[2];
  if (__p[2])
  {
    do
    {
      v19 = *v18;
      sub_55F7FC((v18 + 2));
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = __p[0];
  __p[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v28[2]) < 0)
  {
    operator delete(v28[0]);
  }

  sub_5CB7CC(a2, v34, v32, v30);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_55;
    }
  }

  else if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v32[0]);
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
LABEL_46:
    sub_53A868(v40);
    sub_53A868(v39);
    v21 = v37[1];
    if (v37[1])
    {
      goto LABEL_47;
    }

LABEL_56:
    v24 = v36[0];
    if (!v36[0])
    {
      goto LABEL_51;
    }

    goto LABEL_57;
  }

LABEL_55:
  operator delete(v34[0]);
  sub_53A868(v40);
  sub_53A868(v39);
  v21 = v37[1];
  if (!v37[1])
  {
    goto LABEL_56;
  }

LABEL_47:
  v22 = v38;
  v23 = v21;
  if (v38 != v21)
  {
    do
    {
      v22 = sub_53A868(v22 - 160);
    }

    while (v22 != v21);
    v23 = v37[1];
  }

  *&v38 = v21;
  operator delete(v23);
  v24 = v36[0];
  if (!v36[0])
  {
LABEL_51:
    if ((v42 & 0x80000000) == 0)
    {
      return;
    }

LABEL_61:
    operator delete(__dst[0]);
    return;
  }

LABEL_57:
  v25 = v36[1];
  v26 = v24;
  if (v36[1] != v24)
  {
    do
    {
      v25 = sub_53A868(v25 - 160);
    }

    while (v25 != v24);
    v26 = v36[0];
  }

  v36[1] = v24;
  operator delete(v26);
  if (v42 < 0)
  {
    goto LABEL_61;
  }
}

void sub_5A0238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  sub_5A0410(&a48);
  if (*(v48 - 81) < 0)
  {
    operator delete(*(v48 - 104));
  }

  _Unwind_Resume(a1);
}

void **sub_5A0314(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = a1 + 3;
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    a1[4] = v8;
    operator delete(v10);
    *v7 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_53D784((a1 + 6), a2 + 48);
  sub_53D784((a1 + 26), a2 + 208);
  return a1;
}

void **sub_5A0410(void **a1)
{
  sub_53A868((a1 + 26));
  sub_53A868((a1 + 6));
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_53A868(v6 - 160);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_5A04B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B6890(*a1);
  std::to_string(&__dst, *(v4 + 4));
  sub_5CD53C(a2, &__dst, *(a1 + 4796));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a2 + 31) & 0x80000000) == 0)
  {
LABEL_3:
    *__p = *(a2 + 8);
    v6 = *(a2 + 24);
    goto LABEL_6;
  }

  sub_325C(__p, *(a2 + 8), *(a2 + 16));
LABEL_6:
  sub_5CBDB4(&__dst, __p);
  sub_573F8(a2, &__dst);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(__p[0]);
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6) < 0)
  {
    goto LABEL_10;
  }
}

void sub_5A0598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_5A05E0()
{
  v0 = __chkstk_darwin();
  v20 = v1;
  v21 = v2;
  v4 = v3;
  v22 = v5;
  v23 = v6;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v12 = sub_68C454(v7, 0);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v13 = v12[927];
  v14 = v12[928];
  v24 = &v26;
  v25 = 0;
  if (v14 != v13)
  {
    if (0xAF8AF8AF8AF8AF8BLL * ((v14 - v13) >> 5) < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }

  LODWORD(v24) = sub_68C850(v8);
  v15 = sub_6A02E8(&v24, v4, *(v11 + 7160));
  switch(*v10)
  {
    case 1:
    case 2:
    case 3:
      sub_5A0D00(v11, v12, v10, v23);
      break;
    case 4:
      sub_5A1854(v11, v8, v23);
    case 5:
      sub_5A71AC(v11, v12, v10, v15, v21, v23);
      break;
    case 6:
      sub_5A7938(v11, v12, v10, v15, v21, v23);
      break;
    case 7:
      sub_5A80E0(v11, v12, v10, v23);
    case 8:
      sub_5A86DC();
    case 9:
      sub_570E00((v10 + 2), &v24);
      sub_5A8DF0(v11, v12, &v24, v23);
    case 10:
    case 11:
    case 12:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A12B0(v11, v8, *v22, v10, v23);
      break;
    case 13:
    case 14:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A52E0(v11, v8, *v22, v10, v23);
      break;
    case 15:
    case 16:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A59D8(v11, v8, *v22, v10, v23);
      break;
    case 17:
    case 20:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A685C(v11, v8, *v22, v10, 0, v23);
      break;
    case 18:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A5F48(v11, v8, *v22, v10, v23);
      break;
    case 19:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A63D4(v11, v8, *v22, v10, v23);
      break;
    case 21:
      if (v22[1])
      {
        sub_5A6D24(v11, v8, *v22, v23);
      }

      sub_4F0F0C();
    case 22:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A93B4(v11, v8, *v22, &v26, v23);
      break;
    case 23:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A4C1C(v11, v8, *v22, v23);
      break;
    case 24:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      sub_5A4558(v11, v8, *v22, v23);
      break;
    case 25:
      sub_5A1D6C(v11, v23);
    case 26:
      sub_5A2260(v11, v8, v23);
      break;
    case 27:
      sub_5A276C(v11, v8, v23);
    case 28:
      sub_5A2C78(v11, v8, v23);
      break;
    case 29:
      sub_5A3184(v11, v8, v23);
      break;
    case 30:
      sub_5A369C(v11, v8, v23);
    case 31:
      sub_5A3BB4(v11, v8, v23);
      break;
    case 32:
      if ((v22[1] & 1) == 0)
      {
        sub_4F0F0C();
      }

      v16 = *v22;
      sub_5CB2AC(v10, &v24);
      sub_5A98DC(v11, v8, v16, &v24, v23);
      sub_3A9518(&v24);
      break;
    case 33:
    case 34:
      sub_5A9F5C(v11, v8, v23);
      break;
    case 37:
      sub_68BC60(&v24, v20);
      sub_5A40CC(v11, v8, &v24, v23);
      sub_5C1158(&v24);
      break;
    default:
      bzero(v23, 0x330uLL);
      sub_5C0A00(v23);
      break;
  }

  v17 = v26;
  if (v26)
  {
    v18 = v27;
    v19 = v26;
    if (v27 != v26)
    {
      do
      {
        v18 = sub_3A9518(v18 - 1120);
      }

      while (v18 != v17);
      v19 = v26;
    }

    v27 = v17;
    operator delete(v19);
  }
}

void sub_5A0B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3A9518(va);
  sub_5706DC((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_5A0B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C1158(va);
  sub_5706DC((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_5A0BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a34 == 1)
  {
    sub_52A624(&a13);
    sub_5706DC((v34 - 112));
    _Unwind_Resume(a1);
  }

  sub_5706DC((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_5A0C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    v10 = v6 - 1120;
    v11 = -v5;
    do
    {
      v10 = sub_3A9518(v10) - 1120;
      v11 += 1120;
    }

    while (v11);
  }

  *(v8 - 104) = v7;
  sub_571510(va);
  _Unwind_Resume(a1);
}

void sub_5A0D00(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int *a4@<X8>)
{
  sub_5C0A00(a4);
  v8 = *a3;
  *a4 = *a3;
  a4[189] = sub_5CC2B4(v8);
  sub_5AA47C(v51, a3);
  v9 = a1 + 2728;
  a4[144] = sub_59F53C((a1 + 2728), v51);
  v10 = __p;
  if (__p)
  {
    v11 = v75;
    v12 = __p;
    if (v75 != __p)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v75 = v10;
    operator delete(v12);
  }

  v13 = v72;
  if (v72)
  {
    v14 = v73;
    v15 = v72;
    if (v73 != v72)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v72;
    }

    v73 = v13;
    operator delete(v15);
  }

  v16 = v70;
  if (v70)
  {
    v17 = v71;
    v18 = v70;
    if (v71 != v70)
    {
      do
      {
        v17 -= 2000;
        sub_5C0D2C(v17);
      }

      while (v17 != v16);
      v18 = v70;
    }

    v71 = v16;
    operator delete(v18);
  }

  if (v69 == 1)
  {
    if (v68 < 0)
    {
      operator delete(v67);
      if (v66 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v66 != 1)
    {
LABEL_34:
      v23 = v54;
      if (v54)
      {
LABEL_35:
        v24 = v55;
        v25 = v23;
        if (v55 != v23)
        {
          do
          {
            v24 = sub_3A9518(v24 - 1120);
          }

          while (v24 != v23);
          v25 = v54;
        }

        v55 = v23;
        operator delete(v25);
      }

LABEL_39:
      sub_570440(&v53);
      if (v52[1120] == 1)
      {
        sub_3A9518(v52);
      }

      goto LABEL_41;
    }

    if (v65 < 0)
    {
      operator delete(v64);
    }

    v19 = v62;
    if (v62)
    {
      v20 = v63;
      v21 = v62;
      if (v63 != v62)
      {
        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
        v21 = v62;
      }

      v63 = v19;
      operator delete(v21);
    }

    if (v61 < 0)
    {
      operator delete(v60);
      if ((v59 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_83;
      }
    }

    else if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v58);
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_83:
    operator delete(v56);
    v23 = v54;
    if (v54)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v26 = sub_5CB28C(a3);
  if (sub_570C4C(v26))
  {
    sub_5B81AC(a1, "_NoReroute", &v45);
  }

  else
  {
    sub_5B8A98(a1, "_NoReroute", v26, &v45);
  }

  sub_5A0314(a4 + 15, &v45);
  sub_53A868(&v50);
  sub_53A868(&v49);
  v27 = v47;
  if (v47)
  {
    v28 = v48;
    v29 = v47;
    if (v48 != v47)
    {
      do
      {
        v28 = sub_53A868(v28 - 160);
      }

      while (v28 != v27);
      v29 = v47;
    }

    v48 = v27;
    operator delete(v29);
  }

  v30 = v45;
  if (v45)
  {
    v31 = v46;
    v32 = v45;
    if (v46 != v45)
    {
      do
      {
        v31 = sub_53A868(v31 - 160);
      }

      while (v31 != v30);
      v32 = v45;
    }

    v46 = v30;
    operator delete(v32);
  }

  v45 = sub_69B32C(a2);
  sub_5CBF60(a4, &v45);
  v33 = *a4;
  if (v33 > 0x29)
  {
    v34 = 156;
  }

  else
  {
    v34 = qword_229A3B8[v33];
  }

  LODWORD(v45) = *(v9 + v34);
  sub_5CBFB8(a4, &v45);
  v35 = *a4;
  if (v35 > 0x29)
  {
    v36 = 208;
  }

  else
  {
    v36 = qword_229A508[v35];
  }

  LODWORD(v45) = *(v9 + v36);
  sub_5CBFC4(a4, &v45);
  if (sub_5CB31C(a3))
  {
    v37 = sub_5CB28C(a3);
    v38 = sub_570DF0(v37);
    if ((v39 & 0x100000000) == 0)
    {
      sub_4F0F0C();
    }

    v40 = *(a4 + 748);
    *(a4 + 92) = v38;
    a4[186] = v39;
    if ((v40 & 1) == 0)
    {
      *(a4 + 748) = 1;
    }
  }

  if (sub_5CB300(a3))
  {
    v41 = sub_5CB2AC(a3, &v45);
    sub_5AA5DC(v41, &v45, a2, a4);
    sub_3A9518(&v45);
  }

  if (sub_5CC2D8(a4))
  {
    v42 = *(a1 + 3263);
  }

  else
  {
    v42 = 0;
  }

  *(a4 + 788) = v42 & 1;
  sub_5BBBF8(a1, a4);
  v43 = *(a4 + 89);
  v44 = *(a4 + 90);
  while (v43 != v44)
  {
    if (sub_5CBD4C(v43))
    {
      if ((*(v43 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v43 + 24) != 13)
      {
        sub_5CDAC8(a4, (v43 + 48));
      }
    }

    v43 += 64;
  }

  if (*(a4 + 748) == 1 && (a4[184] != -1 || a4[185] != -1))
  {
    sub_5CDAC8(a4, a4 + 184);
  }

  sub_5A04B4(a1, a4);
}

void sub_5A11D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3A9518(&a9);
  sub_5C0F34(v9);
  _Unwind_Resume(a1);
}

void sub_5A1230(_Unwind_Exception *a1)
{
  sub_59F87C(&STACK[0x460]);
  sub_5C0F34(v1);
  _Unwind_Resume(a1);
}

void sub_5A12B0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X3>, int *a5@<X8>)
{
  sub_5C0A00(a5);
  v10 = sub_68C454(a2, 0);
  v11 = sub_68C454(a3, 0);
  v12 = *a4;
  *a5 = *a4;
  a5[189] = sub_5CC2B4(v12);
  sub_5AA47C(v53, a4);
  v13 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v53);
  v14 = __p;
  if (__p)
  {
    v15 = v77;
    v16 = __p;
    if (v77 != __p)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v77 = v14;
    operator delete(v16);
  }

  v17 = v74;
  if (v74)
  {
    v18 = v75;
    v19 = v74;
    if (v75 != v74)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = v74;
    }

    v75 = v17;
    operator delete(v19);
  }

  v20 = v72;
  if (v72)
  {
    v21 = v73;
    v22 = v72;
    if (v73 != v72)
    {
      do
      {
        v21 -= 2000;
        sub_5C0D2C(v21);
      }

      while (v21 != v20);
      v22 = v72;
    }

    v73 = v20;
    operator delete(v22);
  }

  if (v71 == 1)
  {
    if (v70 < 0)
    {
      operator delete(v69);
      if (v68 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v68 != 1)
    {
LABEL_34:
      v27 = v56;
      if (v56)
      {
LABEL_35:
        v28 = v57;
        v29 = v27;
        if (v57 != v27)
        {
          do
          {
            v28 = sub_3A9518(v28 - 1120);
          }

          while (v28 != v27);
          v29 = v56;
        }

        v57 = v27;
        operator delete(v29);
      }

LABEL_39:
      sub_570440(&v55);
      if (v54[1120] == 1)
      {
        sub_3A9518(v54);
      }

      goto LABEL_41;
    }

    if (v67 < 0)
    {
      operator delete(v66);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v26 = *(v24 - 1);
          v24 -= 3;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v23);
        v25 = v64;
      }

      v65 = v23;
      operator delete(v25);
    }

    if (v63 < 0)
    {
      operator delete(v62);
      if ((v61 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v59 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_72;
      }
    }

    else if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v60);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_72:
    operator delete(v58);
    v27 = v56;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v30 = sub_5CB28C(a4);
  if (sub_570C4C(v30))
  {
    sub_5B81AC(a1, "_Closure", &v47);
  }

  else
  {
    sub_5B8A98(a1, "_Closure", v30, &v47);
  }

  sub_5B90E4(a1, v10, v11, &v47, 1);
  sub_5A0314(a5 + 15, &v47);
  sub_53A868(&v52);
  sub_53A868(&v51);
  v31 = v49;
  if (v49)
  {
    v32 = v50;
    v33 = v49;
    if (v50 != v49)
    {
      do
      {
        v32 = sub_53A868(v32 - 160);
      }

      while (v32 != v31);
      v33 = v49;
    }

    v50 = v31;
    operator delete(v33);
  }

  v34 = v47;
  if (v47)
  {
    v35 = v48;
    v36 = v47;
    if (v48 != v47)
    {
      do
      {
        v35 = sub_53A868(v35 - 160);
      }

      while (v35 != v34);
      v36 = v47;
    }

    v48 = v34;
    operator delete(v36);
  }

  v47 = sub_69B32C(v10);
  sub_5CBF60(a5, &v47);
  v37 = *a5;
  if (v37 > 0x29)
  {
    v38 = 156;
  }

  else
  {
    v38 = qword_229A3B8[v37];
  }

  LODWORD(v47) = *(v13 + v38);
  sub_5CBFB8(a5, &v47);
  v39 = *a5;
  if (v39 > 0x29)
  {
    v40 = 208;
  }

  else
  {
    v40 = qword_229A508[v39];
  }

  LODWORD(v47) = *(v13 + v40);
  sub_5CBFC4(a5, &v47);
  if (sub_5CB300(a4))
  {
    v41 = sub_5CB2AC(a4, &v47);
    sub_5AA5DC(v41, &v47, v10, a5);
    sub_3A9518(&v47);
  }

  if (sub_5CB31C(a4))
  {
    v42 = sub_5CB28C(a4);
    v43 = sub_570DF0(v42);
    if ((v44 & 0x100000000) == 0)
    {
      sub_4F0F0C();
    }

    v45 = *(a5 + 748);
    *(a5 + 92) = v43;
    a5[186] = v44;
    if ((v45 & 1) == 0)
    {
      *(a5 + 748) = 1;
    }
  }

  if (sub_5CC2D8(a5))
  {
    v46 = *(a1 + 3263);
  }

  else
  {
    v46 = 0;
  }

  *(a5 + 788) = v46 & 1;
  sub_5AA77C(a1, a2, a3, a5);
  sub_59F958(a1, a5);
  sub_5A04B4(a1, a5);
}

void sub_5A1760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3A9518(va);
  sub_5C0F34(v2);
  _Unwind_Resume(a1);
}

void sub_5A17B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5A0410(va);
  sub_5C0F34(v2);
  _Unwind_Resume(a1);
}

void sub_5A17D4(_Unwind_Exception *a1)
{
  sub_59F87C(&STACK[0x468]);
  sub_5C0F34(v1);
  _Unwind_Resume(a1);
}

void sub_5A1854(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 4;
  a3[189] = sub_5CC2B4(4);
  sub_5CB20C(v22, *a3);
  a3[144] = sub_59F53C((a1 + 2728), v22);
  v6 = __p;
  if (__p)
  {
    v7 = v46;
    v8 = __p;
    if (v46 != __p)
    {
      do
      {
        v7 -= 2000;
        sub_5C0D2C(v7);
      }

      while (v7 != v6);
      v8 = __p;
    }

    v46 = v6;
    operator delete(v8);
  }

  v9 = v43;
  if (v43)
  {
    v10 = v44;
    v11 = v43;
    if (v44 != v43)
    {
      do
      {
        v10 -= 2000;
        sub_5C0D2C(v10);
      }

      while (v10 != v9);
      v11 = v43;
    }

    v44 = v9;
    operator delete(v11);
  }

  v12 = v41;
  if (v41)
  {
    v13 = v42;
    v14 = v41;
    if (v42 != v41)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = v41;
    }

    v42 = v12;
    operator delete(v14);
  }

  if (v40 != 1)
  {
LABEL_41:
    sub_68C5B4(a2);
    sub_5B02F4();
  }

  if (v39 < 0)
  {
    operator delete(v38);
    if (v37 != 1)
    {
      goto LABEL_34;
    }
  }

  else if (v37 != 1)
  {
LABEL_34:
    v19 = v25;
    if (v25)
    {
LABEL_35:
      v20 = v26;
      v21 = v19;
      if (v26 != v19)
      {
        do
        {
          v20 = sub_3A9518(v20 - 1120);
        }

        while (v20 != v19);
        v21 = v25;
      }

      v26 = v19;
      operator delete(v21);
    }

LABEL_39:
    sub_570440(&v24);
    if (v23[1120] == 1)
    {
      sub_3A9518(v23);
    }

    goto LABEL_41;
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  v15 = v33;
  if (v33)
  {
    v16 = v34;
    v17 = v33;
    if (v34 != v33)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v33;
    }

    v34 = v15;
    operator delete(v17);
  }

  if (v32 < 0)
  {
    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v29);
  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_44:
  operator delete(v27);
  v19 = v25;
  if (v25)
  {
    goto LABEL_35;
  }

  goto LABEL_39;
}

void sub_5A1D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

void sub_5A1D6C(uint64_t a1@<X0>, int *a2@<X8>)
{
  sub_5C0A00(a2);
  *a2 = 25;
  a2[189] = sub_5CC2B4(25);
  sub_5CB20C(v20, *a2);
  a2[144] = sub_59F53C((a1 + 2728), v20);
  v4 = __p;
  if (__p)
  {
    v5 = v44;
    v6 = __p;
    if (v44 != __p)
    {
      do
      {
        v5 -= 2000;
        sub_5C0D2C(v5);
      }

      while (v5 != v4);
      v6 = __p;
    }

    v44 = v4;
    operator delete(v6);
  }

  v7 = v41;
  if (v41)
  {
    v8 = v42;
    v9 = v41;
    if (v42 != v41)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = v41;
    }

    v42 = v7;
    operator delete(v9);
  }

  v10 = v39;
  if (v39)
  {
    v11 = v40;
    v12 = v39;
    if (v40 != v39)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v39;
    }

    v40 = v10;
    operator delete(v12);
  }

  if (v38 != 1)
  {
LABEL_41:
    sub_5AFFB8();
  }

  if (v37 < 0)
  {
    operator delete(v36);
    if (v35 != 1)
    {
      goto LABEL_34;
    }
  }

  else if (v35 != 1)
  {
LABEL_34:
    v17 = v23;
    if (v23)
    {
LABEL_35:
      v18 = v24;
      v19 = v17;
      if (v24 != v17)
      {
        do
        {
          v18 = sub_3A9518(v18 - 1120);
        }

        while (v18 != v17);
        v19 = v23;
      }

      v24 = v17;
      operator delete(v19);
    }

LABEL_39:
    sub_570440(&v22);
    if (v21[1120] == 1)
    {
      sub_3A9518(v21);
    }

    goto LABEL_41;
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  v13 = v31;
  if (v31)
  {
    v14 = v32;
    v15 = v31;
    if (v32 != v31)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v31;
    }

    v32 = v13;
    operator delete(v15);
  }

  if (v30 < 0)
  {
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v27);
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_44:
  operator delete(v25);
  v17 = v23;
  if (v23)
  {
    goto LABEL_35;
  }

  goto LABEL_39;
}

void sub_5A2208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

void sub_5A2260(uint64_t a1@<X0>, void *a2@<X1>, unsigned int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 26;
  a3[189] = sub_5CC2B4(26);
  sub_5CB20C(v45, *a3);
  v6 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v45);
  v7 = __p;
  if (__p)
  {
    v8 = v69;
    v9 = __p;
    if (v69 != __p)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = __p;
    }

    v69 = v7;
    operator delete(v9);
  }

  v10 = v66;
  if (v66)
  {
    v11 = v67;
    v12 = v66;
    if (v67 != v66)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v66;
    }

    v67 = v10;
    operator delete(v12);
  }

  v13 = v64;
  if (v64)
  {
    v14 = v65;
    v15 = v64;
    if (v65 != v64)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v64;
    }

    v65 = v13;
    operator delete(v15);
  }

  if (v63 == 1)
  {
    if (v62 < 0)
    {
      operator delete(v61);
      if (v60 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v60 != 1)
    {
LABEL_34:
      v20 = v48;
      if (v48)
      {
LABEL_35:
        v21 = v49;
        v22 = v20;
        if (v49 != v20)
        {
          do
          {
            v21 = sub_3A9518(v21 - 1120);
          }

          while (v21 != v20);
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

LABEL_39:
      sub_570440(&v47);
      if (v46[1120] == 1)
      {
        sub_3A9518(v46);
      }

      goto LABEL_41;
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    v16 = v56;
    if (v56)
    {
      v17 = v57;
      v18 = v56;
      if (v57 != v56)
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = v56;
      }

      v57 = v16;
      operator delete(v18);
    }

    if (v55 < 0)
    {
      operator delete(v54);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_77;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v52);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_77:
    operator delete(v50);
    v20 = v48;
    if (v48)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v23 = sub_68C454(a2, 0);
  v38 = sub_4D1DB8(v23);
  sub_5CBF60(a3, &v38);
  v38 = 0;
  sub_5CBF8C(a3, &v38);
  if (*(a1 + 4796) == 1)
  {
    v24 = *a3;
    if (v24 > 0x29)
    {
      v25 = 156;
    }

    else
    {
      v25 = qword_229A3B8[v24];
    }

    v26 = *(v6 + v25);
  }

  else
  {
    v26 = 2147483646;
  }

  v44 = v26;
  sub_5CBFB8(a3, &v44);
  v27 = *a3;
  if (v27 > 0x29)
  {
    v28 = 208;
  }

  else
  {
    v28 = qword_229A508[v27];
  }

  LODWORD(v38) = *(v6 + v28);
  sub_5CBFC4(a3, &v38);
  sub_5B09A4(a1, &v38);
  sub_5A0314(a3 + 15, &v38);
  sub_53A868(&v43);
  sub_53A868(&v42);
  v29 = v40;
  if (v40)
  {
    v30 = v41;
    v31 = v40;
    if (v41 != v40)
    {
      do
      {
        v30 = sub_53A868(v30 - 160);
      }

      while (v30 != v29);
      v31 = v40;
    }

    v41 = v29;
    operator delete(v31);
  }

  v32 = v38;
  if (v38)
  {
    v33 = v39;
    v34 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = sub_53A868(v33 - 160);
      }

      while (v33 != v32);
      v34 = v38;
    }

    v39 = v32;
    operator delete(v34);
  }

  if (sub_5CC2D8(a3))
  {
    v35 = *(a1 + 3263);
  }

  else
  {
    v35 = 0;
  }

  *(a3 + 788) = v35 & 1;
  sub_5BBBF8(a1, a3);
  v36 = *(a3 + 89);
  v37 = *(a3 + 90);
  while (v36 != v37)
  {
    if (sub_5CBD4C(v36))
    {
      if ((*(v36 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v36 + 24) != 13)
      {
        sub_5CDAC8(a3, (v36 + 48));
      }
    }

    v36 += 64;
  }

  if (*(a3 + 748) == 1 && (a3[184] != -1 || a3[185] != -1))
  {
    sub_5CDAC8(a3, a3 + 184);
  }

  sub_5A04B4(a1, a3);
}

void sub_5A2700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A276C(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 27;
  a3[189] = sub_5CC2B4(27);
  sub_5CB20C(v31, *a3);
  v6 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v31);
  v7 = __p;
  if (__p)
  {
    v8 = v55;
    v9 = __p;
    if (v55 != __p)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = __p;
    }

    v55 = v7;
    operator delete(v9);
  }

  v10 = v52;
  if (v52)
  {
    v11 = v53;
    v12 = v52;
    if (v53 != v52)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v52;
    }

    v53 = v10;
    operator delete(v12);
  }

  v13 = v50;
  if (v50)
  {
    v14 = v51;
    v15 = v50;
    if (v51 != v50)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v50;
    }

    v51 = v13;
    operator delete(v15);
  }

  if (v49 != 1)
  {
LABEL_41:
    v23 = sub_68C454(a2, 0);
    v29 = sub_4D1DB8(v23);
    sub_5CBF60(a3, &v29);
    v29 = 0;
    sub_5CBF8C(a3, &v29);
    if (*(a1 + 4796) == 1)
    {
      v24 = *a3;
      if (v24 > 0x29)
      {
        v25 = 156;
      }

      else
      {
        v25 = qword_229A3B8[v24];
      }

      v26 = *(v6 + v25);
    }

    else
    {
      v26 = 2147483646;
    }

    v30 = v26;
    sub_5CBFB8(a3, &v30);
    v27 = *a3;
    if (v27 > 0x29)
    {
      v28 = 208;
    }

    else
    {
      v28 = qword_229A508[v27];
    }

    LODWORD(v29) = *(v6 + v28);
    sub_5CBFC4(a3, &v29);
    sub_5B0E78();
  }

  if (v48 < 0)
  {
    operator delete(v47);
    if (v46 != 1)
    {
      goto LABEL_34;
    }
  }

  else if (v46 != 1)
  {
LABEL_34:
    v20 = v34;
    if (v34)
    {
LABEL_35:
      v21 = v35;
      v22 = v20;
      if (v35 != v20)
      {
        do
        {
          v21 = sub_3A9518(v21 - 1120);
        }

        while (v21 != v20);
        v22 = v34;
      }

      v35 = v20;
      operator delete(v22);
    }

LABEL_39:
    sub_570440(&v33);
    if (v32[1120] == 1)
    {
      sub_3A9518(v32);
    }

    goto LABEL_41;
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  v16 = v42;
  if (v42)
  {
    v17 = v43;
    v18 = v42;
    if (v43 != v42)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v42;
    }

    v43 = v16;
    operator delete(v18);
  }

  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_53;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_53:
  operator delete(v36);
  v20 = v34;
  if (v34)
  {
    goto LABEL_35;
  }

  goto LABEL_39;
}

void sub_5A2C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A2C78(uint64_t a1@<X0>, void *a2@<X1>, unsigned int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 28;
  a3[189] = sub_5CC2B4(28);
  sub_5CB20C(v45, *a3);
  v6 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v45);
  v7 = __p;
  if (__p)
  {
    v8 = v69;
    v9 = __p;
    if (v69 != __p)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = __p;
    }

    v69 = v7;
    operator delete(v9);
  }

  v10 = v66;
  if (v66)
  {
    v11 = v67;
    v12 = v66;
    if (v67 != v66)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v66;
    }

    v67 = v10;
    operator delete(v12);
  }

  v13 = v64;
  if (v64)
  {
    v14 = v65;
    v15 = v64;
    if (v65 != v64)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v64;
    }

    v65 = v13;
    operator delete(v15);
  }

  if (v63 == 1)
  {
    if (v62 < 0)
    {
      operator delete(v61);
      if (v60 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v60 != 1)
    {
LABEL_34:
      v20 = v48;
      if (v48)
      {
LABEL_35:
        v21 = v49;
        v22 = v20;
        if (v49 != v20)
        {
          do
          {
            v21 = sub_3A9518(v21 - 1120);
          }

          while (v21 != v20);
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

LABEL_39:
      sub_570440(&v47);
      if (v46[1120] == 1)
      {
        sub_3A9518(v46);
      }

      goto LABEL_41;
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    v16 = v56;
    if (v56)
    {
      v17 = v57;
      v18 = v56;
      if (v57 != v56)
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = v56;
      }

      v57 = v16;
      operator delete(v18);
    }

    if (v55 < 0)
    {
      operator delete(v54);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_77;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v52);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_77:
    operator delete(v50);
    v20 = v48;
    if (v48)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v23 = sub_68C454(a2, 0);
  v38 = sub_4D1DB8(v23);
  sub_5CBF60(a3, &v38);
  v38 = 0;
  sub_5CBF8C(a3, &v38);
  if (*(a1 + 4796) == 1)
  {
    v24 = *a3;
    if (v24 > 0x29)
    {
      v25 = 156;
    }

    else
    {
      v25 = qword_229A3B8[v24];
    }

    v26 = *(v6 + v25);
  }

  else
  {
    v26 = 2147483646;
  }

  v44 = v26;
  sub_5CBFB8(a3, &v44);
  v27 = *a3;
  if (v27 > 0x29)
  {
    v28 = 208;
  }

  else
  {
    v28 = qword_229A508[v27];
  }

  LODWORD(v38) = *(v6 + v28);
  sub_5CBFC4(a3, &v38);
  sub_5B1A10(a1, &v38);
  sub_5A0314(a3 + 15, &v38);
  sub_53A868(&v43);
  sub_53A868(&v42);
  v29 = v40;
  if (v40)
  {
    v30 = v41;
    v31 = v40;
    if (v41 != v40)
    {
      do
      {
        v30 = sub_53A868(v30 - 160);
      }

      while (v30 != v29);
      v31 = v40;
    }

    v41 = v29;
    operator delete(v31);
  }

  v32 = v38;
  if (v38)
  {
    v33 = v39;
    v34 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = sub_53A868(v33 - 160);
      }

      while (v33 != v32);
      v34 = v38;
    }

    v39 = v32;
    operator delete(v34);
  }

  if (sub_5CC2D8(a3))
  {
    v35 = *(a1 + 3263);
  }

  else
  {
    v35 = 0;
  }

  *(a3 + 788) = v35 & 1;
  sub_5BBBF8(a1, a3);
  v36 = *(a3 + 89);
  v37 = *(a3 + 90);
  while (v36 != v37)
  {
    if (sub_5CBD4C(v36))
    {
      if ((*(v36 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v36 + 24) != 13)
      {
        sub_5CDAC8(a3, (v36 + 48));
      }
    }

    v36 += 64;
  }

  if (*(a3 + 748) == 1 && (a3[184] != -1 || a3[185] != -1))
  {
    sub_5CDAC8(a3, a3 + 184);
  }

  sub_5A04B4(a1, a3);
}

void sub_5A3118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A3184(uint64_t a1@<X0>, void *a2@<X1>, unsigned int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 29;
  a3[189] = sub_5CC2B4(29);
  sub_5CB20C(v45, *a3);
  v6 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v45);
  v7 = __p;
  if (__p)
  {
    v8 = v69;
    v9 = __p;
    if (v69 != __p)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = __p;
    }

    v69 = v7;
    operator delete(v9);
  }

  v10 = v66;
  if (v66)
  {
    v11 = v67;
    v12 = v66;
    if (v67 != v66)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v66;
    }

    v67 = v10;
    operator delete(v12);
  }

  v13 = v64;
  if (v64)
  {
    v14 = v65;
    v15 = v64;
    if (v65 != v64)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v64;
    }

    v65 = v13;
    operator delete(v15);
  }

  if (v63 == 1)
  {
    if (v62 < 0)
    {
      operator delete(v61);
      if (v60 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v60 != 1)
    {
LABEL_34:
      v20 = v48;
      if (v48)
      {
LABEL_35:
        v21 = v49;
        v22 = v20;
        if (v49 != v20)
        {
          do
          {
            v21 = sub_3A9518(v21 - 1120);
          }

          while (v21 != v20);
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

LABEL_39:
      sub_570440(&v47);
      if (v46[1120] == 1)
      {
        sub_3A9518(v46);
      }

      goto LABEL_41;
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    v16 = v56;
    if (v56)
    {
      v17 = v57;
      v18 = v56;
      if (v57 != v56)
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = v56;
      }

      v57 = v16;
      operator delete(v18);
    }

    if (v55 < 0)
    {
      operator delete(v54);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_77;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v52);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_77:
    operator delete(v50);
    v20 = v48;
    if (v48)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v23 = sub_68C454(a2, 0);
  v38 = sub_4D1DB8(v23);
  sub_5CBF60(a3, &v38);
  v38 = 0;
  sub_5CBF8C(a3, &v38);
  if (*(a1 + 4796) == 1)
  {
    v24 = *a3;
    if (v24 > 0x29)
    {
      v25 = 156;
    }

    else
    {
      v25 = qword_229A3B8[v24];
    }

    v26 = *(v6 + v25);
  }

  else
  {
    v26 = 2147483646;
  }

  v44 = v26;
  sub_5CBFB8(a3, &v44);
  v27 = *a3;
  if (v27 > 0x29)
  {
    v28 = 208;
  }

  else
  {
    v28 = qword_229A508[v27];
  }

  LODWORD(v38) = *(v6 + v28);
  sub_5CBFC4(a3, &v38);
  sub_59F958(a1, a3);
  sub_5B2058(a1, &v38);
  sub_5A0314(a3 + 15, &v38);
  sub_53A868(&v43);
  sub_53A868(&v42);
  v29 = v40;
  if (v40)
  {
    v30 = v41;
    v31 = v40;
    if (v41 != v40)
    {
      do
      {
        v30 = sub_53A868(v30 - 160);
      }

      while (v30 != v29);
      v31 = v40;
    }

    v41 = v29;
    operator delete(v31);
  }

  v32 = v38;
  if (v38)
  {
    v33 = v39;
    v34 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = sub_53A868(v33 - 160);
      }

      while (v33 != v32);
      v34 = v38;
    }

    v39 = v32;
    operator delete(v34);
  }

  if (sub_5CC2D8(a3))
  {
    v35 = *(a1 + 3263);
  }

  else
  {
    v35 = 0;
  }

  *(a3 + 788) = v35 & 1;
  sub_5BBBF8(a1, a3);
  v36 = *(a3 + 89);
  v37 = *(a3 + 90);
  while (v36 != v37)
  {
    if (sub_5CBD4C(v36))
    {
      if ((*(v36 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v36 + 24) != 13)
      {
        sub_5CDAC8(a3, (v36 + 48));
      }
    }

    v36 += 64;
  }

  if (*(a3 + 748) == 1 && (a3[184] != -1 || a3[185] != -1))
  {
    sub_5CDAC8(a3, a3 + 184);
  }

  sub_5A04B4(a1, a3);
}

void sub_5A3630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A369C(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 30;
  a3[189] = sub_5CC2B4(30);
  sub_5CB20C(v31, *a3);
  v6 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v31);
  v7 = __p;
  if (__p)
  {
    v8 = v55;
    v9 = __p;
    if (v55 != __p)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = __p;
    }

    v55 = v7;
    operator delete(v9);
  }

  v10 = v52;
  if (v52)
  {
    v11 = v53;
    v12 = v52;
    if (v53 != v52)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v52;
    }

    v53 = v10;
    operator delete(v12);
  }

  v13 = v50;
  if (v50)
  {
    v14 = v51;
    v15 = v50;
    if (v51 != v50)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v50;
    }

    v51 = v13;
    operator delete(v15);
  }

  if (v49 != 1)
  {
LABEL_41:
    v23 = sub_68C454(a2, 0);
    v29 = sub_4D1DB8(v23);
    sub_5CBF60(a3, &v29);
    v29 = 0;
    sub_5CBF8C(a3, &v29);
    if (*(a1 + 4796) == 1)
    {
      v24 = *a3;
      if (v24 > 0x29)
      {
        v25 = 156;
      }

      else
      {
        v25 = qword_229A3B8[v24];
      }

      v26 = *(v6 + v25);
    }

    else
    {
      v26 = 2147483646;
    }

    v30 = v26;
    sub_5CBFB8(a3, &v30);
    v27 = *a3;
    if (v27 > 0x29)
    {
      v28 = 208;
    }

    else
    {
      v28 = qword_229A508[v27];
    }

    LODWORD(v29) = *(v6 + v28);
    sub_5CBFC4(a3, &v29);
    sub_59F958(a1, a3);
    sub_5B2688();
  }

  if (v48 < 0)
  {
    operator delete(v47);
    if (v46 != 1)
    {
      goto LABEL_34;
    }
  }

  else if (v46 != 1)
  {
LABEL_34:
    v20 = v34;
    if (v34)
    {
LABEL_35:
      v21 = v35;
      v22 = v20;
      if (v35 != v20)
      {
        do
        {
          v21 = sub_3A9518(v21 - 1120);
        }

        while (v21 != v20);
        v22 = v34;
      }

      v35 = v20;
      operator delete(v22);
    }

LABEL_39:
    sub_570440(&v33);
    if (v32[1120] == 1)
    {
      sub_3A9518(v32);
    }

    goto LABEL_41;
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  v16 = v42;
  if (v42)
  {
    v17 = v43;
    v18 = v42;
    if (v43 != v42)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v42;
    }

    v43 = v16;
    operator delete(v18);
  }

  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_53;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_53:
  operator delete(v36);
  v20 = v34;
  if (v34)
  {
    goto LABEL_35;
  }

  goto LABEL_39;
}

void sub_5A3B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A3BB4(uint64_t a1@<X0>, void *a2@<X1>, unsigned int *a3@<X8>)
{
  sub_5C0A00(a3);
  *a3 = 31;
  a3[189] = sub_5CC2B4(31);
  sub_5CB20C(v45, *a3);
  v6 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v45);
  v7 = __p;
  if (__p)
  {
    v8 = v69;
    v9 = __p;
    if (v69 != __p)
    {
      do
      {
        v8 -= 2000;
        sub_5C0D2C(v8);
      }

      while (v8 != v7);
      v9 = __p;
    }

    v69 = v7;
    operator delete(v9);
  }

  v10 = v66;
  if (v66)
  {
    v11 = v67;
    v12 = v66;
    if (v67 != v66)
    {
      do
      {
        v11 -= 2000;
        sub_5C0D2C(v11);
      }

      while (v11 != v10);
      v12 = v66;
    }

    v67 = v10;
    operator delete(v12);
  }

  v13 = v64;
  if (v64)
  {
    v14 = v65;
    v15 = v64;
    if (v65 != v64)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = v64;
    }

    v65 = v13;
    operator delete(v15);
  }

  if (v63 == 1)
  {
    if (v62 < 0)
    {
      operator delete(v61);
      if (v60 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v60 != 1)
    {
LABEL_34:
      v20 = v48;
      if (v48)
      {
LABEL_35:
        v21 = v49;
        v22 = v20;
        if (v49 != v20)
        {
          do
          {
            v21 = sub_3A9518(v21 - 1120);
          }

          while (v21 != v20);
          v22 = v48;
        }

        v49 = v20;
        operator delete(v22);
      }

LABEL_39:
      sub_570440(&v47);
      if (v46[1120] == 1)
      {
        sub_3A9518(v46);
      }

      goto LABEL_41;
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    v16 = v56;
    if (v56)
    {
      v17 = v57;
      v18 = v56;
      if (v57 != v56)
      {
        do
        {
          v19 = *(v17 - 1);
          v17 -= 3;
          if (v19 < 0)
          {
            operator delete(*v17);
          }
        }

        while (v17 != v16);
        v18 = v56;
      }

      v57 = v16;
      operator delete(v18);
    }

    if (v55 < 0)
    {
      operator delete(v54);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_77;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v52);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_77:
    operator delete(v50);
    v20 = v48;
    if (v48)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v23 = sub_68C454(a2, 0);
  v38 = sub_4D1DB8(v23);
  sub_5CBF60(a3, &v38);
  v38 = 0;
  sub_5CBF8C(a3, &v38);
  if (*(a1 + 4796) == 1)
  {
    v24 = *a3;
    if (v24 > 0x29)
    {
      v25 = 156;
    }

    else
    {
      v25 = qword_229A3B8[v24];
    }

    v26 = *(v6 + v25);
  }

  else
  {
    v26 = 2147483646;
  }

  v44 = v26;
  sub_5CBFB8(a3, &v44);
  v27 = *a3;
  if (v27 > 0x29)
  {
    v28 = 208;
  }

  else
  {
    v28 = qword_229A508[v27];
  }

  LODWORD(v38) = *(v6 + v28);
  sub_5CBFC4(a3, &v38);
  sub_59F958(a1, a3);
  sub_5B2B08(a1, &v38);
  sub_5A0314(a3 + 15, &v38);
  sub_53A868(&v43);
  sub_53A868(&v42);
  v29 = v40;
  if (v40)
  {
    v30 = v41;
    v31 = v40;
    if (v41 != v40)
    {
      do
      {
        v30 = sub_53A868(v30 - 160);
      }

      while (v30 != v29);
      v31 = v40;
    }

    v41 = v29;
    operator delete(v31);
  }

  v32 = v38;
  if (v38)
  {
    v33 = v39;
    v34 = v38;
    if (v39 != v38)
    {
      do
      {
        v33 = sub_53A868(v33 - 160);
      }

      while (v33 != v32);
      v34 = v38;
    }

    v39 = v32;
    operator delete(v34);
  }

  if (sub_5CC2D8(a3))
  {
    v35 = *(a1 + 3263);
  }

  else
  {
    v35 = 0;
  }

  *(a3 + 788) = v35 & 1;
  sub_5BBBF8(a1, a3);
  v36 = *(a3 + 89);
  v37 = *(a3 + 90);
  while (v36 != v37)
  {
    if (sub_5CBD4C(v36))
    {
      if ((*(v36 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v36 + 24) != 13)
      {
        sub_5CDAC8(a3, (v36 + 48));
      }
    }

    v36 += 64;
  }

  if (*(a3 + 748) == 1 && (a3[184] != -1 || a3[185] != -1))
  {
    sub_5CDAC8(a3, a3 + 184);
  }

  sub_5A04B4(a1, a3);
}

void sub_5A4060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A40CC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int *a4@<X8>)
{
  sub_5C0A00(a4);
  *a4 = 37;
  a4[189] = sub_5CC2B4(37);
  sub_5CB20C(v45, *a4);
  v8 = a1 + 2728;
  a4[144] = sub_59F53C((a1 + 2728), v45);
  v9 = __p;
  if (__p)
  {
    v10 = v69;
    v11 = __p;
    if (v69 != __p)
    {
      do
      {
        v10 -= 2000;
        sub_5C0D2C(v10);
      }

      while (v10 != v9);
      v11 = __p;
    }

    v69 = v9;
    operator delete(v11);
  }

  v12 = v66;
  if (v66)
  {
    v13 = v67;
    v14 = v66;
    if (v67 != v66)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = v66;
    }

    v67 = v12;
    operator delete(v14);
  }

  v15 = v64;
  if (v64)
  {
    v16 = v65;
    v17 = v64;
    if (v65 != v64)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v64;
    }

    v65 = v15;
    operator delete(v17);
  }

  if (v63 == 1)
  {
    if (v62 < 0)
    {
      operator delete(v61);
      if (v60 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v60 != 1)
    {
LABEL_34:
      v22 = v48;
      if (v48)
      {
LABEL_35:
        v23 = v49;
        v24 = v22;
        if (v49 != v22)
        {
          do
          {
            v23 = sub_3A9518(v23 - 1120);
          }

          while (v23 != v22);
          v24 = v48;
        }

        v49 = v22;
        operator delete(v24);
      }

LABEL_39:
      sub_570440(&v47);
      if (v46[1120] == 1)
      {
        sub_3A9518(v46);
      }

      goto LABEL_41;
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    v18 = v56;
    if (v56)
    {
      v19 = v57;
      v20 = v56;
      if (v57 != v56)
      {
        do
        {
          v21 = *(v19 - 1);
          v19 -= 3;
          if (v21 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v18);
        v20 = v56;
      }

      v57 = v18;
      operator delete(v20);
    }

    if (v55 < 0)
    {
      operator delete(v54);
      if ((v53 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v51 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_66;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v52);
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_66:
    operator delete(v50);
    v22 = v48;
    if (v48)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v25 = sub_68C454(a2, 0);
  v38 = sub_4D1DB8(v25);
  sub_5CBF60(a4, &v38);
  v38 = 0;
  sub_5CBF8C(a4, &v38);
  if (*(a1 + 4796) == 1)
  {
    v26 = *a4;
    if (v26 > 0x29)
    {
      v27 = 156;
    }

    else
    {
      v27 = qword_229A3B8[v26];
    }

    v28 = *(v8 + v27);
  }

  else
  {
    v28 = 2147483646;
  }

  v44 = v28;
  sub_5CBFB8(a4, &v44);
  v29 = *a4;
  if (v29 > 0x29)
  {
    v30 = 208;
  }

  else
  {
    v30 = qword_229A508[v29];
  }

  LODWORD(v38) = *(v8 + v30);
  sub_5CBFC4(a4, &v38);
  sub_5B1314(a1, a2, a3, &v38);
  sub_5A0314(a4 + 15, &v38);
  sub_53A868(&v43);
  sub_53A868(&v42);
  v31 = v40;
  if (v40)
  {
    v32 = v41;
    v33 = v40;
    if (v41 != v40)
    {
      do
      {
        v32 = sub_53A868(v32 - 160);
      }

      while (v32 != v31);
      v33 = v40;
    }

    v41 = v31;
    operator delete(v33);
  }

  v34 = v38;
  if (v38)
  {
    v35 = v39;
    v36 = v38;
    if (v39 != v38)
    {
      do
      {
        v35 = sub_53A868(v35 - 160);
      }

      while (v35 != v34);
      v36 = v38;
    }

    v39 = v34;
    operator delete(v36);
  }

  if (sub_5CC2D8(a4))
  {
    v37 = *(a1 + 3263);
  }

  else
  {
    v37 = 0;
  }

  *(a4 + 788) = v37 & 1;
  sub_5AA77C(a1, a3, a2, a4);
  sub_5A04B4(a1, a4);
}

void sub_5A4500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A4558(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int *a4@<X8>)
{
  v8 = sub_68C5B4(a3);
  v9 = sub_68C5B4(a2);
  sub_5C0A00(a4);
  *a4 = 24;
  a4[189] = sub_5CC2B4(24);
  sub_5CB20C(v59, *a4);
  v10 = a1 + 2728;
  a4[144] = sub_59F53C((a1 + 2728), v59);
  v11 = __p;
  if (__p)
  {
    v12 = v83;
    v13 = __p;
    if (v83 != __p)
    {
      do
      {
        v12 -= 2000;
        sub_5C0D2C(v12);
      }

      while (v12 != v11);
      v13 = __p;
    }

    v83 = v11;
    operator delete(v13);
  }

  v14 = v80;
  if (v80)
  {
    v15 = v81;
    v16 = v80;
    if (v81 != v80)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = v80;
    }

    v81 = v14;
    operator delete(v16);
  }

  v17 = v78;
  if (v78)
  {
    v18 = v79;
    v19 = v78;
    if (v79 != v78)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = v78;
    }

    v79 = v17;
    operator delete(v19);
  }

  if (v77 == 1)
  {
    if (v76 < 0)
    {
      operator delete(v75);
      if (v74 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v74 != 1)
    {
LABEL_34:
      v24 = v62;
      if (v62)
      {
LABEL_35:
        v25 = v63;
        v26 = v24;
        if (v63 != v24)
        {
          do
          {
            v25 = sub_3A9518(v25 - 1120);
          }

          while (v25 != v24);
          v26 = v62;
        }

        v63 = v24;
        operator delete(v26);
      }

LABEL_39:
      sub_570440(&v61);
      if (v60[1120] == 1)
      {
        sub_3A9518(v60);
      }

      goto LABEL_41;
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    v20 = v70;
    if (v70)
    {
      v21 = v71;
      v22 = v70;
      if (v71 != v70)
      {
        do
        {
          v23 = *(v21 - 1);
          v21 -= 3;
          if (v23 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v20);
        v22 = v70;
      }

      v71 = v20;
      operator delete(v22);
    }

    if (v69 < 0)
    {
      operator delete(v68);
      if ((v67 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_93;
      }
    }

    else if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v66);
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_93:
    operator delete(v64);
    v24 = v62;
    if (v62)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v27 = sub_68C454(a2, 0);
  v53[0] = sub_4D1DB8(v27);
  sub_5CBF60(a4, v53);
  sub_5AAB4C(a1, a2, a3, a4);
  v28 = *a4;
  if (v28 > 0x29)
  {
    v29 = 156;
  }

  else
  {
    v29 = qword_229A3B8[v28];
  }

  LODWORD(v53[0]) = *(v10 + v29);
  sub_5CBFB8(a4, v53);
  v30 = *a4;
  if (v30 > 0x29)
  {
    v31 = 208;
  }

  else
  {
    v31 = qword_229A508[v30];
  }

  LODWORD(v53[0]) = *(v10 + v31);
  sub_5CBFC4(a4, v53);
  v32 = v9 - v8;
  sub_5ACC00(a1, 0, v32 > 1, v53);
  sub_5A0314(a4 + 15, v53);
  sub_53A868(&v58);
  sub_53A868(&v57);
  v33 = v55;
  if (v55)
  {
    v34 = v56;
    v35 = v55;
    if (v56 != v55)
    {
      do
      {
        v34 = sub_53A868(v34 - 160);
      }

      while (v34 != v33);
      v35 = v55;
    }

    v56 = v33;
    operator delete(v35);
  }

  v36 = v53[0];
  if (v53[0])
  {
    v37 = v53[1];
    v38 = v53[0];
    if (v53[1] != v53[0])
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v53[0];
    }

    v53[1] = v36;
    operator delete(v38);
  }

  if (*(a1 + 4240) != 11 || *(a1 + 4272) != 11)
  {
    goto LABEL_61;
  }

  if (*(a1 + 4799) != 1)
  {
    if ((*(a1 + 3265) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    v40 = "BannerButton_No";
    v39 = 1;
    goto LABEL_62;
  }

  if (*(a1 + 3264))
  {
    goto LABEL_64;
  }

LABEL_61:
  v39 = 0;
  v40 = "BannerButton_Dismiss";
LABEL_62:
  *v53 = *v40;
  v54 = *(v40 + 2);
  v41 = 438;
  if (v32 > 1)
  {
    v41 = 441;
  }

  v42 = &qword_2795880;
  if (v32 <= 1)
  {
    v42 = &qword_2795868;
  }

  v43 = &algn_2795870[15];
  if (v32 > 1)
  {
    v43 = &unk_2795897;
  }

  if (*v43 < 0)
  {
    v44 = qword_2794AB8[v41];
    v45 = &unk_2795888;
    if (v32 <= 1)
    {
      v45 = algn_2795870;
    }

    sub_325C(v51, v44, *v45);
  }

  else
  {
    *v51 = *v42;
    v52 = v42[2];
  }

  v46 = "BannerButton_Yes";
  if (!v39)
  {
    v46 = v51;
  }

  if (v52 >= 0)
  {
    v47 = 1;
  }

  else
  {
    v47 = v39;
  }

  if (v47 == 1)
  {
    *v49 = *v46;
    v50 = v46[2];
  }

  else
  {
    sub_325C(v49, *v46, v51[1]);
  }

  sub_5ABFD0(a1, v53, v49, a4, 1, 1, 1u);
  v48 = *(a4 + 32);
  *(a4 + 134) = *(a4 + 31);
  *(a4 + 138) = v48;
  a4[142] = a4[132];
  sub_5A04B4(a1, a4);
  sub_5AA77C(a1, a2, a3, a4);
  *(a1 + 7432) = 1;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
LABEL_86:
      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
        return;
      }

LABEL_90:
      operator delete(v53[0]);
      return;
    }
  }

  else if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

  operator delete(v51[0]);
  if (SHIBYTE(v54) < 0)
  {
    goto LABEL_90;
  }
}

void sub_5A4B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if ((a22 & 0x80000000) == 0)
  {
    sub_5C0F34(v22);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_5C0F34(v22);
  _Unwind_Resume(a1);
}

void sub_5A4C1C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int *a4@<X8>)
{
  v8 = sub_68C5B4(a3);
  v9 = sub_68C5B4(a2);
  sub_5C0A00(a4);
  *a4 = 23;
  a4[189] = sub_5CC2B4(23);
  sub_5CB20C(v59, *a4);
  v10 = a1 + 2728;
  a4[144] = sub_59F53C((a1 + 2728), v59);
  v11 = __p;
  if (__p)
  {
    v12 = v83;
    v13 = __p;
    if (v83 != __p)
    {
      do
      {
        v12 -= 2000;
        sub_5C0D2C(v12);
      }

      while (v12 != v11);
      v13 = __p;
    }

    v83 = v11;
    operator delete(v13);
  }

  v14 = v80;
  if (v80)
  {
    v15 = v81;
    v16 = v80;
    if (v81 != v80)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = v80;
    }

    v81 = v14;
    operator delete(v16);
  }

  v17 = v78;
  if (v78)
  {
    v18 = v79;
    v19 = v78;
    if (v79 != v78)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = v78;
    }

    v79 = v17;
    operator delete(v19);
  }

  if (v77 == 1)
  {
    if (v76 < 0)
    {
      operator delete(v75);
      if (v74 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v74 != 1)
    {
LABEL_34:
      v24 = v62;
      if (v62)
      {
LABEL_35:
        v25 = v63;
        v26 = v24;
        if (v63 != v24)
        {
          do
          {
            v25 = sub_3A9518(v25 - 1120);
          }

          while (v25 != v24);
          v26 = v62;
        }

        v63 = v24;
        operator delete(v26);
      }

LABEL_39:
      sub_570440(&v61);
      if (v60[1120] == 1)
      {
        sub_3A9518(v60);
      }

      goto LABEL_41;
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    v20 = v70;
    if (v70)
    {
      v21 = v71;
      v22 = v70;
      if (v71 != v70)
      {
        do
        {
          v23 = *(v21 - 1);
          v21 -= 3;
          if (v23 < 0)
          {
            operator delete(*v21);
          }
        }

        while (v21 != v20);
        v22 = v70;
      }

      v71 = v20;
      operator delete(v22);
    }

    if (v69 < 0)
    {
      operator delete(v68);
      if ((v67 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_93;
      }
    }

    else if ((v67 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v66);
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_93:
    operator delete(v64);
    v24 = v62;
    if (v62)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v27 = sub_68C454(a2, 0);
  v53[0] = sub_4D1DB8(v27);
  sub_5CBF60(a4, v53);
  v28 = *a4;
  if (v28 > 0x29)
  {
    v29 = 156;
  }

  else
  {
    v29 = qword_229A3B8[v28];
  }

  LODWORD(v53[0]) = *(v10 + v29);
  sub_5CBFB8(a4, v53);
  v30 = *a4;
  if (v30 > 0x29)
  {
    v31 = 208;
  }

  else
  {
    v31 = qword_229A508[v30];
  }

  LODWORD(v53[0]) = *(v10 + v31);
  sub_5CBFC4(a4, v53);
  sub_5AAB4C(a1, a2, a3, a4);
  v32 = v8 - v9;
  sub_5ACC00(a1, 1, v32 > 1, v53);
  sub_5A0314(a4 + 15, v53);
  sub_53A868(&v58);
  sub_53A868(&v57);
  v33 = v55;
  if (v55)
  {
    v34 = v56;
    v35 = v55;
    if (v56 != v55)
    {
      do
      {
        v34 = sub_53A868(v34 - 160);
      }

      while (v34 != v33);
      v35 = v55;
    }

    v56 = v33;
    operator delete(v35);
  }

  v36 = v53[0];
  if (v53[0])
  {
    v37 = v53[1];
    v38 = v53[0];
    if (v53[1] != v53[0])
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v53[0];
    }

    v53[1] = v36;
    operator delete(v38);
  }

  if (*(a1 + 4240) != 11 || *(a1 + 4272) != 11)
  {
    goto LABEL_61;
  }

  if (*(a1 + 4799) != 1)
  {
    if ((*(a1 + 3265) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    v40 = "BannerButton_No";
    v39 = 1;
    goto LABEL_62;
  }

  if (*(a1 + 3264))
  {
    goto LABEL_64;
  }

LABEL_61:
  v39 = 0;
  v40 = "BannerButton_Dismiss";
LABEL_62:
  *v53 = *v40;
  v54 = *(v40 + 2);
  v41 = 432;
  if (v32 > 1)
  {
    v41 = 435;
  }

  v42 = &qword_2795850;
  if (v32 <= 1)
  {
    v42 = &qword_2795838;
  }

  v43 = &unk_279584F;
  if (v32 > 1)
  {
    v43 = &unk_2795867;
  }

  if (*v43 < 0)
  {
    v44 = qword_2794AB8[v41];
    v45 = &unk_2795858;
    if (v32 <= 1)
    {
      v45 = &unk_2795840;
    }

    sub_325C(v51, v44, *v45);
  }

  else
  {
    *v51 = *v42;
    v52 = v42[2];
  }

  v46 = "BannerButton_Yes";
  if (!v39)
  {
    v46 = v51;
  }

  if (v52 >= 0)
  {
    v47 = 1;
  }

  else
  {
    v47 = v39;
  }

  if (v47 == 1)
  {
    *v49 = *v46;
    v50 = v46[2];
  }

  else
  {
    sub_325C(v49, *v46, v51[1]);
  }

  sub_5ABFD0(a1, v53, v49, a4, 1, 1, 1u);
  v48 = *(a4 + 32);
  *(a4 + 134) = *(a4 + 31);
  *(a4 + 138) = v48;
  a4[142] = a4[132];
  sub_5A04B4(a1, a4);
  sub_5AA77C(a1, a2, a3, a4);
  *(a1 + 7432) = 1;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
LABEL_86:
      if ((SHIBYTE(v54) & 0x80000000) == 0)
      {
        return;
      }

LABEL_90:
      operator delete(v53[0]);
      return;
    }
  }

  else if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    goto LABEL_86;
  }

  operator delete(v51[0]);
  if (SHIBYTE(v54) < 0)
  {
    goto LABEL_90;
  }
}

void sub_5A51C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if ((a22 & 0x80000000) == 0)
  {
    sub_5C0F34(v22);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_5C0F34(v22);
  _Unwind_Resume(a1);
}

void sub_5A52E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X3>, int *a5@<X8>)
{
  v10 = sub_68C5B4(a3);
  v11 = sub_68C5B4(a2);
  sub_5C0A00(a5);
  v12 = *a4;
  *a5 = *a4;
  a5[189] = sub_5CC2B4(v12);
  sub_5AA47C(v64, a4);
  v13 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v64);
  v14 = __p;
  if (__p)
  {
    v15 = v88;
    v16 = __p;
    if (v88 != __p)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v88 = v14;
    operator delete(v16);
  }

  v17 = v85;
  if (v85)
  {
    v18 = v86;
    v19 = v85;
    if (v86 != v85)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = v85;
    }

    v86 = v17;
    operator delete(v19);
  }

  v20 = v83;
  if (v83)
  {
    v21 = v84;
    v22 = v83;
    if (v84 != v83)
    {
      do
      {
        v21 -= 2000;
        sub_5C0D2C(v21);
      }

      while (v21 != v20);
      v22 = v83;
    }

    v84 = v20;
    operator delete(v22);
  }

  if (v82 == 1)
  {
    if (v81 < 0)
    {
      operator delete(v80);
      if (v79 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v79 != 1)
    {
LABEL_34:
      v27 = v67;
      if (v67)
      {
LABEL_35:
        v28 = v68;
        v29 = v27;
        if (v68 != v27)
        {
          do
          {
            v28 = sub_3A9518(v28 - 1120);
          }

          while (v28 != v27);
          v29 = v67;
        }

        v68 = v27;
        operator delete(v29);
      }

LABEL_39:
      sub_570440(&v66);
      if (v65[1120] == 1)
      {
        sub_3A9518(v65);
      }

      goto LABEL_41;
    }

    if (v78 < 0)
    {
      operator delete(v77);
    }

    v23 = v75;
    if (v75)
    {
      v24 = v76;
      v25 = v75;
      if (v76 != v75)
      {
        do
        {
          v26 = *(v24 - 1);
          v24 -= 3;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v23);
        v25 = v75;
      }

      v76 = v23;
      operator delete(v25);
    }

    if (v74 < 0)
    {
      operator delete(v73);
      if ((v72 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v70 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_68;
      }
    }

    else if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v71);
    if ((v70 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_68:
    operator delete(v69);
    v27 = v67;
    if (v67)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v30 = sub_68C454(a2, 0);
  v58[0] = sub_4D1DB8(v30);
  sub_5CBF60(a5, v58);
  sub_5AAB4C(a1, a2, a3, a5);
  v31 = *a5;
  if (v31 > 0x29)
  {
    v32 = 156;
  }

  else
  {
    v32 = qword_229A3B8[v31];
  }

  LODWORD(v58[0]) = *(v13 + v32);
  sub_5CBFB8(a5, v58);
  v33 = *a5;
  if (v33 > 0x29)
  {
    v34 = 208;
  }

  else
  {
    v34 = qword_229A508[v33];
  }

  LODWORD(v58[0]) = *(v13 + v34);
  sub_5CBFC4(a5, v58);
  v35 = sub_5CB378(a4);
  v36 = v10 - v11;
  sub_5AD2CC(a1, (v10 - v11) > 1, v35, v58);
  sub_5A0314(a5 + 15, v58);
  sub_53A868(&v63);
  sub_53A868(&v62);
  v37 = v60;
  if (v60)
  {
    v38 = v61;
    v39 = v60;
    if (v61 != v60)
    {
      do
      {
        v38 = sub_53A868(v38 - 160);
      }

      while (v38 != v37);
      v39 = v60;
    }

    v61 = v37;
    operator delete(v39);
  }

  v40 = v58[0];
  if (v58[0])
  {
    v41 = v58[1];
    v42 = v58[0];
    if (v58[1] != v58[0])
    {
      do
      {
        v41 = sub_53A868(v41 - 160);
      }

      while (v41 != v40);
      v42 = v58[0];
    }

    v58[1] = v40;
    operator delete(v42);
  }

  v43 = *a5 > 0x24 || ((1 << *a5) & 0x1FE0401EEELL) == 0;
  if (v43 && (*(a1 + 4240) != 11 || *(a1 + 4272) != 11))
  {
    goto LABEL_72;
  }

  if (*(a1 + 4799) == 1)
  {
    if ((*(a1 + 3264) & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_65:
    v44 = "BannerButton_No";
    v45 = 1;
    goto LABEL_73;
  }

  if (*(a1 + 3265))
  {
    goto LABEL_65;
  }

LABEL_72:
  v45 = 0;
  v44 = "BannerButton_Dismiss";
LABEL_73:
  *v58 = *v44;
  v59 = *(v44 + 2);
  v46 = 432;
  if (v36 > 1)
  {
    v46 = 435;
  }

  v47 = &qword_2795850;
  if (v36 <= 1)
  {
    v47 = &qword_2795838;
  }

  v48 = &unk_279584F;
  if (v36 > 1)
  {
    v48 = &unk_2795867;
  }

  if (*v48 < 0)
  {
    v49 = qword_2794AB8[v46];
    v50 = &unk_2795858;
    if (v36 <= 1)
    {
      v50 = &unk_2795840;
    }

    sub_325C(v56, v49, *v50);
  }

  else
  {
    *v56 = *v47;
    v57 = v47[2];
  }

  v51 = "BannerButton_Yes";
  if (!v45)
  {
    v51 = v56;
  }

  if (v57 >= 0)
  {
    v52 = 1;
  }

  else
  {
    v52 = v45;
  }

  if (v52 == 1)
  {
    *v54 = *v51;
    v55 = v51[2];
  }

  else
  {
    sub_325C(v54, *v51, v56[1]);
  }

  sub_5ABFD0(a1, v58, v54, a5, 1, 1, 1u);
  v53 = *(a5 + 32);
  *(a5 + 134) = *(a5 + 31);
  *(a5 + 138) = v53;
  a5[142] = a5[132];
  sub_5AA77C(a1, a2, a3, a5);
  sub_5A04B4(a1, a5);
  *(a1 + 7432) = 1;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
    if ((SHIBYTE(v57) & 0x80000000) == 0)
    {
LABEL_94:
      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        return;
      }

LABEL_98:
      operator delete(v58[0]);
      return;
    }
  }

  else if ((SHIBYTE(v57) & 0x80000000) == 0)
  {
    goto LABEL_94;
  }

  operator delete(v56[0]);
  if (SHIBYTE(v59) < 0)
  {
    goto LABEL_98;
  }
}

void sub_5A58C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if ((a22 & 0x80000000) == 0)
  {
    sub_5C0F34(v22);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_5C0F34(v22);
  _Unwind_Resume(a1);
}

void sub_5A59D8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X3>, int *a5@<X8>)
{
  v10 = sub_68C5B4(a3);
  v11 = sub_68C5B4(a2);
  sub_5C0A00(a5);
  v12 = *a4;
  *a5 = *a4;
  a5[189] = sub_5CC2B4(v12);
  sub_5AA47C(v55, a4);
  v13 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v55);
  v14 = __p;
  if (__p)
  {
    v15 = v79;
    v16 = __p;
    if (v79 != __p)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v79 = v14;
    operator delete(v16);
  }

  v17 = v76;
  if (v76)
  {
    v18 = v77;
    v19 = v76;
    if (v77 != v76)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = v76;
    }

    v77 = v17;
    operator delete(v19);
  }

  v20 = v74;
  if (v74)
  {
    v21 = v75;
    v22 = v74;
    if (v75 != v74)
    {
      do
      {
        v21 -= 2000;
        sub_5C0D2C(v21);
      }

      while (v21 != v20);
      v22 = v74;
    }

    v75 = v20;
    operator delete(v22);
  }

  if (v73 == 1)
  {
    if (v72 < 0)
    {
      operator delete(v71);
      if (v70 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v70 != 1)
    {
LABEL_34:
      v27 = v58;
      if (v58)
      {
LABEL_35:
        v28 = v59;
        v29 = v27;
        if (v59 != v27)
        {
          do
          {
            v28 = sub_3A9518(v28 - 1120);
          }

          while (v28 != v27);
          v29 = v58;
        }

        v59 = v27;
        operator delete(v29);
      }

LABEL_39:
      sub_570440(&v57);
      if (v56[1120] == 1)
      {
        sub_3A9518(v56);
      }

      goto LABEL_41;
    }

    if (v69 < 0)
    {
      operator delete(v68);
    }

    v23 = v66;
    if (v66)
    {
      v24 = v67;
      v25 = v66;
      if (v67 != v66)
      {
        do
        {
          v26 = *(v24 - 1);
          v24 -= 3;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v23);
        v25 = v66;
      }

      v67 = v23;
      operator delete(v25);
    }

    if (v65 < 0)
    {
      operator delete(v64);
      if ((v63 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v61 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_73;
      }
    }

    else if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v62);
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_73:
    operator delete(v60);
    v27 = v58;
    if (v58)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v30 = sub_68C454(a2, 0);
  v49[0] = sub_4D1DB8(v30);
  sub_5CBF60(a5, v49);
  sub_5AAB4C(a1, a2, a3, a5);
  v31 = *a5;
  if (v31 > 0x29)
  {
    v32 = 156;
  }

  else
  {
    v32 = qword_229A3B8[v31];
  }

  LODWORD(v49[0]) = *(v13 + v32);
  sub_5CBFB8(a5, v49);
  v33 = *a5;
  if (v33 > 0x29)
  {
    v34 = 208;
  }

  else
  {
    v34 = qword_229A508[v33];
  }

  LODWORD(v49[0]) = *(v13 + v34);
  sub_5CBFC4(a5, v49);
  v35 = sub_5CB378(a4);
  v36 = v10 - v11;
  sub_5ADC88(a1, (v10 - v11) > 1, v35, v49);
  sub_5A0314(a5 + 15, v49);
  sub_53A868(&v54);
  sub_53A868(&v53);
  v37 = v51;
  if (v51)
  {
    v38 = v52;
    v39 = v51;
    if (v52 != v51)
    {
      do
      {
        v38 = sub_53A868(v38 - 160);
      }

      while (v38 != v37);
      v39 = v51;
    }

    v52 = v37;
    operator delete(v39);
  }

  v40 = v49[0];
  if (v49[0])
  {
    v41 = v49[1];
    v42 = v49[0];
    if (v49[1] != v49[0])
    {
      do
      {
        v41 = sub_53A868(v41 - 160);
      }

      while (v41 != v40);
      v42 = v49[0];
    }

    v49[1] = v40;
    operator delete(v42);
  }

  v43 = 432;
  if (v36 > 1)
  {
    v43 = 435;
  }

  v44 = &qword_2795850;
  if (v36 <= 1)
  {
    v44 = &qword_2795838;
  }

  v45 = &unk_279584F;
  if (v36 > 1)
  {
    v45 = &unk_2795867;
  }

  if (*v45 < 0)
  {
    v46 = qword_2794AB8[v43];
    v47 = &unk_2795858;
    if (v36 <= 1)
    {
      v47 = &unk_2795840;
    }

    sub_325C(v49, v46, *v47);
  }

  else
  {
    *v49 = *v44;
    v50 = v44[2];
  }

  sub_5ABFD0(a1, "BannerButton_Dismiss", v49, a5, 1, 1, 1u);
  v48 = *(a5 + 32);
  *(a5 + 134) = *(a5 + 31);
  *(a5 + 138) = v48;
  a5[142] = a5[132];
  sub_5AA77C(a1, a2, a3, a5);
  sub_5A04B4(a1, a5);
  *(a1 + 7432) = 1;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }
}

void sub_5A5ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_59F87C(&a56);
  sub_5C0F34(v56);
  _Unwind_Resume(a1);
}

void sub_5A5EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5C0F34(v14);
    _Unwind_Resume(a1);
  }

  sub_5C0F34(v14);
  _Unwind_Resume(a1);
}

void sub_5A5F48(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X3>, int *a5@<X8>)
{
  sub_5C0A00(a5);
  v10 = *a4;
  *a5 = *a4;
  a5[189] = sub_5CC2B4(v10);
  sub_5AA47C(v46, a4);
  v11 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v46);
  v12 = __p;
  if (__p)
  {
    v13 = v70;
    v14 = __p;
    if (v70 != __p)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = __p;
    }

    v70 = v12;
    operator delete(v14);
  }

  v15 = v67;
  if (v67)
  {
    v16 = v68;
    v17 = v67;
    if (v68 != v67)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v67;
    }

    v68 = v15;
    operator delete(v17);
  }

  v18 = v65;
  if (v65)
  {
    v19 = v66;
    v20 = v65;
    if (v66 != v65)
    {
      do
      {
        v19 -= 2000;
        sub_5C0D2C(v19);
      }

      while (v19 != v18);
      v20 = v65;
    }

    v66 = v18;
    operator delete(v20);
  }

  if (v64 == 1)
  {
    if (v63 < 0)
    {
      operator delete(v62);
      if (v61 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v61 != 1)
    {
LABEL_34:
      v25 = v49;
      if (v49)
      {
LABEL_35:
        v26 = v50;
        v27 = v25;
        if (v50 != v25)
        {
          do
          {
            v26 = sub_3A9518(v26 - 1120);
          }

          while (v26 != v25);
          v27 = v49;
        }

        v50 = v25;
        operator delete(v27);
      }

LABEL_39:
      sub_570440(&v48);
      if (v47[1120] == 1)
      {
        sub_3A9518(v47);
      }

      goto LABEL_41;
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    v21 = v57;
    if (v57)
    {
      v22 = v58;
      v23 = v57;
      if (v58 != v57)
      {
        do
        {
          v24 = *(v22 - 1);
          v22 -= 3;
          if (v24 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v21);
        v23 = v57;
      }

      v58 = v21;
      operator delete(v23);
    }

    if (v56 < 0)
    {
      operator delete(v55);
      if ((v54 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }
    }

    else if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v53);
    if ((v52 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_60:
    operator delete(v51);
    v25 = v49;
    if (v49)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v28 = sub_68C454(a2, 0);
  v40 = sub_4D1DB8(v28);
  sub_5CBF60(a5, &v40);
  sub_5AAB4C(a1, a2, a3, a5);
  v29 = *a5;
  if (v29 > 0x29)
  {
    v30 = 156;
  }

  else
  {
    v30 = qword_229A3B8[v29];
  }

  LODWORD(v40) = *(v11 + v30);
  sub_5CBFB8(a5, &v40);
  v31 = *a5;
  if (v31 > 0x29)
  {
    v32 = 208;
  }

  else
  {
    v32 = qword_229A508[v31];
  }

  LODWORD(v40) = *(v11 + v32);
  sub_5CBFC4(a5, &v40);
  sub_5AE394(a1, a3, a2, &v40);
  sub_5A0314(a5 + 15, &v40);
  sub_53A868(&v45);
  sub_53A868(&v44);
  v33 = v42;
  if (v42)
  {
    v34 = v43;
    v35 = v42;
    if (v43 != v42)
    {
      do
      {
        v34 = sub_53A868(v34 - 160);
      }

      while (v34 != v33);
      v35 = v42;
    }

    v43 = v33;
    operator delete(v35);
  }

  v36 = v40;
  if (v40)
  {
    v37 = v41;
    v38 = v40;
    if (v41 != v40)
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v40;
    }

    v41 = v36;
    operator delete(v38);
  }

  sub_5ABFD0(a1, "BannerButton_Dismiss", "BannerButton_OK", a5, 1, 1, 1u);
  v39 = *(a5 + 32);
  *(a5 + 134) = *(a5 + 31);
  *(a5 + 138) = v39;
  a5[142] = a5[132];
  sub_5AA77C(a1, a2, a3, a5);
  sub_5A04B4(a1, a5);
  *(a1 + 7432) = 1;
}

void sub_5A6390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

void sub_5A63D4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X3>, int *a5@<X8>)
{
  sub_5C0A00(a5);
  v10 = *a4;
  *a5 = *a4;
  a5[189] = sub_5CC2B4(v10);
  sub_5AA47C(v46, a4);
  v11 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v46);
  v12 = __p;
  if (__p)
  {
    v13 = v70;
    v14 = __p;
    if (v70 != __p)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = __p;
    }

    v70 = v12;
    operator delete(v14);
  }

  v15 = v67;
  if (v67)
  {
    v16 = v68;
    v17 = v67;
    if (v68 != v67)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v67;
    }

    v68 = v15;
    operator delete(v17);
  }

  v18 = v65;
  if (v65)
  {
    v19 = v66;
    v20 = v65;
    if (v66 != v65)
    {
      do
      {
        v19 -= 2000;
        sub_5C0D2C(v19);
      }

      while (v19 != v18);
      v20 = v65;
    }

    v66 = v18;
    operator delete(v20);
  }

  if (v64 == 1)
  {
    if (v63 < 0)
    {
      operator delete(v62);
      if (v61 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v61 != 1)
    {
LABEL_34:
      v25 = v49;
      if (v49)
      {
LABEL_35:
        v26 = v50;
        v27 = v25;
        if (v50 != v25)
        {
          do
          {
            v26 = sub_3A9518(v26 - 1120);
          }

          while (v26 != v25);
          v27 = v49;
        }

        v50 = v25;
        operator delete(v27);
      }

LABEL_39:
      sub_570440(&v48);
      if (v47[1120] == 1)
      {
        sub_3A9518(v47);
      }

      goto LABEL_41;
    }

    if (v60 < 0)
    {
      operator delete(v59);
    }

    v21 = v57;
    if (v57)
    {
      v22 = v58;
      v23 = v57;
      if (v58 != v57)
      {
        do
        {
          v24 = *(v22 - 1);
          v22 -= 3;
          if (v24 < 0)
          {
            operator delete(*v22);
          }
        }

        while (v22 != v21);
        v23 = v57;
      }

      v58 = v21;
      operator delete(v23);
    }

    if (v56 < 0)
    {
      operator delete(v55);
      if ((v54 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }
    }

    else if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v53);
    if ((v52 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_60:
    operator delete(v51);
    v25 = v49;
    if (v49)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v28 = sub_68C454(a2, 0);
  v40 = sub_4D1DB8(v28);
  sub_5CBF60(a5, &v40);
  sub_5AAB4C(a1, a2, a3, a5);
  v29 = *a5;
  if (v29 > 0x29)
  {
    v30 = 156;
  }

  else
  {
    v30 = qword_229A3B8[v29];
  }

  LODWORD(v40) = *(v11 + v30);
  sub_5CBFB8(a5, &v40);
  v31 = *a5;
  if (v31 > 0x29)
  {
    v32 = 208;
  }

  else
  {
    v32 = qword_229A508[v31];
  }

  LODWORD(v40) = *(v11 + v32);
  sub_5CBFC4(a5, &v40);
  sub_5AEBF8(a1, a3, &v40);
  sub_5A0314(a5 + 15, &v40);
  sub_53A868(&v45);
  sub_53A868(&v44);
  v33 = v42;
  if (v42)
  {
    v34 = v43;
    v35 = v42;
    if (v43 != v42)
    {
      do
      {
        v34 = sub_53A868(v34 - 160);
      }

      while (v34 != v33);
      v35 = v42;
    }

    v43 = v33;
    operator delete(v35);
  }

  v36 = v40;
  if (v40)
  {
    v37 = v41;
    v38 = v40;
    if (v41 != v40)
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v40;
    }

    v41 = v36;
    operator delete(v38);
  }

  sub_5ABFD0(a1, "BannerButton_Dismiss", "BannerButton_OK", a5, 1, 1, 1u);
  v39 = *(a5 + 32);
  *(a5 + 134) = *(a5 + 31);
  *(a5 + 138) = v39;
  a5[142] = a5[132];
  sub_5AA77C(a1, a2, a3, a5);
  sub_5A04B4(a1, a5);
  *(a1 + 7432) = 1;
}

void sub_5A6818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

void sub_5A685C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X3>, char a5@<W4>, int *a6@<X8>)
{
  v12 = sub_68C5B4(a3);
  sub_5C0A00(a6);
  v13 = *a4;
  *a6 = *a4;
  a6[189] = sub_5CC2B4(v13);
  sub_5AA47C(v50, a4);
  v14 = a1 + 2728;
  a6[144] = sub_59F53C((a1 + 2728), v50);
  v15 = __p;
  if (__p)
  {
    v16 = v74;
    v17 = __p;
    if (v74 != __p)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = __p;
    }

    v74 = v15;
    operator delete(v17);
  }

  v18 = v71;
  if (v71)
  {
    v19 = v72;
    v20 = v71;
    if (v72 != v71)
    {
      do
      {
        v19 -= 2000;
        sub_5C0D2C(v19);
      }

      while (v19 != v18);
      v20 = v71;
    }

    v72 = v18;
    operator delete(v20);
  }

  v21 = v69;
  if (v69)
  {
    v22 = v70;
    v23 = v69;
    if (v70 != v69)
    {
      do
      {
        v22 -= 2000;
        sub_5C0D2C(v22);
      }

      while (v22 != v21);
      v23 = v69;
    }

    v70 = v21;
    operator delete(v23);
  }

  if (v68 == 1)
  {
    if (v67 < 0)
    {
      operator delete(v66);
      if (v65 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v65 != 1)
    {
LABEL_34:
      v28 = v53;
      if (v53)
      {
LABEL_35:
        v29 = v54;
        v30 = v28;
        if (v54 != v28)
        {
          do
          {
            v29 = sub_3A9518(v29 - 1120);
          }

          while (v29 != v28);
          v30 = v53;
        }

        v54 = v28;
        operator delete(v30);
      }

LABEL_39:
      sub_570440(&v52);
      if (v51[1120] == 1)
      {
        sub_3A9518(v51);
      }

      goto LABEL_41;
    }

    if (v64 < 0)
    {
      operator delete(v63);
    }

    v24 = v61;
    if (v61)
    {
      v25 = v62;
      v26 = v61;
      if (v62 != v61)
      {
        do
        {
          v27 = *(v25 - 1);
          v25 -= 3;
          if (v27 < 0)
          {
            operator delete(*v25);
          }
        }

        while (v25 != v24);
        v26 = v61;
      }

      v62 = v24;
      operator delete(v26);
    }

    if (v60 < 0)
    {
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }
    }

    else if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v57);
    if ((v56 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_60:
    operator delete(v55);
    v28 = v53;
    if (v53)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v31 = sub_68C454(a2, 0);
  v44 = sub_4D1DB8(v31);
  sub_5CBF60(a6, &v44);
  sub_5AAB4C(a1, a2, a3, a6);
  v32 = *a6;
  if (v32 > 0x29)
  {
    v33 = 156;
  }

  else
  {
    v33 = qword_229A3B8[v32];
  }

  LODWORD(v44) = *(v14 + v33);
  sub_5CBFB8(a6, &v44);
  v34 = *a6;
  if (v34 > 0x29)
  {
    v35 = 208;
  }

  else
  {
    v35 = qword_229A508[v34];
  }

  LODWORD(v44) = *(v14 + v35);
  sub_5CBFC4(a6, &v44);
  v36 = sub_5CB378(a4);
  sub_5AF24C(a1, v12 > 1, v36, a5, &v44);
  sub_5A0314(a6 + 15, &v44);
  sub_53A868(&v49);
  sub_53A868(&v48);
  v37 = v46;
  if (v46)
  {
    v38 = v47;
    v39 = v46;
    if (v47 != v46)
    {
      do
      {
        v38 = sub_53A868(v38 - 160);
      }

      while (v38 != v37);
      v39 = v46;
    }

    v47 = v37;
    operator delete(v39);
  }

  v40 = v44;
  if (v44)
  {
    v41 = v45;
    v42 = v44;
    if (v45 != v44)
    {
      do
      {
        v41 = sub_53A868(v41 - 160);
      }

      while (v41 != v40);
      v42 = v44;
    }

    v45 = v40;
    operator delete(v42);
  }

  sub_5ABFD0(a1, "BannerButton_Dismiss", "BannerButton_OK", a6, 1, 1, 1u);
  v43 = *(a6 + 32);
  *(a6 + 134) = *(a6 + 31);
  *(a6 + 138) = v43;
  a6[142] = a6[132];
  sub_5AA77C(a1, a2, a3, a6);
  sub_5A04B4(a1, a6);
  *(a1 + 7432) = 1;
}

void sub_5A6CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_59F87C(&a56);
  sub_5C0F34(v56);
  _Unwind_Resume(a1);
}

void sub_5A6D24(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int *a4@<X8>)
{
  sub_5C0A00(a4);
  *a4 = 21;
  a4[189] = sub_5CC2B4(21);
  sub_5CB20C(v31, *a4);
  v8 = a1 + 2728;
  a4[144] = sub_59F53C((a1 + 2728), v31);
  v9 = __p;
  if (__p)
  {
    v10 = v55;
    v11 = __p;
    if (v55 != __p)
    {
      do
      {
        v10 -= 2000;
        sub_5C0D2C(v10);
      }

      while (v10 != v9);
      v11 = __p;
    }

    v55 = v9;
    operator delete(v11);
  }

  v12 = v52;
  if (v52)
  {
    v13 = v53;
    v14 = v52;
    if (v53 != v52)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = v52;
    }

    v53 = v12;
    operator delete(v14);
  }

  v15 = v50;
  if (v50)
  {
    v16 = v51;
    v17 = v50;
    if (v51 != v50)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v50;
    }

    v51 = v15;
    operator delete(v17);
  }

  if (v49 != 1)
  {
LABEL_41:
    v25 = sub_68C454(a2, 0);
    v30 = sub_4D1DB8(v25);
    sub_5CBF60(a4, &v30);
    sub_5AAB4C(a1, a2, a3, a4);
    v26 = *a4;
    if (v26 > 0x29)
    {
      v27 = 156;
    }

    else
    {
      v27 = qword_229A3B8[v26];
    }

    LODWORD(v30) = *(v8 + v27);
    sub_5CBFB8(a4, &v30);
    v28 = *a4;
    if (v28 > 0x29)
    {
      v29 = 208;
    }

    else
    {
      v29 = qword_229A508[v28];
    }

    LODWORD(v30) = *(v8 + v29);
    sub_5CBFC4(a4, &v30);
    sub_5AFA4C();
  }

  if (v48 < 0)
  {
    operator delete(v47);
    if (v46 != 1)
    {
      goto LABEL_34;
    }
  }

  else if (v46 != 1)
  {
LABEL_34:
    v22 = v34;
    if (v34)
    {
LABEL_35:
      v23 = v35;
      v24 = v22;
      if (v35 != v22)
      {
        do
        {
          v23 = sub_3A9518(v23 - 1120);
        }

        while (v23 != v22);
        v24 = v34;
      }

      v35 = v22;
      operator delete(v24);
    }

LABEL_39:
    sub_570440(&v33);
    if (v32[1120] == 1)
    {
      sub_3A9518(v32);
    }

    goto LABEL_41;
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  v18 = v42;
  if (v42)
  {
    v19 = v43;
    v20 = v42;
    if (v43 != v42)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v42;
    }

    v43 = v18;
    operator delete(v20);
  }

  if (v41 < 0)
  {
    operator delete(v40);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v38);
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_50:
  operator delete(v36);
  v22 = v34;
  if (v34)
  {
    goto LABEL_35;
  }

  goto LABEL_39;
}

void sub_5A7168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

uint64_t sub_5A71AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W3>, _BYTE *a5@<X4>, int *a6@<X8>)
{
  sub_5CB2AC(a3, v94);
  v12 = sub_6599D0(v94);
  v13 = sub_5C0A00(a6);
  sub_5AA5DC(v13, v94, a2, a6);
  v14 = *(a6 + 89);
  v15 = *a3;
  *a6 = *a3;
  a6[189] = sub_5CC2B4(v15);
  sub_5AA47C(v69, a3);
  v16 = a1 + 2728;
  a6[144] = sub_59F53C((a1 + 2728), v69);
  v17 = __p;
  if (__p)
  {
    v18 = v93;
    v19 = __p;
    if (v93 != __p)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = __p;
    }

    v93 = v17;
    operator delete(v19);
  }

  v20 = v90;
  if (v90)
  {
    v21 = v91;
    v22 = v90;
    if (v91 != v90)
    {
      do
      {
        v21 -= 2000;
        sub_5C0D2C(v21);
      }

      while (v21 != v20);
      v22 = v90;
    }

    v91 = v20;
    operator delete(v22);
  }

  v23 = v88;
  if (v88)
  {
    v24 = v89;
    v25 = v88;
    if (v89 != v88)
    {
      do
      {
        v24 -= 2000;
        sub_5C0D2C(v24);
      }

      while (v24 != v23);
      v25 = v88;
    }

    v89 = v23;
    operator delete(v25);
  }

  if (v87 == 1)
  {
    if (v86 < 0)
    {
      operator delete(v85);
      if (v84 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v84 != 1)
    {
LABEL_34:
      v30 = v72;
      if (v72)
      {
LABEL_35:
        v31 = v73;
        v32 = v30;
        if (v73 != v30)
        {
          do
          {
            v31 = sub_3A9518(v31 - 1120);
          }

          while (v31 != v30);
          v32 = v72;
        }

        v73 = v30;
        operator delete(v32);
      }

LABEL_39:
      sub_570440(&v71);
      if (v70[1120] == 1)
      {
        sub_3A9518(v70);
      }

      goto LABEL_41;
    }

    if (v83 < 0)
    {
      operator delete(v82);
    }

    v26 = v80;
    if (v80)
    {
      v27 = v81;
      v28 = v80;
      if (v81 != v80)
      {
        do
        {
          v29 = *(v27 - 1);
          v27 -= 3;
          if (v29 < 0)
          {
            operator delete(*v27);
          }
        }

        while (v27 != v26);
        v28 = v80;
      }

      v81 = v26;
      operator delete(v28);
    }

    if (v79 < 0)
    {
      operator delete(v78);
      if ((v77 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v75 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }
    }

    else if ((v77 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v76);
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_60:
    operator delete(v74);
    v30 = v72;
    if (v72)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v68 = sub_69B32C(a2);
  v33 = sub_69B32C(a2);
  v34 = *(a1 + 2728) + *(v14 + 40);
  if (v34 >= v33)
  {
    v34 = v33;
  }

  v67 = v34;
  if (*(a1 + 4734) == 1)
  {
    v35 = sub_69B32C(a2);
    if (v95 <= 0xF && ((0xFEFFu >> v95) & 1) != 0)
    {
      v36 = *(a1 + qword_229A658[v95]);
    }

    else
    {
      v36 = 0x7FFFFFFFFFFFFFFELL;
    }

    v37 = *(v14 + 40);
    v38 = v37 + v36;
    if (v38 >= v35)
    {
      v39 = v35;
    }

    else
    {
      v39 = v38;
    }

    v40 = *(a1 + 2736);
    v41 = __OFSUB__(v37, v40);
    v42 = v37 - v40;
    if (v42 < 0 != v41)
    {
      v42 = 0;
    }

    v67 = v42;
    v68 = v39;
    *a5 = 1;
  }

  sub_5CBF60(a6, &v68);
  sub_5CBF8C(a6, &v67);
  if (v12)
  {
    v66 = *(a1 + 2836);
    v43 = (a1 + 2924);
  }

  else
  {
    v44 = *a6;
    v45 = 120;
    v46 = 116;
    switch(v44)
    {
      case 0:
      case 38:
      case 39:
      case 40:
      case 41:
        v45 = 156;
        goto LABEL_66;
      case 1:
      case 2:
      case 3:
      case 10:
      case 11:
      case 12:
        v45 = 144;
        goto LABEL_66;
      case 4:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 37:
        v45 = 112;
        goto LABEL_66;
      case 5:
        v66 = *(a1 + 2852);
        v47 = 172;
        goto LABEL_76;
      case 6:
        v66 = *(a1 + 2856);
        v47 = 176;
        goto LABEL_76;
      case 7:
        v66 = *(a1 + 2860);
        v47 = 180;
        goto LABEL_76;
      case 8:
        v66 = *(a1 + 2868);
        v47 = 188;
        goto LABEL_76;
      case 9:
        v66 = *(a1 + 2864);
        v47 = 184;
        goto LABEL_76;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 23:
      case 24:
        goto LABEL_66;
      case 22:
      case 32:
        goto LABEL_67;
      case 33:
      case 34:
        v45 = 148;
        goto LABEL_66;
      case 35:
      case 36:
        v45 = 152;
LABEL_66:
        v46 = v45;
LABEL_67:
        v66 = *(v16 + v46);
        if (v44 <= 0x29)
        {
          goto LABEL_68;
        }

        goto LABEL_75;
      default:
        v66 = *(a1 + 2884);
        if (v44 <= 0x29)
        {
LABEL_68:
          v47 = qword_229A508[v44];
        }

        else
        {
LABEL_75:
          v47 = 208;
        }

LABEL_76:
        v43 = (v16 + v47);
        break;
    }
  }

  v65 = *v43;
  sub_5CBFB8(a6, &v66);
  sub_5CBFC4(a6, &v65);
  if ((*a6 > 0x24 || ((1 << *a6) & 0x1FE0401EEELL) == 0) && (*(a1 + 4240) != 11 || *(a1 + 4272) != 11))
  {
    goto LABEL_86;
  }

  if (*(a1 + 4799) == 1)
  {
    if ((*(a1 + 3264) & 1) == 0)
    {
      goto LABEL_86;
    }

LABEL_83:
    sub_5B3138(a1, v94, a4, &v59);
    goto LABEL_87;
  }

  if (*(a1 + 3265) == 1)
  {
    goto LABEL_83;
  }

LABEL_86:
  sub_5B42F8(a1, v94, a4, &v59);
LABEL_87:
  sub_5A0314(a6 + 15, &v59);
  sub_53A868(&v64);
  sub_53A868(&v63);
  v48 = v61;
  if (v61)
  {
    v49 = v62;
    v50 = v61;
    if (v62 != v61)
    {
      do
      {
        v49 = sub_53A868(v49 - 160);
      }

      while (v49 != v48);
      v50 = v61;
    }

    v62 = v48;
    operator delete(v50);
  }

  v51 = v59;
  if (v59)
  {
    v52 = v60;
    v53 = v59;
    if (v60 != v59)
    {
      do
      {
        v52 = sub_53A868(v52 - 160);
      }

      while (v52 != v51);
      v53 = v59;
    }

    v60 = v51;
    operator delete(v53);
  }

  v54 = *(a6 + 32);
  *(a6 + 134) = *(a6 + 31);
  *(a6 + 138) = v54;
  a6[142] = a6[132];
  if (sub_5CC2D8(a6))
  {
    v55 = *(a1 + 3263);
  }

  else
  {
    v55 = 0;
  }

  *(a6 + 788) = v55 & 1;
  sub_5BBBF8(a1, a6);
  v56 = *(a6 + 89);
  v57 = *(a6 + 90);
  while (v56 != v57)
  {
    if (sub_5CBD4C(v56))
    {
      if ((*(v56 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v56 + 24) != 13)
      {
        sub_5CDAC8(a6, (v56 + 48));
      }
    }

    v56 += 64;
  }

  if (*(a6 + 748) == 1 && (a6[184] != -1 || a6[185] != -1))
  {
    sub_5CDAC8(a6, a6 + 184);
  }

  sub_59F958(a1, a6);
  sub_5A04B4(a1, a6);
  return sub_3A9518(v94);
}