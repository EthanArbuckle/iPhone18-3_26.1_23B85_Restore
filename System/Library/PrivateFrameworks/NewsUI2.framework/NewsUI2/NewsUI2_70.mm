uint64_t sub_218E97024(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = v10;
    v10 = *v7;
    if (!*v7)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_218C81048(v9);
      v9 = result;
    }

    v97 = *(v9 + 16);
    if (v97 >= 2)
    {
      while (1)
      {
        v98 = *v6;
        if (!*v6)
        {
          goto LABEL_124;
        }

        v6 = (v97 - 1);
        v99 = *(v9 + 16 * v97);
        v100 = *(v9 + 16 * (v97 - 1) + 40);
        sub_218E977CC((v98 + 8 * v99), (v98 + 8 * *(v9 + 16 * (v97 - 1) + 32)), (v98 + 8 * v100), v10);
        if (v5)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_218C81048(v9);
        }

        if (v97 - 2 >= *(v9 + 16))
        {
          goto LABEL_114;
        }

        v101 = (v9 + 16 * v97);
        *v101 = v99;
        *(v101 + 1) = v100;
        result = sub_218C80FBC(v97 - 1);
        v97 = *(v9 + 16);
        v6 = a3;
        if (v97 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v108 = result;
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v104 = v10;
      v106 = v5;
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v14 = 8 * v9;
      v15 = (v12 + 8 * v9);
      v17 = *v15;
      v16 = v15 + 2;

      v18 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v13, v17);

      v19 = v9;
      v20 = (v9 + 2);
      while (v8 != v20)
      {
        v22 = *(v16 - 1);
        v21 = *v16;

        v9 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v21, v22);

        ++v20;
        ++v16;
        if (v18 != v9)
        {
          v8 = (v20 - 1);
          break;
        }
      }

      v10 = v104;
      v5 = v106;
      v6 = a3;
      if (v18)
      {
        v7 = v108;
        if (v8 < v19)
        {
          goto LABEL_117;
        }

        v9 = v19;
        if (v19 < v8)
        {
          v23 = 8 * v8 - 8;
          v24 = v8;
          v25 = v19;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v26 = *(v27 + v14);
              *(v27 + v14) = *(v27 + v23);
              *(v27 + v23) = v26;
            }

            ++v25;
            v23 -= 8;
            v14 += 8;
          }

          while (v25 < v24);
        }

        v11 = v8;
      }

      else
      {
        v11 = v8;
        v7 = v108;
        v9 = v19;
      }
    }

    v28 = v6[1];
    if (v11 < v28)
    {
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_116;
      }

      if (v11 - v9 < a4)
      {
        v29 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v29 >= v28)
        {
          v29 = v6[1];
        }

        if (v29 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v11 != v29)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v51 = v10[2];
    v50 = v10[3];
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_2191F6B60((v50 > 1), v51 + 1, 1, v10);
      v10 = result;
    }

    v10[2] = v52;
    v53 = &v10[2 * v51];
    v53[4] = v9;
    v53[5] = v11;
    v54 = *v7;
    if (!v54)
    {
      goto LABEL_125;
    }

    v9 = v11;
    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = v10[4];
          v57 = v10[5];
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_57:
          if (v59)
          {
            goto LABEL_104;
          }

          v72 = &v10[2 * v52];
          v74 = *v72;
          v73 = v72[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_107;
          }

          v78 = &v10[2 * v55 + 4];
          v80 = *v78;
          v79 = v78[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_111;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v82 = &v10[2 * v52];
        v84 = *v82;
        v83 = v82[1];
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_71:
        if (v77)
        {
          goto LABEL_106;
        }

        v85 = &v10[2 * v55];
        v87 = v85[4];
        v86 = v85[5];
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_109;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_78:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v94 = v10[2 * v93 + 4];
        v95 = v10[2 * v55 + 5];
        sub_218E977CC((*v6 + 8 * v94), (*v6 + 8 * v10[2 * v55 + 4]), (*v6 + 8 * v95), v54);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v93 >= v10[2])
        {
          goto LABEL_101;
        }

        v96 = &v10[2 * v93];
        v96[4] = v94;
        v96[5] = v95;
        result = sub_218C80FBC(v55);
        v52 = v10[2];
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v10[2 * v52 + 4];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_102;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_103;
      }

      v67 = &v10[2 * v52];
      v69 = *v67;
      v68 = v67[1];
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_105;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_108;
      }

      if (v71 >= v63)
      {
        v89 = &v10[2 * v55 + 4];
        v91 = *v89;
        v90 = v89[1];
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_112;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v108;
    if (v9 >= v8)
    {
      goto LABEL_88;
    }
  }

  v105 = v10;
  v107 = v5;
  v114 = *v6;
  v30 = *v6 + 8 * v11 - 8;
  v102 = v9;
  v31 = (v9 - v11);
  v110 = v29;
LABEL_30:
  v112 = v30;
  v113 = v11;
  v32 = *(v114 + 8 * v11);
  v111 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *v33;
    v35 = *(v32 + 16);

    v36 = [v35 name];
    sub_219BF5414();

    sub_219BF54D4();

    v37 = [v35 identifier];
    v38 = sub_219BF5414();
    v40 = v39;

    MEMORY[0x21CECC330](v38, v40);

    v41 = *(v34 + 16);
    v42 = [v41 name];
    sub_219BF5414();

    sub_219BF54D4();

    v43 = [v41 identifier];
    v44 = sub_219BF5414();
    v46 = v45;

    MEMORY[0x21CECC330](v44, v46);

    sub_2187F3BD4();
    v47 = sub_219BF7054();

    if (v47 != -1)
    {
LABEL_29:
      v11 = v113 + 1;
      v30 = v112 + 8;
      v31 = v111 - 1;
      if ((v113 + 1) != v110)
      {
        goto LABEL_30;
      }

      v11 = v110;
      v10 = v105;
      v5 = v107;
      v7 = v108;
      v6 = a3;
      v9 = v102;
      goto LABEL_37;
    }

    if (!v114)
    {
      break;
    }

    v48 = *v33;
    v32 = v33[1];
    *v33 = v32;
    v33[1] = v48;
    --v33;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_218E977CC(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;

      v20 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v18, v19);

      if (v20)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v21 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v21;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v32 = v4;
LABEL_25:
    v31 = v15;
    v22 = v15 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;

      v28 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v25, v27);

      if (v28)
      {
        v29 = v26;
        if (v24 != v31)
        {
          *v5 = *v26;
        }

        v4 = v32;
        if (v14 <= v32 || (v15 = v29, v29 <= v6))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v32);
    v14 = v23;
    v15 = v31;
    v4 = v32;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

id sub_218E97A74(void *a1, uint64_t a2, uint64_t a3)
{
  result = [*(a3 + 40) allPurchasedTagIDs];
  if (result)
  {
    v7 = result;
    v8 = sub_219BF5D44();

    v9 = [*(a3 + 32) mutedTagIDs];
    if (v9)
    {
      v10 = v9;
      v11 = sub_219BF5924();
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v12 = sub_218845F78(v11);

    v13 = sub_218E97B80(a1, v8, v12, a2, a3);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E97B80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_unknownObjectRetain();
  v11 = sub_218E97C68(v10, a5);
  v12 = sub_218E97D20(a1, a5);
  v13 = sub_218E97DE4(a1, a5);
  v14 = sub_218E97E6C(a1, a2, a3, a5);
  type metadata accessor for TagModel();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v11;
  *(v15 + 25) = v12;
  *(v15 + 26) = v13;
  *(v15 + 27) = v14;
  *(v15 + 32) = a4;

  return v15;
}

uint64_t sub_218E97C68(void *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 subscriptionForTagID_];

  if (v4 && (v5 = [v4 subscriptionOrigin], v4, v5 <= 0xA))
  {
    return byte_219C41D6A[v5];
  }

  else
  {
    return 7;
  }
}

uint64_t sub_218E97D20(void *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v4);
  if (((*(v5 + 24))(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = [*(a2 + 32) hasNotificationsEnabledForTag_];
  if ([a1 isNotificationEnabled] && (v6 & 1) != 0)
  {
    return 1;
  }

  if (v6 & 1 | (([a1 isNotificationEnabled] & 1) == 0))
  {
    return 0;
  }

  return 2;
}

uint64_t sub_218E97DE4(void *a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return 2;
  }

  v3 = [a1 identifier];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 containsShortcut_];

  return v4;
}

uint64_t sub_218E97E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 32) hasSubscriptionToTag_];
  v8 = [a1 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  if (v7)
  {
    v12 = sub_2188537B8(v9, v11, a2);

    return v12 & 1;
  }

  else
  {
    v14 = sub_2188537B8(v9, v11, a3);

    return v14 & 1 | 0xFFFFFF80;
  }
}

void sub_218E97F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = *(a1 + 16);
  if (v14)
  {
    v45 = v13;

    v15 = 0;
    v16 = a1 + 40;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v47 = v17;
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= v14)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_31;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = objc_opt_self();

        v23 = sub_219BF53D4();
        LOBYTE(v22) = [v22 isPuzzleTypeIdentifier_];

        if (v22)
        {
          break;
        }

        ++v19;
        v18 += 2;
        if (v15 == v14)
        {
          goto LABEL_14;
        }
      }

      v17 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v47 + 16) + 1, 1);
        v17 = v47;
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v20;
      v16 = a1 + 40;
    }

    while (v15 != v14);
LABEL_14:
    v27 = 0;
    v28 = a1 + 40;
    v46 = MEMORY[0x277D84F90];
LABEL_15:
    v29 = (v28 + 16 * v27);
    v30 = v27;
    while (v30 < v14)
    {
      v27 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_33;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = objc_opt_self();

      v34 = sub_219BF53D4();
      LODWORD(v33) = [v33 isPuzzleTypeIdentifier_];

      if (!v33)
      {
        v35 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v46 + 16) + 1, 1);
          v35 = v46;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21870B65C((v36 > 1), v37 + 1, 1);
          v35 = v46;
        }

        *(v35 + 16) = v37 + 1;
        v46 = v35;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v31;
        v28 = a1 + 40;
        if (v27 == v14)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v39 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v39);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v40);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v41 = swift_allocObject();
          v41[2] = a1;
          v41[3] = sub_218E9A2A8;
          v41[4] = v45;

          v42 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v43 = swift_allocObject();
          *(v43 + 16) = sub_218E9A2A8;
          *(v43 + 24) = v45;

          v44 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v30;
      v29 += 2;
      if (v27 == v14)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218A15904(MEMORY[0x277D84F90], 0, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_218E984F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_37:
    v30 = a1;
    v31 = a4;
    v32 = a3;
    v33 = sub_219BF7214();
    a3 = v32;
    a4 = v31;
    v6 = v33;
    a1 = v30;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = a3;
  v36 = a4;
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v34 = a1;
    v9 = a1 + 32;
    v10 = a5 + 56;
    while (1)
    {
      if (v38)
      {
        v11 = MEMORY[0x21CECE0F0](v8, v34);
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v8 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v11 = *(v9 + 8 * v8);
        swift_unknownObjectRetain();
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v23 = v40;
          v7 = MEMORY[0x277D84F90];
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_38;
        }
      }

      v13 = [v11 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      if (*(a5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v17 = sub_219BF7AE4(), v18 = -1 << *(a5 + 32), v19 = v17 & ~v18, ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a5 + 48) + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v16;
          if (v22 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        a1 = sub_219BF73E4();
      }

      else
      {
LABEL_5:
        swift_unknownObjectRelease();
      }

      if (v8 == v6)
      {
        goto LABEL_24;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    v26 = v35;
    v25 = v36;
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_39:

    return MEMORY[0x277D84F90];
  }

LABEL_38:
  v24 = sub_219BF7214();
  v26 = v35;
  v25 = v36;
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_29:
  result = sub_219BF73F4();
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CECE0F0](v28, v23);
      }

      else
      {
        v29 = *(v23 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      swift_getObjectType();
      sub_218E97B80(v29, a2, v26, 0, v25);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v24 != v28);

    return v7;
  }

  return result;
}

uint64_t sub_218E9883C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v20 = a4;
    v21 = sub_219BF7214();
    a4 = v20;
    v8 = v21;
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a4;
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, a1);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v12 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = v24;
          v9 = MEMORY[0x277D84F90];
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_29;
        }
      }

      if (sub_218E94530(v12, a5))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v10;
      if (v13 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v14 & 0x4000000000000000) == 0)
  {
    v15 = *(v14 + 16);
    v16 = v22;
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_30:

    return MEMORY[0x277D84F90];
  }

LABEL_29:
  v15 = sub_219BF7214();
  v16 = v22;
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_20:
  result = sub_219BF73F4();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x21CECE0F0](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      ++v18;
      swift_getObjectType();
      sub_218E97B80(v19, a2, a3, 0, v16);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v15 != v18);

    return v9;
  }

  return result;
}

void sub_218E98AD4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = *(a1 + 16);
  if (v8)
  {
    v39 = v7;

    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v41 = v11;
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v16 = objc_opt_self();

        v17 = sub_219BF53D4();
        LOBYTE(v16) = [v16 isPuzzleTypeIdentifier_];

        if (v16)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }

      v11 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v41 + 16) + 1, 1);
        v11 = v41;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      v10 = a1 + 40;
    }

    while (v9 != v8);
LABEL_14:
    v21 = 0;
    v22 = a1 + 40;
    v40 = MEMORY[0x277D84F90];
LABEL_15:
    v23 = (v22 + 16 * v21);
    v24 = v21;
    while (v24 < v8)
    {
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_33;
      }

      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = objc_opt_self();

      v28 = sub_219BF53D4();
      LODWORD(v27) = [v27 isPuzzleTypeIdentifier_];

      if (!v27)
      {
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v40 + 16) + 1, 1);
          v29 = v40;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_21870B65C((v30 > 1), v31 + 1, 1);
          v29 = v40;
        }

        *(v29 + 16) = v31 + 1;
        v40 = v29;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v25;
        v22 = a1 + 40;
        if (v21 == v8)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v33 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v33);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v34);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v35 = swift_allocObject();
          v35[2] = a1;
          v35[3] = sub_218E9B5B0;
          v35[4] = v39;

          v36 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v37 = swift_allocObject();
          *(v37 + 16) = sub_218E9B5B0;
          *(v37 + 24) = v39;

          v38 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v24;
      v23 += 2;
      if (v21 == v8)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218A23BE8(MEMORY[0x277D84F90], 0, a3, a4);
  }
}

void sub_218E9905C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = *(a1 + 16);
  if (v8)
  {
    v39 = v7;

    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v41 = v11;
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v16 = objc_opt_self();

        v17 = sub_219BF53D4();
        LOBYTE(v16) = [v16 isPuzzleTypeIdentifier_];

        if (v16)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }

      v11 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v41 + 16) + 1, 1);
        v11 = v41;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      v10 = a1 + 40;
    }

    while (v9 != v8);
LABEL_14:
    v21 = 0;
    v22 = a1 + 40;
    v40 = MEMORY[0x277D84F90];
LABEL_15:
    v23 = (v22 + 16 * v21);
    v24 = v21;
    while (v24 < v8)
    {
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_33;
      }

      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = objc_opt_self();

      v28 = sub_219BF53D4();
      LODWORD(v27) = [v27 isPuzzleTypeIdentifier_];

      if (!v27)
      {
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v40 + 16) + 1, 1);
          v29 = v40;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_21870B65C((v30 > 1), v31 + 1, 1);
          v29 = v40;
        }

        *(v29 + 16) = v31 + 1;
        v40 = v29;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v25;
        v22 = a1 + 40;
        if (v21 == v8)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v33 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v33);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v34);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v35 = swift_allocObject();
          v35[2] = a1;
          v35[3] = sub_218E9B5BC;
          v35[4] = v39;

          v36 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v37 = swift_allocObject();
          *(v37 + 16) = sub_218E9B5BC;
          *(v37 + 24) = v39;

          v38 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v24;
      v23 += 2;
      if (v21 == v8)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218A24298(MEMORY[0x277D84F90], 0, a3, a4);
  }
}

void sub_218E995E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {

    v6 = 0;
    v39 = a1;
    v7 = a1 + 40;
    v40 = a1 + 40;
    v42 = MEMORY[0x277D84F90];
    do
    {
      v8 = (v7 + 16 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= v4)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_31;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v12 = objc_opt_self();

        v13 = sub_219BF53D4();
        LOBYTE(v12) = [v12 isPuzzleTypeIdentifier_];

        if (v12)
        {
          break;
        }

        ++v9;
        v8 += 2;
        if (v6 == v4)
        {
          goto LABEL_14;
        }
      }

      v14 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v42 + 16) + 1, 1);
        v14 = v42;
      }

      v7 = v40;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21870B65C((v15 > 1), v16 + 1, 1);
        v14 = v42;
      }

      *(v14 + 16) = v16 + 1;
      v42 = v14;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v10;
    }

    while (v6 != v4);
LABEL_14:
    v18 = 0;
    v19 = v39 + 40;
    v20 = MEMORY[0x277D84F90];
LABEL_15:
    v41 = v20;
    v21 = (v19 + 16 * v18);
    v22 = v18;
    while (v22 < v4)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_33;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = objc_opt_self();

      v26 = sub_219BF53D4();
      LODWORD(v25) = [v25 isPuzzleTypeIdentifier_];

      if (!v25)
      {
        v20 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v41 + 16) + 1, 1);
          v20 = v41;
        }

        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21870B65C((v27 > 1), v28 + 1, 1);
          v20 = v41;
        }

        *(v20 + 16) = v28 + 1;
        v29 = v20 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v23;
        v19 = v39 + 40;
        if (v18 == v4)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v30 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v30);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v31);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v32 = swift_allocObject();
          v32[2] = v39;
          v32[3] = sub_218E99B70;
          v32[4] = a3;

          v33 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v34 = swift_allocObject();
          *(v34 + 16) = sub_218E99B70;
          *(v34 + 24) = a3;

          v35 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v22;
      v21 += 2;
      if (v18 == v4)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D84F90];
    *(v36 + 16) = a3;
    *(v36 + 24) = v37;
    swift_retain_n();
    sub_219BE3494();
  }
}

void sub_218E99B88()
{
  if (!qword_280E8FA78)
  {
    sub_218E99C60(255, &unk_280E8FA80, MEMORY[0x277D834F8]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FA78);
    }
  }
}

void sub_218E99C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2186D6710(255, &qword_280E8E680);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_218E99CEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = *(a1 + 16);
  if (v12)
  {
    v43 = v11;

    v13 = 0;
    v14 = a1 + 40;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v45 = v15;
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_31;
        }

        v19 = *(v16 - 1);
        v18 = *v16;
        v20 = objc_opt_self();

        v21 = sub_219BF53D4();
        LOBYTE(v20) = [v20 isPuzzleTypeIdentifier_];

        if (v20)
        {
          break;
        }

        ++v17;
        v16 += 2;
        if (v13 == v12)
        {
          goto LABEL_14;
        }
      }

      v15 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v45 + 16) + 1, 1);
        v15 = v45;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v15 = v45;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      v14 = a1 + 40;
    }

    while (v13 != v12);
LABEL_14:
    v25 = 0;
    v26 = a1 + 40;
    v44 = MEMORY[0x277D84F90];
LABEL_15:
    v27 = (v26 + 16 * v25);
    v28 = v25;
    while (v28 < v12)
    {
      v25 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_33;
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = objc_opt_self();

      v32 = sub_219BF53D4();
      LODWORD(v31) = [v31 isPuzzleTypeIdentifier_];

      if (!v31)
      {
        v33 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v44 + 16) + 1, 1);
          v33 = v44;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21870B65C((v34 > 1), v35 + 1, 1);
          v33 = v44;
        }

        *(v33 + 16) = v35 + 1;
        v44 = v33;
        v36 = v33 + 16 * v35;
        *(v36 + 32) = v30;
        *(v36 + 40) = v29;
        v26 = a1 + 40;
        if (v25 == v12)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v37 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v37);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v38);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v39 = swift_allocObject();
          v39[2] = a1;
          v39[3] = sub_218E9A298;
          v39[4] = v43;

          v40 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v41 = swift_allocObject();
          *(v41 + 16) = sub_218E9A298;
          *(v41 + 24) = v43;

          v42 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v28;
      v27 += 2;
      if (v25 == v12)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218B64F00(MEMORY[0x277D84F90], 0, a3, a4, a5);
  }
}

unint64_t sub_218E9A2C0()
{
  result = qword_27CC12D40;
  if (!qword_27CC12D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12D40);
  }

  return result;
}

void sub_218E9A31C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v16 = *(a1 + 16);
  if (v16)
  {
    v47 = v15;

    v17 = 0;
    v18 = a1 + 40;
    v19 = MEMORY[0x277D84F90];
    do
    {
      v49 = v19;
      v20 = (v18 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= v16)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_31;
        }

        v23 = *(v20 - 1);
        v22 = *v20;
        v24 = objc_opt_self();

        v25 = sub_219BF53D4();
        LOBYTE(v24) = [v24 isPuzzleTypeIdentifier_];

        if (v24)
        {
          break;
        }

        ++v21;
        v20 += 2;
        if (v17 == v16)
        {
          goto LABEL_14;
        }
      }

      v19 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v49 + 16) + 1, 1);
        v19 = v49;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v22;
      v18 = a1 + 40;
    }

    while (v17 != v16);
LABEL_14:
    v29 = 0;
    v30 = a1 + 40;
    v48 = MEMORY[0x277D84F90];
LABEL_15:
    v31 = (v30 + 16 * v29);
    v32 = v29;
    while (v32 < v16)
    {
      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_33;
      }

      v34 = *(v31 - 1);
      v33 = *v31;
      v35 = objc_opt_self();

      v36 = sub_219BF53D4();
      LODWORD(v35) = [v35 isPuzzleTypeIdentifier_];

      if (!v35)
      {
        v37 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v48 + 16) + 1, 1);
          v37 = v48;
        }

        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_21870B65C((v38 > 1), v39 + 1, 1);
          v37 = v48;
        }

        *(v37 + 16) = v39 + 1;
        v48 = v37;
        v40 = v37 + 16 * v39;
        *(v40 + 32) = v34;
        *(v40 + 40) = v33;
        v30 = a1 + 40;
        if (v29 == v16)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v41 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v41);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v42);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v43 = swift_allocObject();
          v43[2] = a1;
          v43[3] = sub_218E9AF3C;
          v43[4] = v47;

          v44 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v45 = swift_allocObject();
          *(v45 + 16) = sub_218E9AF3C;
          *(v45 + 24) = v47;

          v46 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v32;
      v31 += 2;
      if (v29 == v16)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218E96530(MEMORY[0x277D84F90], 0, a3, a4, a5, a6, a7);
  }
}

void sub_218E9A8EC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = *(a1 + 16);
  if (v12)
  {
    v43 = v11;

    v13 = 0;
    v14 = a1 + 40;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v45 = v15;
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_31;
        }

        v19 = *(v16 - 1);
        v18 = *v16;
        v20 = objc_opt_self();

        v21 = sub_219BF53D4();
        LOBYTE(v20) = [v20 isPuzzleTypeIdentifier_];

        if (v20)
        {
          break;
        }

        ++v17;
        v16 += 2;
        if (v13 == v12)
        {
          goto LABEL_14;
        }
      }

      v15 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v45 + 16) + 1, 1);
        v15 = v45;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v15 = v45;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      v14 = a1 + 40;
    }

    while (v13 != v12);
LABEL_14:
    v25 = 0;
    v26 = a1 + 40;
    v44 = MEMORY[0x277D84F90];
LABEL_15:
    v27 = (v26 + 16 * v25);
    v28 = v25;
    while (v28 < v12)
    {
      v25 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_33;
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = objc_opt_self();

      v32 = sub_219BF53D4();
      LODWORD(v31) = [v31 isPuzzleTypeIdentifier_];

      if (!v31)
      {
        v33 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v44 + 16) + 1, 1);
          v33 = v44;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21870B65C((v34 > 1), v35 + 1, 1);
          v33 = v44;
        }

        *(v33 + 16) = v35 + 1;
        v44 = v33;
        v36 = v33 + 16 * v35;
        *(v36 + 32) = v30;
        *(v36 + 40) = v29;
        v26 = a1 + 40;
        if (v25 == v12)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v37 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v37);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v38);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v39 = swift_allocObject();
          v39[2] = a1;
          v39[3] = sub_218E9AE88;
          v39[4] = v43;

          v40 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v41 = swift_allocObject();
          *(v41 + 16) = sub_218E9AE88;
          *(v41 + 24) = v43;

          v42 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v28;
      v27 += 2;
      if (v25 == v12)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    a3(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_218E9AE88(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(v2 + 32))();
  }

  else
  {
    return (*(v2 + 16))();
  }
}

void sub_218E9AED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218E9AF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = *(a1 + 16);
  if (v14)
  {
    v45 = v13;

    v15 = 0;
    v16 = a1 + 40;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v47 = v17;
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= v14)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_31;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = objc_opt_self();

        v23 = sub_219BF53D4();
        LOBYTE(v22) = [v22 isPuzzleTypeIdentifier_];

        if (v22)
        {
          break;
        }

        ++v19;
        v18 += 2;
        if (v15 == v14)
        {
          goto LABEL_14;
        }
      }

      v17 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v47 + 16) + 1, 1);
        v17 = v47;
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v20;
      v16 = a1 + 40;
    }

    while (v15 != v14);
LABEL_14:
    v27 = 0;
    v28 = a1 + 40;
    v46 = MEMORY[0x277D84F90];
LABEL_15:
    v29 = (v28 + 16 * v27);
    v30 = v27;
    while (v30 < v14)
    {
      v27 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_33;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = objc_opt_self();

      v34 = sub_219BF53D4();
      LODWORD(v33) = [v33 isPuzzleTypeIdentifier_];

      if (!v33)
      {
        v35 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v46 + 16) + 1, 1);
          v35 = v46;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21870B65C((v36 > 1), v37 + 1, 1);
          v35 = v46;
        }

        *(v35 + 16) = v37 + 1;
        v46 = v35;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v31;
        v28 = a1 + 40;
        if (v27 == v14)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v39 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v39);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v40);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v41 = swift_allocObject();
          v41[2] = a1;
          v41[3] = sub_218E9B560;
          v41[4] = v45;

          v42 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v43 = swift_allocObject();
          *(v43 + 16) = sub_218E9B560;
          *(v43 + 24) = v45;

          v44 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v30;
      v29 += 2;
      if (v27 == v14)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_219976F20(MEMORY[0x277D84F90], 0, a3, a4, a5, a6, a7);
  }
}

uint64_t objectdestroy_65Tm()
{

  return swift_deallocObject();
}

uint64_t sub_218E9B608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v18 = a5;
  sub_218E9BFAC(0, &qword_280E8C588, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E9BF10();
  sub_219BF7B44();
  v20 = a2;
  v19 = 0;
  sub_218D554B0();
  sub_218E9BF64(&unk_280E916C0, sub_218D554B0);
  sub_219BF7834();
  if (!v5)
  {
    v14 = v18;
    v20 = v17;
    v19 = 1;
    sub_218D55534();
    sub_218E9BF64(&qword_280E916A8, sub_218D55534);
    sub_219BF7834();
    v20 = a4;
    v19 = 2;
    sub_218D556B4();
    sub_218E9BF64(&qword_280E914C8, sub_218D556B4);
    sub_219BF7834();
    v20 = v14;
    v19 = 3;
    sub_2186F95C4();
    sub_218E9BF64(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_218E9B910()
{
  v1 = 0x737265746C6966;
  v2 = 0x676E69726564726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6C69666B636162;
  }

  if (*v0)
  {
    v1 = 0x6F697463656C6573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_218E9B990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E9C128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E9B9B8(uint64_t a1)
{
  v2 = sub_218E9BF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E9B9F4(uint64_t a1)
{
  v2 = sub_218E9BF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E9BA30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218E9BB40(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_218E9BA80()
{
  sub_218D554B0();
  if ((sub_219BEF254() & 1) == 0)
  {
    return 0;
  }

  sub_218D55534();
  if ((sub_219BEF254() & 1) == 0)
  {
    return 0;
  }

  sub_218D556B4();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  return sub_219BEF504() & 1;
}

uint64_t sub_218E9BB40(void *a1)
{
  sub_218E9BFAC(0, &qword_280E8CDD0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_218E9BF10();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_218D554B0();
    LOBYTE(v11) = 0;
    sub_218E9BF64(&qword_280E916B8, sub_218D554B0);
    sub_219BF7674();
    v8 = v12;
    v10 = v5;
    if (!v12)
    {
      swift_allocObject();
      v8 = sub_219BEF274();
    }

    sub_218D55534();
    LOBYTE(v11) = 1;
    sub_218E9BF64(&qword_280E916A0, sub_218D55534);
    sub_219BF7674();
    if (!v12)
    {
      swift_allocObject();
      sub_219BEF274();
    }

    sub_218D556B4();
    LOBYTE(v11) = 2;
    sub_218E9BF64(&qword_280E914C0, sub_218D556B4);
    sub_219BF7674();
    if (!v12)
    {
      v11 = 0;
      swift_allocObject();
      sub_219BEF534();
    }

    sub_2186F95C4();
    LOBYTE(v11) = 3;
    sub_218E9BF64(&qword_280E913F8, sub_2186F95C4);
    sub_219BF7674();
    if (!v12)
    {
      LOBYTE(v11) = 1;
      swift_allocObject();
      sub_219BEF534();
    }

    (*(v10 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_218E9BF10()
{
  result = qword_280EC3210[0];
  if (!qword_280EC3210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC3210);
  }

  return result;
}

uint64_t sub_218E9BF64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218E9BFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E9BF10();
    v7 = a3(a1, &type metadata for SportsScoreSortingKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E9C024()
{
  result = qword_27CC12D58;
  if (!qword_27CC12D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12D58);
  }

  return result;
}

unint64_t sub_218E9C07C()
{
  result = qword_280EC3200;
  if (!qword_280EC3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3200);
  }

  return result;
}

unint64_t sub_218E9C0D4()
{
  result = qword_280EC3208;
  if (!qword_280EC3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3208);
  }

  return result;
}

uint64_t sub_218E9C128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265746C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xEA0000000000736ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69726564726FLL && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6C69666B636162 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unsigned __int8 *sub_218E9C294(uint64_t a1)
{
  v77 = sub_219BDBD64();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE22B4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v75 - v8;
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  sub_218C4E41C();
  v18 = v17;
  v87 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v19 = *(v11 + 8);
  v82 = v16;
  v20 = v16;
  v21 = v19;
  v19(v20, v10);
  v84 = sub_219BE22C4();
  v85 = v9;
  v23 = v22;
  v24 = v9;
  v25 = *(v4 + 8);
  v86 = v3;
  v25(v24, v3);
  v83 = v23;
  v80 = v19;
  v81 = v18;
  v79 = v25;
  if (!v23)
  {
    v41 = v10;
    v32 = v86;
LABEL_24:
    v78 = 0;
    v42 = 0;
    v43 = 0;
LABEL_74:
    v63 = [objc_allocWithZone(type metadata accessor for AdContext()) init];
    v64 = v82;
    sub_219BE2594();
    v65 = v85;
    sub_219BE22D4();
    v80(v64, v41);
    v66 = sub_219BE22C4();
    v68 = v67;
    v79(v65, v32);
    v69 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_qToken];
    swift_beginAccess();
    *v69 = v66;
    v69[1] = v68;

    v70 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_previewID];
    swift_beginAccess();
    v71 = v83;
    *v70 = v84;
    v70[1] = v71;

    v72 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_previewSessionID];
    swift_beginAccess();
    *v72 = v42;
    v72[1] = v43;

    v73 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID];
    swift_beginAccess();
    *v73 = v78;
    v73[8] = 0;
    return v63;
  }

  sub_219BE2594();
  sub_219BE22D4();
  v21(v14, v10);
  v26 = sub_219BE22C4();
  v28 = v27;
  v29 = v7;
  v30 = v86;
  result = (v25)(v29, v86);
  v32 = v30;
  if (!v28)
  {
    v41 = v10;
    goto LABEL_24;
  }

  v33 = HIBYTE(v28) & 0xF;
  v34 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v35 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    v41 = v10;

    v59 = 0;
    goto LABEL_71;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    v37 = sub_218C8BAF0(v26, v28, 10);
    v58 = v74;
LABEL_68:

    v41 = v10;
    v32 = v86;
    if (v58)
    {
      v59 = 0;
    }

    else
    {
      v59 = v37;
    }

LABEL_71:
    v60 = v59 & ~(v59 >> 63);
    if (v60 >= 50)
    {
      v60 = 50;
    }

    v78 = v60;
    v61 = v75;
    sub_219BDBD54();
    v42 = sub_219BDBD44();
    v43 = v62;
    (*(v76 + 8))(v61, v77);
    goto LABEL_74;
  }

  if ((v28 & 0x2000000000000000) == 0)
  {
    if ((v26 & 0x1000000000000000) != 0)
    {
      result = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_219BF73B4();
    }

    v36 = *result;
    if (v36 == 43)
    {
      if (v34 >= 1)
      {
        v33 = v34 - 1;
        if (v34 != 1)
        {
          v37 = 0;
          if (result)
          {
            v47 = result + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                goto LABEL_66;
              }

              v49 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_66;
              }

              v37 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_66;
              }

              ++v47;
              if (!--v33)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_66;
      }

      goto LABEL_80;
    }

    if (v36 != 45)
    {
      if (v34)
      {
        v37 = 0;
        if (result)
        {
          while (1)
          {
            v53 = *result - 48;
            if (v53 > 9)
            {
              goto LABEL_66;
            }

            v54 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_66;
            }

            v37 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              goto LABEL_66;
            }

            ++result;
            if (!--v34)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_66:
      v37 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_67;
    }

    if (v34 >= 1)
    {
      v33 = v34 - 1;
      if (v34 != 1)
      {
        v37 = 0;
        if (result)
        {
          v38 = result + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              goto LABEL_66;
            }

            v40 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_66;
            }

            v37 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              goto LABEL_66;
            }

            ++v38;
            if (!--v33)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v33) = 0;
LABEL_67:
        v88 = v33;
        v58 = v33;
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v89[0] = v26;
  v89[1] = v28 & 0xFFFFFFFFFFFFFFLL;
  if (v26 != 43)
  {
    if (v26 != 45)
    {
      if (v33)
      {
        v37 = 0;
        v55 = v89;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            break;
          }

          v57 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v57 + v56;
          if (__OFADD__(v57, v56))
          {
            break;
          }

          ++v55;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v33)
    {
      if (--v33)
      {
        v37 = 0;
        v44 = v89 + 1;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v46 - v45;
          if (__OFSUB__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (v33)
  {
    if (--v33)
    {
      v37 = 0;
      v50 = v89 + 1;
      while (1)
      {
        v51 = *v50 - 48;
        if (v51 > 9)
        {
          break;
        }

        v52 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          break;
        }

        ++v50;
        if (!--v33)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t firstlyAfterLaunching<A>(closure:)(uint64_t a1, uint64_t a2)
{
  sub_219BE2254();
  v4 = sub_219BE2234();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v10[4] = sub_218E9CCD0;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_66;
  v7 = _Block_copy(v10);

  [v5 scheduleLowPriorityBlock_];
  _Block_release(v7);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9CBAC()
{
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_219BE2F74();

  v1 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t firstlyAfterLaunching<A>(on:closure:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_219BE2254();
  v6 = sub_219BE2234();
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v6;
  v13[4] = sub_218E9CF98;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218793E0C;
  v13[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v13);
  v10 = a1;

  [v7 scheduleLowPriorityBlock_];
  _Block_release(v9);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v12 = result;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = swift_allocObject();
  v7[2] = *(v6 + *MEMORY[0x277D6CB98]);
  v7[3] = a2;
  v7[4] = a3;

  sub_219BE31D4();

  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t firstlyAfterLaunching<A, B>(on:disposeOn:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_219BE2254();
  v10 = sub_219BE2234();
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = v12;
  v13[4] = v10;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v18[4] = sub_218E9D384;
  v18[5] = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_218793E0C;
  v18[3] = &block_descriptor_15_3;
  v14 = _Block_copy(v18);

  v15 = a1;

  [v11 scheduleLowPriorityBlock_];
  _Block_release(v14);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v17 = result;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9D11C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = swift_allocObject();
    v11[2] = *(v10 + *MEMORY[0x277D6CB98]);
    v11[3] = a6;
    v11[4] = a4;
    v11[5] = a5;

    sub_219BE31F4();

    v12 = swift_allocObject();
    *(v12 + 16) = a6;
    *(v12 + 24) = a2;

    v13 = sub_219BE2E54();
    sub_219BE2F74();

    v14 = swift_allocObject();
    *(v14 + 16) = a6;
    *(v14 + 24) = a2;

    v15 = sub_219BE2E54();
    sub_219BE2FD4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_219BE1D94();
    sub_218DB220C();
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D6CAE0], v16);
    sub_219BE2204();
  }
}

uint64_t firstlyAfterLaunching<A, B>(on:disposeOn:qos:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v26 = a5;
  v10 = sub_219BED1D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_219BE2254();
  v13 = sub_219BE2234();
  v27 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 2) = a6;
  *(v16 + 3) = v17;
  *(v16 + 4) = v14;
  *(v16 + 5) = v13;
  *(v16 + 6) = a1;
  (*(v11 + 32))(&v16[v15], &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v18 = &v16[(v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v26;
  *v18 = v25;
  *(v18 + 1) = v19;
  aBlock[4] = sub_218E9D870;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_22_3;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  [v27 scheduleLowPriorityBlock_];
  _Block_release(v20);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v23 = result;

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9D5F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = swift_allocObject();
    v12[2] = *(v11 + *MEMORY[0x277D6CB98]);
    v12[3] = a7;
    v12[4] = a5;
    v12[5] = a6;

    sub_219BE31E4();

    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 24) = a2;

    v14 = sub_219BE2E54();
    sub_219BE2F74();

    v15 = swift_allocObject();
    *(v15 + 16) = a7;
    *(v15 + 24) = a2;

    v16 = sub_219BE2E54();
    sub_219BE2FD4();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_219BE1D94();
    sub_218DB220C();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D6CAE0], v17);
    sub_219BE2204();
  }
}

void sub_218E9D870()
{
  v1 = v0[3];
  v2 = *(sub_219BED1D4() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_218E9D5F8(v4, v5, v6, v0 + v3, v8, v9, v1);
}

uint64_t sub_218E9DA14()
{
  v1 = v0;
  v2 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(v1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model, v4, type metadata accessor for SportsDetailModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v4 + 1);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v12 - 4) = v1;
    *(&v12 - 3) = v7;
    *(&v12 - 2) = v6;
    sub_218EA199C();
    sub_219BE3204();

    v8 = sub_219BE2E54();
    sub_218EA1A0C();
    sub_219BE2F84();
  }

  else
  {
    sub_218EA1CB4(v4, type metadata accessor for SportsDetailModel);
    sub_218EA1A0C();
    sub_219BE3204();
  }

  v9 = sub_219BE2E54();
  type metadata accessor for SportsManagementDetailPrewarmResult();
  v10 = sub_219BE2F94();

  return v10;
}

uint64_t sub_218E9DC70(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager), *(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager + 24));
  sub_219BF4434();
  v1 = off_282A4D750[0];
  type metadata accessor for TagService();
  v1();
  v2 = sub_219BE31C4();

  return v2;
}

uint64_t sub_218E9DD4C(uint64_t *a1, uint64_t a2)
{
  v37 = a2;
  v33 = type metadata accessor for SportsDetailModel();
  v3 = MEMORY[0x28223BE20](v33);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = v32 - v5;
  sub_218EA1AC8(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - v7;
  v9 = sub_219BF34F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = v32 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(v16 + 16);

  v18 = [v17 identifier];
  sub_219BF5414();

  v19 = v15;
  v20 = v10;
  sub_219BF29A4();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_218EA208C(v8, &qword_27CC13BD0, MEMORY[0x277D33E48]);
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    v38 = 0;
    v39 = 0xE000000000000000;
    v40 = *(v16 + 16);
    sub_2186D8870();
    sub_219BF7484();
    v22 = v38;
    v23 = v39;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    sub_219BE5314();

    sub_218EA2038();
    swift_allocError();
    *v24 = 0;
    sub_218EA1AC8(0, &qword_27CC12E28, sub_218EA1A0C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v25 = sub_219BE2FF4();
  }

  else
  {
    v26 = v34;
    (*(v10 + 32))(v34, v8, v9);
    v32[1] = v19;
    v27 = *(v10 + 16);
    v27(v13, v26, v9);
    v28 = v36;
    v27(v36, v13, v9);

    v29 = sub_219BF34A4();
    v32[0] = *(v20 + 8);
    (v32[0])(v13, v9);
    v30 = type metadata accessor for SportsModel();
    *(v28 + *(v30 + 20)) = v29;
    *(v28 + *(v30 + 24)) = v16;
    swift_storeEnumTagMultiPayload();
    sub_218EA1B48(v28, v35, type metadata accessor for SportsDetailModel);
    sub_218EA1AC8(0, &qword_27CC12DD0, type metadata accessor for SportsDetailModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    sub_218E9E308(v28);
    sub_218E9E690(v28);
    v25 = sub_219BE31B4();

    sub_218EA1CB4(v28, type metadata accessor for SportsDetailModel);
    (v32[0])(v26, v9);
  }

  return v25;
}

uint64_t sub_218E9E308(uint64_t a1)
{
  v3 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EA1B48(a1, v8, type metadata accessor for SportsDetailModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA1CB4(v8, type metadata accessor for SportsDetailModel);
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      v10 = *v8;
    }

    v19 = v10;
    sub_218EA1AC8(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_218EA1D4C(v8, v5, type metadata accessor for SportsModel);
    v11 = [*(*&v5[*(v3 + 24)] + 16) asSports];
    if (v11)
    {
      v12 = MEMORY[0x28223BE20](v11);
      *(&v18 - 2) = v1;
      *(&v18 - 1) = v12;
      sub_219BE4F14();
      sub_219BE3204();
      v13 = sub_219BE2E54();
      sub_218A3A1C4();
      sub_219BE2F94();

      v14 = sub_219BE2E54();
      v15 = sub_219BE3054();

      swift_unknownObjectRelease();
      sub_218EA1CB4(v5, type metadata accessor for SportsModel);
      return v15;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      sub_218EA1AC8(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v17 = sub_219BE3014();
      sub_218EA1CB4(v5, type metadata accessor for SportsModel);
      return v17;
    }
  }
}

void *sub_218E9E690(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_218EA1AC8(0, &qword_27CC12DD8, MEMORY[0x277D34030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v71 - v4;
  v5 = sub_219BF34F4();
  v88 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v71 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = type metadata accessor for SportsModel();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v78 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1AC8(0, &qword_27CC12DE0, type metadata accessor for SportsModel, v2);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  sub_218EA1B48(a1, v20, type metadata accessor for SportsDetailModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_218EA1CB4(v20, type metadata accessor for SportsDetailModel);
    v27 = 1;
  }

  else
  {
    sub_218EA1D4C(v20, v26, type metadata accessor for SportsModel);
    v27 = 0;
  }

  (*(v16 + 56))(v26, v27, 1, v15);
  sub_218EA1BB0(v26, v24);
  v28 = (*(v16 + 48))(v24, 1, v15);
  v29 = MEMORY[0x277D84F90];
  if (v28 == 1)
  {
    sub_218EA208C(v24, &qword_27CC12DE0, type metadata accessor for SportsModel);
    v93 = v29;
    sub_218EA1AC8(0, &qword_27CC12DE8, sub_218EA1A94, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v30 = sub_219BE3014();
    sub_218EA208C(v26, &qword_27CC12DE0, type metadata accessor for SportsModel);
    return v30;
  }

  v75 = v26;
  v31 = v78;
  sub_218EA1D4C(v24, v78, type metadata accessor for SportsModel);
  v93 = v29;
  v32 = swift_allocObject();
  v74 = v32;
  *(v32 + 16) = v29;
  v33 = v32 + 16;
  v71 = v33;
  v34 = *(v31 + *(v15 + 20));
  v35 = *(v34 + 16);
  v36 = v81;
  if (!v35)
  {
LABEL_47:
    MEMORY[0x28223BE20](v33);
    v69 = v78;
    *(&v71 - 4) = v77;
    *(&v71 - 3) = v69;
    *(&v71 - 2) = &v93;
    sub_218EA1C64(0);
    sub_219BE3204();

    v70 = sub_219BE2E54();
    sub_218EA1A94(0);
    v30 = sub_219BE2F64();

    sub_218EA208C(v75, &qword_27CC12DE0, type metadata accessor for SportsModel);

    sub_218EA1CB4(v69, type metadata accessor for SportsModel);
    return v30;
  }

  v92 = *(v88 + 16);
  v83 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v37 = v34 + v83;
  v38 = *(v88 + 72);
  v91 = (v88 + 88);
  v90 = *MEMORY[0x277D33E30];
  v87 = *MEMORY[0x277D33E28];
  v84 = *MEMORY[0x277D33E38];
  v76 = *MEMORY[0x277D33E40];
  v39 = (v88 + 8);
  v73 = (v88 + 96);
  v79 = (v88 + 32);
  v88 += 16;
  v89 = MEMORY[0x277D84F90];
  v86 = v38;
  v72 = v12;
  while (1)
  {
    v41 = v92;
    v92(v14, v37, v5);
    v41(v12, v14, v5);
    v42 = (*v91)(v12, v5);
    if (v42 == v90)
    {
      goto LABEL_8;
    }

    if (v42 == v87)
    {
      v43 = *v39;
      (*v39)(v12, v5);
      if ((sub_219BF34E4() & 1) == 0)
      {
        v92(v85, v14, v5);
        v55 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2191F955C(0, v55[2] + 1, 1, v55);
        }

        v57 = v55[2];
        v56 = v55[3];
        v89 = v55;
        if (v57 >= v56 >> 1)
        {
          v89 = sub_2191F955C(v56 > 1, v57 + 1, 1, v89);
        }

        v43(v14, v5);
        v58 = v89;
        v89[2] = v57 + 1;
        v38 = v86;
        v33 = (*v79)(&v58[v83 + v57 * v86], v85, v5);
        v93 = v58;
        goto LABEL_9;
      }

      v33 = (v43)(v14, v5);
      goto LABEL_14;
    }

    if (v42 != v84)
    {
      if (v42 == v76)
      {
        (*v73)(v12, v5);
        v59 = *v12;
        v60 = *(*v12 + 16);

        sub_219BF4444();
        v61 = sub_219BF3AF4();
        if ((*(*(v61 - 8) + 48))(v36, 1, v61) != 1)
        {
          v82 = v59;
          v66 = sub_218EA208C(v36, &qword_27CC12DD8, MEMORY[0x277D34030]);
          MEMORY[0x28223BE20](v66);
          *(&v71 - 2) = v77;
          *(&v71 - 1) = v60;
          sub_218EA1C64(0);
          sub_219BE3204();

          v67 = sub_219BE2E54();
          type metadata accessor for SportsManagementDetailSection();
          sub_219BE2F64();

          v68 = v71;
          MEMORY[0x21CECC690]();
          if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          (*v39)(v14, v5);

          v38 = v86;
          v36 = v81;
          goto LABEL_9;
        }

        (*v39)(v14, v5);

        sub_218EA208C(v36, &qword_27CC12DD8, MEMORY[0x277D34030]);

LABEL_14:
        v38 = v86;
        goto LABEL_9;
      }

LABEL_8:
      v40 = *v39;
      (*v39)(v14, v5);
      v33 = (v40)(v12, v5);
      goto LABEL_9;
    }

    v82 = *v39;
    v82(v12, v5);
    if ((sub_219BF34E4() & 1) == 0)
    {
      v92(v80, v14, v5);
      v62 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_2191F955C(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      v89 = v62;
      if (v64 >= v63 >> 1)
      {
        v89 = sub_2191F955C(v63 > 1, v64 + 1, 1, v89);
      }

      v82(v14, v5);
      v65 = v89;
      v89[2] = v64 + 1;
      v38 = v86;
      v33 = (*v79)(&v65[v83 + v64 * v86], v80, v5);
      v93 = v65;
      goto LABEL_9;
    }

    result = sub_219BF34A4();
    v45 = result[2];
    v46 = v89;
    v47 = v89[2];
    v48 = v47 + v45;
    if (__OFADD__(v47, v45))
    {
      break;
    }

    v49 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v48 > v46[3] >> 1)
    {
      if (v47 <= v48)
      {
        v50 = v47 + v45;
      }

      else
      {
        v50 = v47;
      }

      result = sub_2191F955C(result, v50, 1, v46);
      v89 = result;
    }

    v36 = v81;
    v12 = v72;
    if (v49[2])
    {
      v51 = v89;
      if ((v89[3] >> 1) - v89[2] < v45)
      {
        goto LABEL_51;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v52 = *(v51 + 2);
        v53 = __OFADD__(v52, v45);
        v54 = v52 + v45;
        if (v53)
        {
          goto LABEL_52;
        }

        *(v51 + 2) = v54;
      }
    }

    else
    {

      v51 = v89;
      if (v45)
      {
        goto LABEL_50;
      }
    }

    v93 = v51;
    v33 = (v82)(v14, v5);
    v38 = v86;
LABEL_9:
    v37 += v38;
    if (!--v35)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_218E9F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218EA1A0C();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(a1, v7, sub_218EA1A0C);
  v11 = *&v7[*(v5 + 56)];
  v12 = *&v7[*(v5 + 72)];
  sub_218EA1D4C(v7, v10, type metadata accessor for SportsDetailModel);
  if (v11 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_4;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v12 + 16))
  {

    sub_218EA2038();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return sub_218EA1CB4(v10, type metadata accessor for SportsDetailModel);
  }

LABEL_4:
  sub_218E9F4CC(v10, v11, v12, a2);

  return sub_218EA1CB4(v10, type metadata accessor for SportsDetailModel);
}

uint64_t sub_218E9F4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v5 = sub_218EA147C(a1, a2, a3, v4);
  v6 = sub_218845E04();
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_39:
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v11 = v5;
    v12 = 0;
    v13 = v43;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v12, v7);
      }

      else
      {
        v14 = *(v7 + 8 * v12 + 32);
      }

      v15 = [*(v14 + 16) identifier];
      v16 = sub_219BF5414();
      v18 = v17;

      v20 = *(v43 + 16);
      v19 = *(v43 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21870B65C((v19 > 1), v20 + 1, 1);
      }

      ++v12;
      *(v43 + 16) = v20 + 1;
      v21 = v43 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v8 != v12);

    v5 = v11;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v7 = sub_218845F78(v13);

  v44 = v9;
  if (v5 >> 62)
  {
    v22 = sub_219BF7214();
    if (v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_16:
      v23 = 0;
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v42 = v5 & 0xC000000000000001;
      v38 = v5;
      v24 = v5 + 32;
      v25 = v7 + 56;
      while (1)
      {
        if (v42)
        {
          v26 = MEMORY[0x21CECE0F0](v23, v38);
          v27 = __OFADD__(v23++, 1);
          if (v27)
          {
LABEL_35:
            __break(1u);
LABEL_36:
            v9 = v44;
            break;
          }
        }

        else
        {
          if (v23 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v26 = *(v24 + 8 * v23);

          v27 = __OFADD__(v23++, 1);
          if (v27)
          {
            goto LABEL_35;
          }
        }

        v28 = [*(v26 + 16) identifier];
        v5 = sub_219BF5414();
        v30 = v29;

        if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v31 = sub_219BF7AE4(), v32 = -1 << *(v7 + 32), v33 = v31 & ~v32, ((*(v25 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v7 + 48) + 16 * v33);
            v36 = *v35 == v5 && v35[1] == v30;
            if (v36 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v25 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          if (v23 == v22)
          {
            goto LABEL_36;
          }
        }

        else
        {
LABEL_17:

          sub_219BF73D4();
          v5 = *(v44 + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v23 == v22)
          {
            goto LABEL_36;
          }
        }
      }
    }
  }

  sub_218EA1B48(v39, a4, type metadata accessor for SportsDetailModel);
  type metadata accessor for SportsManagementDetailSection();
  v37 = sub_219BF5964();
  result = type metadata accessor for SportsManagementDetailPrewarmResult();
  *(a4 + *(result + 20)) = v9;
  *(a4 + *(result + 24)) = v37;
  return result;
}

uint64_t sub_218E9F8D8(uint64_t a1)
{
  v2 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model;
  sub_218EA1B48(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDetailModel);
  sub_218EA1AC8(0, &qword_27CC12DD0, type metadata accessor for SportsDetailModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  sub_218E9E308(a1 + v4);
  sub_218E9E690(a1 + v4);
  v5 = sub_219BE31B4();

  return v5;
}

uint64_t sub_218E9FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218EA1A0C();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(a1, v7, sub_218EA1A0C);
  v11 = *&v7[*(v5 + 56)];
  v12 = *&v7[*(v5 + 72)];
  sub_218EA1D4C(v7, v10, type metadata accessor for SportsDetailModel);
  sub_218E9F4CC(v10, v11, v12, a2);

  return sub_218EA1CB4(v10, type metadata accessor for SportsDetailModel);
}

uint64_t sub_218E9FB8C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_219BE4F54();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager) *(a1 + OBJC:sel_possiblyUnfetchedAppConfiguration IVAR:? :? :? :? TtC7NewsUI233SportsManagementDetailDataManager:?configManager + 24)) + 16)];
  result = [v8 respondsToSelector_];
  if (result)
  {
    v28 = v5;
    v10 = [swift_unknownObjectRetain() editoralRecommendedSportsTopicTagIds];
    if (v10)
    {
      v11 = v10;
      sub_219BF5924();
    }

    v12 = [v8 respondsToSelector_];
    v29 = a2;
    if (v12)
    {
      [v8 sportsManagementRecommendedItemsCount];
    }

    v27 = v7;
    if ([v8 respondsToSelector_])
    {
      [v8 sportsManagementMinChildItemsCount];
    }

    swift_unknownObjectRelease_n();

    v13 = MEMORY[0x277D84F90];
    v14 = sub_219BE4F04();
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    v16 = *(v14 + 16);
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v17;
    *(v15 + 32) = v16;
    sub_219BF6214();
    sub_219BE5314();

    if (v16)
    {
      v26[1] = v2;
      v33 = v13;
      sub_219BF73F4();
      v18 = *(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_tagService);
      v19 = v31 + 16;
      v31 = *(v31 + 16);
      v32 = v18;
      v20 = *(v19 + 64);
      v26[0] = v14;
      v21 = v14 + ((v20 + 32) & ~v20);
      v30 = *(v19 + 56);
      v22 = v27;
      v23 = v28;
      do
      {
        (v31)(v22, v21, v23);
        v24 = sub_219BE4F44();
        swift_getObjectType();
        sub_218E97A64(v24, v32);
        swift_unknownObjectRelease();
        (*(v19 - 8))(v22, v23);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v21 += v30;
        --v16;
      }

      while (v16);

      v25 = v33;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    *v29 = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E9FF7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_219BF34F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *a3;
  v17 = a1;
  v18 = v9;
  sub_218A3A1C4();

  sub_219BE3204();
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v12 = sub_219BE2E54();
  sub_218EA1C64(0);
  sub_219BE2F64();

  v13 = sub_219BE2E54();
  v14 = sub_219BE3054();

  return v14;
}

uint64_t sub_218EA0178(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementDetailSection();
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v18 - v9);
  v11 = *a1;
  *v10 = 0;
  v10[1] = 0;
  v12 = *MEMORY[0x277D34028];
  v13 = sub_219BF3AF4();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  type metadata accessor for SportsManagementDetailSectionDescriptor();
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v5 + 28)) = v11;
  sub_218EA1B48(v10, v8, type metadata accessor for SportsManagementDetailSection);
  sub_218EA1DB4(0);
  swift_allocObject();

  v14 = sub_219BE3014();
  swift_beginAccess();
  if (*(a2 + 16) >> 62 && (result = sub_219BF7214(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_2189507C8(0, 0, v14);
    swift_endAccess();

    swift_beginAccess();
    v18[5] = *(a2 + 16);

    v15 = sub_219BE2E54();
    sub_218EA1AC8(0, &qword_27CC12E08, sub_218EA1DB4, MEMORY[0x277D83940]);
    sub_218EA1E1C();
    v16 = sub_219BE2F34();

    sub_218EA1CB4(v10, type metadata accessor for SportsManagementDetailSection);
    return v16;
  }

  return result;
}

uint64_t sub_218EA0400(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF34F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-v9];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *v10 = v11;
  (*(v5 + 104))(v10, *MEMORY[0x277D33E40], v4);

  v12 = sub_219BF4454();
  v20 = a1;
  v21 = v12;
  sub_218A3A1C4();
  sub_219BE3204();
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(v14 + v13, v8, v4);
  v15 = sub_219BE2E54();
  sub_218EA1C64(0);
  sub_219BE2F64();

  v16 = sub_219BE2E54();
  v17 = sub_219BE3054();

  (*(v5 + 8))(v10, v4);
  return v17;
}

uint64_t sub_218EA0678(uint64_t *a1)
{
  sub_218EA1AC8(0, &qword_27CC12DD8, MEMORY[0x277D34030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for SportsManagementDetailSectionDescriptor();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsManagementDetailSection();
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_219BF4444();
  v12 = sub_219BF3AF4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v4, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v7, v4, v12);
    swift_storeEnumTagMultiPayload();
    sub_218EA1D4C(v7, v10, type metadata accessor for SportsManagementDetailSectionDescriptor);
    *&v10[*(v8 + 20)] = v11;
    sub_218EA1DB4(0);
    swift_allocObject();

    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_218EA08B8(uint64_t a1, uint64_t a2)
{
  v25 = sub_219BF34F4();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_tagService);
  v7 = *(a2 + 16);
  if (v7)
  {
    v9 = *(v4 + 16);
    v8 = v4 + 16;
    v10 = a2 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v23 = *(v8 + 56);
    v24 = v9;
    v11 = MEMORY[0x277D84F90];
    v22[3] = v8;
    do
    {
      v13 = v25;
      v24(v6, v10, v25);
      v14 = sub_219BF34D4();
      v16 = v15;
      (*(v8 - 8))(v6, v13);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = sub_218840D24((v17 > 1), v18 + 1, 1, v11);
        }

        *(v11 + 2) = v18 + 1;
        v12 = &v11[16 * v18];
        *(v12 + 4) = v14;
        *(v12 + 5) = v16;
      }

      v10 += v23;
      --v7;
    }

    while (v7);
  }

  v19 = off_282A4D758;
  type metadata accessor for TagService();
  v20 = v19();

  return v20;
}

uint64_t sub_218EA0ADC(unint64_t *a1, void *a2, uint64_t a3)
{
  v59 = a3;
  v64 = type metadata accessor for SportsModel();
  v62 = *(v64 - 8);
  v5 = MEMORY[0x28223BE20](v64);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v58 - v7;
  v8 = sub_219BF34F4();
  v70 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v58 - v12;
  v13 = *a1;
  if (v13 >> 62)
  {
    goto LABEL_46;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = a2;
  v63 = v11;
  if (v14)
  {
    v15 = 0;
    v68 = (v13 & 0xFFFFFFFFFFFFFF8);
    v69 = (v13 & 0xC000000000000001);
    a2 = MEMORY[0x277D84F98];
    v66 = v14;
    v67 = v13;
    while (1)
    {
      if (v69)
      {
        v11 = MEMORY[0x21CECE0F0](v15, v13);
        v16 = v11;
        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v15 >= v68[2])
        {
          goto LABEL_43;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v17 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v57 = v11;
          v14 = sub_219BF7214();
          v11 = v57;
          goto LABEL_3;
        }
      }

      v71 = v17;
      v18 = [*(v16 + 16) identifier];
      v19 = sub_219BF5414();
      v21 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = a2;
      v13 = a2;
      v24 = sub_21870F700(v19, v21);
      v25 = a2[2];
      v26 = (v23 & 1) == 0;
      v11 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_44;
      }

      v27 = v23;
      if (a2[3] >= v11)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v23)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = &v73;
          sub_219492A6C();
          if (v27)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_219481C7C(v11, isUniquelyReferenced_nonNull_native);
        v13 = v73;
        v28 = sub_21870F700(v19, v21);
        if ((v27 & 1) != (v29 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v24 = v28;
        if (v27)
        {
LABEL_5:

          a2 = v73;
          *(v73[7] + 8 * v24) = v16;

          goto LABEL_6;
        }
      }

      a2 = v73;
      v73[(v24 >> 6) + 8] |= 1 << v24;
      v30 = (a2[6] + 16 * v24);
      *v30 = v19;
      v30[1] = v21;
      *(a2[7] + 8 * v24) = v16;

      v31 = a2[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_45;
      }

      a2[2] = v33;
LABEL_6:
      ++v15;
      v13 = v67;
      if (v71 == v66)
      {
        goto LABEL_25;
      }
    }
  }

  a2 = MEMORY[0x277D84F98];
LABEL_25:
  v34 = v58[2];
  if (v34)
  {
    v35 = *(v70 + 16);
    v36 = v58 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v37 = *(v70 + 72);
    v70 += 16;
    v71 = v37;
    v69 = (v70 - 8);
    v68 = MEMORY[0x277D84F90];
    v38 = v63;
    v66 = v35;
    (v35)(v72, v36, v63);
    while (1)
    {
      v39 = sub_219BF34D4();
      if (!v40)
      {
        goto LABEL_28;
      }

      if (!a2[2])
      {
        break;
      }

      v41 = sub_21870F700(v39, v40);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        goto LABEL_28;
      }

      v44 = *(a2[7] + 8 * v41);
      v45 = v60;
      v46 = v35;
      (v35)(v60, v72, v38);
      v47 = v38;
      v48 = v61;
      (v46)(v61, v45, v47);

      v67 = sub_219BF34A4();
      v49 = *v69;
      (*v69)(v45, v47);
      v49(v72, v47);
      v51 = v64;
      v50 = v65;
      *(v48 + *(v64 + 20)) = v67;
      *(v48 + *(v51 + 24)) = v44;
      sub_218EA1D4C(v48, v50, type metadata accessor for SportsModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_2191F9590(0, v68[2] + 1, 1, v68);
      }

      v53 = v68[2];
      v52 = v68[3];
      v38 = v63;
      v35 = v66;
      if (v53 >= v52 >> 1)
      {
        v68 = sub_2191F9590(v52 > 1, v53 + 1, 1, v68);
      }

      v54 = v68;
      v68[2] = v53 + 1;
      sub_218EA1D4C(v65, v54 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v53, type metadata accessor for SportsModel);
LABEL_29:
      v36 = &v71[v36];
      if (!--v34)
      {

        goto LABEL_41;
      }

      (v35)(v72, v36, v38);
    }

LABEL_28:
    (*v69)(v72, v38);
    goto LABEL_29;
  }

  v68 = MEMORY[0x277D84F90];
LABEL_41:
  v55 = sub_219BF3494();

  v73 = v55;
  sub_218EA1AC8(0, &qword_27CC12E00, sub_218EA1C64, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218EA1184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel();
  v5 = [*(*(a1 + *(v4 + 24)) + 16) displayName];
  sub_219BF5414();

  v6 = sub_219BF5494();
  v8 = v7;

  v9 = [*(*(a2 + *(v4 + 24)) + 16) displayName];
  sub_219BF5414();

  v10 = sub_219BF5494();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_219BF78F4();
  }

  return v14 & 1;
}

uint64_t sub_218EA12E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_219BE5314();

  sub_218EA1AC8(0, a4, a5, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

id sub_218EA147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsManagementDetailSection();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(a1, v14, type metadata accessor for SportsDetailModel);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_218EA1CB4(v14, type metadata accessor for SportsDetailModel);
  if (a1 > 1)
  {
    goto LABEL_13;
  }

  if (!*(a3 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  sub_218EA1B48(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11, type metadata accessor for SportsManagementDetailSection);
  v15 = *(*&v11[*(v8 + 20)] + 16);
  v16 = [*(*__swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager) *(a4 + OBJC:sel_possiblyUnfetchedAppConfiguration IVAR:? :? :? :? TtC7NewsUI233SportsManagementDetailDataManager:?configManager + 24)) + 16)];
  result = [v16 respondsToSelector_];
  if (result)
  {
    v18 = [swift_unknownObjectRetain() editoralRecommendedSportsTopicTagIds];
    if (v18)
    {
      v19 = v18;
      sub_219BF5924();
    }

    if ([v16 respondsToSelector_])
    {
      [v16 sportsManagementRecommendedItemsCount];
    }

    if ([v16 respondsToSelector_])
    {
      v20 = [v16 sportsManagementMinChildItemsCount];
    }

    else
    {
      v20 = 15;
    }

    swift_unknownObjectRelease_n();

    sub_218EA1CB4(v11, type metadata accessor for SportsManagementDetailSection);
    if (v15 < v20)
    {
      return MEMORY[0x277D84F90];
    }

LABEL_13:

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_218EA1758@<X0>(uint64_t *a1@<X8>)
{
  sub_21977633C();
  v2 = sub_219BF5494();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_218EA17A4()
{
  sub_218774F78(v0 + 16);
  sub_218EA1CB4(v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model, type metadata accessor for SportsDetailModel);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_recommendationService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsOnboardingManager);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsManagementDetailDataManager()
{
  result = qword_27CC12D98;
  if (!qword_27CC12D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EA18C8()
{
  result = type metadata accessor for SportsDetailModel();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_218EA199C()
{
  if (!qword_27CC12DB0)
  {
    sub_219BF29D4();
    type metadata accessor for TagModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12DB0);
    }
  }
}

void sub_218EA1A0C()
{
  if (!qword_27CC12DB8)
  {
    type metadata accessor for SportsDetailModel();
    sub_218A3A1C4();
    sub_218EA1A94(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC12DB8);
    }
  }
}

void sub_218EA1AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EA1B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA1BB0(uint64_t a1, uint64_t a2)
{
  sub_218EA1AC8(0, &qword_27CC12DE0, type metadata accessor for SportsModel, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EA1CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EA1D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218EA1E1C()
{
  result = qword_27CC12E10;
  if (!qword_27CC12E10)
  {
    sub_218EA1AC8(255, &qword_27CC12E08, sub_218EA1DB4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E10);
  }

  return result;
}

uint64_t objectdestroy_12Tm_2()
{
  v1 = sub_219BF34F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_218EA2038()
{
  result = qword_27CC12E20;
  if (!qword_27CC12E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E20);
  }

  return result;
}

uint64_t sub_218EA208C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218EA1AC8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218EA2110()
{
  result = qword_27CC12E30;
  if (!qword_27CC12E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E30);
  }

  return result;
}

uint64_t sub_218EA2194()
{
  v0 = sub_219BE63A4();
  __swift_allocate_value_buffer(v0, qword_280EE5AA0);
  __swift_project_value_buffer(v0, qword_280EE5AA0);
  return sub_219BE6374();
}

uint64_t sub_218EA222C()
{
  v0 = sub_219BE63A4();
  __swift_allocate_value_buffer(v0, qword_27CC12E40);
  __swift_project_value_buffer(v0, qword_27CC12E40);
  return sub_219BE6374();
}

uint64_t sub_218EA22DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE63A4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_218EA2374(char *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_219BEF754();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[2];
  v11 = *(v10 + 16);
  if (v11)
  {
    v19[1] = v5;
    v19[3] = v2;
    v12 = *(v7 + 16);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12(v9, v10 + v13, v6);
    if (v11 == 1)
    {
      (*(v7 + 32))(a1, v9, v6);
      return 0;
    }

    else
    {
      v12(a1, v9, v6);
      sub_218B6708C(v10, v10 + v13, 1, (2 * v11) | 1);
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      result = swift_allocObject();
      *(result + 16) = v18;
    }
  }

  else
  {
    v15 = sub_219BEEDD4();
    sub_218EA25D0();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D32390], v15);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_218EA25D0()
{
  result = qword_280E917E0;
  if (!qword_280E917E0)
  {
    sub_219BEEDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E917E0);
  }

  return result;
}

uint64_t sub_218EA2628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v97 = a3;
  v109 = type metadata accessor for AudioPlaylistFeedModel();
  v84 = *(v109 - 8);
  v4 = MEMORY[0x28223BE20](v109);
  v105 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v104 = v83 - v6;
  sub_218B7E48C();
  v107 = *(v7 - 8);
  v108 = v7;
  MEMORY[0x28223BE20](v7);
  v85 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA3928();
  MEMORY[0x28223BE20](v9 - 8);
  v96 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BF2094();
  v100 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v101 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BF2DA4();
  v12 = *(v106 - 1);
  MEMORY[0x28223BE20](v106);
  v14 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BF1904();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v16 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  v17 = MEMORY[0x28223BE20](v95);
  v99 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v83 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v83 - v22;
  v24 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v25 = v24 - 8;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v30 = v83 - v29;
  v31 = type metadata accessor for AudioPlaylistFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA3A18(a1, v33, type metadata accessor for AudioPlaylistFeedGroup);
  sub_218A6DD44(v33, v30);
  sub_218EA3A18(v30, v23, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  v88 = *&v30[*(v25 + 32)];
  v94 = v30;
  sub_219BED874();
  v98 = v23;
  sub_218EA3A18(v23, v21, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218A6DD44(v21, v28);
  v34 = v28[1];
  v86 = *v28;
  v87 = v34;

  sub_218EA3A80(v28, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  v89 = v16;
  v35 = sub_219BF18F4();
  v36 = *(v35 + 16);
  if (v36)
  {
    v38 = *(v12 + 16);
    v37 = v12 + 16;
    v103 = v38;
    v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v83[1] = v35;
    v40 = v35 + v39;
    v102 = *(v37 + 56);
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      v43 = v106;
      (v103)(v14, v40, v106);
      v44 = sub_219BF2D94();
      result = (*(v37 - 8))(v14, v43);
      v45 = *(v44 + 16);
      v46 = v41[2];
      v47 = v46 + v45;
      if (__OFADD__(v46, v45))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v47 <= v41[3] >> 1)
      {
        if (*(v44 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v46 <= v47)
        {
          v48 = v46 + v45;
        }

        else
        {
          v48 = v46;
        }

        result = sub_2191F7160(result, v48, 1, v41);
        v41 = result;
        if (*(v44 + 16))
        {
LABEL_14:
          if ((v41[3] >> 1) - v41[2] < v45)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v45)
          {
            v49 = v41[2];
            v50 = __OFADD__(v49, v45);
            v51 = v49 + v45;
            if (v50)
            {
              goto LABEL_52;
            }

            v41[2] = v51;
          }

          goto LABEL_4;
        }
      }

      if (v45)
      {
        goto LABEL_47;
      }

LABEL_4:
      v40 += v102;
      if (!--v36)
      {

        v52 = v41[2];
        if (v52)
        {
          goto LABEL_19;
        }

        goto LABEL_37;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
  v52 = *(MEMORY[0x277D84F90] + 16);
  if (v52)
  {
LABEL_19:
    v106 = *(v100 + 16);
    v53 = v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v103 = *(v100 + 72);
    v54 = (v100 + 8);
    v55 = MEMORY[0x277D84F90];
    while (1)
    {
      v56 = v101;
      v57 = v110;
      (v106)(v101, v53, v110);
      v58 = sub_219BF2084();
      result = (*v54)(v56, v57);
      v59 = *(v58 + 16);
      v60 = v55[2];
      v61 = v60 + v59;
      if (__OFADD__(v60, v59))
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v61 <= v55[3] >> 1)
      {
        if (*(v58 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v60 <= v61)
        {
          v63 = v60 + v59;
        }

        else
        {
          v63 = v60;
        }

        v55 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v63, 1, v55);
        if (*(v58 + 16))
        {
LABEL_31:
          v64 = (v55[3] >> 1) - v55[2];
          result = sub_219BF3C84();
          if (v64 < v59)
          {
            goto LABEL_51;
          }

          swift_arrayInitWithCopy();

          if (v59)
          {
            v65 = v55[2];
            v50 = __OFADD__(v65, v59);
            v66 = v65 + v59;
            if (v50)
            {
              goto LABEL_53;
            }

            v55[2] = v66;
          }

          goto LABEL_21;
        }
      }

      if (v59)
      {
        goto LABEL_49;
      }

LABEL_21:
      v53 = &v103[v53];
      if (!--v52)
      {

        goto LABEL_38;
      }
    }
  }

LABEL_37:

  v55 = MEMORY[0x277D84F90];
LABEL_38:
  MEMORY[0x28223BE20](v67);
  v69 = v92;
  v68 = v93;
  v83[-6] = v88;
  v83[-5] = v69;
  v83[-4] = v68;
  v70 = v87;
  v83[-3] = v86;
  v83[-2] = v70;
  v71 = sub_218DDE454(sub_218EA39F4, &v83[-8], v55);

  (*(v90 + 8))(v89, v91);
  sub_218EA3A18(v98, v99, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  v72 = v71[2];
  if (v72)
  {
    v111 = MEMORY[0x277D84F90];
    sub_218C34AD8(0, v72, 0);
    v73 = v111;
    v74 = *(v84 + 80);
    v110 = v71;
    v75 = v71 + ((v74 + 32) & ~v74);
    v76 = *(v84 + 72);
    v77 = v85;
    do
    {
      v78 = v104;
      sub_218EA3A18(v75, v104, type metadata accessor for AudioPlaylistFeedModel);
      sub_218EA3A18(v78, v105, type metadata accessor for AudioPlaylistFeedModel);
      sub_218EA3B94(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
      sub_219BE5FB4();
      sub_218EA3A80(v78, type metadata accessor for AudioPlaylistFeedModel);
      v111 = v73;
      v80 = *(v73 + 16);
      v79 = *(v73 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_218C34AD8(v79 > 1, v80 + 1, 1);
        v77 = v85;
        v73 = v111;
      }

      *(v73 + 16) = v80 + 1;
      (*(v107 + 32))(v73 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v80, v77, v108);
      v75 += v76;
      --v72;
    }

    while (v72);
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  v81 = sub_218EA3B94(&qword_27CC12E60, sub_218B7E48C);
  v82 = sub_218EA3B94(&qword_27CC12E68, sub_218B7E48C);
  MEMORY[0x21CEB9170](v73, v108, v81, v82);
  sub_218EA3B94(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218EA3B94(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
  sub_219BE6924();
  sub_218EA3A80(v98, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  return sub_218EA3A80(v94, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
}

uint64_t sub_218EA3240@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v35 = a2;
  v9 = sub_219BF2164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D34128] || v17 == *MEMORY[0x277D34108] || v17 == *MEMORY[0x277D34100] || v17 == *MEMORY[0x277D34130] || v17 == *MEMORY[0x277D34110])
  {
    result = (*(v14 + 8))(v16, v13);
    *a7 = MEMORY[0x277D84F90];
  }

  else if (v17 == *MEMORY[0x277D340F0])
  {
    (*(v14 + 96))(v16, v13);
    v23 = (*(v10 + 32))(v12, v16, v9);
    MEMORY[0x28223BE20](v23);
    v24 = v30;
    *(&v29 - 6) = v29;
    *(&v29 - 5) = v24;
    v25 = v32;
    *(&v29 - 4) = v31;
    *(&v29 - 3) = v25;
    *(&v29 - 2) = v12;
    *a7 = sub_218948040(sub_218EA3AE0, (&v29 - 8), v35);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2186E8080(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v27 = v33;
    v28 = v34;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v26);

    *a7 = MEMORY[0x277D84F90];
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_218EA35F0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v25 = a6;
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E8080(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = v8;
    swift_getObjectType();
    v8 = v21;
    sub_219BEEFB4();
    swift_unknownObjectRelease();
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  v16 = sub_21983F764(v15, v14);
  sub_218EA3B08(v14);
  v26 = v16;
  (*(v9 + 16))(v11, v22, v8);
  sub_21871D24C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09EC0;
  *(v17 + 32) = v23;
  *(v17 + 40) = v24;

  *(v17 + 48) = sub_219BF2154();
  *(v17 + 56) = v18;
  MEMORY[0x21CEC80A0](v17);

  type metadata accessor for HeadlineModel(0);
  sub_218EA3B94(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_218EA3B94(&qword_280EDE360, type metadata accessor for HeadlineModel);
  return sub_219BF0844();
}

void sub_218EA3928()
{
  if (!qword_27CC12E58)
  {
    sub_218B7E48C();
    sub_218EA3B94(&qword_27CC12E60, sub_218B7E48C);
    sub_218EA3B94(&qword_27CC12E68, sub_218B7E48C);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12E58);
    }
  }
}

uint64_t sub_218EA3A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA3A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EA3B08(uint64_t a1)
{
  sub_2186E8080(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EA3B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MyMagazineSharingActivitySource.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218EA3C68()
{
  result = qword_27CC12E70;
  if (!qword_27CC12E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MyMagazinesSharingActivity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MyMagazinesSharingActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_218EA3E14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_218EA3E28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_218EA3E58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_218EA3EB4(void *a1, unsigned __int8 a2)
{
  v5 = a2;
  v11 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  v6 = _UISolariumFeatureFlagEnabled();
  v7 = &selRef_configureWithTransparentBackground;
  if (!v6)
  {
    v7 = &selRef_configureWithOpaqueBackground;
  }

  [v11 *v7];
  if (v5 != 2)
  {
    *(v2 + 56) = a2 & 1;
    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(v2 + 56))
  {
LABEL_7:
    v8 = objc_opt_self();
    v9 = v11;
    v10 = [v8 clearColor];
    [v9 setShadowColor_];
  }

LABEL_8:
  [a1 setStandardAppearance_];
  [a1 setScrollEdgeAppearance_];
}

uint64_t sub_218EA3FE0(void *a1)
{
  sub_218EA4A64(0, &qword_27CC12EA0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EA4950();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218EA4AC8(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for ChannelPickerTodayFeedGroup();
    v9[14] = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218EA41AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_219BED8D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA4A64(0, &qword_27CC12E90, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EA4950();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  sub_218EA4AC8(&unk_280E92630, MEMORY[0x277D31C50]);
  v15 = v27;
  sub_219BF7734();
  (*(v14 + 32))(v23, v6, v15);
  v29 = 1;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v13 + 8))(v9, v28);
  v20 = v23;
  v19 = v24;
  v21 = &v23[*(v10 + 20)];
  *v21 = v16;
  v21[1] = v18;
  sub_218EA49A4(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218EA4A08(v20);
}

uint64_t sub_218EA44EC(uint64_t a1)
{
  v2 = sub_218EA4950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EA4528(uint64_t a1)
{
  v2 = sub_218EA4950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EA45BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = *(a1 + v3);
  v6 = (a2 + v3);
  v7 = v5 == *v6 && *(v4 + 8) == v6[1];
  if (v7 || (v8 = 0, (sub_219BF78F4() & 1) != 0))
  {
    v9 = sub_219BED784();
    v11 = v10;
    if (v9 == sub_219BED784() && v11 == v12)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_219BF78F4();
    }
  }

  return v8 & 1;
}

uint64_t sub_218EA4750(uint64_t a1)
{
  result = sub_218EA4AC8(&qword_27CC0B978, type metadata accessor for ChannelPickerTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EA47A8(uint64_t a1)
{
  v2 = sub_218EA4AC8(&qword_27CC12E88, type metadata accessor for ChannelPickerTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EA4814(uint64_t a1)
{
  sub_219BF7314();

  v4 = *(v1 + *(a1 + 20));

  MEMORY[0x21CECC330](0x6C656E6E61684320, 0xEE0072656B636950);
  return v4;
}

uint64_t sub_218EA48A4(void *a1)
{
  a1[1] = sub_218EA4AC8(&qword_27CC12E88, type metadata accessor for ChannelPickerTodayFeedGroup);
  a1[2] = sub_218EA4AC8(&qword_27CC0B9C0, type metadata accessor for ChannelPickerTodayFeedGroup);
  result = sub_218EA4AC8(&qword_27CC0BA00, type metadata accessor for ChannelPickerTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_218EA4950()
{
  result = qword_27CC12E98;
  if (!qword_27CC12E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E98);
  }

  return result;
}

uint64_t sub_218EA49A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerTodayFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EA4A08(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218EA4A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EA4950();
    v7 = a3(a1, &type metadata for ChannelPickerTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EA4AC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218EA4B24()
{
  result = qword_27CC12EA8;
  if (!qword_27CC12EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12EA8);
  }

  return result;
}

unint64_t sub_218EA4B7C()
{
  result = qword_27CC12EB0;
  if (!qword_27CC12EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12EB0);
  }

  return result;
}

unint64_t sub_218EA4BD4()
{
  result = qword_27CC12EB8[0];
  if (!qword_27CC12EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC12EB8);
  }

  return result;
}

uint64_t sub_218EA4C28()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_218EA4CF4()
{
  v1 = *v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_219BF5054();
  sub_218EA4E64();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
}

uint64_t sub_218EA4E64()
{
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v0 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v2 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2F94();

  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  sub_219BE2FE4();
}

uint64_t sub_218EA50B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218C8AAD8();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA8D58();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a3;
    v26 = v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = a2;
        v17 = a1;
        v18 = a4;
        v19 = off_282A609C0[0];
        type metadata accessor for SharedWithYouFeedViewController();
        v19();
        a4 = v18;
        a1 = v17;
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_218EA9390(a1, v15, sub_218EA8D58);
    v20 = sub_219BF1584();
    if ((*(*(v20 - 8) + 48))(v15, 1, v20) != 1)
    {

      return sub_218EA9308(v15, sub_218EA8D58);
    }

    sub_219BE6EC4();
    v30 = v27;
    sub_218987294();
    sub_218EA891C(&unk_27CC12F70, sub_218987294);
    sub_219BE7B94();

    sub_218EA891C(&qword_27CC10500, sub_218C8AAD8);
    sub_219BF5DF4();
    sub_219BF5E84();
    (*(v26 + 8))(v12, v9);
    if (v29 == v28)
    {
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
      }

      sub_218EA4E64();
    }

    else
    {
      v21 = v25;
      v30 = (*(a4 + 64))(v25, a4);
      v22 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v23 = swift_allocObject();
      v23[2] = v21;
      v23[3] = a4;
      v23[4] = v22;
      sub_218EA8C20(0);
      sub_218EA891C(&unk_27CC12F90, sub_218EA8C20);

      sub_219BE6EF4();
    }
  }

  return result;
}

uint64_t sub_218EA5560(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D6DFA0])
    {
      (*(v3 + 8))(v5, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          *(swift_allocObject() + 16) = Strong;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_218EA5750()
{
  v1 = *v0;
  sub_219BE6EC4();
  v2 = sub_2189828D0();

  if ((v2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 80);
  *(v5 + 24) = *(v1 + 88);
  *(v5 + 32) = v4;
  *(v5 + 40) = HIBYTE(v2) & 1;

  sub_219BE6F24();
}

uint64_t sub_218EA58E8(uint64_t a1, uint64_t a2, char a3)
{
  sub_218C8AAD8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {

      sub_219BE6EC4();
      v10[3] = v10[4];
      sub_218987294();
      sub_218EA891C(&unk_27CC12F70, sub_218987294);
      sub_219BE7B94();

      sub_218EA891C(&qword_27CC10500, sub_218C8AAD8);
      sub_219BF5DF4();
      sub_219BF5E84();
      (*(v6 + 8))(v8, v5);
      type metadata accessor for SharedWithYouFeedInteractor();
      sub_2197DFC9C();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218EA5B2C(void *a1)
{
  v58 = *v1;
  v54 = type metadata accessor for SharedWithYouFeedExpandRequest();
  MEMORY[0x28223BE20](v54);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v62);
  v63 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  v55 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = v7;
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v50 - v8;
  sub_218EA88B8(0, &unk_27CC12F60, sub_218C40500, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  sub_218C40500();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8AAD8();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  sub_219BE6EC4();
  v66 = *&v65[0];
  sub_218987294();
  sub_218EA891C(&unk_27CC12F70, sub_218987294);
  sub_219BE7B94();
  v21 = v17;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1D74();
  sub_219BEB1C4();

  v22 = v14;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_218EAA044(v11, &unk_27CC12F60, sub_218C40500);
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    MEMORY[0x21CEC0B20](0, v23, v24);
    return (*(v18 + 8))(v20, v21);
  }

  else
  {
    v51 = a1;
    v52 = v18;
    v53 = v20;
    v26 = v64;
    v27 = v13;
    (*(v14 + 32))(v64, v11, v13);
    v28 = v63;
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_218EA9308(v28, type metadata accessor for SharedWithYouFeedModel);
      v29 = v51[3];
      v30 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v29);
      MEMORY[0x21CEC0B20](0, v29, v30);
      (*(v14 + 8))(v26, v27);
      return (*(v52 + 8))(v53, v21);
    }

    else
    {
      v62 = v27;
      v32 = *v28;
      v31 = *(v28 + 1);
      sub_218EA89D8();
      v34 = *(v33 + 48);
      v50 = type metadata accessor for SharedWithYouFeedGapLocation;
      v35 = v28 + v34;
      v36 = v60;
      sub_218EA93F8(v35, v60, type metadata accessor for SharedWithYouFeedGapLocation);
      v37 = *(v54 + 20);
      v63 = type metadata accessor for SharedWithYouFeedGapLocation;
      v38 = v61;
      v39 = sub_218EA9390(v36, v61 + v37, type metadata accessor for SharedWithYouFeedGapLocation);
      *v38 = v32;
      *(v38 + 8) = v31;
      MEMORY[0x28223BE20](v39);
      *(&v50 - 2) = v59;
      *(&v50 - 1) = v38;
      sub_219BE3204();
      sub_2187D9028();
      v40 = sub_219BF66A4();
      sub_219BE95D4();
      v41 = v58;
      sub_219BE2F84();

      v42 = sub_219BF66A4();
      v43 = v51;
      sub_218718690(v51, v65);
      v44 = swift_allocObject();
      v54 = v21;
      sub_2186CB1F0(v65, v44 + 16);
      sub_219BE2F94();

      v45 = sub_219BF66A4();
      sub_218718690(v43, v65);
      v46 = v60;
      v47 = v57;
      sub_218EA9390(v60, v57, v63);
      v48 = (*(v55 + 80) + 72) & ~*(v55 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = *(v41 + 80);
      *(v49 + 24) = *(v41 + 88);
      sub_2186CB1F0(v65, v49 + 32);
      sub_218EA93F8(v47, v49 + v48, v50);
      sub_219BE2FE4();

      sub_218EA9308(v46, type metadata accessor for SharedWithYouFeedGapLocation);
      (*(v22 + 8))(v64, v62);
      (*(v52 + 8))(v53, v54);
      return sub_218EA9308(v61, type metadata accessor for SharedWithYouFeedExpandRequest);
    }
  }
}

uint64_t sub_218EA6334(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 48))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_218EA643C(uint64_t a1, uint64_t *a2, void *a3)
{
  v11[2] = a1;
  v4 = *a2;
  sub_218C8AAD8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_219BE6EC4();
    v11[5] = v11[7];
    sub_218987294();
    v11[1] = v4;
    sub_218EA891C(&unk_27CC12F70, sub_218987294);
    sub_219BE7B94();

    sub_218EA891C(&qword_27CC10500, sub_218C8AAD8);
    sub_219BF5DF4();
    sub_219BF5E84();
    (*(v7 + 8))(v9, v6);
    type metadata accessor for SharedWithYouFeedInteractor();
    sub_2197DFC9C();
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_219BE9D74();
}

uint64_t sub_218EA6698(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = type metadata accessor for SharedWithYouFeedFailedData();
  MEMORY[0x28223BE20](v8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    return MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    v27 = a4;
    v28 = v7;
    if (qword_280E8D890 != -1)
    {
      swift_once();
    }

    v26 = qword_280F61760;
    v25[1] = sub_219BF61F4();
    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0);
    sub_219BF7484();
    v15 = v29[0];
    v16 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v17 = sub_2186FC3BC();
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    v30 = a1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v18 = v29[0];
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    *(v14 + 72) = v18;
    sub_219BE5314();

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v19 = sub_219BE1D74();
    v21 = v20;
    sub_218EA9390(v27, v10 + *(v8 + 20), type metadata accessor for SharedWithYouFeedGapLocation);
    *v10 = v19;
    v10[1] = v21;
    v22 = (*(*(v28 + 88) + 72))(v10, *(v28 + 80));
    sub_218EA9308(v10, type metadata accessor for SharedWithYouFeedFailedData);
    v30 = v22;
    sub_218718690(a3, v29);
    v23 = swift_allocObject();
    sub_2186CB1F0(v29, v23 + 16);
    *(v23 + 56) = a1;
    v24 = a1;
    sub_218EA8C20(0);
    sub_218EA891C(&unk_27CC12F90, sub_218EA8C20);
    sub_219BE6EF4();
  }
}

uint64_t sub_218EA6A44(uint64_t a1, char a2, uint64_t a3)
{
  v20 = a3;
  sub_218EA88B8(0, &qword_27CC12F58, type metadata accessor for SharedWithYouFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SharedWithYouFeedRouteModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v16 = MEMORY[0x277D2FF08];
  }

  (*(v13 + 104))(v15, *v16, v12);
  sub_218EA6D60(a1, v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return sub_218EAA044(v7, &qword_27CC12F58, type metadata accessor for SharedWithYouFeedRouteModel);
  }

  else
  {
    sub_218EA93F8(v7, v11, type metadata accessor for SharedWithYouFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_21900D6B4(v11, v20);
      sub_218EA9308(v11, type metadata accessor for SharedWithYouFeedRouteModel);
      (*(v13 + 8))(v15, v12);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_218EA9308(v11, type metadata accessor for SharedWithYouFeedRouteModel);
      return (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_218EA6D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a2;
  v59 = a3;
  v54 = *v4;
  v6 = sub_219BDE744();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0634();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218EA88B8(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v45 - v12;
  sub_218EA88B8(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v45 - v14;
  sub_218C40500();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDE7A4();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v47 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v45 = v24;
      v37 = *(v24 + 32);
      v38 = v23;
      v37(v26, v29, v23);
      (*(v17 + 16))(v19, a1, v16);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      v39 = sub_219BDE4D4();
      (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      v40 = sub_219BDEA34();
      (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
      (*(v51 + 104))(v53, *MEMORY[0x277D32E60], v52);
      sub_218EA891C(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
      v41 = v47;
      sub_219BDE794();
      swift_getWitnessTable();
      v42 = v55;
      sub_219BDEB64();
      sub_219BDE734();
      sub_219BDEC64();

      v36 = v59;
      sub_219BDE724();
      (*(v57 + 8))(v42, v58);
      (*(v49 + 8))(v41, v50);
      (*(v45 + 8))(v26, v38);
      v35 = 0;
      goto LABEL_7;
    }

    sub_218EA8964();
    v32 = *(v31 + 48);
    v33 = sub_219BF1584();
    (*(*(v33 - 8) + 8))(&v29[v32], v33);
  }

  else
  {

    sub_218EA89D8();
    v29 += *(v34 + 48);
  }

  sub_218EA9308(v29, type metadata accessor for SharedWithYouFeedGapLocation);
  v35 = 1;
  v36 = v59;
LABEL_7:
  v43 = type metadata accessor for SharedWithYouFeedRouteModel();
  return (*(*(v43 - 8) + 56))(v36, v35, 1, v43);
}

uint64_t sub_218EA74A0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  (*(v5 + 40))(*a1, v2, v4, v6, v5);
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20);
  sub_219BE6E84();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;

  v8 = sub_219BE2E54();
  sub_219BE95D4();
  v9 = sub_219BE2F74();

  return v9;
}

uint64_t sub_218EA7648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SharedWithYouFeedServiceConfig();
  sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
  if ((sub_219BEF394() & 1) != 0 && (v4 = *(sub_219BEF3E4() + 16), , !v4))
  {
    type metadata accessor for SharedWithYouFeedInteractor.Errors();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v5 = sub_219BE95D4();
    return (*(*(v5 - 8) + 16))(a2, a1, v5);
  }
}

uint64_t sub_218EA779C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v2 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v2;
  *(v1 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218EA78FC(void *a1)
{
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v4;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v2 + 96) = MEMORY[0x277D837D0];
  *(v2 + 104) = sub_2186FC3BC();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xE000000000000000;
  sub_219BE5314();

  return sub_218EA7A68(a1);
}

uint64_t sub_218EA7A68(void *a1)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  sub_218EA8D58();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = a1;
  v12 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  type metadata accessor for SharedWithYouFeedInteractor.Errors();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_219BF1B74();
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (qword_27CC089B0 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v2, qword_27CCD8F88);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          (*(v3 + 16))(v8, v14, v2);
          v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          (*(v3 + 32))(v18 + v17, v8, v2);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = *(v3 + 32);
      v19(v6, v11, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          (*(v3 + 16))(v8, v6, v2);
          v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v21;
          v19((v23 + v22), v8, v2);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t *sub_218EA7E54()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218EA7F84()
{
  sub_218EA7E54();

  return swift_deallocClassInstance();
}

uint64_t sub_218EA8008(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  sub_219BDEC34();
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  (*(v6 + 56))(a1, v7, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = a3;
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20);

  sub_219BE6EF4();
}

uint64_t sub_218EA81BC(uint64_t a1)
{
  v2 = sub_219BE85F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    v7 = (*(v3 + 88))(v5, v2);
    v8 = *MEMORY[0x277D6DF98];
    (*(v3 + 8))(v5, v2);
    if (v7 == v8)
    {
      sub_218EA4E64();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SharedWithYouFeedInteractor();

      sub_2197DFC9C();
      swift_unknownObjectRelease();
    }

    sub_219BDEC84();
  }

  return result;
}

uint64_t sub_218EA83BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  refreshed = type metadata accessor for SharedWithYouFeedRefreshRequest();
  v8 = *(refreshed - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v10 = *(a1 + *(*a1 + 120));
  v11 = CACurrentMediaTime();
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v12 = sub_219BE5314();
  MEMORY[0x28223BE20](v12);
  *(&v18 - 2) = v10;
  *(&v18 - 1) = a2;
  sub_218EA88B8(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218EA9390(a2, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedWithYouFeedRefreshRequest);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  sub_218EA93F8(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for SharedWithYouFeedRefreshRequest);
  v15 = sub_219BE2E54();
  type metadata accessor for SharedWithYouFeedRefreshResult();
  v16 = sub_219BE2F64();

  return v16;
}

uint64_t sub_218EA8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  (*(v5 + 56))(a1, v6, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = a4;
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20);

  sub_219BE6EF4();
}

uint64_t sub_218EA87CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SharedWithYouFeedInteractor();

      sub_2197DFC9C();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218EA88B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EA891C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218EA8964()
{
  if (!qword_27CC12F48)
  {
    type metadata accessor for SharedWithYouFeedGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12F48);
    }
  }
}

void sub_218EA89D8()
{
  if (!qword_27CC12F50)
  {
    type metadata accessor for SharedWithYouFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12F50);
    }
  }
}

void sub_218EA8ABC()
{
  if (!qword_27CC12F80)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig();
    sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
    v0 = sub_219BF0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12F80);
    }
  }
}

uint64_t sub_218EA8B50(void *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for SharedWithYouFeedGapLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_218EA6698(a1, a2, (v2 + 32), v6);
}

uint64_t type metadata accessor for SharedWithYouFeedFailedData()
{
  result = qword_27CC13030;
  if (!qword_27CC13030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EA8C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor();
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_218EA891C(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    v8[3] = sub_218EA891C(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EA8D58()
{
  if (!qword_27CC12FA0[0])
  {
    sub_2186F175C();
    v0 = sub_219BF1B54();
    if (!v1)
    {
      atomic_store(v0, qword_27CC12FA0);
    }
  }
}

uint64_t sub_218EA8E60()
{
  sub_219BF1584();

  return sub_219147D6C();
}

uint64_t sub_218EA8EE8(uint64_t a1)
{
  v15[1] = *v1;
  refreshed = type metadata accessor for SharedWithYouFeedRefreshRequest();
  MEMORY[0x28223BE20](refreshed);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8AAD8();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v15[2] = v15[3];
  sub_218987294();
  sub_218EA891C(&unk_27CC12F70, sub_218987294);
  sub_219BE7B94();

  v11 = sub_219462998();
  (*(v8 + 8))(v10, v7);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig();
    sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);

    v13 = sub_219BEE7A4();
    *v5 = a1;
    MEMORY[0x28223BE20](v13);
    v15[-2] = v1;
    v15[-1] = v5;
    type metadata accessor for SharedWithYouFeedRefreshResult();
    sub_219BE3204();
    sub_2187D9028();
    v14 = sub_219BF66A4();
    *(swift_allocObject() + 16) = a1;

    sub_219BE2F94();
    sub_21885AB78(v11);

    return sub_218EA9308(v5, type metadata accessor for SharedWithYouFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D890 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    return sub_219BE5314();
  }
}

uint64_t sub_218EA9308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EA9390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA93F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA9478(uint64_t a1)
{
  v16[1] = *v1;
  refreshed = type metadata accessor for SharedWithYouFeedRefreshRequest();
  MEMORY[0x28223BE20](refreshed);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8AAD8();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v16[2] = v16[3];
  sub_218987294();
  sub_218EA891C(&unk_27CC12F70, sub_218987294);
  sub_219BE7B94();

  v11 = sub_219462998();
  (*(v8 + 8))(v10, v7);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig();
    sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);

    v13 = sub_219BEE7A4();
    *v5 = a1;
    MEMORY[0x28223BE20](v13);
    v16[-2] = v1;
    v16[-1] = v5;
    type metadata accessor for SharedWithYouFeedRefreshResult();
    sub_219BE3204();
    sub_2187D9028();
    v14 = sub_219BF66A4();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = a1;

    sub_219BE2F94();
    sub_21885AB78(v11);

    return sub_218EA9308(v5, type metadata accessor for SharedWithYouFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D890 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    return sub_219BE5314();
  }
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_60Tm()
{
  v1 = (type metadata accessor for SharedWithYouFeedRefreshRequest() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

void sub_218EA9A44(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_218EA9B64(uint64_t a1, uint64_t a2, char a3)
{
  v36 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_218EA88B8(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_219BDC104();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA88B8(0, &unk_27CC12F60, sub_218C40500, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  sub_218C40500();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8AAD8();
  v20 = v19;
  result = MEMORY[0x28223BE20](v19);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v32 = v9;
    v33 = v22;
    v31 = v3;
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      (*(v33 + 8))(v24, v20);
      v25 = &unk_27CC12F60;
      v26 = sub_218C40500;
      v27 = v13;
      return sub_218EAA044(v27, v25, v26);
    }

    (*(v16 + 32))(v18, v13, v15);
    sub_219BEB2F4();
    v28 = v35;
    v29 = v32;
    if ((*(v35 + 48))(v8, 1, v32) == 1)
    {
      (*(v16 + 8))(v18, v15);
      (*(v33 + 8))(v24, v20);
      v25 = &unk_280EE9BB0;
      v26 = MEMORY[0x277CC9AF8];
      v27 = v8;
      return sub_218EAA044(v27, v25, v26);
    }

    v30 = v34;
    (*(v28 + 32))(v34, v8, v29);
    if (sub_219BDEC24())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_218EA9A44(v30);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v28 + 8))(v30, v32);
    }

    else
    {
      (*(v28 + 8))(v30, v29);
    }

    (*(v16 + 8))(v18, v15);
    return (*(v33 + 8))(v24, v20);
  }

  return result;
}

uint64_t sub_218EAA044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218EA88B8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218EAA0DC()
{
  result = type metadata accessor for SharedWithYouFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_218EAA1B8()
{
  result = qword_280E8E488;
  if (!qword_280E8E488)
  {
    sub_218805E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E488);
  }

  return result;
}

void sub_218EAA230()
{
  swift_getWitnessTable();

  JUMPOUT(0x21CEC1E40);
}

void sub_218EAA284(char a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong presentedViewController];
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (a2)
        {
          v10[4] = a2;
          v10[5] = a3;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 1107296256;
          v10[2] = sub_218793E0C;
          v10[3] = &block_descriptor_67;
          a2 = _Block_copy(v10);
        }

        [v7 dismissViewControllerAnimated:a1 & 1 completion:a2];
        _Block_release(a2);

        return;
      }
    }

    else
    {
      v9 = v7;
    }
  }

  if (a2)
  {
    (a2)();
  }
}

uint64_t sub_218EAA3C4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218EAA3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = MEMORY[0x277D84F90];
  v21 = a2;
  v5 = *(v2 + 16);
  if (*(a1 + 16) <= *(v5 + 16) >> 3)
  {
    goto LABEL_5;
  }

  v6 = sub_218EB4048(a1, v5);
  v5 = *(v6 + 16);
  if (v5)
  {
    while (1)
    {
      v7 = sub_21947D1C0(v5, 0);
      v8 = sub_2194ABD64(&v19, v7 + 4, v5, v6);
      sub_21892DE98();
      if (v8 == v5)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v19 = v5;

      sub_218EB3B08(a1);
      v6 = v19;
      v5 = *(v19 + 16);
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v7 = MEMORY[0x277D84F90];
  }

  sub_2191ED3E8(v7);
  v9 = *(v3 + 16);
  if (v9[2] <= *(a1 + 16) >> 3)
  {
    goto LABEL_11;
  }

  v10 = sub_218EB4048(v9, a1);

  v11 = *(v10 + 16);
  if (v11)
  {
    while (1)
    {
      v9 = sub_21947D1C0(v11, 0);
      v12 = sub_2194ABD64(&v19, v9 + 4, v11, v10);
      sub_21892DE98();
      if (v12 == v11)
      {
        break;
      }

      __break(1u);
LABEL_11:
      v19 = a1;

      sub_218EB3B08(v9);

      v10 = v19;
      v11 = *(v19 + 16);
      if (!v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v9 = MEMORY[0x277D84F90];
  }

  sub_2191ED3E8(v9);
  v13 = v20;
  v14 = sub_2187EDED8();
  v15 = *(v14 + 72);
  v16 = type metadata accessor for MagazineFeedBlueprintModifierFactory();
  v17 = v15(v13, v16, v14);

  v19 = v17;
  sub_218BB78F0();
  sub_2186D5500(&qword_280EE5620, sub_218BB78F0);
  sub_219BE6EF4();

  *(v3 + 16) = a1;
}

uint64_t sub_218EAA6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDDB8);
  result = sub_219BE1E34();
  if (v11)
  {
    v6 = type metadata accessor for MagazineFeedModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v14, &v7[OBJC_IVAR___TSMagazineFeedModule_resolver]);
    *&v7[OBJC_IVAR___TSMagazineFeedModule_tracker] = v5;
    sub_218718690(v12, &v7[OBJC_IVAR___TSMagazineFeedModule_contextBuilder]);
    sub_218718690(v10, &v7[OBJC_IVAR___TSMagazineFeedModule_mastheadModelProvider]);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    a2[3] = v6;
    a2[4] = &protocol witness table for MagazineFeedModule;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAA85C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010);
  result = sub_219BE1DF4();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187EE748(0);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for MagazineFeedSupplementaryDataProvider();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EAA958@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BEFD54();
  swift_allocObject();
  result = sub_219BEFD44();
  v4 = MEMORY[0x277D32A58];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_218EAA9B0(void *a1)
{
  v2 = sub_219BEE714();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EB8AF8(0, &qword_280E91B30, MEMORY[0x277D32150], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v23 = sub_219BEE704();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0644();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MagazineFeedServiceContext();
  MEMORY[0x28223BE20](v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    v15 = result;
    (*(v11 + 104))(v13, *MEMORY[0x277D32EF0], v10);
    (*(v7 + 104))(v9, *MEMORY[0x277D32110], v23);
    v16 = *MEMORY[0x277D32140];
    v17 = sub_219BEE734();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v6, v16, v17);
    (*(v18 + 56))(v6, 0, 1, v17);
    (*(v26 + 104))(v25, *MEMORY[0x277D32130], v27);
    sub_219BEE744();
    swift_storeEnumTagMultiPayload();
    v19 = qword_280E8D920;
    v20 = *MEMORY[0x277D30B70];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_280F617C8;
    v28 = v15;
    sub_2186ED33C(0, &qword_280E91570, type metadata accessor for MagazineFeedServiceConfigFetcher, sub_2186F7934, MEMORY[0x277D325E8]);
    swift_allocObject();
    v22 = v21;
    return sub_219BEF444();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EAAE30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC7BB0);
  result = sub_219BE1E34();
  if (!v70)
  {
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3F50);
  result = sub_219BE1E34();
  if (!v67)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF20C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF498();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0);
  result = sub_219BE1E34();
  if (!v66)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB4590);
  result = sub_219BE1E34();
  if (!v64)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v68;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v50 = v3;
  sub_219BF4FF4();
  swift_allocObject();
  v49 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = result;
  v61 = v6;
  v62 = sub_2186D5500(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v60[0] = v7;
  sub_219BE6AE4();
  swift_allocObject();
  v8 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v46 = result;
  v47 = v8;
  v48 = v5;
  v53 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  v45 = result;
  if (result)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v44[4] = v44;
    MEMORY[0x28223BE20](v9);
    v11 = (v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    v44[3] = v44;
    MEMORY[0x28223BE20](v13);
    v15 = (v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v11;
    v18 = *v15;
    v19 = type metadata accessor for MagazineFeedStyler();
    v61 = v19;
    v62 = &off_282A604F8;
    v60[0] = v17;
    v20 = sub_2186D5500(&unk_280EE3FB8, sub_2187EF498);
    v21 = type metadata accessor for FeedPaywallConfigFactory();
    v58 = v21;
    v59 = &off_282A9D640;
    v57 = v18;
    v22 = type metadata accessor for MagazineFeedViewController();
    v23 = objc_allocWithZone(v22);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v44[2] = v44;
    MEMORY[0x28223BE20](v24);
    v26 = (v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(&v57, v58);
    v44[1] = v44;
    MEMORY[0x28223BE20](v28);
    v30 = (v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v26;
    v33 = *v30;
    v56[3] = v19;
    v56[4] = &off_282A604F8;
    v56[0] = v32;
    v55[3] = v21;
    v55[4] = &off_282A9D640;
    v55[0] = v33;
    sub_218718690(v56, &v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_styler]);
    v34 = &v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler];
    v36 = v50;
    v35 = v51;
    *v34 = v53;
    *(v34 + 1) = v35;
    *&v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController] = v36;
    v37 = &v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintSelectionProvider];
    *v37 = v52;
    *(v37 + 1) = v20;
    *&v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintLayoutProvider] = v48;
    sub_218718690(v65, &v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_offlineAlertControllerFactory]);
    sub_218718690(v55, &v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_feedPaywallConfigFactory]);
    *&v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_sharingActivityProviderFactory] = v49;
    v38 = v46;
    *&v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_commandContainer] = v47;
    *&v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_newsActivityManager] = v38;
    *&v23[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_tipManager] = v45;
    v54.receiver = v23;
    v54.super_class = v22;
    swift_unknownObjectRetain();
    v39 = v36;

    v40 = objc_msgSendSuper2(&v54, sel_initWithNibName_bundle_, 0, 0);
    *(*&v40[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler] + 24) = &off_282A40880;
    swift_unknownObjectWeakAssign();
    v41 = *&v40[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController];
    v42 = v40;
    v43 = v41;
    sub_219BE8744();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(&v57);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v69);
    return v42;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_218EAB7D8(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70);
  result = sub_219BE1E34();
  if (v5)
  {
    swift_getObjectType();
    v4 = v2;
    sub_219BF3EA4();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EAB8A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineMoreActionsFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for MagazineFeedRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v12, (v9 + 3));
    v9[8] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 9));
    v9[14] = v6;
    v9[15] = v7;
    a2[3] = v8;
    a2[4] = &off_282A2DF88;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218EABA78(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218EABAF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBB378);
  result = sub_219BE1E34();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC7BB8);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC4688);
  result = sub_219BE1E34();
  v7 = v22;
  if (v22)
  {
    v8 = v23;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v9);
    v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for MagazineFeedRouter();
    v21[3] = v14;
    v21[4] = &off_282A2DF88;
    v21[0] = v13;
    type metadata accessor for MagazineFeedEventHandler();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v14);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_218EB8A04(v5, v6, *v18, v7, v8, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v20;
    a2[1] = &off_282A5F5B8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EABDF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB84B0);
  result = sub_219BE1E34();
  v39 = v51;
  if (!v51)
  {
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE404();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = result;
  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF1EC(0);
  result = sub_219BE1E24();
  v42 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  v41 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedSupplementaryDataProvider();
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = result;
  v26 = v52;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  result = sub_219BE1E24();
  v36 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  v25 = v49;
  if (!v49)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE89B0);
  result = sub_219BE1DF4();
  if (!v48)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF554(0, &unk_280EE89D8, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECA980);
  result = sub_219BE1E34();
  if (!v46)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF6B8(0, &qword_280EE8CB0, &qword_280EC4878, &unk_219C4FCA8, MEMORY[0x277D2FF78]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = result;
  v24 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF554(0, &qword_280EE8A10, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  v35 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = v9;
  v31 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  v32 = result;
  if (result)
  {
    sub_2186ED33C(0, &unk_280EC7BD0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedInteractor);
    v23 = v11;
    v12 = objc_allocWithZone(v11);
    v13 = MEMORY[0x277D85000];
    *(v12 + *((*MEMORY[0x277D85000] & *v12) + 0x60) + 8) = 0;
    swift_unknownObjectWeakInit();
    v14 = (v12 + *((*v13 & *v12) + 0x78));
    *v14 = v39;
    v14[1] = v26;
    *(v12 + *((*v13 & *v12) + 0x80)) = v37;
    *(v12 + *((*v13 & *v12) + 0x68)) = v6;
    *(v12 + *((*v13 & *v12) + 0x70)) = v28;
    *(v12 + *((*v13 & *v12) + 0xE8)) = v42;
    *(v12 + *((*v13 & *v12) + 0x88)) = v41;
    *(v12 + *((*v13 & *v12) + 0x98)) = v40;
    *(v12 + *((*v13 & *v12) + 0xA0)) = v7;
    *(v12 + *((*v13 & *v12) + 0xA8)) = v36;
    v15 = (v12 + *((*v13 & *v12) + 0xB0));
    *v15 = v25;
    v15[1] = v24;
    sub_218718690(v47, v12 + *((*v13 & *v12) + 0xC0));
    *(v12 + *((*v13 & *v12) + 0x90)) = v31;
    sub_218718690(v45, v12 + *((*v13 & *v12) + 0xC8));
    *(v12 + *((*v13 & *v12) + 0xD0)) = v33;
    *(v12 + *((*v13 & *v12) + 0xD8)) = v10;
    *(v12 + *((*v13 & *v12) + 0xE0)) = v35;
    *(v12 + *((*v13 & *v12) + 0xF0)) = v32;
    ObjectType = swift_getObjectType();
    v27 = *(v24 + 56);
    swift_unknownObjectRetain();
    v38 = v37;

    v34 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v27(ObjectType, v24);
    sub_219BE2184();

    sub_2186ED33C(0, qword_280E959A0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedOfflineIssueIndicationUpdater);
    v16 = swift_allocObject();
    *(v16 + 16) = v43[0];
    *(v12 + *((*v13 & *v12) + 0xB8)) = v16;
    v44.receiver = v12;
    v44.super_class = v23;
    v17 = objc_msgSendSuper2(&v44, sel_init);
    *(v39 + OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_delegate + 8) = &off_282A45CC8;
    swift_unknownObjectWeakAssign();
    v18 = *(v17 + *((*v13 & *v17) + 0xB0) + 8);
    v19 = swift_getObjectType();
    v20 = *(v18 + 56);
    v21 = v17;
    swift_unknownObjectRetain();
    v20(v19, v18);
    swift_unknownObjectRelease();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_219BE2E54();
    sub_219BE21A4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = __swift_destroy_boxed_opaque_existential_1(v47);
    *v30 = v21;
    v30[1] = &off_282A45D00;
    return result;
  }

LABEL_35:
  __break(1u);
  return result;
}

void *sub_218EAC968(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2186CB1F0(&v5, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_218EB88C4();
  sub_219BE29A4();
  __swift_destroy_boxed_opaque_existential_1(&v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result addObserver_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &unk_280E8DDE0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result addObserver_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_getObjectType();
  sub_218EB8960();
  sub_219BE3F54();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    [result addAppConfigObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218EACBE8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v72 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  v70 = v8;
  v71 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  v69 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7814();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF2E8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v73 = v94;
  if (!v94)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v68 = v95;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (!v93)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0);
  result = sub_219BE1E34();
  if (!v91)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v89)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v67 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA4B0);
  result = sub_219BE1E34();
  if (!v87[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v62 = v15;
  v63 = v13;
  v64 = v12;
  v65 = v11;
  v66 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (!v86)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v16 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
  v61 = &v56;
  MEMORY[0x28223BE20](v16);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
  v60 = &v56;
  MEMORY[0x28223BE20](v20);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v18;
  v25 = *v22;
  v26 = type metadata accessor for HistoryService();
  v83 = v26;
  v84 = &off_282A6F3B0;
  v82[0] = v24;
  v27 = type metadata accessor for OfflineFeatures();
  v80 = v27;
  v81 = &off_282A442B0;
  v79[0] = v25;
  v57 = type metadata accessor for MagazineFeedDataManager();
  v28 = objc_allocWithZone(v57);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
  v59 = &v56;
  MEMORY[0x28223BE20](v29);
  v31 = (&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  v58 = &v56;
  MEMORY[0x28223BE20](v33);
  v35 = (&v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v31;
  v38 = *v35;
  v78[3] = v26;
  v78[4] = &off_282A6F3B0;
  v77[4] = &off_282A442B0;
  v78[0] = v37;
  v77[3] = v27;
  v77[0] = v38;
  *&v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v39 = OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_accessQueue;
  sub_2186C6148(0, &qword_280E8E3B0);
  v41 = v70;
  v40 = v71;
  v42 = v72;
  (*(v70 + 104))(v72, *MEMORY[0x277D851B8], v71);
  v43 = sub_219BF66E4();
  (*(v41 + 8))(v42, v40);
  *&v28[v39] = v43;
  v44 = OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_lastRefreshDate;
  v45 = sub_219BDBD34();
  (*(*(v45 - 8) + 56))(v69, 1, 1, v45);
  sub_218EB8AF8(0, &qword_280EE66B8, sub_2186DCF58, MEMORY[0x277D6CFA0]);
  swift_allocObject();
  *&v28[v44] = sub_219BE3484();
  v46 = OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager__persistedConfigurationDate;
  if (qword_280EE97B0 != -1)
  {
    swift_once();
  }

  sub_2186ED33C(0, &qword_280EE90F0, MEMORY[0x277CC9578], sub_21871DBD4, MEMORY[0x277D6D070]);
  swift_allocObject();

  *&v28[v46] = sub_219BDC914();
  v47 = v64;
  *&v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedServiceContextFactory] = v65;
  *&v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedServiceConfigFetcher] = v47;
  *&v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedManager] = v63;
  v48 = v68;
  *&v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedPluginManager] = v67;
  v49 = &v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_subscriptionService];
  *v49 = v73;
  *(v49 + 1) = v48;
  sub_218718690(v78, &v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_historyService]);
  sub_218718690(v90, &v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_puzzleStatsService]);
  sub_218718690(v88, &v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_puzzleHistoryService]);
  v50 = v62;
  *&v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_offlineManager] = v62;
  sub_218718690(v87, &v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_offlineFeedPrimer]);
  sub_218718690(v77, &v28[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_offlineFeatures]);
  v76.receiver = v28;
  v76.super_class = v57;

  swift_unknownObjectRetain();
  v72 = v50;
  v51 = objc_msgSendSuper2(&v76, sel_init);
  sub_2186D5500(qword_280EC4980, type metadata accessor for MagazineFeedDataManager);
  v52 = v51;

  sub_219BEE504();

  v53 = *__swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_historyService], *&v52[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_historyService + 24]);
  v54 = v52;
  sub_2187EA26C(v54, v53, &off_282A9F8F8);

  sub_218718690(&v54[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_puzzleHistoryService], v75);
  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  sub_2186D5500(&qword_280EC4978, type metadata accessor for MagazineFeedDataManager);
  sub_219BF3784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v85);
  result = __swift_destroy_boxed_opaque_existential_1(v92);
  v55 = v66;
  *v66 = v54;
  v55[1] = &off_282A9F928;
  return result;
}

uint64_t sub_218EAD800@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2186ED33C(0, &unk_280E90480, type metadata accessor for MagazineFeedModelFactory, sub_218EB87F4, MEMORY[0x277D33858]);
  swift_allocObject();
  sub_219BF2444();
  sub_218EB8828();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC4688);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF1D64();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BF26E4();
    swift_allocObject();
    result = sub_219BF26D4();
    v5 = MEMORY[0x277D339B8];
    *a2 = result;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAD9E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for MagazineFeedModelFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EADA7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAC5E0);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v4 = v24;
  if (v24)
  {
    v5 = v25;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v6);
    v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v23[3] = &type metadata for MagazineFeedSectionFactory;
    v23[4] = &off_282A93E68;
    v10 = swift_allocObject();
    v23[0] = v10;
    v11 = v8[3];
    v10[3] = v8[2];
    v10[4] = v11;
    v12 = v8[5];
    v10[5] = v8[4];
    v10[6] = v12;
    v13 = v8[1];
    v10[1] = *v8;
    v10[2] = v13;
    type metadata accessor for MagazineFeedBlueprintModifierFactory();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for MagazineFeedSectionFactory);
    MEMORY[0x28223BE20](v15);
    v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v14[5] = &type metadata for MagazineFeedSectionFactory;
    v14[6] = &off_282A93E68;
    v19 = swift_allocObject();
    v14[2] = v19;
    v20 = v17[3];
    v19[3] = v17[2];
    v19[4] = v20;
    v21 = v17[5];
    v19[5] = v17[4];
    v19[6] = v21;
    v22 = v17[1];
    v19[1] = *v17;
    v19[2] = v22;
    v14[7] = v3;
    v14[8] = v4;
    v14[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EADD84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = &type metadata for MagazineFeedSectionFactory;
    a2[4] = &off_282A93E68;
    v7 = swift_allocObject();
    *a2 = v7;
    sub_2186CB1F0(&v10, v7 + 16);
    *(v7 + 56) = v5;
    result = sub_2186CB1F0(&v8, v7 + 64);
    *(v7 + 104) = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EADF2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187EE4C0();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187EE404();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EAE010(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EEE20();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6[0] = result;
  sub_2187EF0F8(0, &unk_280EE4550, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_2186D5500(&unk_280EE3BF8, sub_2187EEE20);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186EFEF0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6[0] = result;
  swift_allocObject();
  sub_2186D5500(&qword_280E94A68, sub_2186EFEF0);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E91280);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2186CB1F0(&v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_2187EE404();
    sub_219BEFA74();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAE2A4(void *a1)
{
  sub_218EB8AF8(0, &qword_280EE3A90, MEMORY[0x277D6EB30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EEF64(0, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187EEE20();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAE4C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  result = sub_219BE1DE4();
  if (result)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = result;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v5 = sub_219BE99D4();
    swift_allocObject();
    v6 = sub_219BE99C4();
    v11 = v5;
    v12 = MEMORY[0x277D6E7D8];
    *&v10 = v6;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v8 = swift_allocObject();
    sub_2186CB1F0(&v10, v8 + 16);
    v9 = sub_219BE1E04();

    if (v9)
    {
      v11 = v7;
      v12 = sub_2186D5500(&unk_280E90FE0, MEMORY[0x277D32C00]);
      *&v10 = v9;
      sub_219BEA494();
      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EAE69C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAE888(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EB8758();
      sub_219BEA1E4();
      swift_allocObject();
      return sub_219BEA1D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EAE9E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED33C(0, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218EB86B0();
    sub_2187EE4C0();
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAEB68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEA1E4();
  sub_219BE1DE4();
  sub_2187EEF64(0, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9954();
}

uint64_t sub_218EAEC64(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218EAECA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  sub_218718690(a1, &v22);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_2186CB1F0(&v22, v4 + 24);

  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF44C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedEmbeddedSupplementaryBuilder();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(&v22, v23);
    MEMORY[0x28223BE20](v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for BaseStyler();
    v21[3] = v13;
    v14 = sub_2186D5500(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v21[4] = v14;
    v21[0] = v12;
    type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[7] = v13;
    v15[8] = v14;
    v15[3] = v6;
    v15[4] = v20;
    v15[2] = v5;
    v15[9] = v7;
    __swift_destroy_boxed_opaque_existential_1(v21);

    __swift_destroy_boxed_opaque_existential_1(&v22);
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218EAF090(void *a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_219BDFF94();
  swift_allocObject();

  v6 = sub_219BDFF84();
  v9 = v5;
  v10 = sub_2186D5500(&qword_280EE8500, MEMORY[0x277D2E280]);
  v8[0] = v6;
  sub_2186C709C(0, &unk_280E91780);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_2186C709C(0, &unk_280E91280);
  result = sub_219BE1E34();
  if (v9)
  {
    sub_219BE1BA4();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EAF224(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D5500(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2187EF20C();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}