uint64_t sub_1D7B7E95C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      v15 = *v6;
      v16 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = [v15 scoreProfile];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 personalizationScore];
      v20 = v19;

      v21 = [v16 scoreProfile];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      [v21 personalizationScore];
      v24 = v23;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v24 >= v20)
      {
        goto LABEL_18;
      }

      v25 = v6;
      v26 = v7 == v6++;
      if (!v26)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_45;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_18:
    v25 = v4;
    v26 = v7 == v4++;
    if (v26)
    {
      goto LABEL_20;
    }

LABEL_19:
    *v7 = *v25;
    goto LABEL_20;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v27 = &selRef_addTarget_action_;
    while (1)
    {
      v28 = v6 - 1;
      --v5;
      v29 = v14;
      v43 = v6 - 1;
      while (1)
      {
        v44 = v14;
        v30 = v6;
        v31 = *--v29;
        v32 = *v28;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v33 = [v31 v27[477]];
        if (!v33 || (v34 = v27, v35 = v33, [v33 personalizationScore], v37 = v36, v35, v27 = v34, (v38 = objc_msgSend(v32, v34 + 2477)) == 0))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_36;
        }

        v39 = v38;
        [v38 personalizationScore];
        v41 = v40;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v27 = v34;
        if (v41 < v37)
        {
          break;
        }

LABEL_36:
        v6 = v30;
        if (v5 + 1 != v44)
        {
          *v5 = *v29;
        }

        --v5;
        v14 = v29;
        v28 = v43;
        if (v29 <= v4)
        {
          v14 = v29;
          goto LABEL_45;
        }
      }

      if (v5 + 1 != v30)
      {
        *v5 = *v43;
      }

      v14 = v44;
      if (v44 > v4)
      {
        v6 = v43;
        if (v43 > v7)
        {
          continue;
        }
      }

      v6 = v43;
      break;
    }
  }

LABEL_45:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t sub_1D7B7ECEC()
{
  result = qword_1EC9E1A00;
  if (!qword_1EC9E1A00)
  {
    sub_1D7B812D4(255, &qword_1EE0BF3B0, type metadata accessor for EndOfArticleHeadlineModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E1A00);
  }

  return result;
}

uint64_t sub_1D7B7ED74(uint64_t a1, uint64_t a2)
{
  v4 = _s15ArticleProviderOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B7EDF4(uint64_t a1, uint64_t a2)
{
  v4 = _s15ArticleProviderOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(_s15ArticleProviderOMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_1D7A60644();
      v7 = *(v6 + 48);
      v8 = sub_1D7D2DFAC();
      (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_9;
    }

LABEL_6:

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

LABEL_9:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7B7F0A0(uint64_t a1)
{
  v2 = _s15ArticleProviderOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7B7F0FC()
{
  if (!qword_1EE0BF2A8)
  {
    sub_1D7B814F4(255, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF2A8);
    }
  }
}

void sub_1D7B7F178(void *a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    sub_1D7B7F190(a1, a2, BYTE1(a2) & 1);
  }
}

void sub_1D7B7F190(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1D7B7F1D4()
{
  if (!qword_1EE0BB118)
  {
    sub_1D7992EFC(255, &unk_1EE0BB030);
    sub_1D7B80F8C(255, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    sub_1D7B7F278();
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB118);
    }
  }
}

unint64_t sub_1D7B7F278()
{
  result = qword_1EE0BB028;
  if (!qword_1EE0BB028)
  {
    sub_1D7992EFC(255, &unk_1EE0BB030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB028);
  }

  return result;
}

void sub_1D7B7F2FC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1D7B80F8C(255, a3, a4);
    v5 = sub_1D7D2947C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7B7F358()
{
  if (!qword_1EC9E5AD8)
  {
    sub_1D7B7F2FC(255, &qword_1EE0C0270, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5AD8);
    }
  }
}

uint64_t sub_1D7B7F3D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7B7F4F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7B7F558(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7D3167C())
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v8;
    }

    v23 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C6B4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v8 = v23;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA70EF00](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a1 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v21 = v11;
      sub_1D7B7902C(&v21, a2, a3, a4, v22);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;
      swift_unknownObjectRelease();
      v12 = v22[0];
      v13 = v22[1];
      v23 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D7A5C6B4((v14 > 1), v15 + 1, 1);
        v8 = v23;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v9;
      if (v10 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1D7B7F70C(void *a1, uint64_t *a2)
{
  v74 = sub_1D7D2EB1C();
  v4 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v63 - v11;
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v75 = a2[3];
  if ([a1 respondsToSelector_])
  {
    v16 = [a1 parentIssue];
    if (v16)
    {
      v17 = v16;
      *&v77 = MEMORY[0x1E69E7CC0];
      BYTE8(v77) = 0;
      sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v18 = sub_1D7D2940C();

      return v18;
    }
  }

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();

  if (v15)
  {
LABEL_5:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  swift_unknownObjectRetain();

  if (v13)
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    v23 = v76;
    *(&v63 - 2) = v76;
    *(&v63 - 1) = v13;
    sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    sub_1D7D294BC();
    v24 = swift_allocObject();
    v24[2] = v14;
    v24[3] = v13;
    v25 = v75;
    v24[4] = v15;
    v24[5] = v25;
    v24[6] = v23;
    v24[7] = a1;
    sub_1D7A03D20(v14, v13, v15);

    swift_unknownObjectRetain();
    v26 = sub_1D7D2934C();
    sub_1D7D293AC();

    v27 = sub_1D7D2934C();
    v28 = sub_1D7D293DC();
    swift_unknownObjectRelease();

    return v28;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (v75 >> 62)
  {
    v29 = sub_1D7D3167C();
  }

  else
  {
    v29 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (!v29)
  {
LABEL_6:
    *&v77 = v20;
    BYTE8(v77) = 0;
    sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }

  v82 = MEMORY[0x1E69E7CC0];
  result = sub_1D7D3156C();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v72 = v75 & 0xC000000000000001;
    v66 = v75 + 32;
    v70 = *MEMORY[0x1E69B5DE8];
    v69 = (v4 + 104);
    v68 = (v4 + 8);
    v67 = v29;
    while (1)
    {
      if (v72)
      {
        v36 = MEMORY[0x1DA70EF00](v30, v75);
      }

      else
      {
        v36 = *(v66 + 8 * v30);
        swift_unknownObjectRetain();
      }

      v37 = v76;
      sub_1D7B8139C(v76 + 144, &v77, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
      if (!*(&v78 + 1))
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
      v31 = swift_unknownObjectRetain();
      sub_1D79EFA60(v31, v12);
      v32 = v74;
      (*v69)(v7, v70, v74);
      v33 = sub_1D7D2EB0C();
      v34 = *v68;
      (*v68)(v7, v32);
      v34(v12, v32);
      type metadata accessor for EndOfArticleHeadlineModel();
      v35 = swift_allocObject();
      *(v35 + 16) = v36;
      *(v35 + 24) = 3;
      *(v35 + 32) = v33 & 1;
      __swift_destroy_boxed_opaque_existential_1(&v77);
      swift_unknownObjectRelease();
LABEL_16:
      ++v30;
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      if (v30 == v29)
      {
        v20 = v82;
        goto LABEL_6;
      }
    }

    sub_1D7B81420(&v77, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
    v71 = *(v37 + 136);
    v38 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v39 = [a1 isBundlePaid];
    }

    else
    {
      v39 = 0;
    }

    v40 = [a1 sourceChannel];
    if (v40)
    {
      v41 = [v40 identifier];
      swift_unknownObjectRelease();
      v73 = sub_1D7D3034C();
      v43 = v42;

      if (v38)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v73 = 0;
      v43 = 0;
      if (v38)
      {
LABEL_26:
        v44 = [v71 purchaseProvider];
        if (v43)
        {
          LODWORD(v64) = v39;
          v65 = v44;
          v45 = [v44 purchasedTagIDs];
          v46 = sub_1D7D309AC();

          if (*(v46 + 16))
          {
            sub_1D7D31A8C();
            sub_1D7D303FC();
            v47 = sub_1D7D31ABC();
            v48 = v73;
            v49 = -1 << *(v46 + 32);
            v50 = v47 & ~v49;
            if ((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
            {
              v51 = ~v49;
              while (1)
              {
                v52 = (*(v46 + 48) + 16 * v50);
                if (*v52 == v48 && v43 == v52[1])
                {
                  break;
                }

                v54 = sub_1D7D3197C();
                v48 = v73;
                if (v54)
                {
                  break;
                }

                v50 = (v50 + 1) & v51;
                if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              swift_unknownObjectRelease();

              v56 = 1;
              goto LABEL_63;
            }
          }

LABEL_36:

          v39 = v64;
        }

        swift_unknownObjectRelease();
        if (!v39)
        {
          goto LABEL_61;
        }

        goto LABEL_41;
      }
    }

    if ((v39 & 1) == 0)
    {

      v56 = 1;
LABEL_63:
      swift_getObjectType();
      sub_1D7CB99FC(3, v56);
      swift_unknownObjectRelease();
      v29 = v67;
      goto LABEL_16;
    }

LABEL_41:
    if (!v43)
    {
LABEL_62:
      v56 = 0;
      goto LABEL_63;
    }

    v55 = [objc_msgSend(v71 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v55, v55 + 1))
    {
      sub_1D7D3138C();
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v77 = v80;
    v78 = v81;
    if (*(&v81 + 1))
    {
      sub_1D7992EFC(0, &qword_1EE0BECA0);
      if (swift_dynamicCast())
      {
        v57 = v79;
        v58 = [v79 integerValue];
        if (v58 == -1)
        {

LABEL_58:
          v60 = [objc_msgSend(v71 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v61 = [v60 bundleChannelIDs];

          v62 = sub_1D7D3031C();
          v56 = [v61 containsObject_];

          goto LABEL_63;
        }

LABEL_52:
        v65 = v58;
        if (objc_getAssociatedObject(v55, ~v58))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v80 = 0u;
          v81 = 0u;
        }

        v77 = v80;
        v78 = v81;
        if (*(&v81 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v59 = v79;
            v64 = [v59 integerValue];

            if ((v64 ^ v65))
            {
              goto LABEL_58;
            }

LABEL_61:

            goto LABEL_62;
          }
        }

        else
        {
          sub_1D79F0014(&v77);
        }

        if (v65)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }
    }

    else
    {
      sub_1D79F0014(&v77);
    }

    v57 = 0;
    v58 = 0;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B801B0(void *a1, unint64_t *a2)
{
  v3 = v2;
  v62 = sub_1D7D2EB1C();
  v6 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v7);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v60 = &v52 - v11;
  v12 = *a2;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  if (v12 >> 62)
  {
    v13 = sub_1D7D3167C();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_59:

    v51 = MEMORY[0x1E69E7CC0];
LABEL_60:
    *&v66 = v51;
    BYTE8(v66) = 0;
    sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_59;
  }

LABEL_3:
  v71 = MEMORY[0x1E69E7CC0];
  result = sub_1D7D3156C();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v64 = v12 & 0xC000000000000001;
    v54 = v12 + 32;
    v59 = *MEMORY[0x1E69B5DE8];
    v58 = (v6 + 104);
    v57 = (v6 + 8);
    v63 = v13;
    v65 = v3;
    v56 = a1;
    v55 = v12;
    while (1)
    {
      if (v64)
      {
        v24 = MEMORY[0x1DA70EF00](v15, v12);
      }

      else
      {
        v24 = *(v54 + 8 * v15);
        swift_unknownObjectRetain();
      }

      sub_1D7B8139C(v3 + 144, &v66, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
      if (!*(&v67 + 1))
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      v16 = swift_unknownObjectRetain();
      v17 = v60;
      sub_1D79EFA60(v16, v60);
      v19 = v61;
      v18 = v62;
      (*v58)(v61, v59, v62);
      v20 = sub_1D7D2EB0C();
      v21 = *v57;
      (*v57)(v19, v18);
      v22 = v17;
      v13 = v63;
      v21(v22, v18);
      type metadata accessor for EndOfArticleHeadlineModel();
      v23 = swift_allocObject();
      *(v23 + 16) = v24;
      *(v23 + 24) = 2;
      *(v23 + 32) = v20 & 1;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      swift_unknownObjectRelease();
LABEL_6:
      ++v15;
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      v3 = v65;
      if (v15 == v13)
      {

        v51 = v71;
        goto LABEL_60;
      }
    }

    sub_1D7B81420(&v66, qword_1EE0C1958, &unk_1EE0CC8B0, &protocol descriptor for EndOfArticleHeadlineModelFactoryType);
    v25 = *(v3 + 136);
    v26 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v27 = [a1 isBundlePaid];
    }

    else
    {
      v27 = 0;
    }

    v28 = [a1 sourceChannel];
    if (v28)
    {
      v29 = [v28 identifier];
      swift_unknownObjectRelease();
      v30 = sub_1D7D3034C();
      v32 = v31;

      if (v26)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v30 = 0;
      v32 = 0;
      if (v26)
      {
LABEL_16:
        v33 = [v25 purchaseProvider];
        if (v32)
        {
          v53 = v33;
          v34 = [v33 purchasedTagIDs];
          v35 = sub_1D7D309AC();

          if (*(v35 + 16))
          {
            sub_1D7D31A8C();
            sub_1D7D303FC();
            v36 = sub_1D7D31ABC();
            v37 = -1 << *(v35 + 32);
            v38 = v36 & ~v37;
            if ((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
            {
              v39 = ~v37;
              while (1)
              {
                v40 = (*(v35 + 48) + 16 * v38);
                v41 = *v40 == v30 && v32 == v40[1];
                if (v41 || (sub_1D7D3197C() & 1) != 0)
                {
                  break;
                }

                v38 = (v38 + 1) & v39;
                if (((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              swift_unknownObjectRelease();

              v43 = 1;
              v13 = v63;
              goto LABEL_56;
            }
          }

LABEL_26:

          v13 = v63;
        }

        swift_unknownObjectRelease();
        if (!v27)
        {
          goto LABEL_52;
        }

        goto LABEL_31;
      }
    }

    if ((v27 & 1) == 0)
    {

      v43 = 1;
      goto LABEL_56;
    }

LABEL_31:
    if (v32)
    {
      v42 = [objc_msgSend(v25 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v42, v42 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      v66 = v69;
      v67 = v70;
      if (*(&v70 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0);
        if (swift_dynamicCast())
        {
          v44 = v68;
          v45 = [v68 integerValue];
          if (v45 == -1)
          {

            goto LABEL_55;
          }

          v46 = v45;
LABEL_43:
          if (objc_getAssociatedObject(v42, ~v46))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v69 = 0u;
            v70 = 0u;
          }

          v66 = v69;
          v67 = v70;
          if (*(&v70 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0);
            if (swift_dynamicCast())
            {
              v47 = v68;
              v53 = [v47 integerValue];

              if ((v53 ^ v46))
              {
                goto LABEL_55;
              }

LABEL_52:

              v43 = 0;
              goto LABEL_56;
            }
          }

          else
          {
            sub_1D79F0014(&v66);
          }

          if ((v46 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_55:
          v48 = [objc_msgSend(v25 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v49 = [v48 bundleChannelIDs];

          v50 = sub_1D7D3031C();
          v43 = [v49 containsObject_];

          goto LABEL_56;
        }
      }

      else
      {
        sub_1D79F0014(&v66);
      }

      v44 = 0;
      v46 = 0;
      goto LABEL_43;
    }

    v43 = 0;
LABEL_56:
    swift_getObjectType();
    sub_1D7CB99FC(3, v43);
    swift_unknownObjectRelease();
    a1 = v56;
    v12 = v55;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B80A34(uint64_t a1, uint64_t a2)
{
  sub_1D7B8139C(v2 + 96, &v11, &qword_1EE0C7978, qword_1EE0C7980, &protocol descriptor for StocksFeedServiceType);
  if (v12)
  {
    v4 = sub_1D799D69C(&v11, &v13);
    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1D7B814F4(0, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D7D294BC();

    v6 = sub_1D7D2934C();
    sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    sub_1D7D2939C();

    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = a2;

    v8 = sub_1D7D2934C();
    v9 = sub_1D7D293AC();

    __swift_destroy_boxed_opaque_existential_1(&v13);
    return v9;
  }

  else
  {
    sub_1D7B81420(&v11, &qword_1EE0C7978, qword_1EE0C7980, &protocol descriptor for StocksFeedServiceType);
    v13 = MEMORY[0x1E69E7CC0];
    v14 = 0;
    sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D7B80C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7B8139C(a3 + 96, &v12, &qword_1EE0C7978, qword_1EE0C7980, &protocol descriptor for StocksFeedServiceType);
  if (v13)
  {
    v5 = sub_1D799D69C(&v12, &v14);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1D7B814F4(0, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D7D294BC();

    v7 = sub_1D7D2934C();
    sub_1D7B80F8C(0, &unk_1EE0BF1D0, &qword_1EE0CBA60);
    sub_1D7D2939C();

    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a2;

    v9 = sub_1D7D2934C();
    v10 = sub_1D7D293AC();

    __swift_destroy_boxed_opaque_existential_1(&v14);
    return v10;
  }

  else
  {
    sub_1D7B81420(&v12, &qword_1EE0C7978, qword_1EE0C7980, &protocol descriptor for StocksFeedServiceType);
    v14 = MEMORY[0x1E69E7CC0];
    v15 = 0;
    sub_1D7B814F4(0, &qword_1EE0C02C0, &type metadata for ArticleProviderServiceResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

void sub_1D7B80F8C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D798C3BC(255, a3);
    v4 = sub_1D7D307BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_36Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1D7D2DFAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1D7B812D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B81338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[10];
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  return MEMORY[0x1DA70D090](v2, *MEMORY[0x1E69B5080], v3, v4);
}

uint64_t sub_1D7B8139C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7B7F4F0(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7B81420(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7B7F4F0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7B81490()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

void sub_1D7B814F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7B8157C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(v2, v3, v4);
}

uint64_t sub_1D7B816AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7B816F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7B81764()
{
  v1 = *v0;
  if (*(v0 + 56))
  {
  }

  else
  {
    v2 = [*v0 identifier];
    v1 = sub_1D7D3034C();
  }

  return v1;
}

uint64_t sub_1D7B817D8()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7B8184C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7B81A18();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7B81898()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

unint64_t sub_1D7B81910()
{
  result = qword_1EC9E5B00;
  if (!qword_1EC9E5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5B00);
  }

  return result;
}

unint64_t sub_1D7B81968()
{
  result = qword_1EC9E5B08;
  if (!qword_1EC9E5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5B08);
  }

  return result;
}

unint64_t sub_1D7B819C0()
{
  result = qword_1EC9E5B10;
  if (!qword_1EC9E5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5B10);
  }

  return result;
}

unint64_t sub_1D7B81A18()
{
  result = qword_1EC9E5B18;
  if (!qword_1EC9E5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5B18);
  }

  return result;
}

unint64_t sub_1D7B81A70()
{
  result = qword_1EC9E5B20;
  if (!qword_1EC9E5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5B20);
  }

  return result;
}

uint64_t sub_1D7B81AC4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
      v13 = *(a2 + 40);
      v14 = *(a2 + 48);
      v31[0] = *a1;
      v31[1] = v2;
      v31[2] = v5;
      v31[3] = v4;
      v31[4] = v7;
      v31[5] = v6;
      v31[6] = v8;
      v27[0] = v9;
      v27[1] = v10;
      v27[2] = v11;
      v28 = v12;
      v29 = v13;
      v30 = v14;
      v15 = _s12NewsArticles12ConcernModelV2eeoiySbAC_ACtFZ_0(v31, v27);
      return v15 & 1;
    }

LABEL_5:
    v15 = 0;
    return v15 & 1;
  }

  if (*(a2 + 56))
  {
    goto LABEL_5;
  }

  v26 = *(a1 + 48);
  v16 = [swift_unknownObjectRetain() identifier];
  v25 = sub_1D7D3034C();
  v18 = v17;

  v19 = [v9 identifier];
  v20 = sub_1D7D3034C();
  v22 = v21;

  if (v25 == v20 && v18 == v22)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D7D3197C();
  }

  sub_1D7B81C3C(v3, v2, v5, v4, v7, v6, v26, 0);
  return v15 & 1;
}

uint64_t sub_1D7B81C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for PDFReplicaViewerColorPalette()
{
  result = qword_1EC9E5B30;
  if (!qword_1EC9E5B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7B81D20()
{
  sub_1D79F85FC();
  if (v0 <= 0x3F)
  {
    sub_1D7B6C5EC(319, &unk_1EC9E5920, type metadata accessor for UIBarStyle);
    if (v1 <= 0x3F)
    {
      sub_1D7B6C5EC(319, &qword_1EE0C0110, type metadata accessor for UIStatusBarStyle);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D7B81DF8()
{
  sub_1D7B6C5EC(0, &qword_1EE0C0110, type metadata accessor for UIStatusBarStyle);
  v19 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v18 - v3;
  sub_1D7B6C5EC(0, &unk_1EC9E5920, type metadata accessor for UIBarStyle);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PDFReplicaViewerColorPalette();
  __swift_allocate_value_buffer(v11, qword_1ECA0BBF0);
  v12 = __swift_project_value_buffer(v11, qword_1ECA0BBF0);
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  v15 = [v13 whiteColor];
  v20 = 1;
  v21 = 0;
  type metadata accessor for UIBarStyle(0);
  sub_1D7D29DDC();
  v20 = 1;
  v21 = 3;
  type metadata accessor for UIStatusBarStyle(0);
  sub_1D7D29DDC();
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.2];
  *v12 = v14;
  *(v12 + 1) = v15;
  (*(v7 + 32))(&v12[v11[6]], v10, v6);
  result = (*(v1 + 32))(&v12[v11[7]], v4, v19);
  *&v12[v11[8]] = v16;
  return result;
}

uint64_t sub_1D7B820B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1D7D2EA6C();
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v67 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7990AB0(0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A9AE64();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v70 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v62 = v55 - v20;
  sub_1D7B82B34(0, &qword_1EE0BEB18, MEMORY[0x1E69E6F48]);
  v69 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v55 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B82A7C();
  v26 = v71;
  sub_1D7D31AFC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v58 = v10;
  v59 = 0;
  v60 = v22;
  v61 = a1;
  v71 = v14;
  v57 = v11;
  LOBYTE(v74) = 0;
  sub_1D798ED94(&qword_1EE0BF998, sub_1D7990AB0);
  v28 = v62;
  v29 = v64;
  sub_1D7D3173C();
  sub_1D7994BB0();
  v31 = v30;
  LOBYTE(v73) = 1;
  sub_1D798ED94(&qword_1EE0BF8C8, sub_1D7994BB0);
  v55[1] = v31;
  sub_1D7D3173C();
  v32 = v74;
  sub_1D7994C2C();
  v34 = v33;
  LOBYTE(v72) = 2;
  sub_1D798ED94(&qword_1EE0BF8D0, sub_1D7994C2C);
  v55[2] = v34;
  v35 = v25;
  sub_1D7D3173C();
  v56 = v73;
  v36 = v28;
  v37 = v70;
  sub_1D7A9AF10(v28, v70);
  v38 = v63;
  v39 = *(v63 + 48);
  v40 = v39(v37, 1, v29);
  v41 = v29;
  if (v40 == 1)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D798ED94(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v42 = v58;
    sub_1D7D2E33C();
    v43 = v39(v70, 1, v41);
    v44 = v68;
    v45 = v60;
    if (v43 != 1)
    {
      sub_1D7A9AF74(v70);
    }
  }

  else
  {
    v42 = v58;
    (*(v38 + 32))(v58, v70, v41);
    v44 = v68;
    v45 = v60;
  }

  v46 = v71;
  (*(v38 + 32))(v71, v42, v41);
  v47 = v36;
  if (v32)
  {
    v48 = v35;
    v49 = v32;
  }

  else
  {
    v72 = 5;
    swift_allocObject();
    v49 = sub_1D7D2E71C();
    v48 = v35;
  }

  v50 = v56;
  v51 = v57;
  v52 = v66;
  v53 = v67;
  *(v46 + *(v57 + 20)) = v49;
  if (!v50)
  {
    (*(v52 + 104))(v53, *MEMORY[0x1E69B5D40], v65);
    swift_allocObject();
    v50 = sub_1D7D2E71C();
  }

  sub_1D7A9AF74(v47);
  (*(v45 + 8))(v48, v69);
  v54 = v61;
  *(v46 + *(v51 + 24)) = v50;
  sub_1D7B82AD0(v46, v44);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1D7B8273C(void *a1)
{
  v3 = v1;
  sub_1D7B82B34(0, &qword_1EC9E5B40, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B82A7C();
  sub_1D7D31B1C();
  LOBYTE(v14) = 0;
  sub_1D7990AB0(0);
  sub_1D798ED94(&qword_1EC9E37D8, sub_1D7990AB0);
  sub_1D7D318BC();
  if (!v2)
  {
    v11 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    sub_1D7994BB0();
    sub_1D798ED94(&qword_1EC9E3548, sub_1D7994BB0);
    sub_1D7D318BC();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    sub_1D7994C2C();
    sub_1D798ED94(&qword_1EC9E37E0, sub_1D7994C2C);
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7B829D4(uint64_t a1)
{
  v2 = sub_1D7B82A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B82A10(uint64_t a1)
{
  v2 = sub_1D7B82A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7B82A7C()
{
  result = qword_1EE0C28C8;
  if (!qword_1EE0C28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C28C8);
  }

  return result;
}

uint64_t sub_1D7B82AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7B82B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7B82A7C();
    v7 = a3(a1, &type metadata for RelatedEndOfArticleFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7B82BAC()
{
  result = qword_1EC9E5B48;
  if (!qword_1EC9E5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5B48);
  }

  return result;
}

unint64_t sub_1D7B82C04()
{
  result = qword_1EE0C28B8;
  if (!qword_1EE0C28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C28B8);
  }

  return result;
}

unint64_t sub_1D7B82C5C()
{
  result = qword_1EE0C28C0;
  if (!qword_1EE0C28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C28C0);
  }

  return result;
}

Swift::Void __swiftcall WebViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v31[0] = sub_1D7D2836C();
  v5 = *(v31[0] - 8);
  MEMORY[0x1EEE9AC00](v31[0], v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebViewSession();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B83074();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v31 - v21;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  v31[1] = ObjectType;
  objc_msgSendSuper2(&v35, sel_viewDidAppear_, a1, v20);
  v23 = qword_1EC9E5B58;
  swift_beginAccess();
  sub_1D7B830CC(&v2[v23], v22);
  v24 = (*(v10 + 48))(v22, 1, v9);
  sub_1D7B83518(v22, sub_1D7B83074);
  if (v24 == 1)
  {
    sub_1D7D2835C();
    v25 = sub_1D7D2834C();
    v27 = v26;
    (*(v5 + 8))(v8, v31[0]);
    sub_1D7D2832C();
    *v13 = v25;
    v13[1] = v27;
    *(v13 + *(v9 + 24)) = 0;
    v28 = &v2[qword_1EC9E5B60];
    swift_beginAccess();
    if (*(v28 + 24))
    {
      sub_1D799CC84(v28, &v32);
      v29 = *(&v33 + 1);
      v30 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v30 + 8))(v13, v29, v30);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    sub_1D7B83130(v13, v17);
    (*(v10 + 56))(v17, 0, 1, v9);
    swift_beginAccess();
    sub_1D7B83194(v17, &v2[v23]);
    swift_endAccess();
  }

  if (*&v2[qword_1EC9E5B68])
  {

    swift_getWitnessTable();
    sub_1D7D2A17C();
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_1D7AF4510(&v32, &qword_1EE0C0500, &qword_1EE0C0508);
}

void sub_1D7B83074()
{
  if (!qword_1EC9E5B50)
  {
    type metadata accessor for WebViewSession();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5B50);
    }
  }
}

uint64_t sub_1D7B830CC(uint64_t a1, uint64_t a2)
{
  sub_1D7B83074();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B83130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebViewSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B83194(uint64_t a1, uint64_t a2)
{
  sub_1D7B83074();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7B831F8(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  WebViewController.viewDidAppear(_:)(a3);
}

Swift::Void __swiftcall WebViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D7B83074();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-1] - v11;
  v13 = type metadata accessor for WebViewSession();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidDisappear_, a1, v16);
  v19 = qword_1EC9E5B58;
  swift_beginAccess();
  sub_1D7B830CC(v2 + v19, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D7B83518(v12, sub_1D7B83074);
  }

  else
  {
    sub_1D7B83130(v12, v18);
    v20 = v2 + qword_1EC9E5B60;
    swift_beginAccess();
    if (*(v20 + 24))
    {
      sub_1D799CC84(v20, v24);
      swift_endAccess();
      v21 = v25;
      v22 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v22 + 32))(v18, v21, v22);
      sub_1D7B83518(v18, type metadata accessor for WebViewSession);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      sub_1D7B83518(v18, type metadata accessor for WebViewSession);
      swift_endAccess();
    }

    (*(v14 + 56))(v8, 1, 1, v13);
    swift_beginAccess();
    sub_1D7B83194(v8, v2 + v19);
    swift_endAccess();
  }
}

uint64_t sub_1D7B83518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B83578(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  WebViewController.viewDidDisappear(_:)(a3);
}

id WebViewController.__allocating_init(url:configuration:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1D7D281BC();
  v7 = [v5 initWithURL:v6 configuration:a2];

  v8 = sub_1D7D2824C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id WebViewController.init(url:configuration:)(uint64_t a1, void *a2)
{
  v3 = sub_1D7B84764(a1, a2);

  return v3;
}

id sub_1D7B836A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1D7D2824C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  v9 = a4;
  v10 = sub_1D7B84764(v8, v9);

  return v10;
}

id WebViewController.__allocating_init(url:entersReaderIfAvailable:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1D7D281BC();
  v7 = [v5 initWithURL:v6 entersReaderIfAvailable:a2 & 1];

  v8 = sub_1D7D2824C();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id WebViewController.init(url:entersReaderIfAvailable:)(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[qword_1EC9E5B60];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v3[qword_1EC9E5B68] = 0;
  v8 = qword_1EC9E5B58;
  v9 = type metadata accessor for WebViewSession();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = sub_1D7D281BC();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithURL_entersReaderIfAvailable_, v10, a2 & 1);

  v12 = sub_1D7D2824C();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_1D7B83908(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1D7D2824C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  return WebViewController.init(url:entersReaderIfAvailable:)(v8, a4);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7B839D4(uint64_t a1)
{
  sub_1D7AF4510(a1 + qword_1EC9E5B60, &unk_1EC9E4530, &qword_1EC9E6370);

  return sub_1D7B83518(a1 + qword_1EC9E5B58, sub_1D7B83074);
}

uint64_t WebViewController.cardSplitViewPresentation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2A97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69D7B20])
  {
    v11 = MEMORY[0x1E69D80B8];
LABEL_5:
    v12 = *v11;
    v13 = sub_1D7D2B58C();
    (*(*(v13 - 8) + 104))(a2, v12, v13);
    v14 = *MEMORY[0x1E69D80C8];
    v15 = sub_1D7D2B59C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x1E69D7B18])
  {
    v11 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D7D3196C();
  __break(1u);
  return result;
}

uint64_t sub_1D7B83C2C@<X0>(uint64_t a1@<X8>)
{
  [v1 dismissViewControllerAnimated:0 completion:0];
  v3 = *MEMORY[0x1E69D8180];
  v4 = sub_1D7D2B5FC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t WebViewController.preview(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7E90];
  v3 = sub_1D7D2B26C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

Swift::Void __swiftcall WebViewController.sceneWillEnterForeground()()
{
  v1 = v0;
  v27 = sub_1D7D2836C();
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v3);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebViewSession();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B83074();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28[-1] - v17;
  v19 = qword_1EC9E5B58;
  swift_beginAccess();
  sub_1D7B830CC(v1 + v19, v18);
  v20 = (*(v7 + 48))(v18, 1, v6);
  sub_1D7B83518(v18, sub_1D7B83074);
  if (v20 == 1)
  {
    sub_1D7D2835C();
    v21 = sub_1D7D2834C();
    v23 = v22;
    (*(v2 + 8))(v5, v27);
    sub_1D7D2832C();
    *v10 = v21;
    v10[1] = v23;
    *(v10 + *(v6 + 24)) = 1;
    v24 = v1 + qword_1EC9E5B60;
    swift_beginAccess();
    if (*(v24 + 24))
    {
      sub_1D799CC84(v24, v28);
      v25 = v29;
      v26 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v26 + 8))(v10, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    sub_1D7B83130(v10, v14);
    (*(v7 + 56))(v14, 0, 1, v6);
    swift_beginAccess();
    sub_1D7B83194(v14, v1 + v19);
    swift_endAccess();
  }
}

Swift::Void __swiftcall WebViewController.sceneWillResignActive()()
{
  sub_1D7B83074();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebViewSession();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EC9E5B58;
  swift_beginAccess();
  sub_1D7B830CC(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D7B83518(v4, sub_1D7B83074);
  }

  else
  {
    sub_1D7B83130(v4, v9);
    v11 = v0 + qword_1EC9E5B60;
    swift_beginAccess();
    if (*(v11 + 24))
    {
      sub_1D799CC84(v11, v15);
      swift_endAccess();
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v13 + 16))(v9, v12, v13);
      sub_1D7B83518(v9, type metadata accessor for WebViewSession);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_1D7B83518(v9, type metadata accessor for WebViewSession);
      swift_endAccess();
    }
  }
}

Swift::Void __swiftcall WebViewController.sceneDidBecomeActive()()
{
  sub_1D7B83074();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebViewSession();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EC9E5B58;
  swift_beginAccess();
  sub_1D7B830CC(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D7B83518(v4, sub_1D7B83074);
  }

  else
  {
    sub_1D7B83130(v4, v9);
    v11 = v0 + qword_1EC9E5B60;
    swift_beginAccess();
    if (*(v11 + 24))
    {
      sub_1D799CC84(v11, v15);
      swift_endAccess();
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v13 + 24))(v9, v12, v13);
      sub_1D7B83518(v9, type metadata accessor for WebViewSession);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_1D7B83518(v9, type metadata accessor for WebViewSession);
      swift_endAccess();
    }
  }
}

Swift::Void __swiftcall WebViewController.sceneDidEnterBackground()()
{
  sub_1D7B83074();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for WebViewSession();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EC9E5B58;
  swift_beginAccess();
  sub_1D7B830CC(v0 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D7B83518(v8, sub_1D7B83074);
  }

  else
  {
    sub_1D7B83130(v8, v13);
    v15 = v0 + qword_1EC9E5B60;
    swift_beginAccess();
    if (*(v15 + 24))
    {
      sub_1D799CC84(v15, v19);
      swift_endAccess();
      v16 = v20;
      v17 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v17 + 32))(v13, v16, v17);
      sub_1D7B83518(v13, type metadata accessor for WebViewSession);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      sub_1D7B83518(v13, type metadata accessor for WebViewSession);
      swift_endAccess();
    }

    (*(v10 + 56))(v4, 1, 1, v9);
    swift_beginAccess();
    sub_1D7B83194(v4, v0 + v14);
    swift_endAccess();
  }
}

id sub_1D7B84764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[qword_1EC9E5B60];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v3[qword_1EC9E5B68] = 0;
  v8 = qword_1EC9E5B58;
  v9 = type metadata accessor for WebViewSession();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = sub_1D7D281BC();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_initWithURL_configuration_, v10, a2);

  v12 = sub_1D7D2824C();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

void sub_1D7B84884()
{
  sub_1D7B83074();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

double sub_1D7B84944@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  sub_1D7B86098(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  sub_1D7B86164(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = qword_1EE0C7F30;
  v48 = off_1EE0C7F38;
  sub_1D7B86438(a1, v12, sub_1D7B86098);
  sub_1D7B860CC(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = 1;
  v21 = v19(v12, 1, v17);
  v22 = sub_1D7B86098;
  if (v21 != 1)
  {
    sub_1D7B86438(v12, v16, type metadata accessor for SaveArticleFeatureContext);
    v20 = 0;
    v22 = sub_1D7B860CC;
  }

  v23 = v22;

  sub_1D7B86218(v12, v23);
  v24 = type metadata accessor for SaveArticleFeatureContext();
  (*(*(v24 - 8) + 56))(v16, v20, 1, v24);
  sub_1D7B86438(a1, v8, sub_1D7B86098);
  if (v19(v8, 1, v18) == 1)
  {
    sub_1D7B86218(v8, sub_1D7B86098);
    memset(v50, 0, sizeof(v50));
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
  }

  else
  {
    sub_1D79DA880(&v8[*(v18 + 28)], v50);
    sub_1D7B86218(v8, sub_1D7B860CC);
  }

  v25 = sub_1D7B84DC4(v16);
  v27 = v26;
  v29 = v28;
  sub_1D7B86198(v50);
  sub_1D7B86218(v16, sub_1D7B86164);
  sub_1D7B86100(0, &qword_1EE0C1B40, type metadata accessor for SaveArticleFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v31 = *(v30 + 28);
  v32 = v46;
  sub_1D79DA880(v46, v50);
  v33 = sub_1D7B84DC4(a1 + v31);
  v35 = v34;
  v37 = v36;
  sub_1D7B86198(v50);
  sub_1D79DA880(v32, v50);
  v38 = *(v3 + 152);
  v39 = v47;
  *(v47 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v39 + 32) = &off_1F52A4FC8;
  v40 = swift_allocObject();
  *v39 = v40;
  v41 = v48;
  *(v40 + 16) = v45;
  *(v40 + 24) = v41;
  *(v40 + 32) = v25;
  *(v40 + 40) = v27;
  *(v40 + 48) = v29;
  *(v40 + 56) = v33;
  *(v40 + 64) = v35;
  *(v40 + 72) = v37;
  v42 = v51;
  sub_1D7A1EE44(v25);
  sub_1D7A1EE44(v33);
  *(v40 + 96) = sub_1D7C550C4(v42);
  *(v40 + 104) = v38;
  v43 = *&v58;

  BarButtonOrder.init(for:)(&v49, v43);
  sub_1D7A1EE84(v33);
  sub_1D7A1EE84(v25);
  sub_1D79DA8DC(v50);
  result = *&v49;
  *(v40 + 80) = v49;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1D7B84DC4(uint64_t a1)
{
  v89 = a1;
  sub_1D7B86278();
  v82 = v1;
  v81 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v80 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B86100(0, &qword_1EE0BFFA0, sub_1D7B86330, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v88 = v77 - v6;
  sub_1D7A66C0C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v87 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D7D2B49C();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v10);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B8636C(0, &qword_1EE0BFF90, &qword_1EE0BECD8, 0x1E69DCAB8, sub_1D7992EFC);
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v86 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v90 = v77 - v18;
  v19 = sub_1D7D2EF2C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A66CA4(0);
  v93 = *(v24 - 8);
  v94 = v24;
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v79 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v77 - v29;
  sub_1D7B86164(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SaveArticleFeatureContext();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = (v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B86438(v89, v34, sub_1D7B86164);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1D7B86218(v34, sub_1D7B86164);
    return 0;
  }

  else
  {
    sub_1D7B864A0(v34, v39);
    v41 = *v39;
    *v23 = *v39;
    (*(v20 + 104))(v23, *MEMORY[0x1E69B60B8], v19);
    v78 = v41;
    swift_unknownObjectRetain_n();
    v89 = v30;
    sub_1D7D2F48C();
    sub_1D7D2DB0C();
    LOBYTE(v95) = 1;
    sub_1D7992EFC(0, &qword_1EE0BECD8);
    sub_1D7B862DC();
    v42 = v90;
    sub_1D7D2A8BC();
    v43 = sub_1D7B85B4C();
    sub_1D7B86504(0, &qword_1EC9E5BF0, MEMORY[0x1E69D8190]);
    v77[3] = v44;
    v45 = v85[13];
    v77[1] = v85[12];
    v77[2] = v45;
    (*(v83 + 104))(v12, *MEMORY[0x1E69D7FD8], v84);
    v85 = v39;
    v46 = v39[1];
    v96 = sub_1D7D28A3C();
    v97 = sub_1D7A108E4();
    v95 = v46;
    v98 = 0u;
    v99 = 0u;
    v100 = 1;
    sub_1D7D2B10C();
    swift_allocObject();
    swift_unknownObjectRetain();

    v84 = sub_1D7D2B0EC();
    sub_1D7D2C48C();
    v48 = v93;
    v47 = v94;
    v49 = v87;
    v50 = v89;
    v83 = *(v93 + 16);
    (v83)(v87, v89, v94);
    (*(v48 + 56))(v49, 0, 1, v47);
    (*(v91 + 16))(v86, v42, v92);
    LOBYTE(v95) = 1;
    sub_1D7B86504(0, &qword_1EE0BFDD0, MEMORY[0x1E69D8188]);
    v51 = sub_1D7B862DC();
    v52 = v43;
    v53 = v88;
    v77[0] = v51;
    sub_1D7D2A8BC();
    sub_1D7B86330(0);
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    v55 = v52;
    v56 = sub_1D7D2B61C();

    v57 = sub_1D7D3031C();

    [v56 setIdentifier_];

    sub_1D7D2B60C();
    if (sub_1D7D2DB0C())
    {
      LOBYTE(v95) = 1;
      v58 = v52;
      v59 = v79;
      v60 = v94;
      (v83)(v79, v50, v94);
      v61 = v93;
      v62 = (*(v93 + 80) + 16) & ~*(v93 + 80);
      v63 = swift_allocObject();
      v64 = v59;
      v55 = v58;
      (*(v61 + 32))(v63 + v62, v64, v60);
      v65 = v80;
      sub_1D7D2A8BC();
      sub_1D7D2B63C();
      (*(v81 + 8))(v65, v82);
    }

    v66 = [v56 customView];
    if (v66)
    {
      v67 = v66;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v69 = [objc_opt_self() bundleForClass_];
      sub_1D7D2811C();

      v70 = v67;
      v71 = sub_1D7D3031C();
      [v70 setAccessibilityLabel_];

      [v70 setShowsLargeContentViewer_];
      v72 = sub_1D7D3031C();

      [v70 setLargeContentTitle_];

      v73 = *MEMORY[0x1E69DD9B8];
      v74 = [v70 accessibilityTraits];
      if ((v73 & ~v74) != 0)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0;
      }

      [v70 setAccessibilityTraits_];
    }

    sub_1D7B86614(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1D7D3B4D0;
    *(v76 + 32) = v56;
    *(v76 + 40) = 0;

    (*(v91 + 8))(v90, v92);
    (*(v93 + 8))(v50, v94);
    sub_1D7B86218(v85, type metadata accessor for SaveArticleFeatureContext);
    return v78;
  }
}

id sub_1D7B859CC@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    if (qword_1EC9E0038 != -1)
    {
      v5 = a2;
      swift_once();
      a2 = v5;
    }

    v2 = &qword_1EC9E92B8;
  }

  else
  {
    if (qword_1EC9E0028 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &qword_1EC9E92A8;
  }

  v3 = *v2;
  *a2 = *v2;

  return v3;
}

id sub_1D7B85A8C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    if (qword_1EC9E0030 != -1)
    {
      v5 = a2;
      swift_once();
      a2 = v5;
    }

    v2 = &qword_1EC9E92B0;
  }

  else
  {
    if (qword_1EC9E0020 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &qword_1EC9E92A0;
  }

  v3 = *v2;
  *a2 = *v2;

  return v3;
}

id sub_1D7B85B4C()
{
  v0 = sub_1D7D2AC3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v20 - v7;
  v21 = objc_opt_self();
  v9 = [v21 configurationWithPointSize:6 weight:3 scale:22.0];
  type metadata accessor for SaveArticleFeatureContext();
  sub_1D7D2AC8C();
  v10 = sub_1D7D2AC2C();
  v11 = *(v1 + 8);
  v11(v8, v0);
  if (v10)
  {
    sub_1D7D2AC8C();
    v12 = sub_1D7D2ABFC();
    v11(v4, v0);
    if (v12)
    {
      sub_1D7B86614(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D7D41F60;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_1D7992EFC(0, &qword_1EE0BECE8);
      v14 = v10;
      v15 = v12;
      v16 = sub_1D7D3062C();

      v17 = [v21 configurationWithPaletteColors_];

      v18 = [v9 configurationByApplyingConfiguration_];
      v9 = v18;
    }
  }

  return v9;
}

uint64_t sub_1D7B85DBC()
{
  sub_1D7A66CA4(0);
  sub_1D7B863E4();
  sub_1D7B862DC();
  return sub_1D7D2B62C();
}

uint64_t sub_1D7B85E44@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D7A66C0C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A66CA4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, a1, v8);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = sub_1D7D2F49C();
  v13 = v12;
  result = sub_1D7B86218(v7, sub_1D7A66C0C);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1D7B85F70()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B85FD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v6);
  if (((*(v7 + 8))(a1, a2, v6, v7) & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
  return sub_1D7D2F9FC() & 1;
}

void sub_1D7B86100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B86198(uint64_t a1)
{
  sub_1D7B86614(0, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7B86218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B86278()
{
  if (!qword_1EE0BFF98)
  {
    sub_1D7B862DC();
    v0 = sub_1D7D2A8EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFF98);
    }
  }
}

unint64_t sub_1D7B862DC()
{
  result = qword_1EE0BF680;
  if (!qword_1EE0BF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF680);
  }

  return result;
}

void sub_1D7B8636C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_1D7B862DC();
    v6 = sub_1D7D2A8EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7B863E4()
{
  result = qword_1EE0BF678;
  if (!qword_1EE0BF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF678);
  }

  return result;
}

uint64_t sub_1D7B86438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B864A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveArticleFeatureContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7B86504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1D7A66CA4(255);
    v7 = v6;
    v8 = sub_1D7B863E4();
    v9 = sub_1D7B862DC();
    v12[0] = v7;
    v12[1] = MEMORY[0x1E69B62E0];
    v12[2] = v8;
    v12[3] = v9;
    v10 = a3(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D7B86594@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A66CA4(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1D7B85E44(v4, a1);
}

void sub_1D7B86614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7B86664()
{
  swift_beginAccess();
  if (*(v0 + 80))
  {
    sub_1D799CC84(v0 + 56, &v2);
    __swift_project_boxed_opaque_existential_1(&v2, *(&v3 + 1));
    sub_1D7D28B9C();
    __swift_destroy_boxed_opaque_existential_1(&v2);
  }

  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_1D7B87248(&v2, v0 + 56);
  return swift_endAccess();
}

uint64_t sub_1D7B86718()
{
  swift_beginAccess();
  if (*(v0 + 80))
  {
    sub_1D799CC84(v0 + 56, &v2);
    __swift_project_boxed_opaque_existential_1(&v2, *(&v3 + 1));
    sub_1D7D28B9C();
    __swift_destroy_boxed_opaque_existential_1(&v2);
  }

  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_1D7B87248(&v2, v0 + 56);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D7B878A4(v0 + 56, &qword_1EC9E5C08, sub_1D7B872C8);
  return swift_deallocClassInstance();
}

uint64_t sub_1D7B8682C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v2, 0);
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1D7A5BDC8((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  swift_allocObject();
  v9 = swift_weakInit();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1D7B87188();
  swift_allocObject();
  v11 = sub_1D7D2946C();

  return v11;
}

uint64_t sub_1D7B869A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
  }

  sub_1D7B86664();
  v14 = type metadata accessor for CancelHandler();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v24[3] = v14;
  v24[4] = sub_1D7B871F0();
  v24[0] = v15;
  sub_1D799CC84(v24, v23);
  swift_beginAccess();
  sub_1D7B87248(v23, Strong + 56);
  v16 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1D7B873B4();
  sub_1D7D294BC();
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = Strong;
  v18[6] = sub_1D79EA4C8;
  v18[7] = v12;

  v19 = sub_1D7D2934C();
  sub_1D7D293AC();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;

  v21 = sub_1D7D2934C();
  sub_1D7D293DC();

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1D7B86C28(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(id))
{
  v7 = *a1;
  v45 = [objc_allocWithZone(MEMORY[0x1E6978028]) init];
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = 0;
  v41 = 0;
  v42 = a2 + 32;
  v59 = v7;
  while (2)
  {
    v10 = (v42 + 88 * v9);
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v11 = v10[3];
      v55 = v10[2];
      v56 = v11;
      v57 = v10[4];
      v58 = *(v10 + 10);
      v12 = v10[1];
      v53 = *v10;
      v54 = v12;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }

      if (!*(v7 + 16))
      {
        goto LABEL_29;
      }

      v13 = v54;
      sub_1D79ECF40(&v53, &v47);
      v14 = sub_1D7A18FFC(v13, *(&v13 + 1));
      if ((v15 & 1) == 0 || (v16 = [*(*(v7 + 56) + 8 * v14) data]) == 0)
      {
        sub_1D7A2BEAC(&v53);
LABEL_29:
        sub_1D7B87448();
        v35 = swift_allocError();
        *v36 = 0;
        a3();

        return;
      }

      v17 = v16;
      v18 = v9 + 1;
      v19 = BYTE8(v55);
      v20 = v55;
      v21 = sub_1D7D2827C();
      v23 = v22;

      if ((v20 & 1) == 0)
      {
        v30 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D79EA338(v21, v23);
        v31 = sub_1D7D2826C();
        v26 = [v30 initWithData_];

        sub_1D79EA2E4(v21, v23);
        if (v26)
        {
          v32 = [objc_allocWithZone(MEMORY[0x1E6978038]) initWithImage_];
          if (v32)
          {
            v33 = v32;
            if (v19)
            {
              v49 = v55;
              v50 = v56;
              v51 = v57;
              v52 = v58;
              v47 = v53;
              v48 = v54;
              sub_1D7B8749C(v32, &v47);
            }

            [v45 insertPage:v33 atIndex:v41];
            sub_1D79EA2E4(v21, v23);

            sub_1D7A2BEAC(&v53);
            v34 = v41 + 1;
            if (!__OFADD__(v41, 1))
            {
              goto LABEL_26;
            }

            goto LABEL_35;
          }

LABEL_31:
          sub_1D7B87448();
          v39 = swift_allocError();
          *v40 = 1;
          a3();
        }

        else
        {
LABEL_30:
          sub_1D7B87448();
          v37 = swift_allocError();
          *v38 = 1;
          a3();
        }

        sub_1D79EA2E4(v21, v23);
        sub_1D7A2BEAC(&v53);
        return;
      }

      v24 = objc_allocWithZone(MEMORY[0x1E6978028]);
      sub_1D79EA338(v21, v23);
      v25 = sub_1D7D2826C();
      v26 = [v24 initWithData_];

      sub_1D79EA2E4(v21, v23);
      if (!v26)
      {
        goto LABEL_30;
      }

      v27 = [v26 pageAtIndex_];
      if (!v27)
      {
        goto LABEL_31;
      }

      v28 = v27;
      if (v19)
      {
        v49 = v55;
        v50 = v56;
        v51 = v57;
        v52 = v58;
        v47 = v53;
        v48 = v54;
        sub_1D7B8749C(v27, &v47);
      }

      [v28 copy];
      sub_1D7D3138C();
      swift_unknownObjectRelease();
      sub_1D7992EFC(0, &qword_1EC9E5C20);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_1D7A2BEAC(&v53);
      sub_1D79EA2E4(v21, v23);
      ++v9;
      v10 = (v10 + 88);
      v29 = v18 == v8;
      v7 = v59;
      if (v29)
      {
        goto LABEL_27;
      }
    }

    [v45 insertPage:v46 atIndex:v41];
    sub_1D79EA2E4(v21, v23);

    sub_1D7A2BEAC(&v53);
    v34 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
LABEL_36:
      __break(1u);
      return;
    }

LABEL_26:
    v41 = v34;
    ++v9;
    v7 = v59;
    if (v9 != v8)
    {
      continue;
    }

    break;
  }

LABEL_27:
  a6(v45);
}

void sub_1D7B87110(uint64_t a1, void (*a2)(void))
{
  sub_1D7B87448();
  v3 = swift_allocError();
  *v4 = 0;
  a2();
}

void sub_1D7B87188()
{
  if (!qword_1EC9E5BF8)
  {
    sub_1D7992EFC(255, &qword_1EC9E5C00);
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5BF8);
    }
  }
}

unint64_t sub_1D7B871F0()
{
  result = qword_1EC9E5FF0;
  if (!qword_1EC9E5FF0)
  {
    type metadata accessor for CancelHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5FF0);
  }

  return result;
}

uint64_t sub_1D7B87248(uint64_t a1, uint64_t a2)
{
  sub_1D79990D8(0, &qword_1EC9E5C08, sub_1D7B872C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7B872C8()
{
  result = qword_1EC9E5C10;
  if (!qword_1EC9E5C10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E5C10);
  }

  return result;
}

uint64_t sub_1D7B8732C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  return (*(v5 + 8))(v2, *MEMORY[0x1E69B5090], 25, v3, v4, v5);
}

void sub_1D7B873B4()
{
  if (!qword_1EC9E6000)
  {
    sub_1D79F5D34();
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6000);
    }
  }
}

unint64_t sub_1D7B87448()
{
  result = qword_1EC9E5C18;
  if (!qword_1EC9E5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5C18);
  }

  return result;
}

void sub_1D7B8749C(void *a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_1D7D2824C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79990D8(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v46 = &v37 - v13;
  if (*(a2 + 40))
  {
    v14 = *(a2 + 80);
    v15 = *(v14 + 16);
    if (v15)
    {
      v43 = (v4 + 48);
      v39 = (v4 + 32);
      v40 = 0x80000001D7D750B0;
      v16 = *MEMORY[0x1E69780B8];
      v37 = (v4 + 8);
      v38 = v16;
      v17 = (v14 + 80);
      v44 = v10;
      v45 = v3;
      do
      {
        v20 = *(v17 - 6);
        v19 = *(v17 - 5);
        v21 = *(v17 - 4);
        v22 = *(v17 - 3);
        v23 = *(v17 - 2);
        v24 = *(v17 - 1);
        if (*v17)
        {

          v25 = v46;
          sub_1D7D2823C();
          sub_1D7B8789C();
        }

        else
        {
          v47 = 0xD00000000000001ALL;
          v48 = v40;

          MEMORY[0x1DA70DE90](v20, v19);
          v25 = v46;
          sub_1D7D2823C();
          sub_1D7B8789C();
        }

        v26 = v44;
        sub_1D79A8A20(v25, v44);
        v27 = v45;
        if ((*v43)(v26, 1, v45) == 1)
        {
          sub_1D7B878A4(v25, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
          v18 = v26;
        }

        else
        {
          v28 = v24;
          v29 = v23;
          v30 = v41;
          (*v39)(v41, v26, v27);
          v31 = objc_allocWithZone(MEMORY[0x1E6978010]);
          v32 = v25;
          v33 = sub_1D7D281BC();
          v34 = [v31 initWithURL_];

          v35 = objc_allocWithZone(MEMORY[0x1E6978018]);
          v36 = [v35 initWithBounds:v38 forType:0 withProperties:{v21, v22, v29, v28}];
          [v36 setAction_];
          [v42 addAnnotation_];

          (*v37)(v30, v27);
          v18 = v32;
        }

        sub_1D7B878A4(v18, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
        v17 += 56;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t sub_1D7B878A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D79990D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7B87914()
{
  result = qword_1EC9E5C28;
  if (!qword_1EC9E5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5C28);
  }

  return result;
}

uint64_t InterstitialAdModel.InterstitialAd.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InterstitialAdModel.InterstitialAd.insertion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1D7D2D12C();
  v5 = sub_1D7D2D2DC();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t InterstitialAdModel.interstitialView.getter()
{
  sub_1D799A5AC();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7999AF4();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InterstitialAdModel();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B87C7C(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B87CE0(v12, v4, sub_1D799A5AC);
      sub_1D7AECD2C();
      v14 = sub_1D7D2D28C();
      sub_1D7B87D48(v4, sub_1D799A5AC);
    }

    else
    {
      v15 = sub_1D7D2CADC();
      (*(*(v15 - 8) + 8))(v12, v15);
      return 0;
    }
  }

  else
  {
    sub_1D7B87CE0(v12, v8, sub_1D7999AF4);
    sub_1D7AECC70();
    v14 = sub_1D7D2D28C();
    sub_1D7B87D48(v8, sub_1D7999AF4);
  }

  return v14;
}

uint64_t sub_1D7B87C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterstitialAdModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B87CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B87D48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall InterstitialAdModel.missedOpportunity()()
{
  sub_1D7999AF4();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InterstitialAdModel();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B87C7C(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B87D48(v8, type metadata accessor for InterstitialAdModel);
    }

    else
    {
      v10 = sub_1D7D2CADC();
      (*(*(v10 - 8) + 8))(v8, v10);
    }
  }

  else
  {
    sub_1D7B87CE0(v8, v4, sub_1D7999AF4);
    sub_1D7AECC70();
    sub_1D7D2D2AC();
    sub_1D7B87D48(v4, sub_1D7999AF4);
  }
}

uint64_t InterstitialAdModel.identifier.getter()
{
  v1 = v0;
  v2 = sub_1D7D2CADC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799A5AC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7999AF4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for InterstitialAdModel();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B87C7C(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B87CE0(v18, v10, sub_1D799A5AC);
      v20 = *v10;

      sub_1D7B87D48(v10, sub_1D799A5AC);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_1D7D2CACC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_1D7B87CE0(v18, v14, sub_1D7999AF4);
    v20 = *v14;

    sub_1D7B87D48(v14, sub_1D7999AF4);
  }

  return v20;
}

uint64_t sub_1D7B88220()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7D3034C();
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D7B8929C();
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E5C30 = result;
  return result;
}

uint64_t sub_1D7B88420()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D7B8929C();
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E5C38 = result;
  return result;
}

uint64_t sub_1D7B88618()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D7D2B89C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B891C0();
  v18[1] = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D82E0], v10);
  *v9 = sub_1D7D3034C();
  v9[1] = v16;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D7D2B88C();
  sub_1D7B89254(&qword_1EE0BFDA0, MEMORY[0x1E69D82E8]);
  result = sub_1D7D286DC();
  qword_1EE0CB6E8 = result;
  return result;
}

uint64_t sub_1D7B888EC()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D7D2B8BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B8912C();
  v18[1] = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D8300], v10);
  *v9 = sub_1D7D3034C();
  v9[1] = v16;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D7D2B8AC();
  sub_1D7B89254(&qword_1EE0BFD90, MEMORY[0x1E69D8320]);
  result = sub_1D7D286DC();
  qword_1EE0CB6D0 = result;
  return result;
}

uint64_t sub_1D7B88BC0(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t Settings.Compression.CompressionOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D7D285FC();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.Compression.CompressionOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1D7D285FC();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.Compression.CompressionOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B88E90()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Compression.CompressionOverrides();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D7D3034C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D7D285EC();
  qword_1EE0CB688 = result;
  return result;
}

uint64_t type metadata accessor for Settings.Compression.CompressionOverrides()
{
  result = qword_1EE0CB6B8;
  if (!qword_1EE0CB6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7B8912C()
{
  if (!qword_1EE0CB420)
  {
    sub_1D7D2B8BC();
    sub_1D7B89254(&qword_1EE0BFD88, MEMORY[0x1E69D8320]);
    v0 = sub_1D7D2870C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB420);
    }
  }
}

void sub_1D7B891C0()
{
  if (!qword_1EE0CB428)
  {
    sub_1D7D2B89C();
    sub_1D7B89254(&qword_1EE0BFD98, MEMORY[0x1E69D82E8]);
    v0 = sub_1D7D2870C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB428);
    }
  }
}

uint64_t sub_1D7B89254(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7B8929C()
{
  if (!qword_1EE0CB3D0)
  {
    v0 = sub_1D7D2870C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB3D0);
    }
  }
}

void sub_1D7B8937C()
{
  v1 = *(*v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(*v0 + 16) = v3;
  }
}

uint64_t type metadata accessor for RecipeRecirculationData()
{
  result = qword_1EC9E5C40;
  if (!qword_1EC9E5C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7B8940C()
{
  sub_1D7A73164();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D7B89478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D7A73164();
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B89A14(0, &qword_1EC9E5C50, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for RecipeRecirculationData();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B899C0();
  sub_1D7D31AFC();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D7B89A78(&qword_1EC9E5C60);
    sub_1D7D317DC();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D7A732B0(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7B8972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D7D3197C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7B897BC(uint64_t a1)
{
  v2 = sub_1D7B899C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B897F8(uint64_t a1)
{
  v2 = sub_1D7B899C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7B8984C(void *a1)
{
  sub_1D7B89A14(0, &qword_1EC9E5C68, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B899C0();
  sub_1D7D31B1C();
  sub_1D7A73164();
  sub_1D7B89A78(&qword_1EC9E5C70);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D7B899C0()
{
  result = qword_1EC9E5C58;
  if (!qword_1EC9E5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5C58);
  }

  return result;
}

void sub_1D7B89A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7B899C0();
    v7 = a3(a1, &type metadata for RecipeRecirculationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7B89A78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7A73164();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7B89AD0()
{
  result = qword_1EC9E5C78;
  if (!qword_1EC9E5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5C78);
  }

  return result;
}

unint64_t sub_1D7B89B28()
{
  result = qword_1EC9E5C80;
  if (!qword_1EC9E5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5C80);
  }

  return result;
}

unint64_t sub_1D7B89B80()
{
  result = qword_1EC9E5C88;
  if (!qword_1EC9E5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5C88);
  }

  return result;
}

id URLPreviewViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLPreviewViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id URLPreviewViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s12NewsArticles31URLPreviewViewControllerFactoryC06createdE03forSo06UIViewE0CSg10Foundation3URLV_tF_0()
{
  sub_1D7B8A0A4(0, &qword_1EE0BDEC0, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v19 - v2;
  v4 = sub_1D7D281BC();
  v5 = [v4 fc_isNewsURL];

  if (v5)
  {
    return 0;
  }

  sub_1D7D2807C();
  v6 = sub_1D7D280DC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_1D7A7E794(v3);
    return 0;
  }

  sub_1D7D280BC();
  v9 = v8;
  (*(v7 + 8))(v3, v6);
  if (!v9)
  {
    return 0;
  }

  v10 = sub_1D7D304AC();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  sub_1D7D30C6C();
  sub_1D7B8A0A4(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7D3B4D0;
  sub_1D7D2824C();
  sub_1D7A645C0();
  v12 = sub_1D7D3190C();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D79D6AE0();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1D7D29AAC();

  v15 = objc_allocWithZone(MEMORY[0x1E697A838]);
  v16 = sub_1D7D281BC();
  v17 = [v15 initWithURL_];

  return v17;
}

void sub_1D7B8A0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t EndOfRecipeConfig.viewSessionID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EndOfRecipeConfig.viewSessionID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *EndOfRecipeConfig.__allocating_init(recipe:viewSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *EndOfRecipeConfig.init(recipe:viewSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t EndOfRecipeConfig.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B8A2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    sub_1D79D7CBC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D7B95698(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D7B98F98(a1, &qword_1EC9E17D0, &type metadata for RecipeViewerPage);
    sub_1D7B909EC(a2, a3, v9);

    return sub_1D7B98F98(v9, &qword_1EC9E17D0, &type metadata for RecipeViewerPage);
  }

  return result;
}

uint64_t sub_1D7B8A3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1D7B98F28(a1, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    sub_1D7B90AA0(a2, a3, v10);

    return sub_1D7B98F28(v10, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    sub_1D7B99184(a1, v14, type metadata accessor for ArticleViewerPage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D7B9595C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_1D7B8A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D799D69C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D7B95C74(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D7B99008(a1, sub_1D7B9995C);
    sub_1D7B90C0C(a2, a3, v9);

    return sub_1D7B99008(v9, sub_1D7B9995C);
  }

  return result;
}

uint64_t sub_1D7B8A684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D7B99184(a1, v9, sub_1D7B98EA4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D7B95E44(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D7B98F28(a1, &qword_1EE0CA918, sub_1D7B98EA4);
    sub_1D7B90CB8(a2, a3, v9);

    return sub_1D7B98F28(v9, &qword_1EE0CA918, sub_1D7B98EA4);
  }

  return result;
}

BOOL sub_1D7B8A774(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1D7D2804C();
    ++v2;
    sub_1D7B99C74(&qword_1EC9E5D40, MEMORY[0x1E6968178]);
  }

  while ((sub_1D7D3030C() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1D7B8A880(void *a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    sub_1D7B95DE8(v3, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = sub_1D7D28CBC();
    v7 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (v5 == sub_1D7D28CBC() && v7 == v8)
    {

      sub_1D7B98CE0(v12);
      return v4 != 0;
    }

    v3 += 88;
    v10 = sub_1D7D3197C();

    sub_1D7B98CE0(v12);
  }

  while ((v10 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1D7B8A998(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v25[0] = *v7;
      v25[1] = v9;
      v10 = v7[3];
      v12 = *v7;
      v11 = v7[1];
      v25[2] = v7[2];
      v25[3] = v10;
      v21 = v12;
      v22 = v11;
      v13 = v7[3];
      v23 = v7[2];
      v24 = v13;
      sub_1D79F5B54(v25, &v17);
      v14 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v14;
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      sub_1D7A0AD5C(&v17);
      v15 = v8-- == 0;
      v7 += 4;
      if ((v4 | v15))
      {
        return v4 & 1;
      }
    }

    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    sub_1D7A0AD5C(&v17);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D7B8AA8C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1DA70EF00](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D7D3167C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1D7B8ABB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D7B8AC60(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1DA70EF00](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1D7D3167C();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1D7B8AD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for FeatureState() + 28);

  return sub_1D7A966C0(a2, v6);
}

void *sub_1D7B8AEA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v43 = a3;
  v44 = a4;
  v51 = a2;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v47 = v11;
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v12 + 88);
  v13 = v54;
  v6[5] = type metadata accessor for ArticleViewerFeature();
  v6[6] = swift_getWitnessTable();
  v6[2] = a1;
  v14 = *(v10 + 16);
  v49 = v10 + 16;
  v14(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a5);
  v52 = v14;
  v15 = *(v10 + 80);
  v16 = v10;
  v42 = (v15 + 40) & ~v15;
  v17 = swift_allocObject();
  *(v17 + 2) = v13;
  *(v17 + 3) = a5;
  v18 = v53;
  *(v17 + 4) = v53;
  v48 = *(v16 + 32);
  v19 = v45;
  v48(&v17[(v15 + 40) & ~v15], v45, a5);
  v46 = v6;
  v6[7] = sub_1D7B99E10;
  v6[8] = v17;
  v20 = v51;
  v14(v19, v51, a5);
  v50 = v15;
  v21 = (v15 + 56) & ~v15;
  v22 = swift_allocObject();
  *(v22 + 2) = v54;
  *(v22 + 3) = a5;
  v24 = v43;
  v23 = v44;
  *(v22 + 4) = v18;
  *(v22 + 5) = v24;
  *(v22 + 6) = v23;
  v25 = v48;
  v48(&v22[v21], v19, a5);
  v26 = v46;
  v46[9] = sub_1D7B99E78;
  v26[10] = v22;
  v52(v19, v20, a5);
  v27 = v42;
  v28 = swift_allocObject();
  v29 = v54;
  *(v28 + 2) = v54;
  *(v28 + 3) = a5;
  v30 = v18;
  *(v28 + 4) = v18;
  v31 = v45;
  v25(&v28[v27], v45, a5);
  v32 = v46;
  v46[11] = sub_1D7B99EDC;
  v32[12] = v28;
  v52(v31, v51, a5);
  v33 = swift_allocObject();
  *(v33 + 2) = v29;
  *(v33 + 3) = a5;
  *(v33 + 4) = v30;
  v34 = v48;
  v48(&v33[v27], v31, a5);
  v32[13] = sub_1D7B99F48;
  v32[14] = v33;
  v35 = v51;
  v52(v31, v51, a5);
  v36 = swift_allocObject();
  v37 = v53;
  *(v36 + 2) = v54;
  *(v36 + 3) = a5;
  *(v36 + 4) = v37;
  v34(&v36[v27], v31, a5);
  v32[15] = sub_1D7B99FB0;
  v32[16] = v36;
  v34(v31, v35, a5);
  v38 = swift_allocObject();
  v39 = v53;
  *(v38 + 2) = v54;
  *(v38 + 3) = a5;
  *(v38 + 4) = v39;
  v34(&v38[v27], v31, a5);
  result = v32;
  v32[17] = sub_1D7B9A09C;
  v32[18] = v38;
  return result;
}

uint64_t sub_1D7B8B2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v88 = a4;
  v89 = a7;
  v86 = a6;
  v81 = a5;
  v69 = a3;
  v75 = a2;
  v83 = a9;
  v87 = a11;
  v84 = a10;
  v85 = type metadata accessor for ArticleViewerFeatureAnimationContext();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v13);
  v80 = &v67 - v14;
  v15 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v68 = &v67 - v21;
  v76 = type metadata accessor for FeatureState();
  v22 = sub_1D7D3130C();
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v73 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v90 = &v67 - v30;
  v70 = sub_1D7D3130C();
  v91 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v31);
  v72 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v67 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v67 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v67 - v43;
  sub_1D7B98D34(a1, v93, sub_1D7B99068);
  sub_1D7B99068();
  v45 = swift_dynamicCast();
  v46 = *(v15 + 56);
  v46(v44, v45 ^ 1u, 1, a8);
  sub_1D7B98D34(v75, v93, sub_1D7B99068);
  v47 = swift_dynamicCast();
  v75 = v40;
  v46(v40, v47 ^ 1u, 1, a8);
  v48 = v91;
  v49 = v70;
  v50 = *(v91 + 16);
  v74 = v44;
  v71 = v50;
  v50(v36, v44, v70);
  if ((*(v15 + 48))(v36, 1, a8) == 1)
  {
    (*(v48 + 8))(v36, v49);
LABEL_6:
    v54 = v73;
    (*(*(v76 - 8) + 56))(v73, 1, 1);
    goto LABEL_7;
  }

  v51 = *(v15 + 32);
  v52 = v68;
  v51(v68, v36, a8);
  sub_1D7B98E30(v69, v92, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720], sub_1D7B99AC4);
  if (!v92[6])
  {
    (*(v15 + 8))(v52, a8);
    sub_1D7B98F98(v92, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
    goto LABEL_6;
  }

  sub_1D7A966C0(v92, v93);
  v53 = v67;
  v51(v67, v52, a8);
  sub_1D7A966C0(v93, v92);
  v54 = v73;
  sub_1D7B8AD9C(v53, v92, a8, v73);
  (*(*(v76 - 8) + 56))(v54, 0, 1);
LABEL_7:
  v55 = v78;
  v56 = v79;
  v57 = v90;
  (*(v78 + 32))(v90, v54, v79);
  v58 = v77;
  (*(v55 + 16))(v77, v57, v56);
  v59 = v72;
  v60 = v75;
  v71(v72, v75, v49);
  v61 = v49;
  v62 = v80;
  sub_1D7AF5200(v58, v59, v81, v86, v80);
  v63 = v87;
  v64 = *(v87 + 48);

  v64(v62, v88, v84, v63);
  (*(v82 + 8))(v62, v85);
  (*(v55 + 8))(v90, v56);
  v65 = *(v91 + 8);
  v65(v60, v61);
  return (v65)(v74, v61);
}

uint64_t sub_1D7B8B9B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ArticleViewerFeatureManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ArticleViewerFeatureManager.delegate.modify(uint64_t *a1))()
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D7B8BB48;
}

uint64_t ArticleViewerFeatureManager.register<A, B>(provider:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArticleViewerFeatureManager.FeatureProviderWrapper();
  (*(v10 + 16))(v12, a1, a3);
  v13 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();

  v15 = sub_1D7B8AEA0(v14, v12, sub_1D7B8BE60, v13, a3, a4);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v18 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + v18);
  *(v5 + v18) = 0x8000000000000000;
  sub_1D7B96104(v15, v17, v16, isUniquelyReferenced_nonNull_native, &qword_1EE0BEBE0, type metadata accessor for ArticleViewerFeatureManager.FeatureProviderWrapper);

  *(v5 + v18) = v21;
  swift_endAccess();
}

uint64_t sub_1D7B8BD60(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v7[3] = type metadata accessor for ArticleViewerFeatureManager();
      v7[4] = &protocol witness table for ArticleViewerFeatureManager;
      v7[0] = v3;
      v6 = *(v4 + 16);

      v6(v7, a1, ObjectType, v4);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t ArticleViewerFeatureManager.initializeFeatures(viewController:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(*(v4 + 56) + ((v11 << 9) | (8 * v12))) + 56);

    v13(a1);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ArticleViewerFeatureManager.reloadFeatures(for:)(uint64_t a1)
{
  v2 = v1;
  v128 = *v2;
  v4 = MEMORY[0x1E69E6720];
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v122 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v118 - v10;
  v12 = type metadata accessor for ArticleViewerPage(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v126 = sub_1D7B8D354(a1);
  v17 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage;
  swift_beginAccess();
  sub_1D7B98E30(v2 + v17, v11, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v4, sub_1D799C5B4);
  v120 = v13;
  v121 = v12;
  v18 = (*(v13 + 48))(v11, 1, v12);
  v119 = v17;
  if (v18 == 1)
  {
    result = sub_1D7B98F28(v11, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D7B99184(v11, v16, type metadata accessor for ArticleViewerPage);
    v20 = sub_1D7B8D354(v16);
    result = sub_1D7B99008(v16, type metadata accessor for ArticleViewerPage);
  }

  v21 = *(v20 + 16);
  v22 = v126;
  if (v21)
  {
    v23 = 0;
    v24 = v20 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v23 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D7B95DE8(v24, &v157);
      if (sub_1D7B8A880(&v157, v22))
      {
        result = sub_1D7B98CE0(&v157);
      }

      else
      {
        v147[1] = v159;
        v148 = v160;
        v149 = v161;
        v150 = v162;
        v146 = v157;
        v147[0] = v158;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v132 = v25;
        if ((result & 1) == 0)
        {
          result = sub_1D7A5C6D4(0, *(v25 + 16) + 1, 1);
          v22 = v126;
          v25 = v132;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_1D7A5C6D4((v26 > 1), v27 + 1, 1);
          v22 = v126;
          v25 = v132;
        }

        *(v25 + 16) = v27 + 1;
        v28 = v25 + 88 * v27;
        v29 = v147[0];
        *(v28 + 32) = v146;
        *(v28 + 48) = v29;
        v30 = v147[1];
        v31 = v148;
        v32 = v149;
        *(v28 + 112) = v150;
        *(v28 + 80) = v31;
        *(v28 + 96) = v32;
        *(v28 + 64) = v30;
      }

      ++v23;
      v24 += 88;
    }

    while (v21 != v23);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v25 + 16);
  if (!v33)
  {

    v130 = MEMORY[0x1E69E7CC0];
    v68 = *(v22 + 16);
    if (!v68)
    {
      goto LABEL_79;
    }

LABEL_41:
    v69 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
    v129 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providerState;
    v70 = v22 + 32;
    swift_beginAccess();
    v125 = 0;
    v127 = v69;
    while (1)
    {
      sub_1D7B95DE8(v70, v173);
      __swift_project_boxed_opaque_existential_1(v173, v174);
      v71 = sub_1D7D28CBC();
      v73 = v72;
      swift_beginAccess();
      v74 = *(v2 + v69);
      if (!*(v74 + 16))
      {
        break;
      }

      v75 = sub_1D7A18FFC(v71, v73);
      v77 = v76;

      if ((v77 & 1) == 0)
      {
        goto LABEL_43;
      }

      v78 = *(*(v74 + 56) + 8 * v75);
      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v79 = v2[3];
        ObjectType = swift_getObjectType();
        *(&v147[0] + 1) = v128;
        *&v147[1] = &protocol witness table for ArticleViewerFeatureManager;
        *&v146 = v2;
        v81 = *(v79 + 24);

        v131 = v78;

        v81(&v157, &v146, ObjectType, v79);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v146);
        sub_1D7A966C0(&v157, v171);
        __swift_project_boxed_opaque_existential_1(v173, v174);
        v82 = sub_1D7D28CBC();
        v84 = v83;
        v85 = v129;
        swift_beginAccess();
        v86 = *(v2 + v85);
        if (*(v86 + 16))
        {
          v87 = sub_1D7A18FFC(v82, v84);
          v89 = v88;

          if (v89)
          {
            sub_1D7B98D34(*(v86 + 56) + 224 * v87, &v157, sub_1D7B98EA4);
            goto LABEL_53;
          }
        }

        else
        {
        }

        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
LABEL_53:
        v90 = v131;
        swift_endAccess();
        sub_1D799CC84(&v175, v155);
        if (((v90[11])(v124, v171) & 1) != 0 && (v91 = v176, (v176 & v125) == 0))
        {
          v100 = v90[9];
          sub_1D7B98E30(&v157, &v146, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
          if (*(&v147[0] + 1))
          {
            sub_1D799CC84(&v146, &v151);
            sub_1D7B99008(&v146, sub_1D7B98EA4);
          }

          else
          {
            sub_1D7B98F28(&v146, &qword_1EE0CA918, sub_1D7B98EA4);
            v151 = 0u;
            v152 = 0u;
            v153 = 0;
          }

          sub_1D799CC84(v155, v144);
          sub_1D7B98E30(&v157, &v146, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
          if (*(&v147[0] + 1))
          {
            sub_1D79DA880(&v147[1] + 8, &v132);
            sub_1D7B99008(&v146, sub_1D7B98EA4);
          }

          else
          {
            sub_1D7B98F28(&v146, &qword_1EE0CA918, sub_1D7B98EA4);
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            v142 = 0u;
            v143 = 0;
          }

          v100(v154, &v151, v144, &v132, v171);
          sub_1D7B98F98(&v132, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
          sub_1D7B99008(v144, sub_1D7B99068);
          sub_1D7B99008(&v151, sub_1D7B99068);
          sub_1D7B990D4(v154, &v146);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_1D79E502C(0, *(v130 + 2) + 1, 1, v130);
          }

          v102 = *(v130 + 2);
          v101 = *(v130 + 3);
          if (v102 >= v101 >> 1)
          {
            v130 = sub_1D79E502C((v101 > 1), v102 + 1, 1, v130);
          }

          v125 |= v91;
          v103 = v130;
          *(v130 + 2) = v102 + 1;
          v104 = &v103[48 * v102];
          v105 = v146;
          v106 = v147[0];
          *(v104 + 57) = *(v147 + 9);
          *(v104 + 2) = v105;
          *(v104 + 3) = v106;
          __swift_project_boxed_opaque_existential_1(v173, v174);
          v107 = sub_1D7D28CBC();
          v109 = v108;
          sub_1D799CC84(v155, &v146);
          sub_1D79DA880(v171, &v147[1] + 8);
          v110 = v129;
          swift_beginAccess();
          sub_1D7B99184(&v146, &v132, sub_1D7B98EA4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v144[0] = *(v2 + v110);
          *(v2 + v110) = 0x8000000000000000;
          sub_1D7B95E44(&v132, v107, v109, isUniquelyReferenced_nonNull_native);

          *(v2 + v110) = *&v144[0];
          swift_endAccess();

          sub_1D7B99130(v154);
          __swift_destroy_boxed_opaque_existential_1(v155);
        }

        else
        {
          v92 = v90[9];
          sub_1D7B98E30(&v157, &v146, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
          if (*(&v147[0] + 1))
          {
            sub_1D799CC84(&v146, &v151);
            sub_1D7B99008(&v146, sub_1D7B98EA4);
            v93 = 0uLL;
          }

          else
          {
            sub_1D7B98F28(&v146, &qword_1EE0CA918, sub_1D7B98EA4);
            v93 = 0uLL;
            v151 = 0u;
            v152 = 0u;
            v153 = 0;
          }

          v145 = 0;
          v144[0] = v93;
          v144[1] = v93;
          sub_1D7B98E30(&v157, &v146, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
          if (*(&v147[0] + 1))
          {
            sub_1D79DA880(&v147[1] + 8, &v132);
            sub_1D7B99008(&v146, sub_1D7B98EA4);
          }

          else
          {
            sub_1D7B98F28(&v146, &qword_1EE0CA918, sub_1D7B98EA4);
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v140 = 0u;
            v141 = 0u;
            v142 = 0u;
            v143 = 0;
          }

          v92(v154, &v151, v144, &v132, v171);
          sub_1D7B98F98(&v132, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
          sub_1D7B99008(v144, sub_1D7B99068);
          sub_1D7B99008(&v151, sub_1D7B99068);
          sub_1D7B990D4(v154, &v146);
          v94 = v130;
          v95 = *(v130 + 2);
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v177 = v94;
          if (!v96 || v95 >= *(v94 + 3) >> 1)
          {
            v130 = sub_1D79E502C(v96, v95 + 1, 1, v94);
            v177 = v130;
          }

          sub_1D7BE28D4(0, 0, 1, &v146);
          __swift_project_boxed_opaque_existential_1(v173, v174);
          v97 = sub_1D7D28CBC();
          v99 = v98;
          swift_beginAccess();
          sub_1D7B90CB8(v97, v99, &v146);

          sub_1D7B98F28(&v146, &qword_1EE0CA918, sub_1D7B98EA4);
          swift_endAccess();

          sub_1D7B99130(v154);
          __swift_destroy_boxed_opaque_existential_1(v155);
        }

        sub_1D7B98F28(&v157, &qword_1EE0CA918, sub_1D7B98EA4);
        sub_1D79DA8DC(v171);
        v69 = v127;
      }

LABEL_44:
      sub_1D7B98CE0(v173);
      v70 += 88;
      if (!--v68)
      {
        goto LABEL_79;
      }
    }

LABEL_43:
    swift_endAccess();
    goto LABEL_44;
  }

  v34 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  v127 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providerState;
  v35 = v25 + 32;
  v131 = v2;
  swift_beginAccess();
  v130 = MEMORY[0x1E69E7CC0];
  v36 = &qword_1EE0CA918;
  v123 = v34;
  v125 = v25;
  do
  {
    v37 = v36;
    sub_1D7B95DE8(v35, v173);
    __swift_project_boxed_opaque_existential_1(v173, v174);
    v38 = sub_1D7D28CBC();
    v40 = v39;
    v41 = v131;
    swift_beginAccess();
    v42 = *(v41 + v34);
    if (!*(v42 + 16))
    {

LABEL_19:
      swift_endAccess();
      sub_1D7B98CE0(v173);
      v36 = v37;
      goto LABEL_20;
    }

    v43 = sub_1D7A18FFC(v38, v40);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }

    v46 = *(*(v42 + 56) + 8 * v43);
    swift_endAccess();
    v47 = v131;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = v47[3];
      v49 = swift_getObjectType();
      *(&v147[0] + 1) = v128;
      *&v147[1] = &protocol witness table for ArticleViewerFeatureManager;
      *&v146 = v47;
      v50 = v46;
      v51 = *(v48 + 24);
      v129 = v50;

      v51(&v157, &v146, v49, v48);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v146);
      sub_1D7A966C0(&v157, &v132);
      __swift_project_boxed_opaque_existential_1(v173, v174);
      v52 = sub_1D7D28CBC();
      v54 = v53;
      v55 = v127;
      swift_beginAccess();
      v56 = *(v47 + v55);
      if (*(v56 + 16))
      {
        v57 = sub_1D7A18FFC(v52, v54);
        v59 = v58;

        v36 = v37;
        if (v59)
        {
          sub_1D7B98D34(*(v56 + 56) + 224 * v57, &v157, sub_1D7B98EA4);
        }

        else
        {
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
        }
      }

      else
      {

        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v36 = v37;
      }

      swift_endAccess();
      v60 = *(v129 + 72);
      sub_1D7B98E30(&v157, &v146, v36, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
      v34 = v123;
      if (*(&v147[0] + 1))
      {
        sub_1D799CC84(&v146, v155);
        sub_1D7B99008(&v146, sub_1D7B98EA4);
        v61 = 0uLL;
      }

      else
      {
        sub_1D7B98F28(&v146, v36, sub_1D7B98EA4);
        v61 = 0uLL;
        memset(v155, 0, sizeof(v155));
        v156 = 0;
      }

      v153 = 0;
      v151 = v61;
      v152 = v61;
      sub_1D7B98E30(&v157, &v146, v36, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
      if (*(&v147[0] + 1))
      {
        sub_1D79DA880(&v147[1] + 8, v171);
        sub_1D7B99008(&v146, sub_1D7B98EA4);
      }

      else
      {
        sub_1D7B98F28(&v146, v36, sub_1D7B98EA4);
        memset(v171, 0, sizeof(v171));
        v172 = 0;
      }

      v60(v154, v155, &v151, v171, &v132);
      sub_1D7B98F98(v171, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
      sub_1D7B99008(&v151, sub_1D7B99068);
      sub_1D7B99008(v155, sub_1D7B99068);
      sub_1D7B990D4(v154, &v146);
      v62 = v130;
      v63 = *(v130 + 2);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v177 = v62;
      if (!v64 || v63 >= *(v62 + 3) >> 1)
      {
        v130 = sub_1D79E502C(v64, v63 + 1, 1, v62);
        v177 = v130;
      }

      sub_1D7BE28D4(0, 0, 1, &v146);
      __swift_project_boxed_opaque_existential_1(v173, v174);
      v65 = sub_1D7D28CBC();
      v67 = v66;
      swift_beginAccess();
      sub_1D7B90CB8(v65, v67, &v146);

      sub_1D7B98F28(&v146, v36, sub_1D7B98EA4);
      swift_endAccess();

      sub_1D7B99130(v154);
      sub_1D7B98F28(&v157, v36, sub_1D7B98EA4);
      sub_1D79DA8DC(&v132);
      sub_1D7B98CE0(v173);
    }

    else
    {
      sub_1D7B98CE0(v173);
      v36 = v37;
    }

LABEL_20:
    v35 += 88;
    --v33;
  }

  while (v33);

  v22 = v126;
  v2 = v131;
  v68 = *(v126 + 16);
  if (v68)
  {
    goto LABEL_41;
  }

LABEL_79:

  v112 = v122;
  sub_1D7B98D34(v124, v122, type metadata accessor for ArticleViewerPage);
  (*(v120 + 56))(v112, 0, 1, v121);
  v113 = v119;
  swift_beginAccess();
  sub_1D7B98D9C(v112, v2 + v113);
  swift_endAccess();
  v114 = v130;
  if (!*(v130 + 2))
  {
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v115 = v2[3];
  v116 = swift_getObjectType();
  *&v159 = &protocol witness table for ArticleViewerFeatureManager;
  *(&v158 + 1) = v128;
  *&v157 = v2;
  v117 = *(v115 + 8);

  v117(&v157, v114, v116, v115);

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v157);
}

uint64_t sub_1D7B8D354(uint64_t a1)
{
  v3 = *v1;
  sub_1D799C5B4(0, &unk_1EE0BFF20, MEMORY[0x1E69D7C68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - v6;
  v36 = sub_1D7D2ACCC();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = v1;
  v35 = a1;
  v33 = v3;
  if (Strong)
  {
    v13 = v1[3];
    ObjectType = swift_getObjectType();
    v32 = v8;
    v15 = v11;
    v16 = ObjectType;
    v38 = v3;
    v39 = &protocol witness table for ArticleViewerFeatureManager;
    v37[0] = v1;
    v17 = *(v13 + 32);

    v18 = a1;
    v19 = v16;
    v20 = v36;
    v11 = v15;
    v8 = v32;
    v17(v37, v18, v19, v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v8 + 56))(v7, 0, 1, v20);
    (*(v8 + 32))(v11, v7, v20);
  }

  else
  {
    v21 = v36;
    (*(v8 + 56))(v7, 1, 1, v36);
    sub_1D7D2ACBC();
    if ((*(v8 + 48))(v7, 1, v21) != 1)
    {
      sub_1D7B98F28(v7, &unk_1EE0BFF20, MEMORY[0x1E69D7C68]);
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v34;
    v23 = v34[3];
    v24 = swift_getObjectType();
    v38 = v33;
    v39 = &protocol witness table for ArticleViewerFeatureManager;
    v37[0] = v22;
    v25 = *(v23 + 40);

    v26 = v25(v37, v35, v24, v23);
    v28 = v27;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    type metadata accessor for NoSelectedTextProvider();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v28 = &off_1F529D870;
    v22 = v34;
  }

  v29 = sub_1D7A0767C(v22 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_featureAvailability, v11, v26, v28);
  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, v36);
  return v29;
}

Swift::Void __swiftcall ArticleViewerFeatureManager.reloadFeatures()()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage;
  swift_beginAccess();
  sub_1D7B98E30(v0 + v11, v5, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v1, sub_1D799C5B4);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D7B98F28(v5, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    sub_1D7B99184(v5, v10, type metadata accessor for ArticleViewerPage);
    ArticleViewerFeatureManager.reloadFeatures(for:)(v10);
    sub_1D7B99008(v10, type metadata accessor for ArticleViewerPage);
  }
}

uint64_t ArticleViewerFeatureManager.shouldShow<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v28 - v7;
  v9 = type metadata accessor for ArticleViewerPage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (!*(v17 + 16) || (v18 = sub_1D7A18FFC(v14, v15), (v19 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  swift_endAccess();
  v21 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage;
  swift_beginAccess();
  sub_1D7B98E30(v2 + v21, v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720], sub_1D799C5B4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D7B98F28(v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
LABEL_6:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D7B99184(v8, v13, type metadata accessor for ArticleViewerPage);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v22 = Strong;
  if (Strong)
  {
    v25 = v2[3];
    ObjectType = swift_getObjectType();
    v28[3] = v4;
    v28[4] = &protocol witness table for ArticleViewerFeatureManager;
    v28[0] = v2;
    v27 = *(v25 + 24);

    v27(v29, v28, ObjectType, v25);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_1D7A966C0(v29, v30);
    v22 = (*(v20 + 88))(v13, v30);
    sub_1D79DA8DC(v30);
    sub_1D7B99008(v13, type metadata accessor for ArticleViewerPage);
  }

  else
  {
    sub_1D7B99008(v13, type metadata accessor for ArticleViewerPage);
  }

  return v22 & 1;
}

uint64_t ArticleViewerFeatureManager.shouldShowBottomPalette(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (!Strong)
  {
    return v6 & 1;
  }

  v7 = v2[3];
  ObjectType = swift_getObjectType();
  v52[3] = v4;
  v52[4] = &protocol witness table for ArticleViewerFeatureManager;
  v52[0] = v2;
  v9 = *(v7 + 24);

  v9(&v46, v52, ObjectType, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_1D7A966C0(&v46, v52);
  v37 = v2;
  v38 = a1;
  result = sub_1D7B8D354(a1);
  v11 = result;
  v12 = *(result + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_13:

    v25 = *(v13 + 16);
    if (v25)
    {
      *&v39 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BDC8(0, v25, 0);
      v26 = v39;
      v27 = v13 + 32;
      do
      {
        sub_1D7B95DE8(v27, &v46);
        __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
        v28 = sub_1D7D28CBC();
        v30 = v29;
        sub_1D7B98CE0(&v46);
        *&v39 = v26;
        v32 = *(v26 + 16);
        v31 = *(v26 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D7A5BDC8((v31 > 1), v32 + 1, 1);
          v26 = v39;
        }

        *(v26 + 16) = v32 + 1;
        v33 = v26 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v27 += 88;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v34, v35);
    v36[2] = v37;
    v36[3] = v38;
    v36[4] = v52;
    v6 = sub_1D7B8ABB4(sub_1D7B991EC, v36, v26);

    sub_1D79DA8DC(v52);
    return v6 & 1;
  }

  v14 = 0;
  v15 = result + 32;
  while (v14 < *(v11 + 16))
  {
    sub_1D7B95DE8(v15, &v46);
    v16 = *(&v47 + 1);
    v17 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    (*(v17 + 16))(&v39, v16, v17);
    if (v39)
    {
      result = sub_1D7B98CE0(&v46);
    }

    else
    {
      v41 = v48;
      v42 = v49;
      v43 = v50;
      v44 = v51;
      v39 = v46;
      v40 = v47;
      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v13;
      if ((result & 1) == 0)
      {
        result = sub_1D7A5C6D4(0, *(v13 + 16) + 1, 1);
        v13 = v45;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1D7A5C6D4((v18 > 1), v19 + 1, 1);
        v13 = v45;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 88 * v19;
      v21 = v40;
      *(v20 + 32) = v39;
      *(v20 + 48) = v21;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      *(v20 + 112) = v44;
      *(v20 + 80) = v23;
      *(v20 + 96) = v24;
      *(v20 + 64) = v22;
    }

    ++v14;
    v15 += 88;
    if (v12 == v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B8E048(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (*(v10 + 16) && (v11 = sub_1D7A18FFC(v8, v7), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = *(v13 + 88);

    v15 = v14(a3, a4);
  }

  else
  {
    swift_endAccess();
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ArticleViewerFeatureManager.navigationBarPaletteHeight(for:)(uint64_t a1)
{
  v2 = v1;
  result = sub_1D7B8D354(a1);
  v4 = result;
  v5 = *(result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_12:

    v18 = *(v6 + 16);
    if (v18)
    {
      *&v49 = MEMORY[0x1E69E7CC0];
      sub_1D7A5BDC8(0, v18, 0);
      v19 = v49;
      v20 = v6 + 32;
      do
      {
        sub_1D7B95DE8(v20, &v55);
        __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
        v21 = sub_1D7D28CBC();
        v23 = v22;
        sub_1D7B98CE0(&v55);
        *&v49 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D7A5BDC8((v24 > 1), v25 + 1, 1);
          v19 = v49;
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v20 += 88;
        --v18;
      }

      while (v18);

      v27 = *(v19 + 16);
      if (v27)
      {
LABEL_18:
        *&v49 = MEMORY[0x1E69E7CC0];
        sub_1D7A5C6F4(0, v27, 0);
        v28 = v49;
        v29 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
        v30 = (v19 + 40);
        do
        {
          v32 = *(v30 - 1);
          v31 = *v30;
          swift_beginAccess();
          v33 = *(v2 + v29);
          v34 = *(v33 + 16);

          if (v34 && (v35 = sub_1D7A18FFC(v32, v31), (v36 & 1) != 0))
          {
            v37 = *(*(v33 + 56) + 8 * v35);
            swift_endAccess();
            v38 = *(v37 + 104);

            v40 = v38(v39);
          }

          else
          {
            swift_endAccess();
            v40 = 0.0;
          }

          *&v49 = v28;
          v42 = *(v28 + 16);
          v41 = *(v28 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1D7A5C6F4((v41 > 1), v42 + 1, 1);
            v28 = v49;
          }

          *(v28 + 16) = v42 + 1;
          *(v28 + 8 * v42 + 32) = v40;
          v30 += 2;
          --v27;
        }

        while (v27);

        v43 = *(v28 + 16);
        if (!v43)
        {
        }

        goto LABEL_27;
      }
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
      v27 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v27)
      {
        goto LABEL_18;
      }
    }

    v28 = MEMORY[0x1E69E7CC0];
    v43 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v43)
    {
    }

LABEL_27:
    v44 = *(v28 + 32);
    v45 = v43 - 1;
    if (v45)
    {
      v46 = (v28 + 40);
      do
      {
        v47 = *v46++;
        v48 = v47;
        if (v44 < v47)
        {
          v44 = v48;
        }

        --v45;
      }

      while (v45);
    }
  }

  v7 = 0;
  v8 = result + 32;
  while (v7 < *(v4 + 16))
  {
    sub_1D7B95DE8(v8, &v55);
    v9 = *(&v56 + 1);
    v10 = v57;
    __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
    (*(v10 + 16))(&v49, v9, v10);
    if (v49)
    {
      result = sub_1D7B98CE0(&v55);
    }

    else
    {
      v51 = v57;
      v52 = v58;
      v53 = v59;
      v54 = v60;
      v49 = v55;
      v50 = v56;
      result = swift_isUniquelyReferenced_nonNull_native();
      v61 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1D7A5C6D4(0, *(v6 + 16) + 1, 1);
        v6 = v61;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1D7A5C6D4((v11 > 1), v12 + 1, 1);
        v6 = v61;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 88 * v12;
      v14 = v50;
      *(v13 + 32) = v49;
      *(v13 + 48) = v14;
      v15 = v51;
      v16 = v52;
      v17 = v53;
      *(v13 + 112) = v54;
      *(v13 + 80) = v16;
      *(v13 + 96) = v17;
      *(v13 + 64) = v15;
    }

    ++v7;
    v8 += 88;
    if (v5 == v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t ArticleViewerFeatureManager.secondaryPageDidBecomeVisible(_:primaryPage:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = v2[3];
  ObjectType = swift_getObjectType();
  *&v73[8] = v6;
  *&v73[16] = &protocol witness table for ArticleViewerFeatureManager;
  v60 = v6;
  *&v72 = v2;
  v10 = *(v8 + 24);

  v10(&v77, &v72, ObjectType, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v72);
  sub_1D7A966C0(&v77, v95);
  v11 = sub_1D7B8D354(a1);
  v12 = v11;
  v68 = *(v11 + 16);
  if (!v68)
  {
    v65 = MEMORY[0x1E69E7CC0];
LABEL_45:

    if (*(v65 + 2))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v57 = v3[3];
        v58 = swift_getObjectType();
        *&v79 = &protocol witness table for ArticleViewerFeatureManager;
        *(&v78 + 1) = v60;
        *&v77 = v3;
        v59 = *(v57 + 8);

        v59(&v77, v65, v58, v57);

        swift_unknownObjectRelease();
        sub_1D79DA8DC(v95);
        return __swift_destroy_boxed_opaque_existential_1(&v77);
      }

      else
      {

        return sub_1D79DA8DC(v95);
      }
    }

    else
    {
      sub_1D79DA8DC(v95);
    }
  }

  v63 = 0;
  v13 = 0;
  v66 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providerState;
  v67 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
  v14 = v11 + 32;
  v64 = v11;
  v65 = MEMORY[0x1E69E7CC0];
  v61 = a1;
  v62 = a2;
  while (v13 < *(v12 + 16))
  {
    sub_1D7B95DE8(v14, v91);
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v15 = sub_1D7D28CBC();
    v17 = v16;
    swift_beginAccess();
    v18 = *(v3 + v67);
    if (!*(v18 + 16))
    {

LABEL_5:
      swift_endAccess();
      goto LABEL_6;
    }

    v19 = sub_1D7A18FFC(v15, v17);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_5;
    }

    v22 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v91, v92);

    v23 = sub_1D7D28CBC();
    v25 = v24;
    swift_beginAccess();
    v26 = *(v3 + v66);
    if (*(v26 + 16))
    {
      v27 = sub_1D7A18FFC(v23, v25);
      v29 = v28;

      if (v29)
      {
        sub_1D7B98D34(*(v26 + 56) + 224 * v27, &v77, sub_1D7B98EA4);
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
      }

      v12 = v64;
    }

    else
    {

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
    }

    swift_endAccess();
    if (((*(v22 + 88))(a2, v95) & 1) != 0 && (v30 = v94, (v94 & v63) == 0))
    {

      v63 |= v30;
    }

    else
    {
      v31 = *(v22 + 120);

      LOBYTE(v31) = v31(a1, a2, v95);

      if (v31)
      {
        v32 = *(v22 + 72);
        sub_1D7B98E30(&v77, &v72, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
        if (*&v73[8])
        {
          sub_1D799CC84(&v72, v74);
          sub_1D7B99008(&v72, sub_1D7B98EA4);
        }

        else
        {
          sub_1D7B98F28(&v72, &qword_1EE0CA918, sub_1D7B98EA4);
          memset(v74, 0, sizeof(v74));
          v75 = 0;
        }

        v33 = v65;
        sub_1D799CC84(v93, v71);
        sub_1D7B98E30(&v77, &v72, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
        if (*&v73[8])
        {
          sub_1D79DA880(&v73[24], v69);
          sub_1D7B99008(&v72, sub_1D7B98EA4);
        }

        else
        {
          sub_1D7B98F28(&v72, &qword_1EE0CA918, sub_1D7B98EA4);
          memset(v69, 0, sizeof(v69));
          v70 = 0;
        }

        v32(v76, v74, v71, v69, v95);
        sub_1D7B98F98(v69, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
        sub_1D7B99008(v71, sub_1D7B99068);
        sub_1D7B99008(v74, sub_1D7B99068);
        sub_1D7B990D4(v76, &v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1D79E502C(0, *(v65 + 2) + 1, 1, v65);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_1D79E502C((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v65 = v33;
        v36 = &v33[48 * v35];
        v37 = v72;
        v38 = *v73;
        *(v36 + 57) = *&v73[9];
        *(v36 + 2) = v37;
        *(v36 + 3) = v38;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        v39 = sub_1D7D28CBC();
        v41 = v40;
        sub_1D799CC84(v93, &v72);
        sub_1D79DA880(v95, &v73[24]);
        swift_beginAccess();
        sub_1D7B99184(&v72, v69, sub_1D7B98EA4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = *(v3 + v66);
        v43 = v71[0];
        *(v3 + v66) = 0x8000000000000000;
        v45 = sub_1D7A18FFC(v39, v41);
        v46 = *(v43 + 16);
        v47 = (v44 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_52;
        }

        v49 = v44;
        if (*(v43 + 24) >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v44 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_1D7B97588();
            if ((v49 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          sub_1D7B9229C(v48, isUniquelyReferenced_nonNull_native);
          v50 = sub_1D7A18FFC(v39, v41);
          if ((v49 & 1) != (v51 & 1))
          {
            goto LABEL_54;
          }

          v45 = v50;
          if ((v49 & 1) == 0)
          {
LABEL_36:
            v52 = v71[0];
            *(v71[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v53 = (v52[6] + 16 * v45);
            *v53 = v39;
            v53[1] = v41;
            sub_1D7B99184(v69, v52[7] + 224 * v45, sub_1D7B98EA4);
            v54 = v52[2];
            v55 = __OFADD__(v54, 1);
            v56 = v54 + 1;
            if (v55)
            {
              goto LABEL_53;
            }

            v52[2] = v56;
            goto LABEL_41;
          }
        }

        v52 = v71[0];
        sub_1D7B99210(v69, *(v71[0] + 56) + 224 * v45, sub_1D7B98EA4);
LABEL_41:
        *(v3 + v66) = v52;
        swift_endAccess();

        sub_1D7B99130(v76);
        sub_1D7B98F28(&v77, &qword_1EE0CA918, sub_1D7B98EA4);
        a1 = v61;
        a2 = v62;
        v12 = v64;
        goto LABEL_6;
      }
    }

    sub_1D7B98F28(&v77, &qword_1EE0CA918, sub_1D7B98EA4);
LABEL_6:
    ++v13;
    sub_1D7B98CE0(v91);
    v14 += 88;
    if (v68 == v13)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1D7D31A2C();
  __break(1u);
  return result;
}

uint64_t ArticleViewerFeatureManager.secondaryPageDidBecomeHidden(_:primaryPage:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = v2[3];
    ObjectType = swift_getObjectType();
    *&v58[8] = v5;
    *&v58[16] = &protocol witness table for ArticleViewerFeatureManager;
    *&v57 = v2;
    v49 = a1;
    v9 = *(v7 + 24);

    v9(&v62, &v57, ObjectType, v7);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v57);
    sub_1D7A966C0(&v62, v78);
    v10 = sub_1D7B8D354(v49);
    v11 = *(v10 + 16);
    if (!v11)
    {

      v45 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    v12 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
    v13 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providerState;
    v14 = v10 + 32;
    v50 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D7B95DE8(v14, v76);
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v15 = sub_1D7D28CBC();
      v17 = v16;
      swift_beginAccess();
      v18 = *(v3 + v12);
      if (*(v18 + 16))
      {
        v19 = sub_1D7A18FFC(v15, v17);
        v21 = v20;

        if (v21)
        {
          v22 = *(*(v18 + 56) + 8 * v19);
          swift_endAccess();
          __swift_project_boxed_opaque_existential_1(v76, v77);
          v52 = v22;

          v23 = sub_1D7D28CBC();
          v25 = v24;
          swift_beginAccess();
          v26 = *(v3 + v13);
          if (*(v26 + 16))
          {
            v27 = v3;
            v28 = v12;
            v29 = v13;
            v30 = sub_1D7A18FFC(v23, v25);
            v32 = v31;

            if (v32)
            {
              sub_1D7B98D34(*(v26 + 56) + 224 * v30, &v62, sub_1D7B98EA4);
            }

            else
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
            }

            v13 = v29;
            v12 = v28;
            v3 = v27;
          }

          else
          {

            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
          }

          swift_endAccess();
          if (((*(v52 + 88))(a2, v78) & 1) != 0 || (v33 = *(v52 + 120), , LOBYTE(v33) = v33(v49, a2, v78), , (v33 & 1) == 0))
          {
          }

          else
          {
            v34 = *(v52 + 72);
            sub_1D7B98E30(&v62, &v57, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
            if (*&v58[8])
            {
              sub_1D799CC84(&v57, v59);
              sub_1D7B99008(&v57, sub_1D7B98EA4);
              v35 = 0uLL;
            }

            else
            {
              sub_1D7B98F28(&v57, &qword_1EE0CA918, sub_1D7B98EA4);
              v35 = 0uLL;
              memset(v59, 0, sizeof(v59));
              v60 = 0;
            }

            v56 = 0;
            v55[0] = v35;
            v55[1] = v35;
            sub_1D7B98E30(&v62, &v57, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
            if (*&v58[8])
            {
              sub_1D79DA880(&v58[24], v53);
              sub_1D7B99008(&v57, sub_1D7B98EA4);
            }

            else
            {
              sub_1D7B98F28(&v57, &qword_1EE0CA918, sub_1D7B98EA4);
              memset(v53, 0, sizeof(v53));
              v54 = 0;
            }

            v34(v61, v59, v55, v53, v78);
            sub_1D7B98F98(v53, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
            sub_1D7B99008(v55, sub_1D7B99068);
            sub_1D7B99008(v59, sub_1D7B99068);
            sub_1D7B990D4(v61, &v57);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v36 = v50;
            }

            else
            {
              v36 = sub_1D79E502C(0, *(v50 + 2) + 1, 1, v50);
            }

            v38 = *(v36 + 2);
            v37 = *(v36 + 3);
            if (v38 >= v37 >> 1)
            {
              v36 = sub_1D79E502C((v37 > 1), v38 + 1, 1, v36);
            }

            *(v36 + 2) = v38 + 1;
            v50 = v36;
            v39 = &v36[48 * v38];
            v40 = v57;
            v41 = *v58;
            *(v39 + 57) = *&v58[9];
            *(v39 + 2) = v40;
            *(v39 + 3) = v41;
            __swift_project_boxed_opaque_existential_1(v76, v77);
            v42 = sub_1D7D28CBC();
            v44 = v43;
            swift_beginAccess();
            sub_1D7B90CB8(v42, v44, &v57);

            sub_1D7B98F28(&v57, &qword_1EE0CA918, sub_1D7B98EA4);
            swift_endAccess();

            sub_1D7B99130(v61);
          }

          sub_1D7B98F28(&v62, &qword_1EE0CA918, sub_1D7B98EA4);
          goto LABEL_6;
        }
      }

      else
      {
      }

      swift_endAccess();
LABEL_6:
      sub_1D7B98CE0(v76);
      v14 += 88;
      if (!--v11)
      {

        v45 = v50;
        if (*(v50 + 2))
        {
LABEL_32:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v46 = v3[3];
            v47 = swift_getObjectType();
            *&v64 = &protocol witness table for ArticleViewerFeatureManager;
            *(&v63 + 1) = v5;
            *&v62 = v3;
            v48 = *(v46 + 8);

            v48(&v62, v45, v47, v46);

            swift_unknownObjectRelease();
            sub_1D79DA8DC(v78);
            return __swift_destroy_boxed_opaque_existential_1(&v62);
          }

          else
          {

            return sub_1D79DA8DC(v78);
          }
        }

LABEL_35:
        sub_1D79DA8DC(v78);
      }
    }
  }

  return result;
}

uint64_t ArticleViewerFeatureManager.pageVisibilityDidChange(for:secondaryPage:changedVisibilityFactor:scrollDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v8 = *v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = v4[3];
    ObjectType = swift_getObjectType();
    v41[3] = v8;
    v41[4] = &protocol witness table for ArticleViewerFeatureManager;
    v41[0] = v4;
    v12 = *(v10 + 24);

    v12(v40, v41, ObjectType, v10);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1D7A966C0(v40, v41);
    v13 = sub_1D7B8D354(a1);
    v14 = *(v13 + 16);
    if (!v14)
    {

      v17 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v34 = v8;
    v15 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
    v16 = v13 + 32;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D7B95DE8(v16, v40);
      sub_1D799CC84(v40, &v37);
      sub_1D7B98CE0(v40);
      __swift_project_boxed_opaque_existential_1(&v37, *&v38[8]);
      v18 = sub_1D7D28CBC();
      v20 = v19;
      swift_beginAccess();
      v21 = *(v5 + v15);
      if (*(v21 + 16))
      {
        v22 = sub_1D7A18FFC(v18, v20);
        v24 = v23;

        if (v24)
        {
          v25 = *(*(v21 + 56) + 8 * v22);
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_1(&v37);
          (*(v25 + 136))(&v37, a1, a2, a3, v41, a4);
          if (*&v38[8])
          {
            sub_1D799D69C(&v37, v39);
            sub_1D799CC84(v39, &v37);
            v38[24] = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1D79E502C(0, *(v17 + 2) + 1, 1, v17);
            }

            v27 = *(v17 + 2);
            v26 = *(v17 + 3);
            if (v27 >= v26 >> 1)
            {
              v17 = sub_1D79E502C((v26 > 1), v27 + 1, 1, v17);
            }

            __swift_destroy_boxed_opaque_existential_1(v39);
            *(v17 + 2) = v27 + 1;
            v28 = &v17[48 * v27];
            v29 = v37;
            v30 = *v38;
            *(v28 + 57) = *&v38[9];
            *(v28 + 2) = v29;
            *(v28 + 3) = v30;
          }

          else
          {

            sub_1D7B99008(&v37, sub_1D7B99278);
          }

          goto LABEL_6;
        }
      }

      else
      {
      }

      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v37);
LABEL_6:
      v16 += 88;
      if (!--v14)
      {

        v8 = v34;
        if (*(v17 + 2))
        {
LABEL_17:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v31 = v5[3];
            v32 = swift_getObjectType();
            v40[3] = v8;
            v40[4] = &protocol witness table for ArticleViewerFeatureManager;
            v40[0] = v5;
            v33 = *(v31 + 8);

            v33(v40, v17, v32, v31);
            swift_unknownObjectRelease();

            sub_1D79DA8DC(v41);
            return __swift_destroy_boxed_opaque_existential_1(v40);
          }

          else
          {

            return sub_1D79DA8DC(v41);
          }
        }

LABEL_20:
        sub_1D79DA8DC(v41);
      }
    }
  }

  return result;
}

uint64_t ArticleViewerFeatureManager.updateFeature<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v54 = *v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for ArticleViewerPage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage;
  swift_beginAccess();
  sub_1D7B98E30(v2 + v14, v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v4, sub_1D799C5B4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D7B98F28(v8, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  sub_1D7B99184(v8, v13, type metadata accessor for ArticleViewerPage);
  v16 = sub_1D7B8D354(v13);
  v17 = v16;
  v18 = *(v16 + 16);
  if (!v18)
  {
LABEL_8:

    return sub_1D7B99008(v13, type metadata accessor for ArticleViewerPage);
  }

  v19 = v2;
  v20 = 0;
  v21 = v16 + 32;
  while (v20 < *(v17 + 16))
  {
    sub_1D7B95DE8(v21, &v66);
    if (sub_1D7B902C0(&v66, a1))
    {

      v83[0] = v68;
      v83[1] = v69;
      v83[2] = v70;
      v84 = v71;
      v81 = v66;
      v82 = v67;
      __swift_project_boxed_opaque_existential_1(&v81, *(&v67 + 1));
      v22 = sub_1D7D28CBC();
      v24 = v23;
      v25 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providers;
      swift_beginAccess();
      v26 = *(v19 + v25);
      if (*(v26 + 16))
      {
        v27 = sub_1D7A18FFC(v22, v24);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v26 + 56) + 8 * v27);
          swift_endAccess();
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v31 = v19[3];
            ObjectType = swift_getObjectType();
            v59 = v54;
            v60 = &protocol witness table for ArticleViewerFeatureManager;
            v58[0] = v19;
            v33 = v19;
            v34 = *(v31 + 24);

            v34(&v66, v58, ObjectType, v31);
            v35 = v33;
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v58);
            sub_1D7A966C0(&v66, v80);
            __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
            v36 = sub_1D7D28CBC();
            v38 = v37;
            v39 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_providerState;
            swift_beginAccess();
            v40 = *(v33 + v39);
            if (*(v40 + 16))
            {
              v41 = sub_1D7A18FFC(v36, v38);
              v43 = v42;

              if (v43)
              {
                sub_1D7B98D34(*(v40 + 56) + 224 * v41, &v66, sub_1D7B98EA4);
                goto LABEL_22;
              }
            }

            else
            {
            }

            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
LABEL_22:
            swift_endAccess();
            sub_1D799CC84(v83 + 8, v65);
            if ((*(v30 + 88))(v13, v80))
            {
              v45 = *(v30 + 72);
              sub_1D7B98E30(&v66, v58, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
              if (v59)
              {
                sub_1D799CC84(v58, v62);
                sub_1D7B99008(v58, sub_1D7B98EA4);
              }

              else
              {
                sub_1D7B98F28(v58, &qword_1EE0CA918, sub_1D7B98EA4);
                memset(v62, 0, sizeof(v62));
                v63 = 0;
              }

              sub_1D799CC84(v65, v57);
              sub_1D7B98E30(&v66, v58, &qword_1EE0CA918, sub_1D7B98EA4, MEMORY[0x1E69E6720], sub_1D799C5B4);
              if (v59)
              {
                sub_1D79DA880(v61, v55);
                sub_1D7B99008(v58, sub_1D7B98EA4);
              }

              else
              {
                sub_1D7B98F28(v58, &qword_1EE0CA918, sub_1D7B98EA4);
                memset(v55, 0, sizeof(v55));
                v56 = 0;
              }

              v45(v64, v62, v57, v55, v80);
              sub_1D7B98F98(v55, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
              sub_1D7B99008(v57, sub_1D7B99068);
              sub_1D7B99008(v62, sub_1D7B99068);
              __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
              v46 = sub_1D7D28CBC();
              v48 = v47;
              sub_1D799CC84(v65, v58);
              sub_1D79DA880(v80, v61);
              swift_beginAccess();
              sub_1D7B8A684(v58, v46, v48);
              swift_endAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v49 = v35[3];
                v50 = swift_getObjectType();
                v59 = v54;
                v60 = &protocol witness table for ArticleViewerFeatureManager;
                v58[0] = v35;
                sub_1D7B99AC4(0, &qword_1EE0BE9E0, &type metadata for ArticleViewerFeatureTransition, MEMORY[0x1E69E6F90]);
                v51 = swift_allocObject();
                *(v51 + 16) = xmmword_1D7D3B4D0;
                sub_1D7B990D4(v64, v51 + 32);
                v52 = *(v49 + 8);

                v52(v58, v51, v50, v49);

                swift_unknownObjectRelease();

                sub_1D7B99130(v64);
                __swift_destroy_boxed_opaque_existential_1(v65);
                sub_1D7B98F28(&v66, &qword_1EE0CA918, sub_1D7B98EA4);
                sub_1D79DA8DC(v80);
                sub_1D7B99008(v13, type metadata accessor for ArticleViewerPage);
                sub_1D7B98CE0(&v81);
                return __swift_destroy_boxed_opaque_existential_1(v58);
              }

              sub_1D7B99130(v64);
            }

            else
            {
            }

            __swift_destroy_boxed_opaque_existential_1(v65);
            sub_1D7B98F28(&v66, &qword_1EE0CA918, sub_1D7B98EA4);
            sub_1D79DA8DC(v80);
            v44 = v13;
LABEL_18:
            sub_1D7B99008(v44, type metadata accessor for ArticleViewerPage);
            return sub_1D7B98CE0(&v81);
          }

LABEL_17:
          v44 = v13;
          goto LABEL_18;
        }
      }

      else
      {
      }

      swift_endAccess();
      goto LABEL_17;
    }

    ++v20;
    sub_1D7B98CE0(&v66);
    v21 += 88;
    if (v18 == v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = sub_1D7B98CE0(&v66);
  __break(1u);
  return result;
}

uint64_t sub_1D7B902C0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D7D28CBC() == *(a2 + 16) && v3 == *(a2 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D7D3197C();
  }

  return v5 & 1;
}

uint64_t ArticleViewerFeatureManager.deinit()
{
  sub_1D79C92AC(v0 + 16);
  sub_1D7B98F28(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_featureAvailability);

  return v0;
}

uint64_t ArticleViewerFeatureManager.__deallocating_deinit()
{
  sub_1D79C92AC(v0 + 16);
  sub_1D7B98F28(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_featureAvailability);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B904E0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D7B90544(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1D7B9A104;
}

void sub_1D7B905DC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_1D7B90740()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D799C5B4(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerFeatureManager_currentPage;
  swift_beginAccess();
  sub_1D7B98E30(v11 + v12, v5, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, v1, sub_1D799C5B4);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D7B98F28(v5, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  sub_1D7B99184(v5, v10, type metadata accessor for ArticleViewerPage);
  ArticleViewerFeatureManager.reloadFeatures(for:)(v10);
  return sub_1D7B99008(v10, type metadata accessor for ArticleViewerPage);
}

double sub_1D7B909EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D7A18FFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B969A0();
      v10 = v12;
    }

    sub_1D79D7CBC(*(v10 + 56) + 104 * v8, a3);
    sub_1D7B94A5C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 96) = 0;
    result = 0.0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D7B90AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D7A18FFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B96E54();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ArticleViewerPage(0);
    v19 = *(v12 - 8);
    sub_1D7B99184(v11 + *(v19 + 72) * v8, a3, type metadata accessor for ArticleViewerPage);
    sub_1D7B94C10(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ArticleViewerPage(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_1D7B90C0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D7A18FFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B970D8();
      v10 = v12;
    }

    sub_1D799D69C((*(v10 + 56) + 40 * v8), a3);
    sub_1D7B94DFC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D7B90CB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D7A18FFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B97588();
      v10 = v12;
    }

    sub_1D7B99184(*(v10 + 56) + 224 * v8, a3, sub_1D7B98EA4);
    sub_1D7B94FB8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[12] = 0u;
    a3[13] = 0u;
    a3[10] = 0u;
    a3[11] = 0u;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1D7B90D8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D7A18FFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D7B97E3C();
      v10 = v12;
    }

    sub_1D7A51B58((*(v10 + 56) + 32 * v8), a3);
    sub_1D7B951A4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D7B90E30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EC9E5D10);
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v5 + 56) + 104 * v20;
      if (v33)
      {
        sub_1D79D7CBC(v24, v34);
      }

      else
      {
        sub_1D79D7DA4(v24, v34);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D79D7CBC(v34, *(v7 + 56) + 104 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B910F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B999C8();
  v34 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B91394(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EE0BEBD0);
  v37 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v40 = *v25;
        v41 = *(v25 + 40);
        v38 = *(v25 + 8);
        v39 = *(v25 + 24);
        v42 = *(v25 + 56);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        *&v43[32] = *(v25 + 32);
        *&v43[48] = v28;
        *v43 = v26;
        *&v43[16] = v27;
        v42 = *(&v28 + 1);
        v41 = *&v43[40];
        v40 = v26;
        v38 = *&v43[8];
        v39 = *&v43[24];

        sub_1D79F5B54(v43, v44);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 40) = v41;
      *(v17 + 24) = v39;
      *(v17 + 56) = v42;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B916D4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ArticleViewerPage(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D7B99A60(0, &qword_1EE0BEBF8, type metadata accessor for ArticleViewerPage);
  v41 = a2;
  result = sub_1D7D316AC();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_1D7B99184(v29, v42, type metadata accessor for ArticleViewerPage);
      }

      else
      {
        sub_1D7B98D34(v29, v42, type metadata accessor for ArticleViewerPage);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_1D7B99184(v42, *(v10 + 56) + v28 * v18, type metadata accessor for ArticleViewerPage);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1D7B91A5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A514F0();
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1D799D69C(v24, v34);
      }

      else
      {
        sub_1D799CC84(v24, v34);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D799D69C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B91D50(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  sub_1D7B99B70(0, a3, a4);
  v37 = a2;
  result = sub_1D7D316AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1D7B91FF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EE0BAF18);
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B9229C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99A60(0, &qword_1EE0BEC00, sub_1D7B98EA4);
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v5 + 56) + 224 * v20;
      if (v33)
      {
        sub_1D7B99184(v24, v34, sub_1D7B98EA4);
      }

      else
      {
        sub_1D7B98D34(v24, v34, sub_1D7B98EA4);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D7B99184(v34, *(v7 + 56) + 224 * v15, sub_1D7B98EA4);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B925AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99A60(0, &qword_1EC9E5D20, sub_1D79F5D34);
  v34 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B92864(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99BD8();
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v31;
        v22 = *(&v31 + 1);
      }

      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v20);
      result = sub_1D7D31ABC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B92AF4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s15ArticleProviderOMa();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D7B99A60(0, &qword_1EE0BEBE8, _s15ArticleProviderOMa);
  v41 = a2;
  result = sub_1D7D316AC();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_1D7B99184(v29, v42, _s15ArticleProviderOMa);
      }

      else
      {
        sub_1D7B98D34(v29, v42, _s15ArticleProviderOMa);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_1D7B99184(v42, *(v10 + 56) + v28 * v18, _s15ArticleProviderOMa);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1D7B92E7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EC9E2D48);
  v38 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B93140(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7A51A98(0, &qword_1EE0BEB98);
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D7A51B58(v24, v34);
      }

      else
      {
        sub_1D79FBED0(v24, v34);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D7A51B58(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B93400(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99D20(0, &qword_1EE0BAF30, sub_1D7A51CBC);
  v30 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v20);
      result = sub_1D7D31ABC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B936A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99CBC();
  v33 = a2;
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v34 = *(v22 + 16);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v21);
      result = sub_1D7D31ABC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B93958(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99D20(0, &qword_1EE0BAF28, type metadata accessor for CGRect);
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v21);
      result = sub_1D7D31ABC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B93BF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7B99D90();
  result = sub_1D7D316AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v20);
      result = sub_1D7D31ABC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D7B93E78(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_1D7D2E24C();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D7B99A60(0, &qword_1EE0BEBC8, MEMORY[0x1E69B5A00]);
  v43 = a2;
  result = sub_1D7D316AC();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}