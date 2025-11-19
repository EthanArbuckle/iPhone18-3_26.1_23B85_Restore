id sub_21457B62C(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21457B680(_BYTE *a1)
{
  v1[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ObjCValidatorContextWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_21457B7DC()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCValidatorContextWrapper();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21457B830()
{
  v1 = *v0;
  v2 = type metadata accessor for _ObjCValidatorContextWrapper();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___BlastDoorValidatorContext_validatorContext] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21457B884(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorMessage_message];
  v3 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v3;
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 14) = *(a1 + 112);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v4;
  v5 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _ObjCMessageWrapper();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21457B8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 64);
  v4 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 96);
  v12 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 112);
  v6 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 16);
  v11[0] = *(v1 + OBJC_IVAR___BlastDoorMessage_message);
  v5 = v11[0];
  v7 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 32);
  v8 = *(v1 + OBJC_IVAR___BlastDoorMessage_message + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *(a1 + 112) = v14;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *a1 = v5;
  return sub_214091538(v11, v10);
}

uint64_t sub_21457BA44()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMessage_message);
  v2 = *(v0 + OBJC_IVAR___BlastDoorMessage_message + 8);

  return v1;
}

id sub_21457BAE8(void *a1)
{
  v2 = (v1 + *a1);
  result = v2[6];
  if (result)
  {
    if (result == 1)
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v4 = v2[6];
      v5 = v2[7];
      v6 = v2[8];
      return sub_214664BB8();
    }
  }

  return result;
}

id sub_21457BB80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 96))
  {
    v4 = *(v3 + 96);

    v5 = sub_2146D98E8();

    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21457BC30(void *a1)
{
  if (*(v1 + *a1 + 96))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21457BCD4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorMessage_message + 112);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v42 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCAttributionInfoWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 184)
    {
      v7 = *(v1 + i);
      v8 = *(v1 + i + 16);
      v9 = *(v1 + i + 48);
      v32 = *(v1 + i + 32);
      v33 = v9;
      v30 = v7;
      v31 = v8;
      v10 = *(v1 + i + 64);
      v11 = *(v1 + i + 80);
      v12 = *(v1 + i + 112);
      v36 = *(v1 + i + 96);
      v37 = v12;
      v34 = v10;
      v35 = v11;
      v13 = *(v1 + i + 128);
      v14 = *(v1 + i + 144);
      v15 = *(v1 + i + 160);
      v41 = *(v1 + i + 176);
      v39 = v14;
      v40 = v15;
      v38 = v13;
      v16 = objc_allocWithZone(v4);
      v17 = &v16[OBJC_IVAR___BlastDoorAttributionInfo_attributionInfo];
      v18 = v33;
      v20 = v30;
      v19 = v31;
      *(v17 + 2) = v32;
      *(v17 + 3) = v18;
      *v17 = v20;
      *(v17 + 1) = v19;
      v21 = v37;
      v23 = v34;
      v22 = v35;
      *(v17 + 6) = v36;
      *(v17 + 7) = v21;
      *(v17 + 4) = v23;
      *(v17 + 5) = v22;
      v25 = v39;
      v24 = v40;
      v26 = v38;
      *(v17 + 88) = v41;
      *(v17 + 9) = v25;
      *(v17 + 10) = v24;
      *(v17 + 8) = v26;
      sub_2142E4A90(&v30, v29);
      v28.receiver = v16;
      v28.super_class = v4;
      objc_msgSendSuper2(&v28, sel_init);
      sub_2146D9F98();
      v27 = *(v42 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v42;
  }

  return result;
}

id sub_21457BF70()
{
  v1 = *(v0 + 80);
  v13[4] = *(v0 + 64);
  v13[5] = v1;
  v13[6] = *(v0 + 96);
  v14 = *(v0 + 112);
  v2 = *(v0 + 16);
  v13[0] = *v0;
  v13[1] = v2;
  v3 = *(v0 + 48);
  v13[2] = *(v0 + 32);
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMessage_message];
  v7 = *(v0 + 80);
  *(v6 + 4) = *(v0 + 64);
  *(v6 + 5) = v7;
  *(v6 + 6) = *(v0 + 96);
  *(v6 + 14) = *(v0 + 112);
  v8 = *(v0 + 16);
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = *(v0 + 48);
  *(v6 + 2) = *(v0 + 32);
  *(v6 + 3) = v9;
  sub_214091538(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21457C02C()
{
  v1 = v0[5];
  v20 = v0[4];
  v21 = v1;
  v22 = v0[6];
  v23 = *(v0 + 14);
  v2 = v0[1];
  v16 = *v0;
  v17 = v2;
  v3 = v0[3];
  v18 = v0[2];
  v19 = v3;
  v4 = type metadata accessor for _ObjCMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMessage_message];
  v7 = v19;
  v9 = v16;
  v8 = v17;
  *(v6 + 2) = v18;
  *(v6 + 3) = v7;
  *v6 = v9;
  *(v6 + 1) = v8;
  v11 = v21;
  v10 = v22;
  v12 = v20;
  *(v6 + 14) = v23;
  *(v6 + 5) = v11;
  *(v6 + 6) = v10;
  *(v6 + 4) = v12;
  sub_214091538(&v16, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_21457C0E8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_214593100(a1, v3 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_214307C44(a1);
  return v4;
}

id sub_21457C15C(uint64_t a1)
{
  sub_214593100(a1, v1 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCTypingIndicatorWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214307C44(a1);
  return v3;
}

id sub_21457C2AC()
{
  sub_213FB2E54(v0 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator + 8, __src, &qword_27C909940, &qword_2146F5870);
  if (__src[0])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_214593180(__dst, __src);
    v1 = type metadata accessor for _ObjCTypingIndicator_IconWrapper();
    v2 = objc_allocWithZone(v1);
    sub_214593180(__src, v2 + OBJC_IVAR___BlastDoorTypingIndicator_Icon_typingIndicator_Icon);
    v5.receiver = v2;
    v5.super_class = v1;
    v3 = objc_msgSendSuper2(&v5, sel_init);
    sub_214313EFC(__src);
    sub_214313EFC(__dst);
  }

  else
  {
    sub_213FB2DF4(__src, &qword_27C909940, &qword_2146F5870);
    return 0;
  }

  return v3;
}

id sub_21457C3C8(uint64_t a1, void *a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t))
{
  v9 = objc_allocWithZone(v4);
  a3(a1, &v9[*a2]);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a4(a1);
  return v10;
}

uint64_t sub_21457C52C()
{
  sub_214593100(v0 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator, v3);
  if (v5 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = v4;

    sub_214307C44(v3);
    return v1;
  }

  return result;
}

id sub_21457C6D8()
{
  sub_214593100(v0, v6);
  v1 = type metadata accessor for _ObjCTypingIndicatorWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214593100(v6, v2 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214307C44(v6);
  return v3;
}

id sub_21457C758()
{
  sub_214593100(v0, v6);
  v1 = type metadata accessor for _ObjCTypingIndicatorWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214593100(v6, v2 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214307C44(v6);
  return v3;
}

id sub_21457C7D8(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorSticker_sticker];
  v5 = a1[11];
  *(v4 + 10) = a1[10];
  *(v4 + 11) = v5;
  *(v4 + 185) = *(a1 + 185);
  v6 = a1[7];
  *(v4 + 6) = a1[6];
  *(v4 + 7) = v6;
  v7 = a1[9];
  *(v4 + 8) = a1[8];
  *(v4 + 9) = v7;
  v8 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v8;
  v9 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v9;
  v10 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v10;
  v12.receiver = v3;
  v12.super_class = v1;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21457C860(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorSticker_sticker];
  v3 = a1[11];
  *(v2 + 10) = a1[10];
  *(v2 + 11) = v3;
  *(v2 + 185) = *(a1 + 185);
  v4 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v4;
  v5 = a1[9];
  *(v2 + 8) = a1[8];
  *(v2 + 9) = v5;
  v6 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v6;
  v7 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v7;
  v8 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for _ObjCStickerWrapper();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_21457C8D8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorSticker_sticker;
  v3 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 144);
  v4 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 176);
  v31 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 160);
  v32[0] = v4;
  *(v32 + 9) = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 185);
  v5 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 80);
  v6 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 112);
  v27 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 96);
  v7 = v27;
  v28 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 112);
  v9 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 144);
  v29 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 128);
  v10 = v29;
  v30 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 16);
  v12 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 48);
  v23 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 32);
  v13 = v23;
  v24 = v12;
  v14 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 48);
  v15 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 80);
  v25 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 64);
  v16 = v25;
  v26 = v15;
  v17 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 16);
  v22[0] = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker);
  v18 = v22[0];
  v22[1] = v17;
  v19 = *(v1 + OBJC_IVAR___BlastDoorSticker_sticker + 176);
  a1[10] = v31;
  a1[11] = v19;
  *(a1 + 185) = *(v2 + 185);
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_214307F44(v22, &v21);
}

uint64_t sub_21457CA8C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 8);

  return v1;
}

uint64_t sub_21457CB44()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSticker_sticker);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 144);
  v3 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 176);
  v109 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 160);
  v110[0] = v3;
  *(v110 + 9) = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 185);
  v4 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 80);
  v5 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 112);
  v105 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 96);
  v106 = v5;
  v107 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 128);
  v108 = v2;
  v6 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 48);
  v101 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 32);
  v102 = v6;
  v103 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 64);
  v104 = v4;
  v7 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 16);
  v100[0] = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker);
  v100[1] = v7;
  v8 = v101;
  v74 = v100[0];
  v9 = v7;
  v84 = *(v1 + 152);
  v85 = *(v1 + 168);
  v86 = *(v1 + 184);
  v87 = *(v1 + 200);
  v80 = *(v1 + 88);
  v81 = *(v1 + 104);
  v82 = *(v1 + 120);
  v83 = *(v1 + 136);
  v76 = *(v1 + 24);
  v77 = *(v1 + 40);
  v78 = *(v1 + 56);
  v79 = *(v1 + 72);
  v75 = v7;
  sub_214307F44(v100, &v88);
  sub_214307E9C(&v74);
  v10 = v1[9];
  v11 = v1[11];
  v98 = v1[10];
  v99[0] = v11;
  *(v99 + 9) = *(v1 + 185);
  v12 = v1[5];
  v13 = v1[7];
  v94 = v1[6];
  v95 = v13;
  v15 = v1[7];
  v14 = v1[8];
  v16 = v14;
  v97 = v1[9];
  v96 = v14;
  v17 = v1[3];
  v90 = v1[2];
  v91 = v17;
  v18 = v1[4];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v18;
  v93 = v1[5];
  v92 = v18;
  v22 = *v1;
  v23 = *v1;
  v89 = v1[1];
  v88 = v22;
  v50 = v23;
  v24 = v1[11];
  v61 = v98;
  v62[0] = v24;
  *(v62 + 9) = *(v1 + 185);
  v57 = v94;
  v58 = v15;
  v59 = v16;
  v60 = v10;
  v53 = v20;
  v54 = v19;
  v25 = *(v1 + 2);
  v55 = v21;
  v56 = v12;
  if (v90)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(&v89 + 1);
  }

  v51 = v25;
  v52 = *(&v89 + 1);
  sub_214307F44(&v88, v63);
  sub_214307E9C(&v50);
  v27 = v1[9];
  v28 = v1[11];
  v72 = v1[10];
  v73[0] = v28;
  *(v73 + 9) = *(v1 + 185);
  v29 = v1[5];
  v30 = v1[7];
  v68 = v1[6];
  v69 = v30;
  v70 = v1[8];
  v71 = v27;
  v31 = v1[3];
  v64 = v1[2];
  v65 = v31;
  v66 = v1[4];
  v67 = v29;
  v32 = v1[1];
  v63[0] = *v1;
  v63[1] = v32;
  v36 = v63[0];
  v46 = *(v1 + 152);
  v47 = *(v1 + 168);
  v48 = *(v1 + 184);
  v49 = *(v1 + 200);
  v42 = *(v1 + 88);
  v43 = *(v1 + 104);
  v44 = *(v1 + 120);
  v45 = *(v1 + 136);
  v38 = *(v1 + 24);
  v39 = *(v1 + 40);
  v40 = *(v1 + 56);
  v41 = *(v1 + 72);
  if (v64)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  v37 = v32;
  sub_214307F44(v63, &v35);
  result = sub_214307E9C(&v36);
  if (__OFSUB__(v26, v33))
  {
    __break(1u);
  }

  else if (v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }

  return result;
}

id sub_21457CE08(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 48))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21457CE80(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);

  return v3;
}

id sub_21457CF9C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 136);
  v20 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 120);
  v21 = v1;
  v22 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 152);
  v23 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 168);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 72);
  v16 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 56);
  v17 = v2;
  v3 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 104);
  v18 = *(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 88);
  v19 = v3;
  v4 = type metadata accessor for _ObjCMessageWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMessage_message];
  v7 = v19;
  v9 = v16;
  v8 = v17;
  *(v6 + 2) = v18;
  *(v6 + 3) = v7;
  *v6 = v9;
  *(v6 + 1) = v8;
  v11 = v21;
  v10 = v22;
  v12 = v20;
  *(v6 + 14) = v23;
  *(v6 + 5) = v11;
  *(v6 + 6) = v10;
  *(v6 + 4) = v12;
  sub_214091538(&v16, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_21457D118()
{
  if (*(v0 + OBJC_IVAR___BlastDoorSticker_sticker + 192))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_21457D274()
{
  v1 = v0[11];
  v19[10] = v0[10];
  v20[0] = v1;
  *(v20 + 9) = *(v0 + 185);
  v2 = v0[7];
  v19[6] = v0[6];
  v19[7] = v2;
  v3 = v0[9];
  v19[8] = v0[8];
  v19[9] = v3;
  v4 = v0[3];
  v19[2] = v0[2];
  v19[3] = v4;
  v5 = v0[5];
  v19[4] = v0[4];
  v19[5] = v5;
  v6 = v0[1];
  v19[0] = *v0;
  v19[1] = v6;
  v7 = type metadata accessor for _ObjCStickerWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorSticker_sticker];
  v10 = v0[11];
  *(v9 + 10) = v0[10];
  *(v9 + 11) = v10;
  *(v9 + 185) = *(v0 + 185);
  v11 = v0[7];
  *(v9 + 6) = v0[6];
  *(v9 + 7) = v11;
  v12 = v0[9];
  *(v9 + 8) = v0[8];
  *(v9 + 9) = v12;
  v13 = v0[3];
  *(v9 + 2) = v0[2];
  *(v9 + 3) = v13;
  v14 = v0[5];
  *(v9 + 4) = v0[4];
  *(v9 + 5) = v14;
  v15 = v0[1];
  *v9 = *v0;
  *(v9 + 1) = v15;
  sub_214307F44(v19, v18);
  v17.receiver = v8;
  v17.super_class = v7;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_21457D350()
{
  v1 = v0[11];
  v32 = v0[10];
  v33[0] = v1;
  *(v33 + 9) = *(v0 + 185);
  v2 = v0[7];
  v28 = v0[6];
  v29 = v2;
  v3 = v0[9];
  v30 = v0[8];
  v31 = v3;
  v4 = v0[3];
  v24 = v0[2];
  v25 = v4;
  v5 = v0[5];
  v26 = v0[4];
  v27 = v5;
  v6 = v0[1];
  v22 = *v0;
  v23 = v6;
  v7 = type metadata accessor for _ObjCStickerWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorSticker_sticker];
  *v9 = v22;
  v10 = v26;
  v12 = v23;
  v11 = v24;
  *(v9 + 3) = v25;
  *(v9 + 4) = v10;
  *(v9 + 1) = v12;
  *(v9 + 2) = v11;
  v13 = v30;
  v15 = v27;
  v14 = v28;
  *(v9 + 7) = v29;
  *(v9 + 8) = v13;
  *(v9 + 5) = v15;
  *(v9 + 6) = v14;
  v17 = v32;
  v16 = v33[0];
  v18 = v31;
  *(v9 + 185) = *(v33 + 9);
  *(v9 + 10) = v17;
  *(v9 + 11) = v16;
  *(v9 + 9) = v18;
  sub_214307F44(&v22, v21);
  v20.receiver = v8;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_21457D440(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v7;
  v8 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v8;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_21457D4C8(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v6;
  v8.receiver = v3;
  v8.super_class = a3();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21457D538@<X0>(void *a1@<X0>, uint64_t (*a2)(_OWORD *, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  v4 = (v3 + *a1);
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  *a3 = v10[0];
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return a2(v10, &v9);
}

id sub_21457D5B0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_OWORD *, _OWORD *))
{
  v4 = (a1 + *a3);
  v5 = v4[1];
  v13[0] = *v4;
  v13[1] = v5;
  v6 = v4[3];
  v8 = *v4;
  v7 = v4[1];
  v13[2] = v4[2];
  v13[3] = v6;
  v12[4] = v8;
  v12[5] = v7;
  v9 = v4[3];
  v12[6] = v4[2];
  v12[7] = v9;
  a4(v13, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

id sub_21457D650(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = v4[2];
    v5 = sub_214664BB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_21457D6C8(void *a1)
{
  v2 = (v1 + *a1);
  if (!*v2)
  {
    return 0;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_214664BB8();
}

id sub_21457D724(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 40))
  {
    v4 = *(v3 + 40);

    v5 = sub_2146D98E8();

    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21457D7D4(void *a1)
{
  if (*(v1 + *a1 + 40))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_21457D858(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3 + 56);

  v4 = sub_2146D98E8();

  return v4;
}

uint64_t sub_21457D94C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[7];
  sub_214031CE0(*v3);
}

id sub_21457D9E4(uint64_t (*a1)(void), void *a2, void (*a3)(_OWORD *, char *))
{
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v7 = v3[3];
  v16[2] = v3[2];
  v16[3] = v7;
  v8 = a1();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a2];
  v11 = v3[3];
  *(v10 + 2) = v3[2];
  *(v10 + 3) = v11;
  v12 = v3[1];
  *v10 = *v3;
  *(v10 + 1) = v12;
  a3(v16, v15);
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_21457DAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, void (*a5)(__int128 *, char *))
{
  v8 = v5[1];
  v19 = *v5;
  v20 = v8;
  v9 = v5[3];
  v21 = v5[2];
  v22 = v9;
  v10 = a3();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*a4];
  v14 = v21;
  v13 = v22;
  v15 = v20;
  *v12 = v19;
  *(v12 + 1) = v15;
  *(v12 + 2) = v14;
  *(v12 + 3) = v13;
  a5(&v19, v18);
  v17.receiver = v11;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_21457DD48()
{
  v1 = type metadata accessor for Metadata();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v4, type metadata accessor for Metadata);
  v5 = type metadata accessor for _ObjCMetadataWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for Metadata);
  return v7;
}

id sub_21457DF6C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v6 = type metadata accessor for TextMessage(0);
  sub_213FB568C(v5 + *(v6 + 20), v4, type metadata accessor for TextMessage.MessageType);
  v7 = type metadata accessor for _ObjCEnumTextMessageMessageTypeWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v4, v8 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, type metadata accessor for TextMessage.MessageType);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
  return v9;
}

id sub_21457E0D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = a1 + *a3;
  v12 = a4(0);
  sub_213FB2E54(v11 + *(v12 + 24), v10, &unk_27C904F30, &unk_2146EFA20);
  v13 = sub_2146D8B88();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2146D8B38();
    (*(v14 + 8))(v10, v13);
    v16 = v17;
  }

  return v16;
}

uint64_t sub_21457E244@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *a1;
  v6 = a2(0);
  return sub_213FB2E54(v5 + *(v6 + 24), a3, &unk_27C904F30, &unk_2146EFA20);
}

id sub_21457E370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a3(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_213FB568C(a1 + *a4, &v21 - v13, a5);
  v15 = &v14[*(v11 + 40)];
  v16 = *(v15 + 3);
  if (v16 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);

    sub_213FB5844(v14, a6);
    if (v16)
    {
      v19 = sub_2146D9588();
      sub_213FDC6D0(v17, v16);
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  return result;
}

uint64_t sub_21457E500(uint64_t (*a1)(void), void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = a1(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_213FB568C(v4 + *a2, &v17 - v11, a3);
  v13 = &v12[*(v9 + 40)];
  if (*(v13 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 2);
    v15 = *(v13 + 3);

    sub_213FB5844(v12, a4);
    return v14;
  }

  return result;
}

uint64_t sub_21457E7FC()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v5, type metadata accessor for TextMessage);
  v6 = &v5[*(v2 + 48)];
  if (*(v6 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);

    sub_213FB5844(v5, type metadata accessor for TextMessage);
    return v7;
  }

  return result;
}

id sub_21457E93C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 44));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21457E9DC(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 44));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21457EB10(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 48));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21457EB78(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 48));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_21457EC90()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 52));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21457EDC0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 56));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21457EE28(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 56));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_21457EF40()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 60));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

id sub_21457F094()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 64));
  v3 = *v2;
  v4 = v2[1];
  *(v24 + 9) = *(v2 + 73);
  v5 = *(v24 + 9);
  v6 = *(v2 + 4);
  v23 = *(v2 + 3);
  v24[0] = v6;
  v7 = *(v2 + 2);
  v21 = *(v2 + 1);
  v22 = v7;
  *(v28 + 9) = v5;
  v27 = v23;
  v28[0] = v6;
  v25 = v21;
  v26 = v7;
  if (!v4)
  {
    return 0;
  }

  v8 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  *v10 = v3;
  *(v10 + 1) = v4;
  v11 = v28[0];
  *(v10 + 3) = v27;
  *(v10 + 4) = v11;
  *(v10 + 73) = *(v28 + 9);
  v12 = v26;
  *(v10 + 1) = v25;
  *(v10 + 2) = v12;
  v16[0] = v3;
  v16[1] = v4;
  v19 = v23;
  v20[0] = v24[0];
  *(v20 + 9) = *(v24 + 9);
  v17 = v21;
  v18 = v22;
  sub_2143140D0(v16, v15);
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

id _ObjCTextMessage_MessageSummaryInfoWrapper.__allocating_init(textMessage_MessageSummaryInfo:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v5 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = a1[4];
  *(v4 + 73) = *(a1 + 73);
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21457F290(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 72));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21457F330(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 72));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21457F3FC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 76));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_21457F468(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 80));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21457F508(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 80));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

id sub_21457F574(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 84));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21457F614(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 84));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21457F8B0()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v5, type metadata accessor for TextMessage);
  v6 = &v5[*(v2 + 100)];
  if (*(v6 + 3) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v6 + 2);
    v8 = *(v6 + 3);

    sub_213FB5844(v5, type metadata accessor for TextMessage);
    return v7;
  }

  return result;
}

id sub_21457FAB4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(__src, (v1 + v2), 0x109uLL);
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__src);
  result = 0;
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    v5 = type metadata accessor for _ObjCNicknameInformationWrapper();
    v6 = objc_allocWithZone(v5);
    memcpy(&v6[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __src, 0x109uLL);
    memcpy(v9, __dst, 0x109uLL);
    sub_2142FB7A4(v9, v8);
    v7.receiver = v6;
    v7.super_class = v5;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  return result;
}

id sub_21457FBA8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 100));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_2146D9588();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_21457FC48(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 100));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_21457FECC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 116));
  if (v5[8])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t sub_21457FF34(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 116));
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_21457FFB0()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage, v5, type metadata accessor for TextMessage);
  v6 = v5[*(v2 + 128)];
  sub_213FB5844(v5, type metadata accessor for TextMessage);
  return qword_214760600[v6];
}

uint64_t sub_2145801D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v4 = type metadata accessor for TextMessage(0);
  return sub_213FB2E54(v3 + *(v4 + 124), a1, &qword_27C913090, &unk_2146E9DB0);
}

uint64_t sub_2145802A4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = *(v1 + *(type metadata accessor for TextMessage(0) + 128));
}

uint64_t sub_214580464()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v2 = (v1 + *(type metadata accessor for TextMessage(0) + 136));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id TextMessage.bridgedToObjectiveC.getter()
{
  v1 = type metadata accessor for TextMessage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for TextMessage);
  v5 = type metadata accessor for _ObjCTextMessageWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorTextMessage_textMessage, type metadata accessor for TextMessage);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for TextMessage);
  return v7;
}

uint64_t sub_2145806D0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand), 0x131uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand), 0x131uLL);
  return sub_21430890C(__dst, &v4);
}

id sub_214580870()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand), 0x131uLL);
  v1 = type metadata accessor for _ObjCEnumTranscriptBackgroundCommandTypeWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType], __dst, 0x122uLL);
  sub_21430890C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_214580960()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand + 304))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand + 296);
  }
}

id sub_214580A40()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], v0, 0x131uLL);
  sub_21430890C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214580AC4()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], __dst, 0x131uLL);
  sub_21430890C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214580B54(const void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  memcpy(&v5[*a2], a1, 0x122uLL);
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214580BDC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo), 0x122uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo), 0x122uLL);
  return sub_2143087B4(__dst, &v4);
}

id sub_214580D08(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 32);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 24);
    v7 = *(v3 + 32);

    v8 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214580DD8(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);

    return v3;
  }

  return result;
}

id sub_214580E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 72);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 64);
    v7 = *(v3 + 72);

    v8 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214580F3C(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);

    return v3;
  }

  return result;
}

id sub_214580FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 112);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 104);
    v7 = *(v3 + 112);

    v8 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2145810A0(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);

    return v3;
  }

  return result;
}

id sub_214581134(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 152);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 144);
    v7 = *(v3 + 152);

    v8 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214581204(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);

    return v3;
  }

  return result;
}

uint64_t sub_214581354()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 184);

    return v1;
  }

  return result;
}

uint64_t sub_214581450()
{
  if ((*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 233) & 1) == 0)
  {
    return (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 232) & 1) == 0;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21458153C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo;
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 233))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 232);
    v3 = *(v1 + 224);
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_214581610()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 248))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 240);
  }
}

uint64_t sub_2145816F8()
{
  if (*(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 280) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo + 272);

    return v1;
  }

  return result;
}

id sub_21458186C()
{
  memcpy(__dst, v0, 0x122uLL);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v2 = objc_allocWithZone(updated);
  memcpy(&v2[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v0, 0x122uLL);
  sub_2143087B4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = updated;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2145818F0()
{
  memcpy(__dst, v0, 0x122uLL);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v2 = objc_allocWithZone(updated);
  memcpy(&v2[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], __dst, 0x122uLL);
  sub_2143087B4(__dst, v5);
  v4.receiver = v2;
  v4.super_class = updated;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214581980(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 32);
  v7 = &v5[*a2];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  v7[32] = v6;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_214581A08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo;
  v4 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo);
  v3 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 8);
  v5 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 16);
  v6 = *(v1 + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 24);
  LOBYTE(v2) = *(v2 + 32);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;

  return sub_213FDC9D0(v5, v6);
}

id sub_214581B00(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    v8 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_214581BD0(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);

    return v3;
  }

  return result;
}

id sub_214581D1C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  *v8 = v2;
  *(v8 + 1) = v1;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;

  sub_213FDC9D0(v3, v4);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214581DB4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  *v8 = v2;
  *(v8 + 1) = v1;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;

  sub_213FDC9D0(v3, v4);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214581E58(const void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  memcpy(&v5[*a2], a1, 0x131uLL);
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214581EE0(void *__src, void *a2, uint64_t (*a3)(void *))
{
  v5 = memcpy(&v3[*a2], __src, 0x131uLL);
  v7.receiver = v3;
  v7.super_class = a3(v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214581F3C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand), 0x131uLL);
  memcpy(a1, (v1 + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand), 0x131uLL);
  return sub_21459337C(__dst, &v4);
}

id sub_2145820DC()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand), 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], __dst, 0x131uLL);
  sub_21459337C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214582228()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundStandaloneCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand], v0, 0x131uLL);
  sub_21459337C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2145822AC()
{
  memcpy(__dst, v0, 0x131uLL);
  v1 = type metadata accessor for _ObjCTranscriptBackgroundStandaloneCommandWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand], __dst, 0x131uLL);
  sub_21459337C(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_214582330(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  v5 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v5;
  *(v4 + 16) = *(a1 + 128);
  v6 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v6;
  v7 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v7;
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145823A8(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  v3 = *(a1 + 112);
  *(v2 + 6) = *(a1 + 96);
  *(v2 + 7) = v3;
  *(v2 + 16) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v2 + 2) = *(a1 + 32);
  *(v2 + 3) = v4;
  v5 = *(a1 + 80);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v5;
  v6 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214582410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  v3 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 80);
  v4 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112);
  v21 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 96);
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 16);
  v6 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 48);
  v17 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 32);
  v7 = v17;
  v18 = v6;
  v8 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 80);
  v19 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 64);
  v10 = v19;
  v20 = v9;
  v11 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 16);
  v16[0] = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart);
  v12 = v16[0];
  v16[1] = v11;
  v13 = *(v1 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112);
  *(a1 + 96) = v21;
  *(a1 + 112) = v13;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v2 + 128);
  *(a1 + 128) = *(v2 + 128);
  *a1 = v12;
  *(a1 + 16) = v5;
  return sub_214308AB8(v16, v15);
}

uint64_t sub_2145825E8()
{
  if ((*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 25) & 1) == 0)
  {
    return (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 24) & 1) == 0;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145826D4()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  if (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

id sub_21458275C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 56);
  if (v4)
  {
    if (v4 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v6 = *(v3 + 48);
    v7 = *(v3 + 56);

    v8 = sub_2146D9588();
    sub_213FDC6D0(v6, v4);
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21458282C(void *a1)
{
  v2 = v1 + *a1;
  if (*(v2 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);

    return v3;
  }

  return result;
}

uint64_t sub_21458297C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 88);

    return v1;
  }

  return result;
}

id sub_214582A78()
{
  v1 = v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart;
  if (!*(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112))
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  return sub_214664BB8();
}

id sub_214582B9C()
{
  v1 = *(v0 + 112);
  v15[6] = *(v0 + 96);
  v15[7] = v1;
  v16 = *(v0 + 128);
  v2 = *(v0 + 48);
  v15[2] = *(v0 + 32);
  v15[3] = v2;
  v3 = *(v0 + 80);
  v15[4] = *(v0 + 64);
  v15[5] = v3;
  v4 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v4;
  v5 = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  v8 = *(v0 + 112);
  *(v7 + 6) = *(v0 + 96);
  *(v7 + 7) = v8;
  *(v7 + 16) = *(v0 + 128);
  v9 = *(v0 + 48);
  *(v7 + 2) = *(v0 + 32);
  *(v7 + 3) = v9;
  v10 = *(v0 + 80);
  *(v7 + 4) = *(v0 + 64);
  *(v7 + 5) = v10;
  v11 = *(v0 + 16);
  *v7 = *v0;
  *(v7 + 1) = v11;
  sub_214308AB8(v15, v14);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214582C58()
{
  v1 = v0[7];
  v23 = v0[6];
  v24 = v1;
  v25 = *(v0 + 16);
  v2 = v0[3];
  v19 = v0[2];
  v20 = v2;
  v3 = v0[5];
  v21 = v0[4];
  v22 = v3;
  v4 = v0[1];
  v17 = *v0;
  v18 = v4;
  v5 = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
  *v7 = v17;
  v8 = v21;
  v10 = v18;
  v9 = v19;
  *(v7 + 3) = v20;
  *(v7 + 4) = v8;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  v12 = v23;
  v11 = v24;
  v13 = v22;
  *(v7 + 16) = v25;
  *(v7 + 6) = v12;
  *(v7 + 7) = v11;
  *(v7 + 5) = v13;
  sub_214308AB8(&v17, v16);
  v15.receiver = v6;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

__n128 sub_214582D48@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorUnitPoint_unitPoint);
  *a1 = result;
  return result;
}

id sub_214582E70(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = &v3[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v6 = *a1;
  *(v6 + 2) = v4;
  v6[24] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214582ED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = &v1[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v4 = *a1;
  *(v4 + 2) = v2;
  v4[24] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214582F30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 24);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

id sub_214583020(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 16))
  {
    v4 = *(v3 + 16);

    v5 = sub_2146D98E8();

    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145830D0(void *a1)
{
  if (*(v1 + *a1 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_214583204()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v3;
  v7[24] = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214583290()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v3;
  v7[24] = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21458331C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2140A4F3C(a1, v3 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_2140A4F74(a1);
  return v4;
}

id sub_214583390(uint64_t a1)
{
  sub_2140A4F3C(a1, v1 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCVideoPreviewWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2140A4F74(a1);
  return v3;
}

uint64_t sub_2145834C0()
{
  sub_2140A4F3C(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_2140A4F74(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_214583738()
{
  v2 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 472);
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 480);
  v4 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 488);
  v3 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 496);
  v5 = type metadata accessor for _ObjCVideoPreview_VideoFormatWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorVideoPreview_VideoFormat_videoPreview_VideoFormat];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214583878()
{
  v2 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 504);
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 512);
  v3 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 520);
  v4 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview + 528);
  v5 = type metadata accessor for _ObjCVideoPreview_AudioFormatWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorVideoPreview_AudioFormat_videoPreview_AudioFormat];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214583918(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[*a2];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id VideoPreview.bridgedToObjectiveC.getter()
{
  sub_2140A4F3C(v0, v6);
  v1 = type metadata accessor for _ObjCVideoPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2140A4F3C(v6, v2 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2140A4F74(v6);
  return v3;
}

id sub_214583AA8()
{
  sub_2140A4F3C(v0, v6);
  v1 = type metadata accessor for _ObjCVideoPreviewWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2140A4F3C(v6, v2 + OBJC_IVAR___BlastDoorVideoPreview_videoPreview);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2140A4F74(v6);
  return v3;
}

id sub_214583B5C(uint64_t a1, void *a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t))
{
  v9 = objc_allocWithZone(v4);
  a3(a1, &v9[*a2]);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a4(a1);
  return v10;
}

uint64_t sub_214583CE4(void *a1, void (*a2)(uint64_t, _BYTE *), void (*a3)(_BYTE *))
{
  a2(v3 + *a1, v26);
  result = sub_213FB2E54(v26, &v10, &qword_27C904858, &qword_214736F00);
  if (*(&v11 + 1))
  {
    a3(v26);
    v27[12] = v22;
    v27[13] = v23;
    v27[14] = v24;
    v28 = v25;
    v27[8] = v18;
    v27[9] = v19;
    v27[10] = v20;
    v27[11] = v21;
    v27[4] = v14;
    v27[5] = v15;
    v27[6] = v16;
    v27[7] = v17;
    v27[0] = v10;
    v27[1] = v11;
    v27[2] = v12;
    v27[3] = v13;
    sub_21407CF14(v27, v26);
    v6 = type metadata accessor for _ObjCImageWrapper();
    v7 = objc_allocWithZone(v6);
    sub_21407CF14(v26, v7 + OBJC_IVAR___BlastDoorImage_image);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    sub_21406D2CC(v26);
    sub_21406D2CC(v27);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_214583F20(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = &v3[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v9 = *a1;
  v9[8] = v4;
  v9[9] = v5;
  *(v9 + 2) = v6;
  *(v9 + 3) = v7;
  v9[32] = v8;
  v11.receiver = v3;
  v11.super_class = v1;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214583F98(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = &v1[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v7 = *a1;
  v7[8] = v2;
  v7[9] = v3;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  v7[32] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCWorkoutPreviewWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_214584000@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 8);
  v3 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 9);
  v5 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 16);
  v4 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 24);
  v6 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 32);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
}

uint64_t sub_214584138()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 9);
  if (v1 <= 4)
  {
    return v1 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_214584184()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 16);
  v2 = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 24);

  return v1;
}

unint64_t sub_2145841E4()
{
  result = *(v0 + OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview + 32);
  if (result > 3)
  {
    __break(1u);
  }

  return result;
}

id sub_214584290()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + 32);
  v7 = type metadata accessor for _ObjCWorkoutPreviewWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v9 = v1;
  v9[8] = v2;
  v9[9] = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21458432C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + 32);
  v7 = type metadata accessor for _ObjCWorkoutPreviewWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorWorkoutPreview_workoutPreview];
  *v9 = v1;
  v9[8] = v2;
  v9[9] = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2145844CC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  a3();

  v11 = sub_2146D8898();
  (*(v6 + 8))(v9, v5);

  return v11;
}

uint64_t sub_214584614@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = a1(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v23 - v17;
  sub_213FB568C(v5 + *a2, &v23 - v17, a3);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(&v18[*(v19 + 28)], v14, &unk_27C9131A0, &unk_2146E9D10);
  v20 = sub_2146D8958();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_213FB2DF4(v14, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_213FB5844(v18, a4);
    return (*(v21 + 32))(a5, v14, v20);
  }

  return result;
}

id sub_214584840(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 20));
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_2146D9588();

  return v8;
}

uint64_t sub_2145848D0(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 20));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

id sub_21458493C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1 + *a3;
  v5 = (v4 + *(a4(0) + 24));
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_2146D9588();

  return v8;
}

uint64_t sub_2145849CC(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = (v3 + *(a2(0) + 24));
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_214584AF8()
{
  v1 = v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo[0];
  v2 = (v1 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

id sub_214584BF8()
{
  v1 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0, v4, type metadata accessor for FileTransferAttribute.AttachmentInfo);
  v5 = type metadata accessor for _ObjCFileTransferAttribute_AttachmentInfoWrapper(0);
  v6 = objc_allocWithZone(v5);
  sub_213FB568C(v4, v6 + OBJC_IVAR___BlastDoorFileTransferAttribute_AttachmentInfo_fileTransferAttribute_AttachmentInfo[0], type metadata accessor for FileTransferAttribute.AttachmentInfo);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_213FB5844(v4, type metadata accessor for FileTransferAttribute.AttachmentInfo);
  return v7;
}

id sub_214584D44(_OWORD *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = *a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214584DC0(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = *a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

__n128 sub_214584E04@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo);
  *a1 = result;
  return result;
}

double sub_214584E98()
{
  result = *(v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo);
  v2 = *(v0 + OBJC_IVAR___BlastDoorFileTransferAttribute_ImageInfo_fileTransferAttribute_ImageInfo + 8);
  return result;
}

id sub_214584F44(uint64_t (*a1)(void), void *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*a2];
  *v8 = v4;
  *(v8 + 1) = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214584FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = a3();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a4];
  *v10 = v6;
  *(v10 + 1) = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21458502C(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  *(v2 + 42) = *(a1 + 42);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

__n128 sub_214585084@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints;
  v3 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 16);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

double sub_214585188()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_214585208()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 16);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 24))
  {
    return 0.0;
  }

  return result;
}

double sub_214585288()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 32);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 40))
  {
    return 0.0;
  }

  return result;
}

double sub_214585308()
{
  result = *(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 48);
  if (*(v0 + OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints + 56))
  {
    return 0.0;
  }

  return result;
}

id sub_2145853CC()
{
  v1 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v4 = v0[1];
  *v3 = *v0;
  *(v3 + 1) = v4;
  *(v3 + 2) = v0[2];
  *(v3 + 42) = *(v0 + 42);
  v6.receiver = v2;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_214585434()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10[0] = v0[2];
  *(v10 + 10) = *(v0 + 42);
  v2 = type metadata accessor for _ObjCAttributionInfo_PreviewGenerationConstraintsWrapper();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___BlastDoorAttributionInfo_PreviewGenerationConstraints_attributionInfo_PreviewGenerationConstraints];
  v5 = v9;
  *v4 = v8;
  *(v4 + 1) = v5;
  *(v4 + 2) = v10[0];
  *(v4 + 42) = *(v10 + 10);
  v7.receiver = v3;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145854B4(char *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v2 = *a1;
  *(v2 + 8) = *(a1 + 8);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_214585504@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo + 8);
  v2 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo + 16);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

unint64_t _ObjCEnumBasicTapBackMessageSummaryInfoAssociatedMessageMessageSummaryInfoTypeContentType.init(rawValue:)(unint64_t result)
{
  if (result > 3 || result == 2)
  {
    return 0;
  }

  return result;
}

id BasicTapBack.MessageSummaryInfo.bridgedToObjectiveC.getter()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v6 = v1;
  *(v6 + 1) = v3;
  *(v6 + 2) = v2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214585708()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = type metadata accessor for _ObjCBasicTapBack_MessageSummaryInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorBasicTapBack_MessageSummaryInfo_basicTapBack_MessageSummaryInfo];
  *v6 = v1;
  *(v6 + 1) = v3;
  *(v6 + 2) = v2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21458579C(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v5;
  *(v4 + 6) = a1[6];
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v7;
  v9.receiver = v3;
  v9.super_class = a3();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2145857FC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 80);
  v13 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 16);
  v10[0] = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 48);
  v11 = *(v1 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[5] = v3;
  a1[6] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  return sub_2142ECDA4(v10, &v9);
}

uint64_t sub_214585928()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo);
  v2 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 8);

  return v1;
}

id sub_214585970(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  v6 = sub_2146D9588();

  return v6;
}

uint64_t sub_2145859CC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 16);
  v2 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 24);

  return v1;
}

id sub_214585A14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_214585A8C(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return v3;
}

id sub_214585AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 56))
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_214585B48(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return v3;
}

uint64_t sub_214585BE0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 64);
  v2 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 72);

  return v1;
}

uint64_t sub_214585C7C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 80);
  v2 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 88);

  return v1;
}

uint64_t sub_214585D18()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 96);
  v2 = *(v0 + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 104);

  return v1;
}

uint64_t sub_214585DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[1];
  v5 = v3[3];
  v6 = v3[5];
  v7 = v3[7];
  v8 = v3[9];
  v9 = v3[11];
  v10 = v3[13];
}

id sub_214585E68()
{
  v1 = v0[5];
  v13[4] = v0[4];
  v13[5] = v1;
  v13[6] = v0[6];
  v2 = v0[1];
  v13[0] = *v0;
  v13[1] = v2;
  v3 = v0[3];
  v13[2] = v0[2];
  v13[3] = v3;
  v4 = type metadata accessor for _ObjCContactMessage_ContactInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo];
  v7 = v0[5];
  *(v6 + 4) = v0[4];
  *(v6 + 5) = v7;
  *(v6 + 6) = v0[6];
  v8 = v0[1];
  *v6 = *v0;
  *(v6 + 1) = v8;
  v9 = v0[3];
  *(v6 + 2) = v0[2];
  *(v6 + 3) = v9;
  sub_2142ECDA4(v13, v12);
  v11.receiver = v5;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_214585F10()
{
  v1 = v0[5];
  v19 = v0[4];
  v20 = v1;
  v21 = v0[6];
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  v4 = type metadata accessor for _ObjCContactMessage_ContactInfoWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo];
  v8 = v16;
  v7 = v17;
  *v6 = v15;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  v9 = v21;
  v11 = v18;
  v10 = v19;
  *(v6 + 5) = v20;
  *(v6 + 6) = v9;
  *(v6 + 3) = v11;
  *(v6 + 4) = v10;
  sub_2142ECDA4(&v15, v14);
  v13.receiver = v5;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214586134()
{
  sub_214592114(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content, __src);
  memcpy(__dst, __src, 0x1DAuLL);
  v1 = type metadata accessor for _ObjCEnumEncodedAttachmentsEncodedContentWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2143229E4(__dst, v2 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214593574(__dst);
  return v3;
}

id sub_214586200(uint64_t a1, void *a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t))
{
  v9 = objc_allocWithZone(v4);
  a3(a1, &v9[*a2]);
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a4(a1);
  return v10;
}

id sub_214586314()
{
  sub_214592114(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_ContentWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592114(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592194(v6);
  return v3;
}

id sub_214586394()
{
  sub_214592114(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_ContentWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214592114(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_Content_encodedAttachments_Content);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214592194(v6);
  return v3;
}

id sub_214586414(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2145935C8(a1, v3 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_214309B44(a1);
  return v4;
}

id sub_214586488(uint64_t a1)
{
  sub_2145935C8(a1, v1 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214309B44(a1);
  return v3;
}

uint64_t sub_2145865B8()
{
  sub_2145935C8(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_214309B44(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2145867B4()
{
  sub_2145935C8(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc, v3);
  if (v5)
  {
    v1 = v4;

    sub_214309B44(v3);
    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

id sub_2145868DC()
{
  sub_2145935C8(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2145935C8(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214309B44(v6);
  return v3;
}

id sub_21458695C()
{
  sub_2145935C8(v0, v6);
  v1 = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2145935C8(v6, v2 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_214309B44(v6);
  return v3;
}

id sub_214586A08(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = *a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_214586A4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData);
  v3 = *(v1 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_21402D9F8(v2, v3);
}

uint64_t sub_214586B48()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData);
  sub_21402D9F8(v1, *(v0 + OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData + 8));
  return v1;
}

id sub_214586C48(uint64_t (*a1)(void), void *a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = *v3;
  v6 = v3[1];
  v8 = a1();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a2];
  *v10 = v7;
  *(v10 + 1) = v6;
  a3(v7, v6);
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_214586D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = *v5;
  v8 = v5[1];
  v10 = a3();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*a4];
  *v12 = v9;
  *(v12 + 1) = v8;
  a5(v9, v8);
  v14.receiver = v11;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, sel_init);
}

__n128 sub_214586DA4@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo + 16);
  result = *(v1 + OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

id sub_214586F44(uint64_t (*a1)(void), void *a2)
{
  v9 = *v2;
  v4 = *(v2 + 2);
  v5 = a1();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[*a2];
  *v7 = v9;
  *(v7 + 2) = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214586FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v11 = *v4;
  v6 = *(v4 + 2);
  v7 = a3();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[*a4];
  *v9 = v11;
  *(v9 + 2) = v6;
  v12.receiver = v8;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21458704C(char *a1)
{
  v2 = a1[1];
  v3 = &v1[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v3 = *a1;
  v3[1] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_21458709C(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext + 1);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext);
  a1[1] = v2;
}

id sub_2145871D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v5 = v1;
  v5[1] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_214587238()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v5 = v1;
  v5[1] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2145874B4(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v3 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v3;
  *(v2 + 8) = a1[8];
  *(v2 + 137) = *(a1 + 137);
  v4 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v4;
  v5 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v5;
  v6 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214587524@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  v3 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 112);
  v4 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 80);
  v21 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 96);
  v22 = v3;
  v5 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 112);
  v23[0] = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 128);
  *(v23 + 9) = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 137);
  v6 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 48);
  v8 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 16);
  v17 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 32);
  v7 = v17;
  v18 = v6;
  v9 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 48);
  v10 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 80);
  v19 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 64);
  v11 = v19;
  v20 = v10;
  v12 = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 16);
  v16[0] = *(v1 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata);
  v13 = v16[0];
  v16[1] = v12;
  a1[6] = v21;
  a1[7] = v5;
  a1[8] = *(v2 + 128);
  *(a1 + 137) = *(v2 + 137);
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v4;
  *a1 = v13;
  a1[1] = v8;
  return sub_21430E4C0(v16, &v15);
}

uint64_t sub_2145876B0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata);
  v2 = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 8);

  return v1;
}

uint64_t sub_214587754()
{
  if (*(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 32);
  }

  return result;
}

uint64_t sub_21458782C()
{
  if (*(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 64);
  }

  return result;
}

id sub_214587918()
{
  v1 = v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  v2 = type metadata accessor for _ObjCColorWrapper();
  v6 = *(v1 + 96);
  v7 = *(v1 + 80);
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___BlastDoorColor_color];
  *v4 = v7;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_2145879D0()
{
  result = *(v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 113);
  if (result > 3)
  {
    __break(1u);
  }

  return result;
}

id sub_214587A9C()
{
  v1 = v0 + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  if (*(v1 + 152))
  {
    return 0;
  }

  v3 = type metadata accessor for _ObjCColorWrapper();
  v6 = *(v1 + 136);
  v7 = *(v1 + 120);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v7;
  *(v5 + 1) = v6;
  v8.receiver = v4;
  v8.super_class = v3;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214587BF4()
{
  v1 = v0[7];
  v15[6] = v0[6];
  v15[7] = v1;
  v16[0] = v0[8];
  *(v16 + 9) = *(v0 + 137);
  v2 = v0[3];
  v15[2] = v0[2];
  v15[3] = v2;
  v3 = v0[5];
  v15[4] = v0[4];
  v15[5] = v3;
  v4 = v0[1];
  v15[0] = *v0;
  v15[1] = v4;
  v5 = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v8 = v0[7];
  *(v7 + 6) = v0[6];
  *(v7 + 7) = v8;
  *(v7 + 8) = v0[8];
  *(v7 + 137) = *(v0 + 137);
  v9 = v0[3];
  *(v7 + 2) = v0[2];
  *(v7 + 3) = v9;
  v10 = v0[5];
  *(v7 + 4) = v0[4];
  *(v7 + 5) = v10;
  v11 = v0[1];
  *v7 = *v0;
  *(v7 + 1) = v11;
  sub_21430E4C0(v15, v14);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_214587CC0()
{
  v1 = v0[7];
  v24 = v0[6];
  v25 = v1;
  v26[0] = v0[8];
  *(v26 + 9) = *(v0 + 137);
  v2 = v0[3];
  v20 = v0[2];
  v21 = v2;
  v3 = v0[5];
  v22 = v0[4];
  v23 = v3;
  v4 = v0[1];
  v18 = *v0;
  v19 = v4;
  v5 = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
  v8 = v19;
  *v7 = v18;
  *(v7 + 1) = v8;
  v9 = v23;
  v11 = v20;
  v10 = v21;
  *(v7 + 4) = v22;
  *(v7 + 5) = v9;
  *(v7 + 2) = v11;
  *(v7 + 3) = v10;
  v13 = v25;
  v12 = v26[0];
  v14 = v24;
  *(v7 + 137) = *(v26 + 9);
  *(v7 + 7) = v13;
  *(v7 + 8) = v12;
  *(v7 + 6) = v14;
  sub_21430E4C0(&v18, v17);
  v16.receiver = v6;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_214587D8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v4 = &v1[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v4 = *a1;
  *(v4 + 1) = v2;
  v5 = *(a1 + 32);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 2) = v5;
  v4[48] = v3;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_214587DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText;
  v3 = *(v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 8);
  v4 = *(v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 48);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText);
  *(a1 + 8) = v3;
  v5 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
}

uint64_t sub_214587EA0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText);
  v2 = *(v0 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText + 8);

  return v1;
}

id sub_214587F68()
{
  v1 = v0 + OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText;
  if (*(v1 + 48))
  {
    return 0;
  }

  v3 = type metadata accessor for _ObjCColorWrapper();
  v6 = *(v1 + 32);
  v7 = *(v1 + 16);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v7;
  *(v5 + 1) = v6;
  v8.receiver = v4;
  v8.super_class = v3;
  return objc_msgSendSuper2(&v8, sel_init);
}

id OrderPreview.OrderText.bridgedToObjectiveC.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 48);
  v4 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v8 = *(v0 + 2);
  v9 = *(v0 + 1);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v6 = v2;
  *(v6 + 1) = v1;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v6[48] = v3;
  v10.receiver = v5;
  v10.super_class = v4;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145880FC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 48);
  v4 = type metadata accessor for _ObjCOrderPreview_OrderTextWrapper();
  v8 = *(v0 + 2);
  v9 = *(v0 + 1);
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorOrderPreview_OrderText_orderPreview_OrderText];
  *v6 = v2;
  *(v6 + 1) = v1;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v6[48] = v3;
  v10.receiver = v5;
  v10.super_class = v4;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214588188(uint64_t a1)
{
  sub_214391180(a1, v1 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2143911B8(a1);
  return v3;
}

uint64_t sub_2145882B8()
{
  sub_214391180(v0 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage, v22);
  result = sub_213FB2E54(v22, &v6, &qword_27C904858, &qword_214736F00);
  if (*(&v7 + 1))
  {
    sub_2143911B8(v22);
    v23[12] = v18;
    v23[13] = v19;
    v23[14] = v20;
    v24 = v21;
    v23[8] = v14;
    v23[9] = v15;
    v23[10] = v16;
    v23[11] = v17;
    v23[4] = v10;
    v23[5] = v11;
    v23[6] = v12;
    v23[7] = v13;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v8;
    v23[3] = v9;
    sub_21407CF14(v23, v22);
    v2 = type metadata accessor for _ObjCImageWrapper();
    v3 = objc_allocWithZone(v2);
    sub_21407CF14(v22, v3 + OBJC_IVAR___BlastDoorImage_image);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_21406D2CC(v22);
    sub_21406D2CC(v23);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214588418(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

id OrderPreview.OrderImage.bridgedToObjectiveC.getter()
{
  sub_214391180(v0, v6);
  v1 = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214391180(v6, v2 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2143911B8(v6);
  return v3;
}

id sub_214588544()
{
  sub_214391180(v0, v6);
  v1 = type metadata accessor for _ObjCOrderPreview_OrderImageWrapper();
  v2 = objc_allocWithZone(v1);
  sub_214391180(v6, v2 + OBJC_IVAR___BlastDoorOrderPreview_OrderImage_orderPreview_OrderImage);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2143911B8(v6);
  return v3;
}

id sub_2145885C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v3 = *a1;
  *(v3 + 1) = v2;
  v4 = *(a1 + 32);
  *(v3 + 1) = *(a1 + 16);
  *(v3 + 2) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_214588614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText;
  v3 = *(v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText + 8);
  *a1 = *(v1 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText);
  *(a1 + 8) = v3;
  v4 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v4;
}

id sub_2145886BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2146D9588();

  return v6;
}

uint64_t sub_214588718()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText);
  v2 = *(v0 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText + 8);

  return v1;
}

id sub_2145887D0()
{
  v1 = v0 + OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText;
  v2 = type metadata accessor for _ObjCColorWrapper();
  v6 = *(v1 + 32);
  v7 = *(v1 + 16);
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___BlastDoorColor_color];
  *v4 = v7;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PassPreview.PassText.bridgedToObjectiveC.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v7 = *(v0 + 2);
  v8 = *(v0 + 1);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v5 = v2;
  *(v5 + 1) = v1;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  v9.receiver = v4;
  v9.super_class = v3;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214588944()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for _ObjCPassPreview_PassTextWrapper();
  v7 = *(v0 + 2);
  v8 = *(v0 + 1);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorPassPreview_PassText_passPreview_PassText];
  *v5 = v2;
  *(v5 + 1) = v1;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  v9.receiver = v4;
  v9.super_class = v3;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214588A08(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

id sub_214588ABC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, _BYTE *))
{
  a4(a1 + *a3, v6);
  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

id sub_214588C7C(uint64_t (*a1)(uint64_t, char *), uint64_t (*a2)(uint64_t), void *a3, void (*a4)(_BYTE *))
{
  v9 = a1(v4, v15);
  v10 = a2(v9);
  v11 = objc_allocWithZone(v10);
  a1(v15, &v11[*a3]);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  a4(v15);
  return v12;
}

id sub_214588D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void *a5, void (*a6)(_BYTE *))
{
  v11 = a3(v6, v17);
  v12 = a4(v11);
  v13 = objc_allocWithZone(v12);
  a3(v17, &v13[*a5]);
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  a6(v17);
  return v14;
}

id sub_214588E54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

id sub_214588F9C()
{
  sub_2144966B0(v0 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[34] >> 1 != 0xFFFFFFFFLL || ((__dst[38] | __dst[36]) <= 1 ? (v1 = (__dst[44] & 0xFFFFFFFFFFFFFEFELL | __dst[40] & 0xFFFFFFFFFFFF00FELL) == 0) : (v1 = 0), v1 ? (v2 = (__dst[48] | __dst[46]) >= 2uLL) : (v2 = 1), v2))
  {
    memcpy(v10, __src, sizeof(v10));
    sub_214495CA4(v10, __src);
    v4 = type metadata accessor for _ObjCPassPreview_PassImageWrapper();
    v5 = objc_allocWithZone(v4);
    sub_214495CA4(__src, v5 + OBJC_IVAR___BlastDoorPassPreview_PassImage_passPreview_PassImage);
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    sub_214495C74(__src);
    sub_214495C74(v10);
    return v6;
  }

  else
  {
    sub_213FB2DF4(__dst, &qword_27C9144F0, qword_21475A4B0);
    return 0;
  }
}

id sub_21458914C()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground + 440);
  v2 = type metadata accessor for _ObjCColorWrapper();
  v6 = v1[1];
  v7 = *v1;
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR___BlastDoorColor_color];
  *v4 = v7;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PassPreview.PassBackground.bridgedToObjectiveC.getter()
{
  sub_2144966B0(v0, v6);
  v1 = type metadata accessor for _ObjCPassPreview_PassBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2144966B0(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144966E8(v6);
  return v3;
}

id sub_2145892C4()
{
  sub_2144966B0(v0, v6);
  v1 = type metadata accessor for _ObjCPassPreview_PassBackgroundWrapper();
  v2 = objc_allocWithZone(v1);
  sub_2144966B0(v6, v2 + OBJC_IVAR___BlastDoorPassPreview_PassBackground_passPreview_PassBackground);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_2144966E8(v6);
  return v3;
}

id sub_214589364(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = &v3[*a2];
  *v5 = *a1;
  *(v5 + 2) = v4;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_2145893C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
}

id sub_2145893F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = *(v3 + 1);

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

uint64_t sub_21458947C()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorSMSMessage_SMSFilteringSettings_sMSMessage_SMSFilteringSettings);
  v2 = *(v0 + OBJC_IVAR___BlastDoorSMSMessage_SMSFilteringSettings_sMSMessage_SMSFilteringSettings + 8);

  return v1;
}

id sub_21458958C(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = a1();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[*a2];
  *v9 = v5;
  *(v9 + 1) = v4;
  *(v9 + 2) = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21458962C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = a3();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[*a4];
  *v11 = v7;
  *(v11 + 1) = v6;
  *(v11 + 2) = v8;
  v13.receiver = v10;
  v13.super_class = v9;

  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_2145896CC(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v5;
  *(v4 + 4) = a1[4];
  v6 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = a3();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_214589724@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 48);
  v9 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 32);
  v10 = v2;
  v11 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 64);
  v3 = v11;
  v4 = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 16);
  v8[0] = *(v1 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_214311D90(v8, &v7);
}

unint64_t sub_214589860()
{
  result = sub_21459366C(qword_214760648[*(v0 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo)]);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_2145898C0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 16))
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_214589938(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);

  return v3;
}

uint64_t sub_214589A38()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 48) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo + 40);

    return v1;
  }

  return result;
}

id sub_214589AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 72))
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_214589B48(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return v3;
}

id sub_214589C64()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v11[3] = v1;
  v11[4] = v0[4];
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v0[4];
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_214311D90(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_214589CFC()
{
  v1 = v0[3];
  v14 = v0[2];
  v15 = v1;
  v16 = v0[4];
  v2 = v0[1];
  v12 = *v0;
  v13 = v2;
  v3 = type metadata accessor for _ObjCTapBack_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTapBack_MessageSummaryInfo_tapBack_MessageSummaryInfo];
  *v5 = v12;
  v6 = v16;
  v8 = v13;
  v7 = v14;
  *(v5 + 3) = v15;
  *(v5 + 4) = v6;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  sub_214311D90(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214589DD4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

id sub_214589E88(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t *))
{
  a4(a1 + *a3, &v6);
  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

id sub_214589F34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, _BYTE *), void (*a5)(_BYTE *))
{
  a4(a1 + *a3, v8);
  if (v9)
  {

    a5(v8);
    v6 = sub_2146D9588();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21458A034(void *a1, void (*a2)(uint64_t, _BYTE *), void (*a3)(_BYTE *))
{
  a2(v3 + *a1, v7);
  if (v9)
  {
    v5 = v8;

    a3(v7);
    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21458A158(void *a1, void (*a2)(uint64_t, _BYTE *), void (*a3)(_BYTE *))
{
  a2(v3 + *a1, v26);
  result = sub_213FB2E54(&v27, &v10, &qword_27C904858, &qword_214736F00);
  if (*(&v11 + 1))
  {
    a3(v26);
    v28[12] = v22;
    v28[13] = v23;
    v28[14] = v24;
    v29 = v25;
    v28[8] = v18;
    v28[9] = v19;
    v28[10] = v20;
    v28[11] = v21;
    v28[4] = v14;
    v28[5] = v15;
    v28[6] = v16;
    v28[7] = v17;
    v28[0] = v10;
    v28[1] = v11;
    v28[2] = v12;
    v28[3] = v13;
    sub_21407CF14(v28, v26);
    v6 = type metadata accessor for _ObjCImageWrapper();
    v7 = objc_allocWithZone(v6);
    sub_21407CF14(v26, v7 + OBJC_IVAR___BlastDoorImage_image);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    sub_21406D2CC(v26);
    sub_21406D2CC(v28);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21458A370(uint64_t (*a1)(uint64_t, char *), uint64_t (*a2)(uint64_t), void *a3, void (*a4)(_BYTE *))
{
  v9 = a1(v4, v15);
  v10 = a2(v9);
  v11 = objc_allocWithZone(v10);
  a1(v15, &v11[*a3]);
  v14.receiver = v11;
  v14.super_class = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  a4(v15);
  return v12;
}

id sub_21458A45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void *a5, void (*a6)(_BYTE *))
{
  v11 = a3(v6, v17);
  v12 = a4(v11);
  v13 = objc_allocWithZone(v12);
  a3(v17, &v13[*a5]);
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  a6(v17);
  return v14;
}

id _ObjCTextMessage_MessageSummaryInfoWrapper.init(textMessage_MessageSummaryInfo:)(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v3 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v3;
  *(v2 + 4) = a1[4];
  *(v2 + 73) = *(a1 + 73);
  v4 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21458A560@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 48);
  v10 = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 32);
  v11 = v2;
  v12[0] = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 64);
  v3 = v12[0];
  *(v12 + 9) = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 73);
  v4 = *(v12 + 9);
  v6 = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 16);
  v9[0] = *(v1 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  *(a1 + 73) = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2143140D0(v9, &v8);
}

id sub_21458A770(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  a3();

  a4();
  v7 = sub_2146D98E8();

  return v7;
}

uint64_t sub_21458A7E8()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];

    sub_2146D9FB8();
    v4 = type metadata accessor for _ObjCTranslatedMessagePartWrapper();
    v5 = v2 - 1;
    for (i = 32; ; i += 136)
    {
      v24 = *(v1 + i);
      v7 = *(v1 + i + 16);
      v8 = *(v1 + i + 32);
      v9 = *(v1 + i + 64);
      v27 = *(v1 + i + 48);
      v28 = v9;
      v25 = v7;
      v26 = v8;
      v10 = *(v1 + i + 80);
      v11 = *(v1 + i + 96);
      v12 = *(v1 + i + 112);
      v32 = *(v1 + i + 128);
      v30 = v11;
      v31 = v12;
      v29 = v10;
      v13 = objc_allocWithZone(v4);
      v14 = &v13[OBJC_IVAR___BlastDoorTranslatedMessagePart_translatedMessagePart];
      *v14 = v24;
      v15 = v28;
      v17 = v25;
      v16 = v26;
      *(v14 + 3) = v27;
      *(v14 + 4) = v15;
      *(v14 + 1) = v17;
      *(v14 + 2) = v16;
      v19 = v30;
      v18 = v31;
      v20 = v29;
      *(v14 + 16) = v32;
      *(v14 + 6) = v19;
      *(v14 + 7) = v18;
      *(v14 + 5) = v20;
      sub_214308AB8(&v24, v23);
      v22.receiver = v13;
      v22.super_class = v4;
      objc_msgSendSuper2(&v22, sel_init);
      sub_2146D9F98();
      v21 = *(v33 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!v5)
      {
        break;
      }

      --v5;
    }

    return v33;
  }

  return result;
}

uint64_t sub_21458AA24()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 32);

    return v1;
  }

  return result;
}

uint64_t sub_21458AB78()
{
  if (*(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo + 72);

    return v1;
  }

  return result;
}

id _ObjCTextMessage_MessageSummaryInfoWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextMessage.MessageSummaryInfo.bridgedToObjectiveC.getter()
{
  v1 = v0[3];
  v11[2] = v0[2];
  v11[3] = v1;
  v12[0] = v0[4];
  *(v12 + 9) = *(v0 + 73);
  v2 = v0[1];
  v11[0] = *v0;
  v11[1] = v2;
  v3 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v6 = v0[3];
  *(v5 + 2) = v0[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v0[4];
  *(v5 + 73) = *(v0 + 73);
  v7 = v0[1];
  *v5 = *v0;
  *(v5 + 1) = v7;
  sub_2143140D0(v11, v10);
  v9.receiver = v4;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21458ADDC()
{
  v1 = v0[3];
  v15 = v0[2];
  v16 = v1;
  v17[0] = v0[4];
  *(v17 + 9) = *(v0 + 73);
  v2 = v0[1];
  v13 = *v0;
  v14 = v2;
  v3 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
  v6 = v14;
  *v5 = v13;
  *(v5 + 1) = v6;
  v8 = v16;
  v7 = v17[0];
  v9 = v15;
  *(v5 + 73) = *(v17 + 9);
  *(v5 + 3) = v8;
  *(v5 + 4) = v7;
  *(v5 + 2) = v9;
  sub_2143140D0(&v13, v12);
  v11.receiver = v4;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21458AED4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_VideoFormat_videoPreview_VideoFormat);
  v2 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_VideoFormat_videoPreview_VideoFormat + 8);

  return v1;
}

id sub_21458B00C(_OWORD *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = &v3[*a2];
  v5 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v5;
  v7.receiver = v3;
  v7.super_class = a3();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21458B060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;
}

id sub_21458B0CC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v6 = *v3;
  v7 = *(v3 + 1);
  v8 = v3[3];

  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

id sub_21458B164(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21458B1D0()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_AudioFormat_videoPreview_AudioFormat);
  v2 = *(v0 + OBJC_IVAR___BlastDoorVideoPreview_AudioFormat_videoPreview_AudioFormat + 8);

  return v1;
}

id sub_21458B218(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_21458B290(void *a1)
{
  v2 = v1 + *a1;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return v3;
}

uint64_t sub_21458B34C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  v5 = *(v3 + 24);
}

id sub_21458B3B0(uint64_t (*a1)(void), void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = a1();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[*a2];
  *v10 = v5;
  *(v10 + 1) = v4;
  *(v10 + 2) = v7;
  *(v10 + 3) = v6;
  v12.receiver = v9;
  v12.super_class = v8;

  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_21458B458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v7 = *v4;
  v6 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = a3();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*a4];
  *v12 = v7;
  *(v12 + 1) = v6;
  *(v12 + 2) = v9;
  *(v12 + 3) = v8;
  v14.receiver = v11;
  v14.super_class = v10;

  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_21458B4EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214592640(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21458B538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214592CB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_21458B574@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result + 1) <= 2)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *sub_21458B5A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 2006)
  {
    v3 = 2006;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != 2006;
  if (v2 == 3006)
  {
    v4 = 0;
  }

  else
  {
    v2 = v3;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_21458B5D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214591CF4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_21458B608@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 3 || v2 == 2;
  if (v3)
  {
    v2 = 0;
  }

  v4 = v3;
  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t *sub_21458B630@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result + 1) <= 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t *sub_21458B658@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 4000 || v2 == 0)
  {
    v4 = 0;
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t *sub_21458B684@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 2006)
  {
    v3 = 2006;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != 2006;
  if (v2 == 3006)
  {
    v3 = 3006;
    v4 = 0;
  }

  if (v2)
  {
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_21458B6D4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t sub_21458B748()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146DA988();
  return sub_2146DA9B8();
}

uint64_t sub_21458B78C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_214592208(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_21458B7EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21459367C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t _ObjCEnumLiteRelayTextMessageMessageType.init(rawValue:)(uint64_t result)
{
  if ((result + 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21458B864@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21459368C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458B89C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145924C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21458B8D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145924D8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458B93C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145936A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458B99C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145936C0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_21458B9D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result + 1;
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x61;
  v6 = v4 || v5 == 0;
  if (v6)
  {
    v2 = 0;
  }

  v7 = v6;
  *a2 = v2;
  *(a2 + 8) = v7;
  return result;
}

uint64_t *sub_21458BA14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 2007)
  {
    v3 = 2007;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != 2007;
  if (v2 == 3007)
  {
    v3 = 3007;
    v4 = 0;
  }

  if (v2)
  {
    v2 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

unsigned __int8 *sub_21458BA50@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_21458BA70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21459308C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458BAA8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21459366C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21458BAE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145932AC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21458BB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145934F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21458BB74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2145936DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_21458BBC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

id sub_21458BC04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &v1[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 16) = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ObjCEnumRelayGroupMutationWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458BDDC()
{
  v1 = v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation;
  if (*(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 33))
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 32);
  v8 = type metadata accessor for _ObjCRelayGroupDisplayNameMutationEnvelopeWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope];
  *v10 = v6;
  *(v10 + 1) = v5;
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  v10[32] = v7;
  sub_21431C5DC(v6);
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_21458BF48()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation);
  if (*(v0 + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 33) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 1);
  v3 = *v1;
  v4 = type metadata accessor for _ObjCRelayGroupParticipantMutationEnvelopeWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorRelayGroupParticipantMutationEnvelope_relayGroupParticipantMutationEnvelope];
  *v6 = v3 & 1;
  *(v6 + 1) = v2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_21458C09C(void *__src, void *a2, uint64_t (*a3)(void *))
{
  v5 = memcpy(&v3[*a2], __src, 0x122uLL);
  v7.receiver = v3;
  v7.super_class = a3(v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21458C1EC()
{
  memcpy(v3, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  v1 = sub_2143215E0(v3);
  sub_213FBF540(v3);
  return v1;
}

id sub_21458C324()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v10))
  {
    return 0;
  }

  v2 = sub_213FBF540(v10);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v4 = objc_allocWithZone(updated);
  memcpy(&v4[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v2, 0x122uLL);
  memcpy(v8, __dst, 0x122uLL);
  v5 = sub_213FBF540(v8);
  sub_2143087B4(v5, v7);
  v6.receiver = v4;
  v6.super_class = updated;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458C4DC()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v10) != 1)
  {
    return 0;
  }

  v1 = sub_213FBF540(v10);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v3 = objc_allocWithZone(updated);
  memcpy(&v3[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v1, 0x122uLL);
  memcpy(v8, __dst, 0x122uLL);
  v4 = sub_213FBF540(v8);
  sub_2143087B4(v4, v7);
  v6.receiver = v3;
  v6.super_class = updated;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458C6C8()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v17, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v17) != 2)
  {
    return 0;
  }

  v1 = sub_213FBF540(v17);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for _ObjCBackgroundRequestInfoWrapper();
  v13 = *v1;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  *v7 = v13;
  *(v7 + 2) = v2;
  *(v7 + 3) = v3;
  v7[32] = v4;
  memcpy(v15, __dst, 0x122uLL);
  v8 = sub_213FBF540(v15);
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[3];

  sub_213FDC9D0(v10, v11);
  v14.receiver = v6;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_21458C8B4()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType), 0x122uLL);
  if (sub_2143215E0(v10) != 3)
  {
    return 0;
  }

  v1 = sub_213FBF540(v10);
  updated = type metadata accessor for _ObjCBackgroundUpdateInfoWrapper();
  v3 = objc_allocWithZone(updated);
  memcpy(&v3[OBJC_IVAR___BlastDoorBackgroundUpdateInfo_backgroundUpdateInfo], v1, 0x122uLL);
  memcpy(v8, __dst, 0x122uLL);
  v4 = sub_213FBF540(v8);
  sub_2143087B4(v4, v7);
  v6.receiver = v3;
  v6.super_class = updated;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458CA58(const void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  memcpy(&v5[*a2], a1, 0x139uLL);
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21458CAE0(void *__src, void *a2, uint64_t (*a3)(void *))
{
  v5 = memcpy(&v3[*a2], __src, 0x139uLL);
  v7.receiver = v3;
  v7.super_class = a3(v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21458CC30()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  v1 = sub_214321D58(__dst);
  sub_213FBF550(__dst);
  return v1;
}

id sub_21458CD6C()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v12, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v12))
  {
    return 0;
  }

  v2 = sub_213FBF550(v12);
  v3 = *v2;
  v4 = v2[1];
  v5 = type metadata accessor for _ObjCGeneralAttachmentInfoWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorGeneralAttachmentInfo_generalAttachmentInfo];
  *v7 = v3;
  *(v7 + 1) = v4;
  memcpy(v10, __dst, 0x139uLL);
  v8 = *(sub_213FBF550(v10) + 8);
  v9.receiver = v6;
  v9.super_class = v5;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_21458CF28()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v10) != 1)
  {
    return 0;
  }

  v1 = sub_213FBF550(v10);
  v2 = type metadata accessor for _ObjCEmojiImageAttachmentInfoWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo], v1, 0x111uLL);
  memcpy(v8, __dst, 0x139uLL);
  v4 = sub_213FBF550(v8);
  sub_2142E346C(v4, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458D0E4()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v10, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v10) != 2)
  {
    return 0;
  }

  v1 = sub_213FBF550(v10);
  v2 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], v1, 0x139uLL);
  memcpy(v8, __dst, 0x139uLL);
  v4 = sub_213FBF550(v8);
  sub_2142E371C(v4, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21458D2D0()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v16, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v16) != 3)
  {
    return 0;
  }

  v1 = sub_213FBF550(v16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for _ObjCLivePhotoAttachmentInfoWrapper();
  v12 = *v1;
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorLivePhotoAttachmentInfo_livePhotoAttachmentInfo];
  *v7 = v12;
  *(v7 + 2) = v2;
  *(v7 + 3) = v3;
  v7[32] = v4;
  memcpy(v14, __dst, 0x139uLL);
  v8 = sub_213FBF550(v14);
  v9 = *(v8 + 8);
  v10 = *(v8 + 24);
  v13.receiver = v6;
  v13.super_class = v5;

  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_21458D50C()
{
  memcpy(__dst, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), sizeof(__dst));
  memcpy(v20, (v0 + OBJC_IVAR___BlastDoorFileTransferAttributeAttachmentSubtypeWrapper_fileTransferAttribute_AttachmentSubtype), 0x139uLL);
  if (sub_214321D58(v20) != 4)
  {
    return 0;
  }

  v1 = sub_213FBF550(v20);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = type metadata accessor for _ObjCAudioMessageAttachmentInfoWrapper();
  v16 = *v1;
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorAudioMessageAttachmentInfo_audioMessageAttachmentInfo];
  *v9 = v16;
  *(v9 + 2) = v2;
  *(v9 + 3) = v3;
  v9[32] = v4;
  *(v9 + 5) = v5;
  *(v9 + 6) = v6;
  memcpy(v18, __dst, 0x139uLL);
  v10 = sub_213FBF550(v18);
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[6];

  sub_213FDC9D0(v12, v13);
  v17.receiver = v8;
  v17.super_class = v7;

  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_21458D7A4()
{
  v1 = type metadata accessor for BalloonPlugin.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v4, type metadata accessor for BalloonPlugin.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_213FB5844(v4, type metadata accessor for BalloonPlugin.Payload);
  return EnumCaseMultiPayload;
}

uint64_t sub_21458D8B4()
{
  v1 = type metadata accessor for MessagesAppBalloon();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalloonPlugin.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v8, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_213FB5844(v8, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }

  else
  {
    sub_21459375C(v8, v4, type metadata accessor for MessagesAppBalloon);
    v10 = sub_21406B29C();
    v12 = v11;
    v13 = sub_2146D8A38();
    sub_213FB54FC(v10, v12);
    sub_213FB5844(v4, type metadata accessor for MessagesAppBalloon);
    return v13;
  }
}

uint64_t sub_21458DA70()
{
  v1 = type metadata accessor for Handwriting();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalloonPlugin.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v8, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21459375C(v8, v4, type metadata accessor for Handwriting);
    v9 = objc_opt_self();
    sub_2144294FC();
    sub_214593710();
    v10 = sub_2146D98E8();

    v11 = &v4[*(v1 + 24)];
    v12 = v11[4];
    v13 = v11[5];
    v14 = v11[6];
    v15 = v11[7];
    v16 = *v11;
    v17 = v11[1];
    v18 = v11[2];
    v19 = v11[3];
    v20 = sub_2146D8B38();
    v21 = &v4[*(v1 + 20)];
    v22 = sub_2146D8AD8();
    v23 = [v9 dataRepresentation:v10 frame:v20 bound:v22 uuid:v12 date:{v13, v14, v15, v16, v17, v18, v19}];

    if (v23)
    {
      v24 = sub_2146D8A58();
      v26 = v25;
    }

    else
    {
      sub_2146D9BA8();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      sub_2146D91D8();
      v24 = 0;
      v26 = 0xC000000000000000;
    }

    v28 = sub_2146D8A38();
    sub_213FB54FC(v24, v26);
    sub_213FB5844(v4, type metadata accessor for Handwriting);
    return v28;
  }

  else
  {
    sub_213FB5844(v8, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

uint64_t sub_21458DDAC()
{
  v1 = type metadata accessor for LinkPresentation.MessagesPayload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalloonPlugin.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v8, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21459375C(v8, v4, type metadata accessor for LinkPresentation.MessagesPayload);
    v9 = sub_2143E3A80();
    v11 = v10;
    v12 = sub_2146D8A38();
    sub_213FB54FC(v9, v11);
    sub_213FB5844(v4, type metadata accessor for LinkPresentation.MessagesPayload);
    return v12;
  }

  else
  {
    sub_213FB5844(v8, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

id sub_21458DF6C()
{
  v1 = type metadata accessor for CombinedPluginAttachmentInfo();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for BalloonPlugin.Payload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v11, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21459375C(v11, v7, type metadata accessor for CombinedPluginAttachmentInfo);
    sub_213FB568C(v7, v5, type metadata accessor for CombinedPluginAttachmentInfo);
    v12 = type metadata accessor for _ObjCCombinedPluginAttachmentInfoWrapper(0);
    v13 = objc_allocWithZone(v12);
    sub_213FB568C(v5, v13 + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo, type metadata accessor for CombinedPluginAttachmentInfo);
    v16.receiver = v13;
    v16.super_class = v12;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    sub_213FB5844(v5, type metadata accessor for CombinedPluginAttachmentInfo);
    sub_213FB5844(v7, type metadata accessor for CombinedPluginAttachmentInfo);
    return v14;
  }

  else
  {
    sub_213FB5844(v11, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

uint64_t sub_21458E1AC()
{
  v1 = type metadata accessor for DigitalTouchBalloon(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalloonPlugin.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v8, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_21459375C(v8, v4, type metadata accessor for DigitalTouchBalloon);
    sub_2146D9B88();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
    v9 = sub_2143C25AC(v4);
    v11 = v10;
    v12 = sub_2146D8A38();
    sub_213FB54FC(v9, v11);
    sub_213FB5844(v4, type metadata accessor for DigitalTouchBalloon);
    return v12;
  }

  else
  {
    sub_213FB5844(v8, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

uint64_t sub_21458E3DC()
{
  v1 = type metadata accessor for MessagesAppCustomAcknowledgement();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalloonPlugin.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, v8, type metadata accessor for BalloonPlugin.Payload);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_21459375C(v8, v4, type metadata accessor for MessagesAppCustomAcknowledgement);
    v9 = sub_21406C920();
    v11 = v10;
    v12 = sub_2146D8A38();
    sub_213FB54FC(v9, v11);
    sub_213FB5844(v4, type metadata accessor for MessagesAppCustomAcknowledgement);
    return v12;
  }

  else
  {
    sub_213FB5844(v8, type metadata accessor for BalloonPlugin.Payload);
    return 0;
  }
}

id _ObjCEnumBasicTextMessageMessageTypeWrapper.init(basicTextMessage_MessageType:)(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType];
  v3 = a1[9];
  *(v2 + 8) = a1[8];
  *(v2 + 9) = v3;
  *(v2 + 153) = *(a1 + 153);
  v4 = a1[5];
  *(v2 + 4) = a1[4];
  *(v2 + 5) = v4;
  v5 = a1[7];
  *(v2 + 6) = a1[6];
  *(v2 + 7) = v5;
  v6 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v6;
  v7 = a1[3];
  *(v2 + 2) = a1[2];
  *(v2 + 3) = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _ObjCEnumBasicTextMessageMessageTypeWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_21458E860()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v8[8] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v9[0] = v1;
  *(v9 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v8[4] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v8[5] = v2;
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v8[6] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v8[7] = v3;
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v8[0] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v8[1] = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v8[2] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v8[3] = v5;
  v6 = sub_2143223B0(v8);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      nullsub_1(v8);
      return 3;
    }

    else if (v6 == 4)
    {
      nullsub_1(v8);
      return 4;
    }

    else
    {
      nullsub_1(v8);
      return 5;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      nullsub_1(v8);
      return 1;
    }

    else
    {
      nullsub_1(v8);
      return 2;
    }
  }

  else
  {
    nullsub_1(v8);
    return 0;
  }
}

id sub_21458EA98()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v31 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v32[0] = v2;
  *(v32 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v27 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v28 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v29 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v30 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v23 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v24 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v25 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v26 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v33[8] = v31;
  v34[0] = v11;
  *(v34 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v33[4] = v27;
  v33[5] = v5;
  v33[6] = v29;
  v33[7] = v1;
  v33[0] = v10;
  v33[1] = v9;
  v33[2] = v25;
  v33[3] = v3;
  if (sub_2143223B0(v33))
  {
    return 0;
  }

  v13 = nullsub_1(v33);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = type metadata accessor for _ObjCBasicTypingIndicatorWrapper();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];
  *v18 = v14;
  *(v18 + 1) = v15;
  v21[0] = v23;
  v21[1] = v24;
  v21[4] = v27;
  v21[5] = v28;
  v21[2] = v25;
  v21[3] = v26;
  *&v22[9] = *(v32 + 9);
  v21[8] = v31;
  *v22 = v32[0];
  v21[6] = v29;
  v21[7] = v30;
  v19 = *(nullsub_1(v21) + 8);
  v20.receiver = v17;
  v20.super_class = v16;

  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_21458ED58()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v35 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v36[0] = v2;
  *(v36 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v31 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v32 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v33 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v34 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v27 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v28 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v29 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v30 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v37[8] = v35;
  v38[0] = v11;
  *(v38 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v37[4] = v31;
  v37[5] = v5;
  v37[6] = v33;
  v37[7] = v1;
  v37[0] = v10;
  v37[1] = v9;
  v37[2] = v29;
  v37[3] = v3;
  if (sub_2143223B0(v37) != 1)
  {
    return 0;
  }

  v12 = nullsub_1(v37);
  v13 = type metadata accessor for _ObjCBasicMessageWrapper();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BlastDoorBasicMessage_basicMessage];
  v17 = v12[1];
  v16 = v12[2];
  *v15 = *v12;
  *(v15 + 1) = v17;
  *(v15 + 2) = v16;
  v19 = v12[4];
  v18 = v12[5];
  v20 = v12[3];
  *(v15 + 89) = *(v12 + 89);
  *(v15 + 4) = v19;
  *(v15 + 5) = v18;
  *(v15 + 3) = v20;
  v25[8] = v35;
  v26[0] = v36[0];
  *(v26 + 9) = *(v36 + 9);
  v25[4] = v31;
  v25[5] = v32;
  v25[6] = v33;
  v25[7] = v34;
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  v25[3] = v30;
  v21 = nullsub_1(v25);
  sub_2142E5B20(v21, v24);
  v23.receiver = v14;
  v23.super_class = v13;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_21458F030()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v36 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v37[0] = v2;
  *(v37 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v32 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v33 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v34 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v35 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v28 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v29 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v30 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v31 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v38[8] = v36;
  v39[0] = v11;
  *(v39 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v38[4] = v32;
  v38[5] = v5;
  v38[6] = v34;
  v38[7] = v1;
  v38[0] = v10;
  v38[1] = v9;
  v38[2] = v30;
  v38[3] = v3;
  if (sub_2143223B0(v38) != 2)
  {
    return 0;
  }

  v12 = nullsub_1(v38);
  v13 = type metadata accessor for _ObjCBasicTapBackWrapper();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
  v16 = v12[3];
  v18 = *v12;
  v17 = v12[1];
  *(v15 + 2) = v12[2];
  *(v15 + 3) = v16;
  *v15 = v18;
  *(v15 + 1) = v17;
  v19 = v12[7];
  v21 = v12[4];
  v20 = v12[5];
  *(v15 + 6) = v12[6];
  *(v15 + 7) = v19;
  *(v15 + 4) = v21;
  *(v15 + 5) = v20;
  v26[0] = v28;
  v26[1] = v29;
  v26[4] = v32;
  v26[5] = v33;
  v26[2] = v30;
  v26[3] = v31;
  *(v27 + 9) = *(v37 + 9);
  v26[8] = v36;
  v27[0] = v37[0];
  v26[6] = v34;
  v26[7] = v35;
  v22 = nullsub_1(v26);
  sub_2142E5C78(v22, v25);
  v24.receiver = v14;
  v24.super_class = v13;
  return objc_msgSendSuper2(&v24, sel_init);
}

id sub_21458F2EC()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v33 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v34[0] = v2;
  *(v34 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v29 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v30 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v31 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v32 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v25 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v26 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v27 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v28 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v35[8] = v33;
  v36[0] = v11;
  *(v36 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v35[4] = v29;
  v35[5] = v5;
  v35[6] = v31;
  v35[7] = v1;
  v35[0] = v10;
  v35[1] = v9;
  v35[2] = v27;
  v35[3] = v3;
  if (sub_2143223B0(v35) != 3)
  {
    return 0;
  }

  v12 = nullsub_1(v35);
  v13 = type metadata accessor for _ObjCBasicAudioMessageWrapper();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR___BlastDoorBasicAudioMessage_basicAudioMessage];
  v16 = v12[3];
  v18 = *v12;
  v17 = v12[1];
  *(v15 + 2) = v12[2];
  *(v15 + 3) = v16;
  *v15 = v18;
  *(v15 + 1) = v17;
  v23[0] = v25;
  v23[1] = v26;
  v23[4] = v29;
  v23[5] = v30;
  v23[2] = v27;
  v23[3] = v28;
  *&v24[9] = *(v34 + 9);
  v23[8] = v33;
  *v24 = v34[0];
  v23[6] = v31;
  v23[7] = v32;
  v19 = nullsub_1(v23);
  sub_2142E55D0(v19, v22);
  v21.receiver = v14;
  v21.super_class = v13;
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_21458F5B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v34 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v35[0] = v2;
  *(v35 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v30 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v31 = v4;
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v32 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v33 = v6;
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v26 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v27 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v28 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v29 = v8;
  v11 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  v36[8] = v34;
  v37[0] = v11;
  *(v37 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v36[4] = v30;
  v36[5] = v5;
  v36[6] = v32;
  v36[7] = v1;
  v36[0] = v10;
  v36[1] = v9;
  v36[2] = v28;
  v36[3] = v3;
  if (sub_2143223B0(v36) != 4)
  {
    return 0;
  }

  v12 = nullsub_1(v36);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
  v22 = *v12;
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  *v17 = v22;
  *(v17 + 2) = v13;
  v17[24] = v14;
  v24[0] = v26;
  v24[1] = v27;
  v24[4] = v30;
  v24[5] = v31;
  v24[2] = v28;
  v24[3] = v29;
  *&v25[9] = *(v35 + 9);
  v24[8] = v34;
  *v25 = v35[0];
  v24[6] = v32;
  v24[7] = v33;
  v18 = nullsub_1(v24);
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  v23.receiver = v16;
  v23.super_class = v15;

  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_21458F8B4()
{
  v1 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v2 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v36 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 112);
  v37 = v1;
  v3 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 128);
  v38[0] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  *(v38 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v4 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v5 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v33 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 64);
  v34 = v5;
  v6 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 80);
  v35 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 96);
  v7 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v29 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v30 = v7;
  v8 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 48);
  v10 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 16);
  v31 = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 32);
  v32 = v8;
  v39[7] = v36;
  v39[8] = v3;
  v40[0] = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 144);
  *(v40 + 9) = *(v0 + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 153);
  v39[4] = v33;
  v39[5] = v6;
  v39[6] = v2;
  v39[0] = v10;
  v39[1] = v9;
  v39[2] = v31;
  v39[3] = v4;
  if (sub_2143223B0(v39) != 5)
  {
    return 0;
  }

  v11 = nullsub_1(v39);
  v12 = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
  v16 = *(v11 + 16);
  v15 = *(v11 + 32);
  *v14 = *v11;
  *(v14 + 1) = v16;
  *(v14 + 2) = v15;
  v17 = *(v11 + 96);
  v19 = *(v11 + 48);
  v18 = *(v11 + 64);
  *(v14 + 5) = *(v11 + 80);
  *(v14 + 6) = v17;
  *(v14 + 3) = v19;
  *(v14 + 4) = v18;
  v21 = *(v11 + 128);
  v20 = *(v11 + 144);
  v22 = *(v11 + 112);
  *(v14 + 20) = *(v11 + 160);
  *(v14 + 8) = v21;
  *(v14 + 9) = v20;
  *(v14 + 7) = v22;
  v27[8] = v37;
  v28[0] = v38[0];
  *(v28 + 9) = *(v38 + 9);
  v27[4] = v33;
  v27[5] = v34;
  v27[6] = v35;
  v27[7] = v36;
  v27[0] = v29;
  v27[1] = v30;
  v27[2] = v31;
  v27[3] = v32;
  v23 = nullsub_1(v27);
  sub_2142E58CC(v23, v26);
  v25.receiver = v13;
  v25.super_class = v12;
  return objc_msgSendSuper2(&v25, sel_init);
}

unint64_t _ObjCEnumEncodedAttachmentsEncodedContent.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id sub_21458FB6C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a1, &v5[*a2]);
  v12.receiver = v5;
  v12.super_class = a4(v9);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  a5(a1);
  return v10;
}

uint64_t sub_21458FCA4()
{
  sub_2143229E4(v0 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, v3);
  v1 = v3[473];
  sub_214593574(v3);
  return v1;
}

id sub_21458FD30()
{
  sub_2143229E4(v0 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, __src);
  if (__src[473])
  {
    sub_214593574(__src);
    return 0;
  }

  else
  {
    memcpy(__dst, __src, 0x1D9uLL);
    sub_2145935C8(__dst, v6);
    v2 = type metadata accessor for _ObjCEncodedAttachments_EncodedAstcWrapper();
    v3 = objc_allocWithZone(v2);
    sub_2145935C8(v6, v3 + OBJC_IVAR___BlastDoorEncodedAttachments_EncodedAstc_encodedAttachments_EncodedAstc);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    sub_214309B44(v6);
    sub_214309B44(__dst);
    return v4;
  }
}

id sub_21458FE38()
{
  sub_2143229E4(v0 + OBJC_IVAR___BlastDoorEncodedAttachmentsEncodedContentWrapper_encodedAttachments_EncodedContent, v8);
  if (v9 == 1)
  {
    v1 = v8[0];
    v2 = v8[1];
    v3 = type metadata accessor for _ObjCEncodedAttachments_RawDataWrapper();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR___BlastDoorEncodedAttachments_RawData_encodedAttachments_RawData];
    *v5 = v1;
    *(v5 + 1) = v2;
    v7.receiver = v4;
    v7.super_class = v3;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    sub_214593574(v8);
    return 0;
  }
}

id sub_21458FF74(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 32);
  v5 = &v3[*a2];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v5[32] = v4;
  v8.receiver = v3;
  v8.super_class = a3();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214590114()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32))
  {
    return 0;
  }

  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _ObjCSMSCTPartPlainWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorSMSCTPartPlain_sMSCTPartPlain];
  *v7 = v4;
  *(v7 + 1) = v3;
  v8.receiver = v6;
  v8.super_class = v5;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214590268()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 1)
  {
    return 0;
  }

  v3 = v1[2];
  v2 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v6 = type metadata accessor for _ObjCSMSCTPartSMILWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSMSCTPartSMIL_sMSCTPartSMIL];
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v3;
  v8[3] = v2;
  sub_214031CA0(v5);
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_2145903E0()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 2)
  {
    return 0;
  }

  v3 = v1[2];
  v2 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v6 = type metadata accessor for _ObjCSMSCTPartAttachmentWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorSMSCTPartAttachment_sMSCTPartAttachment];
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v3;
  v8[3] = v2;
  sub_213FDCA18(v5, v4);
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_214590538()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 3)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = type metadata accessor for _ObjCSMSCTPartAttributedChipListWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorSMSCTPartAttributedChipList_sMSCTPartAttributedChipList];
  *v6 = v2;
  v6[8] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_214590674()
{
  v1 = (v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content);
  if (*(v0 + OBJC_IVAR___BlastDoorSMSCTPartContentWrapper_sMSCTPart_Content + 32) != 4)
  {
    return 0;
  }

  v3 = *v1;
  v2 = v1[1];
  v4 = type metadata accessor for _ObjCSMSCTPartAttributedRichCardsWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorSMSCTPartAttributedRichCards_sMSCTPartAttributedRichCards];
  *v6 = v3;
  v6[1] = v2;
  sub_2143001B8(v3);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_21459088C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
  return EnumCaseMultiPayload;
}

id sub_21459099C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }

  else
  {
    memcpy(v11, v4, sizeof(v11));
    sub_214593100(v11, v10);
    v6 = type metadata accessor for _ObjCTypingIndicatorWrapper();
    v7 = objc_allocWithZone(v6);
    sub_214593100(v10, v7 + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    sub_214307C44(v10);
    sub_214307C44(v11);
    return v8;
  }
}

id sub_214590B2C()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(v4 + 5);
    v20 = *(v4 + 4);
    v21 = v5;
    v22 = *(v4 + 6);
    v23 = *(v4 + 14);
    v6 = *(v4 + 1);
    v16 = *v4;
    v17 = v6;
    v7 = *(v4 + 3);
    v18 = *(v4 + 2);
    v19 = v7;
    v8 = type metadata accessor for _ObjCMessageWrapper();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR___BlastDoorMessage_message];
    v11 = v21;
    *(v10 + 4) = v20;
    *(v10 + 5) = v11;
    *(v10 + 6) = v22;
    *(v10 + 14) = v23;
    v12 = v17;
    *v10 = v16;
    *(v10 + 1) = v12;
    v13 = v19;
    *(v10 + 2) = v18;
    *(v10 + 3) = v13;
    v15.receiver = v9;
    v15.super_class = v8;
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214590CC4()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = *(v4 + 9);
    v28 = *(v4 + 8);
    v29 = v5;
    v30 = *(v4 + 10);
    v31 = *(v4 + 22);
    v6 = *(v4 + 5);
    v24 = *(v4 + 4);
    v25 = v6;
    v7 = *(v4 + 7);
    v26 = *(v4 + 6);
    v27 = v7;
    v8 = *(v4 + 1);
    v20 = *v4;
    v21 = v8;
    v9 = *(v4 + 3);
    v22 = *(v4 + 2);
    v23 = v9;
    v10 = type metadata accessor for _ObjCTapBackWrapper();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR___BlastDoorTapBack_tapBack];
    v13 = v29;
    *(v12 + 8) = v28;
    *(v12 + 9) = v13;
    *(v12 + 10) = v30;
    *(v12 + 22) = v31;
    v14 = v25;
    *(v12 + 4) = v24;
    *(v12 + 5) = v14;
    v15 = v27;
    *(v12 + 6) = v26;
    *(v12 + 7) = v15;
    v16 = v21;
    *v12 = v20;
    *(v12 + 1) = v16;
    v17 = v23;
    *(v12 + 2) = v22;
    *(v12 + 3) = v17;
    v19.receiver = v11;
    v19.super_class = v10;
    return objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214590E7C()
{
  v1 = type metadata accessor for BalloonPlugin(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TextMessage.MessageType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v11, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21459375C(v11, v7, type metadata accessor for BalloonPlugin);
    sub_213FB568C(v7, v5, type metadata accessor for BalloonPlugin);
    v12 = type metadata accessor for _ObjCBalloonPluginWrapper(0);
    v13 = objc_allocWithZone(v12);
    sub_213FB568C(v5, v13 + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, type metadata accessor for BalloonPlugin);
    v16.receiver = v13;
    v16.super_class = v12;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    sub_213FB5844(v5, type metadata accessor for BalloonPlugin);
    sub_213FB5844(v7, type metadata accessor for BalloonPlugin);
    return v14;
  }

  else
  {
    sub_213FB5844(v11, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_2145910BC()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = v4[11];
    v32 = v4[10];
    v33[0] = v5;
    *(v33 + 9) = *(v4 + 185);
    v6 = v4[7];
    v28 = v4[6];
    v29 = v6;
    v7 = v4[9];
    v30 = v4[8];
    v31 = v7;
    v8 = v4[3];
    v24 = v4[2];
    v25 = v8;
    v9 = v4[5];
    v26 = v4[4];
    v27 = v9;
    v10 = v4[1];
    v22 = *v4;
    v23 = v10;
    v11 = type metadata accessor for _ObjCStickerWrapper();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR___BlastDoorSticker_sticker];
    v14 = v33[0];
    *(v13 + 10) = v32;
    *(v13 + 11) = v14;
    *(v13 + 185) = *(v33 + 9);
    v15 = v29;
    *(v13 + 6) = v28;
    *(v13 + 7) = v15;
    v16 = v31;
    *(v13 + 8) = v30;
    *(v13 + 9) = v16;
    v17 = v25;
    *(v13 + 2) = v24;
    *(v13 + 3) = v17;
    v18 = v27;
    *(v13 + 4) = v26;
    *(v13 + 5) = v18;
    v19 = v23;
    *v13 = v22;
    *(v13 + 1) = v19;
    v21.receiver = v12;
    v21.super_class = v11;
    return objc_msgSendSuper2(&v21, sel_init);
  }

  else
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214591278()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v5 = v4[1];
    v14 = *v4;
    v15 = v5;
    v6 = v4[3];
    v16 = v4[2];
    v17 = v6;
    v7 = type metadata accessor for _ObjCAudioMessageWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorAudioMessage_audioMessage];
    v10 = v15;
    *v9 = v14;
    *(v9 + 1) = v10;
    v11 = v17;
    *(v9 + 2) = v16;
    *(v9 + 3) = v11;
    v13.receiver = v8;
    v13.super_class = v7;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_2145913E0()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v5 = v4[11];
    v34 = v4[10];
    v35 = v5;
    v6 = v4[13];
    v36 = v4[12];
    v37 = v6;
    v7 = v4[7];
    v30 = v4[6];
    v31 = v7;
    v8 = v4[9];
    v32 = v4[8];
    v33 = v8;
    v9 = v4[3];
    v26 = v4[2];
    v27 = v9;
    v10 = v4[5];
    v28 = v4[4];
    v29 = v10;
    v11 = v4[1];
    v24 = *v4;
    v25 = v11;
    v12 = type metadata accessor for _ObjCEmojiTapBackWrapper();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR___BlastDoorEmojiTapBack_emojiTapBack];
    v15 = v35;
    *(v14 + 10) = v34;
    *(v14 + 11) = v15;
    v16 = v37;
    *(v14 + 12) = v36;
    *(v14 + 13) = v16;
    v17 = v31;
    *(v14 + 6) = v30;
    *(v14 + 7) = v17;
    v18 = v33;
    *(v14 + 8) = v32;
    *(v14 + 9) = v18;
    v19 = v27;
    *(v14 + 2) = v26;
    *(v14 + 3) = v19;
    v20 = v29;
    *(v14 + 4) = v28;
    *(v14 + 5) = v20;
    v21 = v25;
    *v14 = v24;
    *(v14 + 1) = v21;
    v23.receiver = v13;
    v23.super_class = v12;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  else
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_2145915A4()
{
  v1 = type metadata accessor for TextMessage.MessageType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v4, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    memcpy(v9, v4, sizeof(v9));
    v5 = type metadata accessor for _ObjCStickerTapBackWrapper();
    v6 = objc_allocWithZone(v5);
    memcpy(&v6[OBJC_IVAR___BlastDoorStickerTapBack_stickerTapBack], v9, 0x130uLL);
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    sub_213FB5844(v4, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

id sub_214591718()
{
  v1 = type metadata accessor for CustomAcknowledgement();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TextMessage.MessageType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v0 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, v11, type metadata accessor for TextMessage.MessageType);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_21459375C(v11, v7, type metadata accessor for CustomAcknowledgement);
    sub_213FB568C(v7, v5, type metadata accessor for CustomAcknowledgement);
    v12 = type metadata accessor for _ObjCCustomAcknowledgementWrapper(0);
    v13 = objc_allocWithZone(v12);
    sub_213FB568C(v5, v13 + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement, type metadata accessor for CustomAcknowledgement);
    v16.receiver = v13;
    v16.super_class = v12;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    sub_213FB5844(v5, type metadata accessor for CustomAcknowledgement);
    sub_213FB5844(v7, type metadata accessor for CustomAcknowledgement);
    return v14;
  }

  else
  {
    sub_213FB5844(v11, type metadata accessor for TextMessage.MessageType);
    return 0;
  }
}

uint64_t sub_214591CF4(uint64_t result)
{
  if ((result - 3000) >= 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if ((result - 2000) >= 7)
  {
    return v1;
  }

  return result;
}

uint64_t sub_214592208(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 > 0x18Fu)
  {
    if (a1 <= 0x1F5u)
    {
      if (a1 != 400 && a1 != 500)
      {
        goto LABEL_19;
      }
    }

    else if (a1 != 502 && a1 != 600 && a1 != 601)
    {
      goto LABEL_19;
    }
  }

  else if (a1 <= 0xC8u)
  {
    if (a1 && a1 != 120)
    {
      goto LABEL_19;
    }
  }

  else if (a1 != 201 && a1 != 202 && a1 != 250)
  {
LABEL_19:
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v2 = 0;
  return v1 | (v2 << 16);
}

unint64_t sub_2145924C8(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2145924D8(uint64_t result)
{
  if ((result + 1) >= 0xF)
  {
    return 0;
  }

  return result;
}

unint64_t sub_214592640(unint64_t result)
{
  if (result > 0xE)
  {
    return 0;
  }

  return result;
}

uint64_t sub_214592CB0(uint64_t result)
{
  if ((result + 2) >= 9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21459308C(uint64_t result)
{
  if (result > 2999)
  {
    if ((result - 3000) >= 8 && result != 4000)
    {
      return 0;
    }
  }

  else if ((result - 2000) >= 8 && result >= 4 && result != 1000)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2145932AC(uint64_t result)
{
  if ((result + 1) >= 4 && result != 10)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2145934F8(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21459366C(unint64_t result)
{
  if (result > 0xA)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21459367C(unint64_t result)
{
  if (result > 0x31)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21459368C(uint64_t result)
{
  if ((result + 1) >= 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2145936A4(unint64_t result)
{
  if (result - 6 >= 0xF && result >= 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2145936C0(unint64_t result)
{
  if (result - 7 >= 0x11 && result >= 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2145936DC(unint64_t result)
{
  if (result > 0x20)
  {
    return 0;
  }

  return result;
}

unint64_t sub_214593710()
{
  result = qword_27C9133E8;
  if (!qword_27C9133E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C9133E8);
  }

  return result;
}

uint64_t sub_21459375C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2145937C8()
{
  result = qword_27C915868;
  if (!qword_27C915868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915868);
  }

  return result;
}

unint64_t sub_214593820()
{
  result = qword_27C915870;
  if (!qword_27C915870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915870);
  }

  return result;
}

unint64_t sub_214593878()
{
  result = qword_27C915878;
  if (!qword_27C915878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915878);
  }

  return result;
}

unint64_t sub_2145938D0()
{
  result = qword_27C915880;
  if (!qword_27C915880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915880);
  }

  return result;
}

unint64_t sub_214593928()
{
  result = qword_27C915888;
  if (!qword_27C915888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915888);
  }

  return result;
}

unint64_t sub_214593980()
{
  result = qword_27C915890;
  if (!qword_27C915890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915890);
  }

  return result;
}

unint64_t sub_2145939D8()
{
  result = qword_27C915898;
  if (!qword_27C915898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915898);
  }

  return result;
}

unint64_t sub_214593A30()
{
  result = qword_27C9158A0;
  if (!qword_27C9158A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158A0);
  }

  return result;
}

unint64_t sub_214593A88()
{
  result = qword_27C9158A8;
  if (!qword_27C9158A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158A8);
  }

  return result;
}

unint64_t sub_214593AE0()
{
  result = qword_27C9158B0;
  if (!qword_27C9158B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158B0);
  }

  return result;
}

unint64_t sub_214593B38()
{
  result = qword_27C9158B8;
  if (!qword_27C9158B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158B8);
  }

  return result;
}

unint64_t sub_214593B90()
{
  result = qword_27C9158C0;
  if (!qword_27C9158C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158C0);
  }

  return result;
}

unint64_t sub_214593BE8()
{
  result = qword_27C9158C8;
  if (!qword_27C9158C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158C8);
  }

  return result;
}

unint64_t sub_214593C40()
{
  result = qword_27C9158D0;
  if (!qword_27C9158D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158D0);
  }

  return result;
}

unint64_t sub_214593C98()
{
  result = qword_27C9158D8;
  if (!qword_27C9158D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158D8);
  }

  return result;
}

unint64_t sub_214593CF0()
{
  result = qword_27C9158E0;
  if (!qword_27C9158E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158E0);
  }

  return result;
}

unint64_t sub_214593D48()
{
  result = qword_27C9158E8;
  if (!qword_27C9158E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158E8);
  }

  return result;
}

unint64_t sub_214593DA0()
{
  result = qword_27C9158F0;
  if (!qword_27C9158F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158F0);
  }

  return result;
}

unint64_t sub_214593DF8()
{
  result = qword_27C9158F8;
  if (!qword_27C9158F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9158F8);
  }

  return result;
}

unint64_t sub_214593E50()
{
  result = qword_27C915900;
  if (!qword_27C915900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915900);
  }

  return result;
}

unint64_t sub_214593EA8()
{
  result = qword_27C915908;
  if (!qword_27C915908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915908);
  }

  return result;
}

unint64_t sub_214593F00()
{
  result = qword_27C915910;
  if (!qword_27C915910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915910);
  }

  return result;
}

unint64_t sub_214593F58()
{
  result = qword_27C915918;
  if (!qword_27C915918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915918);
  }

  return result;
}

unint64_t sub_214593FB0()
{
  result = qword_27C915920;
  if (!qword_27C915920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915920);
  }

  return result;
}

unint64_t sub_214594008()
{
  result = qword_27C915928;
  if (!qword_27C915928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915928);
  }

  return result;
}

unint64_t sub_214594060()
{
  result = qword_27C915930;
  if (!qword_27C915930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915930);
  }

  return result;
}

unint64_t sub_2145940B8()
{
  result = qword_27C915938;
  if (!qword_27C915938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915938);
  }

  return result;
}

unint64_t sub_214594110()
{
  result = qword_27C915940;
  if (!qword_27C915940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915940);
  }

  return result;
}

unint64_t sub_214594168()
{
  result = qword_27C915948;
  if (!qword_27C915948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915948);
  }

  return result;
}

unint64_t sub_2145941C0()
{
  result = qword_27C915950;
  if (!qword_27C915950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915950);
  }

  return result;
}

unint64_t sub_214594218()
{
  result = qword_27C915958;
  if (!qword_27C915958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915958);
  }

  return result;
}

unint64_t sub_214594270()
{
  result = qword_27C915960;
  if (!qword_27C915960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915960);
  }

  return result;
}

unint64_t sub_2145942C8()
{
  result = qword_27C915968;
  if (!qword_27C915968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915968);
  }

  return result;
}

unint64_t sub_214594320()
{
  result = qword_27C915970;
  if (!qword_27C915970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915970);
  }

  return result;
}

unint64_t sub_214594378()
{
  result = qword_27C915978;
  if (!qword_27C915978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915978);
  }

  return result;
}

unint64_t sub_2145943D0()
{
  result = qword_27C915980;
  if (!qword_27C915980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915980);
  }

  return result;
}

unint64_t sub_214594428()
{
  result = qword_27C915988;
  if (!qword_27C915988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915988);
  }

  return result;
}

unint64_t sub_214594480()
{
  result = qword_27C915990;
  if (!qword_27C915990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915990);
  }

  return result;
}

unint64_t sub_2145944D8()
{
  result = qword_27C915998;
  if (!qword_27C915998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915998);
  }

  return result;
}

unint64_t sub_214594530()
{
  result = qword_27C9159A0;
  if (!qword_27C9159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159A0);
  }

  return result;
}

unint64_t sub_214594588()
{
  result = qword_27C9159A8;
  if (!qword_27C9159A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159A8);
  }

  return result;
}

unint64_t sub_2145945E0()
{
  result = qword_27C9159B0;
  if (!qword_27C9159B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159B0);
  }

  return result;
}

unint64_t sub_214594638()
{
  result = qword_27C9159B8;
  if (!qword_27C9159B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159B8);
  }

  return result;
}

unint64_t sub_214594690()
{
  result = qword_27C9159C0;
  if (!qword_27C9159C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159C0);
  }

  return result;
}

unint64_t sub_2145946E8()
{
  result = qword_27C9159C8;
  if (!qword_27C9159C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159C8);
  }

  return result;
}

unint64_t sub_214594740()
{
  result = qword_27C9159D0;
  if (!qword_27C9159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159D0);
  }

  return result;
}

unint64_t sub_214594798()
{
  result = qword_27C9159D8;
  if (!qword_27C9159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159D8);
  }

  return result;
}

unint64_t sub_2145947F0()
{
  result = qword_27C9159E0;
  if (!qword_27C9159E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159E0);
  }

  return result;
}

unint64_t sub_214594848()
{
  result = qword_27C9159E8;
  if (!qword_27C9159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159E8);
  }

  return result;
}

unint64_t sub_2145948A0()
{
  result = qword_27C9159F0;
  if (!qword_27C9159F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159F0);
  }

  return result;
}

unint64_t sub_2145948F8()
{
  result = qword_27C9159F8;
  if (!qword_27C9159F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9159F8);
  }

  return result;
}

unint64_t sub_214594950()
{
  result = qword_27C915A00;
  if (!qword_27C915A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A00);
  }

  return result;
}

unint64_t sub_2145949A8()
{
  result = qword_27C915A08;
  if (!qword_27C915A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A08);
  }

  return result;
}

unint64_t sub_214594A00()
{
  result = qword_27C915A10;
  if (!qword_27C915A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A10);
  }

  return result;
}

unint64_t sub_214594A58()
{
  result = qword_27C915A18;
  if (!qword_27C915A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A18);
  }

  return result;
}

unint64_t sub_214594AB0()
{
  result = qword_27C915A20;
  if (!qword_27C915A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A20);
  }

  return result;
}

unint64_t sub_214594B08()
{
  result = qword_27C915A28;
  if (!qword_27C915A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A28);
  }

  return result;
}

unint64_t sub_214594B60()
{
  result = qword_27C915A30;
  if (!qword_27C915A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A30);
  }

  return result;
}

unint64_t sub_214594BB8()
{
  result = qword_27C915A38;
  if (!qword_27C915A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A38);
  }

  return result;
}

unint64_t sub_214594C10()
{
  result = qword_27C915A40;
  if (!qword_27C915A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A40);
  }

  return result;
}

unint64_t sub_214594C68()
{
  result = qword_27C915A48;
  if (!qword_27C915A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915A48);
  }

  return result;
}

uint64_t sub_2145A8204()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_2145A8688(v12);
  v16 = v15;
  sub_213FB2DF4(v12, &qword_27C904230, &qword_2146EAB88);
  if (v1)
  {
    return v8;
  }

  v17 = type metadata accessor for CloudKitSharingToken();
  v18 = v0 + *(v17 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v18 + *(v19 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v20 = sub_2146D8958();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    sub_213FB2DF4(v6, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    (*(v21 + 32))(v8, v6, v20);
    (*(v21 + 56))(v8, 0, 1, v20);
    v22 = v0 + *(v17 + 28);
    v23 = *(v22 + 24);
    if (v23 != 1)
    {
      v24 = *(v22 + 16);
      objc_allocWithZone(_BlastDoorCKDeviceToDeviceShareInvitationToken);
      sub_213FDC9D0(v24, v23);
      v8 = sub_2145B0C70(v14, v16, v8, v24, v23);
      sub_213FB54FC(v14, v16);
      return v8;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2145A8530(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 sharingInvitationData];
  v9 = sub_2146D8A58();
  v11 = v10;
  v12 = [a1 shareURL];
  if (v12)
  {
    v13 = v12;

    sub_2146D88E8();
    v14 = [a1 participantID];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2146D95B8();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_2145A9478(v9, v11, v7, v16, v18, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2145A8688(uint64_t a1)
{
  v2 = v1;
  v124 = *MEMORY[0x277D85DE8];
  v93 = type metadata accessor for PCSManateeShareInvitation();
  v4 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2146D8998();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v86 = (&v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v87 = (&v85 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - v16;
  memcpy(v122, v1, sizeof(v122));
  sub_2142EBBC4(v122, &v96);
  sub_2145AE29C(v108);
  memcpy(v123, v1, sizeof(v123));
  sub_2142EB96C(v123);
  v104 = v108[2];
  v105 = v108[3];
  v106 = v108[4];
  v107 = v109;
  v102 = v108[0];
  v103 = v108[1];
  v92 = a1;
  sub_213FB2E54(a1, v17, &qword_27C904230, &qword_2146EAB88);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v19 + 48;
  if (v20(v17, 1, v18) == 1)
  {
    sub_213FB2DF4(v17, &qword_27C904230, &qword_2146EAB88);
  }

  else
  {
    sub_213FB54FC(*v17, *(v17 + 1));
    v22 = *(v18 + 48);
    v23 = &v17[*(v18 + 64)];
    v24 = *(v23 + 3);
    v112 = *(v23 + 2);
    v113 = v24;
    v114 = *(v23 + 4);
    v115 = *(v23 + 10);
    v25 = *(v23 + 1);
    v110 = *v23;
    v111 = v25;
    sub_2145B12A0(&v17[v22], type metadata accessor for PCSManateeShareInvitation);
    v118 = v104;
    v119 = v105;
    v120 = v106;
    v121 = v107;
    v116 = v102;
    v117 = v103;
    if ((sub_2145AB598(&v110) & 1) == 0)
    {
      v30 = sub_2146D9F58();
      v93 = swift_allocError();
      v32 = v51;
      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_2146D9EF8();
      v94 = v96;
      MEMORY[0x2160545D0](0xD00000000000001ALL, 0x80000002147A5090);
      v98 = v112;
      v99 = v113;
      v100 = v114;
      v101 = v115;
      v96 = v110;
      v97 = v111;
      type metadata accessor for PCSShareProtection(0);
      sub_2146D9FE8();
      MEMORY[0x2160545D0](0xD00000000000002ALL, 0x80000002147A50B0);
      v98 = v104;
      v99 = v105;
      v100 = v106;
      v101 = v107;
      v96 = v102;
      v97 = v103;
      sub_2146D9FE8();
      v46 = &v94;
      MEMORY[0x2160545D0](0xD00000000000006CLL, 0x80000002147A50E0);
LABEL_16:
      sub_2146D9F28();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84168], v30);
      swift_willThrow();
      goto LABEL_17;
    }
  }

  v85 = v21;
  v26 = length_PCSShareProtection(&v102);
  v95 = 0;
  v27 = swift_slowAlloc();
  v28 = encode_PCSShareProtection(v27 + v26 - 1, v26, &v102, &v95);
  if (v28)
  {
    v29 = v28;
    v30 = sub_2146D9F58();
    swift_allocError();
    v32 = v31;
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2146D9EF8();
    v94 = v96;
    MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A4E80);
    v98 = v104;
    v99 = v105;
    v100 = v106;
    v101 = v107;
    v96 = v102;
    v97 = v103;
    type metadata accessor for PCSShareProtection(0);
    sub_2146D9FE8();
    MEMORY[0x2160545D0](0xD000000000000061, 0x80000002147A4EA0);
    LODWORD(v96) = v29;
LABEL_15:
    v54 = sub_2146DA428();
    v46 = &v94;
    MEMORY[0x2160545D0](v54);

    goto LABEL_16;
  }

  if (v95 != v26)
  {
    v30 = sub_2146D9F58();
    swift_allocError();
    v32 = v52;
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2146D9EF8();
    v94 = v96;
    MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A4E80);
    v98 = v104;
    v99 = v105;
    v100 = v106;
    v101 = v107;
    v96 = v102;
    v97 = v103;
    type metadata accessor for PCSShareProtection(0);
    sub_2146D9FE8();
    MEMORY[0x2160545D0](0xD000000000000066, 0x80000002147A4F10);
    *&v96 = v95;
    v53 = sub_2146DA428();
    MEMORY[0x2160545D0](v53);

    MEMORY[0x2160545D0](0xD00000000000002ALL, 0x80000002147A4F80);
    *&v96 = v95;
    goto LABEL_15;
  }

  (*(v89 + 13))(v9, *MEMORY[0x277CC92A0], v90);
  v90 = sub_2145B0A38(v27, v26, v9);
  v34 = v33;
  v35 = v91;
  sub_2146D8DE8();
  v36 = v93;
  v37 = v35 + *(v93 + 20);
  *v37 = xmmword_2146E68C0;
  v38 = v35 + *(v36 + 24);
  *v38 = xmmword_2146E68C0;
  v39 = v2[39];
  if (v39 >> 60 != 11)
  {
    v89 = v20;
    if (v39 >> 60 != 15)
    {
      v40 = v2[38];
      sub_213FDCA18(v40, v39);
      sub_213FDC6BC(0, 0xF000000000000000);
      *v38 = v40;
      *(v38 + 8) = v39;
    }

    v41 = *v37;
    v42 = *(v37 + 8);
    v43 = v90;
    *v37 = v90;
    *(v37 + 8) = v34;
    sub_21402D9F8(v43, v34);
    sub_213FDC6BC(v41, v42);
    v44 = *(v37 + 8);
    v45 = v92;
    if (v44 >> 60 == 15)
    {
      goto LABEL_11;
    }

    if (v89(v92, 1, v18) == 1)
    {
LABEL_19:
      v92 = v34;
      sub_2145B0D94();
      v46 = v35;
      v57 = v88;
      v58 = sub_2146D8FC8();
      if (v57)
      {
        sub_2145B12A0(v35, type metadata accessor for PCSManateeShareInvitation);
        sub_213FB54FC(v90, v92);
        goto LABEL_17;
      }

      v46 = v58;
      v72 = v59;
      v73 = v89;
      if (v89(v45, 1, v18) == 1)
      {
        goto LABEL_32;
      }

      v74 = v45;
      v75 = v73;
      v76 = v86;
      sub_213FB2E54(v74, v86, &qword_27C904230, &qword_2146EAB88);
      if (v75(v76, 1, v18) == 1)
      {
        sub_21402D9F8(v46, v72);
        sub_213FB2DF4(v76, &qword_27C904230, &qword_2146EAB88);
        if (v72 >> 60 != 15)
        {
          v77 = 0;
          v78 = 0xF000000000000000;
          goto LABEL_42;
        }
      }

      else
      {
        v78 = v76[1];
        v93 = *v76;
        v79 = *(v18 + 48);
        sub_21402D9F8(v46, v72);
        sub_2145B12A0(v76 + v79, type metadata accessor for PCSManateeShareInvitation);
        if (v72 >> 60 != 15)
        {
          if (v78 >> 60 != 15)
          {
            sub_21402D9F8(v46, v72);
            v83 = v93;
            sub_213FDCA18(v93, v78);
            v84 = sub_214466780(v46, v72, v83, v78);
            sub_213FDC6BC(v83, v78);
            sub_213FDC6BC(v83, v78);
            sub_213FB54FC(v46, v72);
            sub_213FDC6BC(v46, v72);
            if (v84)
            {
LABEL_32:
              sub_213FB54FC(v90, v92);
LABEL_39:
              sub_2145B12A0(v35, type metadata accessor for PCSManateeShareInvitation);
              goto LABEL_17;
            }

LABEL_43:
            v80 = sub_2146D9F58();
            swift_allocError();
            v82 = v81;
            sub_2146D9F28();
            (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84168], v80);
            swift_willThrow();
            sub_213FB54FC(v46, v72);
            v49 = v90;
            v50 = v92;
            goto LABEL_12;
          }

          v77 = v93;
LABEL_42:
          sub_213FDC6BC(v46, v72);
          sub_213FDC6BC(v77, v78);
          goto LABEL_43;
        }

        v77 = v93;
        if (v78 >> 60 != 15)
        {
          goto LABEL_42;
        }
      }

      sub_213FB54FC(v90, v92);
      sub_213FDC6BC(v46, v72);
      goto LABEL_39;
    }

    v60 = *v37;
    v61 = v87;
    sub_213FB2E54(v45, v87, &qword_27C904230, &qword_2146EAB88);
    if (v89(v61, 1, v18) == 1)
    {
      sub_213FDCA18(v60, v44);
      sub_213FB2DF4(v61, &qword_27C904230, &qword_2146EAB88);
      sub_213FDC6BC(v60, v44);
      sub_213FDC6BC(0, 0xF000000000000000);
    }

    else
    {
      v62 = *v61;
      v63 = v61[1];
      sub_213FDCA18(v60, v44);
      sub_213FB54FC(v62, v63);
      v64 = v61 + *(v18 + 48);
      v65 = (v64 + *(v93 + 20));
      v66 = *v65;
      v67 = v65[1];
      sub_213FDCA18(*v65, v67);
      sub_2145B12A0(v64, type metadata accessor for PCSManateeShareInvitation);
      if (v67 >> 60 == 15)
      {
        v68 = 0;
      }

      else
      {
        v68 = v66;
      }

      if (v67 >> 60 == 15)
      {
        v69 = 0xC000000000000000;
      }

      else
      {
        v69 = v67;
      }

      sub_21402D9F8(v60, v44);
      sub_213FDCA18(v68, v69);
      v70 = sub_214466780(v60, v44, v68, v69);
      sub_213FDC6BC(v68, v69);
      v71 = v68;
      v45 = v92;
      sub_213FDC6BC(v71, v69);
      sub_213FB54FC(v60, v44);
      sub_213FDC6BC(v60, v44);
      if (v70)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v46 = sub_2146D9F58();
    swift_allocError();
    v48 = v47;
    sub_2146D9F28();
    (*(*(v46 - 1) + 104))(v48, *MEMORY[0x277D84168], v46);
    swift_willThrow();
    v49 = v90;
    v50 = v34;
LABEL_12:
    sub_213FB54FC(v49, v50);
    sub_2145B12A0(v35, type metadata accessor for PCSManateeShareInvitation);
LABEL_17:
    v55 = *MEMORY[0x277D85DE8];
    return v46;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145A9478@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v184 = a5;
  v175 = a4;
  v186 = a1;
  v187 = a3;
  v189 = a2;
  v223 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904230, &qword_2146EAB88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v174 = (&v168 - v9);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v10 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v177 = (&v168 - v11);
  v12 = sub_2146D8958();
  v13 = *(v12 - 8);
  v190 = v12;
  v191 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v179 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CloudKitSharingToken();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v178 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v173 = &v168 - v20;
  v21 = sub_2146D8E18();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v181 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for PCSManateeShareInvitation();
  v24 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v188 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v26 = swift_allocObject();
  v192 = xmmword_2146E9BF0;
  *(v26 + 16) = xmmword_2146E9BF0;
  v27 = swift_allocObject();
  *(v27 + 16) = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  v29[2] = sub_214059908;
  v29[3] = 0;
  v29[4] = 0x100000;
  v29[5] = sub_21403C354;
  v29[6] = 0;
  *(v28 + 16) = sub_2143A571C;
  *(v28 + 24) = v29;
  *(v27 + 32) = v28;
  v30 = sub_2142E00AC(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v31 + 16) = sub_2143A5724;
  *(v31 + 24) = v32;
  *(v26 + 32) = v31;
  sub_214042E28(v26, (a6 + 36));
  v33 = *(v16 + 24);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2146EAEB0;
  v35 = sub_214069764(&unk_282652D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v36 + 16) = sub_21409A858;
  *(v36 + 24) = v37;
  *(v34 + 32) = v36;
  v38 = sub_214069888(&unk_282652E20);
  v39 = swift_allocObject();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v39 + 16) = sub_21409A860;
  *(v39 + 24) = v40;
  *(v34 + 40) = v39;
  v185 = v33;
  v41 = (a6 + v33);
  v42 = v16;
  sub_214042F80(v34, v41);
  v43 = *(v16 + 28);
  v180 = a6;
  v44 = a6 + v43;
  v45 = v189;
  v46 = swift_allocObject();
  *(v46 + 16) = v192;
  v47 = v188;
  v48 = swift_allocObject();
  *(v48 + 16) = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_21405980C;
  *(v49 + 24) = 0;
  *(v48 + 32) = v49;
  v50 = sub_2142E0070(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v51 = swift_allocObject();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v51 + 16) = sub_21403254C;
  *(v51 + 24) = v52;
  *(v46 + 32) = v51;
  *&v192 = v44;
  v53 = v46;
  v54 = v186;
  sub_214042A28(v53, v44);
  v202[0] = v54;
  v202[1] = v45;
  memset(v203, 0, 40);
  sub_21402D9F8(v54, v45);
  sub_2146D8E08();
  sub_2145B0D94();
  v55 = v183;
  v56 = v182;
  sub_2146D8FD8();
  if (v55)
  {
    (*(v191 + 8))(v187, v190);

    sub_213FB54FC(v54, v45);
    v57 = v180;
    v58 = v192;
    goto LABEL_17;
  }

  sub_2145B1120(v47, &v210);
  if (v216)
  {

    v59 = sub_2146D9F58();
    swift_allocError();
    v61 = v60;
    sub_2146D9F28();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84168], v59);
    swift_willThrow();
    sub_213FB54FC(v54, v45);
    (*(v191 + 8))(v187, v190);
    sub_2145B12A0(v47, type metadata accessor for PCSManateeShareInvitation);
    v57 = v180;
    v58 = v192;
    goto LABEL_17;
  }

  v181 = v42;
  v219 = v212;
  v220 = v213;
  v221 = v214;
  v222 = v215;
  v217 = v210;
  v218 = v211;
  v206 = v212;
  v207 = v213;
  v208 = v214;
  v209 = v215;
  v204 = v210;
  v205 = v211;
  sub_2145AD6DC(&v210, v203);
  v62 = v191;
  v183 = 0;
  memcpy(v202, v203, sizeof(v202));
  v63 = (v47 + *(v56 + 24));
  v64 = *v63;
  v65 = v63[1];
  if (v65 >> 60 != 15)
  {
    sub_213FDCA18(v64, v65);
  }

  v169 = *(v62 + 16);
  v170 = v62 + 16;
  v169(v179, v187, v190);
  sub_2142EBBC4(v202, v201);
  sub_213FDCA18(v64, v65);
  sub_21439FB9C(v201);
  v172 = v64;
  v66 = v201[1];
  v182 = v65;
  v67 = v201[2];
  v68 = v181;
  v69 = v178;
  v171 = *(v181 + 6);
  sub_21439FD04(&v178[v171]);
  sub_21439FE30(&v194);
  v70 = v196;
  memcpy(v69, v202, 0x120uLL);
  *(v69 + 288) = v201[0];
  *(v69 + 304) = v66;
  *(v69 + 320) = v67;
  v71 = v182;
  v72 = (v69 + *(v68 + 7));
  v73 = v195;
  *v72 = v194;
  *(v72 + 1) = v73;
  v72[32] = v70;
  v74 = *(v69 + 296);
  v76 = *(v69 + 304);
  v75 = *(v69 + 312);
  v77 = *(v69 + 320);
  *&v201[0] = *(v69 + 288);
  *(&v201[0] + 1) = v74;
  *&v201[1] = v76;
  *(&v201[1] + 1) = v75;
  LOBYTE(v201[2]) = v77;

  sub_21404F7E0(v76, v75);
  v78 = v172;
  v79 = v71;
  v80 = v183;
  sub_214032118(v172, v71, 2, 0xD000000000000028, 0x800000021478DC40, 0xD00000000000001CLL, 0x800000021478A360);
  v58 = v192;
  v183 = v80;
  if (v80)
  {

    sub_213FDC6BC(v78, v79);

    sub_213FDC6BC(v78, v79);
    sub_2142EB96C(v202);
    v81 = *(v191 + 8);
    v81(v179, v190);
    v82 = v201[1];
    v83 = v201[2];
    v84 = *(v69 + 296);
    v85 = *(v69 + 304);
    v86 = *(v69 + 312);

    sub_214032564(v85, v86);
    *(v69 + 288) = v201[0];
    *(v69 + 304) = v82;
    *(v69 + 320) = v83;
    sub_2145B12A0(v69, type metadata accessor for CloudKitSharingToken);
    v88 = v186;
    v87 = v187;
    v89 = v188;
    v90 = v189;
LABEL_16:
    v201[2] = v206;
    v201[3] = v207;
    v201[4] = v208;
    *&v201[5] = v209;
    v201[0] = v204;
    v201[1] = v205;
    LOBYTE(v194) = 0;
    BYTE8(v201[5]) = 0;
    free_PCSShareProtection();
    sub_213FB54FC(v88, v90);
    v81(v87, v190);
    sub_2145B12A0(v89, type metadata accessor for PCSManateeShareInvitation);
    v57 = v180;
    goto LABEL_17;
  }

  v181 = v72;

  v91 = *(&v201[1] + 1);
  v92 = *&v201[1];
  v93 = v201[2];
  v94 = *(v69 + 296);
  v95 = *(v69 + 304);
  v96 = *(v69 + 312);

  sub_214032564(v95, v96);
  *(v69 + 288) = v201[0];
  *(v69 + 304) = __PAIR128__(v91, v92);
  *(v69 + 320) = v93;
  v97 = v177;
  sub_213FB2E54(v69 + v171, v177, &unk_27C9131D0, &qword_2146EAA70);
  v98 = *v97;
  v99 = v97[1];
  LOBYTE(v194) = *(v97 + *(v176 + 32));
  *&v201[0] = 0xD00000000000001DLL;
  *(&v201[0] + 1) = 0x800000021478DC70;
  *&v201[1] = 0xD00000000000001CLL;
  *(&v201[1] + 1) = 0x800000021478A360;
  v100 = v179;
  v101 = v183;
  v102 = v98(v179, &v194, v201);
  v183 = v101;
  if (v101)
  {
    v103 = v172;
    v104 = v182;
    sub_213FDC6BC(v172, v182);

    sub_213FDC6BC(v103, v104);
    sub_2142EB96C(v202);
    v81 = *(v191 + 8);
    v81(v100, v190);

LABEL_15:
    v90 = v189;
    v88 = v186;
    v124 = v178;
    sub_2143A009C(v97, &v178[v171]);
    sub_2145B12A0(v124, type metadata accessor for CloudKitSharingToken);
    v87 = v187;
    v89 = v188;
    goto LABEL_16;
  }

  v105 = v191;
  v106 = v184;
  if ((v102 & 1) == 0)
  {
    v120 = v172;
    v121 = v182;
    sub_213FDC6BC(v172, v182);

    sub_214031C4C();
    v122 = swift_allocError();
    *v123 = 0xD00000000000001DLL;
    v123[1] = 0x800000021478DC70;
    v123[2] = 0xD00000000000001CLL;
    v123[3] = 0x800000021478A360;
    v183 = v122;
    swift_willThrow();
    sub_213FDC6BC(v120, v121);
    sub_2142EB96C(v202);
    v81 = *(v105 + 8);
    v81(v100, v190);
    v97 = v177;
    goto LABEL_15;
  }

  v107 = v177;
  v108 = *(v176 + 28);
  sub_213FB2DF4(v177 + v108, &unk_27C9131A0, &unk_2146E9D10);
  v109 = v190;
  v169((v107 + v108), v100, v190);
  (*(v105 + 56))(v107 + v108, 0, 1, v109);
  sub_2143A009C(v107, &v178[v171]);
  v110 = v181;
  v112 = *v181;
  v111 = *(v181 + 1);
  v114 = *(v181 + 2);
  v113 = *(v181 + 3);
  v115 = v181[32];
  *&v194 = v175;
  *(&v194 + 1) = v106;
  LODWORD(v176) = v115;
  v193[0] = v115;
  *&v201[0] = 0xD000000000000022;
  *(&v201[0] + 1) = 0x800000021478DC90;
  *&v201[1] = 0xD00000000000001CLL;
  *(&v201[1] + 1) = 0x800000021478A360;

  v171 = v113;
  sub_213FDC9D0(v114, v113);
  v116 = v183;
  v177 = v112;
  v117 = (v112)(&v194, v193, v201);
  v183 = v116;
  if (v116)
  {
    v175 = v114;
    v118 = v172;
    v119 = v182;
    sub_213FDC6BC(v172, v182);

LABEL_23:

    v88 = v186;
    sub_213FDC6BC(v118, v119);
    sub_2142EB96C(v202);
    v81 = *(v191 + 8);
    v81(v179, v190);
    v163 = *(v110 + 1);
    v164 = *(v110 + 2);
    v165 = *(v110 + 3);

    sub_213FDC6D0(v164, v165);
    v166 = v178;
    *v110 = v177;
    *(v110 + 1) = v111;
    v167 = v171;
    *(v110 + 2) = v175;
    *(v110 + 3) = v167;
    v110[32] = v176;
    sub_2145B12A0(v166, type metadata accessor for CloudKitSharingToken);
    v87 = v187;
    v89 = v188;
    v90 = v189;
    goto LABEL_16;
  }

  v170 = 0x800000021478DC90;
  v133 = v178;
  if ((v117 & 1) == 0)
  {
    v175 = v114;
    sub_214031C4C();
    v160 = swift_allocError();
    v161 = v170;
    *v162 = 0xD000000000000022;
    v162[1] = v161;
    v162[2] = 0xD00000000000001CLL;
    v162[3] = 0x800000021478A360;
    v183 = v160;
    swift_willThrow();
    v118 = v172;
    v119 = v182;
    sub_213FDC6BC(v172, v182);
    goto LABEL_23;
  }

  sub_213FDC6D0(v114, v171);
  v134 = v191 + 8;
  v135 = *(v191 + 8);

  v136 = v179;
  v191 = v134;
  v179 = v135;
  (v135)(v136, v190);

  sub_213FDC6BC(v172, v182);
  v137 = *(v110 + 1);
  v138 = *(v110 + 2);
  v139 = v133;
  v140 = *(v110 + 3);

  sub_213FDC6D0(v138, v140);
  *v110 = v177;
  *(v110 + 1) = v111;
  *(v110 + 2) = v175;
  *(v110 + 3) = v106;
  v110[32] = v176;
  v141 = v173;
  sub_21404A900(v139, v173);
  v57 = v180;
  v142 = v180[37];
  v143 = v180[38];
  v144 = v180[39];

  sub_214032564(v143, v144);
  sub_213FB2DF4(v57 + v185, &qword_27C9121F8, &unk_214734DB0);
  v145 = v58[1];
  v146 = v58[2];
  v147 = v58[3];

  sub_213FDC6D0(v146, v147);
  sub_21404A900(v141, v57);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904238, &unk_2146EAB90);
  v149 = *(v148 + 48);
  v150 = v174;
  v151 = v174 + *(v148 + 64);
  v152 = v186;
  v153 = v188;
  v154 = v189;
  *v174 = v186;
  *(v150 + 8) = v154;
  sub_2145B1300(v153, v150 + v149);
  v155 = v220;
  *(v151 + 2) = v219;
  *(v151 + 3) = v155;
  *(v151 + 4) = v221;
  *(v151 + 10) = v222;
  v156 = v218;
  *v151 = v217;
  *(v151 + 1) = v156;
  (*(*(v148 - 8) + 56))(v150, 0, 1, v148);
  sub_21402D9F8(v152, v154);
  v157 = v183;
  v158 = sub_2145A8688(v150);
  if (!v157)
  {
    sub_213FB54FC(v158, v159);
    sub_213FDC6BC(v172, v182);
    sub_2142EB96C(v202);
    sub_213FB2DF4(v150, &qword_27C904230, &qword_2146EAB88);
    v201[2] = v206;
    v201[3] = v207;
    v201[4] = v208;
    *&v201[5] = v209;
    v201[0] = v204;
    v201[1] = v205;
    LOBYTE(v194) = 0;
    BYTE8(v201[5]) = 0;
    free_PCSShareProtection();
    sub_213FB54FC(v152, v189);
    (v179)(v187, v190);
    result = sub_2145B12A0(v188, type metadata accessor for PCSManateeShareInvitation);
    goto LABEL_18;
  }

  sub_213FB2DF4(v150, &qword_27C904230, &qword_2146EAB88);
  sub_2142EB96C(v202);
  sub_213FDC6BC(v172, v182);
  v196 = v206;
  v197 = v207;
  v198 = v208;
  v199 = v209;
  v194 = v204;
  v195 = v205;
  v193[0] = 0;
  v200 = 0;
  free_PCSShareProtection();
  sub_213FB54FC(v152, v189);
  (v179)(v187, v190);
  sub_2145B12A0(v188, type metadata accessor for PCSManateeShareInvitation);
  memcpy(v201, v57, sizeof(v201));
  sub_2142EB96C(v201);
LABEL_17:
  v125 = v57[37];
  v126 = v57[38];
  v127 = v57[39];

  sub_214032564(v126, v127);
  sub_213FB2DF4(v57 + v185, &qword_27C9121F8, &unk_214734DB0);
  v128 = v58[1];
  v129 = v58[2];
  v130 = v58[3];

  result = sub_213FDC6D0(v129, v130);
LABEL_18:
  v132 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2145AA740(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v81 = *MEMORY[0x277D85DE8];
  if (a3 != result)
  {
LABEL_121:
    result = 0;
    goto LABEL_122;
  }

  if (!a3)
  {
LABEL_115:
    result = 1;
LABEL_122:
    v67 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = a4 + 24;
  v5 = a2 + 24;
  v6 = a3;
  while (1)
  {
    if (!a4)
    {
      goto LABEL_131;
    }

    if (!a2)
    {
      goto LABEL_130;
    }

    if (*(v4 - 24) != *(v5 - 24))
    {
      goto LABEL_121;
    }

    v7 = *(v4 - 16);
    v8 = *(v4 - 8);
    v9 = *v4;
    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    v75 = *(v4 + 24);
    v76 = v6;
    v12 = *(v5 - 16);
    v13 = *(v5 - 8);
    v14 = *v5;
    v74 = *(v5 + 24);
    if (v7)
    {
      break;
    }

    if (v12)
    {
      goto LABEL_138;
    }

    if (v8 != v13)
    {
      goto LABEL_121;
    }

LABEL_18:
    if (!v9)
    {
      goto LABEL_133;
    }

    v77 = *(v5 + 16);
    v78 = *(v5 + 8);
    if (v8)
    {
      if (v8 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v80 = v8;
        memcpy(__dst, v9, v8);
        v21 = *__dst;
        v22 = v71 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v80 << 16)) << 32);
        v71 = v22;
        if (!v14)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v16 = sub_2146D8778();
        v17 = *(v16 + 48);
        v18 = *(v16 + 52);
        swift_allocObject();
        v19 = sub_2146D8718();
        v20 = v19;
        if (v8 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = v8;
          v22 = v20 | 0x8000000000000000;
          if (!v14)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v21 = v8 << 32;
          v22 = v19 | 0x4000000000000000;
          if (!v14)
          {
            goto LABEL_132;
          }
        }
      }
    }

    else
    {
      v21 = 0;
      v22 = 0xC000000000000000;
      if (!v14)
      {
        goto LABEL_132;
      }
    }

    if (v13)
    {
      if (v13 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v80 = v13;
        memcpy(__dst, v14, v13);
        v27 = *__dst;
        v28 = v70 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v80 << 16)) << 32);
        v70 = v28;
      }

      else
      {
        v23 = sub_2146D8778();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        v26 = sub_2146D8718();
        if (v13 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = v13;
          v28 = v26 | 0x8000000000000000;
        }

        else
        {
          v27 = v13 << 32;
          v28 = v26 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 0xC000000000000000;
    }

    v29 = v22 >> 62;
    v30 = v28 >> 62;
    if (v22 >> 62 == 3)
    {
      v31 = 0;
      if (!v21 && v22 == 0xC000000000000000 && v28 >> 62 == 3)
      {
        v31 = 0;
        if (!v27 && v28 == 0xC000000000000000)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v29)
    {
      if (v29 == 1)
      {
        LODWORD(v31) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_127;
        }

        v31 = v31;
      }

      else
      {
        v33 = *(v21 + 16);
        v32 = *(v21 + 24);
        v34 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v34)
        {
          goto LABEL_126;
        }
      }
    }

    else
    {
      v31 = BYTE6(v22);
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        if (v31)
        {
          goto LABEL_117;
        }

LABEL_64:
        sub_213FB54FC(v27, v28);
        sub_213FB54FC(v21, v22);
LABEL_65:
        v41 = v78;
        if (v10 != v78)
        {
          goto LABEL_121;
        }

        goto LABEL_66;
      }

      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
      }
    }

    else if (v30)
    {
      LODWORD(v35) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_123;
      }

      v35 = v35;
    }

    else
    {
      v35 = BYTE6(v28);
    }

    if (v31 != v35)
    {
      sub_213FB54FC(v27, v28);
LABEL_117:
      v65 = v21;
      v66 = v22;
LABEL_120:
      sub_213FB54FC(v65, v66);
      goto LABEL_121;
    }

    if (v31 < 1)
    {
      goto LABEL_64;
    }

    v38 = v27;
    v39 = v28;
    sub_21402D9F8(v27, v28);
    v40 = sub_2143D9C50(v21, v22, v38, v39);
    sub_213FB54FC(v21, v22);
    sub_213FB54FC(v38, v39);
    result = 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_122;
    }

    v41 = v78;
    if (v10 != v78)
    {
      goto LABEL_122;
    }

LABEL_66:
    if (!v11)
    {
      goto LABEL_135;
    }

    if (v10)
    {
      if (v10 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v80 = v10;
        memcpy(__dst, v11, v10);
        v47 = *__dst;
        v48 = v69 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v80 << 16)) << 32);
        v69 = v48;
        if (!v77)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v42 = sub_2146D8778();
        v43 = *(v42 + 48);
        v44 = *(v42 + 52);
        swift_allocObject();
        v45 = sub_2146D8718();
        v46 = v45;
        if (v10 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v47 = swift_allocObject();
          *(v47 + 16) = 0;
          *(v47 + 24) = v10;
          v48 = v46 | 0x8000000000000000;
          if (!v77)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v47 = v10 << 32;
          v48 = v45 | 0x4000000000000000;
          if (!v77)
          {
            goto LABEL_134;
          }
        }
      }
    }

    else
    {
      v47 = 0;
      v48 = 0xC000000000000000;
      if (!v77)
      {
        goto LABEL_134;
      }
    }

    if (v41)
    {
      if (v41 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v80 = v41;
        memcpy(__dst, v77, v41);
        result = *__dst;
        v53 = v68 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v80 << 16)) << 32);
        v68 = v53;
      }

      else
      {
        v49 = sub_2146D8778();
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        swift_allocObject();
        v52 = sub_2146D8718();
        if (v41 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v41;
          v53 = v52 | 0x8000000000000000;
        }

        else
        {
          result = v41 << 32;
          v53 = v52 | 0x4000000000000000;
        }
      }
    }

    else
    {
      result = 0;
      v53 = 0xC000000000000000;
    }

    v54 = v48 >> 62;
    v55 = v53 >> 62;
    if (v48 >> 62 == 3)
    {
      v56 = 0;
      if (!v47 && v48 == 0xC000000000000000 && v53 >> 62 == 3)
      {
        v56 = 0;
        if (!result && v53 == 0xC000000000000000)
        {
          goto LABEL_111;
        }
      }

LABEL_97:
      if (v55 > 1)
      {
        goto LABEL_103;
      }

      goto LABEL_98;
    }

    if (v54 == 2)
    {
      v58 = *(v47 + 16);
      v57 = *(v47 + 24);
      v34 = __OFSUB__(v57, v58);
      v56 = v57 - v58;
      if (v34)
      {
        goto LABEL_128;
      }

      goto LABEL_97;
    }

    if (v54 == 1)
    {
      LODWORD(v56) = HIDWORD(v47) - v47;
      if (__OFSUB__(HIDWORD(v47), v47))
      {
        goto LABEL_129;
      }

      v56 = v56;
      if (v55 > 1)
      {
LABEL_103:
        if (v55 != 2)
        {
          if (v56)
          {
            goto LABEL_119;
          }

LABEL_110:
          sub_213FB54FC(result, v53);
          result = sub_213FB54FC(v47, v48);
          goto LABEL_111;
        }

        v61 = *(result + 16);
        v60 = *(result + 24);
        v34 = __OFSUB__(v60, v61);
        v59 = v60 - v61;
        if (v34)
        {
          goto LABEL_124;
        }

        goto LABEL_105;
      }
    }

    else
    {
      v56 = BYTE6(v48);
      if (v55 > 1)
      {
        goto LABEL_103;
      }
    }

LABEL_98:
    if (v55)
    {
      LODWORD(v59) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_125;
      }

      v59 = v59;
    }

    else
    {
      v59 = BYTE6(v53);
    }

LABEL_105:
    if (v56 != v59)
    {
      sub_213FB54FC(result, v53);
LABEL_119:
      v65 = v47;
      v66 = v48;
      goto LABEL_120;
    }

    if (v56 < 1)
    {
      goto LABEL_110;
    }

    v62 = result;
    v63 = v53;
    sub_21402D9F8(result, v53);
    v64 = sub_2143D9C50(v47, v48, v62, v63);
    sub_213FB54FC(v47, v48);
    result = sub_213FB54FC(v62, v63);
    if ((v64 & 1) == 0)
    {
      goto LABEL_121;
    }

LABEL_111:
    if (v75)
    {
      if (!v74)
      {
        goto LABEL_137;
      }

      if (*v75 != *v74)
      {
        goto LABEL_121;
      }
    }

    else if (v74)
    {
      goto LABEL_139;
    }

    v4 += 56;
    v5 += 56;
    v6 = v76 - 1;
    if (v76 == 1)
    {
      goto LABEL_115;
    }
  }

  if (v12)
  {
    if (*v7 != *v12 || v8 != v13)
    {
      goto LABEL_121;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_2145AAE78(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a3 != a1)
  {
    goto LABEL_78;
  }

  if (!a3)
  {
LABEL_75:
    result = 1;
    goto LABEL_79;
  }

  v4 = a4;
  v5 = a2;
  v56 = 0;
  v6 = (a2 + 16);
  v7 = (a4 + 16);
  v8 = a3;
  while (1)
  {
    if (!v4)
    {
      goto LABEL_88;
    }

    if (!v5)
    {
      goto LABEL_89;
    }

    v9 = *(v7 - 1);
    if (*(v7 - 4) != *(v6 - 4) || v9 != *(v6 - 1))
    {
      goto LABEL_78;
    }

    v11 = *v7;
    if (!*v7)
    {
      goto LABEL_91;
    }

    v12 = *v6;
    if (v9)
    {
      if (v9 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v59 = v9;
        memcpy(__dst, v11, v9);
        if (!v12)
        {
          goto LABEL_90;
        }

        v18 = *__dst;
        v19 = v54 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v59 << 16)) << 32);
        v54 = v19;
        memset(__dst, 0, sizeof(__dst));
        v59 = v9;
        memcpy(__dst, v12, v9);
        v20 = *__dst;
        v21 = v55 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v59 << 16)) << 32);
        v55 = v21;
      }

      else
      {
        v13 = sub_2146D8778();
        v14 = *(v13 + 48);
        v15 = *(v13 + 52);
        swift_allocObject();
        v16 = sub_2146D8718();
        v17 = v16;
        if (v9 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = v9;
          if (!v12)
          {
            goto LABEL_90;
          }

          v18 = v26;
          v19 = v17 | 0x8000000000000000;
        }

        else
        {
          if (!v12)
          {
            goto LABEL_90;
          }

          v18 = v9 << 32;
          v19 = v16 | 0x4000000000000000;
        }

        v22 = sub_2146D8778();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        v25 = sub_2146D8718();
        if (v9 >= 0x7FFFFFFF)
        {
          sub_2146D89D8();
          v20 = swift_allocObject();
          *(v20 + 16) = 0;
          *(v20 + 24) = v9;
          v21 = v25 | 0x8000000000000000;
        }

        else
        {
          v20 = v9 << 32;
          v21 = v25 | 0x4000000000000000;
        }
      }

      v27 = v19 >> 62;
      if (v19 >> 62 != 3)
      {
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v30 = *(v18 + 16);
            v29 = *(v18 + 24);
            v31 = __OFSUB__(v29, v30);
            v28 = v29 - v30;
            if (v31)
            {
              goto LABEL_84;
            }

            LODWORD(v27) = 2;
          }

          else
          {
            v28 = 0;
          }
        }

        else if (v27)
        {
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_85;
          }

          v28 = HIDWORD(v18) - v18;
          LODWORD(v27) = 1;
        }

        else
        {
          v28 = BYTE6(v19);
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_90;
      }

      v20 = 0;
      v18 = 0;
      v21 = 0xC000000000000000;
      v19 = 0xC000000000000000;
    }

    v28 = 0;
    LODWORD(v27) = 3;
    if (!v18 && v19 == 0xC000000000000000 && v21 >> 62 == 3)
    {
      v18 = 0;
      v19 = 0xC000000000000000;
      LODWORD(v27) = 3;
      v28 = 0;
      if (!v20 && v21 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_45:
    v32 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v32)
      {
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          __break(1u);
LABEL_81:
          __break(1u);
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
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
        }

        if (v28 != HIDWORD(v20) - v20)
        {
          break;
        }
      }

      else if (v28 != BYTE6(v21))
      {
        break;
      }

      goto LABEL_55;
    }

    if (v32 != 2)
    {
      if (v28)
      {
        goto LABEL_77;
      }

LABEL_5:
      sub_213FB54FC(v20, v21);
      sub_213FB54FC(v18, v19);
      goto LABEL_6;
    }

    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    v31 = __OFSUB__(v33, v34);
    v35 = v33 - v34;
    if (v31)
    {
      goto LABEL_81;
    }

    if (v28 != v35)
    {
      break;
    }

LABEL_55:
    if (v28 < 1)
    {
      goto LABEL_5;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(__dst, 0, sizeof(__dst));
        v36 = v20;
        goto LABEL_73;
      }

      v51 = v20;
      v38 = *(v18 + 16);
      v37 = *(v18 + 24);
      v39 = sub_2146D8728();
      if (v39)
      {
        v40 = sub_2146D8758();
        if (__OFSUB__(v38, v40))
        {
          goto LABEL_86;
        }

        v39 += v38 - v40;
      }

      if (__OFSUB__(v37, v38))
      {
        goto LABEL_83;
      }

      sub_2146D8748();
      v41 = v39;
      v42 = v51;
      v43 = v51;
      v44 = v21;
      v45 = v56;
LABEL_70:
      sub_2143D9A20(v41, v43, v44, __dst);
      sub_213FB54FC(v18, v19);
      sub_213FB54FC(v42, v21);
      if ((__dst[0] & 1) == 0)
      {
        goto LABEL_78;
      }

      v56 = v45;
      v4 = a4;
      v5 = a2;
      goto LABEL_6;
    }

    if (v27)
    {
      v52 = v20;
      if (v18 >> 32 < v18)
      {
        goto LABEL_82;
      }

      v46 = sub_2146D8728();
      if (v46)
      {
        v47 = sub_2146D8758();
        if (__OFSUB__(v18, v47))
        {
          goto LABEL_87;
        }

        v46 += v18 - v47;
      }

      v45 = v56;
      sub_2146D8748();
      v41 = v46;
      v42 = v52;
      v43 = v52;
      v44 = v21;
      goto LABEL_70;
    }

    *__dst = v18;
    *&__dst[8] = v19;
    __dst[10] = BYTE2(v19);
    __dst[11] = BYTE3(v19);
    __dst[12] = BYTE4(v19);
    __dst[13] = BYTE5(v19);
    v36 = v20;
LABEL_73:
    sub_2143D9A20(__dst, v36, v21, &v57);
    sub_213FB54FC(v36, v21);
    if (!v57)
    {
      goto LABEL_78;
    }

    v5 = a2;
LABEL_6:
    v6 += 3;
    v7 += 3;
    if (!--v8)
    {
      goto LABEL_75;
    }
  }

  sub_213FB54FC(v20, v21);
LABEL_77:
  sub_213FB54FC(v18, v19);
LABEL_78:
  result = 0;
LABEL_79:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}