id FaceTimeSpamReportManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D33ADD9C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v9 = sub_1D33DDD34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  v66 = sub_1D33AB770();
  v21 = sub_1D335D988();
  v64 = v22;
  v65 = v21;
  [a1 duration];
  v24 = v23;
  v71 = 0;
  v25 = sub_1D33C8614([a1 callStatus]);
  v62 = v26;
  v63 = v25;
  v27 = [a1 initiator];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 value];

LABEL_4:
    v30 = sub_1D33DE7B4();
    v60 = v31;
    v61 = v30;

    goto LABEL_5;
  }

  v29 = [a1 callerId];
  if (v29)
  {
    goto LABEL_4;
  }

  v60 = 0;
  v61 = 0;
LABEL_5:
  v32 = [a1 uniqueId];
  v33 = sub_1D33DE7B4();
  v58 = v34;
  v59 = v33;

  v35 = [a1 date];
  if (v35)
  {
    v36 = v35;
    sub_1D33DDCF4();

    (*(v10 + 56))(v18, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v18, 1, 1, v9);
  }

  sub_1D339E918(v18, v20);
  v37 = (*(v10 + 48))(v20, 1, v9);
  if (v37)
  {
    sub_1D331E880(v20, &qword_1EC760E10, &unk_1D33E1A90);
    v38 = 0;
  }

  else
  {
    (*(v10 + 16))(v13, v20, v9);
    sub_1D331E880(v20, &qword_1EC760E10, &unk_1D33E1A90);
    sub_1D33DDCD4();
    v38 = v39;
    (*(v10 + 8))(v13, v9);
  }

  v70 = v37 != 0;
  if (a2)
  {
    v40 = [a2 firstName];
    v41 = sub_1D33DE7B4();
    v43 = v42;

    v44 = [a2 lastName];
    v45 = sub_1D33DE7B4();
    v47 = v46;

    v48 = [a2 recordID];
    v49 = sub_1D33DE7B4();
    v51 = v50;
  }

  else
  {

    v41 = 0;
    v43 = 0;
    v45 = 0;
    v47 = 0;
    v49 = 0;
    v51 = 0;
  }

  v52 = v71;
  v53 = v70;
  *a6 = v66;
  *(a6 + 8) = v65;
  *(a6 + 16) = v64;
  *(a6 + 24) = v24;
  *(a6 + 32) = v52;
  *(a6 + 33) = 0;
  v54 = v62;
  *(a6 + 40) = v63;
  *(a6 + 48) = v54;
  v55 = v68;
  *(a6 + 56) = v67;
  *(a6 + 64) = v55;
  v56 = v60;
  *(a6 + 72) = v61;
  *(a6 + 80) = v56;
  v57 = v58;
  *(a6 + 88) = v59;
  *(a6 + 96) = v57;
  *(a6 + 104) = v38;
  *(a6 + 112) = v53;
  *(a6 + 120) = 0xD000000000000010;
  *(a6 + 128) = 0x80000001D33E6240;
  *(a6 + 136) = v41;
  *(a6 + 144) = v43;
  *(a6 + 152) = v45;
  *(a6 + 160) = v47;
  *(a6 + 168) = v49;
  *(a6 + 176) = v51;
  *(a6 + 184) = v69;
}

uint64_t sub_1D33AE24C@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char **a6@<X8>)
{
  v78 = a6;
  v79 = a5;
  v76 = a3;
  v77 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v70 - v10;
  v12 = sub_1D33DDDB4();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D33C8784();
  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v74 = v11;
    v75 = a2;
    v80 = a1;
    if (!i)
    {
      break;
    }

    v18 = 0;
    v81 = v16 & 0xC000000000000001;
    a2 = (v16 & 0xFFFFFFFFFFFFFF8);
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v81)
      {
        v20 = MEMORY[0x1D38B75D0](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v20 = *(v16 + 8 * v18 + 32);
      }

      a1 = v20;
      v11 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = [v20 value];
      v22 = sub_1D33DE7B4();
      v24 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D3359DD4(0, *(v19 + 2) + 1, 1, v19);
      }

      v26 = *(v19 + 2);
      v25 = *(v19 + 3);
      a1 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v19 = sub_1D3359DD4((v25 > 1), v26 + 1, 1, v19);
      }

      *(v19 + 2) = a1;
      v27 = &v19[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      ++v18;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v28 = 0;
  v83 = 1;
  v29 = v80;
  v31 = *v80;
  v30 = v80[1];
  v32 = *(v80 + 32);
  v33 = v74;
  if (v32 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << v32) & 0x1B0) != 0)
  {
    v34 = 0;
    goto LABEL_28;
  }

  if (v32 == 3 || v32 == 6)
  {
    v31 = v80[1];
  }

  else
  {
LABEL_23:
    v34 = 0;
    if (v32 < 2)
    {
      goto LABEL_28;
    }
  }

  v35 = v31;
  v36 = sub_1D33DE124();

  if (v36)
  {
    v37 = [v36 value];

    v28 = sub_1D33DE7B4();
    v34 = v38;
  }

  else
  {
    v28 = 0;
    v34 = 0;
  }

  v32 = *(v29 + 32);
  v31 = *v29;
  v30 = *(v29 + 8);
LABEL_28:
  v39 = 0;
  if (v32 <= 8)
  {
    if (((1 << v32) & 0x1B0) != 0)
    {
      v40 = 0;
      goto LABEL_35;
    }

    if (v32 == 3 || v32 == 6)
    {
      goto LABEL_34;
    }
  }

  v30 = v31;
  v40 = 0;
  if (v32 >= 2)
  {
LABEL_34:
    v41 = v30;
    v42 = v71;
    sub_1D33DE184();

    v39 = sub_1D33DDD54();
    v40 = v43;
    (*(v72 + 8))(v42, v73);
  }

LABEL_35:
  v73 = v39;
  v81 = v34;
  RecentsItem.date.getter(v33);
  v44 = sub_1D33DDD34();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v33, 1, v44);
  if (v46 == 1)
  {
    sub_1D331E880(v33, &qword_1EC760E10, &unk_1D33E1A90);
    v47 = 0;
  }

  else
  {
    sub_1D33DDCD4();
    v47 = v48;
    (*(v45 + 8))(v33, v44);
  }

  v74 = v40;
  v82 = v46 == 1;
  v49 = v75;
  if (v75)
  {
    v50 = [v75 firstName];
    v51 = sub_1D33DE7B4();
    v53 = v52;

    v54 = [v49 lastName];
    v55 = sub_1D33DE7B4();
    v57 = v56;

    v58 = v28;
    v59 = [v49 recordID];
    v60 = sub_1D33DE7B4();
    v62 = v61;

    v28 = v58;
  }

  else
  {
    v51 = 0;
    v53 = 0;
    v55 = 0;
    v57 = 0;
    v60 = 0;
    v62 = 0;
  }

  result = sub_1D332B2E8(v80);
  v64 = v83;
  v65 = v82;
  v66 = v78;
  *v78 = v19;
  v66[1] = 0xD000000000000013;
  v66[2] = 0x80000001D33E6260;
  v66[3] = 0;
  *(v66 + 32) = v64;
  *(v66 + 33) = 0;
  v66[5] = 0;
  v66[6] = 0;
  v67 = v77;
  v66[7] = v76;
  v66[8] = v67;
  v68 = v81;
  v66[9] = v28;
  v66[10] = v68;
  v69 = v74;
  v66[11] = v73;
  v66[12] = v69;
  v66[13] = v47;
  *(v66 + 112) = v65;
  v66[15] = 0xD000000000000010;
  v66[16] = 0x80000001D33E6240;
  v66[17] = v51;
  v66[18] = v53;
  v66[19] = v55;
  v66[20] = v57;
  v66[21] = v60;
  v66[22] = v62;
  v66[23] = v79;
  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1D33AE880(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1D33AE8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D33AE988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = type metadata accessor for RecentsItem(0);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v42 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v45 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - v26;
  sub_1D3325720(a1, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761080, &qword_1D33E1B00);
  v28 = swift_dynamicCast();
  v29 = v16[7];
  if ((v28 & 1) == 0)
  {
    v29(v14, 1, 1, v15);
    v37 = v14;
LABEL_9:
    result = sub_1D331E880(v37, &unk_1EC760EE0, &qword_1D33E4CE0);
    v38 = v47;
    *(v47 + 32) = 0;
    *v38 = 0u;
    v38[1] = 0u;
    return result;
  }

  v29(v14, 0, 1, v15);
  sub_1D33302BC(v14, v27);
  sub_1D3325720(v46, &v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29(v12, 1, 1, v15);
    sub_1D33379F4(v27, type metadata accessor for RecentsItem);
    v37 = v12;
    goto LABEL_9;
  }

  v29(v12, 0, 1, v15);
  v30 = v12;
  v31 = v45;
  sub_1D33302BC(v30, v45);
  sub_1D332A828(v27, v23);
  sub_1D332A828(v31, v20);
  v32 = v44;
  RecentsItem.init(recentConversationItem:linkItem:)(v23, v20, v44);
  v33 = v16[6];
  if (v33(v32, 1, v15) != 1)
  {
    *(&v49 + 1) = v15;
    v50 = &off_1F4EE6FD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    sub_1D33302BC(v32, boxed_opaque_existential_1);
    sub_1D33379F4(v31, type metadata accessor for RecentsItem);
    sub_1D33379F4(v27, type metadata accessor for RecentsItem);
    return sub_1D331E6AC(&v48, v47);
  }

  sub_1D331E880(v32, &unk_1EC760EE0, &qword_1D33E4CE0);
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  sub_1D332A828(v27, v23);
  sub_1D332A828(v31, v20);
  v34 = v43;
  RecentsItem.init(recentHistoryItem:linkItem:)(v23, v20, v43);
  if (v33(v34, 1, v15) == 1)
  {
    sub_1D33379F4(v31, type metadata accessor for RecentsItem);
    sub_1D33379F4(v27, type metadata accessor for RecentsItem);
    result = sub_1D331E880(v34, &unk_1EC760EE0, &qword_1D33E4CE0);
    v36 = v47;
    *v47 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0;
    if (!*(&v49 + 1))
    {
      return result;
    }

    return sub_1D331E880(&v48, &qword_1EC761B88, &unk_1D33E4580);
  }

  v40 = v47;
  *(v47 + 24) = v15;
  v40[4] = &off_1F4EE6FD8;
  v41 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_1D33302BC(v34, v41);
  sub_1D33379F4(v31, type metadata accessor for RecentsItem);
  result = sub_1D33379F4(v27, type metadata accessor for RecentsItem);
  if (*(&v49 + 1))
  {
    return sub_1D331E880(&v48, &qword_1EC761B88, &unk_1D33E4580);
  }

  return result;
}

id static ContactToHandleHelper.contactFrom(_:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695CF18]);

  return [v2 _initWithHandle_];
}

unint64_t sub_1D33AEF28()
{
  result = qword_1EC761B90;
  if (!qword_1EC761B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC761B90);
  }

  return result;
}

uint64_t sub_1D33AEF74(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 type];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = [a1 value];
      if (!v4)
      {
        sub_1D33DE7B4();
        v4 = sub_1D33DE784();
      }

      v5 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D33E1DE0;
      *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];
      v7 = &selRef_setPhoneNumbers_;
      goto LABEL_13;
    }

    if (v3 == 3)
    {
      v12 = [a1 value];
      if (v12)
      {
        v5 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1D33E1DE0;
        *(v13 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];
        v7 = &selRef_setEmailAddresses_;
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  else
  {
    if (!v3)
    {

      return 0;
    }

    if (v3 == 1)
    {
      v8 = [a1 value];
      sub_1D33DE7B4();

      v9 = objc_allocWithZone(MEMORY[0x1E695CFA0]);
      v10 = sub_1D33DE784();

      v5 = [v9 initWithUrlString:0 username:v10 userIdentifier:0 service:0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D33E1DE0;
      *(v11 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v5];
      v7 = &selRef_setSocialProfiles_;
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
      v14 = sub_1D33DE8A4();

      [v2 *v7];

      return v2;
    }
  }

  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD000000000000015, 0x80000001D33E7530);
  [a1 type];
  type metadata accessor for CHHandleType(0);
  sub_1D33DF004();
  result = sub_1D33DF0D4();
  __break(1u);
  return result;
}

id sub_1D33AF32C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 handle];
  v6 = [a1 _initWithHandle_];

  return v6;
}

id sub_1D33AF398(NSObject *a1)
{
  v2 = v1;
  v4 = [v2 init];
  v5 = [a1 type];
  if (v5 == 1)
  {
    v13 = [a1 value];
    if (!v13)
    {
      sub_1D33DE7B4();
      v13 = sub_1D33DE784();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E695CFA0]) initWithUrlString:0 username:v13 userIdentifier:0 service:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D33E1DE0;
    *(v14 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v9 = sub_1D33DE8A4();

    [v4 setSocialProfiles_];
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v10 = [a1 value];
    if (!v10)
    {
      sub_1D33DE7B4();
      v10 = sub_1D33DE784();
    }

    v11 = [a1 isoCountryCode];
    v7 = [objc_opt_self() phoneNumberWithDigits:v10 countryCode:v11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D33E1DE0;
    *(v12 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v9 = sub_1D33DE8A4();

    [v4 setPhoneNumbers_];
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v15 = sub_1D33DE464();
    __swift_project_value_buffer(v15, qword_1EDEC1480);
    v16 = a1;
    a1 = sub_1D33DE444();
    v17 = sub_1D33DEAE4();

    if (os_log_type_enabled(a1, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136446210;
      [v16 type];
      type metadata accessor for TUHandleType(0);
      v20 = sub_1D33DE804();
      v22 = sub_1D3328B48(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D331A000, a1, v17, "Unknown default: handle type %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1D38B81C0](v19, -1, -1);
      MEMORY[0x1D38B81C0](v18, -1, -1);

      return v4;
    }

LABEL_13:
    return v4;
  }

  result = [a1 value];
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D33E1DE0;
    *(v8 + 32) = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:0 value:v7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v9 = sub_1D33DE8A4();

    [v4 setEmailAddresses_];
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t ReminderStatus.dueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReminderStatus() + 20);

  return sub_1D33AF9B4(v3, a1);
}

uint64_t sub_1D33AF9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReminderStatus.isOverdue.setter(char a1)
{
  result = type metadata accessor for ReminderStatus();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ReminderStatus.hash(into:)()
{
  v1 = sub_1D33DDD34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  MEMORY[0x1D38B7920](*v0);
  v10 = type metadata accessor for ReminderStatus();
  sub_1D33AF9B4(&v0[*(v10 + 20)], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D33DF2A4();
    sub_1D33B04FC(&unk_1EDEBFD40, MEMORY[0x1E6969530]);
    sub_1D33DE734();
    (*(v2 + 8))(v5, v1);
  }

  v11 = v0[*(v10 + 24)];
  return sub_1D33DF2A4();
}

uint64_t ReminderStatus.hashValue.getter()
{
  v1 = sub_1D33DDD34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](*v0);
  v10 = type metadata accessor for ReminderStatus();
  sub_1D33AF9B4(&v0[*(v10 + 20)], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D33DF2A4();
    sub_1D33B04FC(&unk_1EDEBFD40, MEMORY[0x1E6969530]);
    sub_1D33DE734();
    (*(v2 + 8))(v5, v1);
  }

  v11 = v0[*(v10 + 24)];
  sub_1D33DF2A4();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33AFED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](*v2);
  sub_1D33AF9B4(&v2[*(a2 + 20)], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D33DF2A4();
    sub_1D33B04FC(&unk_1EDEBFD40, MEMORY[0x1E6969530]);
    sub_1D33DE734();
    (*(v5 + 8))(v8, v4);
  }

  v13 = v2[*(a2 + 24)];
  sub_1D33DF2A4();
  return sub_1D33DF2C4();
}

uint64_t _s16CallsAppServices14ReminderStatusV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v25 = type metadata accessor for ReminderStatus();
  v17 = *(v25 + 20);
  v18 = *(v13 + 48);
  sub_1D33AF9B4(&a1[v17], v16);
  sub_1D33AF9B4(&a2[v17], &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D331E880(v16, &qword_1EC760E10, &unk_1D33E1A90);
LABEL_11:
      v20 = a1[*(v25 + 24)] ^ a2[*(v25 + 24)] ^ 1;
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1D33AF9B4(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1D331E880(v16, &qword_1EC761BA0, &qword_1D33E4748);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D33B04FC(&qword_1EC761BA8, MEMORY[0x1E6969530]);
  v22 = sub_1D33DE774();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1D331E880(v16, &qword_1EC760E10, &unk_1D33E1A90);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_1D33B04A8()
{
  result = qword_1EC761B98;
  if (!qword_1EC761B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761B98);
  }

  return result;
}

uint64_t sub_1D33B04FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D33B056C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4 = *(v2 + *a2);
}

uint64_t sub_1D33B0610@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1D33B06C8(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }
}

uint64_t type metadata accessor for CallStatusTextObserver()
{
  result = qword_1EC761C98;
  if (!qword_1EC761C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*CallStatusTextObserver.primaryStatusText.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver___observationRegistrar;
  v4[2] = v1;
  v4[6] = sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v5 = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__primaryStatusSubject;
  v4[7] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__primaryStatusSubject;
  v6 = *(v1 + v5);

  sub_1D33DE4F4();

  v7 = v4[3];
  *v4 = v4[2];
  v4[1] = v7;
  return sub_1D33B0998;
}

uint64_t sub_1D33B09CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v6 = v2;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4 = *(v2 + *a2);

  sub_1D33DE4F4();

  return v6;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v7 = *a2;

  return sub_1D33B06C8(v8, a5);
}

uint64_t sub_1D33B0AD4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v6 = *(v5 + *a2);

  sub_1D33DE4F4();

  *a3 = v5;
  a3[1] = v8;
  return result;
}

uint64_t sub_1D33B0BA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v10 = *(v9 + *a6);

  sub_1D33DE4E4();
}

uint64_t sub_1D33B0C84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v6 = *(v4 + *a4);

  sub_1D33DE4E4();
}

void (*CallStatusTextObserver.secondaryStatusText.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver___observationRegistrar;
  v4[2] = v1;
  v4[6] = sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v5 = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__secondaryStatusSubject;
  v4[7] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__secondaryStatusSubject;
  v6 = *(v1 + v5);

  sub_1D33DE4F4();

  v7 = v4[3];
  *v4 = v4[2];
  v4[1] = v7;
  return sub_1D33B0E84;
}

void sub_1D33B0E90(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  swift_getKeyPath();
  v6 = v3[4];
  v7 = v3[5];
  v3[2] = v6;
  v8 = v3[6];
  v9 = v3[7];
  if (a2)
  {

    sub_1D33DDED4();

    v10 = *(v6 + v9);
    v3[2] = v5;
    v3[3] = v4;

    sub_1D33DE4E4();

    v11 = v3[1];
  }

  else
  {
    v12 = v3[6];
    sub_1D33DDED4();

    v13 = *(v6 + v9);
    v3[2] = v5;
    v3[3] = v4;

    sub_1D33DE4E4();
  }

  free(v3);
}

uint64_t sub_1D33B0FB8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BE0, &qword_1D33E4778);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  swift_getKeyPath();
  v12 = v2;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v12 = *(v2 + *a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BE8, &qword_1D33E4780);
  sub_1D334CB54(&qword_1EC761BF0, &qword_1EC761BE8, &qword_1D33E4780);
  sub_1D33DE624();
  sub_1D334CB54(&qword_1EC761BF8, &qword_1EC761BE0, &qword_1D33E4778);
  v9 = sub_1D33DE5A4();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t CallStatusTextObserver.call.getter()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D33B126C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1D33B1320(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D33B1350(v2);
}

void sub_1D33B1350(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
    sub_1D33DDEC4();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
  v3 = v2;
  v4 = sub_1D33DEC74();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D33B1500()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration);
}

uint64_t sub_1D33B15A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration);
  return result;
}

uint64_t sub_1D33B1658(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }

  return result;
}

uint64_t sub_1D33B1798(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D33DE4A4();
  sub_1D33B47F0(&unk_1EC760FF0, MEMORY[0x1E695BF10]);

  v6 = sub_1D33DE774();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v3 + v5);
LABEL_7:
  *(v3 + v5) = a1;
}

uint64_t CallStatusTextObserver.retrieveStatus.getter()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v1 = (v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1D331FEDC(v3);
  return v3;
}

uint64_t sub_1D33B1A14@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4 = (v3 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1D33B49F8;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1D331FEDC(v5);
}

uint64_t sub_1D33B1B20(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D33B49F0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D331FEDC(v3);
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDEC4();
  sub_1D331EEDC(v6);
}

uint64_t sub_1D33B1C7C(void *a1, char a2, char a3, void (*a4)(uint64_t *__return_ptr, void **))
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = a1;
  a4(&v7, &v8);

  return v7;
}

uint64_t CallStatusTextObserver.retrieveStatus.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDEC4();
  sub_1D331EEDC(a1);
}

uint64_t sub_1D33B1DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1D331FEDC(a2);
  return sub_1D331EEDC(v6);
}

void (*CallStatusTextObserver.retrieveStatus.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[4] = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D33DDEF4();

  swift_beginAccess();
  return sub_1D33B1FAC;
}

void sub_1D33B1FAC(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1D33DDEE4();

  free(v1);
}

uint64_t sub_1D33B2030()
{
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus);
}

uint64_t sub_1D33B20D8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus);
  return result;
}

uint64_t sub_1D33B2188(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
    sub_1D33DDEC4();
  }

  return result;
}

id CallStatusTextObserver.__allocating_init(call:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D33B45A4(a1);

  return v4;
}

id CallStatusTextObserver.init(call:)(void *a1)
{
  v2 = sub_1D33B45A4(a1);

  return v2;
}

Swift::Void __swiftcall CallStatusTextObserver.updateCallDurationVisibility(showDuration:)(Swift::Bool showDuration)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EC760948 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE464();
    __swift_project_value_buffer(v6, qword_1EC761BB0);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D331A000, v7, v8, "Updating call duration visibility.", v9, 2u);
      MEMORY[0x1D38B81C0](v9, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) == showDuration)
    {
      *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration) = showDuration;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D33DDEC4();
    }

    sub_1D33B2548([v5 status]);
  }
}

void sub_1D33B2548(int a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v20 = a1;
    swift_getKeyPath();
    v6 = v5;
    sub_1D33DDED4();

    v7 = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration;
    v8 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration);
    swift_getKeyPath();
    sub_1D33DDED4();

    v19 = *(v2 + v7);
    swift_getKeyPath();
    sub_1D33DDED4();

    v9 = v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);
      v12 = v6;
      sub_1D331FEDC(v10);
      v10(v12, v8, 0);

      sub_1D331EEDC(v10);
    }

    swift_getKeyPath();
    sub_1D33DDED4();

    v13 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__primaryStatusSubject);

    sub_1D33DE4E4();

    swift_getKeyPath();
    sub_1D33DDED4();

    v14 = *v9;
    if (*v9)
    {
      v15 = *(v9 + 8);
      v16 = v6;
      sub_1D331FEDC(v14);
      v14(v16, v19, 1);

      sub_1D331EEDC(v14);
    }

    swift_getKeyPath();
    sub_1D33DDED4();

    v17 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__secondaryStatusSubject);

    sub_1D33DE4E4();

    if (v20 == 1)
    {
      sub_1D33B356C();
    }

    else
    {
      swift_getKeyPath();
      sub_1D33DDED4();

      if (*(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer))
      {
        v18 = *(v2 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer);

        sub_1D33DE494();
      }

      sub_1D33B1798(0, &OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer);
    }
  }
}

Swift::Void __swiftcall CallStatusTextObserver.startObservingCallStatus()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C20, &qword_1D33E4830);
  v16 = *(v4 - 8);
  v17 = v4;
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  if (qword_1EC760948 != -1)
  {
    swift_once();
  }

  v8 = sub_1D33DE464();
  __swift_project_value_buffer(v8, qword_1EC761BB0);
  v9 = sub_1D33DE444();
  v10 = sub_1D33DEAF4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D331A000, v9, v10, "Start observing call status.", v11, 2u);
    MEMORY[0x1D38B81C0](v11, -1, -1);
  }

  v19 = CallStatusTextObserver.callStatusPublisher.getter();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v12 = sub_1D33DEB94();
  v18 = v12;
  v13 = sub_1D33DEB34();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C28, &unk_1D33E4838);
  sub_1D334CB54(&qword_1EC761C30, &qword_1EC761C28, &unk_1D33E4838);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE604();
  sub_1D331E880(v3, &qword_1EC760F20, &qword_1D33E2290);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D334CB54(&qword_1EC761C38, &qword_1EC761C20, &qword_1D33E4830);
  v14 = v17;
  v15 = sub_1D33DE644();

  (*(v16 + 8))(v7, v14);
  sub_1D33B1798(v15, &OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__callStatusCancellable);
}

uint64_t CallStatusTextObserver.callStatusPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v37 - v2;
  v4 = sub_1D33DEC24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B08, &qword_1D33E4400);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C40, &qword_1D33E4848);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v37 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C48, &qword_1D33E4850);
  v49 = *(v47 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v41 = &v37 - v19;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C50, &qword_1D33E4858);
  v48 = *(v46 - 8);
  v20 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v37 - v21;
  v22 = [objc_opt_self() defaultCenter];
  v23 = *MEMORY[0x1E69D8E08];
  sub_1D33DEC34();

  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v24 = sub_1D33DEB94();
  v50 = v24;
  v25 = sub_1D33DEB34();
  (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
  sub_1D33B47F0(&qword_1EDEC0050, MEMORY[0x1E6969F20]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE604();
  sub_1D331E880(v3, &qword_1EC760F20, &qword_1D33E2290);

  (*(v5 + 8))(v8, v4);
  swift_allocObject();
  v26 = v42;
  swift_unknownObjectWeakInit();
  type metadata accessor for TUCallStatus(0);
  sub_1D334CB54(&qword_1EC761B28, &qword_1EC761B08, &qword_1D33E4400);
  v28 = v38;
  v27 = v39;
  sub_1D33DE5B4();

  (*(v40 + 8))(v13, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761C58, &qword_1D33E4860);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D33E2410;
  swift_getKeyPath();
  v50 = v26;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  *(v29 + 32) = *&v26[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus];
  sub_1D334CB54(&qword_1EC761C68, &qword_1EC761C40, &qword_1D33E4848);
  v30 = v41;
  v31 = v44;
  sub_1D33DE5F4();

  (*(v45 + 8))(v28, v31);
  sub_1D334CB54(&qword_1EC761C70, &qword_1EC761C48, &qword_1D33E4850);
  sub_1D33B47F0(&qword_1EC761C78, type metadata accessor for TUCallStatus);
  v32 = v43;
  v33 = v47;
  sub_1D33DE624();
  (*(v49 + 8))(v30, v33);
  sub_1D334CB54(&qword_1EC761C80, &qword_1EC761C50, &qword_1D33E4858);
  v34 = v46;
  v35 = sub_1D33DE5A4();
  (*(v48 + 8))(v32, v34);
  return v35;
}

void sub_1D33B3474()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
    sub_1D33DDED4();

    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_1D33B2548([v2 status]);

      v1 = v3;
    }
  }
}

uint64_t sub_1D33B356C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CA8, &qword_1D33E49C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  swift_getKeyPath();
  v26 = v0;
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  if (!*(v0 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer))
  {
    sub_1D331DA18(0, &qword_1EC761CB0, 0x1E695DFF0);
    v15 = [objc_opt_self() mainRunLoop];
    v24 = v10;
    v16 = *MEMORY[0x1E695D918];
    v17 = sub_1D33DEC94();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v18 = sub_1D33DEC54();

    sub_1D331E880(v8, &unk_1EC7617E0, &unk_1D33E3210);
    v26 = v18;
    sub_1D33DEC44();
    sub_1D33B47F0(&qword_1EC761CB8, MEMORY[0x1E6969F70]);
    v19 = sub_1D33DE514();

    v26 = v19;
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v20 = sub_1D33DEB94();
    v25 = v20;
    v21 = sub_1D33DEB34();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CC0, &unk_1D33E49D0);
    sub_1D334CB54(&qword_1EC761CC8, &qword_1EC761CC0, &unk_1D33E49D0);
    sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
    sub_1D33DE604();
    sub_1D331E880(v4, &qword_1EC760F20, &qword_1D33E2290);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D334CB54(&qword_1EC761CD0, &qword_1EC761CA8, &qword_1D33E49C8);
    v22 = sub_1D33DE644();

    (*(v24 + 8))(v13, v9);
    return sub_1D33B1798(v22, &OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer);
  }

  return result;
}

void sub_1D33B3A7C(uint64_t a1@<X8>)
{
  sub_1D33DDAD4();
  if (!v22)
  {
    sub_1D331E880(v21, &qword_1EC7616D0, &unk_1D33E2890);
    goto LABEL_18;
  }

  sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v18 = 0;
    v19 = 1;
    goto LABEL_19;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:

    goto LABEL_18;
  }

  v3 = Strong;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v20 callUUID];
  v7 = sub_1D33DE7B4();
  v9 = v8;

  v10 = [v5 callUUID];
  v11 = sub_1D33DE7B4();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D33DF1B4();
  }

  v15 = [v20 remoteParticipantHandles];
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  sub_1D3357A1C(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
  v16 = sub_1D33DEA54();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_1D33DEE14();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  if ((v14 & (v17 == 1)) != 1)
  {

    goto LABEL_18;
  }

  v18 = [v20 status];

  v19 = 0;
LABEL_19:
  *a1 = v18;
  *(a1 + 4) = v19;
}

id CallStatusTextObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallStatusTextObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1D33B3F70(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = CallStatusTextObserver.primaryStatusText.modify(v3);
  return sub_1D33B3FE4;
}

uint64_t sub_1D33B4020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v7 = *(v6 + *a4);

  sub_1D33DE4F4();

  return v6;
}

uint64_t sub_1D33B40F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *v6;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v9 = *(v8 + *a6);

  sub_1D33DE4E4();
}

uint64_t (*sub_1D33B41CC(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = CallStatusTextObserver.secondaryStatusText.modify(v3);
  return sub_1D33B4AD4;
}

uint64_t sub_1D33B42AC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDED4();

  v2 = (v1 + OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_1D331FEDC(v4);
  return v4;
}

uint64_t sub_1D33B4380(uint64_t a1)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1D33B47F0(&qword_1EC761BD0, type metadata accessor for CallStatusTextObserver);
  sub_1D33DDEC4();
  sub_1D331EEDC(a1);
}

uint64_t (*sub_1D33B4468(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = CallStatusTextObserver.retrieveStatus.modify(v3);
  return sub_1D33B4AD4;
}

void sub_1D33B44DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D33B4524()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC761BB0);
  __swift_project_value_buffer(v0, qword_1EC761BB0);
  return sub_1D33DE454();
}

id sub_1D33B45A4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v20 = 0;
  v21 = 0xE000000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BE8, &qword_1D33E4780);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__primaryStatusSubject] = sub_1D33DE504();
  v20 = 0;
  v21 = 0xE000000000000000;
  v8 = *(v5 + 48);
  v9 = *(v5 + 52);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__secondaryStatusSubject] = sub_1D33DE504();
  v10 = OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__call;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__showDuration] = 1;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__callStatusCancellable] = 0;
  *&v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__timer] = 0;
  v11 = &v1[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__retrieveStatus];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_1D33DDF04();
  if (qword_1EC760948 != -1)
  {
    swift_once();
  }

  v12 = sub_1D33DE464();
  __swift_project_value_buffer(v12, qword_1EC761BB0);
  v13 = sub_1D33DE444();
  v14 = sub_1D33DEAF4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D331A000, v13, v14, "Initializing call status text observer.", v15, 2u);
    MEMORY[0x1D38B81C0](v15, -1, -1);
  }

  v16 = a1;
  MEMORY[0x1D38B82A0](&v2[v10]);
  swift_unknownObjectWeakInit();

  v17 = [v16 status];
  *&v2[OBJC_IVAR____TtC16CallsAppServices22CallStatusTextObserver__initialCallStatus] = v17;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1D33B47F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D33B4848()
{
  result = sub_1D33DDF14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t keypath_set_33Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;

  return sub_1D33B1798(v8, a5);
}

uint64_t sub_1D33B49F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 8), *(a1 + 9));
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1D33B4A38()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t static RecentsReminderCache.shared.getter()
{
  if (qword_1EDEBF9C0 != -1)
  {
    swift_once();
  }
}

uint64_t RecentsReminderCache.reminderCache.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1D33B4B8C(uint64_t a1, uint64_t a2)
{
  v106 = sub_1D33DDD34();
  v4 = *(v106 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v86 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v81 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v11 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v107 = &v81 - v12;
  v13 = type metadata accessor for ReminderStatus();
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v81 - v20;
  v103 = sub_1D33DDDB4();
  v94 = *(v103 - 8);
  v21 = *(v94 + 64);
  v22 = MEMORY[0x1EEE9AC00](v103);
  v93 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v81 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CF8, &qword_1D33E4A70);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v27);
  v32 = &v81 - v31;
  v96 = a1;
  v105 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v96 + 16) != *(v105 + 16))
  {
    return 0;
  }

  v85 = v10;
  v33 = 0;
  v34 = *(v96 + 64);
  v82 = v96 + 64;
  v35 = 1 << *(v96 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v81 = (v35 + 63) >> 6;
  v99 = (v94 + 32);
  v87 = v94 + 16;
  v88 = (v94 + 8);
  v38 = (v4 + 48);
  v83 = (v4 + 32);
  v84 = (v4 + 8);
  v39 = &unk_1EC761D00;
  v100 = v19;
  v91 = v29;
  v97 = &v81 - v31;
  while (1)
  {
    if (!v37)
    {
      if (v81 <= v33 + 1)
      {
        v46 = v33 + 1;
      }

      else
      {
        v46 = v81;
      }

      v47 = v46 - 1;
      while (1)
      {
        v48 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v48 >= v81)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_1D33E4A78);
          (*(*(v79 - 8) + 56))(v29, 1, 1, v79);
          v98 = 0;
          v33 = v47;
          goto LABEL_19;
        }

        v49 = *(v82 + 8 * v48);
        ++v33;
        if (v49)
        {
          v98 = (v49 - 1) & v49;
          v45 = __clz(__rbit64(v49)) | (v48 << 6);
          v33 = v48;
          goto LABEL_18;
        }
      }

      __break(1u);
      return result;
    }

    v98 = (v37 - 1) & v37;
    v45 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_18:
    v50 = v96;
    v51 = v94;
    (*(v94 + 16))(v89, *(v96 + 48) + *(v94 + 72) * v45, v103);
    v52 = v90;
    sub_1D332CE34(*(v50 + 56) + *(v101 + 72) * v45, v90, type metadata accessor for ReminderStatus);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_1D33E4A78);
    v54 = *(v53 + 48);
    v29 = v91;
    (*(v51 + 32))();
    sub_1D33B6048(v52, &v29[v54]);
    (*(*(v53 - 8) + 56))(v29, 0, 1, v53);
    v32 = v97;
LABEL_19:
    sub_1D333842C(v29, v32, &qword_1EC761CF8, &qword_1D33E4A70);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_1D33E4A78);
    v56 = (*(*(v55 - 8) + 48))(v32, 1, v55);
    v44 = v56 == 1;
    if (v56 == 1)
    {
      return v44;
    }

    v57 = v39;
    v58 = v38;
    v59 = *(v55 + 48);
    v60 = v93;
    v61 = v103;
    (*v99)(v93, v32, v103);
    v62 = v100;
    sub_1D33B6048(&v32[v59], v100);
    v63 = sub_1D33B926C(v60);
    v65 = v64;
    (*v88)(v60, v61);
    if ((v65 & 1) == 0)
    {
      v80 = v62;
      goto LABEL_35;
    }

    v66 = *(v105 + 56) + *(v101 + 72) * v63;
    v67 = v104;
    sub_1D332CE34(v66, v104, type metadata accessor for ReminderStatus);
    v68 = v67;
    if (*v67 != *v62)
    {
      break;
    }

    v95 = v44;
    v69 = *(v102 + 20);
    v70 = *(v92 + 48);
    v71 = v107;
    sub_1D331E818(&v68[v69], v107, &qword_1EC760E10, &unk_1D33E1A90);
    sub_1D331E818(&v62[v69], v71 + v70, &qword_1EC760E10, &unk_1D33E1A90);
    v38 = v58;
    v72 = *v58;
    if ((*v58)(v71, 1, v106) == 1)
    {
      if (v72(v107 + v70, 1, v106) != 1)
      {
        sub_1D3337A54(v104, type metadata accessor for ReminderStatus);
        sub_1D3337A54(v62, type metadata accessor for ReminderStatus);
LABEL_34:
        sub_1D331E880(v107, &qword_1EC761BA0, &qword_1D33E4748);
        return 0;
      }

      sub_1D331E880(v107, &qword_1EC760E10, &unk_1D33E1A90);
    }

    else
    {
      v73 = v107;
      v74 = v85;
      sub_1D331E818(v107, v85, &qword_1EC760E10, &unk_1D33E1A90);
      if (v72(v73 + v70, 1, v106) == 1)
      {
        sub_1D3337A54(v104, type metadata accessor for ReminderStatus);
        sub_1D3337A54(v100, type metadata accessor for ReminderStatus);
        (*v84)(v74, v106);
        goto LABEL_34;
      }

      v75 = v106;
      v76 = v86;
      (*v83)(v86, v107 + v70, v106);
      sub_1D33B850C(&qword_1EC761BA8, MEMORY[0x1E6969530]);
      v77 = sub_1D33DE774();
      v78 = *v84;
      (*v84)(v76, v75);
      v78(v74, v75);
      v38 = v58;
      sub_1D331E880(v107, &qword_1EC760E10, &unk_1D33E1A90);
      v29 = v91;
      if ((v77 & 1) == 0)
      {
        sub_1D3337A54(v104, type metadata accessor for ReminderStatus);
        v80 = v100;
        goto LABEL_35;
      }
    }

    v40 = v102;
    v41 = v104[*(v102 + 24)];
    sub_1D3337A54(v104, type metadata accessor for ReminderStatus);
    v42 = v100[*(v40 + 24)];
    result = sub_1D3337A54(v100, type metadata accessor for ReminderStatus);
    v43 = v41 == v42;
    v32 = v97;
    v37 = v98;
    v39 = v57;
    v44 = v95;
    if (!v43)
    {
      return v44;
    }
  }

  sub_1D3337A54(v67, type metadata accessor for ReminderStatus);
  v80 = v62;
LABEL_35:
  sub_1D3337A54(v80, type metadata accessor for ReminderStatus);
  return 0;
}

uint64_t sub_1D33B55B8(uint64_t a1)
{
  v2 = v1;
  v80 = sub_1D33DDDC4();
  v4 = *(v80 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D33DDE84();
  v82 = *(v78 - 8);
  v7 = *(v82 + 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D33DDB54();
  v81 = *(v9 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CD8, &unk_1D33E4A60);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - v19;
  v21 = type metadata accessor for ReminderStatus();
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v91 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v69 - v25;
  v26 = sub_1D33DDDB4();
  v90 = *(v26 - 8);
  v27 = *(v90 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v94 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - v30;
  if (qword_1EDEBF058 != -1)
  {
LABEL_26:
    swift_once();
  }

  v32 = sub_1D33DE464();
  __swift_project_value_buffer(v32, qword_1EDEC1440);

  v33 = sub_1D33DE444();
  v34 = sub_1D33DEAF4();

  v35 = os_log_type_enabled(v33, v34);
  v87 = v9;
  v88 = v26;
  v69 = v2;
  if (v35)
  {
    v36 = v4;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v96 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x1D38B6F50](a1, v26);
    v41 = sub_1D3328B48(v39, v40, &v96);
    v9 = v87;

    *(v37 + 4) = v41;
    v26 = v88;
    _os_log_impl(&dword_1D331A000, v33, v34, "Setting cache state to deleted for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1D38B81C0](v38, -1, -1);
    v4 = v36;
    v2 = v69;
    MEMORY[0x1D38B81C0](v37, -1, -1);
  }

  swift_beginAccess();
  v42 = *(v2 + 24);

  sub_1D33DE4F4();

  v2 = *(a1 + 16);
  if (v2)
  {
    v43 = *(v90 + 16);
    v44 = a1 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    a1 = *(v90 + 72);
    v84 = (v81 + 56);
    v83 = (v81 + 48);
    v75 = (v81 + 32);
    v74 = (v4 + 104);
    v73 = (v4 + 8);
    v4 = v43;
    v72 = *MEMORY[0x1E6969868];
    v71 = (v82 + 8);
    v70 = (v81 + 8);
    v90 += 16;
    v81 = v90 - 8;
    v82 = v31;
    while (1)
    {
      (v4)(v31, v44, v26);
      (v4)(v94, v31, v26);
      (*v84)(v20, 1, 1, v9);
      *v93 = 1;
      v46 = v89;
      sub_1D331E818(v20, v89, &qword_1EC761CD8, &unk_1D33E4A60);
      if ((*v83)(v46, 1, v9) == 1)
      {
        v47 = sub_1D33DDD34();
        (*(*(v47 - 8) + 56))(v92, 1, 1, v47);
      }

      else
      {
        v31 = v76;
        (*v75)(v76, v89, v9);
        v49 = v79;
        v48 = v80;
        (*v74)(v79, v72, v80);
        v26 = v77;
        sub_1D33DDDD4();
        (*v73)(v49, v48);
        sub_1D33DDE44();
        (*v71)(v26, v78);
        (*v70)(v31, v9);
      }

      v50 = v86;
      v51 = v93;
      sub_1D333842C(v92, &v93[*(v86 + 20)], &qword_1EC760E10, &unk_1D33E1A90);
      *(v51 + *(v50 + 24)) = 0;
      sub_1D331E880(v20, &qword_1EC761CD8, &unk_1D33E4A60);
      sub_1D33B6048(v51, v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v97;
      v95 = v97;
      v9 = sub_1D33B926C(v94);
      v55 = v53[2];
      v56 = (v54 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v58 = v54;
      if (v53[3] >= v57)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v61 = v95;
          if (v54)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_1D3399FE0();
          v61 = v95;
          if (v58)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1D3397A8C(v57, isUniquelyReferenced_nonNull_native);
        v59 = sub_1D33B926C(v94);
        if ((v58 & 1) != (v60 & 1))
        {
          result = sub_1D33DF1E4();
          __break(1u);
          return result;
        }

        v9 = v59;
        v61 = v95;
        if (v58)
        {
LABEL_6:
          sub_1D33B60AC(v91, v61[7] + *(v85 + 72) * v9);
          v45 = *v81;
          v26 = v88;
          (*v81)(v94, v88);
          v31 = v82;
          v45(v82, v26);
          goto LABEL_7;
        }
      }

      v61[(v9 >> 6) + 8] |= 1 << v9;
      v62 = v94;
      v26 = v88;
      (v4)(v61[6] + v9 * a1, v94, v88);
      sub_1D33B6048(v91, v61[7] + *(v85 + 72) * v9);
      v9 = v81;
      v63 = *v81;
      (*v81)(v62, v26);
      v31 = v82;
      v63(v82, v26);
      v64 = v61[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_25;
      }

      v61[2] = v66;
LABEL_7:
      v97 = v61;
      v44 += a1;
      --v2;
      v9 = v87;
      if (!v2)
      {
        goto LABEL_23;
      }
    }
  }

  v61 = v97;
LABEL_23:
  v67 = *(v69 + 24);
  v95 = v61;

  sub_1D33DE4E4();
  swift_bridgeObjectRelease_n();
}

uint64_t RecentsReminderCache.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t RecentsReminderCache.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D33B6048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33B60AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D33B6110(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for ReminderStatus();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D33DDDB4();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v55 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = a2;
  v20 = *(v17 + 48);
  v21 = *(v62 + 80);
  v61 = a1;
  v22 = (v63 + 32);
  v57 = a1 + ((v21 + 32) & ~v21);
  sub_1D331E818(v57, v19, &qword_1EC761450, &qword_1D33E1B10);
  v23 = *v22;
  (*v22)(v14, v19, v64);
  v58 = v20;
  sub_1D33B6048(&v19[v20], v10);
  v24 = *a3;
  v26 = sub_1D33B926C(v14);
  v27 = v24[2];
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v25;
  if (v24[3] >= v29)
  {
    if (v56)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1D3399FE0();
      if ((v30 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1D3397A8C(v29, v56 & 1);
  v31 = *a3;
  v32 = sub_1D33B926C(v14);
  if ((v30 & 1) == (v33 & 1))
  {
    v26 = v32;
    if ((v30 & 1) == 0)
    {
LABEL_14:
      v36 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v23((v36[6] + *(v63 + 72) * v26), v14, v64);
      sub_1D33B6048(v10, v36[7] + *(v60 + 72) * v26);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v36[2] = v39;
      if (v59 != 1)
      {
        v40 = 1;
        while (v40 < *(v61 + 16))
        {
          sub_1D331E818(v57 + *(v62 + 72) * v40, v19, &qword_1EC761450, &qword_1D33E1B10);
          v41 = *v22;
          (*v22)(v14, v19, v64);
          sub_1D33B6048(&v19[v58], v10);
          v42 = *a3;
          v43 = sub_1D33B926C(v14);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v38 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v38)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_1D3397A8C(v47, 1);
            v49 = *a3;
            v43 = sub_1D33B926C(v14);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v51 = *a3;
          *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v41((v51[6] + *(v63 + 72) * v43), v14, v64);
          sub_1D33B6048(v10, v51[7] + *(v60 + 72) * v52);
          v53 = v51[2];
          v38 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v38)
          {
            goto LABEL_27;
          }

          ++v40;
          v51[2] = v54;
          if (v59 == v40)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v34 = swift_allocError();
    swift_willThrow();
    v67 = v34;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1D3337A54(v10, type metadata accessor for ReminderStatus);
      (*(v63 + 8))(v14, v64);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D33DF1E4();
  __break(1u);
LABEL_29:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD00000000000001BLL, 0x80000001D33E6C30);
  sub_1D33DF004();
  MEMORY[0x1D38B6ED0](39, 0xE100000000000000);
  sub_1D33DF0D4();
  __break(1u);
}

uint64_t sub_1D33B6714(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v69 - v10);
  v12 = sub_1D33DDDB4();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v69 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_1D331E880(v32, &qword_1EC7612B0, qword_1D33E2830);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
    v35 = sub_1D33DE724();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_1D33B850C(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
    v39 = sub_1D33DE774();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_1D331E880(v26, &qword_1EC7612B0, qword_1D33E2830);
        a2 = sub_1D336713C(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_1D33DE724();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_1D33DE774();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_1D33DE774();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_1D33B74D8(v68, v69, v84, v26, &v93);

  MEMORY[0x1D38B81C0](v68, -1, -1);
LABEL_52:
  sub_1D331FEEC();
LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1D33B7178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D00, &qword_1D33E4A78) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10) + 48);
  v6 = sub_1D33DDDB4();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D332CE34(a1 + v4, a2 + v5, type metadata accessor for ReminderStatus);
}

uint64_t sub_1D33B7230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = sub_1D33DE724();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1D33B850C(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
      v22 = sub_1D33DE774();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D3365C5C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1D33B79AC(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1D33B74D8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1D33DDDB4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1D331E880(v12, &qword_1EC7612B0, qword_1D33E2830);
          v48 = v64;

          return sub_1D336713C(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
        v38 = sub_1D33DE724();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1D33B850C(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
        v46 = sub_1D33DE774();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D33B79AC(int64_t a1)
{
  v3 = sub_1D33DDDB4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1D33DED84();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
        v27 = sub_1D33DE724();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_1D33B7CB4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D00, &qword_1D33E4A78);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - v4;
  v5 = type metadata accessor for ReminderStatus();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DDDB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CF8, &qword_1D33E4A70);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v47 = &v45 - v20;
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v50 = v24;
  if (v25)
  {
    v26 = v23;
LABEL_10:
    v46 = (v25 - 1) & v25;
    v30 = __clz(__rbit64(v25)) | (v26 << 6);
    (*(v11 + 16))(v14, *(v22 + 48) + *(v11 + 72) * v30, v10);
    sub_1D332CE34(*(v22 + 56) + *(v6 + 72) * v30, v9, type metadata accessor for ReminderStatus);
    v31 = v9;
    v32 = v49;
    v33 = *(v49 + 48);
    v34 = v47;
    (*(v11 + 32))();
    sub_1D33B6048(v31, v34 + v33);
    v35 = v48;
    (*(v48 + 56))(v34, 0, 1, v32);
    v36 = v46;
    v29 = v26;
LABEL_11:
    *v1 = v22;
    v1[1] = v21;
    v37 = v51;
    v1[2] = v50;
    v1[3] = v29;
    v1[4] = v36;
    v38 = v1[5];
    v39 = v1[6];
    sub_1D333842C(v34, v37, &qword_1EC761CF8, &qword_1D33E4A70);
    v40 = 1;
    v41 = (*(v35 + 48))(v37, 1, v32);
    v42 = v52;
    if (v41 != 1)
    {
      v43 = v45;
      sub_1D333842C(v37, v45, &qword_1EC761D00, &qword_1D33E4A78);
      v38(v43);
      sub_1D331E880(v43, &qword_1EC761D00, &qword_1D33E4A78);
      v40 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
    return (*(*(v44 - 8) + 56))(v42, v40, 1, v44);
  }

  else
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        v34 = v47;
        v35 = v48;
        v32 = v49;
        (*(v48 + 56))(v47, 1, 1, v49);
        v36 = 0;
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D33B8128(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for ReminderStatus();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D33DDDB4();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D08, &qword_1D33E4A80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;

  while (1)
  {
    sub_1D33B7CB4(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D331FEEC();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_1D33B6048(&v20[v28], v57);
    v30 = *a5;
    v32 = sub_1D33B926C(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D3399FE0();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_1D33B60AC(v57, v40[7] + *(v48 + 72) * v32);
      a4 = 1;
    }

    else
    {
      sub_1D3397A8C(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_1D33B926C(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_1D33B6048(v57, v40[7] + *(v48 + 72) * v32);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}

uint64_t sub_1D33B850C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D33B8594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33B4B6C(a1, v4, v5, v6);
}

uint64_t RecentsItem.getReminderStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ReminderStatus();
  v54 = *(v2 - 8);
  v3 = *(v54 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v52 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v51 = v45 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v49 = v45 - v10;
  v11 = sub_1D33DDDB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(sub_1D3337D6C() + 16);

  if (v16)
  {
    if (qword_1EDEBF9C0 != -1)
    {
      swift_once();
    }

    v17 = off_1EDEBF9C8;
    swift_beginAccess();
    v18 = v17[3];

    sub_1D33DE4F4();

    v19 = v55;
    v20 = sub_1D3337D6C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v46 = a1;
      v47 = v2;
      v23 = v12 + 16;
      v22 = *(v12 + 16);
      v24 = *(v23 + 64);
      v45[1] = v20;
      v25 = v20 + ((v24 + 32) & ~v24);
      v26 = *(v23 + 56);
      v27 = (v23 - 8);
      v53 = MEMORY[0x1E69E7CC0];
      v50 = v23;
      v22(v15, v25, v11);
      while (1)
      {
        if (v19[2] && (v28 = sub_1D33B926C(v15), (v29 & 1) != 0))
        {
          v30 = *(v54 + 72);
          v31 = v52;
          sub_1D33B9F3C(v19[7] + v30 * v28, v52);
          (*v27)(v15, v11);
          v32 = v31;
          v33 = v51;
          sub_1D33B6048(v32, v51);
          if (*v33)
          {
            sub_1D33B9FA0(v33);
          }

          else
          {
            v34 = v33;
            v35 = v48;
            sub_1D33B6048(v34, v48);
            sub_1D33B6048(v35, v49);
            v36 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v53 : sub_1D3359B18(0, v53[2] + 1, 1, v53);
            v38 = v36[2];
            v37 = v36[3];
            v39 = (v38 + 1);
            v40 = v54;
            if (v38 >= v37 >> 1)
            {
              v53 = (v38 + 1);
              v36 = sub_1D3359B18(v37 > 1, v38 + 1, 1, v36);
              v39 = v53;
              v40 = v54;
            }

            v36[2] = v39;
            v41 = *(v40 + 80);
            v53 = v36;
            sub_1D33B6048(v49, v36 + ((v41 + 32) & ~v41) + v38 * v30);
          }
        }

        else
        {
          (*v27)(v15, v11);
        }

        v25 += v26;
        if (!--v21)
        {
          break;
        }

        v22(v15, v25, v11);
      }

      a1 = v46;
      v2 = v47;
      v42 = v53;
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    v55 = v42;

    sub_1D33B9E94(&v55);

    if (v55[2])
    {
      sub_1D33B9F3C(v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), a1);

      return (*(v54 + 56))(a1, 0, 1, v2);
    }

    else
    {

      return (*(v54 + 56))(a1, 1, 1, v2);
    }
  }

  else
  {
    v43 = *(v54 + 56);

    return v43(a1, 1, 1, v2);
  }
}

uint64_t _s16CallsAppServices11RecentsItemV012shouldShowInD9RemindersSbvg_0()
{
  v0 = type metadata accessor for ReminderStatus();
  v30 = *(v0 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D33DDDB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(sub_1D3337D6C() + 16);

  if (v8)
  {
    if (qword_1EDEBF9C0 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v9 = off_1EDEBF9C8;
      swift_beginAccess();
      v10 = v9[3];

      sub_1D33DE4F4();

      v11 = v32;
      v12 = sub_1D3337D6C();
      v13 = v12;
      v8 = *(v12 + 16);
      if (!v8)
      {
        break;
      }

      v14 = 0;
      v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v31 = v4 + 16;
      v16 = (v4 + 8);
      v28 = v11;
      while (v14 < *(v13 + 16))
      {
        (*(v4 + 16))(v7, v15 + *(v4 + 72) * v14, v3);
        if (*(v11 + 16) && (v17 = sub_1D33B926C(v7), (v18 & 1) != 0))
        {
          v19 = *(v11 + 56) + *(v30 + 72) * v17;
          v20 = v4;
          v21 = v15;
          v22 = v8;
          v23 = v13;
          v24 = v29;
          sub_1D33B9F3C(v19, v29);
          (*v16)(v7, v3);
          v25 = *v24;
          v26 = v24;
          v13 = v23;
          v8 = v22;
          v15 = v21;
          v4 = v20;
          v11 = v28;
          sub_1D33B9FA0(v26);
          if (!v25)
          {

            v8 = 1;
            goto LABEL_14;
          }
        }

        else
        {
          (*v16)(v7, v3);
        }

        if (v8 == ++v14)
        {

          v8 = 0;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      swift_once();
    }

LABEL_14:
  }

  return v8;
}

uint64_t sub_1D33B8E58(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for ReminderStatus() + 20);
  v17 = *(v12 + 48);
  sub_1D331E818(v28 + v16, v15, &qword_1EC760E10, &unk_1D33E1A90);
  sub_1D331E818(v29 + v16, &v15[v17], &qword_1EC760E10, &unk_1D33E1A90);
  v18 = v3[6];
  if (v18(v15, 1, v2) != 1)
  {
    sub_1D331E818(v15, v11, &qword_1EC760E10, &unk_1D33E1A90);
    if (v18(&v15[v17], 1, v2) == 1)
    {
      v20 = v3[1];
      ++v3;
      v20(v11, v2);
      v19 = 1;
      if (v18(&v15[v17], 1, v2) == 1)
      {
        goto LABEL_7;
      }

      sub_1D33DF1A4();
      __break(1u);
    }

    v21 = v3[4];
    v22 = v26;
    v21(v26, v11, v2);
    v23 = v27;
    v21(v27, &v15[v17], v2);
    v19 = sub_1D33DDCB4();
    v24 = v3[1];
    v24(v23, v2);
    v24(v22, v2);
    goto LABEL_7;
  }

  sub_1D331E880(&v15[v17], &qword_1EC760E10, &unk_1D33E1A90);
  v19 = 0;
LABEL_7:
  sub_1D331E880(v15, &qword_1EC760E10, &unk_1D33E1A90);
  return v19 & 1;
}

unint64_t sub_1D33B9198(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D33DE374();
  v5 = MEMORY[0x1E696EDC8];
  sub_1D33B9FFC(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
  v6 = sub_1D33DE724();
  return sub_1D33B9678(a1, v6, MEMORY[0x1E696EDC8], &qword_1EC7611B0, v5, MEMORY[0x1E696EE10]);
}

unint64_t sub_1D33B926C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D33DDDB4();
  v5 = MEMORY[0x1E69695A8];
  sub_1D33B9FFC(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  v6 = sub_1D33DE724();
  return sub_1D33B9678(a1, v6, MEMORY[0x1E69695A8], &qword_1EDEBFD30, v5, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D33B9340(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D33DEC64();
  return sub_1D33B9DC8(a1, v5, &qword_1EDEBEE90, 0x1E6993578);
}

unint64_t sub_1D33B9390(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = *(v2 + 40);
  sub_1D33DF284();
  sub_1D331E818(a1, v12, &qword_1EC7612B0, qword_1D33E2830);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D33DF2A4();
    sub_1D33B9FFC(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
    sub_1D33DE734();
    (*(v5 + 8))(v8, v4);
  }

  v14 = sub_1D33DF2C4();
  return sub_1D33B9818(a1, v14);
}

unint64_t sub_1D33B95A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D33DEE94();

  return sub_1D33B9C94(a1, v5);
}

unint64_t sub_1D33B95E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D33DF274();

  return sub_1D33B9D5C(a1, v4);
}

unint64_t sub_1D33B9628(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D33DEC64();
  return sub_1D33B9DC8(a1, v5, &qword_1EC761CE0, 0x1E69C6D10);
}

unint64_t sub_1D33B9678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1D33B9FFC(v24, v25);
      v20 = sub_1D33DE774();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1D33B9818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v42 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = (v6 + 48);
    v23 = *(v15 + 72);
    v37 = v16;
    v38 = v23;
    v31 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = (v6 + 8);
    v36 = ~v19;
    while (1)
    {
      sub_1D331E818(*(v42 + 48) + v38 * v20, v18, &qword_1EC7612B0, qword_1D33E2830);
      v24 = *(v40 + 48);
      sub_1D331E818(v18, v11, &qword_1EC7612B0, qword_1D33E2830);
      sub_1D331E818(v41, &v11[v24], &qword_1EC7612B0, qword_1D33E2830);
      v25 = *v22;
      if ((*v22)(v11, 1, v5) == 1)
      {
        break;
      }

      v26 = v37;
      sub_1D331E818(v11, v37, &qword_1EC7612B0, qword_1D33E2830);
      if (v25(&v11[v24], 1, v5) == 1)
      {
        sub_1D331E880(v18, &qword_1EC7612B0, qword_1D33E2830);
        (*v35)(v26, v5);
        v21 = v36;
LABEL_4:
        sub_1D331E880(v11, &qword_1EC761A90, &qword_1D33E3F98);
        goto LABEL_5;
      }

      v27 = &v11[v24];
      v28 = v33;
      (*v32)(v33, v27, v5);
      sub_1D33B9FFC(&qword_1EDEBFD30, MEMORY[0x1E69695A8]);
      v34 = sub_1D33DE774();
      v29 = *v35;
      (*v35)(v28, v5);
      sub_1D331E880(v18, &qword_1EC7612B0, qword_1D33E2830);
      v29(v26, v5);
      v22 = v31;
      sub_1D331E880(v11, &qword_1EC7612B0, qword_1D33E2830);
      v21 = v36;
      if (v34)
      {
        return v20;
      }

LABEL_5:
      v20 = (v20 + 1) & v21;
      if (((*(v39 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return v20;
      }
    }

    sub_1D331E880(v18, &qword_1EC7612B0, qword_1D33E2830);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_1D331E880(v11, &qword_1EC7612B0, qword_1D33E2830);
      return v20;
    }

    goto LABEL_4;
  }

  return v20;
}

unint64_t sub_1D33B9C94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D334CD04(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38B7530](v9, a1);
      sub_1D334CCA0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D33B9D5C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D33B9DC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D331DA18(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D33DEC74();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1D33B9E94(void **a1)
{
  v2 = *(type metadata accessor for ReminderStatus() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D33A93D8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D33BA044(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D33B9F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33B9FA0(uint64_t a1)
{
  v2 = type metadata accessor for ReminderStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D33B9FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D33BA044(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D33DF164();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ReminderStatus();
        v6 = sub_1D33DE8E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ReminderStatus() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D33BA6F8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D33BA170(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D33BA170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v83 = sub_1D33DDD34();
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v83);
  v70 = &v61[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = &v61[-v15];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v61[-v17];
  v78 = type metadata accessor for ReminderStatus();
  v19 = *(*(v78 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v78);
  v74 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v82 = &v61[-v23];
  result = MEMORY[0x1EEE9AC00](v22);
  v81 = &v61[-v26];
  v63 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v25 + 72);
    v68 = (v8 + 32);
    v75 = (v8 + 8);
    v76 = (v8 + 48);
    v29 = v27 + v28 * (a3 - 1);
    v72 = -v28;
    v73 = v27;
    v30 = a1 - a3;
    v62 = v28;
    v31 = v27 + v28 * a3;
    v32 = &qword_1EC760E10;
    v33 = &unk_1D33E1A90;
LABEL_6:
    v66 = v29;
    v67 = a3;
    v64 = v31;
    v65 = v30;
    v34 = v30;
    v35 = v29;
    v36 = v71;
    while (1)
    {
      v79 = v34;
      v80 = v31;
      v37 = v81;
      sub_1D33B9F3C(v31, v81);
      v38 = v33;
      v39 = v32;
      v40 = v82;
      sub_1D33B9F3C(v35, v82);
      v41 = *(v78 + 20);
      v42 = *(v77 + 48);
      sub_1D331E818(&v37[v41], v18, v39, v38);
      v43 = &v40[v41];
      v32 = v39;
      sub_1D331E818(v43, &v18[v42], v39, v38);
      v44 = *v76;
      if ((*v76)(v18, 1, v83) == 1)
      {
        sub_1D331E880(&v18[v42], v39, v38);
        sub_1D331E880(v18, v39, v38);
        sub_1D33B9FA0(v82);
        result = sub_1D33B9FA0(v81);
        v33 = v38;
LABEL_5:
        a3 = v67 + 1;
        v29 = v66 + v62;
        v30 = v65 - 1;
        v31 = v64 + v62;
        if (v67 + 1 == v63)
        {
          return result;
        }

        goto LABEL_6;
      }

      sub_1D331E818(v18, v36, v39, v38);
      if (v44(&v18[v42], 1, v83) == 1)
      {
        v45 = v83;
        (*v75)(v36, v83);
        if (v44(&v18[v42], 1, v45) != 1)
        {
          goto LABEL_17;
        }

        v32 = v39;
        v46 = v39;
        v33 = v38;
        sub_1D331E880(v18, v46, v38);
        sub_1D33B9FA0(v82);
        sub_1D33B9FA0(v81);
        v48 = v79;
        v47 = v80;
      }

      else
      {
        v49 = v69;
        v50 = *v68;
        v51 = v36;
        v52 = v83;
        (*v68)(v69, v51, v83);
        v53 = v70;
        v50(v70, &v18[v42], v52);
        v54 = v75;
        v55 = sub_1D33DDCB4();
        v56 = *v54;
        v57 = v53;
        v58 = v52;
        v36 = v71;
        (*v54)(v57, v58);
        v56(v49, v58);
        v32 = &qword_1EC760E10;
        sub_1D331E880(v18, &qword_1EC760E10, v38);
        sub_1D33B9FA0(v82);
        result = sub_1D33B9FA0(v81);
        v33 = v38;
        v48 = v79;
        v47 = v80;
        if ((v55 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v73)
      {
        break;
      }

      v59 = v74;
      sub_1D33B6048(v47, v74);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D33B6048(v59, v35);
      v35 += v72;
      v31 = v47 + v72;
      v60 = __CFADD__(v48, 1);
      v34 = v48 + 1;
      if (v60)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_17:
    result = sub_1D33DF1A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D33BA6F8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v159 = a1;
  v191 = sub_1D33DDD34();
  v8 = *(v191 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v191);
  v177 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v155 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = &v155 - v18;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v19 = *(*(v183 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v183);
  v186 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v155 - v22;
  v184 = type metadata accessor for ReminderStatus();
  v170 = *(v184 - 8);
  v23 = *(v170 + 64);
  v24 = MEMORY[0x1EEE9AC00](v184);
  v162 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v180 = &v155 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v190 = &v155 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v189 = &v155 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v173 = &v155 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v172 = &v155 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v36);
  v171 = a3;
  if (*(a3 + 8) < 1)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a3 = *v159;
    if (!*v159)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_108;
    }

    goto LABEL_140;
  }

  v39 = *(a3 + 8);
  v156 = &v155 - v37;
  v157 = v38;
  v155 = a4;
  v185 = (v8 + 48);
  v175 = (v8 + 32);
  v181 = v17;
  v182 = (v8 + 8);
  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v40 + 1 >= v39)
    {
      v52 = v40 + 1;
    }

    else
    {
      v174 = v39;
      v42 = *v171;
      a3 = *(v170 + 72);
      v43 = v40;
      v44 = *v171 + a3 * (v40 + 1);
      v45 = v156;
      sub_1D33B9F3C(v44, v156);
      v46 = v157;
      sub_1D33B9F3C(v42 + a3 * v43, v157);
      LODWORD(v187) = sub_1D33B8E58(v45, v46);
      if (v5)
      {
        sub_1D33B9FA0(v46);
        sub_1D33B9FA0(v45);
      }

      sub_1D33B9FA0(v46);
      sub_1D33B9FA0(v45);
      v158 = v43;
      v47 = v43 + 2;
      v48 = v42 + a3 * (v43 + 2);
      v169 = 0;
      v188 = a3;
      v168 = v41;
      while (1)
      {
        v52 = v174;
        if (v174 == v47)
        {
          break;
        }

        v53 = v172;
        sub_1D33B9F3C(v48, v172);
        v54 = v173;
        sub_1D33B9F3C(v44, v173);
        v55 = *(v184 + 20);
        v56 = *(v183 + 48);
        v57 = v53 + v55;
        v58 = v167;
        sub_1D331E818(v57, v167, &qword_1EC760E10, &unk_1D33E1A90);
        v59 = v54 + v55;
        v60 = v185;
        v61 = v58;
        sub_1D331E818(v59, v58 + v56, &qword_1EC760E10, &unk_1D33E1A90);
        v62 = *v60;
        if ((*v60)(v61, 1, v191) == 1)
        {
          sub_1D331E880(v61 + v56, &qword_1EC760E10, &unk_1D33E1A90);
          v49 = v61;
          v50 = 0;
          v5 = v169;
          v41 = v168;
        }

        else
        {
          v63 = v161;
          sub_1D331E818(v61, v161, &qword_1EC760E10, &unk_1D33E1A90);
          v64 = v61;
          if (v62(v61 + v56, 1, v191) == 1)
          {
            v65 = v63;
            v66 = v191;
            (*v182)(v65, v191);
            v50 = 1;
            v67 = v62(v64 + v56, 1, v66) == 1;
            v49 = v64;
            v5 = v169;
            v41 = v168;
            if (!v67)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v68 = v176;
            v69 = *v175;
            (*v175)(v176, v63, v191);
            v70 = v177;
            v69(v177, v64 + v56, v191);
            v50 = sub_1D33DDCB4();
            v71 = *v182;
            (*v182)(v70, v191);
            v71(v68, v191);
            v49 = v64;
            v5 = v169;
            v41 = v168;
          }
        }

        sub_1D331E880(v49, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D33B9FA0(v173);
        sub_1D33B9FA0(v172);
        v51 = v187 ^ v50;
        ++v47;
        a3 = v188;
        v48 += v188;
        v44 += v188;
        if (v51)
        {
          v52 = v47 - 1;
          break;
        }
      }

      v40 = v158;
      if (v187)
      {
        if (v52 < v158)
        {
          goto LABEL_139;
        }

        if (v158 < v52)
        {
          v72 = a3 * (v52 - 1);
          v73 = v52 * a3;
          v74 = v52;
          v75 = v158;
          v76 = v158 * a3;
          do
          {
            if (v75 != --v74)
            {
              v77 = *v171;
              if (!*v171)
              {
                goto LABEL_143;
              }

              sub_1D33B6048(v77 + v76, v162);
              if (v76 < v72 || v77 + v76 >= v77 + v73)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v76 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D33B6048(v162, v77 + v72);
              a3 = v188;
            }

            ++v75;
            v72 -= a3;
            v73 -= a3;
            v76 += a3;
          }

          while (v75 < v74);
          v5 = v169;
          v41 = v168;
          v40 = v158;
        }
      }
    }

    v78 = v171[1];
    if (v52 < v78)
    {
      if (__OFSUB__(v52, v40))
      {
        goto LABEL_136;
      }

      if (v52 - v40 < v155)
      {
        break;
      }
    }

LABEL_54:
    if (v52 < v40)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D3359A14(0, *(v41 + 2) + 1, 1, v41);
    }

    a3 = *(v41 + 2);
    v105 = *(v41 + 3);
    v106 = a3 + 1;
    if (a3 >= v105 >> 1)
    {
      v41 = sub_1D3359A14((v105 > 1), a3 + 1, 1, v41);
    }

    *(v41 + 2) = v106;
    v107 = &v41[16 * a3];
    *(v107 + 4) = v40;
    *(v107 + 5) = v52;
    v163 = v52;
    if (!*v159)
    {
      goto LABEL_145;
    }

    if (a3)
    {
      v108 = *v159;
      while (1)
      {
        v109 = v106 - 1;
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v110 = *(v41 + 4);
          v111 = *(v41 + 5);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_75:
          if (v113)
          {
            goto LABEL_124;
          }

          v126 = &v41[16 * v106];
          v128 = *v126;
          v127 = *(v126 + 1);
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_127;
          }

          v132 = &v41[16 * v109 + 32];
          v134 = *v132;
          v133 = *(v132 + 1);
          v120 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v120)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v130, v135))
          {
            goto LABEL_131;
          }

          if (v130 + v135 >= v112)
          {
            if (v112 < v135)
            {
              v109 = v106 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v136 = &v41[16 * v106];
        v138 = *v136;
        v137 = *(v136 + 1);
        v120 = __OFSUB__(v137, v138);
        v130 = v137 - v138;
        v131 = v120;
LABEL_89:
        if (v131)
        {
          goto LABEL_126;
        }

        v139 = &v41[16 * v109];
        v141 = *(v139 + 4);
        v140 = *(v139 + 5);
        v120 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v120)
        {
          goto LABEL_129;
        }

        if (v142 < v130)
        {
          goto LABEL_3;
        }

LABEL_96:
        a3 = v109 - 1;
        if (v109 - 1 >= v106)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v171)
        {
          goto LABEL_142;
        }

        v147 = *&v41[16 * a3 + 32];
        v148 = *&v41[16 * v109 + 40];
        sub_1D33BB688(*v171 + *(v170 + 72) * v147, *v171 + *(v170 + 72) * *&v41[16 * v109 + 32], *v171 + *(v170 + 72) * v148, v108);
        if (v5)
        {
        }

        if (v148 < v147)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1D33A9330(v41);
        }

        if (a3 >= *(v41 + 2))
        {
          goto LABEL_121;
        }

        v149 = &v41[16 * a3];
        *(v149 + 4) = v147;
        *(v149 + 5) = v148;
        v192 = v41;
        sub_1D33A92A4(v109);
        v41 = v192;
        v106 = *(v192 + 2);
        if (v106 <= 1)
        {
          goto LABEL_3;
        }
      }

      v114 = &v41[16 * v106 + 32];
      v115 = *(v114 - 64);
      v116 = *(v114 - 56);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_122;
      }

      v119 = *(v114 - 48);
      v118 = *(v114 - 40);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_123;
      }

      v121 = &v41[16 * v106];
      v123 = *v121;
      v122 = *(v121 + 1);
      v120 = __OFSUB__(v122, v123);
      v124 = v122 - v123;
      if (v120)
      {
        goto LABEL_125;
      }

      v120 = __OFADD__(v112, v124);
      v125 = v112 + v124;
      if (v120)
      {
        goto LABEL_128;
      }

      if (v125 >= v117)
      {
        v143 = &v41[16 * v109 + 32];
        v145 = *v143;
        v144 = *(v143 + 1);
        v120 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v120)
        {
          goto LABEL_132;
        }

        if (v112 < v146)
        {
          v109 = v106 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v39 = v171[1];
    v40 = v163;
    if (v163 >= v39)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v40, v155))
  {
    goto LABEL_137;
  }

  if (v40 + v155 < v78)
  {
    v78 = v40 + v155;
  }

  if (v78 < v40)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v41 = sub_1D33A9330(v41);
LABEL_108:
    v192 = v41;
    v150 = *(v41 + 2);
    if (v150 >= 2)
    {
      while (*v171)
      {
        v151 = *&v41[16 * v150];
        v152 = *&v41[16 * v150 + 24];
        sub_1D33BB688(*v171 + *(v170 + 72) * v151, *v171 + *(v170 + 72) * *&v41[16 * v150 + 16], *v171 + *(v170 + 72) * v152, a3);
        if (v5)
        {
        }

        if (v152 < v151)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1D33A9330(v41);
        }

        if (v150 - 2 >= *(v41 + 2))
        {
          goto LABEL_134;
        }

        v153 = &v41[16 * v150];
        *v153 = v151;
        *(v153 + 1) = v152;
        v192 = v41;
        sub_1D33A92A4(v150 - 1);
        v41 = v192;
        v150 = *(v192 + 2);
        if (v150 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v163 = v78;
  if (v52 == v78)
  {
    goto LABEL_54;
  }

  v168 = v41;
  v169 = v5;
  v79 = *v171;
  v80 = *(v170 + 72);
  v81 = *v171 + v80 * (v52 - 1);
  v178 = -v80;
  v158 = v40;
  v82 = v40 - v52;
  v174 = v52;
  v179 = v79;
  v160 = v80;
  v83 = v79 + v52 * v80;
  v84 = v184;
  v85 = v181;
  while (2)
  {
    v164 = v83;
    v165 = v82;
    v86 = v82;
    v166 = v81;
    v87 = v81;
LABEL_43:
    v187 = v83;
    v188 = v86;
    v88 = v189;
    sub_1D33B9F3C(v83, v189);
    v89 = v190;
    sub_1D33B9F3C(v87, v190);
    v90 = *(v84 + 20);
    a3 = *(v183 + 48);
    v91 = v88 + v90;
    v92 = v186;
    sub_1D331E818(v91, v186, &qword_1EC760E10, &unk_1D33E1A90);
    sub_1D331E818(v89 + v90, v92 + a3, &qword_1EC760E10, &unk_1D33E1A90);
    v93 = *v185;
    if ((*v185)(v92, 1, v191) == 1)
    {
      sub_1D331E880(v92 + a3, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D331E880(v92, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D33B9FA0(v190);
      sub_1D33B9FA0(v189);
      v84 = v184;
      goto LABEL_41;
    }

    sub_1D331E818(v92, v85, &qword_1EC760E10, &unk_1D33E1A90);
    if (v93(v92 + a3, 1, v191) != 1)
    {
      v95 = *v175;
      v96 = v176;
      (*v175)(v176, v85, v191);
      v97 = v92 + a3;
      v98 = v177;
      v95(v177, v97, v191);
      a3 = sub_1D33DDCB4();
      v99 = *v182;
      v100 = v98;
      v101 = v191;
      (*v182)(v100, v191);
      v99(v96, v101);
      sub_1D331E880(v186, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D33B9FA0(v190);
      sub_1D33B9FA0(v189);
      v84 = v184;
      if (a3)
      {
        goto LABEL_48;
      }

      v85 = v181;
LABEL_41:
      v81 = v166 + v160;
      v82 = v165 - 1;
      v83 = v164 + v160;
      if (++v174 == v163)
      {
        v5 = v169;
        v41 = v168;
        v40 = v158;
        v52 = v163;
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v94 = v191;
  (*v182)(v85, v191);
  if (v93(v92 + a3, 1, v94) != 1)
  {
    goto LABEL_147;
  }

  sub_1D331E880(v92, &qword_1EC760E10, &unk_1D33E1A90);
  sub_1D33B9FA0(v190);
  sub_1D33B9FA0(v189);
  v84 = v184;
LABEL_48:
  v102 = v188;
  if (v179)
  {
    v103 = v187;
    a3 = v180;
    sub_1D33B6048(v187, v180);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D33B6048(a3, v87);
    v87 += v178;
    v83 = v103 + v178;
    v104 = __CFADD__(v102, 1);
    v86 = v102 + 1;
    v85 = v181;
    if (v104)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  result = sub_1D33DF1A4();
  __break(1u);
  return result;
}

uint64_t sub_1D33BB688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v100 = a4;
  v97 = sub_1D33DDD34();
  v7 = *(v97 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v97);
  v86 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = (&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v82 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v18 = *(*(v96 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v96);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v82 - v22;
  v101 = type metadata accessor for ReminderStatus();
  v24 = *(*(v101 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v101);
  v94 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v92 = &v82 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v95 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v93 = *(v32 + 72);
  if (!v93)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v33 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v93 == -1)
  {
    goto LABEL_74;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v93 == -1)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    result = sub_1D33DF1A4();
    __break(1u);
    return result;
  }

  v104 = a1;
  v35 = v100;
  v103 = v100;
  if (v33 / v93 >= v34 / v93)
  {
    v39 = v34 / v93 * v93;
    if (v100 < a2 || a2 + v39 <= v100)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v100 == a2)
      {
LABEL_44:
        v57 = v35 + v39;
        v58 = v97;
        if (v39 < 1)
        {
          goto LABEL_71;
        }

        v59 = v7;
        v60 = -v93;
        v89 = (v59 + 48);
        v83 = (v59 + 32);
        v84 = (v59 + 8);
        v61 = v57;
        v99 = a1;
        v88 = -v93;
        while (1)
        {
          v91 = v57;
          v82 = v57;
          v62 = a2;
          a2 += v60;
          v98 = a2;
          v90 = v62;
          while (1)
          {
            if (v62 <= a1)
            {
              v104 = v62;
              v102 = v82;
              goto LABEL_72;
            }

            v63 = a3;
            v64 = v58;
            v95 = v61;
            v65 = v61 + v60;
            v93 = v61 + v60;
            v66 = v92;
            sub_1D33B9F3C(v65, v92);
            v67 = a2;
            v68 = v94;
            sub_1D33B9F3C(v67, v94);
            v69 = *(v101 + 20);
            v70 = *(v96 + 48);
            sub_1D331E818(v66 + v69, v21, &qword_1EC760E10, &unk_1D33E1A90);
            sub_1D331E818(v68 + v69, &v21[v70], &qword_1EC760E10, &unk_1D33E1A90);
            v71 = *v89;
            if ((*v89)(v21, 1, v64) == 1)
            {
              sub_1D331E880(&v21[v70], &qword_1EC760E10, &unk_1D33E1A90);
              v72 = 0;
LABEL_57:
              v75 = v93;
              goto LABEL_58;
            }

            v73 = v87;
            sub_1D331E818(v21, v87, &qword_1EC760E10, &unk_1D33E1A90);
            if (v71(&v21[v70], 1, v64) != 1)
            {
              v76 = *v83;
              v77 = v85;
              (*v83)(v85, v87, v64);
              v78 = &v21[v70];
              v79 = v86;
              v76(v86, v78, v64);
              v72 = sub_1D33DDCB4();
              v80 = *v84;
              (*v84)(v79, v64);
              v80(v77, v64);
              goto LABEL_57;
            }

            (*v84)(v73, v64);
            v72 = 1;
            v74 = v71(&v21[v70], 1, v64);
            v75 = v93;
            if (v74 != 1)
            {
              goto LABEL_76;
            }

LABEL_58:
            v60 = v88;
            a3 = v63 + v88;
            sub_1D331E880(v21, &qword_1EC760E10, &unk_1D33E1A90);
            sub_1D33B9FA0(v94);
            sub_1D33B9FA0(v92);
            a2 = v98;
            if (v72)
            {
              break;
            }

            v61 = v75;
            v58 = v97;
            a1 = v99;
            if (v63 < v95 || a3 >= v95)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v95)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v91 = v75;
            v62 = v90;
            if (v75 <= v100)
            {
              a2 = v90;
              v57 = v91;
              goto LABEL_71;
            }
          }

          v58 = v97;
          a1 = v99;
          if (v63 < v90 || a3 >= v90)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v63 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = v95;
          v57 = v91;
          if (v95 <= v100)
          {
LABEL_71:
            v104 = a2;
            v102 = v57;
            goto LABEL_72;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v35 = v100;
    goto LABEL_44;
  }

  v36 = v33 / v93 * v93;
  v88 = v17;
  v94 = &v82 - v31;
  v91 = v23;
  v99 = a1;
  if (v100 < a1 || a1 + v36 <= v100)
  {
    swift_arrayInitWithTakeFrontToBack();
    v35 = v100;
    v38 = v95;
  }

  else
  {
    v37 = v100 == a1;
    v38 = v95;
    if (!v37)
    {
      swift_arrayInitWithTakeBackToFront();
      v35 = v100;
    }
  }

  v92 = v35 + v36;
  v102 = v35 + v36;
  if (v36 >= 1 && a2 < a3)
  {
    v89 = (v7 + 48);
    v90 = a3;
    v84 = (v7 + 32);
    v87 = (v7 + 8);
    do
    {
      v98 = a2;
      v41 = v35;
      v42 = v94;
      sub_1D33B9F3C(a2, v94);
      v100 = v41;
      sub_1D33B9F3C(v41, v38);
      v43 = *(v101 + 20);
      v44 = *(v96 + 48);
      v45 = v91;
      sub_1D331E818(v42 + v43, v91, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D331E818(v38 + v43, v45 + v44, &qword_1EC760E10, &unk_1D33E1A90);
      v46 = *v89;
      v47 = v97;
      if ((*v89)(v45, 1, v97) == 1)
      {
        sub_1D331E880(v45 + v44, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D331E880(v45, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D33B9FA0(v38);
        sub_1D33B9FA0(v42);
        v48 = v93;
        v49 = v99;
      }

      else
      {
        v52 = v88;
        sub_1D331E818(v45, v88, &qword_1EC760E10, &unk_1D33E1A90);
        if (v46((v45 + v44), 1, v47) == 1)
        {
          (*v87)(v52, v47);
          if (v46((v45 + v44), 1, v47) != 1)
          {
            goto LABEL_76;
          }

          sub_1D331E880(v45, &qword_1EC760E10, &unk_1D33E1A90);
          sub_1D33B9FA0(v95);
          sub_1D33B9FA0(v94);
          v48 = v93;
          v49 = v99;
LABEL_33:
          a2 = v98 + v48;
          if (v49 < v98 || v49 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v98)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v100;
          v51 = v90;
          goto LABEL_39;
        }

        v53 = v85;
        v54 = *v84;
        (*v84)(v85, v52, v47);
        v55 = v86;
        (v54)(v86, v45 + v44, v47);
        LOBYTE(v54) = sub_1D33DDCB4();
        v56 = *v87;
        (*v87)(v55, v47);
        v56(v53, v47);
        sub_1D331E880(v45, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D33B9FA0(v95);
        sub_1D33B9FA0(v94);
        v48 = v93;
        v49 = v99;
        if (v54)
        {
          goto LABEL_33;
        }
      }

      v50 = v100 + v48;
      if (v49 < v100 || v49 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v51 = v90;
      }

      else
      {
        v51 = v90;
        if (v49 != v100)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v103 = v50;
      v35 = v50;
      a2 = v98;
LABEL_39:
      v99 = v49 + v48;
      v104 = v49 + v48;
      v38 = v95;
    }

    while (v35 < v92 && a2 < v51);
  }

LABEL_72:
  sub_1D3385370(&v104, &v103, &v102);
  return 1;
}

id UUID.reminderID.getter()
{
  v1 = v0;
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = [objc_opt_self() cdEntityName];
  if (!v7)
  {
    sub_1D33DE7B4();
    v7 = sub_1D33DE784();
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
  v9 = sub_1D33DDD64();
  v10 = [v8 initWithUUID:v9 entityName:v7];

  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_1D33BC280()
{
  type metadata accessor for ReminderFactory();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2 = [v1 callRemindersEnabled];

  if (v2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69C6D28]) init];
  }

  else
  {
    result = 0;
  }

  *(v0 + 16) = result;
  qword_1EC762108 = v0;
  return result;
}

void sub_1D33BC314(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v78[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDDB4();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D38, "xv");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CD8, &unk_1D33E4A60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v69 - v17;
  v19 = sub_1D33DDC44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v2 + 16);
  if (v24)
  {
    v25 = objc_allocWithZone(MEMORY[0x1E69C6D20]);
    v26 = v24;
    v27 = v25;
    v28 = v26;
    v77 = [v27 initWithStore_];
    v78[0] = 0;
    v29 = [v28 fetchDefaultListWithError_];
    if (v78[0])
    {
      v30 = v29;
      v78[0];

      swift_willThrow();
    }

    else if (v29)
    {
      v69 = v14;
      v33 = v77;
      v71 = v29;
      v72 = v28;
      v34 = [v77 updateList_];
      v35 = *a1;
      v36 = a1[1];
      v37 = sub_1D33DE784();
      v70 = v34;
      v38 = [v33 addReminderWithTitle:v37 toListChangeItem:v34];

      v39 = type metadata accessor for RecentsItemReminder(0);
      sub_1D331E818(a1 + *(v39 + 20), v18, &unk_1EC760EA0, &qword_1D33E2210);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        sub_1D331E880(v18, &unk_1EC760EA0, &qword_1D33E2210);
      }

      else
      {
        (*(v20 + 32))(v23, v18, v19);
        v41 = objc_allocWithZone(MEMORY[0x1E69C6D30]);
        v42 = v39;
        v43 = sub_1D33DDC04();
        v44 = [v41 initWithUniversalLink_];

        v39 = v42;
        [v38 setUserActivity_];

        (*(v20 + 8))(v23, v19);
      }

      v45 = v69;
      sub_1D331E818(a1 + *(v39 + 24), v10, &qword_1EC761D38, "xv");
      v46 = type metadata accessor for ReminderTime(0);
      if ((*(*(v46 - 8) + 48))(v10, 1, v46) == 1)
      {
        sub_1D331E880(v10, &qword_1EC761D38, "xv");
        v47 = sub_1D33DDB54();
        (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
        v48 = 0;
      }

      else
      {
        sub_1D33C097C(v45);
        sub_1D33BDCE8(v10);
        v49 = sub_1D33DDB54();
        v50 = *(v49 - 8);
        v48 = 0;
        if ((*(v50 + 48))(v45, 1, v49) != 1)
        {
          v48 = sub_1D33DDB14();
          (*(v50 + 8))(v45, v49);
        }
      }

      [v38 setDueDateComponents_];

      if (qword_1EDEBF058 != -1)
      {
        swift_once();
      }

      v51 = sub_1D33DE464();
      __swift_project_value_buffer(v51, qword_1EDEC1440);
      v52 = v38;
      v53 = sub_1D33DE444();
      v54 = sub_1D33DEAF4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v78[0] = v56;
        *v55 = 136315138;
        v57 = [v52 objectID];
        v58 = [v57 uuid];

        v59 = v73;
        sub_1D33DDD84();

        sub_1D33BDC90();
        v60 = v75;
        v61 = sub_1D33DF174();
        v63 = v62;
        (*(v74 + 8))(v59, v60);
        v64 = sub_1D3328B48(v61, v63, v78);

        *(v55 + 4) = v64;
        _os_log_impl(&dword_1D331A000, v53, v54, "Creating reminder with UUID: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x1D38B81C0](v56, -1, -1);
        MEMORY[0x1D38B81C0](v55, -1, -1);
      }

      v78[0] = 0;
      if ([v77 saveSynchronouslyWithError_])
      {
        v65 = v78[0];
        v66 = [v52 objectID];
        v67 = [v66 uuid];

        sub_1D33DDD84();
      }

      else
      {
        v68 = v78[0];
        sub_1D33DDBE4();

        swift_willThrow();
      }
    }

    else
    {
      sub_1D33BD65C();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D33BD65C();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1D33BCBB4(uint64_t a1)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - v10;
  v12 = *(v1 + 16);
  if (v12)
  {
    v52[0] = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    v47 = v12;
    if (v13)
    {
      v46 = v2;
      v14 = objc_opt_self();
      v15 = (v5 + 16);
      v49 = *(v5 + 16);
      v50 = v14;
      v16 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
      v48 = v15[7];
      v51 = v15;
      v17 = (v15 - 1);
      v18 = v12;
      do
      {
        v19 = v49;
        v49(v11, v16, v4);
        v19(v9, v11, v4);
        v20 = [v50 cdEntityName];
        if (!v20)
        {
          sub_1D33DE7B4();
          v20 = sub_1D33DE784();
        }

        v21 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
        v22 = sub_1D33DDD64();
        [v21 initWithUUID:v22 entityName:v20];

        v23 = *v17;
        (*v17)(v9, v4);
        v24 = (v23)(v11, v4);
        MEMORY[0x1D38B6F20](v24);
        if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();
        v16 += v48;
        --v13;
      }

      while (v13);
      v12 = v47;
    }

    else
    {
      v27 = v12;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69C6D20]) initWithStore_];
    sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
    v29 = sub_1D33DE8A4();

    v52[0] = 0;
    v30 = [v12 fetchRemindersWithObjectIDs:v29 error:v52];

    v31 = v52[0];
    if (v30)
    {
      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      sub_1D33BD6B0();
      v32 = sub_1D33DE6F4();
      v33 = v31;

      v34 = v28;
      v35 = sub_1D33BDA0C(v32, v34);

      v51 = v34;
      if (v35 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
      {
        v37 = 0;
        while (1)
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x1D38B75D0](v37, v35);
          }

          else
          {
            if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v38 = *(v35 + 8 * v37 + 32);
          }

          v39 = v38;
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          [v38 removeFromList];

          ++v37;
          if (v40 == i)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:

      v52[0] = 0;
      v42 = v51;
      if ([v51 saveSynchronouslyWithError_])
      {
        v43 = v52[0];
      }

      else
      {
        v44 = v52[0];
        sub_1D33DDBE4();

        swift_willThrow();
      }
    }

    else
    {
      v41 = v52[0];
      sub_1D33DDBE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_1D33BD65C();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_1D33BD0D8(uint64_t a1)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - v10;
  v12 = *(v1 + 16);
  if (v12)
  {
    v52[0] = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    v47 = v12;
    if (v13)
    {
      v46 = v2;
      v14 = objc_opt_self();
      v15 = (v5 + 16);
      v49 = *(v5 + 16);
      v50 = v14;
      v16 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
      v48 = v15[7];
      v51 = v15;
      v17 = (v15 - 1);
      v18 = v12;
      do
      {
        v19 = v49;
        v49(v11, v16, v4);
        v19(v9, v11, v4);
        v20 = [v50 cdEntityName];
        if (!v20)
        {
          sub_1D33DE7B4();
          v20 = sub_1D33DE784();
        }

        v21 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
        v22 = sub_1D33DDD64();
        [v21 initWithUUID:v22 entityName:v20];

        v23 = *v17;
        (*v17)(v9, v4);
        v24 = (v23)(v11, v4);
        MEMORY[0x1D38B6F20](v24);
        if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();
        v16 += v48;
        --v13;
      }

      while (v13);
      v12 = v47;
    }

    else
    {
      v27 = v12;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69C6D20]) initWithStore_];
    sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
    v29 = sub_1D33DE8A4();

    v52[0] = 0;
    v30 = [v12 fetchRemindersWithObjectIDs:v29 error:v52];

    v31 = v52[0];
    if (v30)
    {
      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      sub_1D33BD6B0();
      v32 = sub_1D33DE6F4();
      v33 = v31;

      v34 = v28;
      v35 = sub_1D33BDA0C(v32, v34);

      v51 = v34;
      if (v35 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
      {
        v37 = 0;
        while (1)
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x1D38B75D0](v37, v35);
          }

          else
          {
            if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v38 = *(v35 + 8 * v37 + 32);
          }

          v39 = v38;
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          [v38 setCompleted_];

          ++v37;
          if (v40 == i)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:

      v52[0] = 0;
      v42 = v51;
      if ([v51 saveSynchronouslyWithError_])
      {
        v43 = v52[0];
      }

      else
      {
        v44 = v52[0];
        sub_1D33DDBE4();

        swift_willThrow();
      }
    }

    else
    {
      v41 = v52[0];
      sub_1D33DDBE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_1D33BD65C();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D33BD600()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D33BD65C()
{
  result = qword_1EC761D28;
  if (!qword_1EC761D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761D28);
  }

  return result;
}

unint64_t sub_1D33BD6B0()
{
  result = qword_1EC761CF0;
  if (!qword_1EC761CF0)
  {
    sub_1D331DA18(255, &qword_1EC761CE0, 0x1E69C6D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761CF0);
  }

  return result;
}

void sub_1D33BD718(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1D33DF054() == *(a4 + 36))
    {
      sub_1D33DF064();
      sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
      swift_dynamicCast();
      sub_1D33B9628(v8);
      v6 = v5;

      if (v6)
      {
        sub_1D33DF034();
        sub_1D33DF084();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1D33DED94();
  v7 = *(a4 + 36);
}

void sub_1D33BD87C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1D33DF094();
      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1D33DF054() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1D33DF064();
  sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
  swift_dynamicCast();
  v5 = sub_1D33B9628(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_1D33BDA0C(uint64_t a1, void *a2)
{
  v2 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
    result = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      return result;
    }

    v32 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    result = sub_1D33DF014();
    v29 = result;
    v30 = v5;
    v31 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return result;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1D33DEFA4();
  v6 = -1 << *(v2 + 32);
  result = sub_1D33DED74();
  v7 = *(v2 + 36);
  v29 = result;
  v30 = v7;
  v31 = 0;
LABEL_7:
  v8 = 0;
  v25 = v3;
  while (v8 < v3)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_20;
    }

    v17 = v29;
    v16 = v30;
    v18 = v31;
    sub_1D33BD87C(v29, v30, v31, v2);
    v20 = v19;
    v21 = [a2 updateReminder_];

    sub_1D33DEF84();
    v22 = v2;
    v23 = *(v32 + 16);
    sub_1D33DEFB4();
    sub_1D33DEFC4();
    result = sub_1D33DEF94();
    if (v26)
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      v2 = v22;
      if (sub_1D33DF044())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D30, "Vv");
      v24 = sub_1D33DE714();
      sub_1D33DF0C4();
      result = v24(v28, 0);
    }

    else
    {
      sub_1D33BD718(v17, v16, v18, v22);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = sub_1D335665C(v17, v16, v18);
      v29 = v10;
      v30 = v12;
      v31 = v14 & 1;
      v2 = v22;
      v3 = v25;
    }

    ++v8;
    if (v15 == v3)
    {
      sub_1D335665C(v29, v30, v31);
      return v32;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D33BDC90()
{
  result = qword_1EC761A00;
  if (!qword_1EC761A00)
  {
    sub_1D33DDDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A00);
  }

  return result;
}

uint64_t sub_1D33BDCE8(uint64_t a1)
{
  v2 = type metadata accessor for ReminderTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D33BDD58()
{
  result = qword_1EC761D40;
  if (!qword_1EC761D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761D40);
  }

  return result;
}

void *RecentsReminderActionProvider.__allocating_init(callProviderManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[6] = 0;
  v2[3] = 0;
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  return v2;
}

uint64_t sub_1D33BDDFC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    if (qword_1EC760958 != -1)
    {
      swift_once();
      v3 = *(v0 + 24);
    }

    v1 = qword_1EC762108;
    *(v0 + 24) = qword_1EC762108;
    swift_retain_n();
  }

  return v1;
}

void *sub_1D33BDE94()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    if (qword_1EDEBF9C0 != -1)
    {
      swift_once();
      v3 = *(v0 + 32);
    }

    v1 = off_1EDEBF9C8;
    *(v0 + 32) = off_1EDEBF9C8;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1D33BDF2C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_1D33BDF68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D33BDFC8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D33BE05C;
}

void sub_1D33BE05C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

void *RecentsReminderActionProvider.init(callProviderManager:)(uint64_t a1)
{
  v1[6] = 0;
  v1[3] = 0;
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  v1[2] = a1;
  return v1;
}

uint64_t sub_1D33BE11C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ReminderTime(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = type metadata accessor for RecentsItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_1D33DE9B4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1D332CE9C(a1, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentsItem);
  sub_1D332CE9C(a2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReminderTime);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1D3329140(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for RecentsItem);
  sub_1D3329140(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ReminderTime);
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

  sub_1D333DD88(0, 0, v14, &unk_1D33E4BD0, v18);
}

uint64_t sub_1D33BE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = sub_1D33DDDB4();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v12 = type metadata accessor for ReminderTime(0);
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v14 = *(v13 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v15 = type metadata accessor for RecentsItem(0);
  v6[18] = v15;
  v16 = *(v15 - 8);
  v6[19] = v16;
  v17 = *(v16 + 64) + 15;
  v6[20] = swift_task_alloc();
  v18 = type metadata accessor for RecentsItemReminder(0);
  v6[21] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33BE604, 0, 0);
}

uint64_t sub_1D33BE604()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v63 = v0[20];
  v64 = v0[18];
  v67 = v4;
  v6 = v0[14];
  v5 = v0[15];
  v65 = v6;
  v8 = v0[7];
  v7 = v0[8];
  sub_1D332CE9C(v0[6], v63, type metadata accessor for RecentsItem);
  sub_1D332CE9C(v8, v4, type metadata accessor for ReminderTime);
  v68 = *(v7 + 16);
  v9 = *(v2 + 24);
  v66 = *(v5 + 56);
  v66(v1 + v9, 1, 1, v6);
  v10 = *(v2 + 28);
  sub_1D332CE9C(v63, v1 + v10, type metadata accessor for RecentsItem);
  (*(v3 + 56))(v1 + v10, 0, 1, v64);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D33E2410;
  v14 = *(v63 + 48);
  v15 = *(v63 + 56);
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D3387AE4();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  *(v13 + 32) = v16;
  *(v13 + 40) = v17;

  v18 = sub_1D33DE7D4();
  v20 = v19;

  *v1 = v18;
  v1[1] = v20;
  sub_1D331E880(v1 + v9, &qword_1EC761D38, "xv");
  sub_1D332CE9C(v67, v1 + v9, type metadata accessor for ReminderTime);
  v66(v1 + v9, 0, 1, v65);
  v21 = v68;
  if (v68)
  {
    v22 = v68;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v21 = 0;
  }

  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[20];
  v26 = v0[21];
  v27 = v0[17];
  v29 = v0[12];
  v28 = v0[13];
  v30 = v0[8];
  v31 = v21;
  sub_1D33C2774(v25, v22, v28);

  sub_1D3337B14(v27, type metadata accessor for ReminderTime);
  sub_1D3337B14(v25, type metadata accessor for RecentsItem);
  sub_1D33C090C(v28, v24 + *(v26 + 20));
  sub_1D3329140(v24, v23, type metadata accessor for RecentsItemReminder);
  sub_1D33BDDFC();
  sub_1D33BC314(v23, v29);
  v32 = v0[19];
  v34 = v0[11];
  v33 = v0[12];
  v35 = v0[9];
  v36 = v0[10];
  v37 = v0[8];
  v38 = v0[6];

  (*(v34 + 16))(v35, v33, v36);
  (*(v34 + 56))(v35, 0, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761F80, &qword_1D33E55C0);
  v39 = *(v32 + 72);
  v40 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D33E2410;
  sub_1D332CE9C(v38, v41 + v40, type metadata accessor for RecentsItem);
  sub_1D33C0344(v35, v41);

  sub_1D331E880(v35, &qword_1EC7612B0, qword_1D33E2830);
  if (qword_1EC760920 != -1)
  {
    swift_once();
  }

  v42 = v0[16];
  v43 = v0[6];
  v44 = v0[7];
  v45 = sub_1D33BEEF4();
  sub_1D332CE9C(v44, v42, type metadata accessor for ReminderTime);
  v46 = sub_1D33DDB54();
  v47 = (*(*(v46 - 8) + 48))(v42, 3, v46);
  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v48 = 2;
    }

    else
    {
      v48 = 3;
    }
  }

  else if (v47)
  {
    v48 = 1;
  }

  else
  {
    sub_1D3337B14(v0[16], type metadata accessor for ReminderTime);
    v48 = 4;
  }

  v49 = v0[23];
  v51 = v0[11];
  v50 = v0[12];
  v52 = v0[10];
  sub_1D333BB44(1u, v45, v48);
  (*(v51 + 8))(v50, v52);
  sub_1D3337B14(v49, type metadata accessor for RecentsItemReminder);
  v54 = v0[22];
  v53 = v0[23];
  v55 = v0[20];
  v57 = v0[16];
  v56 = v0[17];
  v59 = v0[12];
  v58 = v0[13];
  v60 = v0[9];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1D33BED6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RecentsItem(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReminderTime(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D334D4B4;

  return sub_1D33BE3D0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1D33BEF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = *(type metadata accessor for RecentsItem(0) - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33BF028, 0, 0);
}

uint64_t sub_1D33BF028()
{
  v62 = v0;
  v2 = v0[6];
  v1 = v0[7];
  sub_1D33BDDFC();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[9];
    v5 = v0[7] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(v1 + 16);
    do
    {
      v9 = v0[11];
      sub_1D332CE9C(v5, v9, type metadata accessor for RecentsItem);
      v10 = sub_1D3337D6C();
      sub_1D3337B14(v9, type metadata accessor for RecentsItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D3337BEC(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1D3337BEC((v11 > 1), v12 + 1, 1, v7);
      }

      v7[2] = v13;
      v7[v12 + 4] = v10;
      v5 += v6;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
LABEL_27:

      sub_1D33BCBB4(v14);
      v44 = v0[7];
      v43 = v0[8];
      v45 = v0[6];

      v46 = sub_1D33DDDB4();
      (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
      sub_1D33C0344(v43, v44);
      sub_1D331E880(v43, &qword_1EC7612B0, qword_1D33E2830);
      if (v3)
      {
        v47 = v0[9];
        v48 = v0[10];
        v49 = v0[7] + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v50 = *(v47 + 72);
        do
        {
          sub_1D332CE9C(v49, v0[10], type metadata accessor for RecentsItem);
          if (qword_1EC760920 != -1)
          {
            swift_once();
          }

          v51 = *(v48 + 32);
          v52 = v51 - 4;
          v53 = 2 * ((v51 & 0xFE) == 2);
          if (v52 < 3)
          {
            v54 = 1;
          }

          else
          {
            v54 = v53;
          }

          v55 = v0[10];
          sub_1D333BB44(6u, v54, 0);
          sub_1D3337B14(v55, type metadata accessor for RecentsItem);
          v49 += v50;
          --v3;
        }

        while (v3);
      }

      goto LABEL_40;
    }
  }

  v15 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v15 < v7[2])
  {
    v16 = &v7[v15];
    v17 = v16[4];
    v18 = *(v17 + 16);
    v19 = v14[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_44;
    }

    v21 = v16[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= v14[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v23 = v19 + v18;
      }

      else
      {
        v23 = v19;
      }

      v14 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v23, 1, v14);
      if (*(v17 + 16))
      {
LABEL_23:
        v24 = (v14[3] >> 1) - v14[2];
        v25 = *(sub_1D33DDDB4() - 8);
        if (v24 < v18)
        {
          goto LABEL_46;
        }

        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = *(v25 + 72);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v28 = v14[2];
          v29 = __OFADD__(v28, v18);
          v30 = v28 + v18;
          if (v29)
          {
            goto LABEL_47;
          }

          v14[2] = v30;
        }

        goto LABEL_12;
      }
    }

    if (v18)
    {
      goto LABEL_45;
    }

LABEL_12:
    if (v13 == ++v15)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  swift_once();
  v31 = sub_1D33DE464();
  __swift_project_value_buffer(v31, qword_1EDEC1440);
  v32 = v7;
  v33 = sub_1D33DE444();
  v34 = sub_1D33DEAD4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61 = v36;
    *v35 = 136315138;
    swift_getErrorValue();
    v38 = v0[2];
    v37 = v0[3];
    v39 = v0[4];
    v40 = sub_1D33DF224();
    v42 = sub_1D3328B48(v40, v41, &v61);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1D331A000, v33, v34, "Error deleting reminders: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1D38B81C0](v36, -1, -1);
    MEMORY[0x1D38B81C0](v35, -1, -1);
  }

  else
  {
  }

LABEL_40:
  v57 = v0[10];
  v56 = v0[11];
  v58 = v0[8];

  v59 = v0[1];

  return v59();
}

uint64_t sub_1D33BF5CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D33BEF28(a1, v4, v5, v7, v6);
}

uint64_t sub_1D33BF6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_1D33DE9B4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a1;

  sub_1D333DD88(0, 0, v10, a3, v12);
}

uint64_t sub_1D33BF7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(type metadata accessor for RecentsItem(0) - 8);
  v5[8] = v6;
  v7 = *(v6 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33BF888, 0, 0);
}

uint64_t sub_1D33BF888()
{
  v57 = v0;
  v2 = v0[6];
  v1 = v0[7];
  sub_1D33BDDFC();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[8];
    v5 = v0[7] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(v1 + 16);
    do
    {
      v9 = v0[10];
      sub_1D332CE9C(v5, v9, type metadata accessor for RecentsItem);
      v10 = sub_1D3337D6C();
      sub_1D3337B14(v9, type metadata accessor for RecentsItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D3337BEC(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1D3337BEC((v11 > 1), v12 + 1, 1, v7);
      }

      v7[2] = v13;
      v7[v12 + 4] = v10;
      v5 += v6;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
LABEL_27:

      sub_1D33BD0D8(v14);

      if (v3)
      {
        v43 = v0[8];
        v44 = v0[9];
        v45 = v0[7] + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v46 = *(v43 + 72);
        do
        {
          sub_1D332CE9C(v45, v0[9], type metadata accessor for RecentsItem);
          if (qword_1EC760920 != -1)
          {
            swift_once();
          }

          v47 = *(v44 + 32);
          v48 = v47 - 4;
          v49 = 2 * ((v47 & 0xFE) == 2);
          if (v48 < 3)
          {
            v50 = 1;
          }

          else
          {
            v50 = v49;
          }

          v51 = v0[9];
          sub_1D333BB44(5u, v50, 0);
          sub_1D3337B14(v51, type metadata accessor for RecentsItem);
          v45 += v46;
          --v3;
        }

        while (v3);
      }

      goto LABEL_40;
    }
  }

  v15 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v15 < v7[2])
  {
    v16 = &v7[v15];
    v17 = v16[4];
    v18 = *(v17 + 16);
    v19 = v14[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_44;
    }

    v21 = v16[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= v14[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v23 = v19 + v18;
      }

      else
      {
        v23 = v19;
      }

      v14 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v23, 1, v14);
      if (*(v17 + 16))
      {
LABEL_23:
        v24 = (v14[3] >> 1) - v14[2];
        v25 = *(sub_1D33DDDB4() - 8);
        if (v24 < v18)
        {
          goto LABEL_46;
        }

        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = *(v25 + 72);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v28 = v14[2];
          v29 = __OFADD__(v28, v18);
          v30 = v28 + v18;
          if (v29)
          {
            goto LABEL_47;
          }

          v14[2] = v30;
        }

        goto LABEL_12;
      }
    }

    if (v18)
    {
      goto LABEL_45;
    }

LABEL_12:
    if (v13 == ++v15)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  swift_once();
  v31 = sub_1D33DE464();
  __swift_project_value_buffer(v31, qword_1EDEC1440);
  v32 = v7;
  v33 = sub_1D33DE444();
  v34 = sub_1D33DEAD4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v56 = v36;
    *v35 = 136315138;
    swift_getErrorValue();
    v38 = v0[2];
    v37 = v0[3];
    v39 = v0[4];
    v40 = sub_1D33DF224();
    v42 = sub_1D3328B48(v40, v41, &v56);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1D331A000, v33, v34, "Error marking reminders as complete: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1D38B81C0](v36, -1, -1);
    MEMORY[0x1D38B81C0](v35, -1, -1);
  }

  else
  {
  }

LABEL_40:
  v53 = v0[9];
  v52 = v0[10];

  v54 = v0[1];

  return v54();
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D33BFDE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D33BF7C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D33BFEA4()
{
  v0 = sub_1D33DDC44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = sub_1D3337D6C();
  if (*(v16 + 16))
  {
    v26 = v1;
    v27 = v0;
    v17 = *(v6 + 16);
    v17(v13, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v15, v13, v5);
    sub_1D33BDDFC();

    v17(v10, v15, v5);
    v18 = [objc_opt_self() cdEntityName];
    if (!v18)
    {
      sub_1D33DE7B4();
      v18 = sub_1D33DE784();
    }

    v19 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
    v20 = sub_1D33DDD64();
    v21 = [v19 initWithUUID:v20 entityName:v18];

    v22 = *(v6 + 8);
    v22(v10, v5);
    v23 = [v21 urlRepresentation];

    sub_1D33DDC24();
    sub_1D33DDC14();
    v24 = sub_1D33DDC04();
    TUOpenURL();

    (*(v26 + 8))(v4, v27);
    return (v22)(v15, v5);
  }

  else
  {
  }
}

void sub_1D33C01FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761F80, &qword_1D33E55C0);
  v4 = *(type metadata accessor for RecentsItem(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D33E2410;
  sub_1D332CE9C(a2, v7 + v6, type metadata accessor for RecentsItem);
  sub_1D33C0344(a1, v7);

  if (qword_1EC760920 != -1)
  {
    swift_once();
  }

  v8 = sub_1D33BEEF4();
  sub_1D333BB44(1u, v8, 4u);
}

uint64_t sub_1D33C0344(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(a1, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  v12 = sub_1D33DDDB4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(a1, 1, v12);
  if (result != 1)
  {
    return result;
  }

  result = sub_1D33BDE94();
  v37 = result;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = *(v6 + 72);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D332CE9C(v16, v9, type metadata accessor for RecentsItem);
      v19 = sub_1D3337D6C();
      sub_1D3337B14(v9, type metadata accessor for RecentsItem);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D3337BEC(0, v18[2] + 1, 1, v18);
        v18 = result;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        result = sub_1D3337BEC((v20 > 1), v21 + 1, 1, v18);
        v18 = result;
      }

      v18[2] = v22;
      v18[v21 + 4] = v19;
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v22 = *(MEMORY[0x1E69E7CC0] + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (!v22)
    {
LABEL_30:

      sub_1D33B55B8(v23);
    }
  }

  v24 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (v24 < v18[2])
  {
    v25 = &v18[v24];
    v26 = v25[4];
    v27 = *(v26 + 16);
    v28 = v23[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_33;
    }

    v30 = v25[4];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v29 <= v23[3] >> 1)
    {
      if (*(v26 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v31 = v28 + v27;
      }

      else
      {
        v31 = v28;
      }

      result = sub_1D3338090(result, v31, 1, v23);
      v23 = result;
      if (*(v26 + 16))
      {
LABEL_26:
        if ((v23[3] >> 1) - v23[2] < v27)
        {
          goto LABEL_35;
        }

        v32 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v33 = *(v13 + 72);
        swift_arrayInitWithCopy();

        if (v27)
        {
          v34 = v23[2];
          v35 = __OFADD__(v34, v27);
          v36 = v34 + v27;
          if (v35)
          {
            goto LABEL_36;
          }

          v23[2] = v36;
        }

        goto LABEL_15;
      }
    }

    if (v27)
    {
      goto LABEL_34;
    }

LABEL_15:
    if (v22 == ++v24)
    {
      goto LABEL_30;
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
  return result;
}

uint64_t RecentsReminderActionProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1D3323A28(v0 + 40);
  return v0;
}

uint64_t RecentsReminderActionProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1D3323A28(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D33C090C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33C097C@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v101 = sub_1D33DDE14();
  v99 = *(v101 - 8);
  v1 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D33DDE24();
  v98 = *(v105 - 8);
  v3 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v95 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1D33DDDF4();
  v96 = *(v104 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v94 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DDE74();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReminderTime(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v93 = &v91 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v110 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v91 - v23;
  v117 = sub_1D33DDD34();
  v107 = *(v117 - 8);
  v24 = *(v107 + 64);
  v25 = MEMORY[0x1EEE9AC00](v117);
  v100 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v92 = &v91 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v91 - v29;
  v31 = sub_1D33DDDC4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D33DDE84();
  v111 = *(v36 - 8);
  v112 = v36;
  v37 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 104))(v35, *MEMORY[0x1E6969868], v31);
  v115 = v39;
  sub_1D33DDDD4();
  (*(v32 + 8))(v35, v31);
  v114 = v30;
  sub_1D33DDD24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D48, "Ju");
  v40 = *(v8 + 72);
  v41 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D33E4CB0;
  v43 = *MEMORY[0x1E6969A68];
  v103 = v9;
  v44 = *(v9 + 104);
  v44(v42 + v41, v43, v7);
  v44(v42 + v41 + v40, *MEMORY[0x1E6969A78], v7);
  v45 = *MEMORY[0x1E6969A48];
  v44(v42 + v41 + 2 * v40, v45, v7);
  v46 = *MEMORY[0x1E6969A58];
  v44(v42 + v41 + 3 * v40, v46, v7);
  v44(v42 + v41 + 4 * v40, *MEMORY[0x1E6969A88], v7);
  v47 = 5 * v40;
  v48 = v107;
  v44(v42 + v41 + v47, *MEMORY[0x1E6969A98], v7);
  v49 = sub_1D33A7318(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = v108;
  (*(v48 + 56))(v116, 1, 1, v117);
  sub_1D332CE9C(v109, v50, type metadata accessor for ReminderTime);
  v51 = sub_1D33DDB54();
  v52 = *(v51 - 8);
  v53 = (*(v52 + 48))(v50, 3, v51);
  if (v53 > 1)
  {
    v109 = v49;
    if (v53 == 2)
    {
      v55 = *MEMORY[0x1E69698D0];
      v103 = v52;
      v56 = v96;
      v57 = *(v96 + 104);
      v108 = v51;
      v58 = v94;
      v57(v94, v55, v104);
      v59 = v98;
      v60 = v95;
      (*(v98 + 104))(v95, *MEMORY[0x1E69699C8], v105);
      v61 = v99;
      v62 = v97;
      v63 = v101;
      (*(v99 + 104))(v97, *MEMORY[0x1E6969998], v101);
      v64 = v114;
      sub_1D33DDE34();
      (*(v61 + 8))(v62, v63);
      (*(v59 + 8))(v60, v105);
      v65 = v58;
      v51 = v108;
      (*(v56 + 8))(v65, v104);
      v52 = v103;
    }

    else
    {
      v70 = v102;
      v44(v102, v45, v7);
      v71 = v93;
      v64 = v114;
      sub_1D33DDE54();
      (*(v103 + 8))(v70, v7);
      if ((*(v48 + 48))(v71, 1, v117) == 1)
      {
        sub_1D331E880(v71, &qword_1EC760E10, &unk_1D33E1A90);
        v54 = v113;
        v72 = v106;
        v68 = v116;
        goto LABEL_12;
      }

      v73 = v92;
      (*(v48 + 32))(v92, v71, v117);
      v74 = *MEMORY[0x1E69698D0];
      v103 = v52;
      v75 = v96;
      v76 = *(v96 + 104);
      v108 = v51;
      v77 = v94;
      v76(v94, v74, v104);
      v78 = v98;
      v79 = v95;
      (*(v98 + 104))(v95, *MEMORY[0x1E69699C8], v105);
      v80 = v99;
      v81 = v97;
      v82 = v101;
      (*(v99 + 104))(v97, *MEMORY[0x1E6969998], v101);
      sub_1D33DDE34();
      v83 = v81;
      v64 = v114;
      (*(v80 + 8))(v83, v82);
      (*(v78 + 8))(v79, v105);
      v84 = v77;
      v51 = v108;
      (*(v75 + 8))(v84, v104);
      v52 = v103;
      (*(v48 + 8))(v73, v117);
    }

    v68 = v116;
    sub_1D331E880(v116, &qword_1EC760E10, &unk_1D33E1A90);
    v69 = v110;
  }

  else
  {
    if (!v53)
    {

      sub_1D331E880(v116, &qword_1EC760E10, &unk_1D33E1A90);
      (*(v48 + 8))(v114, v117);
      (*(v111 + 8))(v115, v112);
      v54 = v113;
      (*(v52 + 32))(v113, v50, v51);
LABEL_15:
      v85 = 0;
      return (*(v52 + 56))(v54, v85, 1, v51);
    }

    v109 = v49;
    v66 = v102;
    v44(v102, v46, v7);
    v67 = v110;
    v64 = v114;
    sub_1D33DDE54();
    (*(v103 + 8))(v66, v7);
    v68 = v116;
    sub_1D331E880(v116, &qword_1EC760E10, &unk_1D33E1A90);
    v69 = v67;
  }

  sub_1D333842C(v69, v68, &qword_1EC760E10, &unk_1D33E1A90);
  v54 = v113;
  v72 = v106;
LABEL_12:
  sub_1D331E818(v68, v72, &qword_1EC760E10, &unk_1D33E1A90);
  if ((*(v48 + 48))(v72, 1, v117) != 1)
  {
    v86 = v100;
    v87 = v117;
    (*(v48 + 32))(v100, v72, v117);
    v88 = v115;
    sub_1D33DDE04();

    v89 = *(v48 + 8);
    v89(v86, v87);
    sub_1D331E880(v68, &qword_1EC760E10, &unk_1D33E1A90);
    v89(v64, v87);
    (*(v111 + 8))(v88, v112);
    goto LABEL_15;
  }

  sub_1D331E880(v68, &qword_1EC760E10, &unk_1D33E1A90);
  (*(v48 + 8))(v64, v117);
  (*(v111 + 8))(v115, v112);
  sub_1D331E880(v72, &qword_1EC760E10, &unk_1D33E1A90);
  v85 = 1;
  return (*(v52 + 56))(v54, v85, 1, v51);
}

uint64_t RecentsItemReminder.init(item:reminderTime:callProviderManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = v31 - v8;
  v9 = type metadata accessor for RecentsItemReminder(0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for ReminderTime(0);
  v12 = *(v11 - 8);
  v31[0] = *(v12 + 56);
  v31[1] = v12 + 56;
  (v31[0])(a4 + v10, 1, 1, v11);
  v34 = v9;
  v13 = *(v9 + 28);
  sub_1D332CE9C(a1, a4 + v13, type metadata accessor for RecentsItem);
  v14 = type metadata accessor for RecentsItem(0);
  (*(*(v14 - 8) + 56))(a4 + v13, 0, 1, v14);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D33E2410;
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D3387AE4();
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = v32;
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;

  v23 = sub_1D33DE7D4();
  v25 = v24;

  *a4 = v23;
  a4[1] = v25;
  v26 = v33;
  sub_1D331E880(a4 + v10, &qword_1EC761D38, "xv");
  sub_1D332CE9C(v22, a4 + v10, type metadata accessor for ReminderTime);
  (v31[0])(a4 + v10, 0, 1, v11);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  }

  v28 = v26;
  v29 = v35;
  sub_1D33C2774(a1, v27, v35);

  sub_1D33C311C(v22, type metadata accessor for ReminderTime);
  sub_1D33C311C(a1, type metadata accessor for RecentsItem);
  return sub_1D333842C(v29, a4 + *(v34 + 20), &unk_1EC760EA0, &qword_1D33E2210);
}

uint64_t ReminderTime.canBeScheduled.getter()
{
  v1 = sub_1D33DDB54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DDD34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D33DDE84();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReminderTime(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D332CE9C(v0, v18, type metadata accessor for ReminderTime);
  if ((*(v2 + 48))(v18, 3, v1) == 2)
  {
    sub_1D33DDE64();
    sub_1D33DDD24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D48, "Ju");
    v19 = sub_1D33DDE74();
    v20 = *(v19 - 8);
    v33 = v1;
    v21 = v7;
    v22 = v20;
    v23 = *(v20 + 72);
    v24 = *(v22 + 80);
    v32 = v6;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D33E2410;
    (*(v22 + 104))(v26 + v25, *MEMORY[0x1E6969A58], v19);
    sub_1D33A7318(v26);
    v31 = v11;
    swift_setDeallocating();
    (*(v22 + 8))(v26 + v25, v19);
    swift_deallocClassInstance();
    sub_1D33DDE04();

    v27 = sub_1D33DDB44();
    LOBYTE(v19) = v28;
    (*(v2 + 8))(v5, v33);
    (*(v21 + 8))(v10, v32);
    (*(v34 + 8))(v14, v31);
    v29 = v19 | (v27 < 21);
  }

  else
  {
    sub_1D33C311C(v18, type metadata accessor for ReminderTime);
    v29 = 1;
  }

  return v29 & 1;
}

uint64_t ReminderTime.actionTitle.getter()
{
  v1 = type metadata accessor for ReminderTime(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D332CE9C(v0, v4, type metadata accessor for ReminderTime);
  v5 = sub_1D33DDB54();
  if ((*(*(v5 - 8) + 48))(v4, 3, v5))
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D33DDB74();
  }

  else
  {
    type metadata accessor for BundleClass();
    v6 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D33DDB74();

    sub_1D33C311C(v4, type metadata accessor for ReminderTime);
  }

  return v8;
}

uint64_t ReminderTime.hash(into:)()
{
  v1 = sub_1D33DDB54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReminderTime(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D332CE9C(v0, v9, type metadata accessor for ReminderTime);
  v10 = (*(v2 + 48))(v9, 3, v1);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1D38B7920](3);
      sub_1D33C34FC(&qword_1EC761D50, MEMORY[0x1E6968278]);
      sub_1D33DE734();
      return (*(v2 + 8))(v5, v1);
    }

    v12 = 0;
  }

  return MEMORY[0x1D38B7920](v12);
}

uint64_t ReminderTime.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D33DDB54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReminderTime(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D33DF284();
  sub_1D332CE9C(v1, v10, type metadata accessor for ReminderTime);
  v11 = (*(v3 + 48))(v10, 3, v2);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 0;
LABEL_8:
    MEMORY[0x1D38B7920](v12);
    return sub_1D33DF2C4();
  }

  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x1D38B7920](3);
  sub_1D33C34FC(&qword_1EC761D50, MEMORY[0x1E6968278]);
  sub_1D33DE734();
  (*(v3 + 8))(v6, v2);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33C25A0()
{
  sub_1D33DF284();
  ReminderTime.hash(into:)();
  return sub_1D33DF2C4();
}

uint64_t RecentsItemReminder.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D33C2774@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v88 = sub_1D33DDB04();
  v5 = *(v88 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v81 - v20;
  v22 = sub_1D33DDC44();
  v83 = *(v22 - 8);
  v23 = *(v83 + 56);
  v89 = v22;
  v90 = a3;
  v85 = v23;
  (v23)(a3, 1, 1);
  v24 = *a1;
  v25 = *(a1 + 32);
  if (((1 << v25) & 0x187) == 0)
  {
    v26 = 0;
    v27 = 0;
    if (((1 << v25) & 0x70) == 0)
    {
LABEL_27:
      v25 = *(a1 + 32);
      v24 = *a1;
      goto LABEL_28;
    }

    v28 = v24;
    v29 = [v28 validRemoteParticipantHandles];
    if (!v29)
    {
      goto LABEL_16;
    }

    v30 = v29;
    sub_1D331F56C();
    sub_1D33C34FC(&qword_1EDEBEE80, sub_1D331F56C);
    v31 = sub_1D33DEA54();

    v32 = (v31 & 0xC000000000000001) != 0 ? sub_1D33DEE14() : *(v31 + 16);

    if (v32 < 2)
    {
      goto LABEL_16;
    }

    v81 = v28;
    v33 = [v28 serviceProvider];
    v34 = MEMORY[0x1E69935E0];
    if (v33)
    {
      v35 = v33;
      v36 = sub_1D33DE7B4();
      v38 = v37;

      v39 = *v34;
      v40 = sub_1D33DE7B4();
      if (v38)
      {
        v28 = v81;
        if (v36 == v40 && v38 == v41)
        {

LABEL_54:
          v75 = [v86 joinConversationRequestForRecentCall_];
          if (v75)
          {
            v76 = v75;
            [v75 setOriginatingUIType_];
            v77 = [v76 URL];
            sub_1D33DDC24();

            v85(v21, 0, 1, v89);
            sub_1D33C36E8(v21, v90, &unk_1EC760EA0, &qword_1D33E2210);
            v78 = [v76 provider];
            v79 = [v78 bundleIdentifier];

            if (v79)
            {
              sub_1D33DE7B4();
              v27 = v80;

LABEL_24:
              v52 = [v28 name];
              if (v52)
              {
                v53 = v52;
                sub_1D33DE7B4();
                v26 = v54;
              }

              else
              {

                v26 = 0;
              }

              goto LABEL_27;
            }

LABEL_21:
            v27 = 0;
            goto LABEL_24;
          }

          v85(v21, 1, 1, v89);
          v48 = v21;
LABEL_20:
          sub_1D33C36E8(v48, v90, &unk_1EC760EA0, &qword_1D33E2210);
          goto LABEL_21;
        }

        v74 = sub_1D33DF1B4();

        if (v74)
        {
          goto LABEL_54;
        }

LABEL_16:
        v43 = [v86 dialRequestForRecentCall_];
        if (v43)
        {
          v44 = v43;
          [v43 setOriginatingUIType_];
          v45 = [v44 URL];
          if (v45)
          {
            v46 = v45;
            sub_1D33DDC24();

            v47 = 0;
          }

          else
          {
            v47 = 1;
          }

          v85(v16, v47, 1, v89);
          sub_1D333842C(v16, v19, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D33C36E8(v19, v90, &unk_1EC760EA0, &qword_1D33E2210);
          v49 = [v44 provider];
          v50 = [v49 displayAppBundleIdentifier];

          sub_1D33DE7B4();
          v27 = v51;

          goto LABEL_24;
        }

        v85(v19, 1, 1, v89);
        v48 = v19;
        goto LABEL_20;
      }
    }

    else
    {
      v42 = *MEMORY[0x1E69935E0];
      sub_1D33DE7B4();
    }

    v28 = v81;

    goto LABEL_16;
  }

  v26 = 0;
  v27 = 0;
LABEL_28:
  v55 = v87;
  if (v25 > 8)
  {
    goto LABEL_32;
  }

  if (((1 << v25) & 0x1B0) != 0)
  {
LABEL_33:
    v57 = v88;
    goto LABEL_38;
  }

  v56 = *(a1 + 8);
  if (v25 != 3 && v25 != 6)
  {
LABEL_32:
    v56 = v24;
    if (v25 < 2)
    {
      goto LABEL_33;
    }
  }

  v58 = v56;

  v59 = Message.dialRequest(with:)(v86);
  [v59 setOriginatingUIType_];
  v60 = [v59 URL];
  if (v60)
  {
    v61 = v82;
    v62 = v60;
    sub_1D33DDC24();

    v63 = 0;
    v57 = v88;
  }

  else
  {
    v63 = 1;
    v57 = v88;
    v61 = v82;
  }

  v85(v61, v63, 1, v89);
  sub_1D33C36E8(v61, v90, &unk_1EC760EA0, &qword_1D33E2210);
  v64 = [v59 provider];
  v65 = [v64 displayAppBundleIdentifier];

  sub_1D33DE7B4();
  v27 = v66;

LABEL_38:
  if (!v26)
  {
    v67 = MEMORY[0x1E69E7CC0];
    if (!v27)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  sub_1D33DDAF4();

  v67 = sub_1D3359EE0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v69 = v67[2];
  v68 = v67[3];
  if (v69 >= v68 >> 1)
  {
    v67 = sub_1D3359EE0(v68 > 1, v69 + 1, 1, v67);
  }

  v67[2] = v69 + 1;
  (*(v5 + 32))(v67 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v69, v55, v57);
  if (v27)
  {
LABEL_44:
    v70 = v84;
    sub_1D33DDAF4();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1D3359EE0(0, v67[2] + 1, 1, v67);
    }

    v72 = v67[2];
    v71 = v67[3];
    if (v72 >= v71 >> 1)
    {
      v67 = sub_1D3359EE0(v71 > 1, v72 + 1, 1, v67);
    }

    v67[2] = v72 + 1;
    (*(v5 + 32))(v67 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v72, v70, v57);
  }

LABEL_49:
  if (v67[2] && !(*(v83 + 48))(v90, 1, v89))
  {
    sub_1D33DDC34();
  }
}

uint64_t sub_1D33C311C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s16CallsAppServices12ReminderTimeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDB54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReminderTime(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D88, &qword_1D33E4DA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D332CE9C(a1, &v24 - v16, type metadata accessor for ReminderTime);
  sub_1D332CE9C(a2, &v17[v18], type metadata accessor for ReminderTime);
  v19 = *(v5 + 48);
  v20 = v19(v17, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v17[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v17[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1D331E880(v17, &qword_1EC761D88, &qword_1D33E4DA8);
    v21 = 0;
    return v21 & 1;
  }

  if (!v20)
  {
    sub_1D332CE9C(v17, v12, type metadata accessor for ReminderTime);
    if (!v19(&v17[v18], 3, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = MEMORY[0x1D38B61B0](v12, v8);
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1D33C311C(v17, type metadata accessor for ReminderTime);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v19(&v17[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1D33C311C(v17, type metadata accessor for ReminderTime);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D33C34FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D33C3594()
{
  sub_1D33C3694(319, &qword_1EC761D70, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1D33C3694(319, &qword_1EC761D78, type metadata accessor for ReminderTime);
    if (v1 <= 0x3F)
    {
      sub_1D33C3694(319, &qword_1EC761D80, type metadata accessor for RecentsItem);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D33C3694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D33DECF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D33C36E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D33C3750()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D33C37D4()
{
  sub_1D33DF284();
  MEMORY[0x1D38B7920](0);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33C3840()
{
  sub_1D33DF284();
  MEMORY[0x1D38B7920](0);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33C3880()
{
  v1 = v0;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  v2 = *(v0 + 56);
  v3 = swift_allocObject();
  *(v3 + 16) = v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D33C7970;
  *(v4 + 24) = v3;
  v8[4] = sub_1D33C7D98;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D33C39EC;
  v8[3] = &block_descriptor_26_1;
  v5 = _Block_copy(v8);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];

    return v7;
  }

  return result;
}

uint64_t sub_1D33C3A14()
{
  v1 = v0;
  v9 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 56);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D33C792C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1D3356568;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D33C39EC;
  aBlock[3] = &block_descriptor_4;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void *sub_1D33C3B80(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v19 = a1;
  v18 = sub_1D33DEB84();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DEB24();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1D33DE6A4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v4[4] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE684();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D33C7C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D33C7CA8();
  sub_1D33DED64();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v18);
  v4[7] = sub_1D33DEBD4();
  v4[8] = 0;
  v4[9] = 0xE000000000000000;
  v4[10] = MEMORY[0x1E69E7CC0];
  v14 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  if ([v5[4] junkFilteringEnabled])
  {
    [v14 setIncludeAcceptedIntroductions_];
  }

  *(v5 + 24) = v19;
  v15 = v20;
  if (!v20)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  }

  v5[2] = v15;
  v16 = v22;
  v5[5] = v21;
  v5[6] = v16;
  return v5;
}

uint64_t sub_1D33C3ED4()
{
  v0 = sub_1D33C3A14();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1D33DEE14();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1D33DEFA4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D38B75D0](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 contact];

      sub_1D33DEF84();
      v8 = *(v9 + 16);
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
    }

    while (v2 != v4);

    return v9;
  }

  return result;
}

uint64_t sub_1D33C4010(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *(v4 + 344) = a2;
  *(v4 + 352) = v3;
  *(v4 + 416) = a3;
  *(v4 + 336) = a1;
  v5 = sub_1D33DDD34();
  *(v4 + 360) = v5;
  v6 = *(v5 - 8);
  *(v4 + 368) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  sub_1D33DE974();
  *(v4 + 408) = sub_1D33DE964();
  v8 = sub_1D33DE914();
  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D33C4164, v8, v9);
}

uint64_t sub_1D33C4164()
{
  v142 = v0;
  v141[1] = *MEMORY[0x1E69E9840];
  v1 = v0[51];
  v2 = v0[43];

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    goto LABEL_50;
  }

  v4 = v0[43];
  if ((v0[52] & 1) == 0)
  {
    v41 = v0[44];
    v42 = v0[42];
    if (sub_1D33C3880() == v42 && v4 == v43)
    {
    }

    else
    {
      v45 = v0[42];
      v46 = sub_1D33DF1B4();

      if ((v46 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v47 = v0[44];
    v3 = sub_1D33C3A14();
    goto LABEL_50;
  }

LABEL_3:
  v5 = v0[44];
  v6 = v0[42];
  v7 = *(v5 + 56);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D33C7974;
  *(v9 + 24) = v8;
  v0[6] = sub_1D33C7D98;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D33C39EC;
  v0[5] = &block_descriptor_36_0;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_9;
  }

  v12 = v0[43];
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v13 = v0[42] & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v48 = v0[44];
    v33 = swift_allocObject();
    v33[2] = v48;
    v33[3] = v3;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1D33C7D90;
    *(v49 + 24) = v33;
    v0[30] = sub_1D33C7D98;
    v0[31] = v49;
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1D33C39EC;
    v0[29] = &block_descriptor_81;
    v50 = _Block_copy(v0 + 26);
    v51 = v0[31];

    dispatch_sync(v7, v50);
    _Block_release(v50);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if ((v50 & 1) == 0)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_26:
    v52 = v33;
    v40 = sub_1D33DDBE4();

LABEL_27:
    swift_willThrow();

    v53 = v40;
    v54 = sub_1D33DE444();
    v55 = sub_1D33DEAD4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = v40;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_1D331A000, v54, v55, "Error searching contacts %@", v56, 0xCu);
      sub_1D331E880(v57, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v57, -1, -1);
      MEMORY[0x1D38B81C0](v56, -1, -1);
    }

    v61 = v0[49];
    v60 = v0[50];
    v63 = v0[47];
    v62 = v0[48];
    v64 = v0[45];
    v65 = v0[46];

    swift_willThrow();
    (*(v65 + 8))(v60, v64);

    v66 = v0[1];
    v67 = *MEMORY[0x1E69E9840];

    return v66();
  }

  aBlock = v0 + 8;
  if (qword_1EC760998 != -1)
  {
    goto LABEL_54;
  }

LABEL_9:
  v14 = sub_1D33DE464();
  __swift_project_value_buffer(v14, qword_1EC762148);

  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();

  v137 = v7;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[42];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v141[0] = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1D3328B48(v17, v4, v141);
    _os_log_impl(&dword_1D331A000, v15, v16, "Searching for %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1D38B81C0](v19, -1, -1);
    MEMORY[0x1D38B81C0](v18, -1, -1);
  }

  v20 = v0[50];
  v21 = v0[44];
  v22 = v0[42];
  sub_1D33C5100();
  v23 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v24 = sub_1D33DE8A4();

  v25 = [v23 initWithKeysToFetch_];

  v26 = sub_1D33C52D8();
  [v25 setPredicate_];

  [v25 setSortOrder_];
  sub_1D33DDD24();
  v27 = swift_allocObject();
  *(v27 + 16) = v3;
  v136 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = *(v21 + 16);
  v30 = swift_allocObject();
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v4;
  v30[5] = v28;
  v30[6] = v27;
  v0[12] = sub_1D33C79B8;
  v0[13] = v30;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D33C5B80;
  v0[11] = &block_descriptor_48;
  v31 = _Block_copy(aBlock);
  v32 = v0[13];

  v0[41] = 0;
  v138 = v25;
  LODWORD(v32) = [v29 enumerateContactsAndMatchInfoWithFetchRequest:v25 error:v0 + 41 usingBlock:v31];
  _Block_release(v31);
  v33 = v0[41];
  if (!v32)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  if (*(v28 + 16) == 1)
  {

    v34 = v33;
    v35 = sub_1D33DE444();
    v36 = sub_1D33DEAF4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[42];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v141[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1D3328B48(v37, v4, v141);
      _os_log_impl(&dword_1D331A000, v35, v36, "Search was cancelled for %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1D38B81C0](v39, -1, -1);
      MEMORY[0x1D38B81C0](v38, -1, -1);
    }

    sub_1D33C79CC();
    v40 = swift_allocError();
    goto LABEL_27;
  }

  v69 = v0 + 14;

  v70 = v33;
  v71 = sub_1D33DE444();
  v72 = sub_1D33DEAF4();
  if (!os_log_type_enabled(v71, v72))
  {

    v74 = v137;
    goto LABEL_37;
  }

  v73 = swift_slowAlloc();
  *v73 = 134349056;
  swift_beginAccess();
  v74 = v137;
  if (*v136 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((*v136 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    *(v73 + 4) = i;

    _os_log_impl(&dword_1D331A000, v71, v72, "Found %{public}ld contacts", v73, 0xCu);
    MEMORY[0x1D38B81C0](v73, -1, -1);
LABEL_37:

    v73 = v0[44];
    swift_beginAccess();
    v76 = *(v27 + 16);
    v71 = swift_allocObject();
    v71[2].isa = v73;
    v71[3].isa = v76;
    v77 = swift_allocObject();
    v72 = v77;
    *(v77 + 16) = sub_1D33C79C8;
    *(v77 + 24) = v71;
    v0[18] = sub_1D33C7D98;
    v0[19] = v77;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = sub_1D33C39EC;
    v0[17] = &block_descriptor_59;
    v69 = _Block_copy(v69);
    v78 = v0[19];

    dispatch_sync(v74, v69);
    _Block_release(v69);
    LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

    if ((v76 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_56:
    ;
  }

  v80 = v0[49];
  v79 = v0[50];
  v81 = v0[45];
  v82 = v0[46];
  v83 = v0[44];
  sub_1D33C5C14();
  v84 = *(v82 + 16);
  v84(v80, v79, v81);
  v85 = sub_1D33DE444();
  v86 = sub_1D33DEAF4();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v0[49];
  if (v87)
  {
    v89 = v0[48];
    v90 = v0[45];
    v91 = v0[46];
    aBlocka = v84;
    v92 = swift_slowAlloc();
    *v92 = 134349056;
    sub_1D33DDD04();
    sub_1D33DDC74();
    v94 = v93;
    v95 = *(v91 + 8);
    v95(v89, v90);
    sub_1D33DDC74();
    v97 = v96;
    v95(v88, v90);
    v74 = v137;
    *(v92 + 4) = v94 - v97;
    _os_log_impl(&dword_1D331A000, v85, v86, "Contact search time: %{public}f", v92, 0xCu);
    v98 = v92;
    v84 = aBlocka;
    MEMORY[0x1D38B81C0](v98, -1, -1);
  }

  else
  {
    v100 = v0[45];
    v99 = v0[46];

    v95 = *(v99 + 8);
    v95(v88, v100);
  }

  if ([*(v0[44] + 32) smartDialerRankingEnabled])
  {
    v101 = v0[44];
    sub_1D33C3A14();

    v102 = *(v101 + 24);
    v103 = v0[44];
    if (v102)
    {
      v105 = *(v103 + 40);
      v104 = *(v103 + 48);
      sub_1D33C3A14();
      v106 = v105();
    }

    else
    {
      v106 = sub_1D33C3A14();
    }

    v107 = v0[44];
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = v106;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_1D33C7D90;
    *(v109 + 24) = v108;
    v0[24] = sub_1D33C7D98;
    v0[25] = v109;
    v0[20] = MEMORY[0x1E69E9820];
    v0[21] = 1107296256;
    v0[22] = sub_1D33C39EC;
    v0[23] = &block_descriptor_70;
    v110 = _Block_copy(v0 + 20);
    v111 = v0[25];

    dispatch_sync(v74, v110);
    _Block_release(v110);
    LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

    if (v107)
    {
      __break(1u);
    }

    v84(v0[47], v0[50], v0[45]);
    v112 = sub_1D33DE444();
    v113 = sub_1D33DEAF4();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = v0[47];
      v115 = v0[48];
      v116 = v0[45];
      v117 = v0[46];
      v118 = swift_slowAlloc();
      *v118 = 134349056;
      sub_1D33DDD04();
      sub_1D33DDC74();
      v120 = v119;
      v95(v115, v116);
      sub_1D33DDC74();
      v122 = v121;
      v95(v114, v116);
      *(v118 + 4) = v120 - v122;
      _os_log_impl(&dword_1D331A000, v112, v113, "Contact ranking time: %{public}f", v118, 0xCu);
      MEMORY[0x1D38B81C0](v118, -1, -1);
    }

    else
    {
      v124 = v0[46];
      v123 = v0[47];
      v125 = v0[45];

      v95(v123, v125);
    }
  }

  v126 = v0[50];
  v127 = v0[45];
  v128 = v0[46];
  v129 = v0[44];
  v3 = sub_1D33C3A14();

  v95(v126, v127);
LABEL_50:
  v131 = v0[49];
  v130 = v0[50];
  v133 = v0[47];
  v132 = v0[48];

  v134 = v0[1];
  v135 = *MEMORY[0x1E69E9840];

  return v134(v3);
}

uint64_t sub_1D33C5100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D33E4E60;
  v3 = *MEMORY[0x1E695C258];
  v4 = *MEMORY[0x1E695C330];
  *(v2 + 32) = *MEMORY[0x1E695C258];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E695C208];
  v6 = *MEMORY[0x1E695C310];
  v7 = MEMORY[0x1E695C328];
  *(v2 + 48) = *MEMORY[0x1E695C208];
  *(v2 + 56) = v6;
  v8 = *v7;
  *(v2 + 64) = *v7;
  v21 = v2;
  v9 = objc_opt_self();
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = [v9 descriptorForRequiredKeysForStyle_];
  MEMORY[0x1D38B6F20]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D33DE8D4();
  }

  sub_1D33DE8F4();
  v16 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1D38B6F20]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D33DE8D4();
  }

  sub_1D33DE8F4();
  if (!*(v1 + 24))
  {
    v17 = sub_1D33C7B58();
    sub_1D33CCABC(v17);
  }

  return v21;
}

id sub_1D33C52D8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 predicateWithValue_];
  if ([*(v0 + 32) phoneLargeFormatUIEnabled])
  {
    sub_1D33C3880();
    sub_1D33DE854();
    if (v4)
    {
      do
      {
        if (sub_1D33DE744())
        {
        }

        else
        {
          v6 = sub_1D33DE754();

          if ((v6 & 1) == 0)
          {
            v7 = 0;
            goto LABEL_11;
          }
        }

        sub_1D33DE854();
      }

      while (v5);
    }

    v7 = 1;
LABEL_11:
  }

  else
  {
    v7 = 1;
  }

  if (*(v1 + 24) > 1u)
  {
    if (*(v1 + 24) != 2)
    {
      goto LABEL_18;
    }

    if (v7)
    {
      goto LABEL_19;
    }

LABEL_17:
    v8 = objc_opt_self();
    sub_1D33C3880();
    v9 = sub_1D33DE784();

    v10 = [v8 predicateForContactsMatchingFullTextSearch:v9 containerIdentifiers:0 groupIdentifiers:0];

    goto LABEL_21;
  }

  if (!*(v1 + 24))
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11 = objc_opt_self();
  sub_1D33C3880();
  v12 = sub_1D33DE784();

  v10 = [v11 predicateForContactsMatchingSmartDialerString_];

  if (!v10)
  {
    v10 = [v2 predicateWithValue_];
  }

LABEL_21:

  return v10;
}