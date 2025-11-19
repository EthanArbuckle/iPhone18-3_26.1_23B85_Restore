id sub_232C5CD7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightOutputSinkCommonUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_232C5CE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232C5E174(a1, a2, a3, a4);
  sub_232C5E160(v5);
  *(v4 + 64) = v6;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5CEBC, 0, 0);
}

uint64_t sub_232C5CEBC()
{
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v1 = *(v0[6] + OBJC_IVAR____TtC21DocumentUnderstanding19SpotlightOutputSink_iOSOutputSink);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v3 = sub_232C5BFB0(v2);

    return sub_232C5C02C(v3, v4, v5, v6);
  }

  else
  {
    v8 = v0[9];
    sub_232CE9A20();
    v9 = sub_232CE9A00();
    v10 = sub_232CEA1C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      sub_232B28888(&dword_232B02000, v12, v13, "DocumentUnderstanding: File ingest disabled, skipping writing of topics to Spotlight");
      MEMORY[0x238393870](v11, -1, -1);
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_232C5D038()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_232C5D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232C5E174(a1, a2, a3, a4);
  sub_232C5E160(v5);
  *(v4 + 64) = v6;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5D1FC, 0, 0);
}

uint64_t sub_232C5D1FC()
{
  sub_232CE9810();
  if (MEMORY[0x238391560]())
  {
    v1 = *(v0[6] + OBJC_IVAR____TtC21DocumentUnderstanding19SpotlightOutputSink_coreSpotlightOutputSink);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v3 = sub_232C5BFB0(v2);

    return sub_232B27FE4(v3, v4, v5, v6);
  }

  else
  {
    v8 = v0[9];
    sub_232CE9A20();
    v9 = sub_232CE9A00();
    v10 = sub_232CEA1C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      sub_232B28888(&dword_232B02000, v12, v13, "DocumentUnderstanding: Non-file ingest disabled, skipping writing of topics to Spotlight");
      MEMORY[0x238393870](v11, -1, -1);
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }
}

id sub_232C5D378()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19SpotlightOutputSink_iOSOutputSink;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for SpotlightiOSFileOutputSink()) init];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding19SpotlightOutputSink_coreSpotlightOutputSink;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for CoreSpotlightOutputSink()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SpotlightOutputSink();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232C5D438(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_232C5D4E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_232CE9D20();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_232CE9FD0();

LABEL_6:
  v9 = [v4 initWithLabel:v7 synonyms:v8 confidence:a1];

  return v9;
}

void sub_232C5D588(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void **, int64_t, void **))
{
  v7 = a1[1];
  v8 = sub_232CEA710();
  if (v8 < v7)
  {
    v9 = v8;
    v10 = a2(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);
    sub_232C5D774(v12, v13, a1, v9, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_232C5D680(0, v7, 1, a1);
  }
}

void sub_232C5D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 confidence];
        v15 = v14;
        [v13 confidence];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_232C5D774(__objc2_class ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void **, int64_t, void **))
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v98 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v98 = i)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v100 = &v8[16 * i];
        v101 = *v100;
        v102 = &v98[2 * i];
        v103 = *(v102 + 1);
        sub_232C5DDB4((*a3 + 8 * *v100), (*a3 + 8 * *v102), (*a3 + 8 * v103), v9, a5);
        if (v115)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_119;
        }

        if (i - 2 >= *v98)
        {
          goto LABEL_120;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v98 - i;
        if (*v98 < i)
        {
          goto LABEL_121;
        }

        v115 = 0;
        i = *v98 - 1;
        sub_232BC13CC(v102 + 16, v104, v102);
      }

LABEL_102:

      return;
    }

LABEL_128:
    v8 = sub_232BC13B8(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &off_2789A8000;
  while (1)
  {
    v10 = v7++;
    if (v7 < v6)
    {
      v106 = v8;
      v11 = (*a3 + 8 * v10);
      v12 = 8 * v10;
      v13 = *v11;
      v8 = (v11 + 2);
      v14 = *(*a3 + 8 * v7);
      v15 = v13;
      sub_232C5E144();
      v17 = v16;
      [v5 v9[334]];
      v19 = v18;

      v108 = v10;
      v20 = v10 + 2;
      while (1)
      {
        v21 = v20;
        if (++v7 >= v6)
        {
          break;
        }

        v22 = *(v8 - 1);
        v23 = *v8;
        v24 = v22;
        sub_232C5E144();
        v26 = v25;
        [v22 v9[334]];
        v28 = v27;

        v8 += 8;
        v20 = v21 + 1;
        if (v17 < v19 == v26 >= v28)
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
LABEL_9:
      if (v17 >= v19)
      {
        v8 = v106;
        v10 = v108;
      }

      else
      {
        if (v7 < v108)
        {
          goto LABEL_125;
        }

        if (v108 >= v7)
        {
          v8 = v106;
          v10 = v108;
        }

        else
        {
          if (v6 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v6;
          }

          v30 = 8 * v29 - 8;
          v31 = v7;
          v32 = v108;
          v8 = v106;
          v10 = v108;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v12);
              *(v33 + v12) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 8;
            v12 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = a3[1];
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_124;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v10)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = *(v8 + 2);
      sub_232B36234();
      v8 = v96;
    }

    v52 = *(v8 + 2);
    v5 = v52 + 1;
    if (v52 >= *(v8 + 3) >> 1)
    {
      sub_232B36234();
      v8 = v97;
    }

    *(v8 + 2) = v5;
    v53 = v8 + 32;
    v54 = &v8[16 * v52 + 32];
    *v54 = v10;
    *(v54 + 1) = v7;
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v52)
    {
      while (1)
      {
        v55 = v5 - 1;
        v56 = &v53[16 * v5 - 16];
        v57 = &v8[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v8 + 4);
          v59 = *(v8 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_59:
          if (v61)
          {
            goto LABEL_110;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_118;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v5 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v5 < 2)
        {
          goto LABEL_112;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_74:
        if (v76)
        {
          goto LABEL_115;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_117;
        }

        if (v83 < v75)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v55 - 1 >= v5)
        {
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
LABEL_119:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v9 = v8;
        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = v55;
        v8 = &v53[16 * v55];
        v90 = *(v8 + 1);
        sub_232C5DDB4((*a3 + 8 * *v87), (*a3 + 8 * *v8), (*a3 + 8 * v90), v112, a5);
        if (v115)
        {
          goto LABEL_102;
        }

        if (v90 < v88)
        {
          goto LABEL_105;
        }

        v91 = v7;
        v92 = v53;
        v93 = v9[2];
        if (v89 > v93)
        {
          goto LABEL_106;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        if (v89 >= v93)
        {
          goto LABEL_107;
        }

        v115 = 0;
        v5 = v93 - 1;
        sub_232BC13CC(v8 + 16, v93 - 1 - v89, v8);
        v8 = v9;
        v9[2] = (v93 - 1);
        v94 = v93 > 2;
        v9 = &off_2789A8000;
        v53 = v92;
        v7 = v91;
        if (!v94)
        {
          goto LABEL_88;
        }
      }

      v62 = &v53[16 * v5];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v86)
        {
          v55 = v5 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v36 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_126;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v10)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v7 == v36)
  {
    goto LABEL_39;
  }

  v107 = v8;
  v109 = v10;
  v37 = *a3;
  v38 = *a3 + 8 * v7 - 8;
  v39 = v10 - v7;
  v111 = v36;
LABEL_32:
  v40 = *(v37 + 8 * v7);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    sub_232C5E144();
    v47 = v46;
    [v43 v9[334]];
    v49 = v48;

    if (v47 >= v49)
    {
LABEL_37:
      ++v7;
      v38 += 8;
      --v39;
      if (v7 == v111)
      {
        v7 = v111;
        v8 = v107;
        v10 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_232C5DDB4(void **a1, id *a2, id *a3, void **a4, void (*a5)(void **, int64_t, void **))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    a5(a1, a2 - a1, a4);
    v12 = &v5[v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= a3)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v14 = *v5;
      v15 = *v7;
      v16 = v14;
      [v15 confidence];
      v18 = v17;
      [v16 confidence];
      v20 = v19;

      if (v18 >= v20)
      {
        break;
      }

      v21 = v7;
      v22 = v8 == v7++;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
    }

    v21 = v5;
    v22 = v8 == v5++;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v21;
    goto LABEL_13;
  }

  a5(a2, a3 - a2, a4);
  v12 = &v5[v10];
  v39 = v5;
LABEL_15:
  v23 = v7 - 1;
  --v6;
  while (v12 > v5 && v7 > v8)
  {
    v25 = v8;
    v26 = v23;
    v27 = *v23;
    v28 = *(v12 - 1);
    v29 = v27;
    [v28 confidence];
    v31 = v30;
    [v29 confidence];
    v33 = v32;

    v34 = v6 + 1;
    if (v31 < v33)
    {
      v22 = v34 == v7;
      v35 = v26;
      v7 = v26;
      v8 = v25;
      v5 = v39;
      if (!v22)
      {
        *v6 = *v35;
        v7 = v35;
      }

      goto LABEL_15;
    }

    if (v12 != v34)
    {
      *v6 = *(v12 - 1);
    }

    --v6;
    --v12;
    v23 = v26;
    v8 = v25;
    v5 = v39;
  }

LABEL_28:
  v36 = v12 - v5;
  if (v7 != v5 || v7 >= &v5[v36])
  {
    memmove(v7, v5, 8 * v36);
  }

  return 1;
}

void sub_232C5DFF4(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_232BA4DEC(0, a3, a4);
  v7 = sub_232CE9FD0();

  [a2 *a5];
}

uint64_t sub_232C5E078(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_232CEA610();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_232C5E120()
{

  return swift_beginAccess();
}

id sub_232C5E144()
{

  return [v1 (v0 + 2447)];
}

uint64_t sub_232C5E160(uint64_t a1)
{
  *(v1 + 56) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_232C5E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return sub_232CE9A30();
}

uint64_t sub_232C5E194(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_232C60C20(result, 1, sub_232B35ECC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_232C5E268(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_232C60C20(result, 1, sub_232B35ABC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_232C5E38C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_232C60C98(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void SQLiteDatabase.init(dbPath:migrationsList:isFrozen:)()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232CE9A30();
  v11 = sub_232B48F0C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  sub_232C071E8();
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB] = 0;
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_temporaryURL;
  v17 = sub_232CE8C00();
  sub_232B12504(&v0[v16], 1, 1, v17);
  v18 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_dbPath];
  *v18 = v9;
  v18[1] = v7;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_migrationsList] = v5;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_isFrozen] = v3;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for SQLiteDatabase();
  v19 = objc_msgSendSuper2(&v24, sel_init);
  sub_232C5E840();
  if (v20)
  {
  }

  else
  {
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    v22 = sub_232CEA1C0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_232B02000, v21, v22, "SQLiteDatabase: Unable to initialize database", v23, 2u);
      sub_232BA6A84();
    }

    (*(v13 + 8))(v1, v10);
  }

  sub_232B20A00();
}

uint64_t type metadata accessor for SQLiteDatabase()
{
  result = qword_27DDC8378;
  if (!qword_27DDC8378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SQLiteDatabase.__deallocating_deinit()
{
  sub_232C5F750();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLiteDatabase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C5E840()
{
  sub_232B35110();
  v190 = *MEMORY[0x277D85DE8];
  v184 = sub_232CE9A30();
  v2 = sub_232B48F0C(v184);
  v186 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v182 = (v6 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v158 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v158 - v12;
  v14 = sub_232CE8D40();
  v15 = sub_232B48F0C(v14);
  v183 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v21 = v20 - v19;
  v22 = sub_232CE8B40();
  v23 = sub_232B48F0C(v22);
  v185 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20704();
  sub_232C071E8();
  v27 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  sub_232B3516C();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v158 - v33;
  v35 = sub_232CE8C00();
  v36 = sub_232B48F0C(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_232B3516C();
  MEMORY[0x28223BE20](v39 - v40);
  MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v45);
  if (*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB))
  {
    goto LABEL_31;
  }

  v170 = v14;
  v175 = v13;
  v176 = v1;
  v179 = v34;
  v169 = v10;
  v178 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB;
  v174 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_isFrozen);
  v181 = v0;
  if (v174 != 1)
  {
    v63 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_dbPath);
    v64 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_dbPath + 8);
    swift_bridgeObjectRetain_n();
    goto LABEL_7;
  }

  v167 = v49;
  v168 = v48;
  v161 = v47;
  v162 = v46;
  v171 = v53;
  v177 = v52;
  v172 = v51;
  v54 = &v158 - v50;
  v55 = NSTemporaryDirectory();
  sub_232CE9D50();
  v180 = v35;

  sub_232B12504(v179, 1, 1, v180);
  v56 = v185;
  v57 = v185[13];
  v58 = v176;
  v164 = *MEMORY[0x277CC91D8];
  v166 = v22;
  v165 = v185 + 13;
  v163 = v57;
  v57(v176);
  v173 = v54;
  v59 = v180;
  sub_232CE8BE0();
  v60 = *(v181 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_dbPath);
  v61 = *(v181 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_dbPath + 8);
  v62 = v31;
  sub_232CE8BD0();
  if (sub_232B12480(v31, 1, v59) == 1)
  {
    (*(v171 + 8))(v173, v59);
    sub_232B359E4(v31);
    goto LABEL_31;
  }

  v85 = v171;
  v86 = *(v171 + 32);
  v160 = v171 + 32;
  v159 = v86;
  v86(v177, v62, v59);
  v87 = v21;
  sub_232CE8D30();
  v88 = sub_232CE8D20();
  v90 = v89;
  (*(v183 + 8))(v87, v170);
  v188 = v88;
  v189 = v90;

  MEMORY[0x238391C30](95, 0xE100000000000000);

  v92 = v188;
  v91 = v189;
  v93 = sub_232CE8B80();
  v95 = v94;
  v188 = v92;
  v189 = v91;
  v96 = v180;

  MEMORY[0x238391C30](v93, v95);

  v97 = v166;
  v163(v58, v164, v166);
  sub_232B48080();
  v98 = v172;
  sub_232CE8BF0();
  (v56[1])(v58, v97);

  v99 = v175;
  sub_232CE9A20();
  v100 = v85;
  v101 = *(v85 + 16);
  v102 = v167;
  v101(v167, v177, v96);
  v103 = v168;
  v183 = v101;
  v176 = v85 + 16;
  v101(v168, v98, v96);
  v104 = sub_232CE9A00();
  v105 = sub_232CEA1A0();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v188 = v185;
    *v106 = 136315394;
    v107 = v102;
    sub_232CE8BC0();
    sub_232BA69E4();
    v108 = v102;
    v109 = *(v100 + 8);
    v109(v108, v96);
    sub_232C61960();
    sub_232C619BC();
    *(v106 + 4) = v107;
    *(v106 + 12) = 2080;
    sub_232CE8BC0();
    sub_232BA69E4();
    v109(v103, v96);
    sub_232C61960();
    sub_232C619BC();
    *(v106 + 14) = v103;
    _os_log_impl(&dword_232B02000, v104, v105, "(SQLiteDatabase) Copying file from %s to %s", v106, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232C3BAA0();

    v110 = *(v186 + 8);
    v111 = v175;
  }

  else
  {

    v112 = *(v100 + 8);
    v112(v103, v96);
    v113 = v102;
    v109 = v112;
    v112(v113, v96);
    v110 = *(v186 + 8);
    v111 = v99;
  }

  v114 = v184;
  v185 = v110;
  (v110)(v111, v184);
  v115 = [objc_opt_self() defaultManager];
  v116 = v177;
  v117 = sub_232CE8B90();
  v118 = v172;
  v119 = sub_232CE8B90();
  v188 = 0;
  v120 = [v115 copyItemAtURL:v117 toURL:v119 error:&v188];

  if (v120)
  {
    v182 = v109;
    v121 = v188;
    v122 = v169;
    sub_232CE9A20();
    v123 = v161;
    v124 = v180;
    v125 = v183;
    (v183)(v161, v116, v180);
    v126 = v162;
    v125(v162, v118, v124);
    v127 = sub_232CE9A00();
    v128 = sub_232CEA1A0();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v188 = v183;
      *v129 = 136315394;
      v130 = v123;
      sub_232CE8BC0();
      sub_232BA69E4();
      v131 = v123;
      v132 = v182;
      v182(v131, v124);
      sub_232C61960();
      sub_232C619BC();
      *(v129 + 4) = v130;
      *(v129 + 12) = 2080;
      v133 = v126;
      sub_232CE8BC0();
      sub_232BA69E4();
      v134 = v126;
      v135 = v132;
      v132(v134, v124);
      sub_232C61960();
      sub_232C619BC();
      *(v129 + 14) = v133;
      _os_log_impl(&dword_232B02000, v127, v128, "(SQLiteDatabase) Copied file from %s to %s", v129, 0x16u);
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232C3BAA0();

      sub_232C619D4();
      v136 = v169;
    }

    else
    {

      v151 = v126;
      v135 = v182;
      v182(v151, v124);
      v135(v123, v124);
      sub_232C619D4();
      v136 = v122;
    }

    (v185)(v136, v184);
    v152 = v172;
    sub_232CE8BC0();
    v135(v177, v124);
    v135(v173, v124);
    v153 = v179;
    v159(v179, v152, v124);
    sub_232B12504(v153, 0, 1, v124);
    v154 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_temporaryURL;
    v155 = v181;
    swift_beginAccess();

    sub_232C617C8(v153, v155 + v154);
    swift_endAccess();
LABEL_7:
    v65 = objc_opt_self();
    v66 = sub_232C61A00();
    v67 = [v65 corruptionMarkerPathForPath_];

    v68 = v67;
    v69 = v67;
    if (!v67)
    {
      sub_232CE9D50();
      v69 = sub_232CE9D20();

      sub_232CE9D50();
      v68 = sub_232CE9D20();
    }

    v70 = v67;
    v71 = sub_232C61A00();

    v72 = [v65 isInMemoryPath_];

    if (v72)
    {
    }

    else
    {
      v73 = objc_opt_self();
      v74 = [v73 defaultManager];
      v75 = [v74 fileExistsAtPath_];

      if (v75)
      {
        v76 = sub_232C61A00();
        [v65 truncateDatabaseAtPath_];

        v77 = [v73 defaultManager];
        v188 = 0;
        v78 = [v77 removeItemAtPath:v68 error:&v188];

        if (!v78)
        {
          v149 = v188;

          v150 = sub_232CE8B30();

          swift_willThrow();
          sub_232C5F750();

          goto LABEL_31;
        }

        v79 = v188;
        goto LABEL_15;
      }
    }

LABEL_15:
    v80 = v181;
    v81 = sub_232C61A00();

    v82 = [v65 initializeDatabase:v81 withContentProtection:0 newDatabaseCreated:0 errorHandler:0];

    v83 = v178;
    v84 = *(v80 + v178);
    *(v80 + v178) = v82;

    if (*(v80 + v83))
    {
      sub_232C5FC20();
      if ((v174 & 1) == 0)
      {
        sub_232C6014C();
      }
    }

    else
    {
      sub_232C5F750();
    }

    goto LABEL_31;
  }

  v137 = v188;
  v138 = sub_232CE8B30();

  swift_willThrow();
  v139 = v182;
  sub_232CE9A20();
  v140 = v138;
  v141 = sub_232CE9A00();
  v142 = sub_232CEA1C0();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v188 = v144;
    *v143 = 136315138;
    v187 = v138;
    v145 = v138;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v146 = sub_232CE9DC0();
    v148 = sub_232BAD2D4(v146, v147, &v188);

    *(v143 + 4) = v148;
    _os_log_impl(&dword_232B02000, v141, v142, "(SQLiteDatabase) Could not copy original database to writable DB location with error: %s", v143, 0xCu);
    sub_232B2040C(v144);
    sub_232BA6A84();
    sub_232C3BAA0();
  }

  sub_232C619D4();
  (v185)(v139, v114);
  v156 = v180;
  v109(v172, v180);
  v109(v177, v156);
  v109(v173, v156);
LABEL_31:
  v157 = *MEMORY[0x277D85DE8];
  sub_232B20A00();
}

void sub_232C5F750()
{
  sub_232B35110();
  v54[4] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v10 = v9 - v8;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_232C071E8();
  v13 = sub_232CE8C00();
  v14 = sub_232B48F0C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_temporaryURL;
  swift_beginAccess();
  sub_232B35974(v0 + v25, v1);
  if (sub_232B12480(v1, 1, v13) == 1)
  {
    sub_232B359E4(v1);
  }

  else
  {
    v51 = v5;
    v52 = v2;
    (*(v16 + 32))(v24, v1, v13);
    v26 = objc_opt_self();
    v27 = [v26 defaultManager];
    sub_232CE8BC0();
    v28 = sub_232CE9D20();

    v29 = [v27 fileExistsAtPath_];

    if (v29)
    {
      v30 = [v26 defaultManager];
      v31 = sub_232CE8B90();
      v54[0] = 0;
      v32 = [v30 removeItemAtURL:v31 error:v54];

      if (v32)
      {
        v33 = *(v16 + 8);
        v34 = v54[0];
        v33(v24, v13);
      }

      else
      {
        v35 = v54[0];
        v36 = sub_232CE8B30();

        swift_willThrow();
        sub_232CE9A20();
        (*(v16 + 16))(v21, v24, v13);
        v37 = v36;
        v38 = sub_232CE9A00();
        v39 = sub_232CEA1C0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v54[0] = v50;
          *v40 = 136315394;
          v49 = v39;
          sub_232CE8BC0();
          sub_232BA69E4();
          v48 = v38;
          v41 = *(v16 + 8);
          v41(v21, v13);
          sub_232C61960();
          sub_232C619BC();
          *(v40 + 4) = v21;
          *(v40 + 12) = 2080;
          v53 = v36;
          v42 = v36;
          sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
          v43 = sub_232CE9DC0();
          v45 = sub_232BAD2D4(v43, v44, v54);

          *(v40 + 14) = v45;
          v46 = v48;
          _os_log_impl(&dword_232B02000, v48, v49, "(SQLiteDatabase) Unable to remove file at %s.  Error: %s", v40, 0x16u);
          swift_arrayDestroy();
          sub_232BA6A84();
          sub_232BA6A84();
        }

        else
        {

          v41 = *(v16 + 8);
          v41(v21, v13);
        }

        (*(v51 + 8))(v10, v52);
        v41(v24, v13);
      }
    }

    else
    {
      (*(v16 + 8))(v24, v13);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  sub_232B20A00();
}

sqlite3 *sub_232C5FC20()
{
  sub_232C60064(0xD000000000000019, 0x8000000232D0B3F0);
  v1 = [*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB) handle];

  return DU_UDF_prenorm_cosine_distance_create_function(v1);
}

uint64_t sub_232C5FC7C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB;
  v2 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9FD0();
    [v3 prepAndRunNonDataQueries:v4 onError:0];

    v5 = *(v0 + v1);
    v16 = 0;
    if (v5)
    {
      v6 = v5;
      v7 = sub_232CE9D20();
      v8 = swift_allocObject();
      *(v8 + 16) = &v16;
      v9 = sub_232C6198C();
      v10 = sub_232C613E0;
      *(v9 + 16) = sub_232C613E0;
      *(v9 + 24) = v8;
      aBlock[4] = sub_232C6185C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      sub_232C618C0();
      aBlock[2] = v11;
      aBlock[3] = &unk_284813E48;
      v12 = _Block_copy(aBlock);

      sub_232C619E0(v6, sel_prepAndRunQuery_onPrep_onRow_onError_);
      _Block_release(v12);

      v13 = v16;
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }
  }

  else
  {
    v13 = 0;
    v10 = 0;
    v16 = 0;
  }

  sub_232B0D210(v10);
  return v13;
}

uint64_t sub_232C5FE30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

void sub_232C5FE7C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
  if (v2)
  {
    v4 = v2;
    v5 = sub_232CE9D20();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = sub_232C6198C();
    *(v7 + 16) = sub_232C613D8;
    *(v7 + 24) = v6;
    v14 = sub_232C61860;
    v15 = v7;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    sub_232C6194C();
    v12 = v8;
    v13 = &unk_284813DD0;
    v9 = _Block_copy(&v10);

    [v4 prepAndRunQuery:v5 onPrep:v9 onRow:0 onError:{0, v10, v11}];
    _Block_release(v9);
  }
}

void sub_232C5FFB8(void *a1)
{
  v2 = sub_232CEA100();
  [a1 bindParam:1 toInt64AsNSNumber:v2];
}

void sub_232C60018(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_232C60064(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_232CF6460;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    v7 = v3;

    v8 = sub_232CE9FD0();

    [v7 prepAndRunNonDataQueries:v8 onError:0];
  }
}

void sub_232C6014C()
{
  v1 = sub_232C5FC7C();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_migrationsList;
  swift_beginAccess();
  v3 = 16 * v1;
  for (i = v1; ; ++i)
  {
    v5 = *(v0 + v2);
    if (i >= *(v5 + 16))
    {
      sub_232C5FE7C(i);
      return;
    }

    if (v1 < 0)
    {
      break;
    }

    v6 = v5 + v3;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);

    sub_232C60064(v7, v8);

    v3 += 16;
  }

  __break(1u);
}

void sub_232C60204()
{
  swift_beginAccess();

  sub_232C5E194(v0);
  swift_endAccess();
  sub_232C6014C();
}

void sub_232C60274()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_232CE9A30();
  v10 = sub_232B48F0C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v17 = v16 - v15;
  sub_232C5E840();
  if (v18)
  {
    v19 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
    if (v19)
    {
      v20 = v19;
      v21 = sub_232CE9D20();
      if (v8)
      {
        v22 = sub_232C6198C();
        *(v22 + 16) = v8;
        *(v22 + 24) = v6;
        sub_232C61928(v22);
        v32 = 1107296256;
        sub_232C6194C();
        v33 = v23;
        v34 = &unk_284813CE0;
        v24 = _Block_copy(&v31);

        if (v4)
        {
LABEL_5:
          v25 = sub_232C6198C();
          *(v25 + 16) = v4;
          *(v25 + 24) = v2;
          sub_232C61928(v25);
          v32 = 1107296256;
          sub_232C618C0();
          v33 = v26;
          v34 = &unk_284813C90;
          v27 = _Block_copy(&v31);

LABEL_11:
          [v20 prepAndRunQuery:v21 onPrep:v24 onRow:v27 onError:0];
          _Block_release(v27);
          _Block_release(v24);

          goto LABEL_12;
        }
      }

      else
      {
        v24 = 0;
        if (v4)
        {
          goto LABEL_5;
        }
      }

      v27 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1C0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_232B02000, v28, v29, "SQLiteDatabase: Unable to initialize database", v30, 2u);
      sub_232C3BAA0();
    }

    (*(v12 + 8))(v17, v9);
  }

LABEL_12:
  sub_232B20A00();
}

uint64_t sub_232C604D0(void *a1)
{
  result = sqlite3_column_count([a1 stmt]);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = result + 1;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if (sqlite3_column_text([a1 stmt], v3))
      {
        v6 = sub_232CE9EB0();
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v5 + 16);
          sub_232B35ECC();
          v5 = v12;
        }

        v9 = *(v5 + 16);
        if (v9 >= *(v5 + 24) >> 1)
        {
          sub_232B35ECC();
          v5 = v13;
        }

        *(v5 + 16) = v9 + 1;
        v10 = v5 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
      }

      ++v3;
    }

    while (v4 != v3);
    sub_232B124A8(&qword_27DDC72D0, &unk_232CF8990);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_232CF6460;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0);
    v15 = sub_232CE9CD0();
    v17 = v16;

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_232CEA800();

    return *MEMORY[0x277D42690];
  }

  return result;
}

void sub_232C606C8()
{
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232C071E8();
  sub_232C5E840();
  if (v8)
  {
    v9 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB];
    if (v9)
    {
      v10 = v9;
      v11 = sub_232CE9D20();
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      v13 = sub_232C6198C();
      *(v13 + 16) = sub_232C609CC;
      *(v13 + 24) = v12;
      aBlock[4] = sub_232C6185C;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      sub_232C618C0();
      aBlock[2] = v14;
      aBlock[3] = &unk_284813D58;
      v15 = _Block_copy(aBlock);
      v16 = v0;

      sub_232C619E0(v10, sel_prepAndRunQuery_onPrep_onRow_onError_);
      _Block_release(v15);
    }
  }

  else
  {
    sub_232CE9A20();
    v17 = sub_232CE9A00();
    v18 = sub_232CEA1C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_232B02000, v17, v18, "SQLiteDatabase: Unable to initialize database", v19, 2u);
      sub_232BA6A84();
    }

    (*(v5 + 8))(v1, v2);
  }
}

id SQLiteDatabase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_232C60960()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_232C6098C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C609A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_232C609F0()
{
  sub_232C60BC8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_232C60BC8()
{
  if (!qword_2814E25E8)
  {
    sub_232CE8C00();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E25E8);
    }
  }
}

uint64_t sub_232C60C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_232C60C98(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_232CEA610();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_232CEA540();
  *v1 = result;
  return result;
}

uint64_t sub_232C60F40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DUUserInterfaceUnderstandingResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC83A0, &qword_27DDC7060, &qword_232CF8020);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC7060, &qword_232CF8020);
          v9 = sub_232B4D0A4(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C610C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DUStructuredEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC8398, &qword_27DDC8390, &unk_232CFEB28);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC8390, &unk_232CFEB28);
          v9 = sub_232B4CFEC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C61250(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DUCategoryResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC8388, &qword_27DDC7048, &qword_232CF7FC0);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC7048, &qword_232CF7FC0);
          v9 = sub_232B4CFEC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C613E0(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = [a1 getIntegerForColumn_];
  return *MEMORY[0x277D42698];
}

uint64_t sub_232C61630(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_232BA4DEC(0, &qword_27DDC6928, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC83C8, &qword_27DDC80D0, &unk_232CFEB50);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC80D0, &unk_232CFEB50);
          v9 = sub_232B4CFEC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C617C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C61864(unint64_t *a1)
{

  return sub_232B48E4C(a1, v1, v2);
}

uint64_t sub_232C61908()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_232C61928(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_232C61960()
{

  return sub_232BAD2D4(v0, v1, (v2 - 120));
}

uint64_t sub_232C6198C()
{

  return swift_allocObject();
}

uint64_t sub_232C619A4()
{

  return sub_232B124A8(v0, v1);
}

uint64_t sub_232C619BC()
{
}

id sub_232C619E0(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_232C61A00()
{

  return sub_232CE9D20();
}

id SQLiteRetrievalDatabase.init(dbURL:isFrozen:)(uint64_t a1, char a2)
{
  sub_232CE8B60();
  v5 = objc_allocWithZone(type metadata accessor for SQLiteDatabase());
  SQLiteDatabase.init(dbPath:migrationsList:isFrozen:)();
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_database] = v6;
  v2[OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_isFrozen] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SQLiteRetrievalDatabase();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = sub_232CE8C00();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_232C61B8C(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_isFrozen) & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      type metadata accessor for DUVectorUtils();
      v4 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_database);
      v5 = v2 + 32;
      do
      {
        v6 = *(v5 + 16);
        v12 = *v5;
        v13 = v6;
        v14 = *(v5 + 32);
        v7 = v6;
        sub_232C61CC4(&v12, v11);
        v8 = sub_232C18940(v7);
        v9 = swift_allocObject();
        v10 = v13;
        *(v9 + 16) = v12;
        *(v9 + 32) = v10;
        *(v9 + 48) = v14;
        *(v9 + 56) = v8;
        sub_232C61CC4(&v12, v11);
        sub_232C60274();

        result = sub_232C61D2C(&v12);
        v5 += 40;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void sub_232C61D80()
{
  if ((*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_isFrozen) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_database);
    sub_232C60274();
  }
}

uint64_t sub_232C61DE4(uint64_t a1, uint64_t a2, float a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_database);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = MEMORY[0x277D84F90];
  v10 = (v8 + 16);
  type metadata accessor for DUVectorUtils();
  v11 = sub_232C18940(a1);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a3;
  *(v12 + 32) = a2;

  sub_232C60274();

  swift_beginAccess();
  v13 = *v10;

  v14 = *(v13 + 16);
  if (v14)
  {
    sub_232B64C88(0, v14, 0);
    v15 = v9;
    v16 = (v13 + 64);
    do
    {
      v18 = *(v16 - 4);
      v17 = *(v16 - 3);
      v19 = *(v16 - 2);
      v20 = *(v16 - 1);
      v21 = *v16;

      sub_232C05E58(v19, v20);

      sub_232C05E58(v19, v20);
      sub_232BB6018(v19, v20);

      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_232B64C88(v22 > 1, v23 + 1, 1);
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 40 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v17;
      *(v24 + 48) = v19;
      *(v24 + 56) = v20;
      *(v24 + 64) = v21;
      v16 += 10;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

id SQLiteRetrievalDatabase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SQLiteRetrievalDatabase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLiteRetrievalDatabase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C621FC(uint64_t a1@<X8>)
{
  *a1 = xmmword_232CF76F0;
  *(a1 + 16) = xmmword_232CF76F0;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = a1 + v2[7];
  sub_232CE9330();
  sub_232C693A4(v2[8]);
  sub_232C69210(v2[9]);
  sub_232C69210(v2[10]);
  sub_232C69210(v2[11]);
  sub_232C69210(v2[12]);
  sub_232C69210(v2[13]);
}

uint64_t sub_232C62274@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20);
  if (qword_27DDC6428 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DDC83E0;
}

void sub_232C622F0(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v3 = (a1 + *(v2 + 20));
  *v3 = 0;
  v3[1] = 0;
  sub_232C693A4(*(v2 + 24));
}

double sub_232C62330@<D0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v3 = &a1[v2[5]];
  sub_232CE9330();
  result = 0.0;
  *&a1[v2[6]] = xmmword_232CFBB70;
  v5 = &a1[v2[7]];
  *v5 = 0;
  v5[1] = 0;
  *&a1[v2[8]] = xmmword_232CFBB70;
  v6 = &a1[v2[9]];
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_232C6239C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51A0);
  sub_232B135C4(v0, qword_27DDD51A0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_232CF8A10;
  v4 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v49 + v3 + v2 + v1[14];
  *(v49 + v3 + v2) = 9;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v49 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 20;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v49 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "phoneNumber";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v49 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "email";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v49 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "url";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v49 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "addressComponents";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v49 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CalendarEvent";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v49 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "homeAutomationID";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v49 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "displayInfo";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v49 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 8;
  *v26 = "responseDebugInfo";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v7();
  v27 = (v49 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 3;
  *v28 = "phoneNumberLabel";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v49 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "frameInWindow";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v49 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "absoluteOriginOnScreen";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v7();
  v33 = (v49 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "isOnScreen";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v7();
  v35 = (v49 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "frameInWindow_debugX";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v37 = *MEMORY[0x277D21888];
  v7();
  v38 = (v49 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 15;
  *v39 = "frameInWindow_debugY";
  *(v39 + 1) = 20;
  v39[16] = 2;
  v7();
  v40 = (v49 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 16;
  *v41 = "frameInWindow_debugWidth";
  *(v41 + 1) = 24;
  v41[16] = 2;
  v7();
  v42 = (v49 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 17;
  *v43 = "frameInWindow_debugHeight";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v7();
  v44 = (v49 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 18;
  *v45 = "absoluteOriginOnScreen_debugX";
  *(v45 + 1) = 29;
  v45[16] = 2;
  v7();
  v46 = (v49 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 19;
  *v47 = "absoluteOriginOnScreen_debugY";
  *(v47 + 1) = 29;
  v47[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232C629F8()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_232C62A38();
  qword_27DDC83E0 = result;
  return result;
}

uint64_t sub_232C62A38()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = sub_232CE9C60();
  v1 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232B12504(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232B12504(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232B12504(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow) = xmmword_232CF76F0;
  *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen) = xmmword_232CF76F0;
  *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen) = 0;
  v9 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  *v14 = 0;
  *(v14 + 8) = 1;
  return v0;
}

uint64_t sub_232C62BD0(void *a1)
{
  v3 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B2D108();
  v82 = v7;
  v8 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  sub_232B2D120(v8);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232B2D108();
  v79 = v12;
  v13 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B2D120(v13);
  v15 = *(v14 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v16);
  sub_232B2D108();
  v77 = v17;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 104) = sub_232CE9C60();
  v18 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232C69320(v18, v19, v20, v18);
  v21 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  v76 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  *v21 = 0;
  v21[1] = 0;
  v22 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232C69320(v22, v23, v24, v22);
  v25 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C69320(v25, v26, v27, v25);
  v28 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  v78 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  *v28 = 0;
  v28[1] = 0;
  v80 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow);
  *(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow) = xmmword_232CF76F0;
  v81 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen);
  *(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen) = xmmword_232CF76F0;
  v83 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  *(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen) = 0;
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX);
  v29 = v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  v84 = v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_232BA63D0();
  swift_beginAccess();
  v30 = a1[2];
  v31 = a1[3];
  sub_232B13F5C();
  v32 = *(v1 + 24);
  *(v1 + 16) = v30;
  *(v1 + 24) = v31;

  sub_232BA63D0();
  swift_beginAccess();
  v34 = a1[4];
  v33 = a1[5];
  sub_232B13F5C();
  v35 = *(v1 + 40);
  *(v1 + 32) = v34;
  *(v1 + 40) = v33;

  sub_232BA63D0();
  swift_beginAccess();
  v36 = a1[6];
  sub_232B13F5C();
  v37 = *(v1 + 48);
  *(v1 + 48) = v36;

  sub_232BA63D0();
  swift_beginAccess();
  v39 = a1[7];
  v38 = a1[8];
  sub_232B13F5C();
  v40 = *(v1 + 64);
  *(v1 + 56) = v39;
  *(v1 + 64) = v38;

  sub_232BA63D0();
  swift_beginAccess();
  v42 = a1[9];
  v41 = a1[10];
  sub_232B13F5C();
  v43 = *(v1 + 80);
  *(v1 + 72) = v42;
  *(v1 + 80) = v41;

  sub_232BA63D0();
  swift_beginAccess();
  v45 = a1[11];
  v44 = a1[12];
  sub_232B13F5C();
  v46 = *(v1 + 96);
  *(v1 + 88) = v45;
  *(v1 + 96) = v44;

  sub_232BA63D0();
  swift_beginAccess();
  v47 = a1[13];
  sub_232BC1C58();
  v48 = *(v1 + 104);
  *(v1 + 104) = v47;

  v49 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(a1 + v49, v77, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232C692FC();
  swift_beginAccess();
  sub_232C69270();
  swift_endAccess();
  v50 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  sub_232BA63D0();
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  sub_232B13F5C();
  v53 = v76[1];
  *v76 = v52;
  v76[1] = v51;

  v54 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(a1 + v54, v79, &qword_27DDC70F8, &qword_232CF8260);
  sub_232C692FC();
  swift_beginAccess();
  sub_232C69270();
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(a1 + v55, v82, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C692FC();
  swift_beginAccess();
  sub_232C69270();
  swift_endAccess();
  v56 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  sub_232BA63D0();
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  sub_232B13F5C();
  v59 = v78[1];
  *v78 = v58;
  v78[1] = v57;

  v60 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow);
  sub_232BA63D0();
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  sub_232B13F5C();
  v63 = *v80;
  v64 = v80[1];
  *v80 = v62;
  v80[1] = v61;
  v65 = sub_232B35090();
  sub_232B41B94(v65, v66);
  sub_232B41BEC(v63, v64);
  v67 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen);
  sub_232BA63D0();
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  sub_232B13F5C();
  v70 = *v81;
  v71 = v81[1];
  *v81 = v69;
  v81[1] = v68;
  v72 = sub_232B35090();
  sub_232B41B94(v72, v73);
  sub_232B41BEC(v70, v71);
  v74 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  sub_232BA63D0();
  swift_beginAccess();
  LOBYTE(v74) = *(a1 + v74);
  sub_232B13F5C();
  *(v1 + v83) = v74;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58();
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58();
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58();
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58();
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58();
  sub_232C69308();
  LOBYTE(v74) = a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();

  sub_232B13F5C();
  *v84 = v83;
  *(v84 + 8) = v74;
  return v1;
}

void *sub_232C633DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[13];

  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent, &qword_27DDC7AC0, &qword_232CFBB80);
  v8 = *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID + 8);

  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo, &qword_27DDC70F8, &qword_232CF8260);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo, &qword_27DDC67C8, &unk_232CF5E70);
  v9 = *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel + 8);

  sub_232B41BEC(*(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow), *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow + 8));
  sub_232B41BEC(*(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen), *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen + 8));
  return v0;
}

uint64_t sub_232C634DC()
{
  v0 = sub_232C633DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_232C63558()
{
  sub_232C63720(319, &qword_27DDC8468, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_232C63720(319, &qword_27DDC8470, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_232C63720(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_232C63720(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C63804()
{
  v0 = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_27DDC8498);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_232B21E3C(319, &qword_2814DFA10);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_232C63938()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_232C639E4()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_27DDC6840);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232C63AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_232C62BD0(v11);
    *(v4 + v8) = v11;
  }

  return sub_232C63B4C(v11, a1, a2, a3);
}

uint64_t sub_232C63B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C63E94();
        continue;
      case 2:
        sub_232C63F18();
        continue;
      case 3:
        v16 = MEMORY[0x277D217D0];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel;
        goto LABEL_24;
      case 4:
        sub_232C271EC();
        continue;
      case 5:
        sub_232C63F9C();
        continue;
      case 6:
        sub_232C64020();
        continue;
      case 7:
        sub_232C640C4();
        continue;
      case 8:
        sub_232C641A0();
        continue;
      case 9:
        sub_232C6427C();
        continue;
      case 10:
        v16 = MEMORY[0x277D217D0];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID;
        goto LABEL_24;
      case 11:
        v16 = MEMORY[0x277D21768];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow;
        goto LABEL_24;
      case 12:
        v16 = MEMORY[0x277D21768];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen;
LABEL_24:
        sub_232C64300(v17, v18, v19, v20, v21, v16);
        continue;
      case 13:
        sub_232C64394();
        continue;
      case 14:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX;
        goto LABEL_22;
      case 15:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY;
        goto LABEL_22;
      case 16:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth;
        goto LABEL_22;
      case 17:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight;
        goto LABEL_22;
      case 18:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX;
        goto LABEL_22;
      case 19:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
LABEL_22:
        sub_232C64420(v11, v12, v13, v14, v15);
        break;
      case 20:
        sub_232C644A0();
        break;
      case 21:
        sub_232C6456C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C63E94()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C63F18()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C63F9C()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C64020()
{
  swift_beginAccess();
  sub_232CE9310();
  sub_232CE9390();
  return swift_endAccess();
}

uint64_t sub_232C640C4()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C641A0()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C68CE0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C6427C()
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C64300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  sub_232C692FC();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_232C64394()
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232C64420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  sub_232C692FC();
  swift_beginAccess();
  sub_232B2F148();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232C644A0()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
  sub_232CE94B0();
  return swift_endAccess();
}

uint64_t sub_232C6456C()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C64648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20));
  sub_232B2F148();
  result = sub_232C646AC(v7, v8, v9, a3);
  if (!v4)
  {
    sub_232B35090();
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C646AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_232C64B78(a1);
  if (!v4)
  {
    sub_232C64C14(a1);
    sub_232C65254(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
    sub_232C64CB0(a1);
    sub_232C64D4C(a1);
    swift_beginAccess();
    if (*(*(a1 + 104) + 16))
    {
      sub_232CE9310();

      sub_232CE9520();
    }

    sub_232C64DE8(a1, a2, a3, a4);
    sub_232C64FD0(a1, a2, a3, a4);
    sub_232C651B8(a1);
    sub_232C65254(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
    v10 = a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow;
    swift_beginAccess();
    if (!sub_232B3F4B0(*v10, *(v10 + 8)))
    {
      v12 = *v10;
      v11 = *(v10 + 8);
      sub_232B41B94(v12, v11);
      sub_232CE9580();
      sub_232B41BEC(v12, v11);
    }

    v13 = a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen;
    swift_beginAccess();
    if (!sub_232B3F4B0(*v13, *(v13 + 8)))
    {
      v15 = *v13;
      v14 = *(v13 + 8);
      sub_232B41B94(v15, v14);
      sub_232CE9580();
      sub_232B41BEC(v15, v14);
    }

    v16 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
    swift_beginAccess();
    if (*(a1 + v16) == 1)
    {
      sub_232CE9560();
    }

    sub_232C652E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX);
    sub_232C652E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY);
    sub_232C652E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth);
    sub_232C652E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight);
    sub_232C652E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX);
    sub_232C652E4(a1, a2, a3, a4, &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY);
    swift_beginAccess();
    if (*(*(a1 + 48) + 16))
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
      sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);

      sub_232CE95D0();
    }

    return sub_232C65358(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_232C64B78(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64C14(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64CB0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64D4C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 96);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  swift_beginAccess();
  sub_232B5D6C0(a1 + v11, v8, &qword_27DDC7AC0, &qword_232CFBB80);
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    return sub_232B13790(v8, &qword_27DDC7AC0, &qword_232CFBB80);
  }

  sub_232C69118();
  sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
  sub_232CE95E0();
  return sub_232C6916C();
}

uint64_t sub_232C64FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  swift_beginAccess();
  sub_232B5D6C0(a1 + v11, v8, &qword_27DDC67C8, &unk_232CF5E70);
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    return sub_232B13790(v8, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232C69118();
  sub_232C68CE0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232C6916C();
}

uint64_t sub_232C651B8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C65254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_232C692B8(a1, a2, a3, a4, a5);
  v7 = (v5 + v6);
  sub_232BA63D0();
  result = swift_beginAccess();
  if (v7[1])
  {
    v9 = *v7;
    v10 = v7[1];

    sub_232C692E0();
    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C652E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_232C692B8(a1, a2, a3, a4, a5);
  v7 = (v5 + v6);
  sub_232BA63D0();
  result = swift_beginAccess();
  if ((v7[1] & 1) == 0)
  {
    v9 = *v7;
    sub_232B2F148();
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C65358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  swift_beginAccess();
  sub_232B5D6C0(a1 + v11, v8, &qword_27DDC70F8, &qword_232CF8260);
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    return sub_232B13790(v8, &qword_27DDC70F8, &qword_232CF8260);
  }

  sub_232C69118();
  sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
  sub_232CE95E0();
  return sub_232C6916C();
}

uint64_t sub_232C65540()
{
  v2 = sub_232C69220();
  v3 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {
    v6 = *(v1 + v3);

    v7 = sub_232C655FC(v4, v5);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C691C8();
  sub_232C68CE0(v8, v9);
  return sub_232C6933C() & 1;
}

uint64_t sub_232C655FC(void *a1, void *a2)
{
  v198 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v198);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v194 = v8;
  v197 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24(v197);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  v13 = &v190 - v12;
  v14 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v15 = sub_232B2D120(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  v196 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v200 = &v190 - v21;
  v202 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v22 = sub_232B13F24(v202);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_232BFF638();
  v195 = v25;
  v201 = sub_232B124A8(&qword_27DDC8540, &qword_232CFF2E8);
  sub_232B13F24(v201);
  v27 = *(v26 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v28);
  sub_232B2D108();
  v203 = v29;
  v30 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v31 = sub_232B2D120(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B3516C();
  v199 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  v205 = &v190 - v37;
  v38 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v39 = sub_232B13F24(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_232BFF638();
  v204 = v42;
  v43 = sub_232B124A8(&qword_27DDC8548, &unk_232CFF2F0);
  sub_232B13F24(v43);
  v45 = *(v44 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v46);
  sub_232B2D108();
  v206 = v47;
  v48 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v49 = sub_232B2D120(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B3516C();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v190 - v56;
  sub_232BA63D0();
  swift_beginAccess();
  v58 = a1[2];
  v59 = a1[3];
  sub_232BA63D0();
  swift_beginAccess();
  v60 = a2[3];
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    v61 = v58 == a2[2] && v59 == v60;
    if (!v61)
    {
      sub_232BC1E48();
      if ((sub_232CEA750() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v60)
  {
    return 0;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v62 = a1[4];
  v63 = a1[5];
  sub_232BA63D0();
  swift_beginAccess();
  v64 = a2[5];
  if (!v63)
  {
    if (!v64)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v64)
  {
    return 0;
  }

  if (v62 != a2[4] || v63 != v64)
  {
    sub_232BC1E48();
    if ((sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v193 = v13;
  sub_232BA63D0();
  swift_beginAccess();
  v66 = a1[6];
  sub_232BA63D0();
  swift_beginAccess();
  v67 = a2[6];

  sub_232BC1E48();
  sub_232B34B54();
  v68 = a2;
  v70 = v69;

  if ((v70 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v72 = a1[7];
  v71 = a1[8];
  v192 = a1;
  sub_232BA63D0();
  swift_beginAccess();
  v73 = v68[8];
  if (v71)
  {
    if (!v73)
    {
      goto LABEL_61;
    }

    v74 = v72 == v68[7] && v71 == v73;
    v75 = v192;
    if (!v74)
    {
      sub_232C69230();
      if ((sub_232CEA750() & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    v75 = v192;
    if (v73)
    {
      goto LABEL_61;
    }
  }

  sub_232BA63D0();
  swift_beginAccess();
  v77 = v75[9];
  v76 = v75[10];
  sub_232BA63D0();
  swift_beginAccess();
  v78 = v68[10];
  if (v76)
  {
    if (!v78)
    {
      goto LABEL_61;
    }

    if (v77 != v68[9] || v76 != v78)
    {
      sub_232C69230();
      if ((sub_232CEA750() & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else if (v78)
  {
    goto LABEL_61;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v81 = v75[11];
  v80 = v75[12];
  sub_232BA63D0();
  swift_beginAccess();
  v82 = v68[12];
  if (v80)
  {
    if (!v82)
    {
      goto LABEL_61;
    }

    if (v81 != v68[11] || v80 != v82)
    {
      sub_232C69230();
      if ((sub_232CEA750() & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else if (v82)
  {
    goto LABEL_61;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v84 = v75[13];
  sub_232BA63D0();
  swift_beginAccess();
  v85 = v68[13];

  v86 = sub_232BC1E48();
  sub_232B3223C(v86, v87);
  v191 = v68;
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    goto LABEL_61;
  }

  v90 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(v75 + v90, v57, &qword_27DDC7AC0, &qword_232CFBB80);
  v91 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  v92 = v191;
  sub_232BA63D0();
  swift_beginAccess();
  v93 = *(v43 + 48);
  v94 = v206;
  sub_232B5D6C0(v57, v206, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B5D6C0(v92 + v91, v94 + v93, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B351B0(v94, 1, v38);
  if (v61)
  {
    sub_232B13790(v57, &qword_27DDC7AC0, &qword_232CFBB80);
    sub_232B351B0(v94 + v93, 1, v38);
    if (v61)
    {
      sub_232B13790(v94, &qword_27DDC7AC0, &qword_232CFBB80);
      goto LABEL_64;
    }

LABEL_59:
    v96 = &qword_27DDC8548;
    v97 = &unk_232CFF2F0;
    v98 = v94;
LABEL_60:
    sub_232B13790(v98, v96, v97);
    goto LABEL_61;
  }

  sub_232B5D6C0(v94, v54, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B351B0(v94 + v93, 1, v38);
  if (v95)
  {
    sub_232B13790(v57, &qword_27DDC7AC0, &qword_232CFBB80);
    sub_232C6916C();
    goto LABEL_59;
  }

  sub_232C69118();
  v100 = sub_232BA5C94();
  v102 = v94;
  v103 = sub_232C6787C(v100, v101);
  sub_232C6916C();
  sub_232B13790(v57, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232C6916C();
  sub_232B13790(v102, &qword_27DDC7AC0, &qword_232CFBB80);
  if ((v103 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_64:
  v104 = (v75 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  sub_232BA63D0();
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = (v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  sub_232BA63D0();
  swift_beginAccess();
  v108 = v107[1];
  if (v106)
  {
    v109 = v205;
    v110 = v193;
    if (!v108)
    {
      goto LABEL_61;
    }

    v111 = v105 == *v107 && v106 == v108;
    if (!v111 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v109 = v205;
    v110 = v193;
    if (v108)
    {
      goto LABEL_61;
    }
  }

  v112 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C69360(v75 + v112, v109);
  v113 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  sub_232BA63D0();
  swift_beginAccess();
  v114 = *(v201 + 48);
  v115 = v203;
  sub_232C69360(v109, v203);
  sub_232C69360(v92 + v113, v115 + v114);
  v116 = v202;
  sub_232B351B0(v115, 1, v202);
  if (v61)
  {
    sub_232B13790(v109, &qword_27DDC70F8, &qword_232CF8260);
    sub_232B351B0(v115 + v114, 1, v116);
    if (v61)
    {
      sub_232B13790(v115, &qword_27DDC70F8, &qword_232CF8260);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  sub_232B5D6C0(v115, v199, &qword_27DDC70F8, &qword_232CF8260);
  sub_232B351B0(v115 + v114, 1, v116);
  if (v117)
  {
    sub_232B13790(v109, &qword_27DDC70F8, &qword_232CF8260);
    sub_232C6916C();
LABEL_81:
    v96 = &qword_27DDC8540;
    v97 = &qword_232CFF2E8;
    v98 = v115;
    goto LABEL_60;
  }

  sub_232C69118();
  v118 = sub_232BA5C94();
  v120 = sub_232C68730(v118, v119);
  sub_232C6916C();
  sub_232B13790(v109, &qword_27DDC70F8, &qword_232CF8260);
  sub_232C6916C();
  sub_232B13790(v115, &qword_27DDC70F8, &qword_232CF8260);
  if ((v120 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_83:
  v121 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  sub_232BA63D0();
  swift_beginAccess();
  v122 = v200;
  sub_232C69360(v75 + v121, v200);
  v123 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  sub_232BA63D0();
  swift_beginAccess();
  v124 = *(v197 + 48);
  sub_232C69360(v122, v110);
  sub_232C69360(v92 + v123, v110 + v124);
  v125 = v198;
  sub_232B351B0(v110, 1, v198);
  if (v61)
  {
    sub_232B13790(v200, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B351B0(v110 + v124, 1, v125);
    if (v61)
    {
      sub_232B13790(v110, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_88;
    }

    goto LABEL_99;
  }

  v132 = v196;
  sub_232B5D6C0(v110, v196, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232B351B0(v110 + v124, 1, v125);
  if (v133)
  {
    sub_232B13790(v200, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C6916C();
LABEL_99:
    v96 = &qword_27DDC6828;
    v97 = &unk_232CF6030;
    v98 = v110;
    goto LABEL_60;
  }

  v134 = v194;
  sub_232C69118();
  v135 = *(v125 + 20);
  v136 = *(v134 + v135 + 8);
  if (!*(v132 + v135 + 8))
  {
    if (!v136)
    {
      goto LABEL_107;
    }

LABEL_115:
    sub_232B13790(v200, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C6916C();
    sub_232C6916C();
    sub_232B13790(v193, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_61;
  }

  if (!v136)
  {
    goto LABEL_115;
  }

  sub_232B2DF50((v132 + v135));
  v139 = v61 && v137 == v138;
  if (!v139 && (sub_232CEA750() & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_107:
  sub_232CE9340();
  sub_232C691C8();
  sub_232C68CE0(v140, v141);
  v142 = sub_232CE9CF0();
  sub_232B13790(v200, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C6916C();
  sub_232BB6644();
  sub_232C6916C();
  sub_232B13790(v193, &qword_27DDC67C8, &unk_232CF5E70);
  v75 = v192;
  if ((v142 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_88:
  v126 = v75 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel;
  sub_232BA63D0();
  swift_beginAccess();
  v127 = *v126;
  v128 = *(v126 + 1);
  v129 = (v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  sub_232BA63D0();
  swift_beginAccess();
  v130 = v129[1];
  if (v128)
  {
    if (!v130)
    {
      goto LABEL_61;
    }

    v131 = v127 == *v129 && v128 == v130;
    if (!v131 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (v130)
  {
    goto LABEL_61;
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow);
  sub_232BA63D0();
  swift_beginAccess();
  v144 = *v127;
  v143 = v127[1];
  v145 = (v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow);
  sub_232BA63D0();
  swift_beginAccess();
  v147 = *v145;
  v146 = v145[1];
  v148 = sub_232C69230();
  sub_232B41B94(v148, v149);
  v150 = sub_232BA5C94();
  sub_232B41B94(v150, v151);
  v152 = sub_232C69230();
  v153 = MEMORY[0x2383909F0](v152);
  v154 = sub_232BA5C94();
  sub_232B41BEC(v154, v155);
  v156 = sub_232C69230();
  sub_232B41BEC(v156, v157);
  if ((v153 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen);
  sub_232BA63D0();
  swift_beginAccess();
  v159 = *v143;
  v158 = v143[1];
  v160 = (v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen);
  sub_232BA63D0();
  swift_beginAccess();
  v162 = *v160;
  v161 = v160[1];
  v163 = sub_232C69230();
  sub_232B41B94(v163, v164);
  v165 = sub_232BA5C94();
  sub_232B41B94(v165, v166);
  v167 = sub_232C69230();
  v168 = MEMORY[0x2383909F0](v167);
  v169 = sub_232BA5C94();
  sub_232B41BEC(v169, v170);
  v171 = sub_232C69230();
  sub_232B41BEC(v171, v172);
  if ((v168 & 1) == 0)
  {
    goto LABEL_61;
  }

  v173 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  v174 = v192;
  sub_232BA63D0();
  swift_beginAccess();
  LODWORD(v173) = *(v174 + v173);
  v175 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  sub_232BA63D0();
  swift_beginAccess();
  if (v173 != *(v92 + v175))
  {
    goto LABEL_61;
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX);
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v176 = v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX;
  sub_232BA63D0();
  swift_beginAccess();
  v177 = *(v176 + 8);
  if (v161)
  {
    if ((*(v176 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v176 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v61)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY);
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v178 = v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY;
  sub_232BA63D0();
  swift_beginAccess();
  v179 = *(v178 + 8);
  if (v161)
  {
    if ((*(v178 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v178 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v61)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth);
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v180 = v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth;
  sub_232BA63D0();
  swift_beginAccess();
  v181 = *(v180 + 8);
  if (v161)
  {
    if ((*(v180 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v180 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v61)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight);
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v182 = v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight;
  sub_232BA63D0();
  swift_beginAccess();
  v183 = *(v182 + 8);
  if (v161)
  {
    if ((*(v182 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v182 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v61)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264(OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX);
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v184 = v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX;
  sub_232BA63D0();
  swift_beginAccess();
  v185 = *(v184 + 8);
  if (v161)
  {
    if (*(v184 + 8))
    {
      goto LABEL_146;
    }

LABEL_61:

    return 0;
  }

  if (*(v184 + 8))
  {
    goto LABEL_61;
  }

  sub_232C692F0();
  if (!v61)
  {
    goto LABEL_61;
  }

LABEL_146:
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();

  v186 = v92 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  sub_232BA63D0();
  swift_beginAccess();
  v187 = *v186;
  v188 = *(v186 + 8);

  if (v161)
  {
    if (!v188)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v187)
    {
      v189 = v188;
    }

    else
    {
      v189 = 1;
    }

    if (v189)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_232C666F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8528, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C66794(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C6685C()
{
  sub_232C68CE0(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);

  return sub_232CE9500();
}

uint64_t sub_232C668DC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51B8);
  sub_232B135C4(v0, qword_27DDD51B8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "labelName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidenceScore";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C66AA4()
{
  sub_232B60720();
  while (1)
  {
    sub_232B35090();
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232B13EE0();
      sub_232C66B6C();
    }

    else if (result == 1)
    {
      sub_232B13EE0();
      sub_232C66B08();
    }
  }

  return result;
}

uint64_t sub_232C66BD0()
{
  sub_232B2F148();
  result = sub_232C66C34(v1);
  if (!v0)
  {
    sub_232B2F148();
    sub_232C66CAC(v3);
    sub_232B35090();
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C66C34(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C66CAC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C66D24()
{
  v0 = sub_232C69220();
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v0);
  v2 = *(v1 + 20);
  sub_232B2DF3C();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    sub_232B2DF50(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_232C542E4(*(v1 + 24));
  if (v10)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v12)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C691C8();
  sub_232C68CE0(v13, v14);
  return sub_232C6933C() & 1;
}

uint64_t sub_232C66DFC()
{
  v0 = sub_232CE9340();
  sub_232B13F24(v0);
  v2 = *(v1 + 16);
  v3 = sub_232B2080C();

  return v4(v3);
}

uint64_t sub_232C66E58()
{
  sub_232B4D640();
  v2 = sub_232CE9340();
  v3 = sub_232B13F24(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_232C66EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8530, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C66F84(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C6704C()
{
  sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);

  return sub_232CE9500();
}

uint64_t sub_232C670CC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51D0);
  sub_232B135C4(v0, qword_27DDD51D0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isAllDay";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startTimezone";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "endDate";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "endTimezone";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C67350()
{
  sub_232B60720();
  while (1)
  {
    sub_232B35090();
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2F148();
        sub_232CE93C0();
        break;
      case 2:
        sub_232B13EE0();
        sub_232C67404();
        break;
      case 3:
        sub_232B13EE0();
        sub_232C67468();
        break;
      case 4:
        sub_232B13EE0();
        sub_232C674CC();
        break;
      case 5:
        sub_232B13EE0();
        sub_232C67530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C67594()
{
  sub_232B606E4();
  if (*v0 != 1 || (result = sub_232C693B8(), !v1))
  {
    v4 = sub_232B47864();
    result = sub_232C6764C(v4);
    if (!v1)
    {
      v5 = sub_232B47864();
      sub_232C676EC(v5);
      v6 = sub_232B47864();
      sub_232C67764(v6);
      v7 = sub_232B47864();
      sub_232C67804(v7);
      v8 = v2 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0) + 20);
      sub_232B2F148();
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C6764C(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_232B41B94(*v3, *(v3 + 8));
    sub_232CE9580();
    return sub_232BB6018(v5, v4);
  }

  return result;
}

uint64_t sub_232C676EC(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C67764(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_232B41B94(*v3, *(v3 + 8));
    sub_232CE9580();
    return sub_232BB6018(v5, v4);
  }

  return result;
}

uint64_t sub_232C67804(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C6787C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = sub_232C69220();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v2);
  sub_232C69290(v3[6]);
  if (!v7 & v6)
  {
    sub_232C6938C();
    if (!(!v7 & v6))
    {
      goto LABEL_9;
    }

    v4 = sub_232C691E0();
    sub_232BB6018(v4, v5);
  }

  else
  {
    sub_232C6938C();
    if (!v7 & v6)
    {
      goto LABEL_9;
    }

    v13 = sub_232C691E0();
    v14 = MEMORY[0x2383909F0](v13);
    v15 = sub_232BB6644();
    sub_232BB6018(v15, v16);
    v17 = sub_232B35090();
    sub_232BB6018(v17, v18);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v3[7];
  sub_232B2DF3C();
  if (v22)
  {
    if (!v20)
    {
      return 0;
    }

    sub_232B2DF50(v21);
    v25 = v7 && v23 == v24;
    if (!v25 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  sub_232C69290(v3[8]);
  if (!v7 & v6)
  {
    sub_232C6938C();
    if (!v7 & v6)
    {
      v26 = sub_232C691E0();
      sub_232BB6018(v26, v27);
      goto LABEL_28;
    }

LABEL_9:
    v8 = sub_232C691E0();
    sub_232BB6018(v8, v9);
    v10 = sub_232BB6644();
    sub_232BB6018(v10, v11);
    return 0;
  }

  sub_232C6938C();
  if (!v29 & v28)
  {
    goto LABEL_9;
  }

  v30 = sub_232C691E0();
  v31 = MEMORY[0x2383909F0](v30);
  v32 = sub_232BB6644();
  sub_232BB6018(v32, v33);
  v34 = sub_232B35090();
  sub_232BB6018(v34, v35);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v36 = v3[9];
  sub_232B2DF3C();
  if (v39)
  {
    if (v37)
    {
      sub_232B2DF50(v38);
      v42 = v7 && v40 == v41;
      if (v42 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    return 0;
  }

  if (v37)
  {
    return 0;
  }

LABEL_37:
  v43 = v3[5];
  sub_232CE9340();
  sub_232C691C8();
  sub_232C68CE0(v44, v45);
  return sub_232B606FC() & 1;
}

uint64_t sub_232C67A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8538, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C67B10(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C67BD8()
{
  sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);

  return sub_232CE9500();
}

uint64_t sub_232C67C58()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51E8);
  sub_232B135C4(v0, qword_27DDD51E8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8A40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frameInWindow";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "absoluteOriginOnScreen";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isOnScreen";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "frameInWindow_debugX";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "frameInWindow_debugY";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "frameInWindow_debugWidth";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "frameInWindow_debugHeight";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "absoluteOriginOnScreen_debugX";
  *(v23 + 1) = 29;
  v23[16] = 2;
  v9();
  v24 = (v5 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "absoluteOriginOnScreen_debugY";
  *(v25 + 1) = 29;
  v25[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C67FDC()
{
  sub_232B60720();
  while (1)
  {
    sub_232B35090();
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_232B2F148();
        sub_232CE9420();
        break;
      case 3:
        sub_232B2F148();
        sub_232CE93C0();
        break;
      case 4:
        sub_232B13EE0();
        sub_232C680CC();
        break;
      case 5:
        sub_232B13EE0();
        sub_232C68130();
        break;
      case 6:
        sub_232B13EE0();
        sub_232C68194();
        break;
      case 7:
        sub_232B13EE0();
        sub_232C681F8();
        break;
      case 8:
        sub_232B13EE0();
        sub_232C6825C();
        break;
      case 9:
        sub_232B13EE0();
        sub_232C682C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C68324()
{
  sub_232B606E4();
  v3 = *v0;
  v4 = *(v2 + 8);
  v5 = sub_232C69398();
  if (sub_232B3F4B0(v5, v6) || (sub_232C69398(), sub_232C692E0(), result = sub_232CE9580(), !v1))
  {
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    v10 = sub_232C69398();
    if (sub_232B3F4B0(v10, v11) || (sub_232C69398(), sub_232C692E0(), result = sub_232CE9580(), !v1))
    {
      if (*(v2 + 32) != 1 || (result = sub_232C693B8(), !v1))
      {
        v12 = sub_232B47864();
        result = sub_232C68460(v12);
        if (!v1)
        {
          v13 = sub_232B47864();
          sub_232C684D8(v13);
          v14 = sub_232B47864();
          sub_232C68550(v14);
          v15 = sub_232B47864();
          sub_232C685C8(v15);
          v16 = sub_232B47864();
          sub_232C68640(v16);
          v17 = sub_232B47864();
          sub_232C686B8(v17);
          v18 = v2 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0) + 28);
          sub_232B2F148();
          return sub_232CE9320();
        }
      }
    }
  }

  return result;
}

uint64_t sub_232C68460(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C684D8(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C68550(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C685C8(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C68640(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C686B8(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C68730(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383909F0](*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (MEMORY[0x2383909F0](*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232C542E4(*(v5 + 32));
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v9)
    {
      return 0;
    }
  }

  sub_232C542E4(*(v6 + 36));
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v13)
    {
      return 0;
    }
  }

  sub_232C542E4(*(v10 + 40));
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v17)
    {
      return 0;
    }
  }

  sub_232C542E4(*(v14 + 44));
  if (v20)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v21)
    {
      return 0;
    }
  }

  sub_232C542E4(*(v18 + 48));
  if (v24)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v25)
    {
      return 0;
    }
  }

  sub_232C542E4(*(v22 + 52));
  if (v28)
  {
    if (v27)
    {
      goto LABEL_29;
    }

    return 0;
  }

  sub_232B34FA4();
  if (v29)
  {
    return 0;
  }

LABEL_29:
  v30 = *(v26 + 28);
  sub_232CE9340();
  sub_232C691C8();
  sub_232C68CE0(v31, v32);
  return sub_232B606FC() & 1;
}

uint64_t sub_232C68884(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_232CEA820();
  a1(0);
  sub_232C68CE0(a2, a3);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C6892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232C689A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_232C68A14(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_232C68A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8520, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C68B08(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C68BD0()
{
  sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);

  return sub_232CE9500();
}

uint64_t sub_232C68CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C69118()
{
  v1 = sub_232C69220();
  v3 = v2(v1);
  sub_232B13F24(v3);
  v5 = *(v4 + 32);
  v6 = sub_232B2080C();
  v7(v6);
  return v0;
}

uint64_t sub_232C6916C()
{
  v1 = sub_232B4D640();
  v3 = v2(v1);
  sub_232B13F24(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_232C691E0()
{
  sub_232C05E58(v1, v0);
  sub_232C05E58(v3, v2);
  return v1;
}

void sub_232C69210(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t sub_232C6923C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  v3 = v2 - 1;
  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_232C69270()
{

  return sub_232B5BD4C(v3, v0 + v4, v1, v2);
}

void sub_232C69290(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v3 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v7 = *v5;
  v6 = v5[1];
}

uint64_t sub_232C69320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B12504(v4 + v5, 1, 1, a4);
}

uint64_t sub_232C6933C()
{

  return sub_232CE9CF0();
}

uint64_t sub_232C69360(uint64_t a1, uint64_t a2)
{

  return sub_232B5D6C0(a1, a2, v2, v3);
}

void sub_232C693A4(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t sub_232C693B8()
{

  return sub_232CE9560();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse()
{
  result = qword_27DDC8550;
  if (!qword_27DDC8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C6944C()
{
  sub_232C69548(319, &qword_27DDC8560, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232C69548(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C69548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232C695AC@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v3 = a1 + *(v2 + 20);
  sub_232CE9330();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();

  return sub_232B12504(a1 + v4, 1, 1, v5);
}

uint64_t sub_232C6961C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5200);
  sub_232B135C4(v0, qword_27DDD5200);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "structuredEntities";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C697E4()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232B13EE0();
      sub_232C698F8();
    }

    else if (result == 1)
    {
      sub_232B13EE0();
      sub_232C69858();
    }
  }

  return result;
}

uint64_t sub_232C69858()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  sub_232C6A368(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
  return sub_232CE94B0();
}

uint64_t sub_232C698F8()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse() + 24);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C6A368(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  return sub_232CE94C0();
}

uint64_t sub_232C699AC()
{
  if (!*(*v0 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0), sub_232C6A368(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity), result = sub_232CE95D0(), !v1))
  {
    result = sub_232C69AB8(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse() + 20);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C69AB8(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  sub_232B21B7C(a1 + *(v10 + 24), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v5, v9);
  sub_232C6A368(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232B21C50(v9);
}

uint64_t sub_232C69C58(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  v15 = sub_232B13F24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = *a1;
  v21 = *a2;
  sub_232B33B34();
  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v24 = *(v23 + 24);
  v25 = *(v14 + 48);
  sub_232B21B7C(a1 + v24, v19);
  sub_232B21B7C(a2 + v24, &v19[v25]);
  sub_232B13FF0(v19);
  if (v30)
  {
    sub_232B13FF0(&v19[v25]);
    if (v30)
    {
      sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v19, v13);
  sub_232B13FF0(&v19[v25]);
  if (v30)
  {
    sub_232B21C50(v13);
LABEL_11:
    v31 = &qword_27DDC6828;
    v32 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v19, v31, v32);
LABEL_24:
    v29 = 0;
    return v29 & 1;
  }

  sub_232B21BEC(&v19[v25], v9);
  v33 = *(v4 + 20);
  v34 = &v13[v33];
  v35 = *&v13[v33 + 8];
  v36 = &v9[v33];
  v37 = *(v36 + 1);
  if (!v35)
  {
    if (!v37)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v37 || (*v34 == *v36 ? (v38 = v35 == v37) : (v38 = 0), !v38 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v9);
    sub_232B21C50(v13);
    v31 = &qword_27DDC67C8;
    v32 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232C6A3B0();
  sub_232C6A368(v39, v40);
  v41 = sub_232CE9CF0();
  sub_232B21C50(v9);
  sub_232B21C50(v13);
  sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v41 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v26 = *(v23 + 20);
  sub_232CE9340();
  sub_232C6A3B0();
  sub_232C6A368(v27, v28);
  v29 = sub_232CE9CF0();
  return v29 & 1;
}

uint64_t sub_232C69F5C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  sub_232C6A368(&qword_27DDC8570, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C6A034(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C6A368(&qword_27DDC8580, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C6A0B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6448 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C6A158(uint64_t a1)
{
  v2 = sub_232C6A368(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C6A1C8()
{
  sub_232C6A368(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);

  return sub_232CE9500();
}

uint64_t sub_232C6A368(unint64_t *a1, void (*a2)(uint64_t))
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

DocumentUnderstanding::TaggedCharacterRange::TaggedCharacterRangeAnnotationType_optional __swiftcall TaggedCharacterRange.TaggedCharacterRangeAnnotationType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_232C6A3EC@<X0>(uint64_t *a1@<X8>)
{
  result = TaggedCharacterRange.TaggedCharacterRangeAnnotationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_232C6A414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C6A488(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_232C6A450(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_232C6A4C0(&v4);
}

uint64_t sub_232C6A488@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232C4A23C();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_232C6A4C0(char *a1)
{
  v2 = *a1;
  result = sub_232B13F34();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_232C6A538(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C6A590(v4);
}

uint64_t sub_232C6A564()
{
  sub_232C4A23C();
  v1 = *(v0 + 24);
}

uint64_t sub_232C6A590(uint64_t a1)
{
  sub_232B13F34();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_232C6A610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C6A668(v4);
}

uint64_t sub_232C6A63C()
{
  sub_232C4A23C();
  v1 = *(v0 + 32);
}

uint64_t sub_232C6A668(uint64_t a1)
{
  sub_232B13F34();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_232C6A6E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232C6A768(v2, v3);
}

uint64_t sub_232C6A728()
{
  sub_232C4A23C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_232C6A768(uint64_t a1, uint64_t a2)
{
  sub_232B13F34();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_232C6A7F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C6A84C(v4);
}

uint64_t sub_232C6A820()
{
  sub_232C4A23C();
  v1 = *(v0 + 56);
}

uint64_t sub_232C6A84C(uint64_t a1)
{
  sub_232B13F34();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_232C6A8CC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = *a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

void *sub_232C6A8E8(void *result, void *a2)
{
  if (result[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = a2[2];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2[4] >= result[5])
  {
    return 0;
  }

  if (v2 != 1)
  {
    return (result[4] < a2[5]);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_232C6A93C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v27 = a1 & 0xC000000000000001;
  v28 = sub_232B26B10(a1);
  v29 = a1;
  v25 = a2;
  v26 = a1 + 32;
  v5 = a2 & 0xC000000000000001;
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  v23 = a2 & 0xFFFFFFFFFFFFFF8;
  v24 = a2 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v28)
    {

      return;
    }

    sub_232B26B2C(v4);
    if (v27)
    {
      v7 = MEMORY[0x2383922C0](v4, v29);
    }

    else
    {
      v7 = *(v26 + 8 * v4);
    }

    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v30 = MEMORY[0x277D84F90];
    v9 = sub_232B26B10(a2);
    swift_beginAccess();
    for (i = 0; v9 != i; ++i)
    {
      if (v5)
      {
        v11 = MEMORY[0x2383922C0](i, a2);
      }

      else
      {
        if (i >= *(v6 + 16))
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 == v7 || (type metadata accessor for TaggedCharacterRange(), swift_beginAccess(), (sub_232C6A8E8(*(v11 + 32), *(v7 + 32)) & 1) != 0))
      {
        sub_232CEA560();
        v12 = *(v30 + 16);
        sub_232CEA590();
        sub_232CEA5A0();
        sub_232CEA570();
      }

      else
      {
      }
    }

    v13 = sub_232B26B10(v30);
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (v13 != v14)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2383922C0](v14, v30);
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v30 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_41;
      }

      swift_beginAccess();
      v17 = *(v16 + 24);

      v18 = *(v17 + 16);
      v19 = *(v15 + 16);
      if (__OFADD__(v19, v18))
      {
        goto LABEL_43;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v19 + v18 > *(v15 + 24) >> 1)
      {
        sub_232B35ECC();
        v15 = v20;
      }

      if (*(v17 + 16))
      {
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v18)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v21 = *(v15 + 16);
          v8 = __OFADD__(v21, v18);
          v22 = v21 + v18;
          if (v8)
          {
            goto LABEL_46;
          }

          *(v15 + 16) = v22;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_44;
        }
      }

      ++v14;
    }

    swift_beginAccess();
    sub_232C5E194(v15);
    swift_endAccess();
    swift_beginAccess();
    *(v7 + 16) = 2;

    v5 = v24;
    a2 = v25;
    v6 = v23;
  }

LABEL_47:
  __break(1u);
}

void *TaggedCharacterRange.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t TaggedCharacterRange.__deallocating_deinit()
{
  TaggedCharacterRange.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_232C6AD2C()
{
  result = qword_27DDC8588;
  if (!qword_27DDC8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8588);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaggedCharacterRange.TaggedCharacterRangeAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TaggedCharacterRange.TaggedCharacterRangeAnnotationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C6B13C()
{

  return swift_beginAccess();
}

id DUBulkUpdater.init(client:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_documentNamespace];
  *v4 = 0xD000000000000028;
  *(v4 + 1) = 0x8000000232D09E90;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for DUClient());
    v5 = DUClient.init(identifier:)(0x6470755F6B6C7562, 0xEC00000072657461);
  }

  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_client] = v5;
  type metadata accessor for PoemAggregationModelHandler();
  swift_allocObject();
  v7 = a1;
  v8 = v5;
  v9 = sub_232C349B0();
  v10 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler];
  *v10 = v8;
  *(v10 + 1) = v9;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DUBulkUpdater();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

uint64_t sub_232C6B2C0()
{
  v1[2] = v0;
  v2 = sub_232CE9A30();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C6B38C, 0, 0);
}

uint64_t sub_232C6B38C()
{
  v1 = v0[6];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_232BA73DC() = 0;
    sub_232B28888(&dword_232B02000, v4, v5, "DocumentUnderstanding: Beginning handlePoemOnBoarding");
    sub_232BA6A84();
  }

  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  v10 = *(v8 + 8);
  v0[7] = v10;
  v10(v6, v7);
  v12 = *(v9 + OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler);
  v11 = *(v9 + OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler + 8);
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_232C6B4C0;

  return sub_232C3DCC0();
}

uint64_t sub_232C6B4C0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232C6B614, 0, 0);
  }
}

uint64_t sub_232C6B614()
{
  v1 = v0[5];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_232BA73DC() = 0;
    sub_232B28888(&dword_232B02000, v4, v5, "DocumentUnderstanding: Ending handlePoemOnBoarding");
    sub_232BA6A84();
  }

  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  v7(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_232C6B70C()
{
  v0 = sub_232CE9A30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  sub_232CE9A20();
  v8 = sub_232CE9A00();
  v9 = sub_232CEA1A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_232BA73DC();
    *v10 = 0;
    _os_log_impl(&dword_232B02000, v8, v9, "DocumentUnderstanding: Beginning handle incremental PoemUpdate", v10, 2u);
    sub_232BA6A84();
  }

  v11 = *(v1 + 8);
  v11(v7, v0);
  type metadata accessor for PoemAggregationModelHandler();
  swift_initStackObject();
  v12 = sub_232C349B0();
  v13 = sub_232C4F934();
  v14.n128_u64[0] = *(v12 + 136);
  if (*(v12 + 152))
  {
    v14.n128_f64[0] = 0.45;
  }

  v15 = sub_232C500D0(v13, v14);

  sub_232C39390(v15, 1);

  sub_232CE9A20();
  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_232BA73DC();
    *v18 = 0;
    _os_log_impl(&dword_232B02000, v16, v17, "DocumentUnderstanding: Ending handle incremental PoemUpdate", v18, 2u);
    sub_232BA6A84();
  }

  return (v11)(v4, v0);
}

id DUBulkUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUBulkUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUBulkUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DUBulkUpdater.triggerPoemOnBoarding()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232BB0620;

  return v6();
}

id DUDocumentUpdater.init(client:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_documentNamespace];
  *v4 = 0xD000000000000028;
  *(v4 + 1) = 0x8000000232D09E90;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for DUClient());
    v5 = DUClient.init(identifier:)(0xD000000000000010, 0x8000000232D0BB30);
  }

  v7 = OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_client;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_client] = v5;
  updated = type metadata accessor for PoemUpdateHandler();
  v9 = objc_allocWithZone(updated);
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding17PoemUpdateHandler_client] = v5;
  v17.receiver = v9;
  v17.super_class = updated;
  v10 = a1;
  v11 = v5;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_poemUpdateHandler] = objc_msgSendSuper2(&v17, sel_init);
  v12 = *&v2[v7];
  v13 = objc_allocWithZone(type metadata accessor for SpotlightDocumentTaggingUpdateHandler());
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler] = sub_232C5A618(v12);
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightUpdateFetcher] = [objc_allocWithZone(type metadata accessor for CoreSpotlightUpdateFetcher()) init];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DUDocumentUpdater();
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

uint64_t sub_232C6BDA8()
{
  sub_232B26C44();
  v1[6] = v0;
  v2 = sub_232CE9A30();
  v1[7] = v2;
  sub_232B27FBC(v2);
  v1[8] = v3;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C6BE70()
{
  sub_232B482F8();
  v1 = v0[11];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (sub_232C6F000(v3))
  {
    v4 = sub_232BA73DC();
    *v4 = 0;
    sub_232C6F080();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    sub_232BA6A84();
  }

  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];

  v13 = *(v11 + 8);
  v0[12] = v13;
  v13(v9, v10);
  v14 = *(v12 + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightUpdateFetcher);
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  sub_232C6EF9C(v15);

  return sub_232B288A8(0, 1, 0, 1);
}

uint64_t sub_232C6BFA0()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B482C0();
  *v4 = v3;
  v6 = *(v5 + 104);
  *v4 = *v1;
  v3[14] = v7;

  if (v0)
  {
    v9 = v3[10];
    v8 = v3[11];
    v10 = v3[9];

    sub_232B26CF4();

    return v11();
  }

  else
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_232C6C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_232C6F0B8();
  v13 = v12[14];
  v14 = v12[10];
  sub_232CE9A20();

  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  v17 = sub_232C6F000(v16);
  v18 = v12[14];
  if (v17)
  {
    v19 = sub_232BC1F80();
    *v19 = 134217984;
    *(v19 + 4) = sub_232B26B10(v18);

    sub_232C6F080();
    _os_log_impl(v20, v21, v22, v23, v19, 0xCu);
    sub_232BA6A84();
  }

  else
  {
    v24 = v12[14];
  }

  v25 = v12[14];
  v26 = v12[12];
  v27 = v12[10];
  v28 = v12[7];
  v12[15] = (v12[8] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v27, v28);
  v29 = sub_232B26B10(v25);
  v30 = 0;
  v69 = v25 & 0xC000000000000001;
  v31 = v25 & 0xFFFFFFFFFFFFFF8;
  v32 = v25 + 32;
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    v12[16] = v33;
    if (v29 == v30)
    {
      break;
    }

    if (v69)
    {
      v34 = MEMORY[0x2383922C0](v30, v12[14]);
    }

    else
    {
      if (v30 >= *(v31 + 16))
      {
        goto LABEL_29;
      }

      v34 = *(v32 + 8 * v30);
    }

    v35 = v34;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v36 = v12[6];
    v37 = sub_232C6DAC0(v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v33 + 16);
      sub_232B373E4();
      v33 = v41;
    }

    v38 = *(v33 + 16);
    if (v38 >= *(v33 + 24) >> 1)
    {
      sub_232B373E4();
      v33 = v42;
    }

    *(v33 + 16) = v38 + 1;
    v39 = v33 + 16 * v38;
    *(v39 + 32) = v37;
    *(v39 + 40) = v35;
    ++v30;
  }

  v43 = v12[14];

  v44 = *(v33 + 16);
  v12[17] = v44;
  if (v44)
  {
    v45 = v12[6];
    v46 = OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler;
    v12[18] = OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler;
    v12[19] = 0;
    v47 = v12[16];
    if (!v47[2])
    {
      goto LABEL_30;
    }

    v48 = v47[4];
    v12[20] = v48;
    v49 = v47[5];
    v12[21] = v49;
    if (v48)
    {
      v50 = *(v45 + v46);
      v48;
      v51 = v49;
      v52 = sub_232C6F0F4();
      v53 = sub_232C6F0AC(v52);
      *v53 = v54;
      sub_232C6EEB4(v53);
      sub_232C6EFE4();

      sub_232C5AA74();
    }

    else
    {
      v64 = v49;
      sub_232B26D00();
      v65 = swift_task_alloc();
      v66 = sub_232C6F0A0(v65);
      *v66 = v67;
      sub_232C6EEE4(v66);
      sub_232C6EFE4();

      sub_232C6E5A8();
    }
  }

  else
  {

    sub_232C6F10C();

    sub_232C6EF10();
    sub_232C6EFE4();

    v57(v56, v57, v58, v59, v60, v61, v62, v63, v69, a10, a11, a12);
  }
}

uint64_t sub_232C6C408()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B482C0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (v0)
  {
    v9 = *(v3 + 128);
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_232C6C50C()
{
  sub_232B26C7C();
  v2 = *(v0 + 160);

  sub_232C6EF78();
  if (v4)
  {
    v5 = *(v0 + 128);

    sub_232C6F10C();

    sub_232C6EF10();

    v6();
  }

  else
  {
    sub_232C6EF64(v3);
    if (v7)
    {
      __break(1u);
    }

    else
    {
      sub_232C6EF20(v8);
      if (v9)
      {
        sub_232C6F038();
        v11 = v10;
        v12 = v1;
        v13 = sub_232C6F0F4();
        v14 = sub_232C6F0AC(v13);
        *v14 = v15;
        sub_232C6EEB4();

        sub_232C5AA74();
      }

      else
      {
        v16 = v1;
        sub_232B26D00();
        v17 = swift_task_alloc();
        v18 = sub_232C6F0A0(v17);
        *v18 = v19;
        sub_232C6EEE4(v18);

        sub_232C6E5A8();
      }
    }
  }
}

uint64_t sub_232C6C658()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_232C6C754()
{
  sub_232B26C7C();

  sub_232C6EF78();
  if (v3)
  {
    v4 = *(v0 + 128);

    sub_232C6F10C();

    sub_232C6EF10();

    v5();
  }

  else
  {
    sub_232C6EF64(v2);
    if (v6)
    {
      __break(1u);
    }

    else
    {
      sub_232C6EF20(v7);
      if (v8)
      {
        sub_232C6F038();
        v10 = v9;
        v11 = v1;
        v12 = sub_232C6F0F4();
        v13 = sub_232C6F0AC(v12);
        *v13 = v14;
        sub_232C6EEB4();

        sub_232C5AA74();
      }

      else
      {
        v15 = v1;
        sub_232B26D00();
        v16 = swift_task_alloc();
        v17 = sub_232C6F0A0(v16);
        *v17 = v18;
        sub_232C6EEE4();

        sub_232C6E5A8();
      }
    }
  }
}

void sub_232C6C898()
{
  v49 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);
  sub_232CE9A20();
  v4 = v2;
  v5 = v1;
  v6 = sub_232CE9A00();
  v7 = sub_232CEA1C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 168);
    v46 = *(v0 + 96);
    v47 = *(v0 + 120);
    v45 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_232C5A200();
    v14 = sub_232BAD2D4(v12, v13, &v48);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = sub_232CEA7B0();
    v20 = sub_232BAD2D4(v18, v19, &v48);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_232B02000, v6, v7, "Error while handling failed file searchable item %s. Error: %s", v11, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v46(v45, v10);
  }

  else
  {
    v21 = *(v0 + 200);
    v22 = *(v0 + 120);
    v23 = *(v0 + 96);
    v24 = *(v0 + 72);
    v20 = *(v0 + 56);

    v23(v24, v20);
  }

  sub_232C6EF78();
  if (v26)
  {
    v27 = *(v0 + 128);

    sub_232C6F10C();

    sub_232C6EF10();
    sub_232C6EFA8();

    __asm { BRAA            X1, X16 }
  }

  sub_232C6EF64(v25);
  if (v30)
  {
    __break(1u);
  }

  else
  {
    sub_232C6EF20(v31);
    if (v32)
    {
      sub_232C6F038();
      v34 = v33;
      v35 = v20;
      v36 = sub_232C6F0F4();
      v37 = sub_232C6F0AC(v36);
      *v37 = v38;
      sub_232C6EEB4();
      sub_232C6EFA8();

      sub_232C5AA74();
    }

    else
    {
      v40 = v20;
      sub_232B26D00();
      v41 = swift_task_alloc();
      v42 = sub_232C6F0A0(v41);
      *v42 = v43;
      sub_232C6EEE4();
      sub_232C6EFA8();

      sub_232C6E5A8();
    }
  }
}

uint64_t sub_232C6CB8C()
{
  sub_232B26C7C();
  v1 = *(v0 + 160);

  v2 = *(v0 + 184);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  sub_232B26CF4();

  return v6();
}

uint64_t sub_232C6CC14()
{
  sub_232B26C44();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = sub_232CE9A30();
  v1[27] = v5;
  sub_232B27FBC(v5);
  v1[28] = v6;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C6CCF8()
{
  v99 = v0;
  v1 = v0[33];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (sub_232C6F000(v3))
  {
    v4 = sub_232BA73DC();
    *v4 = 0;
    sub_232C6F080();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    sub_232BA6A84();
  }

  v9 = v0[33];
  v10 = v0[27];
  v11 = v0[28];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[23];

  v15 = *(v11 + 8);
  v0[34] = v15;
  v15(v9, v10);
  type metadata accessor for HarvestingDocumentNormalization();
  v16 = static HarvestingDocumentNormalization.normalizeDocument(documentData:documentType:)(v14, v13, v12);
  v0[35] = v16;
  v0[36] = v17;
  v20 = v16;
  sub_232CE9810();
  v21 = MEMORY[0x238391560]();
  if (v21)
  {
    v22 = v0[32];
    sub_232CE9A20();
    v23 = v20;
    v24 = sub_232CE9A00();
    v25 = sub_232CEA1A0();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[32];
    v28 = v0[27];
    v29 = v0[28];
    if (v26)
    {
      v30 = sub_232BC1F80();
      v95 = v28;
      v31 = swift_slowAlloc();
      v98[0] = v31;
      *v30 = 136315138;
      v93 = v27;
      v32 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
      sub_232B13F74();
      v33 = (*&v23[v32] + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74();
      v34 = *v33;
      v35 = v33[1];

      v36 = sub_232BAD2D4(v34, v35, v98);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_232B02000, v24, v25, "(DUDocumentUpdater) Sending Harvesting Update with identifier %s to Spotlight Update Handler", v30, 0xCu);
      sub_232B2040C(v31);
      sub_232B26D28();
      sub_232BA6A84();

      v37 = v95;
      v38 = v93;
    }

    else
    {

      v38 = v27;
      v37 = v28;
    }

    v15(v38, v37);
    v55 = *(v0[26] + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler);
    v56 = swift_task_alloc();
    v0[37] = v56;
    *v56 = v0;
    sub_232C6EF9C(v56);
    sub_232C6EFA8();

    return sub_232C5AA74();
  }

  else
  {
    v39 = v0[31];
    sub_232CE9A20();
    v40 = v20;
    v41 = sub_232CE9A00();
    v42 = sub_232CEA1A0();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[31];
    v45 = v0[27];
    v97 = v0[28];
    if (v43)
    {
      sub_232BC1F80();
      v96 = v44;
      v44 = &OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
      v94 = v45;
      v45 = sub_232C6F01C();
      v98[0] = v45;
      LODWORD(OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID) = 136315138;
      v46 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
      sub_232B13F74();
      v47 = (*&v40[v46] + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74();
      v49 = *v47;
      v48 = v47[1];

      v50 = sub_232BAD2D4(v49, v48, v98);

      *(&OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID + 4) = v50;
      sub_232C6EFC4(&dword_232B02000, v51, v52, "(DUDocumentUpdater) Feature flag to index nonfile documents is off.  Skipping Spotlight updater for document %s");
      sub_232B2040C(v45);
      sub_232BA6A84();
      sub_232B26D28();

      v53 = v96;
      v54 = v94;
    }

    else
    {

      v53 = v44;
      v54 = v45;
    }

    v15(v53, v54);
    v59 = v0[35];
    v60 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74();
    v61 = (*(&v60->isa + v59) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID);
    sub_232B13F74();
    v62 = v61[1];
    if (!v62 || (*v61 == 0xD000000000000013 ? (v63 = v62 == 0x8000000232D09F20) : (v63 = 0), !v63 && (sub_232CEA750() & 1) == 0))
    {
      v82 = v0[29];
      sub_232CE9A20();
      v83 = sub_232CE9A00();
      v84 = sub_232CEA1A0();
      os_log_type_enabled(v83, v84);
      sub_232C6F08C();
      if (v85)
      {
        *sub_232BA73DC() = 0;
        sub_232C6F0D4(&dword_232B02000, v86, v87, "Poem update is only supported for iOS messages");
        sub_232B26D28();
        v88 = v60;
        v60 = v83;
      }

      else
      {
        v88 = v59;
        v59 = v83;
      }

      (v45)(v82, v44);
      sub_232C6F048();

      sub_232C6EF10();
      sub_232C6EFA8();

      __asm { BRAA            X1, X16 }
    }

    v64 = v0[35];
    v65 = v0[30];
    sub_232CE9A20();
    v66 = v64;
    v67 = sub_232CE9A00();
    v68 = sub_232CEA1A0();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v0[34];
    v71 = v0[30];
    v72 = v0[27];
    v73 = v0[28];
    if (v69)
    {
      sub_232BC1F80();
      v74 = sub_232C6F01C();
      v98[0] = v74;
      *v70 = 136315138;
      v75 = (*(&v60->isa + v59) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74();
      v77 = *v75;
      v76 = v75[1];

      v78 = sub_232BAD2D4(v77, v76, v98);

      *(v70 + 4) = v78;
      sub_232C6EFC4(&dword_232B02000, v79, v80, "Sending harvesting update with identifier %s to Poem Update Handler");
      sub_232B2040C(v74);
      sub_232BA6A84();
      sub_232B26D28();
    }

    v81 = sub_232C6EF8C();
    (v70)(v81);
    v89 = *(v0[26] + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_poemUpdateHandler);
    v90 = swift_task_alloc();
    v0[39] = v90;
    *v90 = v0;
    sub_232C6EF38(v90);
    sub_232C6EFA8();

    return sub_232C52E7C(v91);
  }
}

uint64_t sub_232C6D3E8()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 304) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C6D4E4()
{
  v40 = v1;
  v3 = v1[35];
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  sub_232B13F74();
  v5 = (*(&v4->isa + v3) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID);
  sub_232B13F74();
  v6 = v5[1];
  if (v6 && (*v5 == 0xD000000000000013 ? (v7 = v6 == 0x8000000232D09F20) : (v7 = 0), v7 || (sub_232CEA750() & 1) != 0))
  {
    v8 = v1[35];
    v9 = v1[30];
    sub_232CE9A20();
    v10 = v8;
    v11 = sub_232CE9A00();
    v12 = sub_232CEA1A0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[34];
    v15 = v1[30];
    v16 = v1[27];
    v17 = v1[28];
    if (v13)
    {
      sub_232BC1F80();
      v18 = sub_232C6F01C();
      v39 = v18;
      *v14 = 136315138;
      v19 = (*(&v4->isa + v3) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74();
      v21 = *v19;
      v20 = v19[1];

      v22 = sub_232BAD2D4(v21, v20, &v39);

      *(v14 + 4) = v22;
      sub_232C6EFC4(&dword_232B02000, v23, v24, "Sending harvesting update with identifier %s to Poem Update Handler");
      sub_232B2040C(v18);
      sub_232BA6A84();
      sub_232B26D28();

      v25 = sub_232C6EF8C();
      (v14)(v25);
    }

    else
    {

      v35 = sub_232C6EF8C();
      (v14)(v35);
    }

    v36 = *(v1[26] + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_poemUpdateHandler);
    v37 = swift_task_alloc();
    v1[39] = v37;
    *v37 = v1;
    v38 = sub_232C6EF38(v37);

    return sub_232C52E7C(v38);
  }

  else
  {
    v26 = v1[29];
    sub_232CE9A20();
    v27 = sub_232CE9A00();
    v28 = sub_232CEA1A0();
    os_log_type_enabled(v27, v28);
    sub_232C6F08C();
    if (v29)
    {
      *sub_232BA73DC() = 0;
      sub_232C6F0D4(&dword_232B02000, v30, v31, "Poem update is only supported for iOS messages");
      sub_232B26D28();
      v32 = v4;
      v4 = v27;
    }

    else
    {
      v32 = v3;
      v3 = v27;
    }

    v2(v26, v0);
    sub_232C6F048();

    sub_232C6EF10();

    return v33();
  }
}

uint64_t sub_232C6D7FC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 320) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C6D8F8()
{
  sub_232B26C7C();
  v1 = *(v0 + 280);

  sub_232C6F048();

  sub_232C6EF10();

  return v2();
}

uint64_t sub_232C6D980()
{
  sub_232B482F8();
  v1 = *(v0 + 280);

  v2 = *(v0 + 304);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);

  sub_232B26CF4();

  return v8();
}

uint64_t sub_232C6DA20()
{
  sub_232B482F8();
  v1 = *(v0 + 280);

  v2 = *(v0 + 320);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);

  sub_232B26CF4();

  return v8();
}

id sub_232C6DAC0(void *a1)
{
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v77 = v4;
  v78 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v12 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v72 - v14;
  v16 = sub_232CE8C00();
  v17 = sub_232B48F0C(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  v72 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v76 = &v72 - v25;
  v26 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  sub_232B3516C();
  v30 = v28 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v72 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v72 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v72 - v38;
  v74 = a1;
  v40 = [a1 attributeSet];
  v41 = [v40 contentURL];

  if (v41)
  {
    sub_232CE8BB0();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  sub_232B12504(v37, v42, 1, v16);
  sub_232C4A008(v37, v39);
  sub_232B35974(v39, v34);
  if (sub_232B12480(v34, 1, v16) == 1)
  {
    sub_232B359E4(v34);
    sub_232CE9A20();
    v43 = sub_232CE9A00();
    v44 = sub_232CEA1C0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = sub_232BA73DC();
      *v45 = 0;
      _os_log_impl(&dword_232B02000, v43, v44, "There is no path for the searchable item", v45, 2u);
      sub_232BA6A84();
    }

    (*(v77 + 8))(v9, v78);
  }

  else
  {
    v47 = v19;
    v49 = v19 + 32;
    v48 = *(v19 + 32);
    v50 = v76;
    v48(v76, v34, v16);
    type metadata accessor for FilesDocumentIngester();
    static FilesDocumentIngester.ingestDocumentFromFile(fileURL:)();
    v52 = v49 - 16;
    if (v51)
    {
      v53 = v51;
      sub_232C6E8FC(v74);
      (*(v47 + 16))(v30, v50, v16);
      sub_232B12504(v30, 0, 1, v16);
      v54 = v53;
      sub_232CE8D00();
      v55 = sub_232CE8D10();
      sub_232B12504(v15, 0, 1, v55);
      v56 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
      sub_232B48304();
      v46 = DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v57, v58, v59, v53, v30, 1701603686, 0xE400000000000000, v15, 0);

      (*(v47 + 8))(v50, v16);
      sub_232B359E4(v39);
      return v46;
    }

    v61 = v73;
    sub_232CE9A20();
    v62 = v72;
    (*v52)(v72, v50, v16);
    v63 = sub_232CE9A00();
    v64 = sub_232CEA1A0();
    if (os_log_type_enabled(v63, v64))
    {
      sub_232BC1F80();
      v65 = v62;
      v66 = sub_232C6F01C();
      v79 = v66;
      *v52 = 136315138;
      v75 = sub_232CE8B60();
      v68 = v67;
      v69 = *(v47 + 8);
      v69(v65, v16);
      v70 = sub_232BAD2D4(v75, v68, &v79);

      *(v52 + 4) = v70;
      _os_log_impl(&dword_232B02000, v63, v64, "FilesDocumentIngester failed for url: %s", v52, 0xCu);
      sub_232B2040C(v66);
      sub_232BA6A84();
      sub_232B26D28();

      (*(v77 + 8))(v73, v78);
      v69(v76, v16);
    }

    else
    {

      v71 = *(v47 + 8);
      v71(v62, v16);
      (*(v77 + 8))(v61, v78);
      v71(v50, v16);
    }
  }

  sub_232B359E4(v39);
  return 0;
}

uint64_t sub_232C6E0C8()
{
  sub_232B26C44();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  v6 = sub_232CE9A30();
  *(v1 + 40) = v6;
  sub_232B27FBC(v6);
  *(v1 + 48) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232C6E184()
{
  sub_232B26C7C();
  v1 = *(v0 + 81);
  v2 = *(v0 + 80);
  v3 = *(*(v0 + 32) + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightUpdateFetcher);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_232C6E23C;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_232B288A8(v6, v2 & 1, v5, v1 & 1);
}

uint64_t sub_232C6E23C()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B482C0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v8;

  if (v0)
  {
    v9 = *(v3 + 56);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

void sub_232C6E37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_232C6F0B8();
  v13 = v12[9];
  v14 = v12[7];
  sub_232CE9A20();

  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  v17 = sub_232C6F000(v16);
  v18 = v12[9];
  if (v17)
  {
    v19 = sub_232BC1F80();
    *v19 = 134217984;
    *(v19 + 4) = sub_232B26B10(v18);

    sub_232C6F080();
    _os_log_impl(v20, v21, v22, v23, v19, 0xCu);
    sub_232BA6A84();
  }

  else
  {
    v24 = v12[9];
  }

  v25 = v12[9];
  (*(v12[6] + 8))(v12[7], v12[5]);
  v26 = sub_232B26B10(v25);
  v27 = 0;
  v28 = v25 & 0xC000000000000001;
  v29 = v25 & 0xFFFFFFFFFFFFFF8;
  v30 = v25 + 32;
  v31 = MEMORY[0x277D84F90];
  while (v26 != v27)
  {
    if (v28)
    {
      v32 = MEMORY[0x2383922C0](v27, v12[9]);
    }

    else
    {
      if (v27 >= *(v29 + 16))
      {
        goto LABEL_22;
      }

      v32 = *(v30 + 8 * v27);
    }

    v33 = v32;
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v35 = v12[4];
    v36 = sub_232C6DAC0(v32);
    if (v36)
    {
      v37 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v31 + 16);
        sub_232B36248();
        v31 = v42;
      }

      v38 = *(v31 + 16);
      v39 = v38 + 1;
      if (v38 >= *(v31 + 24) >> 1)
      {
        a9 = v38 + 1;
        sub_232B36248();
        v39 = v38 + 1;
        v31 = v43;
      }

      *(v31 + 16) = v39;
      v40 = v31 + 16 * v38;
      *(v40 + 32) = v37;
      *(v40 + 40) = v33;
      v27 = v34;
    }

    else
    {

      ++v27;
    }
  }

  v44 = v12[9];
  v45 = v12[7];

  v46 = v12[1];
  sub_232C6EFE4();

  v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_232C6E5A8()
{
  sub_232B26C44();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_232CE9A30();
  v1[4] = v3;
  sub_232B27FBC(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C6E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_232C6F0B8();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = v20[6];
  v24 = v20[2];
  sub_232CE9A20();
  v25 = v24;
  v26 = sub_232CE9A00();
  v27 = sub_232CEA1C0();

  v28 = os_log_type_enabled(v26, v27);
  v30 = v20[5];
  v29 = v20[6];
  v31 = v20[4];
  if (v28)
  {
    v32 = v20[2];
    v33 = sub_232BC1F80();
    v34 = swift_slowAlloc();
    a9 = v34;
    *v33 = 136315138;
    v35 = sub_232C5A200();
    v37 = sub_232BAD2D4(v35, v36, &a9);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_232B02000, v26, v27, "Unable to construct a document update for %s", v33, 0xCu);
    sub_232B2040C(v34);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  (*(v30 + 8))(v29, v31);
  v38 = *(v20[3] + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler);
  v39 = swift_task_alloc();
  v20[7] = v39;
  *v39 = v20;
  v39[1] = sub_232C6E800;
  v40 = v20[2];
  sub_232C6EFE4();

  return sub_232C5A788(v41, v42, v43, v44, v45);
}

uint64_t sub_232C6E800()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B26CF4();

  return v6();
}

char *sub_232C6E8FC(void *a1)
{
  v2 = sub_232C31B34(a1, &selRef_bundleID);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_232C31B34(a1, &selRef_domainIdentifier);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = [a1 uniqueIdentifier];
  v24 = sub_232CE9D50();
  v12 = v11;

  sub_232CEA4F0();

  MEMORY[0x238391C30](v4, v5);
  MEMORY[0x238391C30](24415, 0xE200000000000000);
  MEMORY[0x238391C30](v8, v9);
  MEMORY[0x238391C30](24415, 0xE200000000000000);
  MEMORY[0x238391C30](v24, v12);
  v13 = *(v25 + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_documentNamespace);
  v14 = *(v25 + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_documentNamespace + 8);
  v15 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());

  v16 = DUDocumentIdentifier.init(documentNamespace:documentID:)(v13, v14, 0xD000000000000013, 0x8000000232D0BC20);
  v17 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
  sub_232C6F064();
  v18 = v17[1];
  *v17 = v4;
  v17[1] = v5;

  v19 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
  sub_232C6F064();
  v20 = v19[1];
  *v19 = v8;
  v19[1] = v9;

  v21 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
  sub_232C6F064();
  v22 = v21[1];
  *v21 = v24;
  v21[1] = v12;

  return v16;
}

id DUDocumentUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DUDocumentUpdater.handleFileUpdateNotification()()
{
  sub_232B26C7C();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  sub_232C6EF9C(v4);

  return v6();
}

uint64_t dispatch thunk of DUDocumentUpdater.handleHarvestingEventUpdate(serializedDocument:documentType:)()
{
  sub_232B482F8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  sub_232C6EF9C(v10);

  return v12(v7, v5, v3);
}

uint64_t sub_232C6EEE4(uint64_t a1)
{
  *(a1 + 8) = sub_232C6C658;
  v3 = *(v2 + 48);
  return v1;
}

uint64_t sub_232C6EF10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_232C6EF20(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  *(v2 + 160) = *(v3 + 32);
  *(v2 + 168) = *(v3 + 40);
}

void sub_232C6EFC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_232C6F000(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C6F01C()
{

  return swift_slowAlloc();
}

uint64_t sub_232C6F048()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
}

uint64_t sub_232C6F064()
{

  return swift_beginAccess();
}

void sub_232C6F08C()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
}

void sub_232C6F0D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_232C6F0F4()
{

  return swift_task_alloc();
}

uint64_t sub_232C6F10C()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
}

uint64_t sub_232C6F124(uint64_t a1, uint64_t a2)
{
  v5 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v6 = sub_232B2D120(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232C79D04();
  v9 = sub_232CEA090();
  sub_232C79D94(v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_232CFF880;
  v11[5] = v10;
  v12 = sub_232C79C54();
  sub_232C784D4(v12, v13, v2, v14, v15);
}

uint64_t TextUnderstandingManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_232CEA820();
  MEMORY[0x2383925C0](v1);
  return sub_232CEA850();
}

id sub_232C6F2A4()
{
  result = [objc_allocWithZone(type metadata accessor for TextUnderstandingManager()) init];
  qword_2814E2328 = result;
  return result;
}

id TextUnderstandingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TextUnderstandingManager.shared.getter()
{
  if (qword_2814E2320 != -1)
  {
    swift_once();
  }

  v1 = qword_2814E2328;

  return v1;
}

id TextUnderstandingManager.init()()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_foundInEventsQueue;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___updater] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___bulkupdater] = 0;
  sub_232C78904(0xD000000000000028, 0x8000000232D0BC40, *&v0[v1]);
  [*&v0[v1] setMaxConcurrentOperationCount_];
  [*&v0[v1] setQualityOfService_];
  sub_232C78904(0xD000000000000036, 0x8000000232D0BC70, *&v0[v2]);
  [*&v0[v2] setMaxConcurrentOperationCount_];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TextUnderstandingManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232C6F4D8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client;
  v2 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for DUClient());
    v6 = DUClient.init(identifier:)(0xD000000000000030, 0x8000000232D0BF10);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_232C6F5CC(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(id))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    v10 = sub_232C6F4D8();
    v11 = objc_allocWithZone(a2(0));
    v12 = a3(v10);
    v13 = *(v9 + v4);
    *(v9 + v4) = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

void sub_232C6F664(uint64_t a1, void (**a2)(void))
{
  v3 = sub_232CE9A30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9A20();
  v8 = sub_232CE9A00();
  v9 = sub_232CEA1A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_232B02000, v8, v9, "Received ping \n", v10, 2u);
    MEMORY[0x238393870](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  a2[2](a2);
  _Block_release(a2);
}

uint64_t sub_232C6F7BC(uint64_t (*a1)(uint64_t))
{
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232C799AC();
  v10 = sub_232CE9A00();
  sub_232CEA1A0();
  sub_232C79CF8();
  if (os_log_type_enabled(v10, v11))
  {
    sub_232BAE0AC();
    v12 = swift_slowAlloc();
    sub_232BD7228(v12);
    sub_232C79C30(&dword_232B02000, v10, v2, "Received ping \n");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v13 = (*(v7 + 8))(v1, v4);
  return a1(v13);
}

void sub_232C6F8E8(uint64_t a1, void (**a2)(void))
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  sub_232CE9A20();
  v12 = sub_232CE9A00();
  v13 = sub_232CEA1A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_232B02000, v12, v13, "DocumentUnderstanding: triggerSpotlightFileUpdateNoArgs in manager called", v14, 2u);
    MEMORY[0x238393870](v14, -1, -1);
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v16 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_232C7994C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232BB4000;
    aBlock[3] = &unk_2848143B0;
    v18 = _Block_copy(aBlock);

    [v16 addOperationWithBlock_];
    _Block_release(v18);
  }

  else
  {
    sub_232CE9A20();
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_232B02000, v19, v20, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping triggerSpotlightFileUpdateNoArgs", v21, 2u);
      MEMORY[0x238393870](v21, -1, -1);
    }

    v15(v8, v4);
  }

  a2[2](a2);
  _Block_release(a2);
}

void sub_232C6FBCC()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v5 = sub_232CE9A30();
  v6 = sub_232B48F0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232C79BD4();
  MEMORY[0x28223BE20](v11);
  sub_232C31C18();
  v12 = sub_232CE9A00();
  v13 = sub_232CEA1A0();
  if (os_log_type_enabled(v12, v13))
  {
    sub_232BAE0AC();
    *swift_slowAlloc() = 0;
    sub_232C79D54(&dword_232B02000, v14, v15, "DocumentUnderstanding: triggerSpotlightFileUpdateNoArgs in manager called");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v16 = *(v8 + 8);
  v16(v0, v5);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v17 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    sub_232BC1ECC();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25[4] = sub_232C7898C;
    v25[5] = v18;
    sub_232C52900();
    v25[1] = 1107296256;
    sub_232C79980();
    v25[2] = v19;
    v25[3] = &unk_284813FB0;
    v20 = _Block_copy(v25);

    [v17 addOperationWithBlock_];
    _Block_release(v20);
  }

  else
  {
    sub_232CE9A20();
    v22 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C79CF8();
    if (os_log_type_enabled(v22, v23))
    {
      sub_232BAE0AC();
      v24 = swift_slowAlloc();
      sub_232BD7228(v24);
      sub_232C79C30(&dword_232B02000, v22, v2, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping triggerSpotlightFileUpdateNoArgs");
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v21 = (v16)(v1, v5);
  }

  v4(v21);
  sub_232B20A00();
}

uint64_t sub_232C6FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_232CE9A30();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C6FED0, 0, 0);
}

uint64_t sub_232C6FED0()
{
  sub_232B26C44();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 80) = sub_232C6F564();

    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    sub_232C6EF9C(v3);

    return sub_232C6BDA8();
  }

  else
  {
    sub_232C79CD4();

    sub_232B26CF4();

    return v5();
  }
}

uint64_t sub_232C6FFB4()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C700B4()
{
  sub_232C79DE0();
  sub_232B482F8();
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  sub_232CE9A20();
  v4 = v2;
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1C0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  if (v7)
  {
    sub_232BC1F80();
    v9 = sub_232C79C7C();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    sub_232C79B20();
    _os_log_impl(v12, v13, v14, v15, v1, 0xCu);
    sub_232B267AC(v9, &qword_27DDC6FD0, &unk_232CFA240);
    v16 = sub_232C79A24();
    MEMORY[0x238393870](v16);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {
  }

  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_232C79CD4();

  sub_232B26CF4();
  sub_232C79DCC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void sub_232C70228(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_232C7029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = sub_232CE9A30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = aBlock - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  _Block_copy(a5);
  sub_232CE9A20();
  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_232B02000, v16, v17, "DocumentUnderstanding - Server addOrUpdateSearchableItems called", v18, 2u);
    MEMORY[0x238393870](v18, -1, -1);
  }

  v19 = *(v8 + 8);
  v19(v14, v7);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v20 = *(a4 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_232C79978;
    v22[4] = v15;
    aBlock[4] = sub_232C7997C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232BB4000;
    aBlock[3] = &unk_284814388;
    v23 = _Block_copy(aBlock);

    [v20 addOperationWithBlock_];
    _Block_release(v23);
  }

  else
  {
    sub_232CE9A20();
    v24 = sub_232CE9A00();
    v25 = sub_232CEA1A0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_232B02000, v24, v25, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping addOrUpdateSearchableItems", v26, 2u);
      MEMORY[0x238393870](v26, -1, -1);
    }

    v19(v11, v7);
    a5[2](a5, 0);
  }

  _Block_release(a5);
}

void sub_232C705E8()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_232CE9A30();
  v8 = sub_232B48F0C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232C79BD4();
  MEMORY[0x28223BE20](v13);
  sub_232C31C18();
  v14 = sub_232CE9A00();
  v15 = sub_232CEA1A0();
  if (os_log_type_enabled(v14, v15))
  {
    sub_232BAE0AC();
    *swift_slowAlloc() = 0;
    sub_232C79D54(&dword_232B02000, v16, v17, "DocumentUnderstanding - Server addOrUpdateSearchableItems called");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v18 = *(v10 + 8);
  v18(v0, v7);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v19 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    sub_232BC1ECC();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v6;
    v21[4] = v4;
    v27[4] = sub_232C789DC;
    v27[5] = v21;
    sub_232C52900();
    v27[1] = 1107296256;
    sub_232C79980();
    v27[2] = v22;
    v27[3] = &unk_284814000;
    v23 = _Block_copy(v27);

    [v19 addOperationWithBlock_];
    _Block_release(v23);
  }

  else
  {
    sub_232CE9A20();
    v24 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C79CF8();
    if (os_log_type_enabled(v24, v25))
    {
      sub_232BAE0AC();
      v26 = swift_slowAlloc();
      sub_232BD7228(v26);
      sub_232C79C30(&dword_232B02000, v24, v2, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping addOrUpdateSearchableItems");
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v18(v1, v7);
    v6(0);
  }

  sub_232B20A00();
}

void sub_232C70858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = dispatch_semaphore_create(0);
  v10 = sub_232CEA090();
  sub_232B12504(v8, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v9;

  v14 = v9;
  sub_232B23FB4(0, 0, v8, &unk_232CFF930, v13);

  sub_232CEA280();
}

uint64_t sub_232C709BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_232C709E0, 0, 0);
}

uint64_t sub_232C709E0()
{
  sub_232B26C44();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = sub_232C6F564();

    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    sub_232C6EF9C(v3);

    return sub_232C6BDA8();
  }

  else
  {
    v5 = *(v0 + 56);
    (*(v0 + 48))();
    v6 = *(v0 + 64);
    sub_232CEA290();
    sub_232B26CF4();

    return v7();
  }
}

uint64_t sub_232C70ACC()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C70BCC()
{
  sub_232B26C44();
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 64);
  sub_232CEA290();
  sub_232B26CF4();

  return v3();
}

uint64_t sub_232C70C34()
{
  sub_232B26C7C();
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = v1;
  v3(v1);

  v5 = *(v0 + 64);
  sub_232CEA290();
  sub_232B26CF4();

  return v6();
}

void sub_232C70D94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_232CE8B20();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_232C70DF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v40 = a1;
  v41 = a2;
  v8 = sub_232CE9A30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  sub_232CE9A20();
  v17 = sub_232CE9A00();
  v18 = sub_232CEA1A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = v9;
    v20 = v12;
    v21 = v8;
    v22 = a5;
    v23 = v16;
    v24 = a3;
    v25 = a4;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_232B02000, v17, v18, "(TextUnderstandingManager) addSerializedDocument called", v19, 2u);
    v27 = v26;
    a4 = v25;
    a3 = v24;
    v16 = v23;
    a5 = v22;
    v8 = v21;
    v12 = v20;
    v9 = v39;
    MEMORY[0x238393870](v27, -1, -1);
  }

  v28 = *(v9 + 8);
  v28(v15, v8);
  sub_232CE9810();
  if ((MEMORY[0x238391520]() & 1) != 0 || a3 == 1)
  {
    v32 = *(a4 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v36 = v40;
    v35 = v41;
    v34[2] = v33;
    v34[3] = v36;
    v34[4] = v35;
    v34[5] = a3;
    v34[6] = sub_232C78F6C;
    v34[7] = v16;
    aBlock[4] = sub_232C79948;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232BB4000;
    aBlock[3] = &unk_284814310;
    v37 = _Block_copy(aBlock);
    sub_232B41B94(v36, v35);

    [v32 addOperationWithBlock_];
    _Block_release(v37);
  }

  else
  {
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_232B02000, v29, v30, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off, and document type is not messages.  Skipping addSerializedDocument", v31, 2u);
      MEMORY[0x238393870](v31, -1, -1);
    }

    v28(v12, v8);
    a5[2](a5, 0);
  }

  _Block_release(a5);
}

void sub_232C711A0()
{
  sub_232B35110();
  v39 = v1;
  v40 = v2;
  v4 = v3;
  v38 = v5;
  v7 = v6;
  v8 = sub_232CE9A30();
  v9 = sub_232B48F0C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  sub_232C31C18();
  v17 = sub_232CE9A00();
  v18 = sub_232CEA1A0();
  if (os_log_type_enabled(v17, v18))
  {
    sub_232BAE0AC();
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_232B02000, v17, v18, "(TextUnderstandingManager) addSerializedDocument called", v19, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v20 = *(v11 + 8);
  v20(v0, v8);
  sub_232CE9810();
  if ((MEMORY[0x238391520]() & 1) != 0 || v4 == 1)
  {
    v28 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    sub_232BC1ECC();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v7;
    v31 = v39;
    v30[4] = v38;
    v30[5] = v4;
    v32 = v40;
    v30[6] = v31;
    v30[7] = v32;
    v41[4] = sub_232C789E8;
    v41[5] = v30;
    sub_232C52900();
    v41[1] = 1107296256;
    sub_232C79980();
    v41[2] = v33;
    v41[3] = &unk_284814050;
    v34 = _Block_copy(v41);
    v35 = sub_232B37B20();
    sub_232B41B94(v35, v36);

    [v28 addOperationWithBlock_];
    _Block_release(v34);
  }

  else
  {
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    v22 = sub_232CEA1A0();
    if (sub_232C79B04(v22))
    {
      sub_232BAE0AC();
      v23 = swift_slowAlloc();
      *v23 = 0;
      sub_232C79B20();
      _os_log_impl(v24, v25, v26, v27, v23, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v20(v15, v8);
    v39(0);
  }

  sub_232B20A00();
}

void sub_232C71458(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = dispatch_semaphore_create(0);
  v16 = sub_232CEA090();
  sub_232B12504(v14, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  v19[10] = v15;
  sub_232B41B94(a2, a3);

  v20 = v15;
  sub_232B23FB4(0, 0, v14, &unk_232CFF920, v19);

  sub_232CEA280();
}

uint64_t sub_232C715EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_232C71620, 0, 0);
}

uint64_t sub_232C71620()
{
  sub_232B26C44();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 96) = sub_232C6F564();

    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_232C71718;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    sub_232BC1EF8(*(v0 + 48));

    return sub_232C6CC14();
  }

  else
  {
    v7 = *(v0 + 80);
    (*(v0 + 72))();
    v8 = *(v0 + 88);
    sub_232CEA290();
    sub_232B26CF4();

    return v9();
  }
}

uint64_t sub_232C71718()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C71818()
{
  sub_232B26C44();
  v1 = *(v0 + 80);
  (*(v0 + 72))(0);
  v2 = *(v0 + 88);
  sub_232CEA290();
  sub_232B26CF4();

  return v3();
}

uint64_t sub_232C71880()
{
  sub_232B26C7C();
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = v1;
  v3(v1);

  v5 = *(v0 + 88);
  sub_232CEA290();
  sub_232B26CF4();

  return v6();
}

void sub_232C719CC()
{
  sub_232B35110();
  v2 = v1;
  v23 = v4;
  v24 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_232CE9A30();
  v10 = sub_232B48F0C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232C799AC();
  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  if (os_log_type_enabled(v15, v16))
  {
    sub_232BAE0AC();
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_232B02000, v15, v16, "(TextUnderstandingManager) foundInEventsResponseForSerializedDocument called", v17, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v12 + 8))(v0, v9);
  v18 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_foundInEventsQueue);
  sub_232BC1ECC();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v23;
  v20[4] = v2;
  v20[5] = v8;
  v20[6] = v6;
  v20[7] = v24;
  v25[4] = sub_232C78A00;
  v25[5] = v20;
  sub_232C52900();
  v25[1] = 1107296256;
  sub_232C79980();
  v25[2] = v21;
  v25[3] = &unk_2848140A0;
  v22 = _Block_copy(v25);

  sub_232B41B94(v8, v6);

  [v18 addOperationWithBlock_];
  _Block_release(v22);
  sub_232B20A00();
}

void sub_232C71BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = dispatch_semaphore_create(0);
  v16 = sub_232CEA090();
  sub_232B12504(v14, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  v19[10] = v15;

  sub_232B41B94(a4, a5);
  v20 = v15;
  sub_232B23FB4(0, 0, v14, &unk_232CFF910, v19);

  sub_232CEA280();
}

uint64_t sub_232C71D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[94] = v11;
  v8[93] = v10;
  v8[92] = a8;
  v8[91] = a7;
  v8[90] = a6;
  v8[89] = a5;
  v8[88] = a4;
  return MEMORY[0x2822009F8](sub_232C71D8C, 0, 0);
}

uint64_t sub_232C71D8C()
{
  sub_232BAE1F8();
  receiver = v0[44].receiver;
  sub_232B13F74();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[47].super_class = Strong;
  if (Strong)
  {
    super_class = v0[46].super_class;
    v4 = v0[46].receiver;
    v5 = v0[45].super_class;
    v6 = sub_232C6F4D8();
    v7 = type metadata accessor for DURequestContentType();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2048;
    v0[43].receiver = v8;
    v0[43].super_class = v7;
    v9 = objc_msgSendSuper2(v0 + 43, sel_init);
    v10 = objc_allocWithZone(type metadata accessor for DURequest());
    v0[48].receiver = DURequest.init(client:contentType:strategies:)(v6, v9, 0);
    type metadata accessor for HarvestingDocumentNormalization();
    v11 = static HarvestingDocumentNormalization.normalizeDocument(documentData:documentType:)(v5, v4, super_class);
    v0[48].super_class = v11;
    v20 = v11;

    v22 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
    sub_232B13F74();
    v23 = *(v20 + v22);
    v0[49].receiver = v23;
    v24 = v23;
    v25 = swift_task_alloc();
    v0[49].super_class = v25;
    *v25 = v0;
    sub_232C6EF9C(v25);

    return sub_232B22E24();
  }

  else
  {
    v12 = v0[45].receiver;
    v13 = v0[44].super_class;
    v14 = [objc_allocWithZone(MEMORY[0x277D06968]) init];
    sub_232C78B18();
    sub_232B4ACD4();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = sub_232BA5FEC();
    v13(v17);

    sub_232B26CF4();

    return v18();
  }
}

uint64_t sub_232C7201C()
{
  sub_232B26C7C();
  v2 = *v1;
  sub_232B51338();
  *v4 = v3;
  v5 = *(v2 + 792);
  v6 = *v1;
  sub_232BC1BAC();
  *v7 = v6;
  *(v9 + 800) = v8;
  *(v9 + 808) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_232C72144()
{
  sub_232C79B8C();
  v1 = v0[100];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
  sub_232B13F74();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F74();
    v96 = *(v3 + v4);
    v5 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
    sub_232B13F74();
    v6 = *&v5[v3];
    v7 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
    sub_232BCA1AC();
    v8 = v7[1];
    v93 = *v7;
    v9 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
    sub_232B13F74();
    v10 = *&v9[v3];
    v11 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
    sub_232BCA1AC();
    v12 = v11[1];
    v90 = *v11;
    v13 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
    sub_232B13F74();
    v14 = *&v13[v3];
    v15 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress);
    sub_232BCA1AC();
    v16 = v15[1];
    v89 = *v15;
    v17 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F74();
    v18 = *(v3 + v17);

    if (v18)
    {

      v19 = v3;
      v20 = v6;

      v21 = v10;

      v22 = v14;
      sub_232BC2848(v18);
      v87 = v23;
    }

    else
    {
      v26 = v3;
      v27 = v6;

      v28 = v10;

      v29 = v14;
      v87 = 0;
    }

    v30 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
    sub_232B13F74();
    v31 = *&v30[v3];
    v32 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
    sub_232BCA1AC();
    v85 = *v32;
    v102 = v32[1];
    v33 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F74();
    v34 = *(v3 + v33);
    v94 = v8;
    v95 = v6;
    v91 = v12;
    v92 = v10;
    v88 = v16;
    v86 = v31;

    if (v34)
    {

      v35 = v31;
      sub_232BC2848(v34);
      v79 = v36;
    }

    else
    {
      v37 = v31;
      v79 = 0;
    }

    v84 = v0[97];
    v82 = v0[100];
    v83 = v0[96];
    v80 = v0[89];
    v81 = v0[90];
    v38 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
    sub_232B13F74();
    v101 = *&v38[v3];
    v39 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
    sub_232BCA1AC();
    v78 = *v39;
    v100 = v39[1];
    v40 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
    sub_232B13F74();
    v99 = *&v40[v3];
    v41 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
    sub_232BCA1AC();
    v77 = *v41;
    v98 = v41[1];
    v42 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
    sub_232B13F74();
    v97 = *&v42[v3];
    v43 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
    sub_232BCA1AC();
    v44 = v43[1];
    v76 = *v43;
    v45 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
    sub_232B13F74();
    v46 = *&v45[v3];
    v47 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
    sub_232BCA1AC();
    v48 = v47[1];
    v75 = *v47;
    v49 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
    sub_232B13F74();
    v73 = *&v49[v3];
    v50 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
    sub_232BCA1AC();
    v51 = v50[1];
    v74 = *v50;
    v52 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
    sub_232B13F74();
    v53 = *&v52[v3];
    v54 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
    sub_232BCA1AC();
    v55 = v54[1];
    v72 = *v54;
    v56 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
    sub_232B13F74();
    v71 = *&v56[v3];
    v57 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName);
    sub_232BCA1AC();
    v69 = v57[1];
    v70 = *v57;
    objc_allocWithZone(MEMORY[0x277D06968]);

    v58 = v101;

    v59 = v99;

    v60 = v97;

    v61 = v46;

    v62 = v73;

    v63 = v53;

    v64 = v71;
    v25 = sub_232C77D9C(v96, v95, v93, v94, v92, v90, v91, v14, v89, v88, v87, v86, v85, v102, v79, v101, v78, v100, v99, v77, v98, v97, v76, v44, v46, v75, v48, v73, v74, v51, v53, v72, v55, v71, v70, v69);
    v80(v25, 0);

    v24 = v84;
  }

  else
  {
    v24 = v0[100];
    v3 = v0[97];
    v25 = v0[96];
  }

  v65 = v0[95];
  v66 = v0[94];
  sub_232CEA290();

  sub_232B26CF4();
  sub_232C6EFE4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_232C72748()
{
  sub_232B26C7C();
  v1 = *(v0 + 768);

  v2 = *(v0 + 808);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = [objc_allocWithZone(MEMORY[0x277D06968]) init];
  v6 = v2;
  v4(v5, v2);

  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  sub_232CEA290();

  sub_232B26CF4();

  return v9();
}

void sub_232C728F4()
{
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232C799AC();
  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (os_log_type_enabled(v7, v8))
  {
    sub_232BAE0AC();
    v9 = swift_slowAlloc();
    sub_232C31D84(v9);
    sub_232C79C48();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    v16 = sub_232C79A24();
    MEMORY[0x238393870](v16);
  }

  v17 = *(v4 + 8);
  v18 = sub_232BC1E48();
  v19(v18);
  v20 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
  sub_232BC1ECC();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_232C78A18;
  v29 = v21;
  sub_232C79AE4();
  v25 = 1107296256;
  sub_232C79980();
  v26 = v22;
  v27 = &unk_2848140C8;
  v23 = _Block_copy(aBlock);

  [v20 addOperationWithBlock_];
  _Block_release(v23);
}