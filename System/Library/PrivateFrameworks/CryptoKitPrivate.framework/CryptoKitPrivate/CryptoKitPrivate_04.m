uint64_t sub_1C0D2ADA8(uint64_t a1, unint64_t a2)
{
  v41[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCB0 != -1)
  {
    swift_once();
  }

  if (v10 != qword_1EBE72D88)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    goto LABEL_39;
  }

  v41[3] = MEMORY[0x1E6969080];
  v41[4] = MEMORY[0x1E6969078];
  v41[0] = a1;
  v41[1] = a2;
  v13 = __swift_project_boxed_opaque_existential_1(v41, MEMORY[0x1E6969080]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v39, 0, 14);
      sub_1C0CF6468(a1, a2);
      v17 = v39;
      v18 = v39;
      goto LABEL_36;
    }

    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_1C0CF6468(a1, a2);
    a2 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = sub_1C0D7812C();
    if (a1)
    {
      a2 = v15 & 0x3FFFFFFFFFFFFFFFLL;
      v22 = sub_1C0D7815C();
      v14 = v20 - v22;
      if (__OFSUB__(v20, v22))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      a1 += v14;
    }

    v23 = __OFSUB__(v21, v20);
    v24 = v21 - v20;
    if (!v23)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v39[0] = *v13;
    LOWORD(v39[1]) = v15;
    BYTE2(v39[1]) = BYTE2(v15);
    BYTE3(v39[1]) = BYTE3(v15);
    BYTE4(v39[1]) = BYTE4(v15);
    BYTE5(v39[1]) = BYTE5(v15);
    sub_1C0CF6468(a1, a2);
    v17 = v39;
    v18 = v39 + BYTE6(v15);
    goto LABEL_36;
  }

  v25 = v14;
  v26 = v14 >> 32;
  v24 = v26 - v25;
  if (v26 < v25)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1C0CF6468(a1, a2);
  a1 = sub_1C0D7812C();
  if (a1)
  {
    v27 = sub_1C0D7815C();
    if (!__OFSUB__(v25, v27))
    {
      a1 += v25 - v27;
      goto LABEL_28;
    }

LABEL_43:
    __break(1u);
  }

LABEL_28:
  v28 = sub_1C0D7814C();
  if (v28 >= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + a1);
  if (a1)
  {
    v18 = v30;
  }

  else
  {
    v18 = 0;
  }

  v17 = a1;
LABEL_36:
  sub_1C0D20850(v17, v18, v40);
  v31 = v40[0];
  v32 = v40[1];
  __swift_destroy_boxed_opaque_existential_1(v41);
  LODWORD(v41[0]) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v31, v32);
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v33 = sub_1C0D786BC();
  (*(v5 + 8))(v8, v4);
  v34 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v35 = sub_1C0D7830C();
  v4 = [v34 initFromPublicKeyBytes:v35 inGroup:v33 compressed:1 corecryptoError:v41];

  sub_1C0CF448C(v31, v32);
  if (!v4)
  {
    v4 = LODWORD(v41[0]);
    sub_1C0CF8DE0();
    swift_allocError();
    *v36 = v4;
    *(v36 + 4) = 0;
    swift_willThrow();
  }

  sub_1C0CF448C(v31, v32);
LABEL_39:
  v37 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C0D2B360(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1C0D2B420(a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C0D2F670(*(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server), *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 8), *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 16), a3, v5, v7, v9);
  v12 = v11;

  return v12;
}

void sub_1C0D2B420(uint64_t a1, unint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = v8;
    v13 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = v8;
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v12 = v8;
  v13 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCC0 != -1)
  {
    swift_once();
  }

  if (v13 != qword_1EBE72D98)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v22 = 6;
    swift_willThrow();
    goto LABEL_46;
  }

  v92 = MEMORY[0x1E6969080];
  v93 = MEMORY[0x1E6969078];
  v90 = a1;
  v91 = a2;
  v16 = __swift_project_boxed_opaque_existential_1(&v90, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v19)
    {
      v88[0] = *v16;
      LOWORD(v88[1]) = v18;
      BYTE2(v88[1]) = BYTE2(v18);
      BYTE3(v88[1]) = BYTE3(v18);
      BYTE4(v88[1]) = BYTE4(v18);
      BYTE5(v88[1]) = BYTE5(v18);
      sub_1C0CF6468(a1, a2);
      v20 = v88;
      v21 = v88 + BYTE6(v18);
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  if (v19 != 2)
  {
    memset(v88, 0, 14);
    sub_1C0CF6468(a1, a2);
    v20 = v88;
    v21 = v88;
    goto LABEL_36;
  }

  v23 = *(v17 + 16);
  v24 = *(v17 + 24);
  sub_1C0CF6468(a1, a2);
  a2 = v18 & 0x3FFFFFFFFFFFFFFFLL;
  a1 = sub_1C0D7812C();
  if (a1)
  {
    a2 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = sub_1C0D7815C();
    v17 = v23 - v25;
    if (__OFSUB__(v23, v25))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    a1 += v17;
  }

  v26 = __OFSUB__(v24, v23);
  v27 = v24 - v23;
  if (v26)
  {
    __break(1u);
LABEL_24:
    v28 = v17;
    v29 = v17 >> 32;
    v27 = v29 - v28;
    if (v29 < v28)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    sub_1C0CF6468(a1, a2);
    a1 = sub_1C0D7812C();
    if (a1)
    {
      v30 = sub_1C0D7815C();
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_53;
      }

      a1 += v28 - v30;
    }
  }

  v31 = sub_1C0D7814C();
  if (v31 >= v27)
  {
    v32 = v27;
  }

  else
  {
    v32 = v31;
  }

  v33 = (v32 + a1);
  if (a1)
  {
    v21 = v33;
  }

  else
  {
    v21 = 0;
  }

  v20 = a1;
LABEL_36:
  sub_1C0D20850(v20, v21, v89);
  v34 = v89[0];
  v35 = v89[1];
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v94 = v34;
  v95 = v35;
  v36 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v37 = sub_1C0D786BC();
  v39 = *(v6 + 8);
  v38 = v6 + 8;
  v40 = v12;
  v87 = v39;
  v39(v10, v12);
  v85 = v36;
  v41 = [v36 groupOrderByteCountForCP_];
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = v41;
  v82 = v2;
  v43 = v94;
  v44 = v95;
  sub_1C0CF6468(v94, v95);
  sub_1C0D01560(v42, v43, v44, &v90);
  v45 = v38;
  v47 = v90;
  v46 = v91;
  sub_1C0D22268(v42);
  LODWORD(v90) = 0;
  sub_1C0CF6468(v47, v46);
  sub_1C0D786EC();
  v48 = sub_1C0D786BC();
  v86 = v45;
  v87(v10, v40);
  v49 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v50 = sub_1C0D7830C();
  v51 = [v49 initWithData:v50 inGroup:v48 reduction:0 corecryptoError:&v90];

  sub_1C0CF448C(v47, v46);
  if (!v51)
  {
    v75 = v90;
    sub_1C0CF8DE0();
    swift_allocError();
    *v76 = v75;
    *(v76 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v47, v46);
    sub_1C0CF448C(v94, v95);
    goto LABEL_46;
  }

  sub_1C0CF448C(v47, v46);
  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  v87(v10, v40);
  v53 = [v85 compressedx962PointByteCountForCurveParameters_];
  if ((v53 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v54 = v53;
  v83 = v51;
  v55 = v94;
  v56 = v95;
  sub_1C0CF6468(v94, v95);
  sub_1C0D01560(v54, v55, v56, &v90);
  v58 = v90;
  v57 = v91;
  sub_1C0D22268(v54);
  LODWORD(v90) = 0;
  sub_1C0CF6468(v58, v57);
  sub_1C0D786EC();
  v59 = sub_1C0D786BC();
  v87(v10, v40);
  v60 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v61 = sub_1C0D7830C();
  v84 = v40;
  v62 = v61;
  v63 = [v60 initFromPublicKeyBytes:v61 inGroup:v59 compressed:1 corecryptoError:&v90];

  sub_1C0CF448C(v58, v57);
  if (!v63)
  {
    v77 = v90;
    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v77;
    *(v78 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v58, v57);
    sub_1C0CF448C(v94, v95);

    goto LABEL_46;
  }

  sub_1C0CF448C(v58, v57);
  sub_1C0D786EC();
  v64 = sub_1C0D786BC();
  v87(v10, v84);
  v65 = [v85 compressedx962PointByteCountForCurveParameters_];
  if ((v65 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v66 = v65;
  v67 = v94;
  v68 = v95;
  sub_1C0CF6468(v94, v95);
  sub_1C0D01560(v66, v67, v68, &v90);
  v69 = v90;
  v70 = v91;
  sub_1C0D22268(v66);
  LODWORD(v90) = 0;
  sub_1C0CF6468(v69, v70);
  sub_1C0D786EC();
  v71 = sub_1C0D786BC();
  v87(v10, v84);
  v72 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v73 = sub_1C0D7830C();
  v74 = [v72 initFromPublicKeyBytes:v73 inGroup:v71 compressed:1 corecryptoError:&v90];

  sub_1C0CF448C(v69, v70);
  if (v74)
  {
    sub_1C0CF448C(v69, v70);
    sub_1C0CF448C(v94, v95);
  }

  else
  {
    v79 = v90;
    sub_1C0CF8DE0();
    swift_allocError();
    *v80 = v79;
    *(v80 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v69, v70);
    sub_1C0CF448C(v94, v95);
  }

LABEL_46:
  v81 = *MEMORY[0x1E69E9840];
}

id sub_1C0D2BE44(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C0D2BEDC(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = [a1 sub:a2 corecryptoError:&v5];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003FLL, 0x80000001C0D80820);
    v4 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v4);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D2BFF8(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = [a1 add:a2 corecryptoError:&v5];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v4 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v4);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D2C114(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0D2C16C(a1, a2);
}

id sub_1C0D2C16C(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = [a1 sub:a2 corecryptoError:&v5];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000040, 0x80000001C0D80CE0);
    v4 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v4);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D2C288(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v7 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = [v7 groupOrderByteCountForCP_];
  if (v10 < 0)
  {
    __break(1u);
  }

  v11 = sub_1C0D053E8(0, v10);
  v13 = v12;
  LODWORD(v26[0]) = 0;
  sub_1C0CF6468(v11, v12);
  sub_1C0D786EC();
  v14 = sub_1C0D786BC();
  v9(v6, v2);
  v15 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v16 = sub_1C0D7830C();
  v17 = [v15 initWithData:v16 inGroup:v14 reduction:1 corecryptoError:v26];

  sub_1C0CF448C(v11, v13);
  if (v17)
  {
    sub_1C0CF448C(v11, v13);
    v18 = [v17 sub:a1 corecryptoError:&v27];
    if (v18)
    {
      v19 = v18;

      v20 = *MEMORY[0x1E69E9840];
      return v19;
    }
  }

  else
  {
    v22 = v26[0];
    sub_1C0CF8DE0();
    swift_allocError();
    *v23 = v22;
    *(v23 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v11, v13);
    swift_unexpectedError();
    __break(1u);
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80D30);
  v25[1] = v27;
  v24 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v24);

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

void *sub_1C0D2C610(void *a1, unint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = a1[2];
    v12 = a1[3];
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCC8 != -1)
  {
    swift_once();
  }

  if (v11 != qword_1EBE72DA0)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    goto LABEL_50;
  }

  v83 = MEMORY[0x1E6969080];
  v84 = MEMORY[0x1E6969078];
  v81 = a1;
  v82 = a2;
  v14 = __swift_project_boxed_opaque_existential_1(&v81, MEMORY[0x1E6969080]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v79, 0, 14);
      sub_1C0CF6468(a1, a2);
      v18 = v79;
      goto LABEL_42;
    }

    v78 = v6;
    v20 = v5;
    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    sub_1C0CF6468(a1, a2);
    v23 = sub_1C0D7812C();
    if (v23)
    {
      v24 = sub_1C0D7815C();
      if (__OFSUB__(v21, v24))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v23 += v21 - v24;
    }

    if (__OFSUB__(v22, v21))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v25 = sub_1C0D7814C();
    if (v25 >= v22 - v21)
    {
      v26 = v22 - v21;
    }

    else
    {
      v26 = v25;
    }

    v27 = &v23[v26];
    if (v23)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    sub_1C0D20850(v23, v28, v80);
    v75 = v2;
    v5 = v20;
LABEL_40:
    v6 = v78;
    goto LABEL_43;
  }

  if (v17)
  {
    v78 = v6;
    v29 = v5;
    v30 = v15;
    v31 = v15 >> 32;
    v32 = v31 - v30;
    if (v31 < v30)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_1C0CF6468(a1, a2);
    v33 = sub_1C0D7812C();
    if (v33)
    {
      v34 = sub_1C0D7815C();
      if (__OFSUB__(v30, v34))
      {
        goto LABEL_57;
      }

      v33 += v30 - v34;
    }

    v5 = v29;
    v35 = sub_1C0D7814C();
    if (v35 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v35;
    }

    v37 = &v33[v36];
    if (v33)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    sub_1C0D20850(v33, v38, v80);
    v75 = v2;
    goto LABEL_40;
  }

  v79[0] = *v14;
  LOWORD(v79[1]) = v16;
  BYTE2(v79[1]) = BYTE2(v16);
  BYTE3(v79[1]) = BYTE3(v16);
  BYTE4(v79[1]) = BYTE4(v16);
  BYTE5(v79[1]) = BYTE5(v16);
  sub_1C0CF6468(a1, a2);
  v18 = v79 + BYTE6(v16);
LABEL_42:
  sub_1C0D20850(v79, v18, v80);
  v75 = v2;
LABEL_43:
  v39 = v80[0];
  v40 = v80[1];
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v85 = v39;
  v86 = v40;
  v41 = objc_opt_self();
  sub_1C0D7884C();
  v77 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v42 = sub_1C0D786BC();
  v45 = *(v6 + 8);
  v44 = v6 + 8;
  v43 = v45;
  v45(v9, v5);
  v46 = [v41 groupOrderByteCountForCP_];
  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v47 = v46;
  v76 = v41;
  v48 = v85;
  v49 = v86;
  sub_1C0CF6468(v85, v86);
  sub_1C0D01560(v47, v48, v49, &v81);
  v51 = v81;
  v50 = v82;
  sub_1C0D22268(v47);
  LODWORD(v81) = 0;
  sub_1C0CF6468(v51, v50);
  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  v43(v9, v5);
  v53 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v54 = sub_1C0D7830C();
  v78 = v44;
  v55 = v5;
  v56 = v54;
  a1 = [v53 initWithData:v54 inGroup:v52 reduction:0 corecryptoError:&v81];

  sub_1C0CF448C(v51, v50);
  if (!a1)
  {
    v69 = v81;
    sub_1C0CF8DE0();
    swift_allocError();
    *v70 = v69;
    *(v70 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v51, v50);
    sub_1C0CF448C(v85, v86);
    goto LABEL_50;
  }

  sub_1C0CF448C(v51, v50);
  sub_1C0D786EC();
  v57 = sub_1C0D786BC();
  v43(v9, v55);
  v58 = [v76 groupOrderByteCountForCP_];
  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v59 = v58;
  v60 = v85;
  v61 = v86;
  sub_1C0CF6468(v85, v86);
  sub_1C0D01560(v59, v60, v61, &v81);
  v62 = v81;
  v63 = v82;
  sub_1C0D22268(v59);
  LODWORD(v81) = 0;
  sub_1C0CF6468(v62, v63);
  sub_1C0D786EC();
  v64 = sub_1C0D786BC();
  v43(v9, v55);
  v65 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v66 = sub_1C0D7830C();
  v67 = [v65 initWithData:v66 inGroup:v64 reduction:0 corecryptoError:&v81];

  sub_1C0CF448C(v62, v63);
  if (v67)
  {
    sub_1C0CF448C(v62, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D7B0, &qword_1C0D7C8E8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1C0D7B690;
    *(v68 + 32) = v67;
    sub_1C0CF448C(v85, v86);
  }

  else
  {
    v71 = v81;
    sub_1C0CF8DE0();
    swift_allocError();
    *v72 = v71;
    *(v72 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v62, v63);
    sub_1C0CF448C(v85, v86);
  }

LABEL_50:
  v73 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1C0D2CD8C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v178 = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = MEMORY[0x1E6969080];
  v175 = MEMORY[0x1E6969078];
  v172 = a1;
  v173 = a2;
  v165 = a2;
  v12 = __swift_project_boxed_opaque_existential_1(&v172, MEMORY[0x1E6969080]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  v163 = a1;
  v156 = a3;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v170[0] = v13;
      LOWORD(v170[1]) = v14;
      BYTE2(v170[1]) = BYTE2(v14);
      BYTE3(v170[1]) = BYTE3(v14);
      BYTE4(v170[1]) = BYTE4(v14);
      BYTE5(v170[1]) = BYTE5(v14);
      sub_1C0CF6468(a1, v165);
      v16 = v170;
      v17 = v170 + BYTE6(v14);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v15 != 2)
  {
    memset(v170, 0, 14);
    sub_1C0CF6468(a1, v165);
    v16 = v170;
    v17 = v170;
    goto LABEL_23;
  }

  v18 = *(v13 + 16);
  v19 = *(v13 + 24);
  sub_1C0CF6468(a1, v165);
  a1 = sub_1C0D7812C();
  if (a1)
  {
    v20 = sub_1C0D7815C();
    v13 = v18 - v20;
    if (__OFSUB__(v18, v20))
    {
      goto LABEL_103;
    }

    a1 += v13;
  }

  v21 = __OFSUB__(v19, v18);
  v22 = v19 - v18;
  if (v21)
  {
    __break(1u);
LABEL_11:
    v23 = v13;
    v24 = v13 >> 32;
    v22 = v24 - v23;
    if (v24 < v23)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_1C0CF6468(a1, v165);
    a1 = sub_1C0D7812C();
    if (a1)
    {
      v25 = sub_1C0D7815C();
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_104;
      }

      a1 += v23 - v25;
    }
  }

  v26 = sub_1C0D7814C();
  if (v26 >= v22)
  {
    v27 = v22;
  }

  else
  {
    v27 = v26;
  }

  v28 = (v27 + a1);
  if (a1)
  {
    v17 = v28;
  }

  else
  {
    v17 = 0;
  }

  v16 = a1;
LABEL_23:
  sub_1C0D20850(v16, v17, v171);
  v155 = v3;
  v29 = v171[0];
  v30 = v171[1];
  __swift_destroy_boxed_opaque_existential_1(&v172);
  v176 = v29;
  v177 = v30;
  v31 = objc_opt_self();
  v32 = sub_1C0D7884C();
  v33 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v34 = sub_1C0D786BC();
  v37 = *(v8 + 8);
  v36 = v8 + 8;
  v35 = v37;
  v37(v11, v7);
  v168 = v31;
  v38 = [v31 compressedx962PointByteCountForCurveParameters_];
  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v39 = v36;
  v40 = v7;
  v41 = v38;
  v42 = v176;
  v43 = v177;
  v169 = v39;
  sub_1C0CF6468(v176, v177);
  sub_1C0D01560(v41, v42, v43, &v172);
  v45 = v172;
  v44 = v173;
  sub_1C0D22268(v41);
  LODWORD(v172) = 0;
  sub_1C0CF6468(v45, v44);
  v164 = v32;
  v167 = v33;
  sub_1C0D786EC();
  v46 = sub_1C0D786BC();
  v166 = v40;
  v47 = v40;
  v48 = v35;
  v35(v11, v47);
  v49 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v50 = sub_1C0D7830C();
  v51 = [v49 initFromPublicKeyBytes:v50 inGroup:v46 compressed:1 corecryptoError:&v172];

  sub_1C0CF448C(v45, v44);
  if (!v51)
  {
    v55 = v172;
    sub_1C0CF8DE0();
    swift_allocError();
    *v56 = v55;
    *(v56 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v45, v44);
LABEL_65:
    sub_1C0CF448C(v176, v177);
    goto LABEL_66;
  }

  sub_1C0CF448C(v45, v44);
  v52 = v165 >> 62;
  v157 = v51;
  if ((v165 >> 62) <= 1)
  {
    v53 = v166;
    if (!v52)
    {
      v54 = BYTE6(v165);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v53 = v166;
  if (v52 != 2)
  {
    v54 = 0;
    goto LABEL_36;
  }

  v58 = *(v163 + 16);
  v57 = *(v163 + 24);
  v54 = v57 - v58;
  if (__OFSUB__(v57, v58))
  {
    __break(1u);
LABEL_33:
    if (__OFSUB__(HIDWORD(v163), v163))
    {
      goto LABEL_105;
    }

    v54 = HIDWORD(v163) - v163;
  }

LABEL_36:
  sub_1C0D786EC();
  v59 = sub_1C0D786BC();
  v48(v11, v53);
  v60 = [v168 compressedx962PointByteCountForCurveParameters_];
  if ((v60 & 0x8000000000000000) != 0)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v61 = v54 - v60;
  if (__OFSUB__(v54, v60))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_1C0D786EC();
  v62 = sub_1C0D786BC();
  v48(v11, v53);
  v63 = [v168 groupOrderByteCountForCP_];
  if (v63 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v64 = 3 * v63;
  if ((v63 * 3) >> 64 != (3 * v63) >> 63)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v21 = __OFSUB__(v61, v64);
  v65 = v61 - v64;
  if (v21)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  sub_1C0D786EC();
  v66 = sub_1C0D786BC();
  v48(v11, v53);
  v67 = [v168 groupOrderByteCountForCP_];
  if (v67 < 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v67 + 0x4000000000000000 < 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!v67)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v52 <= 1)
  {
    if (!v52)
    {
      v68 = BYTE6(v165);
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v52 != 2)
  {
    v68 = 0;
    goto LABEL_54;
  }

  v70 = *(v163 + 16);
  v69 = *(v163 + 24);
  v68 = v69 - v70;
  if (__OFSUB__(v69, v70))
  {
    __break(1u);
LABEL_51:
    if (__OFSUB__(HIDWORD(v163), v163))
    {
      goto LABEL_106;
    }

    v68 = HIDWORD(v163) - v163;
  }

LABEL_54:
  v71 = v65 / (2 * v67);
  if (v68 != sub_1C0D3ACBC(v71))
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v88 = 1;
    swift_willThrow();

    goto LABEL_65;
  }

  v171[0] = MEMORY[0x1E69E7CC0];
  v170[0] = MEMORY[0x1E69E7CC0];
  if (v71 < 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v160 = v71;
  if (!v71)
  {
    v163 = MEMORY[0x1E69E7CC0];
    v161 = MEMORY[0x1E69E7CC0];
    goto LABEL_77;
  }

  v163 = MEMORY[0x1E69E7CC0];
  v72 = v71;
  do
  {
    sub_1C0D786EC();
    v73 = sub_1C0D786BC();
    v48(v11, v53);
    v74 = [v168 groupOrderByteCountForCP_];
    if ((v74 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v75 = v53;
    v76 = v74;
    v165 = v72;
    v77 = v176;
    v78 = v177;
    sub_1C0CF6468(v176, v177);
    sub_1C0D01560(v76, v77, v78, &v172);
    v79 = v172;
    v80 = v173;
    sub_1C0D22268(v76);
    LODWORD(v172) = 0;
    sub_1C0CF6468(v79, v80);
    sub_1C0D786EC();
    v81 = sub_1C0D786BC();
    v48(v11, v75);
    v82 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v83 = sub_1C0D7830C();
    v84 = [v82 initWithData:v83 inGroup:v81 reduction:0 corecryptoError:&v172];

    sub_1C0CF448C(v79, v80);
    if (!v84)
    {
      v90 = v172;
      sub_1C0CF8DE0();
      swift_allocError();
      *v91 = v90;
      *(v91 + 4) = 0;
      swift_willThrow();

      sub_1C0CF448C(v79, v80);
      sub_1C0CF448C(v176, v177);

      goto LABEL_66;
    }

    v85 = sub_1C0CF448C(v79, v80);
    MEMORY[0x1C68E3BD0](v85);
    v86 = v165;
    if (*(v171[0] + 16) >= *(v171[0] + 24) >> 1)
    {
      v87 = *(v171[0] + 16);
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();
    v163 = v171[0];
    v72 = v86 - 1;
    v53 = v166;
  }

  while (v72);
  v92 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  v158 = v11;
  v159 = v48;
  while (1)
  {
    if (__OFADD__(v92, 1))
    {
      goto LABEL_89;
    }

    v162 = v92 + 1;
    v165 = v92;
    sub_1C0D786EC();
    v94 = sub_1C0D786BC();
    v48(v11, v53);
    v95 = [v168 groupOrderByteCountForCP_];
    if ((v95 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    v96 = v53;
    v97 = v95;
    v161 = v93;
    v98 = v176;
    v99 = v177;
    sub_1C0CF6468(v176, v177);
    sub_1C0D01560(v97, v98, v99, &v172);
    v101 = v172;
    v100 = v173;
    sub_1C0D22268(v97);
    LODWORD(v172) = 0;
    sub_1C0CF6468(v101, v100);
    sub_1C0D786EC();
    v102 = sub_1C0D786BC();
    v103 = v11;
    v104 = v159;
    v159(v103, v96);
    v105 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v106 = sub_1C0D7830C();
    v107 = [v105 initWithData:v106 inGroup:v102 reduction:0 corecryptoError:&v172];

    sub_1C0CF448C(v101, v100);
    if (!v107)
    {
      break;
    }

    v48 = v104;
    v108 = sub_1C0CF448C(v101, v100);
    MEMORY[0x1C68E3BD0](v108);
    if (*(v170[0] + 16) >= *(v170[0] + 24) >> 1)
    {
      v109 = *(v170[0] + 16);
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();
    v93 = v170[0];
    v53 = v166;
    v92 = v165 + 1;
    v11 = v158;
    if (v162 == v160)
    {
      v161 = v170[0];
LABEL_77:
      sub_1C0D786EC();
      v112 = sub_1C0D786BC();
      v48(v11, v53);
      v113 = [v168 groupOrderByteCountForCP_];
      if ((v113 & 0x8000000000000000) == 0)
      {
        v114 = v113;
        v115 = v176;
        v116 = v177;
        sub_1C0CF6468(v176, v177);
        sub_1C0D01560(v114, v115, v116, &v172);
        v117 = v172;
        v118 = v173;
        sub_1C0D22268(v114);
        LODWORD(v172) = 0;
        sub_1C0CF6468(v117, v118);
        sub_1C0D786EC();
        v119 = sub_1C0D786BC();
        v48(v11, v166);
        v120 = objc_allocWithZone(MEMORY[0x1E6999650]);
        v121 = sub_1C0D7830C();
        v122 = [v120 initWithData:v121 inGroup:v119 reduction:0 corecryptoError:&v172];

        sub_1C0CF448C(v117, v118);
        if (!v122)
        {
          v148 = v172;
          sub_1C0CF8DE0();
          swift_allocError();
          *v149 = v148;
          *(v149 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v117, v118);
          sub_1C0CF448C(v176, v177);

          v150 = v157;
          goto LABEL_87;
        }

        v167 = v122;
        sub_1C0CF448C(v117, v118);
        sub_1C0D786EC();
        v123 = sub_1C0D786BC();
        v48(v11, v166);
        v124 = [v168 groupOrderByteCountForCP_];
        if ((v124 & 0x8000000000000000) == 0)
        {
          v125 = v124;
          v126 = v176;
          v127 = v177;
          sub_1C0CF6468(v176, v177);
          sub_1C0D01560(v125, v126, v127, &v172);
          v128 = v172;
          v129 = v173;
          sub_1C0D22268(v125);
          LODWORD(v172) = 0;
          sub_1C0CF6468(v128, v129);
          sub_1C0D786EC();
          v130 = sub_1C0D786BC();
          v48(v11, v166);
          v131 = objc_allocWithZone(MEMORY[0x1E6999650]);
          v132 = sub_1C0D7830C();
          v133 = [v131 initWithData:v132 inGroup:v130 reduction:0 corecryptoError:&v172];

          sub_1C0CF448C(v128, v129);
          if (!v133)
          {
            v151 = v172;
            sub_1C0CF8DE0();
            swift_allocError();
            *v152 = v151;
            *(v152 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v128, v129);
            sub_1C0CF448C(v176, v177);

            v150 = v167;
            goto LABEL_87;
          }

          v165 = v133;
          sub_1C0CF448C(v128, v129);
          sub_1C0D786EC();
          v134 = sub_1C0D786BC();
          v48(v11, v166);
          v135 = [v168 groupOrderByteCountForCP_];
          if ((v135 & 0x8000000000000000) == 0)
          {
            v136 = v135;
            v137 = v176;
            v138 = v177;
            sub_1C0CF6468(v176, v177);
            sub_1C0D01560(v136, v137, v138, &v172);
            v139 = v172;
            v140 = v173;
            sub_1C0D22268(v136);
            LODWORD(v172) = 0;
            sub_1C0CF6468(v139, v140);
            sub_1C0D786EC();
            v141 = sub_1C0D786BC();
            v48(v11, v166);
            v142 = objc_allocWithZone(MEMORY[0x1E6999650]);
            v143 = sub_1C0D7830C();
            v144 = [v142 initWithData:v143 inGroup:v141 reduction:0 corecryptoError:&v172];

            sub_1C0CF448C(v139, v140);
            if (v144)
            {
              sub_1C0CF448C(v139, v140);
              sub_1C0CF448C(v176, v177);
              v145 = v156;
              v146 = v163;
              *v156 = v157;
              v145[1] = v146;
              v147 = v167;
              v145[2] = v161;
              v145[3] = v147;
              v145[4] = v165;
              v145[5] = v144;
              v145[6] = v160;
              goto LABEL_66;
            }

            v153 = v172;
            sub_1C0CF8DE0();
            swift_allocError();
            *v154 = v153;
            *(v154 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v139, v140);
            sub_1C0CF448C(v176, v177);

            v150 = v165;
LABEL_87:

            goto LABEL_66;
          }

LABEL_108:
          __break(1u);
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  v110 = v172;
  sub_1C0CF8DE0();
  swift_allocError();
  *v111 = v110;
  *(v111 + 4) = 0;
  swift_willThrow();

  sub_1C0CF448C(v101, v100);
  sub_1C0CF448C(v176, v177);

LABEL_66:
  v89 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C0D2DEAC(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = *(v1[2] + 16);
  if (v4 != *(v1[3] + 16) || (v5 = v1[4], v6 = v1[5], v7 = *(v5 + 16), v7 != *(v6 + 16)))
  {
    sub_1C0D30124();
    swift_allocError();
    v55 = 2;
    goto LABEL_41;
  }

  if (*(a1 + 16) != v4)
  {
    sub_1C0D30124();
    swift_allocError();
    v55 = 1;
LABEL_41:
    *v54 = v55;
LABEL_42:
    swift_willThrow();
    goto LABEL_43;
  }

  v73 = v1[2];
  v8 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v9 = v1[6];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    v84 = a1 + 32;
    v87 = v5 + 32;
    v81 = v6 + 32;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v14 = (v12 + 16 * v11);
      v15 = *v14;
      if (*v14 >= v7)
      {
LABEL_45:

        sub_1C0D30124();
        swift_allocError();
        *v58 = 0;
        goto LABEL_42;
      }

      v85 = v13;
      v16 = v14[1];
      v17 = v11 + 1;
      v18 = v16[2];
      v19 = v16 + 5;
      v20 = v18 + 1;
      while (--v20)
      {
        v21 = *(v19 - 1);
        v22 = *v19;
        v19 += 2;
        if (v21 >= v4 || v22 >= v7)
        {
          goto LABEL_45;
        }
      }

      if (!v18)
      {
        goto LABEL_61;
      }

      v24 = v16[4];
      if (v24 >= v4)
      {
        goto LABEL_62;
      }

      v74 = v15;
      v75 = v12;
      v76 = v17;
      v77 = v10;
      v78 = v5;
      v79 = a1;
      v80 = v2;
      v25 = v16[5];
      v86 = v7;
      if (v25 >= v7)
      {
        goto LABEL_63;
      }

      v26 = *(v84 + 8 * v24);
      v27 = *(v87 + 8 * v25);
      sub_1C0D78BFC();
      v28 = v26;
      v29 = v27;
      v30 = sub_1C0D13834(v28, v29);

      if (v16[2] < v18)
      {
        goto LABEL_64;
      }

      v31 = v18 - 1;
      if (v18 != 1)
      {
        v72 = v30;
        v82 = v1;
        v92 = v8;
        sub_1C0D78E3C();
        v32 = v16 + 7;
        while (1)
        {
          v33 = *(v32 - 1);
          if (v33 >= v4)
          {
            break;
          }

          if (*v32 >= v86)
          {
            goto LABEL_59;
          }

          v34 = *(v84 + 8 * v33);
          v35 = *(v87 + 8 * *v32);
          v91 = 0;
          v36 = v34;
          v37 = v35;
          if (![v37 multiply:v36 corecryptoError:&v91])
          {
            goto LABEL_68;
          }

          v32 += 2;

          sub_1C0D78E0C();
          v38 = *(v92 + 16);
          sub_1C0D78E4C();
          sub_1C0D78E5C();
          sub_1C0D78E1C();
          if (!--v31)
          {

            v39 = v92;
            v1 = v82;
            v30 = v72;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      v39 = v8;
LABEL_27:
      v40 = *(v39 + 16);
      v41 = v30;
      v83 = v41;
      if (v40)
      {
        break;
      }

LABEL_32:

      v47 = v41;
      MEMORY[0x1C68E3BD0]();
      if (*(v93 + 16) >= *(v93 + 24) >> 1)
      {
        v53 = *(v93 + 16);
        sub_1C0D78C0C();
      }

      sub_1C0D78C3C();
      v48 = v93;
      v49 = (v81 + 16 * v74);
      v89 = *v49;
      v90 = v49[1];
      swift_bridgeObjectRetain_n();
      MEMORY[0x1C68E3B00](0x646E696C622DLL, 0xE600000000000000);

      v13 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1C0CF49E8(0, *(v85 + 2) + 1, 1, v85);
      }

      v51 = *(v13 + 2);
      v50 = *(v13 + 3);
      v3 = (v51 + 1);
      if (v51 >= v50 >> 1)
      {
        v13 = sub_1C0CF49E8((v50 > 1), v51 + 1, 1, v13);
      }

      *(v13 + 2) = v3;
      v52 = &v13[16 * v51];
      *(v52 + 4) = v89;
      *(v52 + 5) = v90;
      v11 = v76;
      v10 = v77;
      a1 = v79;
      v2 = v80;
      v8 = MEMORY[0x1E69E7CC0];
      v5 = v78;
      v7 = v86;
      v12 = v75;
      if (v76 == v77)
      {
        goto LABEL_47;
      }
    }

    v42 = 0;
    v43 = v41;
    while (1)
    {
      if (v42 >= *(v39 + 16))
      {
        goto LABEL_60;
      }

      v44 = *(v39 + 32 + 8 * v42);
      LODWORD(v92) = 0;
      v45 = v44;
      v46 = [v43 add:v45 corecryptoError:&v92];
      if (!v46)
      {
        break;
      }

      v41 = v46;

      ++v42;
      v43 = v41;
      if (v40 == v42)
      {
        goto LABEL_32;
      }
    }

    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v91 = v92;
    v69 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v69);

    goto LABEL_69;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v59 = a1;
  sub_1C0D2EDD0(*v1, v1[1], v5, v48);
  if (v2)
  {

LABEL_43:
    v56 = *MEMORY[0x1E69E9840];
    return v3;
  }

  v3 = v60;

  v92 = v8;
  if (!v4)
  {
    goto LABEL_43;
  }

  v61 = (v73 + 32);
  v62 = (v59 + 32);
  while (1)
  {
    v63 = *v61;
    v64 = *v62;
    v91 = 0;
    v65 = v63;
    v66 = v64;
    v67 = [v3 multiply:v65 corecryptoError:&v91];
    if (!v67)
    {
      break;
    }

    v68 = v67;
    v91 = 0;
    if (![v66 sub:v67 corecryptoError:&v91])
    {
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD000000000000040, 0x80000001C0D80CE0);
      v70 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v70);

      goto LABEL_69;
    }

    MEMORY[0x1C68E3BD0]();
    if (*(v92 + 16) >= *(v92 + 24) >> 1)
    {
      v88 = *(v92 + 16);
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();

    ++v62;
    ++v61;
    if (!--v4)
    {
      goto LABEL_43;
    }
  }

LABEL_68:
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
  v71 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v71);

LABEL_69:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

void sub_1C0D2E720(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = sub_1C0D13834(*a1, a2);

  v14 = sub_1C0D13834(v10, a3);
  v36 = sub_1C0D1388C(v13, v14);

  v15 = sub_1C0D13834(v8, a2);
  v16 = sub_1C0D13834(v12, a3);

  v17 = sub_1C0D1388C(v15, v16);
  v18 = sub_1C0D13834(v11, a2);
  v19 = sub_1C0D78F2C();
  strcpy(&v37, "ATHMV1-P256-");
  BYTE13(v37) = 0;
  HIWORD(v37) = -5120;
  MEMORY[0x1C68E3B00](v19);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](45, 0xE100000000000000);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](a4, a5);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0x696D6D6F4379654BLL, 0xEE0073746E656D74);

  *&v38 = MEMORY[0x1E69E7CC0];
  *(&v38 + 1) = MEMORY[0x1E69E7CC0];
  *&v39 = MEMORY[0x1E69E7CC0];
  *(&v39 + 1) = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v20 = sub_1C0D21940(122, 0xE100000000000000, v11);

  v21 = sub_1C0D2EAB0(0x6F746172656E6567, 0xEA00000000004772, a2, &v37);
  v22 = sub_1C0D2EAB0(90, 0xE100000000000000, v18, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0D7B690;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  v24 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1C0CF4AF4(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1C0CF4AF4((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = &v24[2 * v26];
  v27[4] = v22;
  v27[5] = v23;
  v40 = v24;
  v42 = v24;
  v41[0] = v37;
  v41[1] = v38;
  v41[2] = v39;
  v28 = v43;
  v29 = sub_1C0D21A5C();
  if (v28)
  {

    sub_1C0D13578(v41, &qword_1EBE6D4E0, &qword_1C0D7C038);
  }

  else
  {
    v31 = v29;
    v32 = v30;
    sub_1C0D13578(v41, &qword_1EBE6D4E0, &qword_1C0D7C038);
    *a6 = v36;
    a6[1] = v17;
    a6[2] = v18;
    a6[3] = v31;
    a6[4] = v32;
  }
}

uint64_t sub_1C0D2EAB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D478, &unk_1C0D7C850);
  v19[4] = sub_1C0D30178();
  v19[0] = a3;
  v8 = *(a4 + 40);
  v9 = a3;
  sub_1C0D78BFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C0CF49E8(0, *(v8 + 2) + 1, 1, v8);
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C0CF49E8((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(a4 + 40) = v8;
  sub_1C0D301DC(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D7A8, &qword_1C0D7C8E0);
  v13 = swift_dynamicCast();
  MEMORY[0x1C68E3BD0](v13);
  v14 = *(a4 + 32);
  if (*(v14 + 16) >= *(v14 + 24) >> 1)
  {
    v17 = *(v14 + 16);
    sub_1C0D78C0C();
  }

  sub_1C0D78C3C();
  v15 = *(*(a4 + 32) + 16) - 1;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_1C0D2EC40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D478, &unk_1C0D7C850);
  v19[4] = sub_1C0D30178();
  v19[0] = a3;
  v8 = *(a4 + 32);
  v9 = a3;
  sub_1C0D78BFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C0CF49E8(0, *(v8 + 2) + 1, 1, v8);
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1C0CF49E8((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(a4 + 32) = v8;
  sub_1C0D301DC(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D7A8, &qword_1C0D7C8E0);
  v13 = swift_dynamicCast();
  MEMORY[0x1C68E3BD0](v13);
  v14 = *(a4 + 24);
  if (*(v14 + 16) >= *(v14 + 24) >> 1)
  {
    v17 = *(v14 + 16);
    sub_1C0D78C0C();
  }

  sub_1C0D78C3C();
  v15 = *(*(a4 + 24) + 16) - 1;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

void sub_1C0D2EDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v56 = xmmword_1C0D7BAB0;
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = (a3 + 32);
    while (1)
    {
      v15 = *v5;
      v16 = [v15 serializedPublicKey_];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = sub_1C0D7832C();
      v20 = v19;

      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v21 == 2)
        {
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);
          v6 = v22 - v23;
          if (__OFSUB__(v22, v23))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            break;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else if (v21)
      {
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_30;
        }

        v6 = HIDWORD(v18) - v18;
      }

      else
      {
        v6 = BYTE6(v20);
      }

      v7 = sub_1C0D053E8(v6, 2);
      v9 = v8;
      v54 = v7;
      v55 = v8;
      v52 = MEMORY[0x1E6969080];
      v53 = MEMORY[0x1E6969078];
      v50 = v18;
      v51 = v20;
      v10 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x1E6969080]);
      v12 = *v10;
      v11 = v10[1];
      sub_1C0CF6468(v7, v9);
      sub_1C0CF6468(v18, v20);
      sub_1C0D4268C(v12, v11);
      sub_1C0CF448C(v7, v9);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v13 = v54;
      v14 = v55;
      sub_1C0D7834C();
      sub_1C0CF448C(v13, v14);
      sub_1C0CF448C(v18, v20);
      ++v5;
      if (!--v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v24 = *(v57 + 16);
    if (!v24)
    {
LABEL_29:
      v44 = v56;
      sub_1C0D78BFC();
      v45 = sub_1C0D07698(a1, a2);
      v47 = v46;
      sub_1C0D0E630(v44, *(&v44 + 1), v45, v46);
      sub_1C0CF448C(v45, v47);
      sub_1C0CF448C(v44, *(&v44 + 1));
      return;
    }

    v25 = (v57 + 32);
    while (1)
    {
      v35 = *v25;
      v36 = [v35 serializedPublicKey_];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v38 = sub_1C0D7832C();
      v40 = v39;

      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          v26 = v42 - v43;
          if (__OFSUB__(v42, v43))
          {
            goto LABEL_31;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v41)
      {
        if (__OFSUB__(HIDWORD(v38), v38))
        {
          goto LABEL_32;
        }

        v26 = HIDWORD(v38) - v38;
      }

      else
      {
        v26 = BYTE6(v40);
      }

      v27 = sub_1C0D053E8(v26, 2);
      v29 = v28;
      v54 = v27;
      v55 = v28;
      v52 = MEMORY[0x1E6969080];
      v53 = MEMORY[0x1E6969078];
      v50 = v38;
      v51 = v40;
      v30 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x1E6969080]);
      v32 = *v30;
      v31 = v30[1];
      sub_1C0CF6468(v27, v29);
      sub_1C0CF6468(v38, v40);
      sub_1C0D4268C(v32, v31);
      sub_1C0CF448C(v27, v29);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v33 = v54;
      v34 = v55;
      sub_1C0D7834C();
      sub_1C0CF448C(v33, v34);
      sub_1C0CF448C(v38, v40);
      ++v25;
      if (!--v24)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C0D2F14C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v45 = sub_1C0D786CC();
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v43 = sub_1C0D2BFF8(*(a1 + 16), a3);
  v18 = *a1;
  v19 = sub_1C0D13834(a7, *a1);
  v46 = a4;
  v20 = sub_1C0D13834(a4, v18);
  v44 = *(a1 + 8);
  v21 = sub_1C0D2BEDC(v44, v20);

  v22 = sub_1C0D13834(a7, v21);
  v50 = 0;
  v23 = [v19 add:v19 corecryptoError:&v50];
  if (v23)
  {
    v24 = v23;
    v25 = (v14 + 8);
    while (1)
    {
      v26 = [v19 isEqual_];

      if ((v26 & 1) == 0)
      {

        v38 = *MEMORY[0x1E69E9840];
        return v43;
      }

      sub_1C0D7884C();
      sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
      sub_1C0D786EC();
      v27 = sub_1C0D786BC();
      (*v25)(v17, v45);
      v28 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];

      if (!v28)
      {
        __break(1u);
      }

      v50 = 0;
      v29 = [v18 multiply:v28 corecryptoError:&v50];
      if (!v29 || (v30 = v29, v19, v50 = 0, (v31 = [v18 multiply:v46 corecryptoError:&v50]) == 0))
      {
LABEL_13:
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_1C0D78DAC();
        MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
        v47 = v50;
        v40 = sub_1C0D78F2C();
        MEMORY[0x1C68E3B00](v40);

        goto LABEL_15;
      }

      v32 = v31;
      v50 = 0;
      v33 = [v44 sub:v31 corecryptoError:&v50];
      if (!v33)
      {
        break;
      }

      v34 = v33;

      v50 = 0;
      v35 = [v34 multiply:v28 corecryptoError:&v50];
      if (!v35)
      {
        goto LABEL_13;
      }

      v36 = v35;

      v50 = 0;
      v24 = [v30 add:v30 corecryptoError:&v50];
      a7 = v28;
      v19 = v30;
      v22 = v36;
      if (!v24)
      {
        goto LABEL_10;
      }
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003FLL, 0x80000001C0D80820);
    v47 = v50;
    v41 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v41);
  }

  else
  {
LABEL_10:
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v47 = v50;
    v37 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v37);
  }

LABEL_15:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

void sub_1C0D2F670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v62 = a7;
  v63 = a6;
  v60 = a3;
  v61 = a5;
  v58 = a1;
  v59 = a2;
  v68 = *MEMORY[0x1E69E9840];
  v8 = sub_1C0D786CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 <= 0)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v20 = 0;
    goto LABEL_6;
  }

  v13 = v63;
  v14 = sub_1C0D1388C(v63, v63);
  v15 = [v13 isEqual_];

  if (v15 & 1) != 0 || (v16 = v62, v17 = sub_1C0D1388C(v62, v62), v18 = [v16 isEqual_], v17, (v18))
  {
LABEL_4:
    sub_1C0D2FE30();
    swift_allocError();
    *v19 = 6;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v22 = 0;
  v23 = (v9 + 8);
  v24 = -1;
  v56 = v8;
  v57 = a4;
  v54 = (v9 + 8);
  v55 = v12;
LABEL_9:
  v53 = v24;
  do
  {
    if (v22 >= a4)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (__OFADD__(v22, 1))
    {
      goto LABEL_26;
    }

    v64 = v22 + 1;
    v66 = v22;
    sub_1C0D7884C();
    sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580]);
    sub_1C0D786EC();
    v25 = sub_1C0D786BC();
    v26 = *v23;
    (*v23)(v12, v8);
    v65 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v65)
    {
      goto LABEL_28;
    }

    v27 = objc_opt_self();
    sub_1C0D786EC();
    v28 = sub_1C0D786BC();
    v26(v12, v8);
    v29 = [v27 groupOrderByteCountForCP_];
    if (v29 < 0)
    {
      goto LABEL_27;
    }

    v30 = sub_1C0D053E8(v66, v29);
    v32 = v31;
    v67 = 0;
    sub_1C0CF6468(v30, v31);
    sub_1C0D786EC();
    v33 = sub_1C0D786BC();
    v26(v12, v8);
    v34 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v35 = sub_1C0D7830C();
    v36 = [v34 initWithData:v35 inGroup:v33 reduction:1 corecryptoError:&v67];

    sub_1C0CF448C(v30, v32);
    if (!v36)
    {
      v49 = v67;
      sub_1C0CF8DE0();
      swift_allocError();
      *v50 = v49;
      *(v50 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v30, v32);

      goto LABEL_7;
    }

    sub_1C0CF448C(v30, v32);
    v37 = v65;
    v38 = sub_1C0D2BFF8(v36, v65);

    v39 = sub_1C0D23BD0(v61, v60);
    v40 = sub_1C0D2BFF8(v58, v39);

    v41 = v59;
    v42 = sub_1C0D23BD0(v38, v59);
    v43 = sub_1C0D2BFF8(v40, v42);

    v44 = v63;
    v45 = sub_1C0D13834(v43, v63);

    v46 = sub_1C0D23BD0(v37, v41);
    v47 = sub_1C0D13834(v46, v44);

    v48 = sub_1C0D2BEDC(v45, v47);
    if ([v62 isEqual_])
    {
      v8 = v56;
      a4 = v57;
      v23 = v54;
      v12 = v55;
      if (v53 == -1)
      {

        v22 = v64;
        v24 = v66;
        if (v64 != a4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1C0D2FE30();
        swift_allocError();
        *v51 = 6;
        swift_willThrow();
      }

      goto LABEL_7;
    }

    v22 = v66 + 1;
    v8 = v56;
    a4 = v57;
    v23 = v54;
    v12 = v55;
  }

  while (v64 != v57);
  if (v53 == -1)
  {
    goto LABEL_4;
  }

LABEL_7:
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t _s16CryptoKitPrivate18ATHMKeyCommitmentsC6verify03keyE4Data10numBuckets12deploymentIDSb10Foundation0H0V_SiSStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_1C0D23CF0(v14, 3, a3, a4, a5);
  v11 = v14[0];
  sub_1C0D23FF4(a1, a2, v14);
  LOBYTE(v5) = sub_1C0D24920(v10, v11, a3, a4, v5);

  v19 = v14[0];
  sub_1C0D13578(&v19, &qword_1EBE6D478, &unk_1C0D7C850);
  v18 = v14[1];
  sub_1C0D13578(&v18, &qword_1EBE6D478, &unk_1C0D7C850);
  v17 = v14[2];
  sub_1C0D13578(&v17, &qword_1EBE6D478, &unk_1C0D7C850);
  v13 = v14[4];
  v16 = v14[3];
  sub_1C0D13578(&v16, &qword_1EBE6D480, &unk_1C0D7BF30);
  v15 = v13;
  sub_1C0D13578(&v15, &qword_1EBE6D488, &qword_1C0D7C860);
  return v5 & 1;
}

unint64_t sub_1C0D2FE30()
{
  result = qword_1EBE6D770;
  if (!qword_1EBE6D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D770);
  }

  return result;
}

unint64_t sub_1C0D30124()
{
  result = qword_1EBE6D798;
  if (!qword_1EBE6D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D798);
  }

  return result;
}

unint64_t sub_1C0D30178()
{
  result = qword_1EBE6D7A0;
  if (!qword_1EBE6D7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D478, &unk_1C0D7C850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D7A0);
  }

  return result;
}

uint64_t sub_1C0D301DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C0D30240(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C0D30290(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0CEACF0(a1, a2);
}

id sub_1C0D302E8(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0CEAD48(a1, a2);
}

uint64_t sub_1C0D30340(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      result = _s13ResponseProofVMa();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D30494(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v11 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v12 + v13;
  v18 = v13 | v14 | 7;
  v19 = v18 + v15;
  v20 = v12 + 7;
  if (v16 >= a2)
  {
    goto LABEL_29;
  }

  v21 = ((v19 + ((v12 + v14 + (v17 & ~v13)) & ~v14)) & ~v18) + ((v15 + ((v15 + v14 + ((v15 + v14 + (((((v20 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v9 == v16)
  {
    v30 = *(v8 + 48);

    return v30(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v31 = (((a1 + v17) & ~v13) + v12 + v14) & ~v14;
    if (v11 == v16)
    {
      v32 = *(v10 + 48);

      return v32(v31);
    }

    else
    {
      v33 = *((v20 + ((v19 + v31) & ~v18)) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }
  }
}

void sub_1C0D30824(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v10 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v13 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = v15 | v16 | 7;
  v20 = v19 + v17;
  v21 = v14 + 7;
  v22 = ((v19 + v17 + ((v14 + v16 + ((v14 + v15) & ~v15)) & ~v16)) & ~v19) + ((v17 + ((v17 + v16 + ((v17 + v16 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16)) & ~v16)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 >= a3)
  {
    v25 = 0;
    v26 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v19 + v17 + ((v14 + v16 + ((v14 + v15) & ~v15)) & ~v16)) & ~v19) + ((v17 + ((v17 + v16 + ((v17 + v16 + ((((((v14 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v16 + 8) & ~v16)) & ~v16)) & ~v16) + 7) & 0xFFFFFFF8) == -8)
    {
      v23 = a3 - v18 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_19:
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          *(a1 + v22) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v22) = 0;
      }

      else if (v25)
      {
        *(a1 + v22) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v11 == v18)
      {
        v29 = *(v10 + 56);

        v29(a1, a2, v11, AssociatedTypeWitness);
      }

      else
      {
        v30 = (((a1 + v14 + v15) & ~v15) + v14 + v16) & ~v16;
        if (v13 == v18)
        {
          v31 = *(v12 + 56);

          v31(v30, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v32 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v32 = (a2 - 1);
          }

          *((v21 + ((v20 + v30) & ~v19)) & 0xFFFFFFFFFFFFFFF8) = v32;
        }
      }

      return;
    }
  }

  if (((v19 + v17 + ((v14 + v16 + ((v14 + v15) & ~v15)) & ~v16)) & ~v19) + ((v17 + ((v17 + v16 + ((v17 + v16 + ((((((v14 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v16 + 8) & ~v16)) & ~v16)) & ~v16) + 7) & 0xFFFFFFF8) == -8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  if (((v19 + v17 + ((v14 + v16 + ((v14 + v15) & ~v15)) & ~v16)) & ~v19) + ((v17 + ((v17 + v16 + ((v17 + v16 + ((((((v14 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v16 + 8) & ~v16)) & ~v16)) & ~v16) + 7) & 0xFFFFFFF8) != -8)
  {
    v28 = ~v18 + a2;
    bzero(a1, v22);
    *a1 = v28;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      *(a1 + v22) = v27;
    }

    else
    {
      *(a1 + v22) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + v22) = v27;
  }
}

uint64_t sub_1C0D30C08(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C0D7836C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1C0CF448C(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1C0CF3BC0(v11, 0);
      v15 = sub_1C0D7827C();
      sub_1C0CF448C(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D30E00@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_1C0CF6468(v5, v6);
}

uint64_t sub_1C0D30E54(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  sub_1C0CF6468(v5, v6);
  return sub_1C0CF448C(v8, v9);
}

uint64_t sub_1C0D30ED8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1C0CF6468(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1C0D30F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1C0CF448C(v7, v8);
}

uint64_t AlishaSPAKE2Prover.init(password:salt:authenticatedData:keyDerivationCost:)(void *a1, void *a2, char *a3, void *a4)
{
  v71 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v10 = sub_1C0D78AEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = ccspake_cp_256();
  if (!v15)
  {
    __break(1u);
    goto LABEL_48;
  }

  v16 = v15;
  v70 = ccspake_sizeof_w();
  if (v70 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v64 = v16;
  v69 = v4;
  sub_1C0D78ABC();
  v16 = sub_1C0D78ADC();
  (*(v11 + 8))(v14, v10);
  v17 = [a1 dataUsingEncoding_];
  if (!v17)
  {
LABEL_48:
    __break(1u);
  }

  v4 = v17;
  v14 = sub_1C0D7832C();
  v11 = v18;

  v6 = sub_1C0D7830C();
  v5 = a2;
  v19 = ccscrypt_storage_size();
  if (v19 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = 2 * v70;
  if (v19)
  {
    v21 = v19;
    v22 = sub_1C0D78C2C();
    *(v22 + 16) = v21;
    bzero((v22 + 32), v21);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v66 = v11;
  v67 = a1;
  v65 = v14;
  v68 = a3;
  if (v20)
  {
    a1 = sub_1C0D78C2C();
    a1[2] = v20;
    bzero(a1 + 4, v20);
    goto LABEL_12;
  }

LABEL_11:
  a1 = MEMORY[0x1E69E7CC0];
LABEL_12:
  [v6 length];
  [v6 bytes];
  [v5 length];
  [v5 bytes];
  v23 = v5;
  v16 = (a1 + 4);
  sub_1C0D78BFC();
  sub_1C0D78BFC();
  v24 = ccscrypt();

  swift_bridgeObjectRelease_n();
  if (v24)
  {

    v5 = 0;
    v25 = v67;
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D850, &unk_1C0D7C910);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C0D7B690;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 32) = 0xD000000000000050;
    *(v33 + 40) = 0x80000001C0D80D90;
    sub_1C0D78FCC();

    v34 = v65;
    v35 = v66;
LABEL_21:
    sub_1C0CF448C(v34, v35);
LABEL_22:
    type metadata accessor for AlishaSPAKE2Prover();
    swift_deallocPartialClassInstance();
    result = 0;
LABEL_23:
    v37 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:a1 + 4 length:v20];

  v71 = v23;
  if (!v5 || (v26 = [v5 length], v6 = v69, v26 != v20))
  {
    v25 = v67;
    v23 = v71;
    goto LABEL_20;
  }

  v10 = v70;
  v27 = [v5 subdataWithRange_];
  a3 = sub_1C0D7832C();
  v11 = v28;

  a2 = [v5 subdataWithRange_];
  v4 = sub_1C0D7832C();
  v14 = v29;

  v30 = SPAKE2CtxSize();
  if (v30 < 0)
  {
    goto LABEL_41;
  }

  v70 = v4;
  if (v30)
  {
    v31 = v30;
    v32 = sub_1C0D78C2C();
    *(v32 + 16) = v31;
    bzero((v32 + 32), v31);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  a1 = OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_spakeCtxData;
  *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_spakeCtxData) = v32;
  v16 = v68;
  v38 = sub_1C0D7832C();
  v40 = v39;

  v4 = sub_1C0D30C08(v38, v40);
  swift_beginAccess();
  a2 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v42 = ccspake_mac_hkdf_cmac_aes128_sha256();
    if (v42)
    {
      goto LABEL_27;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_42:
  a2 = sub_1C0CFD670(a2);
  *(a1 + v6) = a2;
  v42 = ccspake_mac_hkdf_cmac_aes128_sha256();
  if (!v42)
  {
    goto LABEL_43;
  }

LABEL_27:
  v10 = v42;
  v73 = 0;
  result = ccrng();
  if (result)
  {
    v68 = a1;
    v63 = v16;
    if (!v73)
    {
      v43 = v4;
      v59 = v4[2];
      SPAKE2Alishaz0Size();
      sub_1C0CF6468(a3, v11);
      sub_1C0D30C08(a3, v11);
      v62 = v11;
      v60 = a3;
      a3 = v70;
      sub_1C0CF6468(v70, v14);
      sub_1C0D30C08(a3, v14);
      v61 = v14;
      v44 = ccspake_prover_init();
      v45 = v68;
      v6 = v69;
      *&v68[v69] = a2;
      swift_endAccess();

      if (v44)
      {
        sub_1C0CF448C(v65, v66);
        sub_1C0CF448C(v60, v62);
        sub_1C0CF448C(a3, v61);

        v46 = *&v45[v6];

        goto LABEL_22;
      }

      v14 = v45;
      v59 = v43;
      a1 = v60;
      v10 = v61;
      v11 = v62;
      v47 = ccspake_sizeof_point();
      if ((v47 & 0x8000000000000000) == 0)
      {
        if (v47)
        {
          v48 = v47;
          a2 = sub_1C0D78C2C();
          a2[2] = v48;
          bzero(a2 + 4, v48);
        }

        else
        {
          a2 = MEMORY[0x1E69E7CC0];
        }

        a3 = v10;
        swift_beginAccess();
        v10 = *&v14[v6];
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *&v14[v6] = v10;
        if (v49)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      v10 = sub_1C0CFD670(v10);
      *&v14[v6] = v10;
LABEL_36:
      ccspake_sizeof_point();
      v50 = ccspake_kex_generate();
      *&v14[v6] = v10;
      swift_endAccess();
      sub_1C0CF448C(v65, v66);

      *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X) = a2;
      v51 = (v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z0_self);
      *v51 = a1;
      v51[1] = v11;
      v52 = (v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z1_self);
      *v52 = v70;
      v52[1] = a3;
      *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_aad) = v59;
      if (!v50)
      {
        v56 = type metadata accessor for AlishaSPAKE2Prover();
        v72.receiver = v6;
        v72.super_class = v56;
        v57 = objc_msgSendSuper2(&v72, sel_init);

        result = v57;
        goto LABEL_23;
      }

      v53 = *&v14[v6];

      v54 = *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_aad);

      v55 = *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X);

      sub_1C0CF448C(*(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z0_self), *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z0_self + 8));
      v34 = *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z1_self);
      v35 = *(v6 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_z1_self + 8);
      goto LABEL_21;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

id sub_1C0D3190C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_X);
  v2 = *(v1 + 16);
  v3 = objc_allocWithZone(MEMORY[0x1E695DEF0]);

  return [v3 initWithBytes:v1 + 32 length:v2];
}

uint64_t sub_1C0D319C0(void *a1, void *a2)
{
  v5 = [a1 length];
  result = ccspake_cp_256();
  if (result)
  {
    if (v5 == ccspake_sizeof_point() && [a2 length] == 16)
    {
      v7 = sub_1C0D78C2C();
      v7[2] = 16;
      v7[4] = 0;
      v7[5] = 0;
      v8 = sub_1C0D78C2C();
      v8[2] = 16;
      v8[4] = 0;
      v8[5] = 0;
      v9 = OBJC_IVAR____TtC16CryptoKitPrivate18AlishaSPAKE2Prover_spakeCtxData;
      swift_beginAccess();
      v10 = *(v2 + v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1C0CFD670(v10);
        *(v2 + v9) = v10;
      }

      [a1 length];
      v12 = sub_1C0D7832C();
      sub_1C0D30C08(v12, v13);
      v14 = ccspake_kex_process();
      *(v2 + v9) = v10;
      swift_endAccess();

      if (v14)
      {
        goto LABEL_13;
      }

      swift_beginAccess();
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v10;
      if ((v15 & 1) == 0)
      {
        v10 = sub_1C0CFD670(v10);
        *(v2 + v9) = v10;
      }

      v16 = ccspake_mac_compute();
      *(v2 + v9) = v10;
      swift_endAccess();
      if (v16)
      {
        goto LABEL_13;
      }

      swift_beginAccess();
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v9) = v10;
      if ((v17 & 1) == 0)
      {
        v10 = sub_1C0CFD670(v10);
        *(v2 + v9) = v10;
      }

      [a2 length];
      v18 = sub_1C0D7832C();
      sub_1C0D30C08(v18, v19);
      session_key = ccspake_mac_verify_and_get_session_key();
      *(v2 + v9) = v10;
      swift_endAccess();

      if (session_key)
      {
LABEL_13:
        v21 = 0;
      }

      else
      {
        v22 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v25 length:v7[2]];
        v23 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v8 + 4 length:v8[2]];
        v24 = objc_allocWithZone(type metadata accessor for AlishaSPAKE2ProverConfirmed());
        v21 = sub_1C0D31F40(v22, v23);
      }

      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AlishaSPAKE2Prover.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C0D31F40(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_alishaKey;
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_alishaKey] = a1;
  v5 = OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_M2;
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_M2] = a2;
  v6 = a1;
  v7 = a2;
  result = sub_1C0D32518(v6);
  if (!result)
  {

    type metadata accessor for AlishaSPAKE2ProverConfirmed();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = result;
  if (!result[2])
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:result[4] + 32 length:*(result[4] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_KEnc] = result;
  if (v9[2] < 2uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[5] + 32 length:*(v9[5] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_KMac] = result;
  if (v9[2] < 3uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[6] + 32 length:*(v9[6] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_KRMac] = result;
  if (v9[2] < 4uLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[7] + 32 length:*(v9[7] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_SymmetricLTS] = result;
  if (v9[2] < 5uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9[8] + 32 length:*(v9[8] + 16)];
  *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_Kble_intro] = result;
  if (v9[2] >= 6uLL)
  {
    v10 = v9[9];
    swift_bridgeObjectRetain_n();

    v11 = *(v10 + 16);

    v12 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v10 + 32 length:v11];

    *&v2[OBJC_IVAR____TtC16CryptoKitPrivate27AlishaSPAKE2ProverConfirmed_Kble_oob_master] = v12;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for AlishaSPAKE2ProverConfirmed();
    v13 = objc_msgSendSuper2(&v14, sel_init);

    return v13;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_1C0D32224(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C0D32518(void *a1)
{
  v2 = sub_1C0D78AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ACC();
  v7 = sub_1C0D78AAC();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    goto LABEL_71;
  }

  v11 = sub_1C0D30C08(v7, v9);
  v12 = sub_1C0D78C2C();
  *(v12 + 16) = 96;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  sub_1C0D78BFC();
  ccsha256_di();
  [a1 length];
  [a1 bytes];
  v13 = *(v11 + 16);
  v14 = *(v12 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1C0CF48F4(0, *(v12 + 16), 0, v12);
  }

  v15 = cchkdf();

  if (v15)
  {

    return 0;
  }

  v17 = *(v12 + 16);
  v48 = v12;
  v49 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = __OFADD__(v19, 16);
      v19 += 16;
      if (v21)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v18;
      if (v19 >= v49)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = 0;
LABEL_14:
    v50 = MEMORY[0x1E69E7CC0];
    result = sub_1C0CF7C20(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      goto LABEL_70;
    }

    v16 = v50;
    if (!v20)
    {
      v27 = 0;
      result = v48;
LABEL_39:
      if (v27 >= v49)
      {
LABEL_60:

        return v16;
      }

      v35 = -v27;
      v36 = v27 + 16;
      v37 = v27;
      while (1)
      {
        v38 = v37 + 16;
        if (__OFADD__(v37, 16))
        {
          goto LABEL_67;
        }

        v39 = *(result + 16);
        if (v39 >= v38)
        {
          v40 = v37 + 16;
        }

        else
        {
          v40 = *(result + 16);
        }

        if (v40 < v37)
        {
          goto LABEL_68;
        }

        if (v27 < 0)
        {
          goto LABEL_69;
        }

        if (v39 >= v36)
        {
          v41 = v36;
        }

        else
        {
          v41 = *(result + 16);
        }

        v42 = v41 + v35;
        if (v41 + v35 == v39)
        {
          sub_1C0D78BFC();
          result = v48;
          v43 = v48;
        }

        else
        {
          v43 = MEMORY[0x1E69E7CC0];
          if (v37 != v40)
          {
            if (v42 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
              v43 = swift_allocObject();
              v46 = 2 * _swift_stdlib_malloc_size(v43);
              result = v48;
              v43[2] = v42;
              v43[3] = v46 - 64;
            }

            memcpy(v43 + 4, (result + v37 + 32), v42);
            result = v48;
          }
        }

        v50 = v16;
        v45 = *(v16 + 16);
        v44 = *(v16 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C0CF7C20((v44 > 1), v45 + 1, 1);
          result = v48;
          v16 = v50;
        }

        *(v16 + 16) = v45 + 1;
        *(v16 + 8 * v45 + 32) = v43;
        v37 += 16;
        v35 -= 16;
        v36 += 16;
        if (v38 >= v49)
        {
          goto LABEL_60;
        }
      }
    }

    v22 = 0;
    result = v48;
    v23 = v48[2];
    v24 = 16;
    v25 = 32;
    while (1)
    {
      v26 = v23 >= v24 ? v24 : v23;
      if (v22 >= v49)
      {
        break;
      }

      if (v22 == 0x7FFFFFFFFFFFFFF0)
      {
        goto LABEL_64;
      }

      v27 = v22 + 16;
      if (v23 >= (v22 + 16))
      {
        v28 = v22 + 16;
      }

      else
      {
        v28 = v23;
      }

      if (v28 < v22)
      {
        goto LABEL_65;
      }

      v29 = *(result + 16);
      if (v29 < v22 || v29 < v28)
      {
        goto LABEL_66;
      }

      v30 = v26 + v25 - 32;
      if (v30 == v29)
      {
        sub_1C0D78BFC();
        result = v48;
        v31 = v48;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
        if (v22 != v28)
        {
          if (v30 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
            v31 = swift_allocObject();
            v34 = 2 * _swift_stdlib_malloc_size(v31);
            result = v48;
            v31[2] = v30;
            v31[3] = v34 - 64;
          }

          memcpy(v31 + 4, (result + v22 + 32), v30);
          result = v48;
        }
      }

      v50 = v16;
      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C0CF7C20((v32 > 1), v33 + 1, 1);
        result = v48;
        v16 = v50;
      }

      *(v16 + 16) = v33 + 1;
      *(v16 + 8 * v33 + 32) = v31;
      v24 += 16;
      v25 -= 16;
      v22 += 16;
      if (!--v20)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t Curve25519.KeyAgreement.PrivateKey.init(ikm:)(uint64_t a1)
{
  result = sub_1C0D7869C();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    if (result > 3)
    {
      sub_1C0D7867C();
      v5 = sub_1C0D32C3C(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v12, v13);
      v7 = v6;
      v8 = sub_1C0D32FB0(v5, v6, 27507, 0xE200000000000000, 0, 0xC000000000000000, 0x20uLL);
      v10 = v9;
      sub_1C0CF6468(v8, v9);
      sub_1C0D785BC();
      v11 = sub_1C0D786AC();
      (*(*(v11 - 8) + 8))(a1, v11);
      sub_1C0CF448C(v8, v10);
      sub_1C0CF448C(v5, v7);
      return sub_1C0CF448C(v12, v13);
    }

    else
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v3 = 1;
      *(v3 + 4) = 1;
      swift_willThrow();
      v4 = sub_1C0D786AC();
      return (*(*(v4 - 8) + 8))(a1, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D32C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v33 = a4;
  v34 = a6;
  v31 = a5;
  v32 = a3;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  v6 = sub_1C0D786AC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v42 = xmmword_1C0D7BAB0;
  sub_1C0D782BC();
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0D74CCC(5064011, 0xE300000000000000);
  v15 = sub_1C0D053E8(0x20uLL, 2);
  v17 = v16;
  v18 = MEMORY[0x1E6969080];
  v19 = MEMORY[0x1E6969078];
  v40 = MEMORY[0x1E6969080];
  v41 = MEMORY[0x1E6969078];
  *&v39 = v15;
  *(&v39 + 1) = v16;
  v20 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x1E6969080]);
  v21 = *v20;
  v22 = v20[1];
  sub_1C0CF6468(v15, v17);
  sub_1C0D4268C(v21, v22);
  sub_1C0CF448C(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0D74CCC(v32, v33);
  v40 = v18;
  v41 = v19;
  v23 = v31;
  v24 = v34;
  *&v39 = v31;
  *(&v39 + 1) = v34;
  v25 = __swift_project_boxed_opaque_existential_1(&v39, v18);
  v26 = *v25;
  v27 = v25[1];
  sub_1C0CF6468(v23, v24);
  sub_1C0D4268C(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v39 = v42;
  sub_1C0CF6468(v42, *(&v42 + 1));
  sub_1C0D7868C();
  v39 = v35;
  sub_1C0CF6468(v35, *(&v35 + 1));
  sub_1C0D789EC();
  sub_1C0CF6410();
  sub_1C0D17E68();
  sub_1C0D787FC();
  sub_1C0D13830(v39, *(&v39 + 1));
  (*(v36 + 8))(v9, v37);
  v40 = v10;
  v41 = sub_1C0D3339C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(v11 + 16))(boxed_opaque_existential_1, v14, v10);
  __swift_project_boxed_opaque_existential_1(&v39, v40);
  sub_1C0D7819C();
  (*(v11 + 8))(v14, v10);
  v29 = v38;
  __swift_destroy_boxed_opaque_existential_1(&v39);
  sub_1C0CF448C(v42, *(&v42 + 1));
  return v29;
}

uint64_t sub_1C0D32FB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v42 = a7;
  *&v43 = a1;
  v38 = a6;
  v39 = a3;
  v40 = a4;
  *(&v43 + 1) = a2;
  v9 = sub_1C0D786AC();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D053E8(0x20uLL, 2);
  v15 = v14;
  sub_1C0D75198(5064011, 0xE300000000000000, v13, v14, &v46);
  sub_1C0CF448C(v13, v15);
  v16 = v46;
  v41 = v46;
  v17 = sub_1C0D053E8(a7, 2);
  v19 = v18;
  v49 = v17;
  v50 = v18;
  sub_1C0CF6468(v17, v18);
  sub_1C0D74CCC(0x31762D454B5048, 0xE700000000000000);
  sub_1C0CF448C(v17, v19);
  v20 = v49;
  v21 = v50;
  v51 = v49;
  v52 = v50;
  v22 = MEMORY[0x1E6969080];
  v23 = MEMORY[0x1E6969078];
  v47 = MEMORY[0x1E6969080];
  v48 = MEMORY[0x1E6969078];
  v46 = v16;
  v24 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
  v26 = *v24;
  v25 = v24[1];
  sub_1C0CF6468(v20, v21);
  sub_1C0CF6468(v16, *(&v16 + 1));
  sub_1C0D4268C(v26, v25);
  sub_1C0CF448C(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v27 = v51;
  v28 = v52;
  v49 = v51;
  v50 = v52;
  sub_1C0CF6468(v51, v52);
  sub_1C0D74CCC(v39, v40);
  sub_1C0CF448C(v27, v28);
  v29 = v49;
  v30 = v50;
  v51 = v49;
  v52 = v50;
  v47 = v22;
  v48 = v23;
  v31 = v38;
  *&v46 = a5;
  *(&v46 + 1) = v38;
  v32 = __swift_project_boxed_opaque_existential_1(&v46, v22);
  v33 = *v32;
  v34 = v32[1];
  sub_1C0CF6468(v29, v30);
  sub_1C0CF6468(a5, v31);
  sub_1C0D4268C(v33, v34);
  sub_1C0CF448C(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v35 = v51;
  v36 = v52;
  v46 = v43;
  sub_1C0CF6468(v51, v52);
  sub_1C0D789EC();
  sub_1C0CF6410();
  sub_1C0D17E68();
  sub_1C0D787EC();
  sub_1C0D13830(v51, v52);
  sub_1C0D7867C();
  sub_1C0CF448C(v35, v36);
  sub_1C0CF448C(v41, *(&v16 + 1));
  (*(v44 + 8))(v12, v45);
  return v46;
}

uint64_t sub_1C0D332D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C0D77CE4(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C0D77DA4(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C0D77E20(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

unint64_t sub_1C0D3339C()
{
  result = qword_1EBE6D8B8;
  if (!qword_1EBE6D8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D8B8);
  }

  return result;
}

uint64_t sub_1C0D33418(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = __OFSUB__(result, 1);
  if (result >= 1)
  {
    v2 = __OFSUB__(a2, 1);
    if (a2 >= 1)
    {
      return (a2 - 1) / result + 1;
    }
  }

  if ((a2 & result) < 0 == v2)
  {
    if (result != -1 || a2 != 0x8000000000000000)
    {
      return a2 / result;
    }

    goto LABEL_13;
  }

  v3 = (a2 + 1) / result;
  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t PIR.PirAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

void PIR.PirParams.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PIR.PirParams.init(encryptionParams:algorithm:entriesCount:entrySize:dimensions:batchSize:internalBatchSize:compressResponse:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a4 < 1)
  {
    goto LABEL_21;
  }

  v15 = *a1;
  v29 = *a2;
  v30 = a1[1];
  v16 = dword_1C0D7CA4C[v15];
  result = cche_encryption_params_plaintext_modulus();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = result;
  v19 = dword_1C0D7CA4C[v15];
  result = cche_encryption_params_polynomial_degree();
  if (a4 >> 60)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v20 = (__clz(v18) ^ 0x3F) * result;
  if (v20 >= 8 * a4)
  {
    v21 = v20 / (8 * a4);
  }

  else
  {
    v21 = 1;
  }

  result = sub_1C0D33418(v21, a3);
  v22 = *(a5 + 16);
  if (v22)
  {
    v23 = (a5 + 32);
    v24 = 1;
    do
    {
      v25 = *v23++;
      v26 = v24 * v25;
      if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
      {
        __break(1u);
        goto LABEL_24;
      }

      v24 = v26;
      --v22;
    }

    while (v22);
    if (v26 >= result)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (result > 1)
  {
LABEL_21:

    sub_1C0CF8DE0();
    swift_allocError();
    *v28 = 5;
    *(v28 + 4) = 1;
    return swift_willThrow();
  }

LABEL_14:
  if (a8)
  {
    v27 = 1;
  }

  else
  {
    v27 = a7;
  }

  if (!v27)
  {
    goto LABEL_26;
  }

  if (a6 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_27;
  }

  if (a6 % v27)
  {
    goto LABEL_21;
  }

  *a9 = v15;
  *(a9 + 1) = v30;
  *(a9 + 2) = v29;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = v21;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

unint64_t sub_1C0D33720()
{
  result = qword_1EBE6D8C0[0];
  if (!qword_1EBE6D8C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D8C0);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0D337A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D337E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D33848(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 32);
    v8 = 1;
    do
    {
      v9 = v7[v6];
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        __break(1u);
        goto LABEL_19;
      }

      v8 *= v9;
      ++v6;
    }

    while (v4 != v6);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7C60(0, v4, 0);
    result = v17;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      if (!v11)
      {
        break;
      }

      if (v8 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_23;
      }

      v8 /= v10;
      if (!v8)
      {
        goto LABEL_20;
      }

      if (a1 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_24;
      }

      v12 = a1 / v8;
      v13 = a1 / v8 * v8;
      if ((a1 / v8 * v8) >> 64 != v13 >> 63)
      {
        goto LABEL_21;
      }

      v14 = __OFSUB__(a1, v13);
      a1 %= v8;
      if (v14)
      {
        goto LABEL_22;
      }

      v18 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C0CF7C60((v15 > 1), v16 + 1, 1);
        result = v18;
      }

      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v12;
      if (!--v4)
      {
        return result;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D339A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = _s13ClientSecretsVMa();
  if (v7 <= 0x3F)
  {
    result = _s15ServerPublicKeyVMa();
    if (v8 <= 0x3F)
    {
      result = type metadata accessor for ARC.Ciphersuite();
      if (v9 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          result = _s17CredentialRequestVMa();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0D33B60(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = ((v12 + v13 + ((v12 + v13 + ((v12 + v13) & ~v13)) & ~v13)) & ~v13) + v12 + v14;
  v20 = v15 + v14;
  v21 = ((v15 + v14) & ~v14) + v15;
  v22 = ((v21 + v14) & ~v14) + v15 + 7;
  v23 = v14 + 40;
  v24 = v13 | 7;
  v25 = v24 | v14;
  v26 = (v24 | v14) + v15;
  if (v18 < a2)
  {
    v27 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v21 + v24) & ~v24) + ((v26 + ((v20 + ((v23 + ((v22 + (v19 & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14)) & ~v25) + 8;
    v28 = v27 & 0xFFFFFFF8;
    if ((v27 & 0xFFFFFFF8) != 0)
    {
      v29 = 2;
    }

    else
    {
      v29 = a2 - v18 + 1;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *(a1 + v27);
        if (!v32)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v32 = *(a1 + v27);
        if (!v32)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v31)
      {
        goto LABEL_33;
      }

      v32 = *(a1 + v27);
      if (!v32)
      {
        goto LABEL_33;
      }
    }

    v34 = v32 - 1;
    if (v28)
    {
      v34 = 0;
      v35 = *a1;
    }

    else
    {
      v35 = 0;
    }

    return v18 + (v35 | v34) + 1;
  }

LABEL_33:
  if (v9 >= v17)
  {
    v39 = *(v8 + 48);
    v40 = a1;
  }

  else
  {
    v36 = ~v14;
    v37 = (a1 + v19) & v36;
    if (v11 == v18)
    {
LABEL_35:
      v38 = *(v10 + 48);

      return v38(v37);
    }

    v41 = (v22 + v37) & 0xFFFFFFFFFFFFFFF8;
    if ((v18 & 0x80000000) == 0)
    {
      v42 = *(v41 + 16);
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      return (v42 + 1);
    }

    v37 = (v26 + ((v20 + ((v23 + v41) & v36)) & v36)) & ~v25;
    if (v11 >= v16)
    {
      goto LABEL_35;
    }

    v39 = *(v8 + 48);
    v40 = ((v24 + v15 + ((v20 + v37) & v36)) & ~v24);
  }

  return v39(v40, v9, AssociatedTypeWitness);
}

void sub_1C0D33F4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v54 = v10;
  v11 = *(v10 + 84);
  v12 = *(swift_checkMetadataState() - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v10 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= v13)
  {
    v19 = *(v12 + 84);
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v14 + v15 + ((v14 + v15 + ((v14 + v15) & ~v15)) & ~v15)) & ~v15) + v14;
  v22 = v21 + v16;
  v23 = v17 + v16;
  v24 = ((v17 + v16) & ~v16) + v17;
  v25 = ((v24 + v16) & ~v16) + v17 + 7;
  v26 = v16 + 40;
  v27 = v15 | 7;
  v28 = v15 | 7 | v16;
  v29 = v28 + v17;
  v30 = (v24 + (v15 | 7)) & ~(v15 | 7);
  v31 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v32 = v30 + v31;
  v33 = ((v28 + v17 + ((v17 + v16 + ((v16 + 40 + ((v25 + ((v21 + v16) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16)) & ~v28) + v30 + v31;
  if (v20 >= a3)
  {
    v37 = 0;
    v38 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (v33)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }

    if (v33)
    {
      v40 = ~v20 + a2;
      bzero(a1, v33);
      *a1 = v40;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        *&a1[v33] = v39;
      }

      else
      {
        *&a1[v33] = v39;
      }
    }

    else if (v37)
    {
      a1[v33] = v39;
    }

    return;
  }

  v34 = a3 - v20;
  if (v33)
  {
    v35 = 2;
  }

  else
  {
    v35 = v34 + 1;
  }

  if (v35 >= 0x10000)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2;
  }

  if (v35 < 0x100)
  {
    v36 = 1;
  }

  if (v35 >= 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = a2 - v20;
  if (a2 > v20)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v37 > 1)
  {
    if (v37 != 2)
    {
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v33] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v37)
  {
    goto LABEL_38;
  }

  a1[v33] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v11 < v19)
  {
    v41 = ~v16;
    v42 = &a1[v22] & ~v16;
    if (v13 == v20)
    {
      v43 = *(v12 + 56);
LABEL_42:

      v43(v42, a2);
      return;
    }

    v47 = (v25 + v42) & 0xFFFFFFFFFFFFFFF8;
    if ((v20 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *(v47 + 8) = 0u;
        *(v47 + 24) = 0u;
        *v47 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v47 + 16) = (a2 - 1);
      }

      return;
    }

    v50 = ((v29 + ((v23 + ((v26 + v47) & v41)) & v41)) & ~v28);
    if (v19 < a2)
    {
      if (v32)
      {
        v51 = ~v19 + a2;
        bzero(v50, v32);
        *v50 = v51;
      }

      return;
    }

    if (v13 >= v18)
    {
      v43 = *(v12 + 56);
      v42 = (v29 + ((v23 + ((v26 + v47) & v41)) & v41)) & ~v28;
      goto LABEL_42;
    }

    v49 = ((v27 + v17 + ((v50 + v23) & v41)) & ~v27);
    if (v18 < a2)
    {
      if (v31)
      {
        v52 = ~v18 + a2;
        v53 = v49;
        bzero(v49, v31);
        *v53 = v52;
      }

      return;
    }

    v48 = *(v54 + 56);
    goto LABEL_66;
  }

  if (v11 >= a2)
  {
    v48 = *(v54 + 56);
    v49 = a1;
LABEL_66:

    v48(v49, a2, v11, AssociatedTypeWitness);
    return;
  }

  if (v21 <= 3)
  {
    v44 = ~(-1 << (8 * v21));
  }

  else
  {
    v44 = -1;
  }

  if (v21)
  {
    v45 = v44 & (~v11 + a2);
    if (v21 <= 3)
    {
      v46 = v21;
    }

    else
    {
      v46 = 4;
    }

    bzero(a1, v21);
    if (v46 > 2)
    {
      if (v46 == 3)
      {
        *a1 = v45;
        a1[2] = BYTE2(v45);
      }

      else
      {
        *a1 = v45;
      }
    }

    else if (v46 == 1)
    {
      *a1 = v45;
    }

    else
    {
      *a1 = v45;
    }
  }
}

void sub_1C0D344D8()
{
  sub_1C0D783EC();
  if (v0 <= 0x3F)
  {
    sub_1C0D345E4(319, &qword_1EBE6D9E8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    if (v1 <= 0x3F)
    {
      sub_1C0D345E4(319, &qword_1EBE6D9F0, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0D345E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C0D78D3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C0D34680()
{
  result = sub_1C0D783EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitSecretSharing_HybridSecretSharingSharedState.Ciphersuite(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitSecretSharing_HybridSecretSharingSharedState.Ciphersuite(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C0D34788(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0D347A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C0D347FC()
{
  result = sub_1C0D783EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D348C8()
{
  result = sub_1C0D783EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D34960@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0D34978()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1C0D34990@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C0D349AC(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_1C0D349C8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D34A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D384A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C0D34A80()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

BOOL sub_1C0D34AE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t sub_1C0D34B1C()
{
  result = qword_1EBE6DA18;
  if (!qword_1EBE6DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA18);
  }

  return result;
}

unint64_t sub_1C0D34B74()
{
  result = qword_1EBE6DA20;
  if (!qword_1EBE6DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA20);
  }

  return result;
}

unint64_t sub_1C0D34BCC()
{
  result = qword_1EBE6DA28;
  if (!qword_1EBE6DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA28);
  }

  return result;
}

uint64_t sub_1C0D34C30()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72CF8);
  __swift_project_value_buffer(v0, qword_1EBE72CF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7CAD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sharedState";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "keyToBeShared";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sealedBox";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D34E78()
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C0D7848C();
      }

      else if (result == 4)
      {
        sub_1C0D35008();
      }
    }

    else if (result == 1)
    {
      sub_1C0D784AC();
    }

    else if (result == 2)
    {
      sub_1C0D34F54();
    }
  }

  return result;
}

uint64_t sub_1C0D34F54()
{
  v0 = *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0) + 28);
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  return sub_1C0D784BC();
}

uint64_t sub_1C0D35008()
{
  v0 = *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0) + 32);
  type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
  return sub_1C0D784BC();
}

uint64_t sub_1C0D350BC()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v30 - v5;
  v34 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    result = sub_1C0D7855C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v30 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  sub_1C0D13734(v0 + *(v30 + 28), v11, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C0D13578(v11, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
    v18 = v2;
  }

  else
  {
    sub_1C0D37A20(v11, v16, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    v18 = v2;
    sub_1C0D7856C();
    result = sub_1C0D37A88(v16, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    if (v2)
    {
      return result;
    }
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 16);
  v21 = v20 >> 62;
  v22 = v34;
  v23 = v33;
  if ((v20 >> 62) > 1)
  {
    v24 = v30;
    if (v21 != 2)
    {
      goto LABEL_16;
    }

    v25 = *(v19 + 16);
    v26 = *(v19 + 24);
  }

  else
  {
    v24 = v30;
    if (!v21)
    {
      if ((v20 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v25 = v19;
    v26 = v19 >> 32;
  }

  if (v25 == v26)
  {
    goto LABEL_16;
  }

LABEL_15:
  result = sub_1C0D7854C();
  if (v18)
  {
    return result;
  }

LABEL_16:
  sub_1C0D13734(v0 + *(v24 + 32), v23, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  if ((*(v32 + 48))(v23, 1, v22) == 1)
  {
    sub_1C0D13578(v23, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  }

  else
  {
    v27 = v23;
    v28 = v31;
    sub_1C0D37A20(v27, v31, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D7856C();
    result = sub_1C0D37A88(v28, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    if (v18)
    {
      return result;
    }
  }

  v29 = v0 + *(v24 + 24);
  return sub_1C0D783CC();
}

uint64_t sub_1C0D35558@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1C0D7BAB0;
  v4 = a2 + a1[6];
  sub_1C0D783DC();
  v5 = a1[7];
  v6 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1C0D35650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D356C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C0D35738(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C0D3578C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAB8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D3582C(uint64_t a1)
{
  v2 = sub_1C0D37580(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D35898()
{
  sub_1C0D37580(&qword_1EBE6DA88, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D35918()
{
  result = MEMORY[0x1C68E3B00](0x4264656C6165532ELL, 0xEA0000000000786FLL);
  qword_1EBE72D10 = 0xD000000000000040;
  *algn_1EBE72D18 = 0x80000001C0D810B0;
  return result;
}

uint64_t sub_1C0D35988()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D20);
  __swift_project_value_buffer(v0, qword_1EBE72D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7BEF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nonce";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ciphertext";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "tag";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D35B98()
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C0D7848C();
    }
  }

  return result;
}

uint64_t sub_1C0D35C28()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1C0D7854C();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_1C0D7854C();
  if (v1)
  {
    return result;
  }

LABEL_19:
  v13 = v0[4];
  v14 = v0[5];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_28;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_27:
      result = sub_1C0D7854C();
      if (v1)
      {
        return result;
      }

      goto LABEL_28;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  v18 = v0 + *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0) + 28);
  return sub_1C0D783CC();
}

uint64_t sub_1C0D35D94@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1C0D7BAB0;
  a2[1] = xmmword_1C0D7BAB0;
  a2[2] = xmmword_1C0D7BAB0;
  v2 = a2 + *(a1 + 28);
  return sub_1C0D783DC();
}

uint64_t sub_1C0D35DC4()
{
  if (qword_1EBE6CC80 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBE72D10;
  sub_1C0D78BFC();
  return v0;
}

uint64_t sub_1C0D35E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D35EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C0D35F14(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C0D35F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAE8, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D36008(uint64_t a1)
{
  v2 = sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D36074()
{
  sub_1C0D37580(&qword_1EBE6DA68, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D360F4()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D38);
  __swift_project_value_buffer(v0, qword_1EBE72D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7CAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ciphersuite";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "includeThreshold";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "threshold";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "includeAuthenticatedData";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "authenticatedData";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "insecureToChangeIncludeMessageEntropy";
  *(v20 + 1) = 37;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "shamirGeneratorState";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D36444()
{
  result = sub_1C0D7844C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_19:
          sub_1C0D7848C();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_4:
          sub_1C0D7845C();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

LABEL_20:
          sub_1C0D784AC();
          goto LABEL_5;
        }

        if (result == 1)
        {
          goto LABEL_20;
        }

        if (result == 2)
        {
          sub_1C0D384A4();
          sub_1C0D7846C();
        }
      }

LABEL_5:
      result = sub_1C0D7844C();
    }
  }

  return result;
}

uint64_t sub_1C0D36598()
{
  if (*v0)
  {
    result = sub_1C0D7855C();
    if (v1)
    {
      return result;
    }
  }

  if ((*(v0 + 16) & 1) == 0)
  {
    if (*(v0 + 8))
    {
      v14 = *(v0 + 8);
      sub_1C0D384A4();
      result = sub_1C0D7853C();
      if (v1)
      {
        return result;
      }
    }
  }

  if (*(v0 + 17) == 1)
  {
    result = sub_1C0D7852C();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 20))
  {
    result = sub_1C0D7855C();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 24) == 1)
  {
    result = sub_1C0D7852C();
    if (v1)
    {
      return result;
    }
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_21;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_19;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_19:
    if (v6 == v7)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  result = sub_1C0D7854C();
  if (v1)
  {
    return result;
  }

LABEL_21:
  if (*(v0 + 48) != 1 || (result = sub_1C0D7852C(), !v1))
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_32;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        result = sub_1C0D7854C();
        if (v1)
        {
          return result;
        }

        goto LABEL_32;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_31;
    }

LABEL_32:
    v13 = v0 + *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0) + 48);
    return sub_1C0D783CC();
  }

  return result;
}

uint64_t sub_1C0D367B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = xmmword_1C0D7BAB0;
  *(a2 + 48) = 0;
  *(a2 + 56) = xmmword_1C0D7BAB0;
  v2 = a2 + *(a1 + 48);
  return sub_1C0D783DC();
}

uint64_t sub_1C0D36820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D36894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C0D36908(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1C0D3695C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAF0, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D369FC(uint64_t a1)
{
  v2 = sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D36A68()
{
  sub_1C0D37580(&qword_1EBE6DA48, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D36AE8()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D50);
  __swift_project_value_buffer(v0, qword_1EBE72D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7B690;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v5 = "AES_GCM_256_128";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C0D7857C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C0D7858C();
}

uint64_t sub_1C0D36C74()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72D68);
  __swift_project_value_buffer(v0, qword_1EBE72D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0D7CAD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C0D7857C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prime";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "threshold";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shamirGeneratorState";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D36EBC()
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_1C0D7848C();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_1C0D784AC();
    }
  }
}

uint64_t sub_1C0D36F74()
{
  if (!*v0 || (result = sub_1C0D7855C(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1C0D7855C(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_1C0D7855C(), !v1))
      {
        v3 = *(v0 + 16);
        v4 = *(v0 + 24);
        v5 = v4 >> 62;
        if ((v4 >> 62) > 1)
        {
          if (v5 != 2)
          {
            goto LABEL_16;
          }

          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          if (!v5)
          {
            if ((v4 & 0xFF000000000000) == 0)
            {
              goto LABEL_16;
            }

LABEL_15:
            result = sub_1C0D7854C();
            if (v1)
            {
              return result;
            }

            goto LABEL_16;
          }

          v6 = v3;
          v7 = v3 >> 32;
        }

        if (v6 != v7)
        {
          goto LABEL_15;
        }

LABEL_16:
        v8 = v0 + *(type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0) + 32);
        return sub_1C0D783CC();
      }
    }
  }

  return result;
}

uint64_t sub_1C0D37090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1C0D7BAB0;
  v2 = a2 + *(a1 + 32);
  return sub_1C0D783DC();
}

uint64_t sub_1C0D370E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D37154(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C0D371C8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C0D3721C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D37580(&qword_1EBE6DAB0, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D372BC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C0D7859C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C0D37358(uint64_t a1)
{
  v2 = sub_1C0D37580(qword_1EBE6CBC8, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D373C4()
{
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D3741C()
{
  sub_1C0D37580(qword_1EBE6CBC8, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D37498()
{
  sub_1C0D78FFC();
  sub_1C0D78A4C();
  return sub_1C0D7902C();
}

uint64_t sub_1C0D37580(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C0D3792C()
{
  result = qword_1EBE6DA98;
  if (!qword_1EBE6DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6DAA0, qword_1C0D7D1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DA98);
  }

  return result;
}

uint64_t sub_1C0D37A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0D37A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C0D37B84(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v49 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAD0, &qword_1C0D7D2E0);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v49 - v12;
  v14 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAD8, &qword_1C0D7D2E8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v49 = v7;
  v51 = v13;
  v27 = a2;
  v50 = type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization(0);
  v28 = *(v50 + 28);
  v29 = *(v23 + 48);
  v52 = a1;
  sub_1C0D13734(a1 + v28, v26, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  sub_1C0D13734(v27 + v28, &v26[v29], &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  v30 = *(v15 + 48);
  if (v30(v26, 1, v14) == 1)
  {
    if (v30(&v26[v29], 1, v14) == 1)
    {
      sub_1C0D13578(v26, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
      goto LABEL_9;
    }

LABEL_7:
    v31 = &qword_1EBE6DAD8;
    v32 = &qword_1C0D7D2E8;
    v33 = v26;
LABEL_24:
    sub_1C0D13578(v33, v31, v32);
    goto LABEL_25;
  }

  sub_1C0D13734(v26, v22, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if (v30(&v26[v29], 1, v14) == 1)
  {
    sub_1C0D37A88(v22, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
    goto LABEL_7;
  }

  sub_1C0D37A20(&v26[v29], v18, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  v34 = sub_1C0D38354(v22, v18);
  sub_1C0D37A88(v18, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  sub_1C0D37A88(v22, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState);
  sub_1C0D13578(v26, &qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v35 = v52;
  if ((sub_1C0D04660(*(v52 + 1), *(v52 + 2), *(v27 + 1), *(v27 + 2)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 32);
  v39 = *(v54 + 48);
  sub_1C0D13734(v35 + v38, v51, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  sub_1C0D13734(v27 + v38, v36 + v39, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v40 = v56;
  v41 = *(v55 + 48);
  if (v41(v36, 1, v56) != 1)
  {
    v44 = v53;
    sub_1C0D13734(v36, v53, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    if (v41(v36 + v39, 1, v40) == 1)
    {
      sub_1C0D37A88(v44, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      goto LABEL_16;
    }

    v45 = v49;
    sub_1C0D37A20(v36 + v39, v49, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    if ((sub_1C0D04660(*v44, *(v44 + 8), *v45, *(v45 + 8)) & 1) == 0 || (sub_1C0D04660(*(v44 + 16), *(v44 + 24), *(v45 + 16), *(v45 + 24)) & 1) == 0 || (sub_1C0D04660(*(v44 + 32), *(v44 + 40), *(v45 + 32), *(v45 + 40)) & 1) == 0)
    {
      sub_1C0D37A88(v45, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      sub_1C0D37A88(v44, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
      v31 = &qword_1EBE6D9D0;
      v32 = &qword_1C0D7CAF8;
      goto LABEL_23;
    }

    v46 = *(v40 + 28);
    sub_1C0D783EC();
    sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08]);
    v47 = sub_1C0D78A7C();
    sub_1C0D37A88(v45, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D37A88(v44, type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox);
    sub_1C0D13578(v36, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
    if (v47)
    {
      goto LABEL_13;
    }

LABEL_25:
    v43 = 0;
    return v43 & 1;
  }

  if (v41(v36 + v39, 1, v40) != 1)
  {
LABEL_16:
    v31 = &qword_1EBE6DAD0;
    v32 = &qword_1C0D7D2E0;
LABEL_23:
    v33 = v36;
    goto LABEL_24;
  }

  sub_1C0D13578(v36, &qword_1EBE6D9D0, &qword_1C0D7CAF8);
LABEL_13:
  v42 = *(v37 + 24);
  sub_1C0D783EC();
  sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08]);
  v43 = sub_1C0D78A7C();
  return v43 & 1;
}

uint64_t sub_1C0D38284(uint64_t a1, uint64_t a2)
{
  if ((sub_1C0D04660(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1C0D04660(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (sub_1C0D04660(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingGeneratorSerialization.SealedBox(0) + 28);
  sub_1C0D783EC();
  sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08]);
  return sub_1C0D78A7C() & 1;
}

uint64_t sub_1C0D38354(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (*(a2 + 16))
    {
      if (v3)
      {
        return 0;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v3 = 0;
LABEL_8:
    if (v3 != *(a2 + 8))
    {
      return 0;
    }
  }

LABEL_9:
  if (*(a1 + 17) == *(a2 + 17) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && (sub_1C0D04660(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) != 0 && *(a1 + 48) == *(a2 + 48) && (sub_1C0D04660(*(a1 + 56), *(a1 + 64), *(a2 + 56), *(a2 + 64)) & 1) != 0)
  {
    v6 = *(type metadata accessor for CryptoKitSecretSharing_HybridSecretSharingSharedState(0) + 48);
    sub_1C0D783EC();
    sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08]);
    return sub_1C0D78A7C() & 1;
  }

  return 0;
}

unint64_t sub_1C0D384A4()
{
  result = qword_1EBE6DAF8[0];
  if (!qword_1EBE6DAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6DAF8);
  }

  return result;
}

uint64_t sub_1C0D384F8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || (sub_1C0D04660(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0) + 32);
  sub_1C0D783EC();
  sub_1C0D37580(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08]);
  return sub_1C0D78A7C() & 1;
}

uint64_t sub_1C0D38600()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ARC.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ARC.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0D387A8()
{
  result = qword_1EBE6DB80;
  if (!qword_1EBE6DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DB80);
  }

  return result;
}

uint64_t sub_1C0D387FC(uint64_t a1)
{
  v2 = sub_1C0D7821C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1C0D7820C();
  sub_1C0D781EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DB88, &unk_1C0D7D400);
  result = sub_1C0D78EEC();
  v6 = 0;
  v43 = a1;
  v7 = *(a1 + 64);
  v40 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v48 = v9 & v7;
  v10 = (v8 + 63) >> 6;
  v46 = result;
  v42 = result + 64;
  v41 = v10;
  if ((v9 & v7) != 0)
  {
    do
    {
      v11 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
LABEL_10:
      v14 = v11 | (v6 << 6);
      v15 = (*(v43 + 48) + 16 * v14);
      v16 = v15[1];
      v45 = *v15;
      v17 = (*(v43 + 56) + 16 * v14);
      v18 = *v17;
      v19 = v17[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D090, &qword_1C0D7B730);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C0D7B690;
      *(v20 + 32) = v18;
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v22);
        v24 = v23 - 32;
        if (v23 < 32)
        {
          v24 = v23 - 25;
        }

        v22[2] = v21;
        v22[3] = 2 * (v24 >> 3);
        v44 = sub_1C0D0EBC8(&v47, v22 + 4, v21, v19);
        sub_1C0D78BFC();
        sub_1C0CF6468(v45, v16);
        sub_1C0D78BFC();
        result = sub_1C0D38C0C();
        if (v44 != v21)
        {
          goto LABEL_36;
        }

        v25 = v16;
        v10 = v41;
        v26 = v45;
      }

      else
      {
        sub_1C0CF6468(v45, v16);
        result = sub_1C0D78BFC();
        v22 = MEMORY[0x1E69E7CC0];
        v26 = v45;
        v25 = v16;
      }

      v27 = v22[2];
      v28 = *(v20 + 16);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_33;
      }

      v30 = *(v20 + 24) >> 1;
      if (v30 < v29)
      {
        if (v28 <= v29)
        {
          v35 = v28 + v27;
        }

        else
        {
          v35 = *(v20 + 16);
        }

        result = sub_1C0CF4C28(1, v35, 1, v20);
        v20 = result;
        v28 = *(result + 16);
        v30 = *(result + 24) >> 1;
        if (!v22[2])
        {
LABEL_27:

          if (v27)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v31 = v22[2];
        if (!v27)
        {
          goto LABEL_27;
        }
      }

      if ((v30 - v28) < v27)
      {
        goto LABEL_37;
      }

      memcpy((v20 + 8 * v28 + 32), v22 + 4, 8 * v27);

      if (v27)
      {
        v32 = *(v20 + 16);
        v33 = __OFADD__(v32, v27);
        v34 = v32 + v27;
        if (v33)
        {
          goto LABEL_38;
        }

        *(v20 + 16) = v34;
      }

LABEL_28:

      *(v42 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v36 = (v46[6] + 16 * v14);
      *v36 = v26;
      v36[1] = v25;
      *(v46[7] + 8 * v14) = v20;
      v37 = v46[2];
      v33 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v33)
      {
        goto LABEL_35;
      }

      v46[2] = v38;
    }

    while (v48);
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
      sub_1C0D38C14();
      v39 = sub_1C0D781FC();

      return v39;
    }

    v13 = *(v40 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v48 = (v13 - 1) & v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1C0D38C14()
{
  result = qword_1EBE6DB90;
  if (!qword_1EBE6DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
    sub_1C0D38CA0();
    sub_1C0D38CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DB90);
  }

  return result;
}

unint64_t sub_1C0D38CA0()
{
  result = qword_1EBE6DB98;
  if (!qword_1EBE6DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DB98);
  }

  return result;
}

unint64_t sub_1C0D38CF4()
{
  result = qword_1EBE6DBA0[0];
  if (!qword_1EBE6DBA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6DBA0);
  }

  return result;
}

uint64_t sub_1C0D38D70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D38DC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D38E4C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C0D38EAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0D38EE8(void *a1)
{
  v1 = [a1 serializedBigEndianScalar];
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = sub_1C0D7832C();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
LABEL_11:
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
      }

      else if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v11 = 2 * v7;
          v12 = sub_1C0D78C2C();
          *(v12 + 16) = v11;
          bzero((v12 + 32), v11);
LABEL_16:
          v16 = 0;
          v17 = v12;
          sub_1C0CF6468(v3, v5);
          sub_1C0D39098(v3, v5, &v17, &v16);
          sub_1C0CF448C(v3, v5);
          v13 = *(v17 + 16);
          v14 = sub_1C0D78AFC();

          sub_1C0CF448C(v3, v5);
          return v14;
        }

LABEL_15:
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(v5);
    goto LABEL_11;
  }

  LODWORD(v7) = HIDWORD(v3) - v3;
  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v7 = v7;
    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D39098(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v26 = sub_1C0D7836C();
  v8 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  if (a2 >> 62 == 2)
  {
    v12 = *(a1 + 16);
  }

  sub_1C0CF6468(a1, a2);
  sub_1C0D7837C();
  sub_1C0D39328();
  result = sub_1C0D78D4C();
  if (v28)
  {
    return (*(v25 + 8))(v10, v26);
  }

  v14 = v27;
  while (1)
  {
    v15 = *a4;
    if (*a4 + 0x4000000000000000 < 0)
    {
      break;
    }

    if (v14 <= 0x9F)
    {
      v16 = (v14 >> 4) | 0x30;
    }

    else
    {
      v16 = (v14 >> 4) + 87;
    }

    v17 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v17;
    if (result)
    {
      v18 = 2 * v15;
      if (2 * v15 < 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = sub_1C0CFD670(v17);
      v17 = result;
      *a3 = result;
      v18 = 2 * v15;
      if (2 * v15 < 0)
      {
        goto LABEL_28;
      }
    }

    if (v18 >= *(v17 + 16))
    {
      goto LABEL_29;
    }

    *(v17 + v18 + 32) = v16;
    v19 = *a4;
    if (*a4 + 0x4000000000000000 < 0)
    {
      goto LABEL_30;
    }

    v20 = *a3;
    if ((v14 & 0xF) <= 9)
    {
      v21 = v14 & 0xF | 0x30;
    }

    else
    {
      v21 = (v14 & 0xF) + 87;
    }

    v22 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v20;
    if (result)
    {
      if (v19 < 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = sub_1C0CFD670(v20);
      v20 = result;
      *a3 = result;
      if (v19 < 0)
      {
LABEL_26:
        __break(1u);
        break;
      }
    }

    v23 = (2 * v19) | 1;
    if (v23 >= *(v20 + 16))
    {
      goto LABEL_31;
    }

    *(v20 + v23 + 32) = v21;
    if (__OFADD__(*a4, 1))
    {
      goto LABEL_32;
    }

    ++*a4;
    result = sub_1C0D78D4C();
    v14 = v27;
    if (v28 == 1)
    {
      return (*(v25 + 8))(v10, v26);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1C0D39328()
{
  result = qword_1ED9076D8;
  if (!qword_1ED9076D8)
  {
    sub_1C0D7836C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9076D8);
  }

  return result;
}

unint64_t sub_1C0D393E0()
{
  result = qword_1EBE6DC28;
  if (!qword_1EBE6DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DC28);
  }

  return result;
}

unint64_t sub_1C0D39434()
{
  result = qword_1EBE6C9D0;
  if (!qword_1EBE6C9D0)
  {
    sub_1C0D3949C(255, &qword_1EBE6C9C8, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6C9D0);
  }

  return result;
}

uint64_t sub_1C0D3949C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C0D39510(__SecKey *a1, void (*a2)(uint64_t, uint64_t, unint64_t, void))
{
  v4 = SecKeyCopyAttributes(a1);
  if (!v4)
  {
    sub_1C0D393E0();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    return;
  }

  v5 = v4;
  sub_1C0D3949C(0, &qword_1EBE6C9C8, 0x1E69E58C0);
  sub_1C0D39434();
  v6 = sub_1C0D78A3C();
  v7 = v5;
  v8 = sub_1C0D78A8C();
  v9 = v8;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v30 = a2;
    v10 = sub_1C0D78EAC();

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(v6 + 16) || (v12 = sub_1C0D0F100(v8), (v13 & 1) == 0))
    {

LABEL_13:

      sub_1C0D393E0();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();

      return;
    }

    v30 = a2;
    v14 = *(*(v6 + 56) + 8 * v12);
    swift_unknownObjectRetain();
  }

  v15 = sub_1C0D78A3C();

  v16 = sub_1C0D78A8C();
  v17 = v16;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v18 = sub_1C0D78EAC();

    if (!v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v15 + 16) || (v20 = sub_1C0D0F100(v16), (v21 & 1) == 0))
    {

      goto LABEL_22;
    }

    v18 = *(*(v15 + 56) + 8 * v20);
    swift_unknownObjectRetain();
  }

  if ([v18 respondsToSelector_])
  {
    if ([v18 BOOLValue])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC30, &qword_1C0D7D5C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0D7B690;
      v23 = *MEMORY[0x1E6966700];
      *(inited + 32) = sub_1C0D78A9C();
      *(inited + 40) = v24;
      sub_1C0D3949C(0, &qword_1EBE6DC38, 0x1E696AD98);
      *(inited + 48) = sub_1C0D78D0C();
      v25 = sub_1C0D39B78(inited);
      swift_setDeallocating();
      sub_1C0D39C7C(inited + 32);
      swift_unknownObjectRelease();
LABEL_23:
      swift_unknownObjectRetain();
      objc_opt_self();
      v26 = swift_dynamicCastObjCClassUnconditional();
      v27 = sub_1C0D7832C();
      v29 = v28;

      v30(v27, v29, v25, 0);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  __break(1u);
}

void *sub_1C0D39970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D350, &unk_1C0D7BAA0);
  v3 = sub_1C0D78F0C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1C0D0EF18(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1C0D78BFC();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;
    sub_1C0D78BFC();
    v8 = sub_1C0D0EF18(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D39A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC58, &qword_1C0D7D698);
    v3 = sub_1C0D78F0C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1C0D0EF8C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C0D39B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC50, &qword_1C0D7D690);
    v3 = sub_1C0D78F0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1C0D78BFC();
      swift_unknownObjectRetain();
      result = sub_1C0D0F040(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0D39C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DC40, &qword_1C0D7D5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SecKeySEPInteropErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecKeySEPInteropErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0D39E38()
{
  result = qword_1EBE6DC48;
  if (!qword_1EBE6DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DC48);
  }

  return result;
}

uint64_t sub_1C0D39E8C(void *a1, void *a2, void *a3)
{
  if (qword_1EBE6CCC0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C0D6E528(qword_1EBE72D98);
  v6 = [a1 serializedBigEndianScalar];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C0D7832C();
    v10 = v9;

    sub_1C0D7834C();
    sub_1C0CF448C(v8, v10);
    v11 = [a2 serializedPublicKey_];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1C0D7832C();
      v15 = v14;

      sub_1C0D7834C();
      sub_1C0CF448C(v13, v15);
      v16 = [a3 serializedPublicKey_];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1C0D7832C();
        v20 = v19;

        sub_1C0D7834C();
        sub_1C0CF448C(v18, v20);
        return v22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id sub_1C0D3A04C()
{
  v2 = v0;
  if (qword_1EBE6CCA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1C0D6E528(qword_1EBE72D80);
  v22 = v3;
  result = [*(v0 + 16) serializedPublicKey_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_1C0D7832C();
  v8 = v7;

  sub_1C0D7834C();
  sub_1C0CF448C(v6, v8);
  result = [*v2 serializedPublicKey_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = sub_1C0D7832C();
  v12 = v11;

  sub_1C0D7834C();
  sub_1C0CF448C(v10, v12);
  result = [*(v2 + 8) serializedPublicKey_];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1C0D7832C();
  v16 = v15;

  sub_1C0D7834C();
  sub_1C0CF448C(v14, v16);
  v17 = sub_1C0D3AE84(*(v2 + 24), *(v2 + 32));
  if (v1)
  {
    return sub_1C0CF448C(v21, v22);
  }

  v19 = v17;
  v20 = v18;
  sub_1C0D7834C();
  sub_1C0CF448C(v19, v20);
  return v21;
}

uint64_t sub_1C0D3A200()
{
  v1 = v0;
  if (qword_1EBE6CCB8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBE72D90;
  v3 = sub_1C0D3ACBC(*(v1 + 72));
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = sub_1C0D6E528(v5);
  v6 = [*v1 serializedPublicKey_];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1C0D7832C();
  v10 = v9;

  sub_1C0D7834C();
  sub_1C0CF448C(v8, v10);
  v11 = [*(v1 + 8) serializedPublicKey_];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_1C0D7832C();
  v15 = v14;

  sub_1C0D7834C();
  sub_1C0CF448C(v13, v15);
  v16 = [*(v1 + 16) serializedBigEndianScalar];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C0D7832C();
    v20 = v19;

    sub_1C0D7834C();
    sub_1C0CF448C(v18, v20);
    v21 = sub_1C0D3A698();
    v23 = v22;
    sub_1C0D7834C();
    sub_1C0CF448C(v21, v23);
    return v25;
  }

LABEL_11:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D3A3F0()
{
  v0 = sub_1C0D786CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  (*(v1 + 8))(v4, v0);
  result = [v5 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v0 = 3 * result;
    if ((result * 3) >> 64 == (3 * result) >> 63)
    {
      if (qword_1EBE6CCC8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  result = swift_once();
LABEL_4:
  if (__OFADD__(v0, qword_1EBE72DA0))
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72D80 = v0 + qword_1EBE72DA0;
  }

  return result;
}

uint64_t sub_1C0D3A56C()
{
  v0 = sub_1C0D786CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  (*(v1 + 8))(v4, v0);
  result = [v5 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72D88 = result;
  }

  return result;
}

uint64_t sub_1C0D3A698()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = sub_1C0D3ACBC(v2);
  v41 = sub_1C0D6E528(v3);
  v4 = [*v0 serializedPublicKey_];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = sub_1C0D7832C();
  v8 = v7;

  sub_1C0D7834C();
  sub_1C0CF448C(v6, v8);
  if (v2 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2)
  {
    v9 = 0;
    v10 = *(v1 + 8);
    do
    {
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v11 = *(v10 + 32 + 8 * v9);
      v12 = [v11 serializedBigEndianScalar];
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = v12;
      ++v9;
      v14 = sub_1C0D7832C();
      v16 = v15;

      sub_1C0D7834C();
      sub_1C0CF448C(v14, v16);
    }

    while (v2 != v9);
    v17 = 0;
    v18 = *(v1 + 16);
    while (v17 < *(v18 + 16))
    {
      v19 = *(v18 + 32 + 8 * v17);
      v20 = [v19 serializedBigEndianScalar];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      ++v17;
      v22 = sub_1C0D7832C();
      v24 = v23;

      sub_1C0D7834C();
      sub_1C0CF448C(v22, v24);
      if (v2 == v17)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v25 = [*(v1 + 24) serializedBigEndianScalar];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1C0D7832C();
    v29 = v28;

    sub_1C0D7834C();
    sub_1C0CF448C(v27, v29);
    v30 = [*(v1 + 32) serializedBigEndianScalar];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1C0D7832C();
      v34 = v33;

      sub_1C0D7834C();
      sub_1C0CF448C(v32, v34);
      v35 = [*(v1 + 40) serializedBigEndianScalar];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1C0D7832C();
        v39 = v38;

        sub_1C0D7834C();
        sub_1C0CF448C(v37, v39);
        return v41;
      }
    }
  }

LABEL_20:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

int64_t sub_1C0D3A984(uint64_t a1, void *a2)
{
  v3 = sub_1C0D786CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v9 = sub_1C0D786BC();
  v10 = *(v4 + 8);
  v10(v7, v3);
  result = [v8 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  if (result + 0x4000000000000000 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v10(v7, v3);
  result = [v8 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFADD__(2 * v12, result))
  {
    *a2 = 2 * v12 + result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1C0D3AB30()
{
  result = qword_1EBE6D428;
  if (!qword_1EBE6D428)
  {
    sub_1C0D7884C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D428);
  }

  return result;
}

int64_t sub_1C0D3AB88()
{
  v0 = sub_1C0D786CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  (*(v1 + 8))(v4, v0);
  result = [v5 groupOrderByteCountForCP_];
  if (result < 0)
  {
    __break(1u);
  }

  else if (result + 0x4000000000000000 >= 0)
  {
    qword_1EBE72DA0 = 2 * result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D3ACBC(uint64_t a1)
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D3AB30();
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  v9 = *(v3 + 8);
  v9(v6, v2);
  result = [v7 compressedx962PointByteCountForCurveParameters_];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = __OFADD__(2 * a1, 3);
  v12 = 2 * a1 + 3;
  if (v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  sub_1C0D786EC();
  v14 = sub_1C0D786BC();
  v9(v6, v2);
  result = [v7 groupOrderByteCountForCP_];
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v12 * result;
  if ((v12 * result) >> 64 != (v12 * result) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v13 + v15;
  if (__OFADD__(v13, v15))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D3AE84(void *a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    if (qword_1EBE6CCC8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C0D6E528(qword_1EBE72DA0);
    v4 = [a1 serializedBigEndianScalar];
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = v4;
    v6 = sub_1C0D7832C();
    v8 = v7;

    sub_1C0D7834C();
    sub_1C0CF448C(v6, v8);
    v9 = *(a2 + 32);
    v10 = [v9 serializedBigEndianScalar];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C0D7832C();
      v14 = v13;

      sub_1C0D7834C();
      sub_1C0CF448C(v12, v14);
      return v17;
    }

    else
    {
LABEL_8:
      result = sub_1C0D78EBC();
      __break(1u);
    }
  }

  else
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  return result;
}

id Scrypt.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Scrypt.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Scrypt();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Scrypt.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Scrypt();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s16CryptoKitPrivate6ScryptC9deriveKey8password4salt10outputSize4cost05blockJ015parallelizationSo6NSDataCSgAL_AMSis6UInt64Vs6UInt32VAQtFZ_0(void *a1, void *a2, size_t a3)
{
  result = ccscrypt_storage_size();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (result)
  {
    v7 = result;
    v8 = sub_1C0D78C2C();
    *(v8 + 16) = v7;
    bzero((v8 + 32), v7);
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (!a3)
  {
LABEL_8:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v9 = sub_1C0D78C2C();
  *(v9 + 16) = a3;
  bzero((v9 + 32), a3);
LABEL_9:
  [a1 length];
  [a1 bytes];
  if (a2)
  {
    [a2 length];
    [a2 bytes];
  }

  sub_1C0D78BFC();
  sub_1C0D78BFC();
  v10 = ccscrypt();

  swift_bridgeObjectRelease_n();
  if (v10)
  {

    return 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v9 + 32 length:{a3, a3, v9 + 32}];

    return v11;
  }
}

unsigned __int8 *sub_1C0D3B3AC(unsigned __int8 *result, uint64_t a2, char **a3)
{
  if (result)
  {
    v4 = *result;
    v20 = 1;
    v18 = v4;
    if (v4)
    {
      v6 = 0;
      v17 = result;
      do
      {
        result = sub_1C0D3C6C4(result, a2, &v20);
        if (v3)
        {
          break;
        }

        v9 = result;
        v10 = v7;
        v11 = v8;
        v12 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_1C0CF4FA0(0, *(v12 + 2) + 1, 1, v12);
          *a3 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_1C0CF4FA0((v14 > 1), v15 + 1, 1, v12);
          *a3 = v12;
        }

        ++v6;
        *(v12 + 2) = v15 + 1;
        v16 = &v12[24 * v15];
        *(v16 + 4) = v9;
        *(v16 + 5) = v10;
        *(v16 + 6) = v11;
        result = v17;
      }

      while (v6 != v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PIR.KeywordPirClient.init(pirParams:hashFunctionCount:secretKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a4;
  v6 = *(result + 16);
  v50 = *result;
  v51 = v6;
  *v52 = *(result + 32);
  *&v52[10] = *(result + 42);
  v8 = *a3;
  v7 = a3[1];
  if (BYTE2(v50) != 2)
  {
    v18 = a2;
    v19 = *(result + 16);
    v37 = *result;
    v38 = v19;
    *v39 = *(result + 32);
    *&v39[10] = *(result + 42);
    v35 = v8;
    v36 = v7;
    result = PIR.IndexPirClient.init(pirParams:secretKey:)(&v37, &v35, &v40);
    if (v4)
    {
      return result;
    }

    v47 = v42;
    v48 = v43;
    v49 = v44;
    v45 = v40;
    v46 = v41;
LABEL_10:
    *v5 = v18;
    v20 = v45;
    *(v5 + 24) = v46;
    v21 = v48;
    *(v5 + 40) = v47;
    *(v5 + 56) = v21;
    *(v5 + 72) = v49;
    *(v5 + 8) = v20;
    return result;
  }

  v9 = *&v52[8] * a2;
  if ((*&v52[8] * a2) >> 64 != (*&v52[8] * a2) >> 63)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = v51;
  if (v51 <= 0)
  {
LABEL_18:
    sub_1C0CF448C(v8, v7);
LABEL_27:
    sub_1C0CF8DE0();
    swift_allocError();
    *v28 = 5;
    *(v28 + 4) = 1;
    swift_willThrow();
    return sub_1C0D3B80C(&v50);
  }

  v11 = v50;
  v31 = BYTE1(v50);
  v53 = *(&v50 + 1);
  v12 = *(&v51 + 1);
  v34 = *&v52[16];
  v33 = v52[24];
  v32 = v52[25];
  v13 = dword_1C0D7D7D4[v50];
  sub_1C0D3B860(&v50, &v40);
  result = cche_encryption_params_plaintext_modulus();
  if (!result)
  {
    goto LABEL_33;
  }

  v14 = result;
  v15 = dword_1C0D7D7D4[v11];
  result = cche_encryption_params_polynomial_degree();
  if (v10 >> 60)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v16 = (__clz(v14) ^ 0x3F) * result;
  if (v16 >= (8 * v10))
  {
    v17 = v16 / (8 * v10);
  }

  else
  {
    v17 = 1;
  }

  result = sub_1C0D33418(v17, v53);
  v22 = *(v12 + 16);
  if (v22)
  {
    v23 = (v12 + 32);
    v24 = 1;
    do
    {
      v25 = *v23++;
      v26 = v24 * v25;
      if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
      {
        __break(1u);
        goto LABEL_32;
      }

      v24 = v26;
      --v22;
    }

    while (v22);
    if (v26 >= result)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (result > 1)
  {
LABEL_17:
    sub_1C0D3B80C(&v50);
    goto LABEL_18;
  }

LABEL_20:
  v27 = v34;
  if (v33)
  {
    v27 = 1;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  if (v9 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_36;
  }

  if (v9 % v27)
  {
    sub_1C0CF448C(v8, v7);
    sub_1C0D3B80C(&v50);
    goto LABEL_27;
  }

  sub_1C0D3B80C(&v50);
  LOBYTE(v37) = v11;
  BYTE1(v37) = v31;
  BYTE2(v37) = 2;
  *(&v37 + 1) = v53;
  *&v38 = v10;
  *(&v38 + 1) = v12;
  *v39 = v17;
  *&v39[8] = v9;
  *&v39[16] = v34;
  v39[24] = v33;
  v39[25] = v32;
  v35 = v8;
  v36 = v7;
  result = PIR.IndexPirClient.init(pirParams:secretKey:)(&v37, &v35, &v40);
  if (!v4)
  {
    v47 = v42;
    v48 = v43;
    v49 = v44;
    v45 = v40;
    v46 = v41;
    v18 = a2;
    v5 = a4;
    goto LABEL_10;
  }

  return result;
}

uint64_t PIR.KeywordPirClient.generateGaloisKey()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  v14[2] = *(v1 + 40);
  v14[3] = v4;
  v14[4] = *(v1 + 72);
  v14[0] = *(v1 + 8);
  v14[1] = v3;
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v11 = *(v1 + 40);
  v12 = v6;
  v13 = *(v1 + 72);
  v9 = *(v1 + 8);
  v10 = v5;
  sub_1C0D3B974(v14, v8);
  PIR.IndexPirClient.generateGaloisKey()(a1);
  v8[2] = v11;
  v8[3] = v12;
  v8[4] = v13;
  v8[0] = v9;
  v8[1] = v10;
  return sub_1C0D3B9D0(v8);
}

uint64_t PIR.KeywordPirClient.generateRelinKey()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);

  return sub_1C0D61224(v4, v3, a1);
}

uint64_t PIR.KeywordPirClient.query(keyword:)(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 10);
  v6 = sub_1C0CF610C(a1, a2, *(v2 + 16), *v2);
  if (v5 == 2)
  {
    v9 = *(v2 + 11);
    v11 = *(v2 + 15);
    v13 = *(v2 + 24);
    v15 = *(v2 + 40);
    v17 = *(v2 + 56);
    v19 = *(v2 + 72);
    v7 = sub_1C0D5BA94(v6);

    if (!v3)
    {
      return v7;
    }
  }

  else
  {
    v10 = *(v2 + 11);
    v12 = *(v2 + 15);
    v14 = *(v2 + 24);
    v16 = *(v2 + 40);
    v18 = *(v2 + 56);
    v20 = *(v2 + 72);
    return sub_1C0D5BBD0(v6);
  }

  return result;
}

uint64_t PIR.KeywordPirClient.decrypt(replies:keyword:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v75 = a1;
  v6 = sub_1C0D789EC();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C0D7865C();
  v51 = *(v54 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = *(v3 + 24);
  v70 = *(v3 + 8);
  v71 = v14;
  v15 = *(v3 + 56);
  v72 = *(v3 + 40);
  v73 = v15;
  v74 = *(v3 + 72);
  v50 = BYTE2(v70);
  v49 = sub_1C0CF610C(a2, a3, *(&v70 + 1), v13);
  sub_1C0CF6410();
  sub_1C0D7863C();
  sub_1C0CF6468(a2, a3);
  v16 = v53;
  sub_1C0D3C2C8(a2, a3);
  sub_1C0CF448C(a2, a3);
  sub_1C0D7862C();
  (*(v52 + 8))(v9, v6);
  sub_1C0D7864C();
  result = (*(v51 + 8))(v12, v54);
  v18 = v65;
  if (v50 <= 1)
  {
    v55 = v75;
    v56 = 0;
    v57 = v49;
    v58 = 0;
    v59 = 0;
    sub_1C0D78BFC();
    v19 = sub_1C0D3C178();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      while (1)
      {
        v66 = v71;
        v67 = v72;
        v68 = v73;
        v69 = v74;
        v65 = v70;
        sub_1C0D3B974(&v70, &v60);
        v23 = PIR.IndexPirClient.decrypt(reply:index:)(v21, v22);
        if (v16)
        {
          break;
        }

        v25 = v23;
        v26 = v24;
        v62 = v67;
        v63 = v68;
        v64 = v69;
        v60 = v65;
        v61 = v66;
        sub_1C0D3B9D0(&v60);

        sub_1C0CF6468(v25, v26);
        v27 = sub_1C0D3C854(v25, v26);
        v28 = (v27 + 32);
        v29 = *(v27 + 2) + 1;
        while (--v29)
        {
          v30 = v28 + 3;
          v31 = *v28;
          v28 += 3;
          if (v31 == v18)
          {
            v21 = *(v30 - 2);
            sub_1C0CF6468(v21, *(v30 - 1));
            sub_1C0CF448C(v25, v26);

            goto LABEL_23;
          }
        }

        sub_1C0CF448C(v25, v26);

        v21 = sub_1C0D3C178();
        v22 = v32;
        if (!v21)
        {
          goto LABEL_10;
        }
      }

      v62 = v67;
      v63 = v68;
      v64 = v69;
      v60 = v65;
      v61 = v66;
      sub_1C0D3B9D0(&v60);

      goto LABEL_23;
    }

LABEL_10:

    goto LABEL_22;
  }

  v33 = v49;
  v66 = v71;
  v67 = v72;
  v68 = v73;
  v69 = v74;
  v65 = v70;
  if (*(v75 + 16))
  {
    v21 = *(v75 + 32);
    sub_1C0D3B974(&v70, &v60);
    v34 = sub_1C0D78BFC();
    PIR.IndexPirClient.decryptVectorizedPirReply(reply:indices:)(v34, v33);
    if (v16)
    {
      v62 = v67;
      v63 = v68;
      v64 = v69;
      v60 = v65;
      v61 = v66;
      sub_1C0D3B9D0(&v60);

LABEL_23:

      return v21;
    }

    v36 = v35;
    v62 = v67;
    v63 = v68;
    v64 = v69;
    v60 = v65;
    v61 = v66;
    sub_1C0D3B9D0(&v60);

    v75 = *(v36 + 16);
    if (!v75)
    {
LABEL_22:

      return 0;
    }

    v37 = 0;
    v38 = v36 + 32;
    while (v37 < *(v36 + 16))
    {
      v39 = v38;
      v40 = (v38 + 16 * v37);
      v42 = *v40;
      v41 = v40[1];
      sub_1C0CF6468(*v40, v41);
      sub_1C0CF6468(v42, v41);
      v43 = sub_1C0D3C854(v42, v41);
      ++v37;
      v44 = (v43 + 32);
      v45 = *(v43 + 2) + 1;
      while (--v45)
      {
        v46 = v44 + 3;
        v47 = *v44;
        v44 += 3;
        if (v47 == v18)
        {
          v21 = *(v46 - 2);
          sub_1C0CF6468(v21, *(v46 - 1));
          sub_1C0CF448C(v42, v41);

          goto LABEL_23;
        }
      }

      sub_1C0CF448C(v42, v41);

      v38 = v39;
      if (v37 == v75)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D3C178()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    result = *(*v0 + 8 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v4 + 16);
    if (v5 == v6)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v5 < v6)
    {
      v7 = *(v4 + 8 * v5 + 32);
      *(v0 + 24) = v5 + 1;
      return sub_1C0D78BFC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D3C214()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 8 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v5 + 16);
    if (v6 == v7)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v6 < v7)
    {
      v8 = *(v5 + 8 * v6 + 32);
      *(v0 + 24) = v6 + 1;
      sub_1C0D78BFC();
      sub_1C0D78BFC();
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D3C2C8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1C0D789EC();
      sub_1C0CF6410();
      result = sub_1C0D7861C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1C0D3C570(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *sub_1C0D3C448(uint64_t a1, unint64_t a2, char **a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = sub_1C0D3B3AC(v9, v4, a3);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1C0D3C620(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D3C570(uint64_t a1, uint64_t a2)
{
  result = sub_1C0D7812C();
  if (!result || (result = sub_1C0D7815C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C0D7814C();
      sub_1C0D789EC();
      sub_1C0CF6410();
      return sub_1C0D7861C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1C0D3C620(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = sub_1C0D7812C();
  v8 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C0D7814C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1C0D3B3AC(v8, v14, a4);
}

uint64_t sub_1C0D3C6C4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = a2 - result;
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a3 + 8;
  if (__OFADD__(*a3, 8))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *a3 + 10;
  if (__OFADD__(v6, 2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < v7)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v8 = 5;
    *(v8 + 4) = 1;
    swift_willThrow();
    return v3;
  }

  v9 = result;
  if (result)
  {
    v3 = *(result + *a3);
    v11 = *(result + v6);
    *a3 = v7;
    result = sub_1C0D0F990(v11);
    v16 = result;
    v17 = v13;
    v14 = v7 + v11;
    if (!__OFADD__(v7, v11))
    {
      if (v4 < v14)
      {
        goto LABEL_14;
      }

      if (v14 >= v7)
      {
        if (sub_1C0D73074(v7, v7 + v11, v9, a2) == v11)
        {
          sub_1C0D72C50(&v16, v9, a2, a3, v11);
          *a3 = v14;
          return v3;
        }

LABEL_14:
        sub_1C0CF8DE0();
        swift_allocError();
        *v15 = 5;
        *(v15 + 4) = 1;
        swift_willThrow();
        sub_1C0CF448C(v16, v17);
        return v3;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C0D3C854(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
    if (a1 == a1 >> 32)
    {
LABEL_10:
      sub_1C0CF8DE0();
      swift_allocError();
      *v7 = 5;
      *(v7 + 4) = 1;
      swift_willThrow();
      return sub_1C0CF448C(a1, a2);
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E69E7CC0];
  sub_1C0D3C448(a1, a2, &v8);
  sub_1C0CF448C(a1, a2);
  result = v8;
  if (v2)
  {
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C0D3C968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D3C9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}