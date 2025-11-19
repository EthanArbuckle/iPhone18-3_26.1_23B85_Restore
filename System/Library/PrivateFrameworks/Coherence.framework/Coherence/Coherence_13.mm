uint64_t sub_1ADED4D5C(__int128 *a1)
{
  memset(v58, 0, sizeof(v58));
  v3 = a1[5];
  v4 = a1[7];
  v65 = a1[6];
  v66 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v61 = a1[2];
  v62 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v63 = a1[4];
  v64 = v8;
  v9 = a1[1];
  v59 = *a1;
  v60 = v9;
  v10 = a1[7];
  v74 = v65;
  v75 = v10;
  v70 = v61;
  v71 = v7;
  v72 = v63;
  v73 = v3;
  v67 = *(a1 + 128);
  v76 = *(a1 + 128);
  v68 = v59;
  v69 = v5;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v68);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v55 = v74;
    v56 = v75;
    v57 = v76;
    v51 = v70;
    v52 = v71;
    v53 = v72;
    v54 = v73;
    v49 = v68;
    v50 = v69;
    if (sub_1ADEDC3FC(&v49) == 2)
    {
      v11 = sub_1ADE1F544(&v49);
      v12 = *v11;
      v29 = *(v11 + 24);
      v30 = *(v11 + 8);
      v42 = v61;
      v43 = v62;
      v48 = v67;
      v46 = v65;
      v47 = v66;
      v44 = v63;
      v45 = v64;
      v40 = v59;
      v41 = v60;
      sub_1ADEDC5CC(&v40, &v31);
      sub_1ADEDC604(0, 0, 0, 0);
      v58[0] = v12;
      *&v58[3] = v29;
      *&v58[1] = v30;
    }
  }

  sub_1ADED97F8();
  sub_1AE23C4FC();
  v14 = v58[0];
  v13 = v58[1];
  v16 = v58[2];
  v15 = v58[3];
  v17 = v58[4];
  if (v1)
  {
    v18 = v58[0];
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  if (!v58[0])
  {
    v18 = 0;
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  sub_1ADE73C1C(v13, v16, v15);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v58[0], v58[1], v58[2], v58[3]);
  *&v31 = v14;
  *(&v31 + 1) = v13;
  *&v32 = v16;
  *(&v32 + 1) = v15;
  *&v33 = v17;
  sub_1ADE1F580(&v31);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v40 = v31;
  v41 = v32;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40, v20);
  v21 = a1[7];
  v55 = a1[6];
  v56 = v21;
  v57 = *(a1 + 128);
  v22 = a1[3];
  v51 = a1[2];
  v52 = v22;
  v23 = a1[5];
  v53 = a1[4];
  v54 = v23;
  v24 = a1[1];
  v49 = *a1;
  v50 = v24;
  v25 = v45;
  a1[4] = v44;
  a1[5] = v25;
  v26 = v47;
  a1[6] = v46;
  a1[7] = v26;
  *(a1 + 128) = v48;
  v27 = v43;
  a1[2] = v42;
  a1[3] = v27;
  v28 = v41;
  *a1 = v40;
  a1[1] = v28;
  return sub_1ADEDC59C(&v49);
}

uint64_t sub_1ADED5060(__int128 *a1)
{
  v3 = a1[6];
  v4 = a1[4];
  v53 = a1[5];
  v54 = v3;
  v5 = a1[6];
  v55 = a1[7];
  v6 = a1[2];
  v7 = *a1;
  v49 = a1[1];
  v50 = v6;
  v8 = a1[2];
  v9 = a1[4];
  v51 = a1[3];
  v52 = v9;
  v10 = *a1;
  v47 = xmmword_1AE2427C0;
  v48 = v10;
  v11 = a1[7];
  v63 = v5;
  v64 = v11;
  v59 = v8;
  v60 = v51;
  v61 = v4;
  v62 = v53;
  v56 = *(a1 + 128);
  v65 = *(a1 + 128);
  v57 = v7;
  v58 = v49;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v57);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v44 = v63;
    v45 = v64;
    v46 = v65;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v38 = v57;
    v39 = v58;
    if (sub_1ADEDC3FC(&v38) == 3)
    {
      v13 = sub_1ADE1F544(&v38);
      v14 = *v13;
      v15 = v13[1];
      v35 = v54;
      v36 = v55;
      v37 = v56;
      v31 = v50;
      v32 = v51;
      v33 = v52;
      v34 = v53;
      v29 = v48;
      v30 = v49;
      sub_1ADEDC5CC(&v29, v27);
      sub_1ADDE158C(0, 0xF000000000000000);
      *&v47 = v14;
      *(&v47 + 1) = v15;
    }
  }

  sub_1ADED9698();
  sub_1AE23C4FC();
  if (v1 || *(&v47 + 1) >> 60 == 15)
  {
    return sub_1ADDE158C(v47, *(&v47 + 1));
  }

  v16 = v47;
  sub_1ADDD86D8(v47, *(&v47 + 1));
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADDE158C(v47, *(&v47 + 1));
  v27[0] = v16;
  sub_1ADE1F598(v27);
  v35 = v27[6];
  v36 = v27[7];
  v37 = v28;
  v31 = v27[2];
  v32 = v27[3];
  v33 = v27[4];
  v34 = v27[5];
  v29 = v27[0];
  v30 = v27[1];
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v29, v18);
  v19 = a1[7];
  v44 = a1[6];
  v45 = v19;
  v46 = *(a1 + 128);
  v20 = a1[3];
  v40 = a1[2];
  v41 = v20;
  v21 = a1[5];
  v42 = a1[4];
  v43 = v21;
  v22 = a1[1];
  v38 = *a1;
  v39 = v22;
  v23 = v34;
  a1[4] = v33;
  a1[5] = v23;
  v24 = v36;
  a1[6] = v35;
  a1[7] = v24;
  *(a1 + 128) = v37;
  v25 = v32;
  a1[2] = v31;
  a1[3] = v25;
  v26 = v30;
  *a1 = v29;
  a1[1] = v26;
  return sub_1ADEDC59C(&v38);
}

uint64_t sub_1ADED52E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 112);
  v25 = *(v3 + 96);
  v26 = v13;
  v27 = *(v3 + 128);
  v14 = *(v3 + 48);
  v21 = *(v3 + 32);
  v22 = v14;
  v15 = *(v3 + 80);
  v23 = *(v3 + 64);
  v24 = v15;
  v16 = *(v3 + 16);
  v19 = *v3;
  v20 = v16;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v19) == 1)
  {
    goto LABEL_13;
  }

  v28[6] = v25;
  v28[7] = v26;
  v29 = v27;
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = v24;
  v28[0] = v19;
  v28[1] = v20;
  v17 = sub_1ADEDC3FC(v28);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      sub_1ADE1F544(v28);
      result = sub_1ADED74E0(v3, a1, a2, a3, sub_1ADEDC3FC, sub_1ADEDD174);
      if (v4)
      {
        return result;
      }
    }

    else if (v17 == 3)
    {
      sub_1ADE1F544(v28);
      result = sub_1ADED56AC(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_1ADED55D0(v3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (!v17)
  {
    sub_1ADE1F544(v28);
    result = sub_1ADED727C(v3, a1, a2, a3, sub_1ADEDC3FC, sub_1ADEDD174);
    if (v4)
    {
      return result;
    }

    goto LABEL_13;
  }

  sub_1ADE1F544(v28);
  result = sub_1ADED73C0(v3, a1, a2, a3, sub_1ADEDC3FC, sub_1ADEDD174);
  if (!v4)
  {
LABEL_13:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1ADED55D0(__int128 *a1)
{
  v1 = a1[7];
  v12 = a1[6];
  v13 = v1;
  v14 = *(a1 + 128);
  v2 = a1[3];
  v8 = a1[2];
  v9 = v2;
  v3 = a1[5];
  v10 = a1[4];
  v11 = v3;
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v6);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v15[6] = v12;
  v15[7] = v13;
  v16 = v14;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v15[0] = v6;
  v15[1] = v7;
  result = sub_1ADEDC3FC(v15);
  if (result != 4)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    sub_1ADED9958();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED56AC(__int128 *a1)
{
  v1 = a1[7];
  v12 = a1[6];
  v13 = v1;
  v14 = *(a1 + 128);
  v2 = a1[3];
  v8 = a1[2];
  v9 = v2;
  v3 = a1[5];
  v10 = a1[4];
  v11 = v3;
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v6);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v15[6] = v12;
  v15[7] = v13;
  v16 = v14;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v15[0] = v6;
  v15[1] = v7;
  result = sub_1ADEDC3FC(v15);
  if (result != 3)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v17 = *sub_1ADE1F544(v15);
    sub_1ADED9698();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1ADED57BC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(v3 + 128);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v5 = *v3;
  v6 = v3[1];
  return sub_1ADED52E8(a1, a2, a3);
}

uint64_t sub_1ADED58DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC528();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED594C(uint64_t a1)
{
  v2 = sub_1ADED9C18();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED5988()
{
  sub_1ADED9C18();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED59D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDAC10(v11, v13) & 1;
}

uint64_t sub_1ADED5A70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2427F0;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "version";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1AE23C67C();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "referencesSince";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v14();
  v16 = (v10 + 2 * v7);
  v17 = v16 + v6[14];
  *v16 = 3;
  *v17 = "containsReferences";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v14();
  v18 = (v10 + 3 * v7);
  v19 = v18 + v6[14];
  *v18 = 4;
  *v19 = "references";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v14();
  v20 = v10 + 4 * v7 + v6[14];
  *(v10 + 4 * v7) = 5;
  *v20 = a3;
  *(v20 + 8) = a4;
  *(v20 + 16) = 2;
  v14();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED5CFC()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1ADED5E04(v0);
      }

      else if (result == 2)
      {
        sub_1ADED626C(v0);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1ADED6570(v0);
          break;
        case 4:
          sub_1ADED6874(v0);
          break;
        case 5:
          sub_1ADED6CE0(v0);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1ADED5E04(__int128 *a1)
{
  sub_1ADEDA0C8(v86);
  v82 = v86[4];
  v83 = v86[5];
  v84 = v86[6];
  v85 = v86[7];
  v78 = v86[0];
  v79 = v86[1];
  v80 = v86[2];
  v81 = v86[3];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v90 = a1[3];
  v89 = v5;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  v87 = v3;
  v88 = v6;
  v10 = a1[5];
  v9 = a1[6];
  v11 = v9;
  v94 = a1[7];
  v93 = v9;
  v12 = a1[3];
  v13 = a1[5];
  v91 = a1[4];
  v92 = v13;
  v14 = a1[7];
  v102 = v11;
  v103 = v14;
  v98 = v7;
  v99 = v12;
  v95 = *(a1 + 128);
  v104 = *(a1 + 128);
  v100 = v91;
  v101 = v10;
  v96 = v8;
  v97 = v4;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v96);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v59 = v102;
    v60 = v103;
    v61 = v104;
    v55 = v98;
    v56 = v99;
    v57 = v100;
    v58 = v101;
    v53 = v96;
    v54 = v97;
    if (!sub_1ADEDC4B4(&v53))
    {
      v16 = sub_1ADE1F544(&v53);
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v70 = v78;
      v71 = v79;
      v72 = v80;
      v73 = v81;
      v46 = v89;
      v47 = v90;
      v44 = v87;
      v45 = v88;
      v52 = v95;
      v50 = v93;
      v51 = v94;
      v48 = v91;
      v49 = v92;
      sub_1ADEDC6E8(&v44, &v35);
      sub_1ADDCEDE0(&v70, &qword_1EB5BB400, &qword_1AE246370);
      v17 = v16[3];
      v19 = *v16;
      v18 = v16[1];
      v37 = v16[2];
      v38 = v17;
      v35 = v19;
      v36 = v18;
      v20 = v16[7];
      v22 = v16[4];
      v21 = v16[5];
      v41 = v16[6];
      v42 = v20;
      v39 = v22;
      v40 = v21;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v35, v23);
      v82 = v39;
      v83 = v40;
      v84 = v41;
      v85 = v42;
      v78 = v35;
      v79 = v36;
      v80 = v37;
      v81 = v38;
    }
  }

  sub_1ADE73BC8();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v66 = v82;
  v67 = v83;
  v68 = v84;
  v69 = v85;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v72 = v80;
  v73 = v81;
  v70 = v78;
  v71 = v79;
  v76 = v84;
  v77 = v85;
  v74 = v82;
  v75 = v83;
  if (sub_1ADEDA0E0(&v70) == 1)
  {
LABEL_6:
    v57 = v82;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    v53 = v78;
    v54 = v79;
    v55 = v80;
    v56 = v81;
    return sub_1ADDCEDE0(&v53, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v56 = v65;
    sub_1ADE73B00(&v53, &v44);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
    {
      sub_1AE23C39C();
    }

    v34[4] = v82;
    v34[5] = v83;
    v34[6] = v84;
    v34[7] = v85;
    v34[0] = v78;
    v34[1] = v79;
    v34[2] = v80;
    v34[3] = v81;
    sub_1ADDCEDE0(v34, &qword_1EB5BB400, &qword_1AE246370);
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v38 = v73;
    sub_1ADE1F554(&v35);
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v44 = v35;
    v45 = v36;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v44, v25);
    v26 = a1[7];
    v59 = a1[6];
    v60 = v26;
    v61 = *(a1 + 128);
    v27 = a1[3];
    v55 = a1[2];
    v56 = v27;
    v28 = a1[5];
    v57 = a1[4];
    v58 = v28;
    v29 = a1[1];
    v53 = *a1;
    v54 = v29;
    v30 = v49;
    a1[4] = v48;
    a1[5] = v30;
    v31 = v51;
    a1[6] = v50;
    a1[7] = v31;
    *(a1 + 128) = v52;
    v32 = v47;
    a1[2] = v46;
    a1[3] = v32;
    v33 = v45;
    *a1 = v44;
    a1[1] = v33;
    return sub_1ADEDC6B8(&v53);
  }
}

uint64_t sub_1ADED626C(__int128 *a1)
{
  memset(v58, 0, sizeof(v58));
  v3 = a1[5];
  v4 = a1[7];
  v65 = a1[6];
  v66 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v61 = a1[2];
  v62 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v63 = a1[4];
  v64 = v8;
  v9 = a1[1];
  v59 = *a1;
  v60 = v9;
  v10 = a1[7];
  v74 = v65;
  v75 = v10;
  v70 = v61;
  v71 = v7;
  v72 = v63;
  v73 = v3;
  v67 = *(a1 + 128);
  v76 = *(a1 + 128);
  v68 = v59;
  v69 = v5;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v68);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v55 = v74;
    v56 = v75;
    v57 = v76;
    v51 = v70;
    v52 = v71;
    v53 = v72;
    v54 = v73;
    v49 = v68;
    v50 = v69;
    if (sub_1ADEDC4B4(&v49) == 1)
    {
      v11 = sub_1ADE1F544(&v49);
      v12 = *v11;
      v29 = *(v11 + 24);
      v30 = *(v11 + 8);
      v42 = v61;
      v43 = v62;
      v48 = v67;
      v46 = v65;
      v47 = v66;
      v44 = v63;
      v45 = v64;
      v40 = v59;
      v41 = v60;
      sub_1ADEDC6E8(&v40, &v31);
      sub_1ADEDC604(0, 0, 0, 0);
      v58[0] = v12;
      *&v58[3] = v29;
      *&v58[1] = v30;
    }
  }

  sub_1ADED97F8();
  sub_1AE23C4FC();
  v14 = v58[0];
  v13 = v58[1];
  v16 = v58[2];
  v15 = v58[3];
  v17 = v58[4];
  if (v1)
  {
    v18 = v58[0];
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  if (!v58[0])
  {
    v18 = 0;
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  sub_1ADE73C1C(v13, v16, v15);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v58[0], v58[1], v58[2], v58[3]);
  *&v31 = v14;
  *(&v31 + 1) = v13;
  *&v32 = v16;
  *(&v32 + 1) = v15;
  *&v33 = v17;
  sub_1ADE1F568(&v31);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v40 = v31;
  v41 = v32;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40, v20);
  v21 = a1[7];
  v55 = a1[6];
  v56 = v21;
  v57 = *(a1 + 128);
  v22 = a1[3];
  v51 = a1[2];
  v52 = v22;
  v23 = a1[5];
  v53 = a1[4];
  v54 = v23;
  v24 = a1[1];
  v49 = *a1;
  v50 = v24;
  v25 = v45;
  a1[4] = v44;
  a1[5] = v25;
  v26 = v47;
  a1[6] = v46;
  a1[7] = v26;
  *(a1 + 128) = v48;
  v27 = v43;
  a1[2] = v42;
  a1[3] = v27;
  v28 = v41;
  *a1 = v40;
  a1[1] = v28;
  return sub_1ADEDC6B8(&v49);
}

uint64_t sub_1ADED6570(__int128 *a1)
{
  memset(v58, 0, sizeof(v58));
  v3 = a1[5];
  v4 = a1[7];
  v65 = a1[6];
  v66 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v61 = a1[2];
  v62 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v63 = a1[4];
  v64 = v8;
  v9 = a1[1];
  v59 = *a1;
  v60 = v9;
  v10 = a1[7];
  v74 = v65;
  v75 = v10;
  v70 = v61;
  v71 = v7;
  v72 = v63;
  v73 = v3;
  v67 = *(a1 + 128);
  v76 = *(a1 + 128);
  v68 = v59;
  v69 = v5;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v68);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v55 = v74;
    v56 = v75;
    v57 = v76;
    v51 = v70;
    v52 = v71;
    v53 = v72;
    v54 = v73;
    v49 = v68;
    v50 = v69;
    if (sub_1ADEDC4B4(&v49) == 2)
    {
      v11 = sub_1ADE1F544(&v49);
      v12 = *v11;
      v29 = *(v11 + 24);
      v30 = *(v11 + 8);
      v42 = v61;
      v43 = v62;
      v48 = v67;
      v46 = v65;
      v47 = v66;
      v44 = v63;
      v45 = v64;
      v40 = v59;
      v41 = v60;
      sub_1ADEDC6E8(&v40, &v31);
      sub_1ADEDC604(0, 0, 0, 0);
      v58[0] = v12;
      *&v58[3] = v29;
      *&v58[1] = v30;
    }
  }

  sub_1ADED97F8();
  sub_1AE23C4FC();
  v14 = v58[0];
  v13 = v58[1];
  v16 = v58[2];
  v15 = v58[3];
  v17 = v58[4];
  if (v1)
  {
    v18 = v58[0];
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  if (!v58[0])
  {
    v18 = 0;
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  sub_1ADE73C1C(v13, v16, v15);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v58[0], v58[1], v58[2], v58[3]);
  *&v31 = v14;
  *(&v31 + 1) = v13;
  *&v32 = v16;
  *(&v32 + 1) = v15;
  *&v33 = v17;
  sub_1ADE1F580(&v31);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v40 = v31;
  v41 = v32;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40, v20);
  v21 = a1[7];
  v55 = a1[6];
  v56 = v21;
  v57 = *(a1 + 128);
  v22 = a1[3];
  v51 = a1[2];
  v52 = v22;
  v23 = a1[5];
  v53 = a1[4];
  v54 = v23;
  v24 = a1[1];
  v49 = *a1;
  v50 = v24;
  v25 = v45;
  a1[4] = v44;
  a1[5] = v25;
  v26 = v47;
  a1[6] = v46;
  a1[7] = v26;
  *(a1 + 128) = v48;
  v27 = v43;
  a1[2] = v42;
  a1[3] = v27;
  v28 = v41;
  *a1 = v40;
  a1[1] = v28;
  return sub_1ADEDC6B8(&v49);
}

uint64_t sub_1ADED6874(__int128 *a1)
{
  sub_1ADEDA0C8(v86);
  v82 = v86[4];
  v83 = v86[5];
  v84 = v86[6];
  v85 = v86[7];
  v78 = v86[0];
  v79 = v86[1];
  v80 = v86[2];
  v81 = v86[3];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v90 = a1[3];
  v89 = v5;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  v87 = v3;
  v88 = v6;
  v10 = a1[5];
  v9 = a1[6];
  v11 = v9;
  v94 = a1[7];
  v93 = v9;
  v12 = a1[3];
  v13 = a1[5];
  v91 = a1[4];
  v92 = v13;
  v14 = a1[7];
  v102 = v11;
  v103 = v14;
  v98 = v7;
  v99 = v12;
  v95 = *(a1 + 128);
  v104 = *(a1 + 128);
  v100 = v91;
  v101 = v10;
  v96 = v8;
  v97 = v4;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v96);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v59 = v102;
    v60 = v103;
    v61 = v104;
    v55 = v98;
    v56 = v99;
    v57 = v100;
    v58 = v101;
    v53 = v96;
    v54 = v97;
    if (sub_1ADEDC4B4(&v53) == 3)
    {
      v16 = sub_1ADE1F544(&v53);
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v70 = v78;
      v71 = v79;
      v72 = v80;
      v73 = v81;
      v46 = v89;
      v47 = v90;
      v44 = v87;
      v45 = v88;
      v52 = v95;
      v50 = v93;
      v51 = v94;
      v48 = v91;
      v49 = v92;
      sub_1ADEDC6E8(&v44, &v35);
      sub_1ADDCEDE0(&v70, &qword_1EB5BB400, &qword_1AE246370);
      v17 = v16[3];
      v19 = *v16;
      v18 = v16[1];
      v37 = v16[2];
      v38 = v17;
      v35 = v19;
      v36 = v18;
      v20 = v16[7];
      v22 = v16[4];
      v21 = v16[5];
      v41 = v16[6];
      v42 = v20;
      v39 = v22;
      v40 = v21;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v35, v23);
      v82 = v39;
      v83 = v40;
      v84 = v41;
      v85 = v42;
      v78 = v35;
      v79 = v36;
      v80 = v37;
      v81 = v38;
    }
  }

  sub_1ADE73BC8();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v66 = v82;
  v67 = v83;
  v68 = v84;
  v69 = v85;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v72 = v80;
  v73 = v81;
  v70 = v78;
  v71 = v79;
  v76 = v84;
  v77 = v85;
  v74 = v82;
  v75 = v83;
  if (sub_1ADEDA0E0(&v70) == 1)
  {
LABEL_6:
    v57 = v82;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    v53 = v78;
    v54 = v79;
    v55 = v80;
    v56 = v81;
    return sub_1ADDCEDE0(&v53, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v56 = v65;
    sub_1ADE73B00(&v53, &v44);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
    {
      sub_1AE23C39C();
    }

    v34[4] = v82;
    v34[5] = v83;
    v34[6] = v84;
    v34[7] = v85;
    v34[0] = v78;
    v34[1] = v79;
    v34[2] = v80;
    v34[3] = v81;
    sub_1ADDCEDE0(v34, &qword_1EB5BB400, &qword_1AE246370);
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v38 = v73;
    sub_1ADE1F598(&v35);
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v44 = v35;
    v45 = v36;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v44, v25);
    v26 = a1[7];
    v59 = a1[6];
    v60 = v26;
    v61 = *(a1 + 128);
    v27 = a1[3];
    v55 = a1[2];
    v56 = v27;
    v28 = a1[5];
    v57 = a1[4];
    v58 = v28;
    v29 = a1[1];
    v53 = *a1;
    v54 = v29;
    v30 = v49;
    a1[4] = v48;
    a1[5] = v30;
    v31 = v51;
    a1[6] = v50;
    a1[7] = v31;
    *(a1 + 128) = v52;
    v32 = v47;
    a1[2] = v46;
    a1[3] = v32;
    v33 = v45;
    *a1 = v44;
    a1[1] = v33;
    return sub_1ADEDC6B8(&v53);
  }
}

uint64_t sub_1ADED6CE0(__int128 *a1)
{
  v54 = xmmword_1AE2427C0;
  v3 = a1[5];
  v4 = a1[7];
  v62 = a1[6];
  v63 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v58 = a1[2];
  v59 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v60 = a1[4];
  v61 = v8;
  v9 = a1[1];
  v56 = *a1;
  v57 = v9;
  v10 = a1[7];
  v71 = v62;
  v72 = v10;
  v67 = v58;
  v68 = v7;
  v69 = v60;
  v70 = v3;
  v55 = 0;
  v64 = *(a1 + 128);
  v73 = *(a1 + 128);
  v65 = v56;
  v66 = v5;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v65);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v51 = v71;
    v52 = v72;
    v53 = v73;
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v50 = v70;
    v45 = v65;
    v46 = v66;
    if (sub_1ADEDC4B4(&v45) == 4)
    {
      v12 = sub_1ADE1F544(&v45);
      v25 = *v12;
      v13 = *(v12 + 16);
      v38 = v58;
      v39 = v59;
      v44 = v64;
      v42 = v62;
      v43 = v63;
      v40 = v60;
      v41 = v61;
      v36 = v56;
      v37 = v57;
      sub_1ADEDC6E8(&v36, &v27);
      sub_1ADDE158C(0, 0xF000000000000000);
      v54 = v25;
      v55 = v13;
    }
  }

  sub_1ADED9538();
  sub_1AE23C4FC();
  if (v1 || *(&v54 + 1) >> 60 == 15)
  {
    return sub_1ADDE158C(v54, *(&v54 + 1));
  }

  v26 = v55;
  v14 = v54;
  sub_1ADDD86D8(v54, *(&v54 + 1));
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADDE158C(v54, *(&v54 + 1));
  v27 = v14;
  *&v28 = v26;
  sub_1ADEDC720(&v27);
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v36, v16);
  v17 = a1[7];
  v51 = a1[6];
  v52 = v17;
  v53 = *(a1 + 128);
  v18 = a1[3];
  v47 = a1[2];
  v48 = v18;
  v19 = a1[5];
  v49 = a1[4];
  v50 = v19;
  v20 = a1[1];
  v45 = *a1;
  v46 = v20;
  v21 = v41;
  a1[4] = v40;
  a1[5] = v21;
  v22 = v43;
  a1[6] = v42;
  a1[7] = v22;
  *(a1 + 128) = v44;
  v23 = v39;
  a1[2] = v38;
  a1[3] = v23;
  v24 = v37;
  *a1 = v36;
  a1[1] = v24;
  return sub_1ADEDC6B8(&v45);
}

uint64_t sub_1ADED6F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AE23C32C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 112);
  v25 = *(v3 + 96);
  v26 = v13;
  v27 = *(v3 + 128);
  v14 = *(v3 + 48);
  v21 = *(v3 + 32);
  v22 = v14;
  v15 = *(v3 + 80);
  v23 = *(v3 + 64);
  v24 = v15;
  v16 = *(v3 + 16);
  v19 = *v3;
  v20 = v16;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v19) == 1)
  {
    goto LABEL_13;
  }

  v30 = a3;
  v28[6] = v25;
  v28[7] = v26;
  v29 = v27;
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = v24;
  v28[0] = v19;
  v28[1] = v20;
  v17 = sub_1ADEDC4B4(v28);
  sub_1ADE1F544(v28);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      result = sub_1ADED74E0(v3, a1, a2, v30, sub_1ADEDC4B4, sub_1ADEDD174);
      if (v4)
      {
        return result;
      }
    }

    else if (v17 == 3)
    {
      result = sub_1ADED7600(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_1ADED7728(v3);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (!v17)
  {
    result = sub_1ADED727C(v3, a1, a2, v30, sub_1ADEDC4B4, sub_1ADEDD174);
    if (v4)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_1ADED73C0(v3, a1, a2, v30, sub_1ADEDC4B4, sub_1ADEDD174);
  if (!v4)
  {
LABEL_13:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1ADED727C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t (*a6)(_OWORD *))
{
  v8 = a1[7];
  v24 = a1[6];
  v25 = v8;
  v26 = *(a1 + 128);
  v9 = a1[3];
  v20 = a1[2];
  v21 = v9;
  v10 = a1[5];
  v22 = a1[4];
  v23 = v10;
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v18);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v27[6] = v24;
  v27[7] = v25;
  v28 = v26;
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  v27[0] = v18;
  v27[1] = v19;
  result = a5(v27);
  if (result)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v13 = a6(v27);
    v14 = v13[5];
    v33 = v13[4];
    v34 = v14;
    v15 = v13[7];
    v35 = v13[6];
    v36 = v15;
    v16 = v13[1];
    v29 = *v13;
    v30 = v16;
    v17 = v13[3];
    v31 = v13[2];
    v32 = v17;
    sub_1ADE73BC8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED73C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t (*a6)(_OWORD *))
{
  v8 = a1[7];
  v21 = a1[6];
  v22 = v8;
  v23 = *(a1 + 128);
  v9 = a1[3];
  v17 = a1[2];
  v18 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v20 = v10;
  v11 = a1[1];
  v15 = *a1;
  v16 = v11;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v15);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v24[6] = v21;
  v24[7] = v22;
  v25 = v23;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v24[0] = v15;
  v24[1] = v16;
  result = a5(v24);
  if (result != 1)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v13 = a6(v24);
    v28 = *(v13 + 32);
    v14 = *(v13 + 16);
    v26 = *v13;
    v27 = v14;
    sub_1ADED97F8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED74E0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t (*a6)(_OWORD *))
{
  v8 = a1[7];
  v21 = a1[6];
  v22 = v8;
  v23 = *(a1 + 128);
  v9 = a1[3];
  v17 = a1[2];
  v18 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v20 = v10;
  v11 = a1[1];
  v15 = *a1;
  v16 = v11;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v15);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v24[6] = v21;
  v24[7] = v22;
  v25 = v23;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v24[0] = v15;
  v24[1] = v16;
  result = a5(v24);
  if (result != 2)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v13 = a6(v24);
    v28 = *(v13 + 32);
    v14 = *(v13 + 16);
    v26 = *v13;
    v27 = v14;
    sub_1ADED97F8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED7600(__int128 *a1)
{
  v1 = a1[7];
  v17 = a1[6];
  v18 = v1;
  v19 = *(a1 + 128);
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  v3 = a1[5];
  v15 = a1[4];
  v16 = v3;
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v11);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v20[6] = v17;
  v20[7] = v18;
  v21 = v19;
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v20[0] = v11;
  v20[1] = v12;
  result = sub_1ADEDC4B4(v20);
  if (result != 3)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v6 = sub_1ADE1F544(v20);
    v7 = v6[5];
    v26 = v6[4];
    v27 = v7;
    v8 = v6[7];
    v28 = v6[6];
    v29 = v8;
    v9 = v6[1];
    v22 = *v6;
    v23 = v9;
    v10 = v6[3];
    v24 = v6[2];
    v25 = v10;
    sub_1ADE73BC8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED7728(__int128 *a1)
{
  v1 = a1[7];
  v13 = a1[6];
  v14 = v1;
  v15 = *(a1 + 128);
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v3 = a1[5];
  v11 = a1[4];
  v12 = v3;
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  result = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v7);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v16[6] = v13;
  v16[7] = v14;
  v17 = v15;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v16[5] = v12;
  v16[0] = v7;
  v16[1] = v8;
  result = sub_1ADEDC4B4(v16);
  if (result != 4)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v6 = sub_1ADE1F544(v16);
    v19 = *(v6 + 16);
    v18 = *v6;
    sub_1ADED9538();
    return sub_1AE23C66C();
  }

  return result;
}

void (*sub_1ADED7844(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED7910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = v3[6];
  v12 = v3[7];
  v13 = *(v3 + 128);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v5 = *v3;
  v6 = v3[1];
  return sub_1ADED6F9C(a1, a2, a3);
}

uint64_t sub_1ADED7964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC664();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED79D4(uint64_t a1)
{
  v2 = sub_1ADED9AB8();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED7A10()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 128);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7A98()
{
  sub_1ADED9AB8();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED7AE4()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 128);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDA2A0(v11, v13) & 1;
}

uint64_t sub_1ADED7BEC()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7868);
  __swift_project_value_buffer(v0, qword_1EB5D7868);
  return sub_1AE23C69C();
}

uint64_t sub_1ADED7C38()
{
  do
  {
    result = sub_1AE23C38C();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

void (*sub_1ADED7C98(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED7D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC738();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED7DEC(uint64_t a1)
{
  v2 = sub_1ADED9958();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED7E28()
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7E78()
{
  sub_1ADED9958();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED7EC4()
{
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED7F10()
{
  v0 = sub_1AE23C32C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v8 = sub_1AE23CCBC();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_1ADED8034()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7880);
  __swift_project_value_buffer(v0, qword_1EB5D7880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "constants";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "keyPaths";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED81FC()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADEDC930();
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1ADEDC8DC();
        sub_1AE23C4EC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADED82DC()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADED843C(v0);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      sub_1ADEDC8DC();
      sub_1AE23C65C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1ADED843C(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 8);
    v2 = *(result + 24);
    v3 = *(result + 32);
    sub_1ADEDC930();
    return sub_1AE23C66C();
  }

  return result;
}

double sub_1ADED84BC@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void (*sub_1ADED84FC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED85C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1ADED82DC();
}

uint64_t sub_1ADED8604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC888();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED8674(uint64_t a1)
{
  v2 = sub_1ADED97F8();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED86B0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED8720()
{
  sub_1ADED97F8();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED876C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED87D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ADEDB84C(v5, v7) & 1;
}

uint64_t sub_1ADED8824()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7898);
  __swift_project_value_buffer(v0, qword_1EB5D7898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2418F0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "digests";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1AE23C68C();
}

uint64_t sub_1ADED8990()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C40C();
    }
  }

  return result;
}

uint64_t sub_1ADED8A00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1AE23C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v3)
      {
        return result;
      }

      goto LABEL_10;
    }

    v12 = a2;
    v13 = a2 >> 32;
  }

  if (v12 != v13)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v7 + 8))(v10, v6);
}

double sub_1ADED8B70@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  return result;
}

void (*sub_1ADED8B9C(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED8C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC984();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED8CFC(uint64_t a1)
{
  v2 = sub_1ADED9698();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED8D38()
{
  sub_1ADED9698();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED8D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  if (sub_1ADDD6F8C(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v12 = sub_1AE23CCBC();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v11, v4);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1ADED8EC8()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D78B0);
  __swift_project_value_buffer(v0, qword_1EB5D78B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "digest";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetSize";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED9090()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C40C();
    }

    else if (result == 2)
    {
      sub_1AE23C4DC();
    }
  }

  return result;
}

uint64_t sub_1ADED911C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AE23C32C();
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
  }

  else
  {
    if (!v12)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_1AE23C5CC();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v13 = a2;
    v14 = a2 >> 32;
  }

  if (v13 != v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!a4 || (result = sub_1AE23C64C(), !v4))
  {
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v17 + 8))(v11, v8);
  }

  return result;
}

void (*sub_1ADED92D4(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED93C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC9D8();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED9438(uint64_t a1)
{
  v2 = sub_1ADED9538();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED9474()
{
  sub_1ADED9538();

  return sub_1AE23C54C();
}

unint64_t sub_1ADED94E0()
{
  result = qword_1EB5BAA60;
  if (!qword_1EB5BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA60);
  }

  return result;
}

unint64_t sub_1ADED9538()
{
  result = qword_1EB5BAA68;
  if (!qword_1EB5BAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA68);
  }

  return result;
}

unint64_t sub_1ADED9590()
{
  result = qword_1EB5BAA70;
  if (!qword_1EB5BAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA70);
  }

  return result;
}

unint64_t sub_1ADED95E8()
{
  result = qword_1EB5BAA78;
  if (!qword_1EB5BAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA78);
  }

  return result;
}

unint64_t sub_1ADED9640()
{
  result = qword_1EB5BAA80;
  if (!qword_1EB5BAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA80);
  }

  return result;
}

unint64_t sub_1ADED9698()
{
  result = qword_1EB5BAA88;
  if (!qword_1EB5BAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA88);
  }

  return result;
}

unint64_t sub_1ADED96F0()
{
  result = qword_1EB5BAA90;
  if (!qword_1EB5BAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA90);
  }

  return result;
}

unint64_t sub_1ADED9748()
{
  result = qword_1EB5BAA98;
  if (!qword_1EB5BAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA98);
  }

  return result;
}

unint64_t sub_1ADED97A0()
{
  result = qword_1EB5BAAA0;
  if (!qword_1EB5BAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAA0);
  }

  return result;
}

unint64_t sub_1ADED97F8()
{
  result = qword_1EB5BAAA8;
  if (!qword_1EB5BAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAA8);
  }

  return result;
}

unint64_t sub_1ADED9850()
{
  result = qword_1EB5BAAB0;
  if (!qword_1EB5BAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAB0);
  }

  return result;
}

unint64_t sub_1ADED98A8()
{
  result = qword_1EB5BAAB8;
  if (!qword_1EB5BAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAB8);
  }

  return result;
}

unint64_t sub_1ADED9900()
{
  result = qword_1EB5BAAC0;
  if (!qword_1EB5BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAC0);
  }

  return result;
}

unint64_t sub_1ADED9958()
{
  result = qword_1EB5BAAC8;
  if (!qword_1EB5BAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAC8);
  }

  return result;
}

unint64_t sub_1ADED99B0()
{
  result = qword_1EB5BAAD0;
  if (!qword_1EB5BAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAD0);
  }

  return result;
}

unint64_t sub_1ADED9A08()
{
  result = qword_1EB5BAAD8;
  if (!qword_1EB5BAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAD8);
  }

  return result;
}

unint64_t sub_1ADED9A60()
{
  result = qword_1EB5BAAE0;
  if (!qword_1EB5BAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAE0);
  }

  return result;
}

unint64_t sub_1ADED9AB8()
{
  result = qword_1EB5BAAE8;
  if (!qword_1EB5BAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAE8);
  }

  return result;
}

unint64_t sub_1ADED9B10()
{
  result = qword_1EB5BAAF0;
  if (!qword_1EB5BAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAF0);
  }

  return result;
}

unint64_t sub_1ADED9B68()
{
  result = qword_1EB5BAAF8;
  if (!qword_1EB5BAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAAF8);
  }

  return result;
}

unint64_t sub_1ADED9BC0()
{
  result = qword_1EB5BAB00;
  if (!qword_1EB5BAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB00);
  }

  return result;
}

unint64_t sub_1ADED9C18()
{
  result = qword_1EB5BAB08;
  if (!qword_1EB5BAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB08);
  }

  return result;
}

unint64_t sub_1ADED9C70()
{
  result = qword_1EB5BAB10;
  if (!qword_1EB5BAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB10);
  }

  return result;
}

unint64_t sub_1ADED9CC8()
{
  result = qword_1EB5BAB18;
  if (!qword_1EB5BAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB18);
  }

  return result;
}

unint64_t sub_1ADED9D20()
{
  result = qword_1EB5BAB20;
  if (!qword_1EB5BAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB20);
  }

  return result;
}

unint64_t sub_1ADED9D78()
{
  result = qword_1EB5BAB28;
  if (!qword_1EB5BAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB28);
  }

  return result;
}

unint64_t sub_1ADED9DD0()
{
  result = qword_1EB5BAB30;
  if (!qword_1EB5BAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB30);
  }

  return result;
}

unint64_t sub_1ADED9E28()
{
  result = qword_1EB5BAB38;
  if (!qword_1EB5BAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB38);
  }

  return result;
}

unint64_t sub_1ADED9E80()
{
  result = qword_1EB5BAB40;
  if (!qword_1EB5BAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB40);
  }

  return result;
}

unint64_t sub_1ADED9ED8()
{
  result = qword_1EB5BB3E0;
  if (!qword_1EB5BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB3E0);
  }

  return result;
}

unint64_t sub_1ADED9F30()
{
  result = qword_1EB5BAB48;
  if (!qword_1EB5BAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB48);
  }

  return result;
}

unint64_t sub_1ADED9F88()
{
  result = qword_1EB5BAB50;
  if (!qword_1EB5BAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB50);
  }

  return result;
}

unint64_t sub_1ADED9FDC()
{
  result = qword_1EB5BAB58;
  if (!qword_1EB5BAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAB58);
  }

  return result;
}

uint64_t sub_1ADEDA030(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 > 8)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_1ADEDA0C8(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1ADEDA0E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1ADEDA154(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_1ADEDA180(uint64_t a1)
{
  v1 = *(a1 + 32);
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

double sub_1ADEDA27C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -1;
  return result;
}

uint64_t sub_1ADEDA2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = *(a1 + 80);
  v13 = *(a1 + 112);
  v35[6] = *(a1 + 96);
  v35[7] = v13;
  v14 = *(a1 + 16);
  v15 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  v35[4] = *(a1 + 64);
  v35[5] = v17;
  v18 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v18;
  v19 = *(a2 + 64);
  *(&v35[13] + 8) = *(a2 + 80);
  v20 = *(a2 + 112);
  *(&v35[14] + 8) = *(a2 + 96);
  *(&v35[15] + 8) = v20;
  v21 = *a2;
  *(&v35[9] + 8) = *(a2 + 16);
  v22 = *(a2 + 48);
  *(&v35[10] + 8) = *(a2 + 32);
  *(&v35[11] + 8) = v22;
  *(&v35[12] + 8) = v19;
  *(&v35[8] + 8) = v21;
  v23 = *(a1 + 112);
  v45[6] = v35[6];
  v45[7] = v23;
  v45[2] = v35[2];
  v45[3] = v16;
  v45[4] = v35[4];
  v45[5] = v12;
  LOBYTE(v35[8]) = *(a1 + 128);
  BYTE8(v35[16]) = *(a2 + 128);
  v46 = *(a1 + 128);
  v45[0] = v35[0];
  v45[1] = v14;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v45) == 1)
  {
    v34[6] = *(&v35[14] + 8);
    v34[7] = *(&v35[15] + 8);
    LOBYTE(v34[8]) = BYTE8(v35[16]);
    v34[2] = *(&v35[10] + 8);
    v34[3] = *(&v35[11] + 8);
    v34[4] = *(&v35[12] + 8);
    v34[5] = *(&v35[13] + 8);
    v34[0] = *(&v35[8] + 8);
    v34[1] = *(&v35[9] + 8);
    if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v34) == 1)
    {
      v42 = v35[6];
      v43 = v35[7];
      v44 = v35[8];
      v38 = v35[2];
      v39 = v35[3];
      v41 = v35[5];
      v40 = v35[4];
      v36 = v35[0];
      v37 = v35[1];
      sub_1ADEDA22C(a1, v32);
      sub_1ADEDA22C(a2, v32);
      sub_1ADDCEDE0(&v36, &qword_1EB5BABB0, &qword_1AE2463C8);
LABEL_8:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v24 = sub_1AE23CCBC();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v11, v4);
      return v24 & 1;
    }

    goto LABEL_5;
  }

  v32[6] = *(&v35[14] + 8);
  v32[7] = *(&v35[15] + 8);
  v33 = BYTE8(v35[16]);
  v32[2] = *(&v35[10] + 8);
  v32[3] = *(&v35[11] + 8);
  v32[4] = *(&v35[12] + 8);
  v32[5] = *(&v35[13] + 8);
  v32[0] = *(&v35[8] + 8);
  v32[1] = *(&v35[9] + 8);
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v32) == 1)
  {
LABEL_5:
    memcpy(v34, v35, 0x109uLL);
    sub_1ADEDA22C(a1, &v36);
    sub_1ADEDA22C(a2, &v36);
    sub_1ADDCEDE0(v34, &qword_1EB5BABA8, &qword_1AE2463C0);
    goto LABEL_6;
  }

  v28[6] = *(&v35[14] + 8);
  v28[7] = *(&v35[15] + 8);
  v29 = BYTE8(v35[16]);
  v28[2] = *(&v35[10] + 8);
  v28[3] = *(&v35[11] + 8);
  v28[4] = *(&v35[12] + 8);
  v28[5] = *(&v35[13] + 8);
  v28[0] = *(&v35[8] + 8);
  v28[1] = *(&v35[9] + 8);
  v34[6] = *(&v35[14] + 8);
  v34[7] = *(&v35[15] + 8);
  LOBYTE(v34[8]) = BYTE8(v35[16]);
  v34[2] = *(&v35[10] + 8);
  v34[3] = *(&v35[11] + 8);
  v34[4] = *(&v35[12] + 8);
  v34[5] = *(&v35[13] + 8);
  v34[0] = *(&v35[8] + 8);
  v34[1] = *(&v35[9] + 8);
  v42 = v35[6];
  v43 = v35[7];
  v44 = v35[8];
  v38 = v35[2];
  v39 = v35[3];
  v41 = v35[5];
  v40 = v35[4];
  v36 = v35[0];
  v37 = v35[1];
  sub_1ADEDA22C(a1, v30);
  sub_1ADEDA22C(a2, v30);
  v25 = sub_1ADEDA6E4(&v36, v34);
  sub_1ADDCEDE0(v28, &qword_1EB5BABB0, &qword_1AE2463C8);
  v30[6] = v35[6];
  v30[7] = v35[7];
  v31 = v35[8];
  v30[2] = v35[2];
  v30[3] = v35[3];
  v30[4] = v35[4];
  v30[5] = v35[5];
  v30[0] = v35[0];
  v30[1] = v35[1];
  sub_1ADDCEDE0(v30, &qword_1EB5BABB0, &qword_1AE2463C8);
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1ADEDA6E4(uint64_t a1, __int128 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v12 = *(a1 + 112);
  v81[6] = *(a1 + 96);
  v81[7] = v12;
  v82 = *(a1 + 128);
  v13 = *(a1 + 48);
  v81[2] = *(a1 + 32);
  v81[3] = v13;
  v14 = *(a1 + 80);
  v81[4] = *(a1 + 64);
  v81[5] = v14;
  v15 = *(a1 + 16);
  v81[0] = *a1;
  v81[1] = v15;
  v16 = sub_1ADEDC4B4(v81);
  v17 = sub_1ADE1F544(v81);
  if (v16 <= 1)
  {
    if (v16)
    {
      v56 = *(v17 + 16);
      v83 = *v17;
      v84 = v56;
      *&v85 = *(v17 + 32);
      v57 = a2[7];
      v78 = a2[6];
      v79 = v57;
      v80 = *(a2 + 128);
      v58 = a2[3];
      v74 = a2[2];
      v75 = v58;
      v59 = a2[5];
      v76 = a2[4];
      v77 = v59;
      v60 = a2[1];
      v72 = *a2;
      v73 = v60;
      if (sub_1ADEDC4B4(&v72) == 1)
      {
LABEL_17:
        v61 = sub_1ADE1F544(&v72);
        v62 = *(v61 + 16);
        v64 = *v61;
        v65 = v62;
        *&v66 = *(v61 + 32);
        v39 = sub_1ADEDB84C(&v83, &v64);
        return v39 & 1;
      }
    }

    else
    {
      v26 = *(v17 + 80);
      v87 = *(v17 + 64);
      v88 = v26;
      v27 = *(v17 + 112);
      v89 = *(v17 + 96);
      v90 = v27;
      v28 = *(v17 + 16);
      v83 = *v17;
      v84 = v28;
      v29 = *(v17 + 48);
      v85 = *(v17 + 32);
      v86 = v29;
      v30 = a2[7];
      v78 = a2[6];
      v79 = v30;
      v80 = *(a2 + 128);
      v31 = a2[3];
      v74 = a2[2];
      v75 = v31;
      v32 = a2[5];
      v76 = a2[4];
      v77 = v32;
      v33 = a2[1];
      v72 = *a2;
      v73 = v33;
      if (!sub_1ADEDC4B4(&v72))
      {
LABEL_8:
        v34 = sub_1ADE1F544(&v72);
        v35 = v34[5];
        v68 = v34[4];
        v69 = v35;
        v36 = v34[7];
        v70 = v34[6];
        v71 = v36;
        v37 = v34[1];
        v64 = *v34;
        v65 = v37;
        v38 = v34[3];
        v66 = v34[2];
        v67 = v38;
        v39 = sub_1AE1B86E8(&v83, &v64);
        return v39 & 1;
      }
    }

LABEL_18:
    v39 = 0;
    return v39 & 1;
  }

  if (v16 == 2)
  {
    v40 = *(v17 + 16);
    v83 = *v17;
    v84 = v40;
    *&v85 = *(v17 + 32);
    v41 = a2[7];
    v78 = a2[6];
    v79 = v41;
    v80 = *(a2 + 128);
    v42 = a2[3];
    v74 = a2[2];
    v75 = v42;
    v43 = a2[5];
    v76 = a2[4];
    v77 = v43;
    v44 = a2[1];
    v72 = *a2;
    v73 = v44;
    if (sub_1ADEDC4B4(&v72) != 2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v16 == 3)
  {
    v18 = *(v17 + 80);
    v87 = *(v17 + 64);
    v88 = v18;
    v19 = *(v17 + 112);
    v89 = *(v17 + 96);
    v90 = v19;
    v20 = *(v17 + 16);
    v83 = *v17;
    v84 = v20;
    v21 = *(v17 + 48);
    v85 = *(v17 + 32);
    v86 = v21;
    v22 = a2[7];
    v78 = a2[6];
    v79 = v22;
    v80 = *(a2 + 128);
    v23 = a2[3];
    v74 = a2[2];
    v75 = v23;
    v24 = a2[5];
    v76 = a2[4];
    v77 = v24;
    v25 = a2[1];
    v72 = *a2;
    v73 = v25;
    if (sub_1ADEDC4B4(&v72) != 3)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v45 = *v17;
  v46 = *(v17 + 8);
  v47 = *(v17 + 16);
  v48 = a2[7];
  v78 = a2[6];
  v79 = v48;
  v80 = *(a2 + 128);
  v49 = a2[3];
  v74 = a2[2];
  v75 = v49;
  v50 = a2[5];
  v76 = a2[4];
  v77 = v50;
  v51 = a2[1];
  v72 = *a2;
  v73 = v51;
  if (sub_1ADEDC4B4(&v72) != 4)
  {
    goto LABEL_18;
  }

  v52 = sub_1ADE1F544(&v72);
  v53 = v52[2];
  if ((sub_1ADDD6F8C(v45, v46, *v52, v52[1]) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v47 != v53)
  {
    goto LABEL_18;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v54 = sub_1AE23CCBC();
  v55 = *(v5 + 8);
  v55(v8, v4);
  v55(v11, v4);
  if ((v54 & 1) == 0)
  {
    goto LABEL_18;
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_1ADEDAAA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C32C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = sub_1ADDD6F8C(a1, a2, a4, a5);
  v21 = 0;
  if ((v20 & 1) != 0 && a3 == a6)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v21 = sub_1AE23CCBC();
    v22 = *(v13 + 8);
    v22(v16, v12);
    v22(v19, v12);
  }

  return v21 & 1;
}

uint64_t sub_1ADEDAC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = *(a1 + 80);
  v13 = *(a1 + 112);
  v35[6] = *(a1 + 96);
  v35[7] = v13;
  v14 = *(a1 + 16);
  v15 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 80);
  v35[4] = *(a1 + 64);
  v35[5] = v17;
  v18 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v18;
  v19 = *(a2 + 64);
  *(&v35[13] + 8) = *(a2 + 80);
  v20 = *(a2 + 112);
  *(&v35[14] + 8) = *(a2 + 96);
  *(&v35[15] + 8) = v20;
  v21 = *a2;
  *(&v35[9] + 8) = *(a2 + 16);
  v22 = *(a2 + 48);
  *(&v35[10] + 8) = *(a2 + 32);
  *(&v35[11] + 8) = v22;
  *(&v35[12] + 8) = v19;
  *(&v35[8] + 8) = v21;
  v23 = *(a1 + 112);
  v45[6] = v35[6];
  v45[7] = v23;
  v45[2] = v35[2];
  v45[3] = v16;
  v45[4] = v35[4];
  v45[5] = v12;
  LOBYTE(v35[8]) = *(a1 + 128);
  BYTE8(v35[16]) = *(a2 + 128);
  v46 = *(a1 + 128);
  v45[0] = v35[0];
  v45[1] = v14;
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v45) == 1)
  {
    v34[6] = *(&v35[14] + 8);
    v34[7] = *(&v35[15] + 8);
    LOBYTE(v34[8]) = BYTE8(v35[16]);
    v34[2] = *(&v35[10] + 8);
    v34[3] = *(&v35[11] + 8);
    v34[4] = *(&v35[12] + 8);
    v34[5] = *(&v35[13] + 8);
    v34[0] = *(&v35[8] + 8);
    v34[1] = *(&v35[9] + 8);
    if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v34) == 1)
    {
      v42 = v35[6];
      v43 = v35[7];
      v44 = v35[8];
      v38 = v35[2];
      v39 = v35[3];
      v41 = v35[5];
      v40 = v35[4];
      v36 = v35[0];
      v37 = v35[1];
      sub_1ADEDA1E8(a1, v32);
      sub_1ADEDA1E8(a2, v32);
      sub_1ADDCEDE0(&v36, &qword_1EB5BAB98, &unk_1AE2463B0);
LABEL_8:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v24 = sub_1AE23CCBC();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v11, v4);
      return v24 & 1;
    }

    goto LABEL_5;
  }

  v32[6] = *(&v35[14] + 8);
  v32[7] = *(&v35[15] + 8);
  v33 = BYTE8(v35[16]);
  v32[2] = *(&v35[10] + 8);
  v32[3] = *(&v35[11] + 8);
  v32[4] = *(&v35[12] + 8);
  v32[5] = *(&v35[13] + 8);
  v32[0] = *(&v35[8] + 8);
  v32[1] = *(&v35[9] + 8);
  if (get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(v32) == 1)
  {
LABEL_5:
    memcpy(v34, v35, 0x109uLL);
    sub_1ADEDA1E8(a1, &v36);
    sub_1ADEDA1E8(a2, &v36);
    sub_1ADDCEDE0(v34, &qword_1EB5BAB90, &qword_1AE2463A8);
    goto LABEL_6;
  }

  v28[6] = *(&v35[14] + 8);
  v28[7] = *(&v35[15] + 8);
  v29 = BYTE8(v35[16]);
  v28[2] = *(&v35[10] + 8);
  v28[3] = *(&v35[11] + 8);
  v28[4] = *(&v35[12] + 8);
  v28[5] = *(&v35[13] + 8);
  v28[0] = *(&v35[8] + 8);
  v28[1] = *(&v35[9] + 8);
  v34[6] = *(&v35[14] + 8);
  v34[7] = *(&v35[15] + 8);
  LOBYTE(v34[8]) = BYTE8(v35[16]);
  v34[2] = *(&v35[10] + 8);
  v34[3] = *(&v35[11] + 8);
  v34[4] = *(&v35[12] + 8);
  v34[5] = *(&v35[13] + 8);
  v34[0] = *(&v35[8] + 8);
  v34[1] = *(&v35[9] + 8);
  v42 = v35[6];
  v43 = v35[7];
  v44 = v35[8];
  v38 = v35[2];
  v39 = v35[3];
  v41 = v35[5];
  v40 = v35[4];
  v36 = v35[0];
  v37 = v35[1];
  sub_1ADEDA1E8(a1, v30);
  sub_1ADEDA1E8(a2, v30);
  v25 = sub_1ADEDB054(&v36, v34);
  sub_1ADDCEDE0(v28, &qword_1EB5BAB98, &unk_1AE2463B0);
  v30[6] = v35[6];
  v30[7] = v35[7];
  v31 = v35[8];
  v30[2] = v35[2];
  v30[3] = v35[3];
  v30[4] = v35[4];
  v30[5] = v35[5];
  v30[0] = v35[0];
  v30[1] = v35[1];
  sub_1ADDCEDE0(v30, &qword_1EB5BAB98, &unk_1AE2463B0);
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1ADEDB054(uint64_t a1, __int128 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  v12 = *(a1 + 112);
  v80[6] = *(a1 + 96);
  v80[7] = v12;
  v81 = *(a1 + 128);
  v13 = *(a1 + 48);
  v80[2] = *(a1 + 32);
  v80[3] = v13;
  v14 = *(a1 + 80);
  v80[4] = *(a1 + 64);
  v80[5] = v14;
  v15 = *(a1 + 16);
  v80[0] = *a1;
  v80[1] = v15;
  v16 = sub_1ADEDC3FC(v80);
  if (v16 <= 1)
  {
    if (!v16)
    {
      v28 = sub_1ADE1F544(v80);
      v29 = v28[5];
      v86 = v28[4];
      v87 = v29;
      v30 = v28[7];
      v88 = v28[6];
      v89 = v30;
      v31 = v28[1];
      v82 = *v28;
      v83 = v31;
      v32 = v28[3];
      v84 = v28[2];
      v85 = v32;
      v33 = a2[7];
      v77 = a2[6];
      v78 = v33;
      v79 = *(a2 + 128);
      v34 = a2[3];
      v73 = a2[2];
      v74 = v34;
      v35 = a2[5];
      v75 = a2[4];
      v76 = v35;
      v36 = a2[1];
      v71 = *a2;
      v72 = v36;
      if (!sub_1ADEDC3FC(&v71))
      {
        v37 = sub_1ADE1F544(&v71);
        v38 = v37[5];
        v67 = v37[4];
        v68 = v38;
        v39 = v37[7];
        v69 = v37[6];
        v70 = v39;
        v40 = v37[1];
        v63 = *v37;
        v64 = v40;
        v41 = v37[3];
        v65 = v37[2];
        v66 = v41;
        v27 = sub_1AE1B86E8(&v82, &v63);
        return v27 & 1;
      }

LABEL_17:
      v27 = 0;
      return v27 & 1;
    }

    v54 = sub_1ADE1F544(v80);
    v55 = *(v54 + 16);
    v82 = *v54;
    v83 = v55;
    *&v84 = *(v54 + 32);
    v56 = a2[3];
    v73 = a2[2];
    v74 = v56;
    v57 = a2[1];
    v71 = *a2;
    v72 = v57;
    v79 = *(a2 + 128);
    v58 = a2[7];
    v77 = a2[6];
    v78 = v58;
    v59 = a2[5];
    v75 = a2[4];
    v76 = v59;
    if (sub_1ADEDC3FC(&v71) != 1)
    {
      goto LABEL_17;
    }

LABEL_16:
    v60 = sub_1ADE1F544(&v71);
    v61 = *(v60 + 16);
    v63 = *v60;
    v64 = v61;
    *&v65 = *(v60 + 32);
    v27 = sub_1ADEDB84C(&v82, &v63);
    return v27 & 1;
  }

  if (v16 == 2)
  {
    v42 = sub_1ADE1F544(v80);
    v43 = *(v42 + 16);
    v82 = *v42;
    v83 = v43;
    *&v84 = *(v42 + 32);
    v44 = a2[3];
    v73 = a2[2];
    v74 = v44;
    v45 = a2[1];
    v71 = *a2;
    v72 = v45;
    v79 = *(a2 + 128);
    v46 = a2[7];
    v77 = a2[6];
    v78 = v46;
    v47 = a2[5];
    v75 = a2[4];
    v76 = v47;
    if (sub_1ADEDC3FC(&v71) != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v16 != 3)
  {
    v48 = a2[7];
    v77 = a2[6];
    v78 = v48;
    v79 = *(a2 + 128);
    v49 = a2[3];
    v73 = a2[2];
    v74 = v49;
    v50 = a2[5];
    v75 = a2[4];
    v76 = v50;
    v51 = a2[1];
    v71 = *a2;
    v72 = v51;
    if (sub_1ADEDC3FC(&v71) == 4)
    {
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v52 = sub_1AE23CCBC();
      v53 = *(v5 + 8);
      v53(v8, v4);
      v53(v11, v4);
      v27 = v52;
      return v27 & 1;
    }

    goto LABEL_17;
  }

  v17 = sub_1ADE1F544(v80);
  v18 = *v17;
  v19 = v17[1];
  v20 = a2[7];
  v77 = a2[6];
  v78 = v20;
  v79 = *(a2 + 128);
  v21 = a2[3];
  v73 = a2[2];
  v74 = v21;
  v22 = a2[5];
  v75 = a2[4];
  v76 = v22;
  v23 = a2[1];
  v71 = *a2;
  v72 = v23;
  if (sub_1ADEDC3FC(&v71) != 3)
  {
    goto LABEL_17;
  }

  v24 = sub_1ADE1F544(&v71);
  if ((sub_1ADDD6F8C(v18, v19, *v24, *(v24 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1AE23C31C();
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v25 = sub_1AE23CCBC();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v11, v4);
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1ADEDB454(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = *(a1 + 88);
  v62 = *(a1 + 72);
  v63 = v12;
  v13 = *(a1 + 120);
  v64 = *(a1 + 104);
  v65 = v13;
  v14 = *(a1 + 24);
  v58 = *(a1 + 8);
  v59 = v14;
  v15 = *(a1 + 56);
  v60 = *(a1 + 40);
  v61 = v15;
  v16 = *(a2 + 8);
  v17 = *(a2 + 24);
  v18 = *(a2 + 56);
  v68 = *(a2 + 40);
  v69 = v18;
  v66 = v16;
  v67 = v17;
  v19 = *(a2 + 72);
  v20 = *(a2 + 88);
  v21 = *(a2 + 120);
  v72 = *(a2 + 104);
  v73 = v21;
  v70 = v19;
  v71 = v20;
  v22 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24 = *(a1 + 56);
  v82[2] = *(a1 + 40);
  v82[3] = v24;
  v82[0] = v22;
  v82[1] = v23;
  v25 = *(a1 + 72);
  v26 = *(a1 + 88);
  v27 = *(a1 + 120);
  v82[6] = *(a1 + 104);
  v82[7] = v27;
  v82[4] = v25;
  v82[5] = v26;
  if (sub_1ADEDA0E0(v82) != 1)
  {
    v33[4] = v70;
    v33[5] = v71;
    v33[6] = v72;
    v33[7] = v73;
    v33[0] = v66;
    v33[1] = v67;
    v33[2] = v68;
    v33[3] = v69;
    if (sub_1ADEDA0E0(v33) != 1)
    {
      v32[4] = v70;
      v32[5] = v71;
      v32[6] = v72;
      v32[7] = v73;
      v32[0] = v66;
      v32[1] = v67;
      v32[2] = v68;
      v32[3] = v69;
      v36 = v68;
      v37 = v69;
      v34 = v66;
      v35 = v67;
      v40 = v72;
      v41 = v73;
      v38 = v70;
      v39 = v71;
      v76 = v60;
      v77 = v61;
      v74 = v58;
      v75 = v59;
      v80 = v64;
      v81 = v65;
      v78 = v62;
      v79 = v63;
      sub_1ADEDA1A4(a1, &v42);
      sub_1ADEDA1A4(a2, &v42);
      v28 = sub_1AE1B86E8(&v74, &v34);
      sub_1ADDCEDE0(v32, &qword_1EB5BB400, &qword_1AE246370);
      v46 = v62;
      v47 = v63;
      v48 = v64;
      v49 = v65;
      v42 = v58;
      v43 = v59;
      v44 = v60;
      v45 = v61;
      sub_1ADDCEDE0(&v42, &qword_1EB5BB400, &qword_1AE246370);
      if ((v28 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_5:
    v54 = v70;
    v55 = v71;
    v56 = v72;
    v57 = v73;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v46 = v62;
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v42 = v58;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    sub_1ADEDA1A4(a1, &v34);
    sub_1ADEDA1A4(a2, &v34);
    sub_1ADDCEDE0(&v42, &qword_1EB5BAB88, &qword_1AE2463A0);
    goto LABEL_8;
  }

  v38 = v70;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  v34 = v66;
  v35 = v67;
  v36 = v68;
  v37 = v69;
  if (sub_1ADEDA0E0(&v34) != 1)
  {
    goto LABEL_5;
  }

  v78 = v62;
  v79 = v63;
  v80 = v64;
  v81 = v65;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v77 = v61;
  sub_1ADEDA1A4(a1, &v42);
  sub_1ADEDA1A4(a2, &v42);
  sub_1ADDCEDE0(&v74, &qword_1EB5BB400, &qword_1AE246370);
LABEL_7:
  if (((*a1 ^ *a2) & 1) == 0)
  {
    sub_1AE23C31C();
    sub_1AE23C31C();
    sub_1ADE51EAC();
    v29 = sub_1AE23CCBC();
    v31 = *(v5 + 8);
    v31(v8, v4);
    v31(v11, v4);
    return v29 & 1;
  }

LABEL_8:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1ADEDB84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v11 = *(a1 + 24);
  v32 = *(a1 + 8);
  v33 = v11;
  v12 = *(a2 + 24);
  v31[0] = *(a2 + 8);
  v31[1] = v12;
  v13 = v32;
  v14 = v33;
  v15 = v31[0];
  v16 = v12;
  if (!v33)
  {
    if (!v12)
    {
      v25 = &v24 - v8;
      v26 = v10;
      v27 = v9;
      v28 = v7;
      sub_1ADEDC41C(&v32, v30);
      sub_1ADEDC41C(v31, v30);
      sub_1ADE73B5C(v13, *(&v13 + 1), 0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
LABEL_6:
    sub_1ADEDC41C(&v32, v30);
    sub_1ADEDC41C(v31, v30);
    sub_1ADE73B5C(v13, *(&v13 + 1), v14);
    sub_1ADE73B5C(v15, *(&v15 + 1), v16);
    goto LABEL_10;
  }

  v25 = &v24 - v8;
  v26 = v10;
  v27 = v9;
  v28 = v7;
  sub_1ADEDC41C(&v32, v30);
  sub_1ADEDC41C(v31, v30);
  v29 = sub_1AE1CE4B8(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1));
  sub_1ADE73B5C(v15, *(&v15 + 1), v16);
  sub_1ADE73B5C(v13, *(&v13 + 1), v14);
  if ((v29 & 1) == 0)
  {
LABEL_10:
    v21 = 0;
    return v21 & 1;
  }

LABEL_8:
  sub_1ADE49E00(*a1, *a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = v25;
  sub_1AE23C31C();
  v19 = v26;
  sub_1AE23C31C();
  sub_1ADE51EAC();
  v20 = v28;
  v21 = sub_1AE23CCBC();
  v22 = *(v27 + 8);
  v22(v19, v20);
  v22(v18, v20);
  return v21 & 1;
}

uint64_t sub_1ADEDBADC(_OWORD *a1, _OWORD *a2)
{
  v4 = sub_1AE23C32C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = a1[5];
  v13 = a1[7];
  v35[6] = a1[6];
  v35[7] = v13;
  *(&v35[7] + 9) = *(a1 + 121);
  v14 = a1[1];
  v15 = a1[3];
  v35[2] = a1[2];
  v35[3] = v15;
  v16 = a1[3];
  v17 = a1[5];
  v35[4] = a1[4];
  v35[5] = v17;
  v18 = a1[1];
  v35[0] = *a1;
  v35[1] = v18;
  *(&v35[16] + 9) = *(a2 + 121);
  v19 = a2[7];
  v35[15] = a2[6];
  v35[16] = v19;
  v20 = a2[3];
  v35[11] = a2[2];
  v35[12] = v20;
  v21 = a2[5];
  v35[13] = a2[4];
  v35[14] = v21;
  v22 = a2[1];
  v35[9] = *a2;
  v35[10] = v22;
  v23 = a1[7];
  v44[6] = v35[6];
  v45[0] = v23;
  *(v45 + 9) = *(a1 + 121);
  v44[2] = v35[2];
  v44[3] = v16;
  v44[4] = v35[4];
  v44[5] = v12;
  v44[0] = v35[0];
  v44[1] = v14;
  if (sub_1ADEDA030(v44) == 1)
  {
    v34[6] = v35[15];
    v34[7] = v35[16];
    *(&v34[7] + 9) = *(&v35[16] + 9);
    v34[2] = v35[11];
    v34[3] = v35[12];
    v34[4] = v35[13];
    v34[5] = v35[14];
    v34[0] = v35[9];
    v34[1] = v35[10];
    if (sub_1ADEDA030(v34) == 1)
    {
      v42 = v35[6];
      v43[0] = v35[7];
      *(v43 + 9) = *(&v35[7] + 9);
      v38 = v35[2];
      v39 = v35[3];
      v41 = v35[5];
      v40 = v35[4];
      v36 = v35[0];
      v37 = v35[1];
      sub_1ADEDA04C(a1, v32);
      sub_1ADEDA04C(a2, v32);
      sub_1ADDCEDE0(&v36, &qword_1EB5BAB80, &qword_1AE246398);
LABEL_8:
      sub_1AE23C31C();
      sub_1AE23C31C();
      sub_1ADE51EAC();
      v24 = sub_1AE23CCBC();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v11, v4);
      return v24 & 1;
    }

    goto LABEL_5;
  }

  v32[6] = v35[15];
  v33[0] = v35[16];
  *(v33 + 9) = *(&v35[16] + 9);
  v32[2] = v35[11];
  v32[3] = v35[12];
  v32[4] = v35[13];
  v32[5] = v35[14];
  v32[0] = v35[9];
  v32[1] = v35[10];
  if (sub_1ADEDA030(v32) == 1)
  {
LABEL_5:
    memcpy(v34, v35, 0x119uLL);
    sub_1ADEDA04C(a1, &v36);
    sub_1ADEDA04C(a2, &v36);
    sub_1ADDCEDE0(v34, &qword_1EB5BAB78, &qword_1AE246390);
    goto LABEL_6;
  }

  v28[6] = v35[15];
  v29[0] = v35[16];
  *(v29 + 9) = *(&v35[16] + 9);
  v28[2] = v35[11];
  v28[3] = v35[12];
  v28[4] = v35[13];
  v28[5] = v35[14];
  v28[0] = v35[9];
  v28[1] = v35[10];
  v34[6] = v35[15];
  v34[7] = v35[16];
  *(&v34[7] + 9) = *(&v35[16] + 9);
  v34[2] = v35[11];
  v34[3] = v35[12];
  v34[4] = v35[13];
  v34[5] = v35[14];
  v34[0] = v35[9];
  v34[1] = v35[10];
  v42 = v35[6];
  v43[0] = v35[7];
  *(v43 + 9) = *(&v35[7] + 9);
  v38 = v35[2];
  v39 = v35[3];
  v41 = v35[5];
  v40 = v35[4];
  v36 = v35[0];
  v37 = v35[1];
  sub_1ADEDA04C(a1, v30);
  sub_1ADEDA04C(a2, v30);
  v25 = sub_1ADEDBEF4(&v36, v34);
  sub_1ADDCEDE0(v28, &qword_1EB5BAB80, &qword_1AE246398);
  v30[6] = v35[6];
  v31[0] = v35[7];
  *(v31 + 9) = *(&v35[7] + 9);
  v30[2] = v35[2];
  v30[3] = v35[3];
  v30[4] = v35[4];
  v30[5] = v35[5];
  v30[0] = v35[0];
  v30[1] = v35[1];
  sub_1ADDCEDE0(v30, &qword_1EB5BAB80, &qword_1AE246398);
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1ADEDBEF4(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v120[6] = a1[6];
  v121[0] = v3;
  *(v121 + 9) = *(a1 + 121);
  v4 = a1[3];
  v120[2] = a1[2];
  v120[3] = v4;
  v5 = a1[5];
  v120[4] = a1[4];
  v120[5] = v5;
  v6 = a1[1];
  v120[0] = *a1;
  v120[1] = v6;
  v7 = sub_1ADEDA044(v120);
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v34 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
        v35 = v34[5];
        v126 = v34[4];
        v127 = v35;
        v36 = v34[7];
        v128 = v34[6];
        v129 = v36;
        v37 = v34[1];
        v122 = *v34;
        v123 = v37;
        v38 = v34[3];
        v124 = v34[2];
        v125 = v38;
        v39 = a2[7];
        v118 = a2[6];
        v119[0] = v39;
        *(v119 + 9) = *(a2 + 121);
        v40 = a2[3];
        v114 = a2[2];
        v115 = v40;
        v41 = a2[5];
        v116 = a2[4];
        v117 = v41;
        v42 = a2[1];
        v112 = *a2;
        v113 = v42;
        if (sub_1ADEDA044(&v112) != 2)
        {
          goto LABEL_27;
        }

        goto LABEL_16;
      }

      v73 = *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
      v79 = a2[7];
      v118 = a2[6];
      v119[0] = v79;
      *(v119 + 9) = *(a2 + 121);
      v80 = a2[3];
      v114 = a2[2];
      v115 = v80;
      v81 = a2[5];
      v116 = a2[4];
      v117 = v81;
      v82 = a2[1];
      v112 = *a2;
      v113 = v82;
      if (sub_1ADEDA044(&v112) != 3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!v7)
      {
        v25 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
        v26 = *v25;
        v27 = v25[1];
        v28 = a2[7];
        v118 = a2[6];
        v119[0] = v28;
        *(v119 + 9) = *(a2 + 121);
        v29 = a2[3];
        v114 = a2[2];
        v115 = v29;
        v30 = a2[5];
        v116 = a2[4];
        v117 = v30;
        v31 = a2[1];
        v112 = *a2;
        v113 = v31;
        if (!sub_1ADEDA044(&v112))
        {
          v33 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v112, v32);
          v24 = sub_1ADDD6F8C(v26, v27, *v33, *(v33 + 8));
          return v24 & 1;
        }

LABEL_27:
        v24 = 0;
        return v24 & 1;
      }

      v73 = *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
      v74 = a2[7];
      v118 = a2[6];
      v119[0] = v74;
      *(v119 + 9) = *(a2 + 121);
      v75 = a2[3];
      v114 = a2[2];
      v115 = v75;
      v76 = a2[5];
      v116 = a2[4];
      v117 = v76;
      v77 = a2[1];
      v112 = *a2;
      v113 = v77;
      if (sub_1ADEDA044(&v112) != 1)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v24 = v73 ^ *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v112, v78) ^ 1;
    return v24 & 1;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      v87 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
      v88 = *(v87 + 112);
      v128 = *(v87 + 96);
      v129 = v88;
      v130 = *(v87 + 128);
      v89 = *(v87 + 48);
      v124 = *(v87 + 32);
      v125 = v89;
      v90 = *(v87 + 80);
      v126 = *(v87 + 64);
      v127 = v90;
      v91 = *(v87 + 16);
      v122 = *v87;
      v123 = v91;
      *(v119 + 9) = *(a2 + 121);
      v92 = a2[7];
      v118 = a2[6];
      v119[0] = v92;
      v93 = a2[5];
      v116 = a2[4];
      v117 = v93;
      v94 = a2[3];
      v114 = a2[2];
      v115 = v94;
      v95 = a2[1];
      v112 = *a2;
      v113 = v95;
      if (sub_1ADEDA044(&v112) == 5)
      {
        v97 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v112, v96);
        v98 = *(v97 + 112);
        v109 = *(v97 + 96);
        v110 = v98;
        v111 = *(v97 + 128);
        v99 = *(v97 + 48);
        v105 = *(v97 + 32);
        v106 = v99;
        v100 = *(v97 + 80);
        v107 = *(v97 + 64);
        v108 = v100;
        v101 = *(v97 + 16);
        v103 = *v97;
        v104 = v101;
        v24 = sub_1ADEDB454(&v122, &v103);
        return v24 & 1;
      }

      goto LABEL_27;
    }

    v44 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
    v45 = v44[5];
    v126 = v44[4];
    v127 = v45;
    v46 = v44[7];
    v128 = v44[6];
    v129 = v46;
    v47 = v44[1];
    v122 = *v44;
    v123 = v47;
    v48 = v44[3];
    v124 = v44[2];
    v125 = v48;
    v49 = a2[7];
    v118 = a2[6];
    v119[0] = v49;
    *(v119 + 9) = *(a2 + 121);
    v50 = a2[3];
    v114 = a2[2];
    v115 = v50;
    v51 = a2[5];
    v116 = a2[4];
    v117 = v51;
    v52 = a2[1];
    v112 = *a2;
    v113 = v52;
    if (sub_1ADEDA044(&v112) != 4)
    {
      goto LABEL_27;
    }

LABEL_16:
    v53 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v112, v43);
    v54 = v53[5];
    v107 = v53[4];
    v108 = v54;
    v55 = v53[7];
    v109 = v53[6];
    v110 = v55;
    v56 = v53[1];
    v103 = *v53;
    v104 = v56;
    v57 = v53[3];
    v105 = v53[2];
    v106 = v57;
    v24 = sub_1AE1CE814(&v122, &v103);
    return v24 & 1;
  }

  if (v7 == 6)
  {
    v58 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
    v59 = *(v58 + 112);
    v128 = *(v58 + 96);
    v129 = v59;
    LOBYTE(v130) = *(v58 + 128);
    v60 = *(v58 + 48);
    v124 = *(v58 + 32);
    v125 = v60;
    v61 = *(v58 + 80);
    v126 = *(v58 + 64);
    v127 = v61;
    v62 = *(v58 + 16);
    v122 = *v58;
    v123 = v62;
    *(v119 + 9) = *(a2 + 121);
    v63 = a2[7];
    v118 = a2[6];
    v119[0] = v63;
    v64 = a2[5];
    v116 = a2[4];
    v117 = v64;
    v65 = a2[3];
    v114 = a2[2];
    v115 = v65;
    v66 = a2[1];
    v112 = *a2;
    v113 = v66;
    if (sub_1ADEDA044(&v112) == 6)
    {
      v68 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v112, v67);
      v69 = *(v68 + 112);
      v109 = *(v68 + 96);
      v110 = v69;
      LOBYTE(v111) = *(v68 + 128);
      v70 = *(v68 + 48);
      v105 = *(v68 + 32);
      v106 = v70;
      v71 = *(v68 + 80);
      v107 = *(v68 + 64);
      v108 = v71;
      v72 = *(v68 + 16);
      v103 = *v68;
      v104 = v72;
      v24 = sub_1ADEDAC10(&v122, &v103);
      return v24 & 1;
    }

    goto LABEL_27;
  }

  if (v7 != 7)
  {
    v73 = *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
    v83 = a2[7];
    v118 = a2[6];
    v119[0] = v83;
    *(v119 + 9) = *(a2 + 121);
    v84 = a2[3];
    v114 = a2[2];
    v115 = v84;
    v85 = a2[5];
    v116 = a2[4];
    v117 = v85;
    v86 = a2[1];
    v112 = *a2;
    v113 = v86;
    if (sub_1ADEDA044(&v112) != 8)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v9 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v120, v8);
  v10 = *(v9 + 112);
  v128 = *(v9 + 96);
  v129 = v10;
  LOBYTE(v130) = *(v9 + 128);
  v11 = *(v9 + 48);
  v124 = *(v9 + 32);
  v125 = v11;
  v12 = *(v9 + 80);
  v126 = *(v9 + 64);
  v127 = v12;
  v13 = *(v9 + 16);
  v122 = *v9;
  v123 = v13;
  *(v119 + 9) = *(a2 + 121);
  v14 = a2[7];
  v118 = a2[6];
  v119[0] = v14;
  v15 = a2[5];
  v116 = a2[4];
  v117 = v15;
  v16 = a2[3];
  v114 = a2[2];
  v115 = v16;
  v17 = a2[1];
  v112 = *a2;
  v113 = v17;
  if (sub_1ADEDA044(&v112) != 7)
  {
    goto LABEL_27;
  }

  v19 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v112, v18);
  v20 = *(v19 + 112);
  v109 = *(v19 + 96);
  v110 = v20;
  LOBYTE(v111) = *(v19 + 128);
  v21 = *(v19 + 48);
  v105 = *(v19 + 32);
  v106 = v21;
  v22 = *(v19 + 80);
  v107 = *(v19 + 64);
  v108 = v22;
  v23 = *(v19 + 16);
  v103 = *v19;
  v104 = v23;
  v24 = sub_1ADEDA2A0(&v122, &v103);
  return v24 & 1;
}

uint64_t sub_1ADEDC3FC(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 48) >> 60) & 3;
  }
}

uint64_t sub_1ADEDC41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BABA0, &unk_1AE2580C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128));
  v2 = v1 ^ 0x3FF;
  v3 = 1024 - v1;
  if (v2 >= 0x3FB)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1ADEDC4B4(uint64_t a1)
{
  if (*(a1 + 128))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  return (*(a1 + 48) >> 60) & 3 | v1;
}

unint64_t sub_1ADEDC4D4()
{
  result = qword_1EB5BABB8;
  if (!qword_1EB5BABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABB8);
  }

  return result;
}

unint64_t sub_1ADEDC528()
{
  result = qword_1EB5BABC0;
  if (!qword_1EB5BABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABC0);
  }

  return result;
}

double sub_1ADEDC57C(uint64_t a1)
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

uint64_t sub_1ADEDC604(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1ADE73B5C(a2, a3, a4);
  }

  return result;
}

unint64_t sub_1ADEDC664()
{
  result = qword_1EB5BABC8;
  if (!qword_1EB5BABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABC8);
  }

  return result;
}

uint64_t sub_1ADEDC720(uint64_t result)
{
  *(result + 48) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 128) = 1;
  return result;
}

unint64_t sub_1ADEDC738()
{
  result = qword_1EB5BABD0;
  if (!qword_1EB5BABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABD0);
  }

  return result;
}

uint64_t sub_1ADEDC78C()
{
  v0 = sub_1AE23C32C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C31C();
  sub_1AE23C30C();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1ADEDC888()
{
  result = qword_1EB5BABD8;
  if (!qword_1EB5BABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABD8);
  }

  return result;
}

unint64_t sub_1ADEDC8DC()
{
  result = qword_1ED9694A8[0];
  if (!qword_1ED9694A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9694A8);
  }

  return result;
}

unint64_t sub_1ADEDC930()
{
  result = qword_1ED96A808;
  if (!qword_1ED96A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A808);
  }

  return result;
}

unint64_t sub_1ADEDC984()
{
  result = qword_1EB5BABE0;
  if (!qword_1EB5BABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABE0);
  }

  return result;
}

unint64_t sub_1ADEDC9D8()
{
  result = qword_1EB5BABE8;
  if (!qword_1EB5BABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence14Proto_DocumentV10OneOf_RootOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_9Coherence15Proto_ConstantsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1ADEDCAC8(uint64_t result, char a2)
{
  *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 128) = (a2 & 4) != 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0O(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 48) >> 60) & 3;
  }
}

uint64_t sub_1ADEDCB14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 129))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1ADEDCB68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
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
    *result = a2 - 1020;
    if (a3 >= 0x3FC)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (-a2 & 3) << 60;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0;
      *(result + 128) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1ADEDCBFC(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 48) = *(result + 48) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0;
  }

  *(result + 128) = a2 > 3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence14Proto_DocumentVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1ADEDCCB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 137))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 136);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEDCD00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12Peer_MessageV012OneOf_TaggeddE0OSg(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 > 8)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADEDCD94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 137))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 136);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1ADEDCDE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1ADEDCE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1ADEDCEE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1ADEDCF7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 129))
  {
    return (*a1 + 1019);
  }

  v3 = (*(a1 + 48) >> 60) & 3 | (4 * *(a1 + 128));
  v4 = v3 ^ 0x3FF;
  v5 = 1022 - v3;
  if (v4 >= 0x3FB)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1ADEDCFD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
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
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (~a2 & 3) << 60;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0;
      *(result + 128) = ~a2 >> 2;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ADEDD0A0(uint64_t *a1, int a2)
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

uint64_t sub_1ADEDD0E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1ADEDD190(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v10 = a3;
  v11 = [a1 length];
  if (!v10)
  {
    if (v11 <= a2)
    {
      goto LABEL_10;
    }

    v12 = 2;
    goto LABEL_7;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 + 1 > a2)
  {
    v12 = a3 == 2;
LABEL_7:
    v13 = [a1 mergeableIndexForCharacterIndex:a2 affinity:v12];
    if (v13)
    {
      return (*(a5 + 32))(v13, a4, a5);
    }
  }

LABEL_10:
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEDD2B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v38 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  if (v22 < 0)
  {
    goto LABEL_14;
  }

  v23 = [a1 length];
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v23 + 1 <= a3)
  {
    goto LABEL_14;
  }

  v24 = [a1 mergeableIndexForCharacterIndex:a3 affinity:0];
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v24;
  v39 = v15;
  v40 = a6;
  v26 = a5[4];
  v26(v24, a4, a5);
  if (__OFSUB__(a3, a2))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3 != a2)
  {
    v28 = v25;
    v29 = [a1 mergeableIndexForCharacterIndex:a2 affinity:1];
    if (v29)
    {
      v30 = v29;

      v27 = v41;
      v26(v30, a4, a5);
      goto LABEL_11;
    }

    while (1)
    {
LABEL_14:
      sub_1AE23DC5C();
      __break(1u);
    }
  }

  v27 = v41;
  (*(v12 + 16))(v41, v21, a4);
LABEL_11:
  v31 = *(v12 + 32);
  v32 = v39;
  v31(v39, v21, a4);
  v34 = a5[1];
  v33 = a5[2];
  v35 = v40;
  v31(v40, v27, a4);
  v36 = type metadata accessor for CursorRange();
  return (v31)(&v35[*(v36 + 44)], v32, a4);
}

id sub_1ADEDD5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(a3, a4);
  objc_opt_self();
  v6 = [a1 characterIndexForIndex_];

  if (v6 == sub_1AE23BB0C())
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1ADEDD634(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = v7(a3, a4);
  objc_opt_self();
  v9 = [a1 characterIndexForIndex_];

  v10 = a4[1];
  v11 = a4[2];
  v12 = *(type metadata accessor for CursorRange() + 44);
  v13 = v7(a3, a4);
  objc_opt_self();
  v14 = [a1 characterIndexForIndex_];

  if (v9 == sub_1AE23BB0C())
  {
    return 0;
  }

  result = sub_1AE23BB0C();
  if (v14 == result)
  {
    return 0;
  }

  if (v14 >= v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t CursorRange.init(lowerBound:upperBound:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for CursorRange() + 44);

  return v9(v7, a2, a3);
}

uint64_t CRAffinity.hashValue.getter(unsigned __int8 a1)
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](a1);
  return sub_1AE23E34C();
}

uint64_t (*CursorRange.upperBound.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t CursorRange.init(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  Array<A>.init(from:)(v7, a1, a2);
  if (!v3)
  {
    if (sub_1AE23D0AC() == 2)
    {
      sub_1AE23D15C();
      v8 = a3 + *(type metadata accessor for CursorRange() + 44);
      sub_1AE23D15C();
    }

    sub_1ADE42E40();
    swift_allocError();
    *v10 = 0xD000000000000010;
    *(v10 + 8) = 0x80000001AE260EA0;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t CursorRange.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1ADE0FC48(v6, v6);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = *(v6 - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  swift_allocObject();
  v13 = sub_1AE23CFFC();
  v15 = v14;
  v16 = *(v10 + 16);
  v16(v14, v3, v6);
  v16(v15 + v11, v3 + *(a2 + 44), v6);
  sub_1ADE0FCBC();
  Array<A>.encode(to:)(a1, v13, v6, *(a2 + 24));
}

Swift::Bool __swiftcall CursorRange.needToFinalizeTimestamps()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 8);
  v4 = *(v3 + 56);
  if (v4(v2, v3))
  {
    return 1;
  }

  v6 = *(v1 + 44);
  return v4(v2, v3) & 1;
}

uint64_t CursorRange.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = *(v5 + 64);
  v6(a1, v4, v5);
  v7 = *(a2 + 44);
  return (v6)(a1, v4, v5);
}

uint64_t static CursorRange.== infix(_:_:)()
{
  if ((sub_1AE23CCBC() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for CursorRange() + 44);
  return sub_1AE23CCBC() & 1;
}

uint64_t sub_1ADEDDDF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static CursorRange.== infix(_:_:)();
}

unint64_t sub_1ADEDDE68()
{
  result = qword_1EB5BABF0;
  if (!qword_1EB5BABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BABF0);
  }

  return result;
}

uint64_t sub_1ADEDDECC(uint64_t a1)
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

uint64_t sub_1ADEDDF3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1ADEDE08C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t (*SharedTagged_1.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_1.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_1.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_1.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_1.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_1, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_1, a5);
}

uint64_t SharedTagged_1.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_1();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_1.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_1();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_1.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_1();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_1.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_1() + 36);
  v5 = *(type metadata accessor for SharedTagged_1() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_1.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t SharedTagged_1.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] < 1)
  {
    v12 = xmmword_1AE2427C0;
  }

  else
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v10, v11);
    v12 = v13;
  }

  *a2 = v12;
  return result;
}

uint64_t SharedTagged_1.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_1.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v31[3] = a1;
  v32 = a3;
  v33 = a5;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v31[1] = v31 - v15;
  v16 = *(a2 + 36);
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35.n128_u64[0] = v17;
  v35.n128_u64[1] = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v19 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v19, &v38);
  v20 = a4;
  v31[2] = a4 + 8;
  if (v38)
  {
    v22 = v6[1];
    v34.n128_u64[0] = *v6;
    v21 = v34.n128_u64[0];
    v34.n128_u64[1] = v22;
    v23 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v34, &v35);
    v34 = v35;
    v24 = v20;
    v25 = *(v20 + 8);
    sub_1ADDD86D8(v21, v22);
    v25(&v34, AssociatedTypeWitness, v23, v32, v24);
  }

  else
  {
    v26 = *v6;
    v27 = v6[1];
    v34.n128_u64[0] = v26;
    v34.n128_u64[1] = v27;
    v28 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v34, &v35);
    v34 = v35;
    v29 = *(a4 + 8);
    sub_1ADDD86D8(v26, v27);
    v29(&v34, v13, v28, v32, a4);
  }

  sub_1ADDCC35C(v34.n128_i64[0], v34.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEDF574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(a2 + 36);
  v22.n128_u64[0] = swift_getAssociatedTypeWitness();
  v22.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v23 = &protocol witness table for Int;
  v24 = MEMORY[0x1E69E6540];
  v12 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v12, &v25);
  v14 = v2[1];
  v21.n128_u64[0] = *v3;
  v13 = v21.n128_u64[0];
  v21.n128_u64[1] = v14;
  if (v25)
  {
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v21, &v22);
    v15 = v22;
    v21 = v22;
    sub_1ADDD86D8(v13, v14);
    v16 = type metadata accessor for Ref();
    sub_1AE002018(a1, v16);
    sub_1ADDCC35C(v15.n128_i64[0], v15.n128_u64[1]);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v21, &v22);
    v17 = v22;
    v21 = v22;
    sub_1ADDD86D8(v13, v14);
    v18 = type metadata accessor for Ref();
    sub_1AE002018(a1, v18);
    sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
  }

  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1ADEDF874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a1;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v35 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v35 - v13;
  v41 = swift_getAssociatedTypeWitness();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v35 - v16;
  v18 = *(a3 + 36);
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45.n128_u64[0] = v19;
  v45.n128_u64[1] = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v21 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v21, &v48);
  v40 = v14 + 16;
  v23 = v3[1];
  v44.n128_u64[0] = *v4;
  v22 = v44.n128_u64[0];
  v44.n128_u64[1] = v23;
  if (v48)
  {
    swift_getAssociatedConformanceWitness();
    v24 = Ref.init(id:)(&v44, &v45);
    v25 = v45;
    v26 = v43;
    v27 = v41;
    (*(v14 + 16))(v17, v43, v41, v24);
    sub_1ADDD86D8(v22, v23);
    v28 = v38;
    swift_dynamicCast();
    v44 = v25;
    sub_1ADECCBCC(v28, &v44, AssociatedTypeWitness);
    (*(v39 + 8))(v28, AssociatedTypeWitness);

    return (*(v14 + 8))(v26, v27);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v30 = Ref.init(id:)(&v44, &v45);
    v31 = v45;
    v32 = v43;
    v33 = v41;
    (*(v14 + 16))(v17, v43, v41, v30);
    sub_1ADDD86D8(v22, v23);
    v34 = v36;
    swift_dynamicCast();
    v44 = v31;
    sub_1ADECCBCC(v34, &v44, v11);
    (*(v37 + 8))(v34, v11);

    return (*(v14 + 8))(v32, v33);
  }
}

uint64_t sub_1ADEDFCD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_1();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_1, &associated type descriptor for Tagged_1.AnyType, sub_1ADEDF874);
}

uint64_t SharedTagged_1.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_1, &associated type descriptor for Tagged_1.AnyType, sub_1ADEDF874);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_1.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  SharedTagged_1.subscript.getter(a2, a3);
  return sub_1ADEDFF54;
}

uint64_t SharedTagged_1.visitReferences(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 36);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v18.n128_u64[0] = swift_getAssociatedTypeWitness();
  v18.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v19 = &protocol witness table for Int;
  v20 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v21);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = *v3;
  v11 = v3[1];
  v17.n128_u64[0] = v12;
  v17.n128_u64[1] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v17, &v18);
  v17 = v18;
  v15 = *(v10 + 16);
  sub_1ADDD86D8(v12, v11);
  v15(&v17, AssociatedTypeWitness, AssociatedConformanceWitness, v9, v10);
  return sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
}

uint64_t sub_1ADEE01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_1.init(from:)(a1, a3);
}

uint64_t SharedTagged_1.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v50 = v8[2];
  v9 = *(type metadata accessor for SharedTagged_1() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v48 = AssociatedTypeWitness;
  v49 = v9;
  v47 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v50, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v44 = 0xD000000000000013;
        *(v44 + 8) = 0x80000001AE25FC60;
        *(v44 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_48:
        *&v50 = v48;
        *(&v50 + 1) = v47;
        v51 = &protocol witness table for Int;
        v52 = MEMORY[0x1E69E6540];
        v43 = type metadata accessor for CRExtensible();
        return (*(*(v43 - 8) + 8))(a2 + v49, v43);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v50);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v50;
LABEL_41:
  *&v50 = v48;
  *(&v50 + 1) = AssociatedConformanceWitness;
  v51 = &protocol witness table for Int;
  v52 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v53);
  v34 = *(a1 + 16);
  if (v53)
  {
    if (v34)
    {
      v35 = swift_getAssociatedTypeWitness();
      v37 = *(a2 + 8);
      *&v50 = *a2;
      v36 = v50;
      *(&v50 + 1) = v37;
      v45 = *(*v34 + 200);

      sub_1ADDD86D8(v36, v37);
      v38 = swift_getAssociatedConformanceWitness();
      v45(v35, &v50, a1, 0, v35, v38);
      if (v5)
      {
        goto LABEL_47;
      }

LABEL_49:
      sub_1ADDCC35C(v50, *(&v50 + 1));
    }

    goto LABEL_53;
  }

  if (v34)
  {
    v39 = swift_getAssociatedTypeWitness();
    v41 = *(a2 + 8);
    *&v50 = *a2;
    v40 = v50;
    *(&v50 + 1) = v41;
    v46 = *(*v34 + 200);

    sub_1ADDD86D8(v40, v41);
    v42 = swift_getAssociatedConformanceWitness();
    v46(v39, &v50, a1, 0, v39, v42);
    if (v5)
    {
LABEL_47:
      sub_1ADDCC35C(v50, *(&v50 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t (*SharedTagged_2.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_2.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_2.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_2.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_2.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_2, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_2, a5);
}

uint64_t SharedTagged_2.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_2();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_2();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_2.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_2();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_2();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_2.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_2();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_2();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_2.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_2() + 36);
  v5 = *(type metadata accessor for SharedTagged_2() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_2.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] >= 2)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_2.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_2.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v37 = a4;
  v39 = a1;
  v40 = a3;
  v41 = a5;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36[2] = v36 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v36[1] = v36 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = *(a2 + 36);
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43.n128_u64[0] = v19;
  v43.n128_u64[1] = AssociatedConformanceWitness;
  v44 = &protocol witness table for Int;
  v45 = MEMORY[0x1E69E6540];
  v21 = type metadata accessor for CRExtensible();
  v22 = v37;
  CRExtensible.rawValue.getter(v21, &v46);
  v38 = v22 + 8;
  if (v46 == 1)
  {
    v29 = v6[1];
    v42.n128_u64[0] = *v6;
    v28 = v42.n128_u64[0];
    v42.n128_u64[1] = v29;
    v30 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v42, &v43);
    v42 = v43;
    v31 = v22;
    v32 = *(v22 + 8);
    sub_1ADDD86D8(v28, v29);
    v32(&v42, v13, v30, v40, v31);
    sub_1ADDCC35C(v42.n128_i64[0], v42.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v24 = v6[1];
    v42.n128_u64[0] = *v6;
    v23 = v42.n128_u64[0];
    v42.n128_u64[1] = v24;
    if (v46)
    {
      v33 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v42, &v43);
      v42 = v43;
      v34 = *(v22 + 8);
      sub_1ADDD86D8(v23, v24);
      v34(&v42, AssociatedTypeWitness, v33, v40, v22);
    }

    else
    {
      v25 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v42, &v43);
      v42 = v43;
      v26 = v22;
      v27 = *(v22 + 8);
      sub_1ADDD86D8(v23, v24);
      v27(&v42, v16, v25, v40, v26);
    }

    sub_1ADDCC35C(v42.n128_i64[0], v42.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE2448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33[2] = v33 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v33[1] = v33 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = *(a2 + 36);
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37.n128_u64[0] = v17;
  v37.n128_u64[1] = AssociatedConformanceWitness;
  v38 = &protocol witness table for Int;
  v39 = MEMORY[0x1E69E6540];
  v19 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v19, &v40);
  if (v40 == 1)
  {
    v25 = v3[1];
    v36.n128_u64[0] = *v4;
    v24 = v36.n128_u64[0];
    v36.n128_u64[1] = v25;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v36, &v37);
    v26 = v37;
    v36 = v37;
    sub_1ADDD86D8(v24, v25);
    v27 = type metadata accessor for Ref();
    sub_1AE002018(v34, v27);
    sub_1ADDCC35C(v26.n128_i64[0], v26.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    if (v40)
    {
      v29 = v3[1];
      v36.n128_u64[0] = *v4;
      v28 = v36.n128_u64[0];
      v36.n128_u64[1] = v29;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v36, &v37);
      v30 = v37;
      v36 = v37;
      sub_1ADDD86D8(v28, v29);
      v31 = type metadata accessor for Ref();
      sub_1AE002018(v34, v31);
      sub_1ADDCC35C(v30.n128_i64[0], v30.n128_u64[1]);
    }

    else
    {
      v21 = v3[1];
      v36.n128_u64[0] = *v3;
      v20 = v36.n128_u64[0];
      v36.n128_u64[1] = v21;
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v36, &v37);
      v22 = v37;
      v36 = v37;
      sub_1ADDD86D8(v20, v21);
      v23 = type metadata accessor for Ref();
      sub_1AE002018(v34, v23);
      sub_1ADDCC35C(v22.n128_i64[0], v22.n128_u64[1]);
    }

    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE2870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a2;
  v56 = a1;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v46 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v46 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v54 = swift_getAssociatedTypeWitness();
  v18 = *(v54 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v21 = &v46 - v20;
  v22 = *(a3 + 36);
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58.n128_u64[0] = v23;
  v58.n128_u64[1] = AssociatedConformanceWitness;
  v59 = &protocol witness table for Int;
  v60 = MEMORY[0x1E69E6540];
  v25 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v25, &v61);
  v53 = v18 + 16;
  if (v61 == 1)
  {
    v34 = *v3;
    v33 = v4[1];
    v57.n128_u64[0] = v34;
    v57.n128_u64[1] = v33;
    v35 = v49;
    swift_getAssociatedConformanceWitness();
    v36 = Ref.init(id:)(&v57, &v58);
    v37 = v58;
    v38 = v56;
    v39 = v54;
    (*(v18 + 16))(v21, v56, v54, v36);
    sub_1ADDD86D8(v34, v33);
    v40 = v47;
    swift_dynamicCast();
    v57 = v37;
    sub_1ADECCBCC(v40, &v57, v35);
    v41 = v48;
  }

  else
  {
    if (!v61)
    {
      v27 = *v3;
      v26 = v4[1];
      v57.n128_u64[0] = v27;
      v57.n128_u64[1] = v26;
      swift_getAssociatedConformanceWitness();
      v28 = Ref.init(id:)(&v57, &v58);
      v29 = v58.n128_u64[1];
      v52 = v58.n128_u64[0];
      v30 = v56;
      v31 = v54;
      (*(v18 + 16))(v21, v56, v54, v28);
      sub_1ADDD86D8(v27, v26);
      swift_dynamicCast();
      v57.n128_u64[0] = v52;
      v57.n128_u64[1] = v29;
      sub_1ADECCBCC(v17, &v57, v14);
      (*(v46 + 8))(v17, v14);

      return (*(v18 + 8))(v30, v31);
    }

    v43 = *v3;
    v42 = v4[1];
    v57.n128_u64[0] = v43;
    v57.n128_u64[1] = v42;
    v35 = v52;
    swift_getAssociatedConformanceWitness();
    v44 = Ref.init(id:)(&v57, &v58);
    v45 = v58;
    v38 = v56;
    v39 = v54;
    (*(v18 + 16))(v21, v56, v54, v44);
    sub_1ADDD86D8(v43, v42);
    v40 = v50;
    swift_dynamicCast();
    v57 = v45;
    sub_1ADECCBCC(v40, &v57, v35);
    v41 = v51;
  }

  (*(v41 + 8))(v40, v35);

  return (*(v18 + 8))(v38, v39);
}

uint64_t sub_1ADEE2E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_2();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_2, &associated type descriptor for Tagged_2.AnyType, sub_1ADEE2870);
}

uint64_t SharedTagged_2.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_2, &associated type descriptor for Tagged_2.AnyType, sub_1ADEE2870);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_2.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  SharedTagged_2.subscript.getter(a2, a3);
  return sub_1ADEE3098;
}

void sub_1ADEE30D4(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = (*a1)[5];
  v10 = (*a1)[6];
  v11 = (*a1)[3];
  v12 = (*a1)[4];
  v14 = (*a1)[1];
  v13 = (*a1)[2];
  v15 = **a1;
  if (a2)
  {
    (*(v12 + 16))((*a1)[5], v10, v11);

    a6(v9, v15, v14, a3, a4, a5);

    v16 = *(v12 + 8);
    v16(v9, v11);
    v16(v10, v11);
  }

  else
  {
    v17 = **a1;

    a6(v10, v15, v14, a3, a4, a5);

    (*(v12 + 8))(v10, v11);
  }

  free(v10);
  free(v9);

  free(v8);
}

uint64_t sub_1ADEE3268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t *, uint64_t, uint64_t)@<X5>, uint64_t a4@<X8>)
{
  v25 = a3;
  v5 = v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  v17 = *a1;
  if (!*(v17 + 16))
  {
    return (*(*(a2 - 8) + 16))(a4, v5, a2, v14);
  }

  v18 = sub_1ADDD878C(*v5, v5[1], MEMORY[0x1E6969048], sub_1ADDDE7F8);
  if ((v19 & 1) == 0)
  {
    return (*(*(a2 - 8) + 16))(a4, v5, a2, v14);
  }

  v20 = (*(v17 + 56) + 16 * v18);
  v21 = *v20;
  v22 = v20[1];
  (*(v12 + 16))(v16, v5 + *(a2 + 36), v11);
  AssociatedTypeWitness = v21;
  AssociatedConformanceWitness = v22;
  v25(v16, &AssociatedTypeWitness, v10, v9);
  return sub_1ADDD86D8(v21, v22);
}

uint64_t sub_1ADEE3494(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1AE23E31C();
  a2(v5, a1);
  return sub_1AE23E34C();
}

uint64_t (*SharedTagged_3.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_3.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_3.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_3.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_3.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_3, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_3, a5);
}

uint64_t SharedTagged_3.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_3();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_3();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_3();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_3.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_3();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_3();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_3();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_3.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_3();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_3();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_3();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_3.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_3() + 36);
  v5 = *(type metadata accessor for SharedTagged_3() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_3.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t SharedTagged_3.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_3.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_3.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] >= 3)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_3.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_3.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v50 = a1;
  v51 = a3;
  v53 = a5;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = v45 - v12;
  v46 = swift_getAssociatedTypeWitness();
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45[1] = v45 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45[0] = v45 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = *(a2 + 36);
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55.n128_u64[0] = v21;
  v55.n128_u64[1] = AssociatedConformanceWitness;
  v56 = &protocol witness table for Int;
  v57 = MEMORY[0x1E69E6540];
  v23 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v23, &v58);
  v52 = a4;
  v49 = a4 + 8;
  if (v58 == 2)
  {
    v35 = v6[1];
    v54.n128_u64[0] = *v6;
    v34 = v54.n128_u64[0];
    v54.n128_u64[1] = v35;
    v36 = v46;
    v37 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v54, &v55);
    v54 = v55;
    v38 = v52;
    v39 = *(v52 + 8);
    sub_1ADDD86D8(v34, v35);
    v39(&v54, v36, v37, v51, v38);
    sub_1ADDCC35C(v54.n128_i64[0], v54.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else if (v58 == 1)
  {
    v30 = v6[1];
    v54.n128_u64[0] = *v6;
    v29 = v54.n128_u64[0];
    v54.n128_u64[1] = v30;
    v31 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v54, &v55);
    v54 = v55;
    v32 = v52;
    v33 = *(v52 + 8);
    sub_1ADDD86D8(v29, v30);
    v33(&v54, v15, v31, v51, v32);
    sub_1ADDCC35C(v54.n128_i64[0], v54.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v25 = v6[1];
    v54.n128_u64[0] = *v6;
    v24 = v54.n128_u64[0];
    v54.n128_u64[1] = v25;
    if (v58)
    {
      v40 = AssociatedTypeWitness;
      v41 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v54, &v55);
      v54 = v55;
      v42 = v52;
      v43 = *(v52 + 8);
      sub_1ADDD86D8(v24, v25);
      v43(&v54, v40, v41, v51, v42);
    }

    else
    {
      v26 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v54, &v55);
      v54 = v55;
      v27 = v52;
      v28 = *(v52 + 8);
      sub_1ADDD86D8(v24, v25);
      v28(&v54, v18, v26, v51, v27);
    }

    sub_1ADDCC35C(v54.n128_i64[0], v54.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE5DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v40 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37[3] = v37 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v37[2] = v37 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37[1] = v37 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = *(a2 + 36);
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42.n128_u64[0] = v19;
  v42.n128_u64[1] = AssociatedConformanceWitness;
  v43 = &protocol witness table for Int;
  v44 = MEMORY[0x1E69E6540];
  v21 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v21, &v45);
  if (v45 == 2)
  {
    v31 = v3[1];
    v41.n128_u64[0] = *v4;
    v30 = v41.n128_u64[0];
    v41.n128_u64[1] = v31;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v41, &v42);
    v32 = v42;
    v41 = v42;
    sub_1ADDD86D8(v30, v31);
    v33 = type metadata accessor for Ref();
    sub_1AE002018(v39, v33);
    sub_1ADDCC35C(v32.n128_i64[0], v32.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else if (v45 == 1)
  {
    v27 = v3[1];
    v41.n128_u64[0] = *v3;
    v26 = v41.n128_u64[0];
    v41.n128_u64[1] = v27;
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v41, &v42);
    v28 = v42;
    v41 = v42;
    sub_1ADDD86D8(v26, v27);
    v29 = type metadata accessor for Ref();
    sub_1AE002018(v39, v29);
    sub_1ADDCC35C(v28.n128_i64[0], v28.n128_u64[1]);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    v23 = v3[1];
    v41.n128_u64[0] = *v4;
    v22 = v41.n128_u64[0];
    v41.n128_u64[1] = v23;
    if (v45)
    {
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v41, &v42);
      v34 = v42;
      v41 = v42;
      sub_1ADDD86D8(v22, v23);
      v35 = type metadata accessor for Ref();
      sub_1AE002018(v39, v35);
      sub_1ADDCC35C(v34.n128_i64[0], v34.n128_u64[1]);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v41, &v42);
      v24 = v42;
      v41 = v42;
      sub_1ADDD86D8(v22, v23);
      v25 = type metadata accessor for Ref();
      sub_1AE002018(v39, v25);
      sub_1ADDCC35C(v24.n128_i64[0], v24.n128_u64[1]);
    }

    swift_getAssociatedTypeWitness();
  }

  return swift_dynamicCast();
}

uint64_t sub_1ADEE6350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a2;
  v67 = a1;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v63 = AssociatedTypeWitness;
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v54 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v54 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v54 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v54 = *(v17 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - v19;
  v65 = swift_getAssociatedTypeWitness();
  v21 = *(v65 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v24 = &v54 - v23;
  v25 = *(a3 + 36);
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69.n128_u64[0] = v26;
  v69.n128_u64[1] = AssociatedConformanceWitness;
  v70 = &protocol witness table for Int;
  v71 = MEMORY[0x1E69E6540];
  v28 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v28, &v72);
  v29 = v21;
  v64 = v21 + 16;
  switch(v72)
  {
    case 2:
      v46 = v3[1];
      v68.n128_u64[0] = *v4;
      v47 = v68.n128_u64[0];
      v68.n128_u64[1] = v46;
      v39 = v60;
      swift_getAssociatedConformanceWitness();
      v48 = Ref.init(id:)(&v68, &v69);
      v49 = v69;
      v42 = v67;
      v43 = v65;
      (*(v29 + 16))(v24, v67, v65, v48);
      sub_1ADDD86D8(v47, v46);
      v44 = v58;
      swift_dynamicCast();
      v68 = v49;
      sub_1ADECCBCC(v44, &v68, v39);
      v45 = v59;
      break;
    case 1:
      v37 = v3[1];
      v68.n128_u64[0] = *v4;
      v38 = v68.n128_u64[0];
      v68.n128_u64[1] = v37;
      v39 = v57;
      swift_getAssociatedConformanceWitness();
      v40 = Ref.init(id:)(&v68, &v69);
      v41 = v69;
      v42 = v67;
      v43 = v65;
      (*(v29 + 16))(v24, v67, v65, v40);
      sub_1ADDD86D8(v38, v37);
      v44 = v55;
      swift_dynamicCast();
      v68 = v41;
      sub_1ADECCBCC(v44, &v68, v39);
      v45 = v56;
      break;
    case 0:
      v30 = v3[1];
      v68.n128_u64[0] = *v4;
      v31 = v68.n128_u64[0];
      v68.n128_u64[1] = v30;
      swift_getAssociatedConformanceWitness();
      v32 = Ref.init(id:)(&v68, &v69);
      v33 = v69.n128_u64[1];
      v63 = v69.n128_u64[0];
      v34 = v67;
      v35 = v65;
      (*(v29 + 16))(v24, v67, v65, v32);
      sub_1ADDD86D8(v31, v30);
      swift_dynamicCast();
      v68.n128_u64[0] = v63;
      v68.n128_u64[1] = v33;
      sub_1ADECCBCC(v20, &v68, v17);
      (*(v54 + 8))(v20, v17);

      return (*(v29 + 8))(v34, v35);
    default:
      v50 = v3[1];
      v68.n128_u64[0] = *v4;
      v51 = v68.n128_u64[0];
      v68.n128_u64[1] = v50;
      v39 = v63;
      swift_getAssociatedConformanceWitness();
      v52 = Ref.init(id:)(&v68, &v69);
      v53 = v69;
      v42 = v67;
      v43 = v65;
      (*(v29 + 16))(v24, v67, v65, v52);
      sub_1ADDD86D8(v51, v50);
      v44 = v61;
      swift_dynamicCast();
      v68 = v53;
      sub_1ADECCBCC(v44, &v68, v39);
      v45 = v62;
      break;
  }

  (*(v45 + 8))(v44, v39);

  return (*(v29 + 8))(v42, v43);
}

uint64_t sub_1ADEE6A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = type metadata accessor for SharedTagged_3();

  sub_1ADF4A990(a1, v7, v8, &protocol requirements base descriptor for Tagged_3, &associated type descriptor for Tagged_3.AnyType, sub_1ADEE6350);
}

uint64_t SharedTagged_3.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF4A990(a1, a2, a3, &protocol requirements base descriptor for Tagged_3, &associated type descriptor for Tagged_3.AnyType, sub_1ADEE6350);

  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 8);

  return v8(a1, AssociatedTypeWitness);
}

void (*SharedTagged_3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v9[4] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v9[6] = v15;
  SharedTagged_3.subscript.getter(a2, a3);
  return sub_1ADEE6CC4;
}

uint64_t SharedTagged_3.visitReferences(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 36);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v18.n128_u64[0] = swift_getAssociatedTypeWitness();
  v18.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v19 = &protocol witness table for Int;
  v20 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v21);
  v10 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *v3;
  v11 = v3[1];
  v17.n128_u64[0] = v12;
  v17.n128_u64[1] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v17, &v18);
  v17 = v18;
  v15 = *(v9 + 16);
  sub_1ADDD86D8(v12, v11);
  v15(&v17, AssociatedTypeWitness, AssociatedConformanceWitness, v10, v9);
  return sub_1ADDCC35C(v17.n128_i64[0], v17.n128_u64[1]);
}

uint64_t sub_1ADEE6FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_3.init(from:)(a1, a3);
}

uint64_t SharedTagged_3.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for SharedTagged_3() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x80000001AE25FC60;
        *(v40 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_53:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v39 = type metadata accessor for CRExtensible();
        return (*(*(v39 - 8) + 8))(a2 + v44, v39);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_57;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  switch(v48)
  {
    case 2:
      if (v34)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    case 1:
      if (v34)
      {
        goto LABEL_51;
      }

      goto LABEL_58;
    case 0:
      if (v34)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
  }

  if (v34)
  {
LABEL_51:
    v35 = swift_getAssociatedTypeWitness();
    v37 = *(a2 + 8);
    *&v45 = *a2;
    v36 = v45;
    *(&v45 + 1) = v37;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v36, v37);
    v38 = swift_getAssociatedConformanceWitness();
    v41(v35, &v45, a1, 0, v35, v38);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_53;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t (*SharedTagged_4.tag.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t SharedTagged_4.init(_:identity:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *a2;
  return SharedTagged_4.init(_:id:)(a1, &v6, a3, a4, a5);
}

{
  v6 = *a2;
  return SharedTagged_4.init(_:id:)(a1, &v6, a3, a4, a5);
}

uint64_t SharedTagged_4.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  return sub_1ADF432AC(a1, a2, a3, a4, type metadata accessor for SharedTagged_4, a5);
}

{
  return sub_1ADF4341C(a1, a2, a3, a4, type metadata accessor for SharedTagged_4, a5);
}

uint64_t SharedTagged_4.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 0;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_4();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 1;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_4();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 2;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_4();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v27 = AssociatedTypeWitness;
  *(&v27 + 1) = AssociatedConformanceWitness;
  v28 = &protocol witness table for Int;
  v29 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v24 = a1;
  v15 = *(a1 + 32);
  v26 = xmmword_1AE2427C0;
  v16 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  v17 = v25;
  sub_1ADEAFD1C(a2, v16, &v27);

  *v17 = v27;
  *&v27 = 3;
  sub_1AE23CF7C();
  v18 = *(AssociatedTypeWitness - 8);
  result = (*(v18 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v16 - 8) + 8))(a2, v16);

    (*(v18 + 32))(v14, v9, AssociatedTypeWitness);
    v20 = v23;
    swift_storeEnumTagMultiPayload();
    v21 = type metadata accessor for SharedTagged_4();
    return (*(v22 + 32))(&v17[*(v21 + 36)], v14, v20);
  }

  return result;
}

uint64_t SharedTagged_4.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 0;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 1;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 2;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = AssociatedConformanceWitness;
  v36 = &protocol witness table for Int;
  v37 = MEMORY[0x1E69E6540];
  v10 = type metadata accessor for CRExtensible();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v31 = a1;
  v19 = *(a1 + 32);
  v34 = v14;
  v35 = v15;
  v26 = v17;
  v27 = v16;
  v36 = v16;
  v37 = v17;
  v28 = v18;
  v38 = v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1ADEAEE48(&v34);
  v20 = v33;

  *v20 = v14;
  v20[1] = v15;
  v34 = 3;
  sub_1ADDD86D8(v14, v15);
  sub_1AE23CF7C();
  v21 = *(AssociatedTypeWitness - 8);
  result = (*(v21 + 48))(v9, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v14, v15);
    sub_1ADDCC35C(v27, v26);

    (*(v21 + 32))(v13, v9, AssociatedTypeWitness);
    v23 = v30;
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for SharedTagged_4();
    return (*(v29 + 32))(v20 + *(v24 + 36), v13, v23);
  }

  return result;
}

uint64_t SharedTagged_4.init<A>(_:_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 0;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_4();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 1;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_4();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 2;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_4();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = AssociatedTypeWitness;
  *(&v31 + 1) = AssociatedConformanceWitness;
  v32 = &protocol witness table for Int;
  v33 = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CRExtensible();
  v23 = *(v11 - 8);
  v24 = v11;
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = a3[1];
  v25 = a1;
  v17 = *(a1 + 32);
  v29 = v15;
  v30 = v16;

  sub_1ADDD86D8(v15, v16);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ADEAFD1C(v27, v18, &v31);

  sub_1ADDE1588(v29, v30);
  *v28 = v31;
  *&v31 = 3;
  sub_1AE23CF7C();
  v19 = *(AssociatedTypeWitness - 8);
  result = (*(v19 + 48))(v10, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v18 - 8) + 8))(v27, v18);
    sub_1ADDCC35C(v15, v16);

    (*(v19 + 32))(v14, v10, AssociatedTypeWitness);
    v21 = v24;
    swift_storeEnumTagMultiPayload();
    v22 = type metadata accessor for SharedTagged_4();
    return (*(v23 + 32))(&v28[*(v22 + 36)], v14, v21);
  }

  return result;
}

uint64_t SharedTagged_4.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for WeakTagged_4() + 36);
  v5 = *(type metadata accessor for SharedTagged_4() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CRExtensible();
  return (*(*(v6 - 8) + 32))(&a2[v5], &a1[v4], v6);
}

uint64_t SharedTagged_4.tagged1.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0])
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    v12 = *v2;
    v13 = v3[1];
    v14.n128_u64[0] = v12;
    v14.n128_u64[1] = v13;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v11 = v15.n128_u64[1];
    v10 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v12, v13);
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t SharedTagged_4.tagged2.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 1)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_4.tagged3.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 2)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_4.tagged4.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_u64[0] == 3)
  {
    v10 = *v2;
    v11 = v3[1];
    v14.n128_u64[0] = v10;
    v14.n128_u64[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15.n128_u64[1];
    v12 = v15.n128_u64[0];
    result = sub_1ADDD86D8(v10, v11);
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t SharedTagged_4.unknown.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v15.n128_u64[0] = swift_getAssociatedTypeWitness();
  v15.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v16 = &protocol witness table for Int;
  v17 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v8, &v15);
  if (v15.n128_i64[0] >= 4)
  {
    v11 = *v2;
    v12 = v3[1];
    v14.n128_u64[0] = v11;
    v14.n128_u64[1] = v12;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v14, &v15);
    v13 = v15;
    result = sub_1ADDD86D8(v11, v12);
    v10 = v13;
  }

  else
  {
    v10 = xmmword_1AE2427C0;
  }

  *a2 = v10;
  return result;
}

uint64_t SharedTagged_4.any.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v12.n128_u64[0] = swift_getAssociatedTypeWitness();
  v12.n128_u64[1] = swift_getAssociatedConformanceWitness();
  v13 = &protocol witness table for Int;
  v14 = MEMORY[0x1E69E6540];
  v8 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v8, &v15);
  v9 = *v2;
  v10 = v3[1];
  v12.n128_u64[0] = v9;
  v12.n128_u64[1] = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  a2[1].n128_u64[1] = type metadata accessor for Ref();
  a2[2].n128_u64[0] = swift_getWitnessTable();
  Ref.init(id:)(&v12, a2);
  return sub_1ADDD86D8(v9, v10);
}

uint64_t SharedTagged_4.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v54 = a1;
  v55 = a3;
  v57 = a5;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = v47 - v12;
  v50 = swift_getAssociatedTypeWitness();
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v47 - v14;
  v48 = swift_getAssociatedTypeWitness();
  v15 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47[1] = v47 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v47[0] = v47 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = *(a2 + 36);
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59.n128_u64[0] = v23;
  v59.n128_u64[1] = AssociatedConformanceWitness;
  v60 = &protocol witness table for Int;
  v61 = MEMORY[0x1E69E6540];
  v25 = type metadata accessor for CRExtensible();
  CRExtensible.rawValue.getter(v25, &v62);
  v56 = a4;
  v53 = a4 + 8;
  if (v62 > 1)
  {
    if (v62 == 2)
    {
      v41 = *v6;
      v40 = v6[1];
      v58.n128_u64[0] = v41;
      v58.n128_u64[1] = v40;
      v42 = v48;
      v43 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v58, &v59);
      v58 = v59;
      v44 = v56;
      v45 = *(v56 + 8);
      sub_1ADDD86D8(v41, v40);
      v45(&v58, v42, v43, v55, v44);
      goto LABEL_12;
    }

    if (v62 == 3)
    {
      v32 = *v6;
      v31 = v6[1];
      v58.n128_u64[0] = v32;
      v58.n128_u64[1] = v31;
      v17 = v50;
      v28 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v58, &v59);
      v58 = v59;
      v29 = v56;
      v30 = *(v56 + 8);
      sub_1ADDD86D8(v32, v31);
      goto LABEL_9;
    }

LABEL_8:
    v34 = *v6;
    v33 = v6[1];
    v58.n128_u64[0] = v34;
    v58.n128_u64[1] = v33;
    v17 = AssociatedTypeWitness;
    v28 = swift_getAssociatedConformanceWitness();
    Ref.init(id:)(&v58, &v59);
    v58 = v59;
    v29 = v56;
    v30 = *(v56 + 8);
    sub_1ADDD86D8(v34, v33);
    goto LABEL_9;
  }

  if (v62)
  {
    if (v62 == 1)
    {
      v27 = *v6;
      v26 = v6[1];
      v58.n128_u64[0] = v27;
      v58.n128_u64[1] = v26;
      v28 = swift_getAssociatedConformanceWitness();
      Ref.init(id:)(&v58, &v59);
      v58 = v59;
      v29 = v56;
      v30 = *(v56 + 8);
      sub_1ADDD86D8(v27, v26);
LABEL_9:
      v30(&v58, v17, v28, v55, v29);
LABEL_12:
      sub_1ADDCC35C(v58.n128_i64[0], v58.n128_u64[1]);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    goto LABEL_8;
  }

  v36 = *v6;
  v35 = v6[1];
  v58.n128_u64[0] = v36;
  v58.n128_u64[1] = v35;
  v37 = swift_getAssociatedConformanceWitness();
  Ref.init(id:)(&v58, &v59);
  v58 = v59;
  v38 = v56;
  v39 = *(v56 + 8);
  sub_1ADDD86D8(v36, v35);
  v39(&v58, v20, v37, v55, v38);
  sub_1ADDCC35C(v58.n128_i64[0], v58.n128_u64[1]);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}