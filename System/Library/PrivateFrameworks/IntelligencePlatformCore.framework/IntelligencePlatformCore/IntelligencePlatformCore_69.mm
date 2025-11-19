uint64_t sub_1C4A3ECD4()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 248);
  v7 = *v0;
  *(*v0 + 256) = v2;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4A3EDC8()
{
  v3 = *(v1 + 256);
  if (!v3)
  {
    v9 = sub_1C4412190();
    v2(v9);
    (v2)(0, v0);
    *(v1 + 88) = 0;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
LABEL_7:
    v11 = *(v1 + 265);
    v55 = *(v1 + 200);
    v59 = *(v1 + 208);
    v12 = *(v1 + 176);
    v14 = *(v1 + 136);
    v13 = *(v1 + 144);
    v15 = *(v1 + 120);
    v16 = *(v1 + 128);
    v18 = *(v1 + 96);
    v17 = *(v1 + 104);
    sub_1C4A3F618(v1 + 56);
    v19 = *(v16 + 32);
    v19(v13, v12, v15);
    v55(v14, v17, v15);
    if (v11 == 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = v11;
    }

    v19(v18, v13, v15);
    v21 = type metadata accessor for ActivityInterval();
    v19(v18 + *(v21 + 20), v14, v15);
    *(v18 + *(v21 + 24)) = v20;
    goto LABEL_15;
  }

  sub_1C4505A5C(*(v1 + 256), v1 + 56);

  if (!*(v1 + 80))
  {
    v10 = sub_1C4412190();
    v2(v10);
    (v2)(v3, v0);
    goto LABEL_7;
  }

  v4 = *(v1 + 265);
  v5 = *(v1 + 216);
  sub_1C443FA18((v1 + 56), v1 + 16);
  v6 = sub_1C4A3FA9C((v1 + 16));
  v8 = sub_1C4A3E37C(v6, v7);

  if (v4 == 3)
  {
    v58 = 0;
LABEL_13:
    v54 = *(v1 + 200);
    v57 = *(v1 + 208);
    v33 = *(v1 + 192);
    v34 = *(v1 + 176);
    v36 = *(v1 + 152);
    v35 = *(v1 + 160);
    v37 = *(v1 + 120);
    v38 = *(v1 + 128);
    v28 = *(v1 + 96);
    v52 = *(v1 + 104);
    v39 = *(v38 + 8);
    v39(*(v1 + 184), v37);
    v39(v33, v37);
    v40 = *(v38 + 32);
    v40(v35, v34, v37);
    v54(v36, v52, v37);
    v40(v28, v35, v37);
    v32 = type metadata accessor for ActivityInterval();
    v40(v28 + *(v32 + 20), v36, v37);
    goto LABEL_14;
  }

  v22 = sub_1C4686D90(v8, *(v1 + 265));
  v58 = *(v1 + 265);
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  v53 = *(v1 + 200);
  v56 = *(v1 + 208);
  v24 = *(v1 + 184);
  v23 = *(v1 + 192);
  v25 = *(v1 + 176);
  v26 = *(v1 + 120);
  v27 = *(v1 + 128);
  v28 = *(v1 + 96);
  v51 = *(v1 + 104);
  v29 = *(v1 + 40);
  v30 = *(v1 + 48);
  sub_1C4409678((v1 + 16), v29);
  (*(v30 + 8))(v29, v30);
  v31 = *(v27 + 8);
  v31(v25, v26);
  v31(v24, v26);
  v31(v23, v26);
  v32 = type metadata accessor for ActivityInterval();
  v53(v28 + *(v32 + 20), v51, v26);
LABEL_14:
  *(v28 + *(v32 + 24)) = v58;
  sub_1C440962C((v1 + 16));
LABEL_15:
  v42 = *(v1 + 184);
  v41 = *(v1 + 192);
  v44 = *(v1 + 168);
  v43 = *(v1 + 176);
  v46 = *(v1 + 152);
  v45 = *(v1 + 160);
  v48 = *(v1 + 136);
  v47 = *(v1 + 144);

  v49 = *(v1 + 8);

  return v49();
}

uint64_t sub_1C4A3F194(uint64_t a1)
{
  sub_1C4A3F848();
  v2 = sub_1C4F00F28();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v8 << 6);
      v11 = *(*(a1 + 56) + 8 * v10);
      v12 = sub_1C4A3E37C(*(*(a1 + 48) + 16 * v10), *(*(a1 + 48) + 16 * v10 + 8));
      sub_1C44239FC(v7);
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1C457AA2C(v12);
      if (__OFADD__(*(v2 + 16), (v14 & 1) == 0))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v7 = v13;
      v15 = v14;
      sub_1C456902C(&qword_1EC0C1B70, &qword_1C4F46038);
      if (sub_1C4F02458())
      {
        v16 = sub_1C457AA2C(v12);
        if ((v15 & 1) != (v17 & 1))
        {
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v7 = v16;
      }

      if ((v15 & 1) == 0)
      {
        *(v2 + 8 * (v7 >> 6) + 64) |= 1 << v7;
        *(*(v2 + 48) + v7) = v12;
        *(*(v2 + 56) + 8 * v7) = 0;
        v18 = *(v2 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_45;
        }

        *(v2 + 16) = v20;
      }

      v5 &= v5 - 1;
      *(*(v2 + 56) + 8 * v7) = v11 + *(*(v2 + 56) + 8 * v7);
      v7 = sub_1C446368C;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  v21 = 1 << *(v2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v2 + 64);
  if (v23)
  {
    v24 = 0;
    v25 = __clz(__rbit64(v23));
    v26 = (v23 - 1) & v23;
    v27 = (v21 + 63) >> 6;
LABEL_25:
    v30 = *(v2 + 48);
    v31 = *(v2 + 56);
    v32 = *(v30 + v25);
    v33 = *(v31 + 8 * v25);
    if (!v26)
    {
      goto LABEL_27;
    }

    do
    {
      v34 = v24;
LABEL_31:
      v35 = __clz(__rbit64(v26)) | (v34 << 6);
      v26 &= v26 - 1;
      if (v33 < *(v31 + 8 * v35))
      {
        v32 = *(v30 + v35);
        v33 = *(v31 + 8 * v35);
      }
    }

    while (v26);
LABEL_27:
    while (1)
    {
      v34 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_43;
      }

      if (v34 >= v27)
      {
        v36 = COERCE_DOUBLE(sub_1C465BFDC(2, v2));
        v38 = v37;

        sub_1C44239FC(v7);
        if (v38 & 1 | (v36 < 0.5))
        {
          return v32;
        }

        else
        {
          return 2;
        }
      }

      v26 = *(v2 + 64 + 8 * v34);
      ++v24;
      if (v26)
      {
        v24 = v34;
        goto LABEL_31;
      }
    }
  }

  v28 = 0;
  v27 = (v21 + 63) >> 6;
  while (1)
  {
    v24 = v23 + 1;
    if (v23 + 1 >= v27)
    {
      break;
    }

    v29 = *(v2 + 8 * v23 + 72);
    v28 += 64;
    ++v23;
    if (v29)
    {
      v26 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) + v28;
      goto LABEL_25;
    }
  }

  if (qword_1EDDFECB0 != -1)
  {
LABEL_46:
    sub_1C43FFB88();
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDDFECB8);
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CF8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1C43F8000, v41, v42, "activityIntervalDurations distribution was empty", v43, 2u);
    sub_1C43FBE2C();
  }

  sub_1C44239FC(v7);
  return 3;
}

uint64_t MotionStateActivityIntervalProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MotionStateActivityIntervalProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A3F618(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C1B60, &qword_1C4F45FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of MotionStateActivityIntervalProvider.currentActivityInterval(at:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C480BB30;

  return v10(a1, a2);
}

uint64_t sub_1C4A3F7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4A3F848()
{
  result = qword_1EC0C1B68;
  if (!qword_1EC0C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1B68);
  }

  return result;
}

void sub_1C4A3F8C0()
{
  v1 = [v0 startDate];
  sub_1C4EF9C78();
}

unint64_t sub_1C4A3FA9C(void *a1)
{
  v2 = 0xD000000000000014;
  v3 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v4 = *(v3 + 32);
  v5 = sub_1C4408DF8();
  if ((v6(v5) & 1) == 0)
  {
    sub_1C44121A4();
    v8 = *(v7 + 56);
    v9 = sub_1C4408DF8();
    if ((v10(v9) & 1) == 0)
    {
      sub_1C44121A4();
      v12 = *(v11 + 40);
      v13 = sub_1C4408DF8();
      if ((v14(v13) & 1) == 0)
      {
        sub_1C44121A4();
        v17 = *(v16 + 48);
        v18 = sub_1C4408DF8();
        v20 = v19(v18);
        v21 = a1[3];
        v22 = a1[4];
        sub_1C4409678(a1, v21);
        v23 = (*(v22 + 24))(v21, v22);
        if (v20)
        {
          if (v23)
          {
            return 0xD000000000000022;
          }

          else
          {
            return 0xD000000000000017;
          }
        }

        else if (v23)
        {
          return 0xD000000000000017;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C4A3FC08(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_1C4EF9CD8();
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[33] = v7;
  *v7 = v3;
  v7[1] = sub_1C4A3FD34;

  return sub_1C4A40700();
}

uint64_t sub_1C4A3FD34()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 264);
  *v3 = *v0;
  *(v2 + 272) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C4A3FE2C, 0, 0);
}

uint64_t sub_1C4A3FE2C()
{
  v155 = v0;
  v2 = *(v0 + 272);
  if (v2)
  {
    v3 = *(v0 + 224);
    v4 = *(v2 + 16);
    v5 = sub_1C4F00F28();
    v6 = 0;
    v7 = 0;
    v147 = v2 + 32;
    v148 = *(v2 + 16);
    v145 = v2;
    v146 = v4 - 1;
    v144 = (v3 + 16);
    v153 = (v3 + 8);
    while (1)
    {
      v8 = 0uLL;
      v9 = v148;
      v10 = 0uLL;
      v11 = 0uLL;
      if (v7 != v148)
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_46;
        }

        v9 = v7 + 1;
        *(v0 + 64) = v7;
        sub_1C442E860(v147 + 40 * v7, v0 + 72);
        v8 = *(v0 + 64);
        v10 = *(v0 + 80);
        v11 = *(v0 + 96);
      }

      *(v0 + 16) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v11;
      if (!v11)
      {
        v109 = *(v0 + 208);

        v110 = sub_1C457DA58(v5);

        sub_1C44239FC(v6);
        goto LABEL_42;
      }

      v151 = v8;
      sub_1C443FA18((v0 + 24), v0 + 112);
      v149 = v9;
      log = v6;
      if (v151 >= v146)
      {
        (*v144)(*(v0 + 256), *(v0 + 200), *(v0 + 216));
      }

      else
      {
        if (v151 < -1)
        {
          goto LABEL_47;
        }

        if ((v151 + 1) >= *(v2 + 16))
        {
          goto LABEL_48;
        }

        v12 = *(v0 + 256);
        sub_1C442E860(v147 + 40 * (v151 + 1), v0 + 152);
        v13 = *(v0 + 176);
        v14 = *(v0 + 184);
        sub_1C4409678((v0 + 152), v13);
        (*(v14 + 8))(v13, v14);
        sub_1C440962C((v0 + 152));
      }

      v15 = *(v0 + 256);
      v16 = *(v0 + 200);
      *&v151 = sub_1C4A3FA9C((v0 + 112));
      v18 = v17;
      if (sub_1C4EF9C08())
      {
        v19 = *(v0 + 248);
        v20 = *(v0 + 216);
        v21 = *(v0 + 192);
        v22 = *(v0 + 136);
        v23 = *(v0 + 144);
        sub_1C4409678((v0 + 112), v22);
        (*(v23 + 8))(v22, v23);
        v24 = sub_1C4EF9C18();
        v1 = *v153;
        (*v153)(v19, v20);
        if (v24)
        {
          break;
        }
      }

      v26 = *(v0 + 256);
      v27 = *(v0 + 200);
      if ((sub_1C4EF9C08() & 1) == 0)
      {
        goto LABEL_17;
      }

      v28 = *(v0 + 248);
      v29 = *(v0 + 216);
      v30 = *(v0 + 192);
      v31 = *(v0 + 136);
      v32 = *(v0 + 144);
      sub_1C4409678((v0 + 112), v31);
      sub_1C4400994();
      v33(v31, v32);
      sub_1C441A060();
      sub_1C4498DE4(&qword_1EDDFCD70);
      v34 = sub_1C4F01068();
      v35 = v34;
      v43 = sub_1C44075F4(v34, v36, v37, v38, v39, v40, v41, v42, v143, v144, v145, v146, v147, v148, v149, log, v151, *(&v151 + 1), v153);
      v1(v43);
      if ((v35 & 1) == 0)
      {
        v89 = *(v0 + 248);
        v90 = *(v0 + 216);
        v91 = *(v0 + 200);
        sub_1C4EF9AD8();
        v73 = v92;
        v93 = *(v0 + 136);
        v94 = *(v0 + 144);
        sub_1C4409678((v0 + 112), v93);
        sub_1C4400994();
        v95(v93, v94);
        sub_1C4EF9AD8();
        v79 = v96;
        v87 = v89;
        v88 = v90;
      }

      else
      {
LABEL_17:
        v44 = *(v0 + 256);
        v45 = *(v0 + 216);
        v46 = *(v0 + 200);
        sub_1C441A060();
        sub_1C4498DE4(&qword_1EDDFCD70);
        if ((sub_1C4F01068() & 1) == 0)
        {
          v47 = *(v0 + 248);
          v48 = *(v0 + 216);
          v49 = *(v0 + 192);
          v50 = *(v0 + 136);
          v51 = *(v0 + 144);
          sub_1C4409678((v0 + 112), v50);
          sub_1C4400994();
          v52(v50, v51);
          v53 = sub_1C4EF9C18();
          v54 = v53;
          v62 = sub_1C44075F4(v53, v55, v56, v57, v58, v59, v60, v61, v143, v144, v145, v146, v147, v148, v149, log, v151, *(&v151 + 1), v153);
          v1(v62);
          if (v54)
          {
            v63 = *(v0 + 256);
            goto LABEL_20;
          }
        }

        v69 = *(v0 + 248);
        v70 = *(v0 + 256);
        v71 = *(v0 + 216);
        sub_1C4EF9AD8();
        v73 = v72;
        v74 = *(v0 + 136);
        v75 = *(v0 + 144);
        sub_1C4409678((v0 + 112), v74);
        sub_1C4400994();
        v76(v74, v75);
        v77 = sub_1C4EF9AD8();
        v79 = v78;
        v87 = sub_1C44075F4(v77, v80, v81, v82, v83, v84, v85, v86, v143, v144, v145, v146, v147, v148, v149, log, v151, *(&v151 + 1), v153);
      }

      (v1)(v87, v88);
      v68 = v73 - v79;
LABEL_24:
      sub_1C44239FC(log);
      swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v5;
      v97 = sub_1C445FAA8(v151, v18);
      if (__OFADD__(v5[2], (v98 & 1) == 0))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v99 = v97;
      v100 = v98;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      v5 = v154[0];
      if (sub_1C4F02458())
      {
        v101 = sub_1C445FAA8(v151, v18);
        if ((v100 & 1) != (v102 & 1))
        {

          return sub_1C4F029F8();
        }

        v99 = v101;
      }

      if (v100)
      {
      }

      else
      {
        *(v154[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
        v103 = (v5[6] + 16 * v99);
        *v103 = v151;
        v103[1] = v18;
        *(v5[7] + 8 * v99) = 0;
        v104 = v5[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          goto LABEL_49;
        }

        v5[2] = v106;
      }

      v107 = *(v0 + 256);
      v108 = *(v0 + 216);
      *(v5[7] + 8 * v99) = v68 + *(v5[7] + 8 * v99);
      (v1)(v107, v108);
      sub_1C440962C((v0 + 112));
      v6 = sub_1C446368C;
      v7 = v149;
      v2 = v145;
    }

    v25 = *(v0 + 200);
LABEL_20:
    v64 = *(v0 + 192);
    sub_1C4EF9AD8();
    v66 = v65;
    sub_1C4EF9AD8();
    v68 = v66 - v67;
    goto LABEL_24;
  }

  if (qword_1EDDFECB0 != -1)
  {
LABEL_50:
    sub_1C43FFB88();
  }

  v111 = *(v0 + 232);
  v112 = *(v0 + 240);
  v113 = *(v0 + 216);
  v114 = *(v0 + 224);
  v116 = *(v0 + 192);
  v115 = *(v0 + 200);
  v117 = sub_1C4F00978();
  sub_1C442B738(v117, qword_1EDDFECB8);
  v118 = *(v114 + 16);
  v118(v112, v116, v113);
  v118(v111, v115, v113);
  v119 = sub_1C4F00968();
  v120 = sub_1C4F01CF8();
  v121 = os_log_type_enabled(v119, v120);
  v123 = *(v0 + 232);
  v122 = *(v0 + 240);
  v125 = *(v0 + 216);
  v124 = *(v0 + 224);
  if (v121)
  {
    v152 = v120;
    v126 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v126 = 136315394;
    sub_1C4498DE4(&qword_1EDDFCD50);
    v127 = sub_1C4F02858();
    v129 = v128;
    v130 = *(v124 + 8);
    v130(v122, v125);
    v131 = sub_1C441D828(v127, v129, v154);

    *(v126 + 4) = v131;
    *(v126 + 12) = 2080;
    v132 = sub_1C4F02858();
    v134 = v133;
    v130(v123, v125);
    v135 = sub_1C441D828(v132, v134, v154);

    *(v126 + 14) = v135;
    _os_log_impl(&dword_1C43F8000, v119, v152, "No motion state events from %s to %s", v126, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v137 = *(v124 + 8);
    v137(v123, v125);
    v137(v122, v125);
  }

  v110 = sub_1C4F00F28();
LABEL_42:
  v139 = *(v0 + 248);
  v138 = *(v0 + 256);
  v141 = *(v0 + 232);
  v140 = *(v0 + 240);

  sub_1C43FBCF0();

  return v142(v110);
}

uint64_t sub_1C4A40700()
{
  sub_1C43FBCD4();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C4A40798;

  return sub_1C4A40A90(v4, v2);
}

uint64_t sub_1C4A40798()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 16);
  *v4 = *v1;
  *(v3 + 24) = v7;
  *(v3 + 32) = v0;

  if (v0)
  {
    v8 = sub_1C4A4091C;
  }

  else
  {
    v8 = sub_1C4A408A4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C4A408A4()
{
  sub_1C43FBCD4();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
    sub_1C4811368();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_1C43FBCF0();

  return v4(v3);
}

uint64_t sub_1C4A4091C()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v1 = *(v0 + 32);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Didn't receive motion state activities due to error %@", v8, 0xCu);
    sub_1C45B4B90(v9);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C43FBCF0();

  return v12(0);
}

uint64_t sub_1C4A40A90(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4A40AB0, 0, 0);
}

uint64_t sub_1C4A40AB0()
{
  v8 = *(v0 + 24);
  v1 = [objc_allocWithZone(MEMORY[0x1E69634C0]) init];
  *(v0 + 40) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_1C456902C(&qword_1EC0C1B78, &qword_1C4F460E8);
  *v5 = v0;
  v5[1] = sub_1C4A40C0C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000001C4FAD720, sub_1C4A41270, v3, v6);
}

uint64_t sub_1C4A40C0C()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_1C43FBE64();
  *v7 = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v8 = sub_1C4A40D80;
  }

  else
  {
    v9 = *(v2 + 56);

    v8 = sub_1C4A40D1C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C4A40D1C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  sub_1C43FBCF0();

  return v3();
}

uint64_t sub_1C4A40D80()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3();
}

void sub_1C4A40DF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = sub_1C4EF9BF8();
  v14 = sub_1C4EF9BF8();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = sub_1C4A4127C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4A41188;
  aBlock[3] = &unk_1F43F4F08;
  v17 = _Block_copy(aBlock);

  [a2 queryActivityStartingFromDate:v13 toDate:v14 toQueue:a5 withHandler:v17];
  _Block_release(v17);
}

uint64_t sub_1C4A40FDC(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v5 = a2;
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Error in querying motion state activities from CMMotionActivityManager: %@", v8, 0xCu);
      sub_1C45B4B90(v9);
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
    return sub_1C4F01808();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0);
    return sub_1C4F01818();
  }
}

uint64_t sub_1C4A41188(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1C4A41308();
    v4 = sub_1C4F01678();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1C4A4127C(int a1, void *a2)
{
  v4 = *(*(sub_1C456902C(&qword_1EC0C1B80, &unk_1C4F460F0) - 8) + 80);

  return sub_1C4A40FDC(a1, a2);
}

unint64_t sub_1C4A41308()
{
  result = qword_1EC0BDAF8;
  if (!qword_1EC0BDAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BDAF8);
  }

  return result;
}

double sub_1C4A4134C()
{
  type metadata accessor for MotionStateDistributionProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v1 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x404E000000000000;
  v3 = swift_allocObject();
  result = 1800.0;
  *(v3 + 48) = xmmword_1C4F0D360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 16) = sub_1C455B64C;
  *(v3 + 24) = 0;
  return result;
}

void sub_1C4A41478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v38 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v38;
  do
  {
    v31 = byte_1F43D2B50[v29 + 32];
    if (v31 == 1)
    {
      v32 = 0xD00000000000002CLL;
    }

    else
    {
      v32 = 0xD00000000000002BLL;
    }

    if (v31 == 1)
    {
      v33 = "tribution_in_activity_interval";
    }

    else
    {
      v33 = "tribution_in_prev_30_minutes";
    }

    if (byte_1F43D2B50[v29 + 32])
    {
      v34 = v32;
    }

    else
    {
      v34 = 0xD00000000000002ELL;
    }

    if (byte_1F43D2B50[v29 + 32])
    {
      v35 = v33;
    }

    else
    {
      v35 = "motionStateDistributionSignal";
    }

    v39 = v30;
    v36 = *(v30 + 16);
    if (v36 >= *(v30 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v30 = v39;
    }

    ++v29;
    *(v30 + 16) = v36 + 1;
    v37 = v30 + 16 * v36;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35 | 0x8000000000000000;
  }

  while (v29 != 3);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4A415A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C4EF9CD8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ActivityInterval();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A41698, 0, 0);
}

uint64_t sub_1C4A41698()
{
  sub_1C43FBCD4();
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1C4A41734;
  v3 = v0[8];
  v4 = v0[2];

  return sub_1C4A3E4A8();
}

uint64_t sub_1C4A41734()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4A41818()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[10] = *(v0[3] + 40);
  v3 = *(v1 + 20);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1C4A418CC;
  v5 = v0[8];

  return sub_1C4A3FC08(v5, v2 + v3);
}

uint64_t sub_1C4A418CC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  v3 = *(v1 + 88);
  v9 = *v0;
  *(v2 + 96) = v4;

  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4A419BC()
{
  sub_1C43FBCD4();
  v1 = v0[6];
  v2 = v0[2];
  sub_1C4EF9BE8();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v4 = sub_1C44121C8(v3);

  return sub_1C4A3FC08(v4, v5);
}

uint64_t sub_1C4A41A54()
{
  sub_1C43FBDE4();
  v2 = v1;
  v3 = v1[13];
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = *v0;
  sub_1C43FBDAC();
  *v8 = v7;
  v2[14] = v9;

  v10 = *(v5 + 8);
  v2[15] = v10;
  v2[16] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4A41BAC()
{
  sub_1C43FBCD4();
  v1 = v0[6];
  v2 = v0[2];
  sub_1C4EF9BE8();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v4 = sub_1C44121C8(v3);

  return sub_1C4A3FC08(v4, v5);
}

uint64_t sub_1C4A41C44()
{
  sub_1C43FBDE4();
  v2 = v1[17];
  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[6];
  v6 = v1[4];
  v7 = *v0;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v10 + 144) = v9;

  v4(v5, v6);
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C4A41D98()
{
  v1 = *(v0 + 96);
  sub_1C456902C(&qword_1EC0B85C8, &unk_1C4F0D460);
  v103 = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
  v2 = sub_1C4F02538();
  v3 = 0;
  sub_1C441A078();
  v5 = v4 & v1[8];
  v7 = (v6 + 63) >> 6;
  for (i = v8 + 64; v5; v2[2] = v25)
  {
    sub_1C43FCFAC();
LABEL_8:
    v14 = v10 | (v3 << 6);
    v15 = (v1[6] + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(v1[7] + 8 * v14);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F019C8();
    sub_1C4404D48();
    *(i + v20) |= v19 << v14;
    v21 = (v2[6] + 16 * v14);
    *v21 = v17;
    v21[1] = v16;
    *(v2[7] + 8 * v14) = v22;
    v23 = v2[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v3 >= v7)
    {
      break;
    }

    ++v11;
    if (v1[v3 + 8])
    {
      sub_1C43FCF1C();
      v5 = v13 & v12;
      goto LABEL_8;
    }
  }

  v26 = v101[14];
  v27 = v101[12];

  swift_isUniquelyReferenced_nonNull_native();
  sub_1C46602EC();
  v28 = sub_1C4F02538();
  v29 = 0;
  sub_1C441A078();
  v31 = v30 & v26[8];
  v33 = (v32 + 63) >> 6;
  v35 = v34 + 64;
  if (!v31)
  {
LABEL_13:
    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_47;
      }

      if (v29 >= v33)
      {
        v51 = v101[18];
        v52 = v101[14];

        swift_isUniquelyReferenced_nonNull_native();
        sub_1C46602EC();
        v53 = sub_1C4F02538();
        v54 = 0;
        sub_1C441A078();
        v56 = v55 & v51[8];
        v58 = (v57 + 63) >> 6;
        v60 = v59 + 64;
        if (!v56)
        {
LABEL_23:
          v62 = v54;
          while (1)
          {
            v54 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_48;
            }

            if (v54 >= v58)
            {
              v76 = v101[18];

              swift_isUniquelyReferenced_nonNull_native();
              sub_1C46602EC();
              sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
              v77 = sub_1C4F02538();
              v78 = v77;
              v79 = 0;
              v80 = 1 << *(v103 + 32);
              v81 = -1;
              if (v80 < 64)
              {
                v81 = ~(-1 << v80);
              }

              v82 = v81 & *(v103 + 64);
              v83 = (v80 + 63) >> 6;
              v102 = v77 + 64;
              if (!v82)
              {
LABEL_35:
                v85 = v79;
                while (1)
                {
                  v79 = v85 + 1;
                  if (__OFADD__(v85, 1))
                  {
                    goto LABEL_49;
                  }

                  if (v79 >= v83)
                  {
                    v99 = v101[6];
                    sub_1C4573D60(v101[8]);

                    v100 = v101[1];

                    v100(v78);
                    return;
                  }

                  ++v85;
                  if (*(v103 + 64 + 8 * v79))
                  {
                    sub_1C43FCF1C();
                    v82 = v87 & v86;
                    goto LABEL_40;
                  }
                }
              }

              while (1)
              {
                v84 = __clz(__rbit64(v82));
                v82 &= v82 - 1;
LABEL_40:
                v88 = v84 | (v79 << 6);
                v89 = (*(v103 + 48) + 16 * v88);
                v90 = v89[1];
                v104 = *v89;
                v91 = *(*(v103 + 56) + 8 * v88);
                sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v92 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C465CD38(v92);
                v93 = sub_1C457F798();

                sub_1C4404D48();
                *(v102 + v95) |= v94 << v88;
                v96 = (v78[6] + 16 * v88);
                *v96 = v104;
                v96[1] = v90;
                *(v78[7] + 8 * v88) = v93;
                v97 = v78[2];
                v24 = __OFADD__(v97, 1);
                v98 = v97 + 1;
                if (v24)
                {
                  goto LABEL_53;
                }

                v78[2] = v98;
                if (!v82)
                {
                  goto LABEL_35;
                }
              }
            }

            ++v62;
            if (v51[v54 + 8])
            {
              sub_1C43FCF1C();
              v56 = v64 & v63;
              goto LABEL_28;
            }
          }
        }

        while (1)
        {
          v61 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
LABEL_28:
          v65 = v61 | (v54 << 6);
          v66 = (v51[6] + 16 * v65);
          v68 = *v66;
          v67 = v66[1];
          v69 = *(v51[7] + 8 * v65);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F019C8();
          sub_1C4404D48();
          *(v60 + v71) |= v70 << v65;
          v72 = (v53[6] + 16 * v65);
          *v72 = v68;
          v72[1] = v67;
          *(v53[7] + 8 * v65) = v73;
          v74 = v53[2];
          v24 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v24)
          {
            goto LABEL_52;
          }

          v53[2] = v75;
          if (!v56)
          {
            goto LABEL_23;
          }
        }
      }

      ++v37;
      if (v26[v29 + 8])
      {
        sub_1C43FCF1C();
        v31 = v39 & v38;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    sub_1C43FCFAC();
LABEL_18:
    v40 = v36 | (v29 << 6);
    v41 = (v26[6] + 16 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = *(v26[7] + 8 * v40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F019C8();
    sub_1C4404D48();
    *(v35 + v46) |= v45 << v40;
    v47 = (v28[6] + 16 * v40);
    *v47 = v43;
    v47[1] = v42;
    *(v28[7] + 8 * v40) = v48;
    v49 = v28[2];
    v24 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v24)
    {
      break;
    }

    v28[2] = v50;
    if (!v31)
    {
      goto LABEL_13;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1C4A42458@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C4A42A40(&qword_1EC0C1B90);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4A424C4()
{
  sub_1C43FBCD4();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C4A42554;

  return sub_1C4A415A8(v2);
}

uint64_t sub_1C4A42554()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1C4A428CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A42A80;

  return sub_1C4A424C4();
}

uint64_t sub_1C4A429B8(uint64_t a1)
{
  result = sub_1C4A42A40(&qword_1EC0C1B88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4A429FC(uint64_t a1)
{
  result = sub_1C4A42A40(&qword_1EC0BAFA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A42A40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MotionStateDistributionSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A42A84()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x74536E6F69746F6DLL;
  *(inited + 40) = 0xEF65707954657461;
  v4 = objc_opt_self();
  *(inited + 48) = [v4 featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000001C4F9B260;
  *(inited + 72) = [v4 featureValueWithDouble_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

id MotionStateSignal.sessionsWithoutSmoothing(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v39 - v15;
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v17 = sub_1C43FBD18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  v22 = *(v2 + 16);
  v39 = a2;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v24 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v24);
    (*(v25 + 16))(v21, a1, v24);
    sub_1C440BAA8(v21, 0, 1, v24);
    v26 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    v23 = sub_1C4A44884(v21, (a1 + *(v26 + 36)));
    sub_1C4420C3C(v21, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  v27 = sub_1C4428DA0();
  v44 = v23 & 0xC000000000000001;
  v28 = v23 & 0xFFFFFFFFFFFFFF8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v42 = v11;
  while (1)
  {
    if (v27 == v30)
    {

      *v39 = v31;
      return result;
    }

    if (v44)
    {
      v32 = v23;
      result = MEMORY[0x1C6940F90](v30, v23);
    }

    else
    {
      if (v30 >= *(v28 + 16))
      {
        goto LABEL_21;
      }

      v32 = v23;
      result = *(v23 + 8 * v30 + 32);
    }

    v33 = result;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v45 = result;
    sub_1C4A42F68(&v45, v10);

    if (sub_1C44157D4(v10, 1, v11) == 1)
    {
      result = sub_1C4420C3C(v10, &qword_1EC0C1B98, &unk_1C4F461E0);
    }

    else
    {
      v34 = v40;
      sub_1C4A444EC(v10, v40);
      sub_1C4A444EC(v34, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v31 + 16);
        sub_1C458A820();
        v31 = v37;
      }

      v35 = *(v31 + 16);
      if (v35 >= *(v31 + 24) >> 1)
      {
        sub_1C458A820();
        v31 = v38;
      }

      *(v31 + 16) = v35 + 1;
      result = sub_1C4A444EC(v43, v31 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
      v11 = v42;
    }

    ++v30;
    v23 = v32;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C4A42F68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1C4F00978();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = *a1;
  v19 = [v18 startDate];
  if (v19)
  {
    v20 = v19;
    sub_1C4EF9C78();

    sub_1C4EF9AD8();
    sub_1C4EF9AC8();
    sub_1C4EF9AD8();
    v21 = v12;
    sub_1C4EF9AC8();
    sub_1C4A448E0(v18, &v39);
    v22 = v39;
    LODWORD(v20) = [v18 confidence];
    (*(v8 + 8))(v17, v7);
    v23 = v20;
    v24 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    v25 = v38;
    v26 = v38 + *(v24 + 32);
    *v26 = v22;
    *(v26 + 8) = v23;
    v27 = *(v8 + 32);
    v27(v25, v15, v7);
    v27(v25 + *(v24 + 28), v21, v7);
    v28 = v25;
    v29 = 0;
    v30 = v24;
  }

  else
  {
    v32 = v37;
    v31 = v38;
    sub_1C4F00198();
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CF8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C43F8000, v33, v34, "Motion state event does not have a start time", v35, 2u);
      MEMORY[0x1C6942830](v35, -1, -1);
    }

    (*(v32 + 8))(v6, v3);
    v30 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    v28 = v31;
    v29 = 1;
  }

  return sub_1C440BAA8(v28, v29, 1, v30);
}

id MotionStateSignal.sessions(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for MotionStateSmoothedSequence();
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MotionStateSignal.sessionsWithoutSmoothing(in:)(a1, &v20);
  if (!v3)
  {
    v13 = v20;
    v22 = sub_1C456902C(&qword_1EC0C1BA0, &qword_1C4F461F0);
    v23 = sub_1C4401CBC(&qword_1EDDDE970, &qword_1EC0C1BA0, &qword_1C4F461F0);
    v21 = v13;
    v14 = *(v2 + 32);
    sub_1C445FFF0(a1, v11 + v6[9], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v15 = v6[6];
    sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    sub_1C43FCF64();
    sub_1C440BAA8(v16, v17, v18, v19);
    *(v11 + v6[7]) = 0;
    *(v11 + v6[8]) = 0;
    *v11 = v14;
    sub_1C441D670(&v21, (v11 + 1));
    return sub_1C4A445A8(v11, a2);
  }

  return result;
}

uint64_t sub_1C4A43460()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C4F00978();
  v1[12] = v3;
  sub_1C43FCF7C(v3);
  v1[13] = v4;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v1[19] = v10;
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A435C8, 0, 0);
}

uint64_t sub_1C4A435C8()
{
  sub_1C44034FC();
  v0[24] = swift_getAssociatedTypeWitness();
  v1 = sub_1C4F01F48();
  v0[25] = v1;
  sub_1C43FCF7C(v1);
  v0[26] = v2;
  v4 = *(v3 + 64) + 15;
  v0[27] = swift_task_alloc();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v7 = sub_1C4407608(v6);

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C4A436D0()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 224);
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 232) = v0;

  if (v0)
  {
    v6 = sub_1C4A43F44;
  }

  else
  {
    v6 = sub_1C4A437D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4A437D8()
{
  v1 = v0[27];
  v2 = v0[24];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v3 = v0[19];
    (*(v0[26] + 8))(v1, v0[25]);

    sub_1C43FCF64();
    sub_1C440BAA8(v5, v6, v7, v3);
    goto LABEL_4;
  }

  v9 = v0[18];
  v8 = v0[19];
  v0[5] = v2;
  v10 = sub_1C4422F90(v0 + 2);
  (*(*(v2 - 8) + 32))(v10, v1, v2);

  v11 = swift_dynamicCast();
  sub_1C440BAA8(v9, v11 ^ 1u, 1, v8);
  if (sub_1C44157D4(v9, 1, v8) == 1)
  {
LABEL_4:
    v12 = v0[18];
    v13 = v0[19];
    v14 = v0[16];
    v15 = v0[11];
    sub_1C43FC2F4();
    sub_1C4420C3C(v16, v17, v18);
    v19 = type metadata accessor for MotionStateSmoothedSequence();
    v20 = v19[6];
    sub_1C445FFF0(v15 + v20, v14, &qword_1EC0C1B98, &unk_1C4F461E0);
    if (sub_1C44157D4(v14, 1, v13) == 1)
    {
      sub_1C4420C3C(v0[16], &qword_1EC0C1B98, &unk_1C4F461E0);
      v21 = 1;
    }

    else
    {
      v22 = v0[19];
      v23 = v0[20];
      v24 = v0[10];
      v25 = v0[11];
      sub_1C4A444EC(v0[16], v23);
      sub_1C4420C3C(v15 + v20, &qword_1EC0C1B98, &unk_1C4F461E0);
      sub_1C43FCF64();
      sub_1C440BAA8(v26, v27, v28, v22);
      v29 = sub_1C4EF9CD8();
      sub_1C43FBCE0(v29);
      v31 = *(v30 + 16);
      sub_1C43FC2F4();
      v31();
      v32 = v25 + v19[9];
      v33 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      (v31)(v24 + *(v22 + 28), v32 + *(v33 + 36), v29);
      v34 = *(v23 + *(v22 + 32));
      sub_1C4420C3C(v23, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v21 = 0;
      v35 = *(v25 + v19[7]) / *(v25 + v19[8]);
      v36 = v24 + *(v22 + 32);
      *v36 = v34;
      *(v36 + 8) = v35;
    }

    goto LABEL_7;
  }

  v48 = v0[19];
  v49 = v0[17];
  v50 = v0[11];
  sub_1C4A444EC(v0[18], v0[23]);
  v51 = type metadata accessor for MotionStateSmoothedSequence();
  v52 = v51[6];
  sub_1C445FFF0(v50 + v52, v49, &qword_1EC0C1B98, &unk_1C4F461E0);
  v53 = sub_1C44157D4(v49, 1, v48);
  v54 = v0[23];
  if (v53 == 1)
  {
    v55 = v0[19];
    v56 = v0[17];
    v57 = v0[11];
    sub_1C43FC2F4();
    sub_1C4420C3C(v58, v59, v60);
    sub_1C43FC2F4();
    sub_1C4420C3C(v61, v62, v63);
    sub_1C445FFF0(v54, v50 + v52, &qword_1EC0B8AF0, &unk_1C4F0DF20);
    sub_1C440BAA8(v50 + v52, 0, 1, v55);
    *(v57 + v51[8]) = *(v57 + v51[8]) + 1.0;
    v64 = (v54 + *(v55 + 32) + 8);
  }

  else
  {
    v75 = v0[22];
    v76 = v0[19];
    sub_1C4A444EC(v0[17], v75);
    v77 = *(v76 + 32);
    v78 = v54 + v77;
    if (*(v54 + v77) != *(v75 + v77) || (v80 = v0[22], v79 = v0[23], v81 = v0[11], sub_1C4EF9CB8(), v82 >= *v81))
    {
      v84 = v0[22];
      v85 = v0[23];
      v98 = v51;
      v86 = v0[21];
      v87 = v0[19];
      v99 = v0[11];
      v102 = v0[10];
      v100 = v50;
      v101 = v78;
      v88 = sub_1C4EF9CD8();
      sub_1C43FBCE0(v88);
      v90 = *(v89 + 16);
      v97 = v86;
      v90(v86, v84, v88);
      v90(v86 + *(v87 + 28), v85, v88);
      v91 = *(v84 + v77);
      sub_1C4420C3C(v84, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v93 = v98[7];
      v92 = v98[8];
      v94 = *(v99 + v93) / *(v99 + v92);
      v95 = v97 + *(v87 + 32);
      *v95 = v91;
      *(v95 + 8) = v94;
      sub_1C4420C3C(v100 + v52, &qword_1EC0C1B98, &unk_1C4F461E0);
      sub_1C445FFF0(v85, v100 + v52, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      sub_1C440BAA8(v100 + v52, 0, 1, v87);
      *(v99 + v93) = 0;
      *(v99 + v92) = 0x3FF0000000000000;
      v96 = *(v101 + 8);
      sub_1C4420C3C(v85, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      *(v99 + v93) = v96 + 0.0;
      sub_1C4A444EC(v97, v102);
      v21 = 0;
      goto LABEL_7;
    }

    v54 = v0[23];
    v83 = v0[11];
    sub_1C4420C3C(v0[22], &qword_1EC0B8AF0, &unk_1C4F0DF20);
    *(v83 + v51[8]) = *(v83 + v51[8]) + 1.0;
    v64 = (v78 + 8);
  }

  v65 = *v64;
  sub_1C4420C3C(v54, &qword_1EC0B8AF0, &unk_1C4F0DF20);
  v66 = v0[19];
  v67 = v0[15];
  *(v0[11] + v51[7]) = v65 + *(v0[11] + v51[7]);
  sub_1C445FFF0(v50 + v52, v67, &qword_1EC0C1B98, &unk_1C4F461E0);
  LODWORD(v66) = sub_1C44157D4(v67, 1, v66);
  sub_1C4420C3C(v0[15], &qword_1EC0C1B98, &unk_1C4F461E0);
  v21 = 1;
  if (v66 == 1)
  {
LABEL_7:
    v37 = v0[22];
    v38 = v0[23];
    v40 = v0[20];
    v39 = v0[21];
    v41 = v0[18];
    v43 = v0[16];
    v42 = v0[17];
    v44 = v0[14];
    v45 = v0[15];
    sub_1C440BAA8(v0[10], v21, 1, v0[19]);

    sub_1C43FBDA0();

    return v46();
  }

  sub_1C44034FC();
  v0[24] = swift_getAssociatedTypeWitness();
  v68 = sub_1C4F01F48();
  v0[25] = v68;
  sub_1C43FCF7C(v68);
  v0[26] = v69;
  v71 = *(v70 + 64) + 15;
  v0[27] = swift_task_alloc();
  v72 = *(MEMORY[0x1E69E85A8] + 4);
  v73 = swift_task_alloc();
  v0[28] = v73;
  *v73 = v0;
  v74 = sub_1C4407608();

  return MEMORY[0x1EEE6D8C8](v74);
}

uint64_t sub_1C4A43F44()
{
  v40 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 112);

  sub_1C4F00198();
  v4 = v1;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 104);
    v38 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = sub_1C4F02A38();
    v17 = sub_1C441D828(v15, v16, &v39);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Error when reading motion state events: %s", v10, 0xCu);
    sub_1C440962C(v11);
    MEMORY[0x1C6942830](v11, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);

    (*(v8 + 8))(v38, v9);
  }

  else
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 184);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v31 = *(v0 + 80);
  sub_1C43FCF64();
  sub_1C440BAA8(v32, v33, v34, v35);

  sub_1C43FBDA0();

  return v36();
}

uint64_t sub_1C4A4418C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4A44180(a1);

  return sub_1C4A447C0(v1);
}

uint64_t sub_1C4A441B8()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A4424C;

  return sub_1C4A43460();
}

uint64_t sub_1C4A4424C()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4A44334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A44400;

  return (sub_1C4982698)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A44400()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4A444EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MotionStateSmoothedSequence()
{
  result = qword_1EDDE04A8;
  if (!qword_1EDDE04A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A445A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionStateSmoothedSequence();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4A44650()
{
  sub_1C4585248();
  if (v0 <= 0x3F)
  {
    sub_1C4A44704();
    if (v1 <= 0x3F)
    {
      sub_1C45F6D88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4A44704()
{
  if (!qword_1EDDE4228[0])
  {
    sub_1C4572308(&qword_1EC0B8AF0, &unk_1C4F0DF20);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDE4228);
    }
  }
}

uint64_t sub_1C4A447C0(uint64_t a1)
{
  v2 = type metadata accessor for MotionStateSmoothedSequence();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4A4481C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionStateSmoothedSequence();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A44884(uint64_t a1, char *a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C4A449D4(a1, a2, &v6);
  objc_autoreleasePoolPop(v4);
  return v6;
}

id sub_1C4A448E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 stationary] && (result = objc_msgSend(a1, sel_automotive), !result))
  {
    v5 = 2;
  }

  else
  {
    result = [a1 walking];
    if (result)
    {
      v5 = 4;
    }

    else
    {
      result = [a1 running];
      if (result)
      {
        v5 = 8;
      }

      else
      {
        result = [a1 cycling];
        if (result)
        {
          v5 = 16;
        }

        else
        {
          result = [a1 automotive];
          if (result)
          {
            v5 = 32;
          }

          else
          {
            result = [a1 stationary];
            if (result && (result = [a1 automotive], (result & 1) != 0))
            {
              v5 = 34;
            }

            else
            {
              v5 = 1;
            }
          }
        }
      }
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C4A449D4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v36 = a1;
  v37 = a3;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v22 = [v21 Activity];
  swift_unknownObjectRelease();
  sub_1C4467FE0(v36, v12);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    v23 = v20;
    sub_1C4EF9BE8();
    sub_1C4A45E1C(&qword_1EDDFCD70, 255, MEMORY[0x1E6969530]);
    if (sub_1C4F01068())
    {
      (*(v14 + 8))(v18, v13);
      v24 = v38;
      (*(v14 + 16))(v20, v38, v13);
    }

    else
    {
      (*(v14 + 32))(v20, v18, v13);
      v24 = v38;
    }

    if (sub_1C44157D4(v12, 1, v13) != 1)
    {
      sub_1C44686E4(v12);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    v23 = v20;
    v24 = v38;
  }

  v35 = v23;
  v25 = *(v14 + 16);
  v25(v10, v23, v13);
  sub_1C440BAA8(v10, 0, 1, v13);
  v25(v7, v24, v13);
  sub_1C440BAA8(v7, 0, 1, v13);
  v26 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v27 = sub_1C457A86C(v10, v7, 0, 0, 0);
  v28 = [v22 publisherWithOptions_];

  v29 = swift_allocObject();
  *(v29 + 16) = MEMORY[0x1E69E7CC0];
  v43 = nullsub_1;
  v44 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C44405F8;
  v42 = &unk_1F43F5090;
  v30 = _Block_copy(&aBlock);
  v43 = sub_1C4A45E64;
  v44 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C4440590;
  v42 = &unk_1F43F50B8;
  v31 = _Block_copy(&aBlock);

  v32 = [v28 sinkWithCompletion:v30 receiveInput:v31];
  _Block_release(v31);
  _Block_release(v30);

  (*(v14 + 8))(v35, v13);
  swift_beginAccess();
  *v37 = *(v29 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4A44F14(void *a1, uint64_t a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 eventBody])
  {
    v9 = swift_beginAccess();
    MEMORY[0x1C6940330](v9);
    sub_1C4427EF0(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C4F01748();
    return swift_endAccess();
  }

  else
  {
    sub_1C4F00198();
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Unable to parse eventBody from read event in eventsFromBiomeMotionStateStream", v13, 2u);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1C4A450C4(char a1, double a2)
{
  *(v2 + 16) = 0;
  v5 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v6 = [v5 Activity];
  swift_unknownObjectRelease();
  *(v2 + 40) = v6;
  v7 = *(v2 + 16);
  *(v2 + 16) = 0;

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

void MotionStateSignal.featureNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v32 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v32;
  v30 = *(v32 + 16);
  if (v30 >= *(v32 + 24) >> 1)
  {
    sub_1C44CD9C0();
    v29 = v32;
  }

  *(v29 + 16) = v30 + 1;
  v31 = v29 + 16 * v30;
  strcpy((v31 + 32), "motion_state");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;

  sub_1C4499940(v29, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4A45290(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Results read from Biome are empty in MotionStateSignal";
    goto LABEL_14;
  }

  if (!sub_1C4428DA0())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "No events received from motion state stream";
LABEL_14:
    _os_log_impl(&dword_1C43F8000, v6, v7, v9, v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
LABEL_15:

    return 0;
  }

  sub_1C4431590(0, (a1 & 0xC000000000000001) == 0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6940F90](0, a1);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  sub_1C4A448E0(v2, &v11);

  return v11;
}

uint64_t sub_1C4A4543C(uint64_t a1)
{
  v1 = sub_1C4A45290(a1);
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  strcpy((inited + 32), "motion_state");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4A45500()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 16))
  {
    v5 = *(v0 + 16);
  }

  else
  {
    v6 = sub_1C4EF9CD8();
    sub_1C440BAA8(v4, 1, 1, v6);
    v7 = sub_1C4404C28();
    v5 = sub_1C4A44884(v7, v8);
    sub_1C44686E4(v4);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4A4543C(v5);

  return v9;
}

void MotionStateSignal.getSnapshots(features:at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4A45500();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4A45BA8(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4A4588C()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C4EF9C88();
  v6 = sub_1C4A45500();
  v7 = *(v3 + 8);
  v8 = sub_1C4404C28();
  v9(v8);
  return v6;
}

MLFeatureValue_optional __swiftcall MotionStateSignal.featureValue(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = countAndFlagsBits == 0x735F6E6F69746F6DLL && object == 0xEC00000065746174;
  if (v12 || (sub_1C4404C28(), (sub_1C4F02938() & 1) != 0))
  {
    sub_1C4EF9C88();
    sub_1C4A45500();
    (*(v6 + 8))(v11, v3);
    v14 = sub_1C4404C28();
    v15 = sub_1C44F9274(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  result.value.super.isa = v16;
  result.is_nil = v13;
  return result;
}

uint64_t MotionStateSignal.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MotionStateSignal.__deallocating_deinit()
{
  MotionStateSignal.deinit();

  return swift_deallocClassInstance();
}

void *sub_1C4A45BA8(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4A45D6C(uint64_t a1, uint64_t a2)
{
  result = sub_1C4A45E1C(&qword_1EC0C1BC0, a2, type metadata accessor for MotionStateSignal);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4A45E1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A45EE0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C45A322C(v2);
}

id sub_1C4A45F1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1C445FAA8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain();
    v9 = sub_1C4F01108();
    v10 = [v8 featureValueForName_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v10;
}

uint64_t NGramBlockingFunction.init(predicates:relationshipPredicates:sequenceOfChars:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = result;
  a4[2] = a2;
  return result;
}

void sub_1C4A4609C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1C4F012A8();
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_36:
    __break(1u);
    return;
  }

  if (v8 < 1)
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C4F0D130;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = v9 + v5;
      if (__OFADD__(v9, v5))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v11 < v9)
      {
        goto LABEL_31;
      }

      v12 = sub_1C4F012A8();
      if (v11 >= v12)
      {
        v11 = v12;
      }

      v13 = sub_1C4F012E8();
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_32;
      }

      if (sub_1C4F012E8() >> 14 < v13 >> 14)
      {
        goto LABEL_33;
      }

      v14 = sub_1C4F01448();
      v15 = MEMORY[0x1C693FEF0](v14);
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v10 + 16);
        sub_1C443D664();
        v10 = v21;
      }

      v18 = *(v10 + 16);
      if (v18 >= *(v10 + 24) >> 1)
      {
        sub_1C443D664();
        v10 = v22;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
    }

    while (v8 != v9);
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v25 = (v10 + 40 + 16 * v23);
    while (v18 + 1 != v23)
    {
      if (v23 >= *(v10 + 16))
      {
        goto LABEL_34;
      }

      ++v23;
      v27 = *(v25 - 1);
      v26 = *v25;
      v25 += 2;
      v28 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v28 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v24 + 16);
          sub_1C44CD9C0();
        }

        v30 = *(v24 + 16);
        if (v30 >= *(v24 + 24) >> 1)
        {
          sub_1C44CD9C0();
        }

        *(v24 + 16) = v30 + 1;
        v31 = v24 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v26;
        goto LABEL_17;
      }
    }
  }
}

uint64_t NGramBlockingFunction.blockValue(_:)()
{
  v1 = *v0;
  v2 = sub_1C4F00FF8();
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  v5 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v7 = *(v0 + 1);
  sub_1C4A46518(v2, v4, v5);
  sub_1C4F01C48();

  return v8;
}

uint64_t sub_1C4A46454()
{
  v0 = sub_1C4F01448();
  v1 = MEMORY[0x1C693FEF0](v0);
  v3 = v2;

  sub_1C4A4609C(v1, v3);
  v5 = v4;

  sub_1C449ADBC(v5);
  return 1;
}

void sub_1C4A46518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();
  [a3 setString_];
}

uint64_t sub_1C4A46570()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[7];
  return sub_1C4A46454() & 1;
}

uint64_t sub_1C4A465B4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152A30);
  sub_1C442B738(v0, qword_1EC152A30);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A4677C()
{
  v2 = type metadata accessor for NicknameEntry(0);
  v3 = (v0 + *(v2 + 20));
  if (!v3[1] || (v4 = *v3, result = sub_1C4F00498(), !v1))
  {
    v6 = (v0 + *(v2 + 24));
    if (!v6[1])
    {
      return sub_1C4F00308();
    }

    v7 = *v6;
    result = sub_1C4F00498();
    if (!v1)
    {
      return sub_1C4F00308();
    }
  }

  return result;
}

uint64_t sub_1C4A46848()
{
  v0 = type metadata accessor for NicknameEntry(0);
  v1 = *(v0 + 20);
  sub_1C440891C();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v7 = *(v0 + 24);
  sub_1C440891C();
  if (v8)
  {
    if (v9)
    {
      v12 = *v10 == *v11 && v8 == v9;
      if (v12 || (sub_1C4F02938() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v9)
  {
LABEL_17:
    sub_1C4F00328();
    sub_1C441A098();
    sub_1C4486968(v13, v14);
    return sub_1C4F010B8() & 1;
  }

  return 0;
}

uint64_t sub_1C4A4697C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4486968(&qword_1EC0C1BE8, type metadata accessor for NicknameEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A46A1C()
{
  sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry);

  return sub_1C4F00428();
}

uint64_t sub_1C4A46AE4()
{
  sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry);

  return sub_1C4F00438();
}

uint64_t sub_1C4A46B64()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152A48);
  sub_1C442B738(v0, qword_1EC152A48);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D130;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "entry";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C4F004C8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C4F004D8();
}

uint64_t sub_1C4A46CD0()
{
  if (!*(*v0 + 16) || (type metadata accessor for NicknameEntry(0), sub_1C4486968(qword_1EDDF80F8, type metadata accessor for NicknameEntry), result = sub_1C4F004A8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for NicknameData(0) + 20);
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A46DBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C47E77CC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NicknameData(0) + 20);
  sub_1C4F00328();
  sub_1C441A098();
  sub_1C4486968(v6, v7);
  return sub_1C4F010B8() & 1;
}

uint64_t sub_1C4A46E58(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C4486968(a2, a3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A46F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4486968(&qword_1EC0C1BF0, type metadata accessor for NicknameData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A46FB8()
{
  sub_1C4486968(&qword_1EDDF8AA0, type metadata accessor for NicknameData);

  return sub_1C4F00428();
}

uint64_t sub_1C4A47080()
{
  sub_1C4486968(&qword_1EDDF8AA0, type metadata accessor for NicknameData);

  return sub_1C4F00438();
}

void sub_1C4A47368()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4A47414()
{
  sub_1C4A47498();
  if (v0 <= 0x3F)
  {
    sub_1C4F00328();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4A47498()
{
  if (!qword_1EDDF06A0)
  {
    type metadata accessor for NicknameEntry(255);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF06A0);
    }
  }
}

uint64_t sub_1C4A474F0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4A4754C()
{
  type metadata accessor for NicknameCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = swift_weakInit();
  qword_1EDE2D338 = v0;
  return result;
}

uint64_t sub_1C4A47594()
{
  v1 = *(v0 + 16);

  sub_1C43FBDBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A475C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = *result;
  v8 = *(*result + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v14 = *(*result + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C445FAA8(a2, a3);
    if ((v16 & 1) != 0 && (v17 = *(*(v8 + 56) + 8 * v15), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), , v18 = *(v7 + 16), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v19 = sub_1C4663244(a4, a5, v18), , v19))
    {
      v20 = sub_1C4A32590(v19, v17);

      LOBYTE(v9) = (v20 & 1) == 0;
    }

    else
    {

      LOBYTE(v9) = 0;
    }
  }

  *a6 = v9;
  return result;
}

uint64_t sub_1C4A476CC()
{
  v1 = *(v0 + 16);

  sub_1C43FBDBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A4771C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = 1;
      switch(v6)
      {
        case 0:
        case 2:
        case 3:
        case 4:
        case 5:
          goto LABEL_9;
        case 1:
          break;
        default:
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v8 = sub_1C4F00978();
          sub_1C442B738(v8, qword_1EDDFECB8);
          v9 = sub_1C4F00968();
          v10 = sub_1C4F01CD8();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 67109120;
            *(v11 + 4) = v5;
            _os_log_impl(&dword_1C43F8000, v9, v10, "Unknown BMNowPlayingPlaybackState: %d", v11, 8u);
            sub_1C43FBE2C();
          }

LABEL_9:
          v7 = sub_1C4F02938();
          break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v3 + 16);
        sub_1C43FCEC0();
        sub_1C458A8D8();
        v3 = v14;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        sub_1C458A8D8();
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      *(v3 + v12 + 32) = v7 & 1;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (a2 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      v20 = *v17++;
      v19 = v20;
      switch(v20)
      {
        case 0:
          goto LABEL_37;
        case 1:
          v21 = 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 = 1;
          break;
        case 2:
        case 3:
          v21 = 6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 = 6;
          break;
        case 4:
          v21 = 2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 = 2;
          break;
        case 5:
          v21 = 3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 = 3;
          break;
        case 6:
          v21 = 4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 = 4;
          break;
        case 7:
          v21 = 7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_42;
          }

          v21 = 7;
          break;
        default:
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v22 = sub_1C4F00978();
          sub_1C442B738(v22, qword_1EDDFECB8);
          v23 = sub_1C4F00968();
          v24 = sub_1C4F01CF8();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 67109120;
            *(v25 + 4) = v19;
            _os_log_impl(&dword_1C43F8000, v23, v24, "Unknwon BMMediaNowPlayingMediaSubType seen - %d", v25, 8u);
            sub_1C43FBE2C();
          }

LABEL_37:
          v21 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            break;
          }

LABEL_42:
          v28 = *(v18 + 16);
          sub_1C43FCEC0();
          sub_1C445C3F8();
          v18 = v29;
          break;
      }

      v26 = *(v18 + 16);
      if (v26 >= *(v18 + 24) >> 1)
      {
        sub_1C445C3F8();
        v18 = v27;
      }

      *(v18 + 16) = v26 + 1;
      *(v18 + 8 * v26 + 32) = v21;
      --v16;
    }

    while (v16);
  }

  return v3;
}

uint64_t sub_1C4A47BB0(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001C4F9B240;
  v5 = *(a2 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1C4F01B58();
      sub_1C4F02318();
      v8 = *(v19 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v5;
    }

    while (v5);
  }

  sub_1C4461BB8(0, &qword_1EC0C1C18, 0x1E695FF10);
  v9 = sub_1C4C0C460();
  v10 = objc_opt_self();
  v11 = [v10 featureValueWithSequence_];

  *(inited + 48) = v11;
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x80000001C4F9B220;
  v12 = *(a1 + 16);
  if (v12)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v13 = (a1 + 32);
    do
    {
      v14 = *v13++;
      sub_1C4F017D8();
      sub_1C4F02318();
      v15 = *(v20 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      --v12;
    }

    while (v12);
  }

  v16 = sub_1C4C0C460();
  v17 = [v10 featureValueWithSequence_];

  *(inited + 72) = v17;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  return sub_1C4F00F28();
}

uint64_t sub_1C4A47E14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4A47E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NowPlayingBucketingSequence(0);
  v10 = sub_1C43FBCE0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4A480D4(a1, v8);
  *v14 = 1;
  v15 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v16 = [v15 NowPlaying];
  swift_unknownObjectRelease();
  v24 = sub_1C456902C(&qword_1EC0C1C00, &unk_1C4F46858);
  v25 = sub_1C4A49A40(&qword_1EDDDE918, &qword_1EC0C1C00, &unk_1C4F46858);
  sub_1C4422F90(&v23);
  sub_1C4580690();
  if (v2)
  {
    sub_1C4420C3C(v8, &qword_1EC0B84B8, &unk_1C4F0D4F0);

    return sub_1C47C41F8(&v23);
  }

  else
  {

    sub_1C441D670(&v23, (v14 + 8));
    v18 = *(v9 + 28);
    v19 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v19);
    (*(v20 + 16))(&v14[v18], v8);
    sub_1C4420C3C(v8, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    *(v14 + 6) = MEMORY[0x1E69E7CC0];
    sub_1C43FDB70();
    return sub_1C4A49BA8(v14, a2, v21);
  }
}

uint64_t sub_1C4A480D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A48144()
{
  sub_1C43FBCD4();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_1C4EF9CD8();
  v1[21] = v3;
  sub_1C43FCF7C(v3);
  v1[22] = v4;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v7 = *(*(sub_1C456902C(&qword_1EC0C1C20, &qword_1C4F469E8) - 8) + 64);
  v1[29] = sub_1C43FBE7C();
  v8 = type metadata accessor for NowPlayingEvent(0);
  v1[30] = v8;
  sub_1C43FCF7C(v8);
  v1[31] = v9;
  v11 = *(v10 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A4830C, 0, 0);
}

uint64_t sub_1C4A4830C()
{
  v1 = v0[20];
  v2 = v1[4];
  v3 = v1[5];
  v4 = sub_1C4409678(v1 + 1, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64);
  v7 = sub_1C43FBE7C();
  (*(v5 + 16))(v7, v4, v2);
  v8 = *(v3 + 8);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_1C4422F90(v0 + 2);
  sub_1C4F019A8();

  sub_1C442E404();
  v0[42] = sub_1C43FD730();
  v9 = sub_1C4F01F48();
  v0[43] = v9;
  sub_1C43FCF7C(v9);
  v0[44] = v10;
  v12 = *(v11 + 64);
  v0[45] = sub_1C43FBE7C();
  v13 = sub_1C43FD730();
  v0[46] = v13;
  sub_1C43FCF7C(v13);
  v0[47] = v14;
  v0[48] = *(v15 + 64);
  v0[49] = sub_1C43FBE7C();
  v16 = *(MEMORY[0x1E69E85B0] + 4);
  v17 = swift_task_alloc();
  v0[50] = v17;
  *v17 = v0;
  v18 = sub_1C4432704(v17);

  return MEMORY[0x1EEE6D8D0](v18);
}

uint64_t sub_1C4A48558()
{
  sub_1C43FBCD4();
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    v6 = sub_1C4A490B8;
  }

  else
  {
    v7 = *(v2 + 392);

    v6 = sub_1C4A48664;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4A48664()
{
  v3 = *(v0 + 360);
  v4 = *(v0 + 336);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    (*(*(v0 + 352) + 8))(v3, *(v0 + 344));

    sub_1C440962C((v0 + 16));
    v5 = *(v0 + 160);
    v6 = *(v5 + 48);
    if (*(v6 + 16))
    {
      v7 = *(v0 + 224);
      v9 = *(v0 + 184);
      v8 = *(v0 + 192);
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      v12 = type metadata accessor for NowPlayingBucketingSequence(0);
      v13 = sub_1C4433608(v12);
      (v2)(v13);
      (v2)(v7, v5 + v1, v10);
      sub_1C4EF9B38();
      v14 = *(v6 + 16);
      v15 = MEMORY[0x1E69E7CC0];
      v181 = v6;
      if (v14)
      {
        v16 = *(v0 + 264);
        v178 = *(v0 + 240);
        sub_1C440AF5C(*(v0 + 248));
        v184 = v17;
        v18 = MEMORY[0x1E69E7CC0];
        v19 = v8;
        do
        {
          v20 = *(v0 + 264);
          sub_1C4407638();
          sub_1C4A49AF0(v19, v21, v22);
          v23 = *(v16 + v2);
          v24 = *(v0 + 264);
          if (*(v23 + 16))
          {
            v5 = *(v23 + 32);
            sub_1C441A0B0();
            sub_1C4A49B50(v25, v26);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = *(v18 + 16);
              sub_1C43FCEC0();
              sub_1C458A8D8();
              v18 = v34;
            }

            v28 = *(v18 + 16);
            v27 = *(v18 + 24);
            sub_1C440F994();
            if (v30)
            {
              sub_1C441FF14(v29);
              sub_1C458A8D8();
              v18 = v35;
            }

            sub_1C43FF464();
          }

          else
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v31, v32);
          }

          v19 += v184;
          --v14;
        }

        while (v14);
        v83 = *(v181 + 16);
        if (v83)
        {
          v2 = *(v0 + 256) + *(v178 + 24);
          v15 = MEMORY[0x1E69E7CC0];
          do
          {
            v84 = *(v0 + 256);
            sub_1C4407638();
            sub_1C4A49AF0(v8, v85, v86);
            v87 = *(v2 + 8);
            v88 = *(v0 + 256);
            if (*(v87 + 16))
            {
              v5 = *(v87 + 32);
              sub_1C441A0B0();
              sub_1C4A49B50(v89, v90);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = *(v15 + 16);
                sub_1C43FCEC0();
                sub_1C445C3F8();
                v15 = v97;
              }

              v92 = *(v15 + 16);
              v91 = *(v15 + 24);
              sub_1C440F994();
              if (v30)
              {
                sub_1C441FF14(v93);
                sub_1C445C3F8();
                v15 = v98;
              }

              sub_1C4408E08();
            }

            else
            {
              sub_1C441A0B0();
              sub_1C4A49B50(v94, v95);
            }

            v8 += v184;
            --v83;
          }

          while (v83);
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      sub_1C440D690();
      v186 = v147;
      v148 = *(v5 + 32);
      v148(v8);
      v149 = sub_1C43FC6BC();
      v148(v149);

      v150 = (v8 + *(v10 + 24));
      *v150 = v18;
      v150[1] = v15;
      *(v186 + 48) = MEMORY[0x1E69E7CC0];
      sub_1C4407638();
      sub_1C4A49BA8(v8, v2, v151);
      v99 = sub_1C443523C();
    }

    else
    {
      v99 = sub_1C442BD6C();
    }

    sub_1C440BAA8(v99, v100, v101, v102);
LABEL_65:
    sub_1C4417568();
    v180 = *(v0 + 200);
    v183 = *(v0 + 192);
    v187 = *(v0 + 184);

    sub_1C43FBDA0();

    return v152();
  }

  v37 = *(v0 + 232);
  v36 = *(v0 + 240);
  *(v0 + 80) = v4;
  v38 = sub_1C4422F90((v0 + 56));
  (*(*(v4 - 8) + 32))(v38, v3, v4);

  sub_1C44482AC((v0 + 56), (v0 + 88));
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 312);
    v40 = *(v0 + 232);
    v41 = *(v0 + 160);
    sub_1C440BAA8(v40, 0, 1, *(v0 + 240));
    sub_1C4407638();
    sub_1C4A49BA8(v40, v39, v42);
    if (*v41 == 1)
    {
      v43 = *(v0 + 312);
      v44 = *(v0 + 168);
      v45 = *(v0 + 176);
      v46 = *(v0 + 160);
      v47 = type metadata accessor for NowPlayingBucketingSequence(0);
      (*(v45 + 24))(&v46[*(v47 + 28)], v43, v44);
      *v46 = 0;
    }

    v48 = *(v0 + 312);
    v50 = *(v0 + 216);
    v49 = *(v0 + 224);
    v51 = *(v0 + 168);
    v52 = *(v0 + 176);
    v53 = *(v0 + 160);
    v54 = type metadata accessor for NowPlayingBucketingSequence(0);
    v55 = *(v52 + 16);
    v56 = *(v54 + 28);
    v55(v50, v53 + v56, v51);
    sub_1C4EF9B38();
    LOBYTE(v48) = sub_1C4EF9C08();
    (*(v52 + 8))(v49, v51);
    if (v48)
    {
      v57 = *(v0 + 224);
      v58 = *(v0 + 200);
      v60 = *(v0 + 160);
      v59 = *(v0 + 168);
      v55(*(v0 + 208), v53 + v56, v59);
      v177 = v56;
      v179 = v53;
      v55(v57, v53 + v56, v59);
      sub_1C4EF9B38();
      v61 = *(*(v60 + 48) + 16);
      v182 = *(v60 + 48);
      if (v61)
      {
        v62 = *(v0 + 296);
        v175 = *(v0 + 240);
        sub_1C440AF5C(*(v0 + 248));
        v185 = v63;
        v64 = MEMORY[0x1E69E7CC0];
        v65 = v59;
        do
        {
          v66 = *(v0 + 296);
          sub_1C4407638();
          sub_1C4A49AF0(v65, v67, v68);
          v69 = *(v62 + v53);
          v70 = *(v0 + 296);
          if (*(v69 + 16))
          {
            v71 = *(v69 + 32);
            sub_1C441A0B0();
            sub_1C4A49B50(v72, v73);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v79 = *(v64 + 16);
              sub_1C43FCEC0();
              sub_1C458A8D8();
              v64 = v80;
            }

            v75 = *(v64 + 16);
            v74 = *(v64 + 24);
            sub_1C440F994();
            if (v30)
            {
              sub_1C441FF14(v76);
              sub_1C458A8D8();
              v64 = v81;
            }

            sub_1C43FF464();
          }

          else
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v77, v78);
          }

          v65 += v185;
          --v61;
        }

        while (v61);
        v128 = *(v182 + 16);
        if (v128)
        {
          v129 = *(v0 + 288) + *(v175 + 24);
          v130 = MEMORY[0x1E69E7CC0];
          do
          {
            v131 = *(v0 + 288);
            sub_1C4407638();
            sub_1C4A49AF0(v59, v132, v133);
            v134 = *(v129 + 8);
            v135 = *(v0 + 288);
            if (*(v134 + 16))
            {
              v136 = *(v134 + 32);
              sub_1C441A0B0();
              sub_1C4A49B50(v137, v138);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v144 = *(v130 + 16);
                sub_1C43FCEC0();
                sub_1C445C3F8();
                v130 = v145;
              }

              v140 = *(v130 + 16);
              v139 = *(v130 + 24);
              sub_1C440F994();
              if (v30)
              {
                sub_1C441FF14(v141);
                sub_1C445C3F8();
                v130 = v146;
              }

              sub_1C4408E08();
            }

            else
            {
              sub_1C441A0B0();
              sub_1C4A49B50(v142, v143);
            }

            v59 += v185;
            --v128;
          }

          while (v128);
        }

        else
        {
          v130 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v64 = MEMORY[0x1E69E7CC0];
        v130 = MEMORY[0x1E69E7CC0];
      }

      v153 = *(v0 + 304);
      v154 = *(v0 + 240);
      v173 = *(v0 + 312);
      v174 = *(v0 + 248);
      v155 = *(v0 + 200);
      v157 = *(v0 + 168);
      v156 = *(v0 + 176);
      v176 = *(v0 + 160);
      v188 = *(v0 + 152);
      v158 = *(v156 + 32);
      v158(v153, *(v0 + 208), v157);
      v158(v153 + *(v154 + 20), v155, v157);
      v159 = v154;
      v160 = (v153 + *(v154 + 24));
      *v160 = v64;
      v160[1] = v130;
      (*(v156 + 24))(v179 + v177, v173, v157);
      sub_1C456902C(&qword_1EC0C04D8, &qword_1C4F3E970);
      v161 = *(v174 + 72);
      v162 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v163 = swift_allocObject();
      *(v163 + 16) = xmmword_1C4F0D130;
      sub_1C440351C();
      sub_1C4A49AF0(v173, v164 + v162, v165);
      sub_1C4A49B50(v173, v130);

      *(v176 + 48) = v163;
      sub_1C4A49BA8(v153, v188, v130);
      sub_1C440BAA8(v188, 0, 1, v159);
      sub_1C440962C((v0 + 16));
      goto LABEL_65;
    }

    v103 = *(v0 + 312);
    v104 = *(v0 + 280);
    v105 = *(v0 + 160);
    sub_1C4407638();
    sub_1C4A49AF0(v106, v107, v108);
    v109 = *(v105 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = *(v109 + 16);
      v167 = sub_1C43FCEC0();
      sub_1C458A898(v167, v168, v169, v109);
      v109 = v170;
    }

    v111 = *(v109 + 16);
    v110 = *(v109 + 24);
    if (v111 >= v110 >> 1)
    {
      sub_1C458A898(v110 > 1, v111 + 1, 1, v109);
      v109 = v171;
    }

    v112 = *(v0 + 312);
    v113 = *(v0 + 280);
    v114 = *(v0 + 248);
    v115 = *(v0 + 160);
    sub_1C440351C();
    sub_1C4A49B50(v116, v117);
    *(v109 + 16) = v111 + 1;
    sub_1C4A49BA8(v113, v109 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v111, v51);
    *(v115 + 48) = v109;
  }

  else
  {
    v82 = *(v0 + 232);
    sub_1C440BAA8(v82, 1, 1, *(v0 + 240));
    sub_1C4420C3C(v82, &qword_1EC0C1C20, &qword_1C4F469E8);
  }

  sub_1C442E404();
  *(v0 + 336) = sub_1C43FD730();
  v118 = sub_1C4F01F48();
  *(v0 + 344) = v118;
  sub_1C43FCF7C(v118);
  *(v0 + 352) = v119;
  v121 = *(v120 + 64);
  *(v0 + 360) = sub_1C43FBE7C();
  v122 = sub_1C43FD730();
  *(v0 + 368) = v122;
  sub_1C43FCF7C(v122);
  *(v0 + 376) = v123;
  *(v0 + 384) = *(v124 + 64);
  *(v0 + 392) = sub_1C43FBE7C();
  v125 = *(MEMORY[0x1E69E85B0] + 4);
  v126 = swift_task_alloc();
  *(v0 + 400) = v126;
  *v126 = v0;
  v127 = sub_1C4432704();

  return MEMORY[0x1EEE6D8D0](v127);
}

uint64_t sub_1C4A490B8()
{
  v93 = v0;
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v7 = v0[40];
  v6 = v0[41];
  v8 = sub_1C43FBE7C();
  v9 = *(v5 + 32);
  v9(v8, v3, v4);
  swift_getAssociatedConformanceWitness();
  v10 = sub_1C4F028C8();
  if (v10)
  {
    v11 = v10;
    (*(v0[47] + 8))(v8, v0[46]);
  }

  else
  {
    v12 = v0[46];
    v11 = swift_allocError();
    v9(v13, v8, v12);
  }

  v14 = v0[49];
  v15 = v0[45];

  sub_1C440962C(v0 + 2);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDDFECB8);
  v17 = v11;
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v92 = v21;
    *v20 = 136315138;
    swift_getErrorValue();
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[17];
    v25 = sub_1C4F02A38();
    v9 = sub_1C441D828(v25, v26, &v92);

    *(v20 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v18, v19, "Error when fetching events from the Now Playing session async sequence - %s", v20, 0xCu);
    sub_1C440962C(v21);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v27 = v0[20];
  v28 = *(v27 + 48);
  if (*(v28 + 16))
  {
    v29 = v0[28];
    v31 = v0[23];
    v30 = v0[24];
    v32 = v0[21];
    v33 = v0[22];
    v34 = type metadata accessor for NowPlayingBucketingSequence(0);
    v35 = sub_1C4433608(v34);
    (v1)(v35);
    (v1)(v29, v9 + v27, v32);
    sub_1C4EF9B38();
    v36 = *(v28 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    v87 = v28;
    if (v36)
    {
      v38 = v0[33];
      v85 = v0[30];
      sub_1C440AF5C(v0[31]);
      v89 = v39;
      v40 = MEMORY[0x1E69E7CC0];
      v41 = v30;
      do
      {
        v42 = v0[33];
        sub_1C4407638();
        sub_1C4A49AF0(v41, v43, v44);
        v45 = *(v38 + v1);
        v46 = v0[33];
        if (*(v45 + 16))
        {
          v27 = *(v45 + 32);
          sub_1C441A0B0();
          sub_1C4A49B50(v47, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v40 + 16);
            sub_1C43FCEC0();
            sub_1C458A8D8();
            v40 = v56;
          }

          v50 = *(v40 + 16);
          v49 = *(v40 + 24);
          sub_1C440F994();
          if (v52)
          {
            sub_1C441FF14(v51);
            sub_1C458A8D8();
            v40 = v57;
          }

          sub_1C43FF464();
        }

        else
        {
          sub_1C441A0B0();
          sub_1C4A49B50(v53, v54);
        }

        v41 += v89;
        --v36;
      }

      while (v36);
      v58 = *(v87 + 16);
      if (v58)
      {
        v1 = v0[32] + *(v85 + 24);
        v37 = MEMORY[0x1E69E7CC0];
        do
        {
          v59 = v0[32];
          sub_1C4407638();
          sub_1C4A49AF0(v30, v60, v61);
          v62 = *(v1 + 8);
          v63 = v0[32];
          if (*(v62 + 16))
          {
            v27 = *(v62 + 32);
            sub_1C441A0B0();
            sub_1C4A49B50(v64, v65);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = *(v37 + 16);
              sub_1C43FCEC0();
              sub_1C445C3F8();
              v37 = v72;
            }

            v67 = *(v37 + 16);
            v66 = *(v37 + 24);
            sub_1C440F994();
            if (v52)
            {
              sub_1C441FF14(v68);
              sub_1C445C3F8();
              v37 = v73;
            }

            sub_1C4408E08();
          }

          else
          {
            sub_1C441A0B0();
            sub_1C4A49B50(v69, v70);
          }

          v30 += v89;
          --v58;
        }

        while (v58);
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    sub_1C440D690();
    v90 = v78;
    v79 = *(v27 + 32);
    v79(v30);
    v80 = sub_1C43FC6BC();
    v79(v80);

    v81 = (v30 + *(v32 + 24));
    *v81 = v40;
    v81[1] = v37;
    *(v90 + 48) = MEMORY[0x1E69E7CC0];
    sub_1C4407638();
    sub_1C4A49BA8(v30, v1, v82);
    v74 = sub_1C443523C();
  }

  else
  {
    v74 = sub_1C442BD6C();
  }

  sub_1C440BAA8(v74, v75, v76, v77);
  sub_1C4417568();
  v86 = v0[25];
  v88 = v0[24];
  v91 = v0[23];

  sub_1C43FBDA0();

  return v83();
}

uint64_t sub_1C4A49684()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A4424C;

  return sub_1C4A48144();
}

uint64_t sub_1C4A49718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A44400;

  return (sub_1C4982614)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A4982C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C4A498E0()
{
  sub_1C4A4998C();
  if (v0 <= 0x3F)
  {
    sub_1C4A499E8();
    if (v1 <= 0x3F)
    {
      sub_1C4EF9CD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C4A4998C()
{
  result = qword_1EDDE1880[0];
  if (!qword_1EDDE1880[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDDE1880);
  }

  return result;
}

void sub_1C4A499E8()
{
  if (!qword_1EDDDBC98)
  {
    type metadata accessor for NowPlayingEvent(255);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBC98);
    }
  }
}

uint64_t sub_1C4A49A40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4A49A98()
{
  result = qword_1EC0C1C10;
  if (!qword_1EC0C1C10)
  {
    type metadata accessor for NowPlayingBucketingSequence(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C10);
  }

  return result;
}

uint64_t sub_1C4A49AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4A49B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C4A49BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4A49C08(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 6)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CD8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Unknown BMNowPlayingPlaybackState: %d", v5, 8u);
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1C4A49CE8()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C4A49D34(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A49DC4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x676E6979616C70;
      break;
    case 2:
      result = 0x646573756170;
      break;
    case 3:
      result = 0x646570706F7473;
      break;
    case 4:
      result = 0x7075727265746E69;
      break;
    case 5:
      result = 0x676E696B656573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4A49EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v41 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v41;
  v31 = "last_nowplaying_bundle";
  v32 = "last_nowplaying_mediatype";
  v33 = "last_nowplaying_mediagenre";
  do
  {
    v34 = 0xD000000000000016;
    v35 = "_share";
    switch(byte_1F43D2798[v29 + 32])
    {
      case 1:
        v34 = 0xD000000000000019;
        v35 = v31;
        break;
      case 2:
        v34 = 0xD00000000000001ALL;
        v35 = v32;
        break;
      case 3:
        v34 = 0xD00000000000001DLL;
        v35 = v33;
        break;
      case 4:
        v34 = 0xD000000000000019;
        v35 = "last_nowplaying_playbackstate";
        break;
      default:
        break;
    }

    v42 = v30;
    v36 = *(v30 + 16);
    if (v36 >= *(v30 + 24) >> 1)
    {
      v39 = v32;
      v40 = v31;
      v38 = v33;
      sub_1C44CD9C0();
      v33 = v38;
      v32 = v39;
      v31 = v40;
      v30 = v42;
    }

    ++v29;
    *(v30 + 16) = v36 + 1;
    v37 = v30 + 16 * v36;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35 | 0x8000000000000000;
  }

  while (v29 != 5);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4A4A074(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4A4A0CC(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4A4A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - v11;
  v13 = *(a1 + 16);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v12, v10, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v29 = sub_1C4A4B4E4;
  v30 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C44405F8;
  v28 = &unk_1F43F52A0;
  v19 = _Block_copy(&aBlock);

  v29 = sub_1C4A4B4EC;
  v30 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1C4440590;
  v28 = &unk_1F43F52C8;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 sinkWithCompletion:v19 receiveInput:v20];

  _Block_release(v20);
  _Block_release(v19);

  swift_beginAccess();
  v22 = *(v18 + 16);
  *a3 = v22;
  v23 = v22;
}

void sub_1C4A4A3BC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if ([a1 state] == 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);

    v5 = a1;
    oslog = sub_1C4F00968();
    v6 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315394;

      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v19);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = [v5 error];
      if (v12)
      {
        v13 = v12;
        swift_getErrorValue();
        v14 = sub_1C4F02A38();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v17 = sub_1C441D828(v14, v16, &v19);

      *(v7 + 14) = v17;
      _os_log_impl(&dword_1C43F8000, oslog, v6, "%s: failed to read NowPlaying Biome stream: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v8, -1, -1);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4A4A62C(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in NowPlaying featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4A4A764(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-v7];
  v9 = sub_1C4A4A074(a1);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1C4A49C08([v9 playbackState]);
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F13950;
    sub_1C43FBDF0();
    *(v13 + 32) = 0xD000000000000016;
    *(v13 + 40) = v14;
    sub_1C45B4BF8(v10, &selRef_bundleID);
    sub_1C4577DBC();
    sub_1C4594E18();
    sub_1C43FBDF0();
    *(inited + 48) = v15;
    *(inited + 56) = 0xD000000000000019;
    *(inited + 64) = v16;
    sub_1C45B4BF8(v10, &selRef_mediaType);
    sub_1C4594E18();
    sub_1C43FBDF0();
    *(inited + 72) = v17;
    *(inited + 80) = 0xD00000000000001ALL;
    *(inited + 88) = v18;
    sub_1C45B4BF8(v10, &selRef_genre);
    sub_1C4594E18();
    sub_1C43FBDF0();
    *(inited + 96) = v19;
    *(inited + 104) = 0xD00000000000001DLL;
    *(inited + 112) = v20;
    sub_1C4A49DC4(v11);
    sub_1C4594E18();
    sub_1C43FBDF0();
    *(inited + 120) = v21;
    *(inited + 128) = 0xD000000000000019;
    *(inited + 136) = v22;
    v23 = [v10 absoluteTimestamp];
    if (v23)
    {
      v24 = v23;
      sub_1C4EF9C78();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v31 = sub_1C4EF9CD8();
    sub_1C440BAA8(v6, v25, 1, v31);
    sub_1C45B69E4(v6, v8);
    if (sub_1C44157D4(v8, 1, v31) == 1)
    {
      sub_1C44686E4(v8);
      v32 = 0.0;
    }

    else
    {
      sub_1C4EF9AD8();
      v32 = v33;
      (*(*(v31 - 8) + 8))(v8, v31);
    }

    *(inited + 144) = [objc_opt_self() featureValueWithDouble_];
    v34 = sub_1C4F00F28();

    return v34;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDDFECB8);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Unable to fetch most recent NowPlayingEvent", v29, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C4A4AB7C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4A4A764(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4A4B314(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4A4AE30()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4A4A764(v8);
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_1C4A4AEEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4A49CE8();
  if (v13 == 5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1C441D828(a1, a2, &v23);
      _os_log_impl(&dword_1C43F8000, v15, v16, "Feature name: %s not available from NowPlaying", v17, 0xCu);
      sub_1C440962C(v18);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  else
  {
    v20 = v13;
    sub_1C4EF9C88();
    sub_1C4A4A764(v12);
    (*(v7 + 8))(v12, v4);
    v21 = sub_1C4A49D34(v20);
    v19 = sub_1C44F9274(v21);
  }

  return v19;
}

uint64_t sub_1C4A4B19C()
{
  v1 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v2 = [v1 NowPlaying];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

unint64_t sub_1C4A4B298(uint64_t a1)
{
  result = sub_1C4A4B2C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4A4B2C0()
{
  result = qword_1EC0C1C28;
  if (!qword_1EC0C1C28)
  {
    type metadata accessor for NowPlayingSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C28);
  }

  return result;
}

void *sub_1C4A4B314(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4A4B4FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4A4B56C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v4 = sub_1C4EFB078();
  v5 = sub_1C43FCDF8(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFBCC8();
  v12 = sub_1C43FCDF8(v11);
  v32 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = *v2;
  v17 = v2[1];
  v35 = v2;
  result = sub_1C4EFBFD8();
  if (!v3)
  {
    v38 = v4;
    if (*(v2[8] + 16))
    {
      v19 = v2[6];
      v33 = v2[7];
      v34 = v19;
      sub_1C4EFBCB8();
      v20 = swift_allocObject();
      memcpy((v20 + 16), v2, 0x48uLL);
      sub_1C4A4CA50(v2, v36);
      sub_1C4EFBF98();
      v33 = v17;
      v34 = v16;
      v21 = sub_1C440AF78();
      v22(v21);
    }

    else
    {
      v33 = v17;
      v34 = v16;
    }

    v23 = *(v31 + 16);
    v24 = (v30 + 8);
    for (i = (v31 + 48); v23; --v23)
    {
      v27 = *(i - 1);
      v26 = *i;
      v28 = *(i - 2);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB058();
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      sub_1C4EFBFB8();

      sub_1C4423A0C(v36, &qword_1EC0C5040, &qword_1C4F0F950);
      result = (*v24)(v10, v38);
      i += 3;
    }
  }

  return result;
}

uint64_t sub_1C4A4B8AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v29 - v5;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ViewDatabaseArtifact.Property();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  v16 = *(a2 + 24);
  v17 = *(v16 + 16);
  if (v17)
  {
    v32 = *(v12 + 20);
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    do
    {
      sub_1C443CCBC(v18, v15);
      v20 = *v15;
      v21 = *(v15 + 1);
      v22 = sub_1C4EFBE38();
      (*(*(v22 - 8) + 16))(v9, &v15[v32], v22);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v15);
      sub_1C440BAA8(v9, 0, 1, v22);
      sub_1C4EFB498();

      sub_1C4423A0C(v9, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C4F0D130;
  v24 = *(v30 + 40);
  *(v23 + 32) = *(v30 + 32);
  *(v23 + 40) = v24;
  v25 = *MEMORY[0x1E69A00D0];
  v26 = sub_1C4EFBF38();
  v27 = v31;
  (*(*(v26 - 8) + 104))(v31, v25, v26);
  sub_1C440BAA8(v27, 0, 1, v26);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB478();

  return sub_1C4423A0C(v27, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A4BBC8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB048, &unk_1C4F1DC50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  v8 = *a1;
  v9 = *a2;
  v10 = a2[1];
  sub_1C4EFB7C8();
  sub_1C4EFF9A8();
  sub_1C46A9848(&qword_1EDDFF9C0);
  sub_1C4EFB7B8();
  v11 = sub_1C4EFB928();
  sub_1C440BAA8(v7, 0, 1, v11);
  v22[3] = v8;
  result = sub_1C4EFB7F8();
  v13 = a2[3];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = a2[8];
    v16 = type metadata accessor for ViewDatabaseArtifact.Property();
    v17 = *(v16 - 8);
    result = v16 - 8;
    v18 = *(v17 + 72);
    v19 = (((*(v17 + 80) + 32) & ~*(v17 + 80)) + v13 + 8);
    do
    {
      v20 = *v19;
      v22[0] = *(v19 - 1);
      v22[1] = v20;
      MEMORY[0x1EEE9AC00](result);
      v22[-2] = v22;
      v21 = sub_1C44CE068(sub_1C44CE790, &v22[-4], v15);
      sub_1C4EFB7D8();
      if (!v21)
      {
        sub_1C4EFB848();
      }

      v19 = (v19 + v18);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1C4A4BDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C4F919C0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73657865646E69 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D756C6F43737466 && a2 == 0xEA0000000000736ELL)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C4A4BFB4(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6D756C6F63;
      goto LABEL_6;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      v3 = 0x657865646E69;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 4:
      result = 0x6D756C6F43737466;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A4C058(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C1C38, &qword_1C4F46BF0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A4C7E0();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v20) = 0;
  sub_1C44121E4();
  if (!v2)
  {
    v20 = v3[2];
    HIBYTE(v19) = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CAB4(&qword_1EDDDBC60);
    sub_1C44069F0();
    sub_1C4F027E8();
    v16 = v3[3];
    v17 = v3[4];
    LOBYTE(v20) = 2;
    sub_1C44121E4();
    v20 = v3[5];
    HIBYTE(v19) = 3;
    sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
    sub_1C443D1E4(&unk_1EC0BB030);
    sub_1C44069F0();
    sub_1C4F02778();
    v20 = v3[6];
    HIBYTE(v19) = 4;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D0B4(&qword_1EDDFA578);
    sub_1C44069F0();
    sub_1C4F02778();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4A4C2D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C1C30, &unk_1C4F46BE0);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A4C7E0();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v21) = 0;
  v10 = sub_1C4F02678();
  v12 = v11;
  v20 = v10;
  sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  sub_1C443CAB4(&qword_1EDDFEA60);
  sub_1C441A0C8();
  sub_1C4F026C8();
  v19 = v21;
  LOBYTE(v21) = 2;
  v17 = sub_1C4F02678();
  v18 = v13;
  sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
  sub_1C443D1E4(&unk_1EDDFEA70);
  sub_1C441A0C8();
  sub_1C4F02658();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D0B4(&qword_1EDDFEA58);
  sub_1C441A0C8();
  sub_1C4F02658();
  v14 = sub_1C442D014();
  v15(v14);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);

  *a2 = v20;
  a2[1] = v12;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v21;
  a2[6] = v21;
  return result;
}

uint64_t sub_1C4A4C6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A4BDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A4C700(uint64_t a1)
{
  v2 = sub_1C4A4C7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A4C73C(uint64_t a1)
{
  v2 = sub_1C4A4C7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4A4C778@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4A4C2D0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1C4A4C7E0()
{
  result = qword_1EDDFAFA8;
  if (!qword_1EDDFAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObjectRowDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A4C914()
{
  result = qword_1EC0C1C40;
  if (!qword_1EC0C1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C40);
  }

  return result;
}

unint64_t sub_1C4A4C96C()
{
  result = qword_1EDDFAF98;
  if (!qword_1EDDFAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF98);
  }

  return result;
}

unint64_t sub_1C4A4C9C4()
{
  result = qword_1EDDFAFA0;
  if (!qword_1EDDFAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFA0);
  }

  return result;
}

uint64_t sub_1C4A4CA88()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2DD88);
  v1 = sub_1C43FBC98();
  sub_1C442B738(v1, v2);
  sub_1C4403FC0();
  v3 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v0, 1, 1, v3);
}

uint64_t *sub_1C4A4CAFC(char a1)
{
  switch(a1)
  {
    case 1:
      type metadata accessor for OneShotTasks.ViewTasks.ViewHourlyTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4DC08();
      sub_1C4403FC0();
      type metadata accessor for OneShotTask();
      v2 = sub_1C44162BC();
      v3 = &off_1F43F5788;
      v4 = &off_1F43F5738;
      v5 = type metadata accessor for OneShotTasks.ViewTasks.ViewHourlyTaskRunner;
      break;
    case 2:
      type metadata accessor for OneShotTasks.ViewTasks.ViewEvery21MinutesTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4DD88();
      sub_1C4403FC0();
      type metadata accessor for OneShotTask();
      v2 = sub_1C44162BC();
      v3 = &off_1F43F5720;
      v4 = &off_1F43F56D0;
      v5 = type metadata accessor for OneShotTasks.ViewTasks.ViewEvery21MinutesTaskRunner;
      break;
    case 3:
      type metadata accessor for OneShotTasks.ViewTasks.ViewEvery7MinutesTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4DF08();
      sub_1C4403FC0();
      type metadata accessor for OneShotTask();
      v2 = sub_1C44162BC();
      v3 = &off_1F43F56B8;
      v4 = &off_1F43F5668;
      v5 = type metadata accessor for OneShotTasks.ViewTasks.ViewEvery7MinutesTaskRunner;
      break;
    case 4:
      type metadata accessor for OneShotTasks.ViewTasks.ViewBiomeDeleteDebounceTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4E144();
      sub_1C4403FC0();
      type metadata accessor for OneShotTask();
      v2 = sub_1C44162BC();
      v3 = &off_1F43F5650;
      v4 = &off_1F43F5600;
      v5 = type metadata accessor for OneShotTasks.ViewTasks.ViewBiomeDeleteDebounceTaskRunner;
      break;
    default:
      type metadata accessor for OneShotTasks.ViewTasks.ViewLiveTaskRunner();
      sub_1C4418B14();
      swift_allocObject();
      sub_1C4A4D8E0();
      sub_1C4403FC0();
      type metadata accessor for OneShotTask();
      v2 = sub_1C44162BC();
      v3 = &off_1F43F57F0;
      v4 = &off_1F43F57A0;
      v5 = type metadata accessor for OneShotTasks.ViewTasks.ViewLiveTaskRunner;
      break;
  }

  return sub_1C4A51D30(v1, v2, v5, v3, v4);
}

uint64_t sub_1C4A4CCC0(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - v6;
  result = type metadata accessor for Configuration();
  v9 = result;
  v10 = *(a1 + *(result + 20));
  if (qword_1EDDF0C88 != -1)
  {
    v23 = *(a1 + *(result + 20));
    result = swift_once();
    v10 = v23;
  }

  v11 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDF0C90[0], v10), xmmword_1EDDF0C90[0]));
  if (v11.i32[0] & v11.i32[1])
  {
    if (qword_1EDDFC178 != -1)
    {
      sub_1C4408E18();
    }

    sub_1C442B738(v2, qword_1EDE2DD88);
    v12 = sub_1C4402120();
    sub_1C44098F0(v12, v13);
    sub_1C440BAA8(v7, 0, 1, v9);
    swift_beginAccess();
    v14 = sub_1C4402B58();
    sub_1C45A6EE0(v14, v15);
    swift_endAccess();
    type metadata accessor for OneShotSingletons();
    v16 = 0;
    v22[1] = 0x80000001C4FADEF0;
    v23.i64[0] = 0x80000001C4FADED0;
    do
    {
      v17 = byte_1F43DB1B8[v16++ + 32];
      v18 = 0x6576694C77656976;
      switch(v17)
      {
        case 1:
          v18 = 0x72756F4877656976;
          break;
        case 2:
          v18 = 0xD000000000000012;
          break;
        case 3:
          v18 = 0xD000000000000011;
          break;
        case 4:
          v18 = 0xD000000000000017;
          break;
        default:
          break;
      }

      MEMORY[0x1EEE9AC00](v18);
      LOBYTE(v22[-2]) = v19;
      sub_1C446703C(v20);

      sub_1C440F9A0();
      sub_1C4A4CFD0(&unk_1F43F5818, v21, &unk_1F43F5830);
    }

    while (v16 != 5);
  }

  return result;
}

void sub_1C4A4CFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = v3[6];
  sub_1C4409678(v3 + 2, v3[5]);
  v7 = *(v6 + 8);
  v8 = sub_1C4406834();
  v10 = v9(v8, v6);
  v12 = v11;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1C43FD084();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136315138;
    v18 = sub_1C4404C28();
    *(v16 + 4) = sub_1C441D828(v18, v19, v20);
    _os_log_impl(&dword_1C43F8000, v14, v15, "ScheduledTask: %s: Registering", v16, 0xCu);
    sub_1C440962C(v17);
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }

  aBlock = 0xD000000000000038;
  v36 = 0x80000001C4FADF30;
  v21 = sub_1C4404C28();
  MEMORY[0x1C6940010](v21);
  v22 = *MEMORY[0x1E69E9C50];
  sub_1C4418B14();
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = v12;
  v23[4] = v5;
  v39 = a2;
  v40 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1C443EC24;
  v38 = a3;
  v24 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v25 = sub_1C4F011C8();

  xpc_activity_register((v25 + 32), v22, v24);

  _Block_release(v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C4F00968();
  LOBYTE(v25) = sub_1C4F01CF8();

  if (os_log_type_enabled(v26, v25))
  {
    sub_1C43FD084();
    v27 = sub_1C440E550();
    aBlock = v27;
    MEMORY[0xD000000000000038] = 136315138;
    v28 = sub_1C4404C28();
    v31 = sub_1C441D828(v28, v29, v30);

    MEMORY[0xD00000000000003C] = v31;
    sub_1C44003E4(&dword_1C43F8000, v32, v33, "ScheduledTask: %s: registered");
    sub_1C440962C(v27);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }
}

uint64_t *sub_1C4A4D2CC()
{
  type metadata accessor for OneShotTasks.ConstructionTasks.FullPipelineLongRunningTask();
  sub_1C4418B14();
  swift_allocObject();
  sub_1C4A4EDF4();
  sub_1C4403FC0();
  type metadata accessor for OneShotTask();
  v1 = sub_1C44162BC();
  return sub_1C4A51D30(v0, v1, type metadata accessor for OneShotTasks.ConstructionTasks.FullPipelineLongRunningTask, &off_1F43F55E8, &off_1F43F55A0);
}

uint64_t sub_1C4A4D33C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1 = sub_1C43FBCE0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - v4;
  if (qword_1EDDFC178 != -1)
  {
    sub_1C4408E18();
  }

  sub_1C442B738(v0, qword_1EDE2DD88);
  v6 = sub_1C4402120();
  sub_1C44098F0(v6, v7);
  v8 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v8);
  swift_beginAccess();
  v9 = sub_1C4402B58();
  sub_1C45A6EE0(v9, v10);
  swift_endAccess();
  type metadata accessor for OneShotSingletons();
  sub_1C446703C(0xD000000000000013);
  sub_1C440F9A0();
  sub_1C4A4CFD0(v11, v12, v13);
}

void sub_1C4A4D498()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9CB0], 0);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C68], 0);
  v1 = 6 * *MEMORY[0x1E69E9CC8];
  if ((*MEMORY[0x1E69E9CC8] * 6) >> 64 != v1 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C98], v1);
  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 1);
  v2 = *MEMORY[0x1E69E9CA8];
  if (!*MEMORY[0x1E69E9CA8])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = sub_1C4F011C8();
  xpc_dictionary_set_string(empty, v2, (v3 + 32));

  if (*MEMORY[0x1E69E9CA0])
  {
    xpc_dictionary_set_uint64(empty, *MEMORY[0x1E69E9CA0], 1uLL);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C4A4D600()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  sub_1C441FF28();

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4A4D700()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    v9 = sub_1C4A4D860;
  }

  else
  {

    v9 = sub_1C4A4D804;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C4A4D804()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4A4D860()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  sub_1C43FBDA0();

  return v3();
}

void *sub_1C4A4D8E0()
{
  v0[2] = 0x6576694C77656956;
  v0[3] = 0xE800000000000000;
  v0[4] = sub_1C4A4D920(0, 60);
  return v0;
}

uint64_t sub_1C4A4D920(int64_t a1, int64_t a2)
{
  sub_1C4A4D498();
  v5 = v4;
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C68], a1);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9C98], a2);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  sub_1C456902C(&qword_1EC0C1C78, &qword_1C4F470B8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  return result;
}

uint64_t sub_1C4A4D9DC()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  sub_1C441FF28();

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4A4DAE0()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    v9 = sub_1C4A51E6C;
  }

  else
  {

    v9 = sub_1C4A51E8C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void *sub_1C4A4DC08()
{
  v0[2] = 0x72756F4877656956;
  v0[3] = 0xEA0000000000796CLL;
  v0[4] = sub_1C4A4D920(3600, 1800);
  return v0;
}

uint64_t sub_1C4A4DC60()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  sub_1C441FF28();

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

void *sub_1C4A4DD88()
{
  v0[2] = 0xD000000000000012;
  v0[3] = 0x80000001C4FADF90;
  v0[4] = sub_1C4A4DF4C(1260, 60);
  return v0;
}

uint64_t sub_1C4A4DDE0()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  sub_1C441FF28();

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

void *sub_1C4A4DF08()
{
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000001C4FADFB0;
  v0[4] = sub_1C4A4DF4C(420, 60);
  return v0;
}

uint64_t sub_1C4A4DF4C(int64_t a1, int64_t a2)
{
  sub_1C4A4D498();
  v5 = v4;
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C68], a1);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9C98], a2);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9C40], 1);
  sub_1C456902C(&qword_1EC0C1C78, &qword_1C4F470B8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  return result;
}

uint64_t sub_1C4A4E020()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44();
  }

  v1 = *(v0 + 16);
  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v2 = swift_task_alloc();
  v3 = sub_1C4414DF4(v2);
  *v3 = v4;
  sub_1C43FC688(v3);
  sub_1C441FF28();

  return sub_1C4427590(v5, v6, v7, v8, v9, v10);
}

void *sub_1C4A4E144()
{
  v0[2] = 0xD000000000000017;
  v0[3] = 0x80000001C4FADFD0;
  v0[4] = sub_1C4A4DF4C(300, 120);
  return v0;
}

void *sub_1C4A4E188()
{
  type metadata accessor for OneShotSingletons();
  swift_allocObject();
  result = sub_1C4A4E1C8();
  off_1EDDFB450 = result;
  return result;
}

uint64_t sub_1C4A4E1C8()
{
  type metadata accessor for OneShotSingletons.GuardedData();
  v1 = swift_allocObject();
  type metadata accessor for OneShotTask();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C1C80, &qword_1C4F470D8);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void sub_1C4A4E27C()
{
  v0 = 3650 * *MEMORY[0x1E69E9CC0];
  if ((*MEMORY[0x1E69E9CC0] * 3650) >> 64 == v0 >> 63)
  {
    v1 = __OFADD__(v0, *MEMORY[0x1E69E9CC8]);
    v2 = v0 + *MEMORY[0x1E69E9CC8];
    if (!v1)
    {
      qword_1EDDEB328 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C4A4E2C4()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 1);
  v1 = *MEMORY[0x1E69E9CB0];
  if (qword_1EDDEB338 != -1)
  {
    sub_1C4411060();
  }

  v2 = qword_1EDDEB328;
  v3 = sub_1C43FBC98();
  xpc_dictionary_set_int64(v3, v4, v2);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C68], v2);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C98], v2);
  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 0);
  if (!*MEMORY[0x1E69E9C60])
  {
    __break(1u);
    goto LABEL_8;
  }

  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C60], 1);
  if (!*MEMORY[0x1E69E9CA8])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1C4F011C8();
  v5 = sub_1C43FBC98();
  xpc_dictionary_set_string(v5, v6, v7);

  if (*MEMORY[0x1E69E9CA0])
  {
    xpc_dictionary_set_uint64(empty, *MEMORY[0x1E69E9CA0], 1uLL);
    return;
  }

LABEL_9:
  __break(1u);
}

BOOL sub_1C4A4E438()
{
  int64 = xpc_dictionary_get_int64(v0, *MEMORY[0x1E69E9CB0]);
  if (qword_1EDDEB338 != -1)
  {
    sub_1C4411060();
  }

  return int64 == qword_1EDDEB328;
}

uint64_t sub_1C4A4E49C()
{
  v1[5] = v0;
  v2 = type metadata accessor for Pipeline.StatusStore();
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A4E56C, 0, 0);
}

uint64_t sub_1C4A4E56C()
{
  sub_1C4404D98();
  v32 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = v0[5];
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    sub_1C43FD084();
    v6 = sub_1C440E550();
    v31 = v6;
    *v1 = 136315138;
    *(v1 + 4) = sub_1C441D828(*(v5 + 16), *(v5 + 24), &v31);
    sub_1C4415A90();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v12 = v0[9];
  v13 = sub_1C442B738(v0[8], qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v13, v12);
  v14 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v12, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      swift_once();
    }

    v16 = v0[9];
    v17 = sub_1C4468E90();
    v0[10] = v17;
    v18 = v0[9];
    v20 = v0[6];
    v19 = v0[7];
    sub_1C4454168();
    sub_1C44098F0(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores, v19);
    *(v19 + *(v20 + 20)) = 1;
    LOBYTE(v20) = Pipeline.StatusStore.isLongRunningPipelineActivated()();
    sub_1C4454168();
    if ((v20 & 1) == 0)
    {
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CF8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1C43F8000, v24, v25, "ConstructionSystemTasks: Long Running Pipeline activity is not yet detected to be used yet.", v26, 2u);
        sub_1C43FBE2C();
      }

      v27 = v0[9];
      v28 = v0[7];

      sub_1C43FBDA0();
      sub_1C4402234();

      __asm { BRAA            X1, X16 }
    }

    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    sub_1C43FC688(v21);
    sub_1C4402234();

    return sub_1C4ABFCBC(v22);
  }

  return result;
}

uint64_t sub_1C4A4E904()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 96) = v0;

  if (v0)
  {
    v9 = sub_1C4A4EA70;
  }

  else
  {
    v9 = sub_1C4A4EA00;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C4A4EA00()
{
  sub_1C43FBCD4();
  v1 = v0[10];

  v2 = v0[9];
  v3 = v0[7];

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C4A4EA70()
{
  sub_1C43FBCD4();
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4A4EAE0()
{
  v1 = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DE10);

  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C441D828(*(v1 + 16), *(v1 + 24), &v15);
    _os_log_impl(&dword_1C43F8000, v7, v8, "ConstructionSystemTasks: %s: asked to defer.", v9, 0xCu);
    sub_1C440962C(v10);
    MEMORY[0x1C6942830](v10, -1, -1);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v2, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v11, v5);
  v12 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v5, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      swift_once();
    }

    sub_1C4468E90();
    sub_1C4454168();
    sub_1C4ABF738();
  }

  return result;
}

uint64_t sub_1C4A4EDA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

void *sub_1C4A4EDF4()
{
  v0[2] = 0xD000000000000018;
  v0[3] = 0x80000001C4FAE010;
  sub_1C4A4D498();
  v2 = v1;
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x1E69E9C40], 0);
  sub_1C456902C(&qword_1EC0C1C78, &qword_1C4F470B8);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  v0[4] = v3;
  return v0;
}

uint64_t sub_1C4A4EE9C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C442E8C4;

  return sub_1C4A4E49C();
}

void sub_1C4A4EF2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-v10];
  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C442B738(v8, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v12, v11);
  v13 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v11, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = &v11[*(v13 + 20)];
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1C4454168();
    if (qword_1EDDFEC88 != -1)
    {
      v17 = swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v15) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v16) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1C441D828(a2, a3, &v26);
        _os_log_impl(&dword_1C43F8000, v21, v22, "ScheduledTask: %s: registered as a no-op.", v23, 0xCu);
        sub_1C440962C(v24);
        MEMORY[0x1C6942830](v24, -1, -1);
        MEMORY[0x1C6942830](v23, -1, -1);
      }
    }

    else
    {
      v26 = 5;
      v19 = *(a4 + 56);
      MEMORY[0x1EEE9AC00](v17);
      *&v25[-16] = a1;
      *&v25[-8] = &v26;
      os_unfair_lock_lock((v19 + 24));
      sub_1C4A51E70((v19 + 16));
      os_unfair_lock_unlock((v19 + 24));
      sub_1C4A4F5A4(v26, sub_1C4AF1190, sub_1C4A4FAC8);
    }
  }
}

void sub_1C4A4F268(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-v10];
  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C442B738(v8, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v12, v11);
  v13 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v11, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = &v11[*(v13 + 20)];
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1C4454168();
    if (qword_1EDDFEC88 != -1)
    {
      v17 = swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v15) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v16) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1C441D828(a2, a3, &v26);
        _os_log_impl(&dword_1C43F8000, v21, v22, "ScheduledTask: %s: registered as a no-op.", v23, 0xCu);
        sub_1C440962C(v24);
        MEMORY[0x1C6942830](v24, -1, -1);
        MEMORY[0x1C6942830](v23, -1, -1);
      }
    }

    else
    {
      v26 = 5;
      v19 = *(a4 + 56);
      MEMORY[0x1EEE9AC00](v17);
      *&v25[-16] = a1;
      *&v25[-8] = &v26;
      os_unfair_lock_lock((v19 + 24));
      sub_1C4A51870((v19 + 16));
      os_unfair_lock_unlock((v19 + 24));
      sub_1C4A4F5A4(v26, sub_1C4AF12B4, sub_1C4A4FCD4);
    }
  }
}

void sub_1C4A4F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[6];
  sub_1C4409678(v3 + 2, v3[5]);
  v7 = *(v6 + 8);
  v8 = sub_1C4406834();
  v9(v8, v6);
  if (a1 == 2)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DE10);
    sub_1C4406834();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_1C43FD084();
      v23 = swift_slowAlloc();
      v51[0] = v23;
      *v22 = 136315138;
      v24 = sub_1C4404C28();
      *(v22 + 4) = sub_1C441D828(v24, v25, v26);
      _os_log_impl(&dword_1C43F8000, v20, v21, "ScheduledTask: %s: is running", v22, 0xCu);
      sub_1C440962C(v23);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C442E860((v3 + 2), v51);
    sub_1C456902C(&qword_1EC0C1C48, &qword_1C4F47060);
    sub_1C456902C(&qword_1EC0C1C50, &qword_1C4F47068);
    if (sub_1C443FE94())
    {

      sub_1C441D670(v50, v49);
      (a3)(v49);
    }

    else
    {
      sub_1C456902C(&qword_1EC0C1C58, &unk_1C4F47070);
      if (!sub_1C443FE94())
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v39 = sub_1C4F00968();
        v40 = sub_1C4F01CB8();

        if (os_log_type_enabled(v39, v40))
        {
          sub_1C43FD084();
          v41 = sub_1C440E550();
          *&v50[0] = v41;
          *a3 = 136315138;
          v42 = sub_1C4404C28();
          v45 = sub_1C441D828(v42, v43, v44);

          *(a3 + 4) = v45;
          sub_1C44003E4(&dword_1C43F8000, v46, v47, "ScheduledTask: %s: has no runner");
          sub_1C440962C(v41);
          sub_1C43FFD4C();
          sub_1C43FEA20();
        }

        else
        {
        }

        goto LABEL_31;
      }

      sub_1C441D670(v50, v49);
      sub_1C4A4FEE0(v49);
    }

    sub_1C440962C(v49);
LABEL_31:
    sub_1C440962C(v51);
    goto LABEL_32;
  }

  if (!a1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DE10);
    sub_1C4406834();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_1C43FD084();
      v14 = swift_slowAlloc();
      v51[0] = v14;
      *v13 = 136315138;
      v15 = sub_1C4404C28();
      v18 = sub_1C441D828(v15, v16, v17);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1C43F8000, v11, v12, "ScheduledTask: %s: checking in", v13, 0xCu);
      sub_1C440962C(v14);
      sub_1C43FBE2C();
      sub_1C43FFD4C();
    }

    else
    {
    }

    sub_1C441C3F4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v27 = sub_1C4F00978();
  sub_1C442B738(v27, qword_1EDE2DE10);
  sub_1C4406834();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  oslog = sub_1C4F00968();
  v28 = sub_1C4F01CD8();

  if (os_log_type_enabled(oslog, v28))
  {
    v29 = sub_1C440F274();
    v51[0] = sub_1C43FC11C();
    *v29 = 136315394;
    v30 = sub_1C4404C28();
    sub_1C441D828(v30, v31, v32);
    sub_1C4406834();

    *(v29 + 4) = v3;
    *(v29 + 12) = 2080;
    *&v50[0] = a1;
    v33 = sub_1C4F02858();
    sub_1C441D828(v33, v34, v51);
    sub_1C4406834();

    *(v29 + 14) = v50;
    _os_log_impl(&dword_1C43F8000, oslog, v28, "ScheduledTask: %s: unexpected state: %s", v29, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

LABEL_32:
    sub_1C441C3F4();
    return;
  }

  sub_1C441C3F4();
}

uint64_t sub_1C4A4FAC8(void *a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-v6];
  v26 = v1;
  v9 = a1[3];
  v8 = a1[4];
  sub_1C4409678(a1, v9);
  v10 = (*(*(v8 + 8) + 8))(v9);
  v12 = v11;
  v13 = *(v2 + 56);

  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  *(v14 + 40) = 0;
  *(v14 + 32) = 0;
  os_unfair_lock_unlock((v13 + 24));

  sub_1C4F01898();
  v15 = sub_1C4F018C8();
  sub_1C440BAA8(v7, 0, 1, v15);
  sub_1C442E860(a1, v25);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  sub_1C441D670(v25, (v16 + 5));
  v16[10] = v10;
  v16[11] = v12;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4CDA340(0, 0, v7, &unk_1C4F470C8, v16);
  sub_1C4420C3C(v7, &qword_1EC0BC660, &qword_1C4F29150);
  v20 = v10;
  v21 = v12;
  v22 = &v26;
  v23 = a1;
  v24 = v17;

  os_unfair_lock_lock((v13 + 24));
  sub_1C4A51C50(v13 + 16);
  os_unfair_lock_unlock((v13 + 24));
}

uint64_t sub_1C4A4FCD4(void *a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-v6];
  v26 = v1;
  v9 = a1[3];
  v8 = a1[4];
  sub_1C4409678(a1, v9);
  v10 = (*(*(v8 + 8) + 8))(v9);
  v12 = v11;
  v13 = *(v2 + 56);

  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  *(v14 + 40) = 0;
  *(v14 + 32) = 0;
  os_unfair_lock_unlock((v13 + 24));

  sub_1C4F01898();
  v15 = sub_1C4F018C8();
  sub_1C440BAA8(v7, 0, 1, v15);
  sub_1C442E860(a1, v25);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  sub_1C441D670(v25, (v16 + 5));
  v16[10] = v10;
  v16[11] = v12;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4CDA340(0, 0, v7, &unk_1C4F47088, v16);
  sub_1C4420C3C(v7, &qword_1EC0BC660, &qword_1C4F29150);
  v20 = v10;
  v21 = v12;
  v22 = &v26;
  v23 = a1;
  v24 = v17;

  os_unfair_lock_lock((v13 + 24));
  sub_1C4A51A68(v13 + 16);
  os_unfair_lock_unlock((v13 + 24));
}

void sub_1C4A4FEE0(void *a1)
{
  v2 = v1;
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v5 = *(*(v4 + 8) + 8);
  v6 = sub_1C4406834();
  v8 = v7(v6);
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1C4409678(a1, v11);
  (*(v12 + 16))(v11, v12);
  v13 = *(v2 + 56);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  if (*(v14 + 24))
  {
    v15 = *(v14 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C4AF0CD4(v8, v10, ObjectType);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock((v13 + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C4A50184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4A501AC, 0, 0);
}

uint64_t sub_1C4A501AC()
{
  sub_1C445E918();
  os_unfair_lock_lock((v0 + 24));
  *(*(v0 + 16) + 16) = 0;
  os_unfair_lock_unlock((v0 + 24));

  *(v2 + 88) = 0;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1C4402120();
  sub_1C4409678(v5, v6);
  sub_1C442E424();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v2 + 72) = v10;
  *v10 = v2;
  sub_1C43FC688(v10);
  v11 = sub_1C4402B58();

  return v13(v11);
}

uint64_t sub_1C4A502D8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_1C4A50480;
  }

  else
  {
    v9 = sub_1C4A503D4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C4A503D4()
{
  sub_1C4404D98();
  v3 = sub_1C4405F18();
  sub_1C443F2B4(v3);
  os_unfair_lock_lock((v0 + 24));
  sub_1C4A51D0C((v0 + 16));
  os_unfair_lock_unlock((*(v2 - 24) + 24));
  if (!v1)
  {

    sub_1C43FBDA0();
    sub_1C4402234();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4402234();
}

void sub_1C4A50480()
{
  v27 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = v1;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = sub_1C440F274();
    v26 = sub_1C43FC11C();
    v12 = sub_1C440C630(4.8151e-34, v26);
    sub_1C442532C(v12);
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v13 = sub_1C4F01198();
    v15 = sub_1C441D828(v13, v14, &v26);

    *(v11 + 14) = v15;
    sub_1C4415A90();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  v21 = v0[8];
  v22 = v0[5];
  v23 = swift_task_alloc();
  sub_1C447F224(v23);
  os_unfair_lock_lock((v21 + 24));
  sub_1C4A51D0C((v21 + 16));
  os_unfair_lock_unlock((v0[8] + 24));

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A5068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4A506B4, 0, 0);
}

uint64_t sub_1C4A506B4()
{
  sub_1C445E918();
  os_unfair_lock_lock((v0 + 24));
  *(*(v0 + 16) + 16) = 0;
  os_unfair_lock_unlock((v0 + 24));

  *(v2 + 88) = 0;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1C4402120();
  sub_1C4409678(v5, v6);
  sub_1C442E424();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v2 + 72) = v10;
  *v10 = v2;
  sub_1C43FC688(v10);
  v11 = sub_1C4402B58();

  return v13(v11);
}

uint64_t sub_1C4A507E0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_1C4A50988;
  }

  else
  {
    v9 = sub_1C4A508DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1C4A508DC()
{
  sub_1C4404D98();
  v3 = sub_1C4405F18();
  sub_1C443F2B4(v3);
  os_unfair_lock_lock((v0 + 24));
  sub_1C4A51AE8((v0 + 16));
  os_unfair_lock_unlock((*(v2 - 24) + 24));
  if (!v1)
  {

    sub_1C43FBDA0();
    sub_1C4402234();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4402234();
}

void sub_1C4A50988()
{
  v27 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = v1;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = sub_1C440F274();
    v26 = sub_1C43FC11C();
    v12 = sub_1C440C630(4.8151e-34, v26);
    sub_1C442532C(v12);
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v13 = sub_1C4F01198();
    v15 = sub_1C441D828(v13, v14, &v26);

    *(v11 + 14) = v15;
    sub_1C4415A90();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  v21 = v0[8];
  v22 = v0[5];
  v23 = swift_task_alloc();
  sub_1C447F224(v23);
  os_unfair_lock_lock((v21 + 24));
  sub_1C4A51AE8((v21 + 16));
  os_unfair_lock_unlock((v0[8] + 24));

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A50B94(uint64_t *a1, void *a2, _BYTE *a3, void *a4)
{
  v8 = a2[3];
  v7 = a2[4];
  sub_1C4409678(a2, v8);
  v9 = (*(*(v7 + 8) + 8))(v8);
  v11 = v10;
  v12 = *a1;
  result = *(*a1 + 32);
  if (result)
  {
    result = xpc_activity_remove_eligibility_changed_handler();
  }

  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v14 = *(v12 + 24);
  if (v14)
  {
    v15 = *(v12 + 24);
    if (*a3 == 1)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C4AF0CD4(v9, v11, ObjectType);
    }

    else
    {
      v17 = swift_unknownObjectRetain();
      should_defer = xpc_activity_should_defer(v17);
      v19 = swift_getObjectType();
      if (should_defer)
      {
        sub_1C4AF0D00(v9, v11, v19);

        return swift_unknownObjectRelease();
      }

      sub_1C4AF0D3C(v9, v11, v19);
    }

    v20 = a4[5];
    v21 = a4[6];
    sub_1C4409678(a4 + 2, v20);
    (*(v21 + 24))(v12, v14, v20, v21);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A50CF8(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = a2[3];
  v5 = a2[4];
  sub_1C4409678(a2, v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  v9 = v8;
  v10 = *a1;
  result = *(*a1 + 32);
  if (result)
  {
    result = xpc_activity_remove_eligibility_changed_handler();
  }

  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v12 = *(v10 + 24);
  if (v12)
  {
    v13 = *(v10 + 24);
    if (*a3 == 1)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C4AF0CD4(v7, v9, ObjectType);
    }

    else
    {
      v15 = swift_unknownObjectRetain();
      should_defer = xpc_activity_should_defer(v15);
      v17 = swift_getObjectType();
      if (should_defer)
      {
        sub_1C4AF0D00(v7, v9, v17);

        return swift_unknownObjectRelease();
      }

      sub_1C4AF0D3C(v7, v9, v17);
    }

    sub_1C4AF143C(v10, v12);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A50E34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *result;
  if ((*(*result + 40) & 1) == 0)
  {
    if (*(v9 + 24))
    {
      sub_1C442E860(a5, v20);
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = a3;
      v15[4] = a4;
      sub_1C441D670(v20, (v15 + 5));
      v15[10] = a6;
      aBlock[4] = a8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C443EC24;
      aBlock[3] = a9;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v17 = xpc_activity_add_eligibility_changed_handler();
      _Block_release(v16);
      *(v9 + 32) = v17;
      ObjectType = swift_getObjectType();
      sub_1C4AF0F8C(a2, a3, ObjectType);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C4A50FA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  v11 = &unk_1C4F0C000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(a2, a3, v26);
    _os_log_impl(&dword_1C43F8000, v9, v10, "ScheduledTask: %s: XPC Activity eligibility changed", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
    v11 = &unk_1C4F0C000;
    MEMORY[0x1C6942830](v12, -1, -1);
  }

  v14 = *(a4 + 56);
  MEMORY[0x1EEE9AC00](v15);
  os_unfair_lock_lock(v14 + 6);
  sub_1C4A51E40(v26);
  os_unfair_lock_unlock(v14 + 6);
  if (LOBYTE(v26[0]) == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = v11[458];
      *(v18 + 4) = sub_1C441D828(a2, a3, v26);
      _os_log_impl(&dword_1C43F8000, v16, v17, "ScheduledTask: %s: XPC Activity needs to defer", v18, 0xCu);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    sub_1C442E860(a5, v25);
    sub_1C456902C(&qword_1EC0C1C50, &qword_1C4F47068);
    sub_1C456902C(&qword_1EC0C3240, &unk_1C4F47090);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v23, v26);
      sub_1C4F01918();
      v20 = v27;
      v21 = v28;
      sub_1C4409678(v26, v27);
      (*(v21 + 8))(v20, v21);
      sub_1C440962C(v26);
    }

    else
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1C4420C3C(v23, &unk_1EC0C1C60, qword_1C4F501C0);
      sub_1C4F01918();
    }
  }
}

void sub_1C4A51350(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  v11 = &unk_1C4F0C000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1C441D828(a2, a3, v26);
    _os_log_impl(&dword_1C43F8000, v9, v10, "ScheduledTask: %s: XPC Activity eligibility changed", v12, 0xCu);
    sub_1C440962C(v13);
    MEMORY[0x1C6942830](v13, -1, -1);
    v11 = &unk_1C4F0C000;
    MEMORY[0x1C6942830](v12, -1, -1);
  }

  v14 = *(a4 + 56);
  MEMORY[0x1EEE9AC00](v15);
  os_unfair_lock_lock(v14 + 6);
  sub_1C4A51AB0(v26);
  os_unfair_lock_unlock(v14 + 6);
  if (LOBYTE(v26[0]) == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = v11[458];
      *(v18 + 4) = sub_1C441D828(a2, a3, v26);
      _os_log_impl(&dword_1C43F8000, v16, v17, "ScheduledTask: %s: XPC Activity needs to defer", v18, 0xCu);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    sub_1C442E860(a5, v25);
    sub_1C456902C(&qword_1EC0C1C50, &qword_1C4F47068);
    sub_1C456902C(&qword_1EC0C3240, &unk_1C4F47090);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v23, v26);
      sub_1C4F01918();
      v20 = v27;
      v21 = v28;
      sub_1C4409678(v26, v27);
      (*(v21 + 8))(v20, v21);
      sub_1C440962C(v26);
    }

    else
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1C4420C3C(v23, &unk_1EC0C1C60, qword_1C4F501C0);
      sub_1C4F01918();
    }
  }
}

uint64_t sub_1C4A5170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1C442E8C4;

  return sub_1C4A50184(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t sub_1C4A5188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1C442F080;

  return sub_1C4A5068C(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t sub_1C4A5196C()
{
  sub_1C4404D98();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[10];
  v5 = v0[11];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1C4417584(v6);

  return v8(v7);
}

uint64_t sub_1C4A51B08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C4A51B50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  v3 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C4A51BA0()
{
  sub_1C4404D98();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[10];
  v5 = v0[11];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1C4417584(v6);

  return v8(v7);
}

uint64_t sub_1C4A51CA8()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t *sub_1C4A51D30(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = a3(0);
  v16 = v9;
  v17 = a4;
  *&v15 = a1;
  v10 = sub_1C4409678(&v15, v9);
  a2[5] = v9;
  a2[6] = a5;
  v11 = sub_1C4422F90(a2 + 2);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  type metadata accessor for ScheduledRunnerState();
  swift_allocObject();
  v12 = sub_1C4AEF7D8();
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  a2[7] = v13;
  sub_1C441D670(&v15, (a2 + 8));
  return a2;
}

uint64_t sub_1C4A51EBC@<X0>(uint64_t *a1@<X8>)
{
  sub_1C4A523C8();
  sub_1C4A52310();
  result = sub_1C4EFB388();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4A51F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  v8[2] = a1;
  v8[3] = a2;

  v6 = sub_1C49A5658(a3, v8);

  return v6;
}

uint64_t sub_1C4A51FEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v20 = a5;
  v9 = sub_1C456902C(&qword_1EC0C1C90, &unk_1C4F470E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-1] - v12;
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, a4);
  v22[3] = v14;
  v22[4] = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v22);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = MEMORY[0x1E69A0130];
  v21[0] = a1;
  v21[1] = a2;
  v23[3] = sub_1C4EFB298();
  v23[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v23);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v21);
  sub_1C440962C(v22);
  sub_1C4A52310();
  sub_1C4EFAE28();
  sub_1C440962C(v23);
  sub_1C4A52364();
  sub_1C4A523C8();
  v17 = v23[6];
  v18 = sub_1C4EFAFE8();
  result = (*(v10 + 8))(v13, v9);
  if (!v17)
  {
    *v20 = v18;
  }

  return result;
}

uint64_t sub_1C4A52254(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);

  v6 = a2(a1, 0);

  return v6;
}

uint64_t sub_1C4A522B8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C4A52310();
  result = sub_1C4EFAE88();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C4A52310()
{
  result = qword_1EC0C1C98;
  if (!qword_1EC0C1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C98);
  }

  return result;
}

unint64_t sub_1C4A52364()
{
  result = qword_1EC0C1CA0;
  if (!qword_1EC0C1CA0)
  {
    sub_1C4572308(&qword_1EC0C1C90, &unk_1C4F470E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CA0);
  }

  return result;
}

unint64_t sub_1C4A523C8()
{
  result = qword_1EC0C1CA8;
  if (!qword_1EC0C1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CA8);
  }

  return result;
}

uint64_t sub_1C4A52458()
{
  v0 = sub_1C4EFB5A8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C4EFB5F8();
  v8 = sub_1C43FCDF8(v44);
  v43 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5E8();
  v14 = *(v3 + 104);
  (v14)(v7, *MEMORY[0x1E699FE90], v0);
  sub_1C441FF40();
  v15 = *(v3 + 8);
  v16 = sub_1C43FD018();
  v15(v16);
  v17 = sub_1C441A0EC();
  v14(v17);
  sub_1C442D024();
  sub_1C4407670();
  v18 = sub_1C43FD018();
  v15(v18);
  v19 = sub_1C441A0EC();
  v14(v19);
  sub_1C442D024();
  sub_1C4407670();
  v20 = sub_1C43FD018();
  v15(v20);
  v21 = sub_1C441A0EC();
  v14(v21);
  sub_1C441FF40();
  v22 = sub_1C43FD018();
  v15(v22);
  v23 = sub_1C441A0EC();
  v14(v23);
  sub_1C442D024();
  sub_1C4407670();
  v24 = sub_1C43FD018();
  v15(v24);
  v25 = sub_1C441A0EC();
  v14(v25);
  sub_1C442D024();
  sub_1C4407670();
  v26 = v7;
  v27 = v41;
  (v15)(v26, v0);
  v28 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool;
  v29 = *&v27[OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool];
  sub_1C44FAFAC(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);

  v30 = v42;
  sub_1C4EFB5D8();
  if (!v30)
  {

    v32 = *&v27[v28];
    MEMORY[0x1EEE9AC00](v31);
    *(&v40 - 2) = v13;

    sub_1C446572C(sub_1C4A54BC0, (&v40 - 4), v33, v34, v35, v36, v37, v38, v40, v41);
  }

  return (*(v43 + 8))(v13, v44);
}

uint64_t sub_1C4A5282C()
{
  v0 = sub_1C4EFB0B8();
  v32 = *(v0 - 8);
  v1 = *(v32 + 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v33 = MEMORY[0x1E69E7CC0];
  v14 = sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  v15 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  v29 = v15;
  v30 = v14;
  sub_1C4F020C8();
  v16 = v31;
  sub_1C4EFBFC8();
  if (v16)
  {
    return (*(v32 + 1))(v13, v0);
  }

  v31 = v9;
  v26 = v6;
  v18 = v13;
  v19 = *(v32 + 1);
  v19(v18, v0);
  v33 = MEMORY[0x1E69E7CC0];
  v20 = v28;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v32 = v19;
  v19(v20, v0);
  v33 = MEMORY[0x1E69E7CC0];
  v21 = v31;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v22 = v32;
  v32(v21, v0);
  v33 = MEMORY[0x1E69E7CC0];
  v23 = v26;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v22(v23, v0);
  v33 = MEMORY[0x1E69E7CC0];
  v24 = v27;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (v22)(v24, v0);
}

uint64_t sub_1C4A52D40()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v21 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C43FBD94();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v15 = *MEMORY[0x1E69A00D0];
  v16 = sub_1C4EFBF38();
  (*(*(v16 - 8) + 104))(v3, v15, v16);
  sub_1C43FBD94();
  sub_1C440BAA8(v17, v18, v19, v16);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A52F3C()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A53158()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A533C4()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A535E8(uint64_t a1)
{
  v3 = sub_1C4EFB078();
  v15 = *(v3 - 8);
  v16 = v3;
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v14[0] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFB0B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17[0] = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  v14[1] = a1;
  sub_1C4EFBFC8();
  if (v1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 8))(v10, v6);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4A54BDC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v12 = v14[0];
  v13 = v16;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  (*(v15 + 8))(v12, v13);
  return sub_1C4423A0C(v17, &qword_1EC0C5040, &qword_1C4F0F950);
}

uint64_t sub_1C4A53978()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A53C0C()
{
  result = sub_1C4EFBF78();
  if (!v0)
  {
    sub_1C4EFBF78();
    sub_1C4EFBF78();
    return sub_1C4EFBF78();
  }

  return result;
}

uint64_t sub_1C4A53EAC()
{
  v0 = sub_1C4EFB0B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[3] = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C4A54068()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A542DC()
{
  v1 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = sub_1C4EFBF78();
  if (!v0)
  {
    sub_1C4EFBE98();
    v28 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v15 = swift_allocObject();
    v27 = xmmword_1C4F0C890;
    *(v15 + 16) = xmmword_1C4F0C890;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 32) = 0x656D614E656C6966;
    *(v15 + 40) = 0xE800000000000000;
    v17 = MEMORY[0x1E69A0138];
    *(v15 + 72) = v16;
    *(v15 + 80) = v17;
    *(v15 + 48) = 0x736A2E7373616C63;
    *(v15 + 56) = 0xEA00000000006E6FLL;
    strcpy((v15 + 88), "crystalVersion");
    *(v15 + 103) = -18;
    *(v15 + 128) = v16;
    *(v15 + 136) = v17;
    *(v15 + 104) = 0x31332E3476;
    *(v15 + 112) = 0xE500000000000000;
    *(v15 + 144) = 0x737265566B63756CLL;
    *(v15 + 152) = 0xEB000000006E6F69;
    *(v15 + 184) = v16;
    *(v15 + 192) = v17;
    *(v15 + 160) = 0x32332E3476;
    *(v15 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    v18 = sub_1C4EFB768();
    sub_1C440BAA8(v13, 0, 1, v18);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v13, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v19 = swift_allocObject();
    *(v19 + 16) = v27;
    *(v19 + 32) = 0x656D614E656C6966;
    *(v19 + 40) = 0xE800000000000000;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 72) = MEMORY[0x1E69E6158];
    *(v19 + 80) = v17;
    *(v19 + 48) = 0xD000000000000010;
    *(v19 + 56) = 0x80000001C4FAE220;
    strcpy((v19 + 88), "crystalVersion");
    *(v19 + 103) = -18;
    *(v19 + 128) = v20;
    *(v19 + 136) = v17;
    *(v19 + 104) = 0x34302E3576;
    *(v19 + 112) = 0xE500000000000000;
    *(v19 + 144) = 0x737265566B63756CLL;
    *(v19 + 152) = 0xEB000000006E6F69;
    *(v19 + 184) = v20;
    *(v19 + 192) = v17;
    *(v19 + 160) = 0x35302E3576;
    *(v19 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    sub_1C440BAA8(v11, 0, 1, v18);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v11, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    *(v21 + 32) = 0x656D614E656C6966;
    *(v21 + 40) = 0xE800000000000000;
    v22 = MEMORY[0x1E69E6158];
    *(v21 + 72) = MEMORY[0x1E69E6158];
    v23 = MEMORY[0x1E69A0138];
    strcpy((v21 + 48), "predicate.json");
    *(v21 + 63) = -18;
    *(v21 + 80) = v23;
    strcpy((v21 + 88), "crystalVersion");
    *(v21 + 128) = v22;
    *(v21 + 136) = v23;
    *(v21 + 103) = -18;
    *(v21 + 104) = 0x33312E3776;
    *(v21 + 112) = 0xE500000000000000;
    *(v21 + 144) = 0x737265566B63756CLL;
    *(v21 + 152) = 0xEB000000006E6F69;
    *(v21 + 184) = v22;
    *(v21 + 192) = v23;
    *(v21 + 160) = 0x35312E3776;
    *(v21 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    sub_1C440BAA8(v8, 0, 1, v18);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v8, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 32) = 0x656D614E656C6966;
    *(v24 + 40) = 0xE800000000000000;
    v25 = MEMORY[0x1E69E6158];
    *(v24 + 72) = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69A0138];
    *(v24 + 48) = 0xD000000000000016;
    *(v24 + 56) = 0x80000001C4FAE240;
    *(v24 + 80) = v26;
    strcpy((v24 + 88), "crystalVersion");
    *(v24 + 128) = v25;
    *(v24 + 136) = v26;
    *(v24 + 103) = -18;
    *(v24 + 104) = 0x33312E3176;
    *(v24 + 112) = 0xE500000000000000;
    *(v24 + 144) = 0x737265566B63756CLL;
    *(v24 + 152) = 0xEB000000006E6F69;
    *(v24 + 184) = v25;
    *(v24 + 192) = v26;
    *(v24 + 160) = 0x34312E3176;
    *(v24 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    sub_1C440BAA8(v5, 0, 1, v18);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v5, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4A548E8(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v13 - v6;
  a2(v5);
  sub_1C4EFBE38();
  sub_1C43FBD94();
  sub_1C440BAA8(v8, v9, v10, v11);
  sub_1C4EFB458();

  return sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4A549D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    v11(v8, v18, v3);
    sub_1C4B62F60();
    v19(v8, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4A54BDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A54C30()
{
  sub_1C456902C(&qword_1EC0C1D40, qword_1C4F471B0);
  swift_allocObject();
  result = sub_1C4CE52AC();
  qword_1EDE2DFD8 = result;
  return result;
}

unint64_t OntologyDatabase.description.getter()
{
  v1 = sub_1C4EF98F8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1C4F02248();

  v13 = 0xD000000000000014;
  v14 = 0x80000001C4FAE2C0;
  (*(v4 + 16))(v8, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url, v1);
  v9 = sub_1C4EF98E8();
  v11 = v10;
  (*(v4 + 8))(v8, v1);
  MEMORY[0x1C6940010](v9, v11);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v13;
}

uint64_t sub_1C4A54E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  sub_1C446C37C(sub_1C4A58298, v6);
}

uint64_t sub_1C4A54E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a1;
  v14[2] = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14[0] = v9;
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4F01688();
  for (i = v11; ; v11 = i)
  {
    result = sub_1C4F01758();
    if (v11 == result)
    {
      break;
    }

    v13 = sub_1C4F01738();
    sub_1C4F016B8();
    if (v13)
    {
      (*(v7 + 16))(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, a3);
    }

    else
    {
      result = sub_1C4F02298();
      if (v14[0] != 8)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      (*(v7 + 16))(v10, &v15, a3);
      swift_unknownObjectRelease();
    }

    sub_1C4F01788();
    sub_1C4EFB6A8();
    result = (*(v7 + 8))(v10, a3);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C4A55080@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClassPair();
  sub_1C4A5805C(&qword_1EC0C1CE8);
  sub_1C4A5805C(&qword_1EC0C1CD8);
  result = sub_1C4EFB388();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4A55158@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v16 = a3;
  v5 = sub_1C456902C(&qword_1EC0C1CD0, &qword_1C4F47190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-1] - v8;
  type metadata accessor for ClassPair();
  if (qword_1EC0B6FA8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4EFBD38();
  v11 = sub_1C442B738(v10, qword_1EC152A60);
  v18[3] = v10;
  v18[4] = MEMORY[0x1E69A0050];
  v12 = sub_1C4422F90(v18);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a1;
  v17[1] = a2;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A5805C(&qword_1EC0C1CD8);
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1CE0, &qword_1EC0C1CD0, &qword_1C4F47190);
  sub_1C4A5805C(&qword_1EC0C1CE8);
  v13 = v19[6];
  v14 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v13)
  {
    *v16 = v14;
  }

  return result;
}

uint64_t sub_1C4A5540C(uint64_t *a1)
{
  v20 = sub_1C4EFB298();
  v5 = sub_1C43FCDF8(v20);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442D034();
  if (v3)
  {
    sub_1C441FF6C();
    sub_1C4403534();
    do
    {
      v10 = *(a1 - 1);
      v9 = *a1;
      v11 = qword_1EC0B6FB0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_1C4EFBD38();
      sub_1C442B738(v12, qword_1EC152A78);
      v22[3] = v12;
      v22[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v22);
      sub_1C44175B4();
      (*(v13 + 16))();
      v21[3] = MEMORY[0x1E69E6158];
      sub_1C441353C(MEMORY[0x1E69A0130]);
      sub_1C44967E0(v21);
      sub_1C440962C(v22);
      sub_1C44009A4();
      if (v14)
      {
        sub_1C440AFA0();
      }

      v15 = sub_1C4407690();
      v8 = v16(v15);
      a1 += 2;
      --v3;
    }

    while (v3);
    v2 = v19;
  }

  v17 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412204();
  sub_1C49A55F8(sub_1C4A58040, v1);

  return sub_1C43FDB98();
}

uint64_t sub_1C4A55614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v16 = a3;
  v17 = sub_1C4EFB288();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0C1CD0, &qword_1C4F47190);
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v16 - v10;
  type metadata accessor for ClassPair();
  v21[6] = a2;
  sub_1C4EFB268();
  v21[3] = sub_1C4EFB298();
  v21[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v21);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4F01468();
  (*(v4 + 8))(v7, v17);
  sub_1C4A5805C(&qword_1EC0C1CD8);
  sub_1C4EFAE28();
  sub_1C440962C(v21);
  sub_1C4401CBC(&qword_1EC0C1CE0, &qword_1EC0C1CD0, &qword_1C4F47190);
  sub_1C4A5805C(&qword_1EC0C1CE8);
  v12 = v18;
  v13 = v20;
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v11, v12);
  if (!v13)
  {
    *v16 = v14;
  }

  return result;
}

uint64_t sub_1C4A55A08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v6 = sub_1C456902C(&qword_1EC0C1CB0, &unk_1C4F47180);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152A90);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a1;
  v17[1] = a2;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A57F98();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1CC0, &qword_1EC0C1CB0, &unk_1C4F47180);
  sub_1C4A57FEC();
  v14 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A55C7C(uint64_t *a1)
{
  v20 = sub_1C4EFB298();
  v5 = sub_1C43FCDF8(v20);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442D034();
  if (v3)
  {
    sub_1C441FF6C();
    sub_1C4403534();
    do
    {
      v10 = *(a1 - 1);
      v9 = *a1;
      v11 = qword_1EC0B6FC0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_1C4EFBD38();
      sub_1C442B738(v12, qword_1EC152AA8);
      v22[3] = v12;
      v22[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v22);
      sub_1C44175B4();
      (*(v13 + 16))();
      v21[3] = MEMORY[0x1E69E6158];
      sub_1C441353C(MEMORY[0x1E69A0130]);
      sub_1C44967E0(v21);
      sub_1C440962C(v22);
      sub_1C44009A4();
      if (v14)
      {
        sub_1C440AFA0();
      }

      v15 = sub_1C4407690();
      v8 = v16(v15);
      a1 += 2;
      --v3;
    }

    while (v3);
    v2 = v19;
  }

  v17 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412204();
  sub_1C49A5610(sub_1C4A57F7C, v1);

  return sub_1C43FDB98();
}

uint64_t sub_1C4A55E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v17 = a3;
  v18 = sub_1C4EFB288();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0C1CB0, &unk_1C4F47180);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v21[6] = a2;
  sub_1C4EFB268();
  v21[3] = sub_1C4EFB298();
  v21[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v21);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4F01468();
  (*(v4 + 8))(v7, v18);
  sub_1C4A57F98();
  sub_1C4EFAE28();
  sub_1C440962C(v21);
  sub_1C4401CBC(&qword_1EC0C1CC0, &qword_1EC0C1CB0, &unk_1C4F47180);
  sub_1C4A57FEC();
  v13 = v20;
  v14 = sub_1C4EFAFE8();
  result = (*(v9 + 8))(v12, v8);
  if (!v13)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1C4A561C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v6 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FC8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152AC0);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a1;
  v17[1] = a2;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0);
  sub_1C4A581D4();
  v14 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56460@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v6 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152AD8);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a1;
  v17[1] = a2;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0);
  sub_1C4A581D4();
  v14 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56774@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v6 = sub_1C456902C(&qword_1EC0C1CF0, &qword_1C4F47198);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FD8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152AF0);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a1;
  v17[1] = a2;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A580BC();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D00, &qword_1EC0C1CF0, &qword_1C4F47198);
  sub_1C4A58110();
  v14 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v7 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  v10[2] = a1;
  v10[3] = a2;

  v8 = a4(a3, v10);

  return v8;
}

uint64_t sub_1C4A56A80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v6 = sub_1C456902C(&qword_1EC0C1CF0, &qword_1C4F47198);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152B08);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a1;
  v17[1] = a2;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A580BC();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D00, &qword_1EC0C1CF0, &qword_1C4F47198);
  sub_1C4A58110();
  v14 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v32 = a1;
  v28 = a6;
  v8 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  if (qword_1EC0B6FC8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4EFBD38();
  v16 = sub_1C442B738(v15, qword_1EC152AC0);
  v38 = v15;
  v39 = MEMORY[0x1E69A0050];
  v17 = sub_1C4422F90(v37);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69A0130];
  v33 = a2;
  v34 = a3;
  v19 = sub_1C4EFB298();
  v20 = MEMORY[0x1E699FE60];
  v41 = v19;
  v42 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v33);
  sub_1C440962C(v37);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v40);
  if (qword_1EC0B6FD0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v15, qword_1EC152AD8);
  v38 = v15;
  v39 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v37);
  v18(v22, v21, v15);
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69A0130];
  v33 = v29;
  v34 = v30;
  v41 = v19;
  v42 = v20;
  sub_1C4422F90(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v33);
  sub_1C440962C(v37);
  sub_1C4401CBC(&qword_1EC0C1D48, &qword_1EC0C1D10, &unk_1C4F471A0);
  sub_1C4EFB438();
  v23 = *(v31 + 8);
  v23(v12, v8);
  sub_1C440962C(v40);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0);
  sub_1C4A581D4();
  v24 = v43;
  v25 = sub_1C4EFAFE8();
  result = (v23)(v14, v8);
  if (!v24)
  {
    *v28 = v25;
  }

  return result;
}

uint64_t sub_1C4A5711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *))
{
  v9 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  v10 = a6(a5, v12);

  return v10;
}

uint64_t sub_1C4A5718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v32 = a1;
  v28 = a6;
  v8 = sub_1C456902C(&qword_1EC0C1CF0, &qword_1C4F47198);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  if (qword_1EC0B6FD8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4EFBD38();
  v16 = sub_1C442B738(v15, qword_1EC152AF0);
  v38 = v15;
  v39 = MEMORY[0x1E69A0050];
  v17 = sub_1C4422F90(v37);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69A0130];
  v33 = a2;
  v34 = a3;
  v19 = sub_1C4EFB298();
  v20 = MEMORY[0x1E699FE60];
  v41 = v19;
  v42 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v33);
  sub_1C440962C(v37);
  sub_1C4A580BC();
  sub_1C4EFAE28();
  sub_1C440962C(v40);
  if (qword_1EC0B6FE0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v15, qword_1EC152B08);
  v38 = v15;
  v39 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v37);
  v18(v22, v21, v15);
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69A0130];
  v33 = v29;
  v34 = v30;
  v41 = v19;
  v42 = v20;
  sub_1C4422F90(v40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v33);
  sub_1C440962C(v37);
  sub_1C4401CBC(&qword_1EC0C1D50, &qword_1EC0C1CF0, &qword_1C4F47198);
  sub_1C4EFB438();
  v23 = *(v31 + 8);
  v23(v12, v8);
  sub_1C440962C(v40);
  sub_1C4401CBC(&qword_1EC0C1D00, &qword_1EC0C1CF0, &qword_1C4F47198);
  sub_1C4A58110();
  v24 = v43;
  v25 = sub_1C4EFAFE8();
  result = (v23)(v14, v8);
  if (!v24)
  {
    *v28 = v25;
  }

  return result;
}

uint64_t sub_1C4A5755C(uint64_t *a1)
{
  v20 = sub_1C4EFB298();
  v5 = sub_1C43FCDF8(v20);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442D034();
  if (v3)
  {
    sub_1C441FF6C();
    sub_1C4403534();
    do
    {
      v10 = *(a1 - 1);
      v9 = *a1;
      v11 = qword_1EC0B6FD0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_1C4EFBD38();
      sub_1C442B738(v12, qword_1EC152AD8);
      v22[3] = v12;
      v22[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v22);
      sub_1C44175B4();
      (*(v13 + 16))();
      v21[3] = MEMORY[0x1E69E6158];
      sub_1C441353C(MEMORY[0x1E69A0130]);
      sub_1C44967E0(v21);
      sub_1C440962C(v22);
      sub_1C44009A4();
      if (v14)
      {
        sub_1C440AFA0();
      }

      v15 = sub_1C4407690();
      v8 = v16(v15);
      a1 += 2;
      --v3;
    }

    while (v3);
    v2 = v19;
  }

  v17 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412204();
  sub_1C49A55E0(sub_1C4A5827C, v1);

  return sub_1C43FDB98();
}

uint64_t sub_1C4A57764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a1;
  v17 = a3;
  v18 = sub_1C4EFB288();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v21[6] = a2;
  sub_1C4EFB268();
  v21[3] = sub_1C4EFB298();
  v21[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v21);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4F01468();
  (*(v4 + 8))(v7, v18);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v21);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0);
  sub_1C4A581D4();
  v13 = v20;
  v14 = sub_1C4EFAFE8();
  result = (*(v9 + 8))(v12, v8);
  if (!v13)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1C4A57A74@<X0>(void (*a1)(void)@<X1>, void (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a1();
  a2();
  result = sub_1C4EFB388();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4A57B14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClassPair();
  sub_1C4A5805C(&qword_1EC0C1CD8);
  result = sub_1C4EFAE88();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4A57CDC(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);

  v6 = a2(a1, 0);

  return v6;
}

uint64_t sub_1C4A57D70@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  a1();
  result = sub_1C4EFAE88();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t OntologyDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_config);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);

  return v0;
}

uint64_t OntologyDatabase.__deallocating_deinit()
{
  OntologyDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A57EC4()
{
  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1C4A57F98()
{
  result = qword_1EC0C1CB8;
  if (!qword_1EC0C1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CB8);
  }

  return result;
}

unint64_t sub_1C4A57FEC()
{
  result = qword_1EC0C1CC8;
  if (!qword_1EC0C1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CC8);
  }

  return result;
}

uint64_t sub_1C4A5805C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassPair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4A580BC()
{
  result = qword_1EC0C1CF8;
  if (!qword_1EC0C1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CF8);
  }

  return result;
}

unint64_t sub_1C4A58110()
{
  result = qword_1EC0C1D08;
  if (!qword_1EC0C1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D08);
  }

  return result;
}

unint64_t sub_1C4A58180()
{
  result = qword_1EC0C1D18;
  if (!qword_1EC0C1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D18);
  }

  return result;
}

unint64_t sub_1C4A581D4()
{
  result = qword_1EC0C1D28;
  if (!qword_1EC0C1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D28);
  }

  return result;
}

unint64_t sub_1C4A582B8()
{
  result = qword_1EC0C1D30;
  if (!qword_1EC0C1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D30);
  }

  return result;
}

unint64_t sub_1C4A5830C()
{
  result = qword_1EC0C1D38;
  if (!qword_1EC0C1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D38);
  }

  return result;
}

unint64_t sub_1C4A58360()
{
  result = qword_1EDDFF1F8;
  if (!qword_1EDDFF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1F8);
  }

  return result;
}

unint64_t sub_1C4A583B4()
{
  result = qword_1EDDFF208;
  if (!qword_1EDDFF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF208);
  }

  return result;
}

uint64_t sub_1C4A584A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497373616C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4A58564(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x64497373616C63;
  }
}

void sub_1C4A58598()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C1F50, &qword_1C4F47CB8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A474();
  v10 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4A5C578();
  sub_1C4433620();
  sub_1C4F02BF8();
  sub_1C440BE6C();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C4F02798();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

void sub_1C4A586DC()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C1EE8, &qword_1C4F47C68);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5C578();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C441CC44();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C4435168();
    sub_1C441C410();
    sub_1C4F02678();
    v9 = *(v5 + 8);
    v10 = sub_1C43FE5F8();
    v11(v10);
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

uint64_t sub_1C4A58858(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657373616C63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C4A588E8()
{
  sub_1C4413F18();
  sub_1C4408E38();
  v0 = sub_1C456902C(&qword_1EC0C1E68, &qword_1C4F47440);
  sub_1C43FCDF8(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B514();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1D68, &qword_1C4F473D8);
  sub_1C4A5BE50();
  sub_1C4412228();
  sub_1C4F027E8();
  v4 = sub_1C440AFC4();
  v5(v4);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A589F0()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  v2 = sub_1C456902C(&qword_1EC0C1D58, &qword_1C4F473D0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5B514();
  sub_1C4432760();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1D68, &qword_1C4F473D8);
    sub_1C4A5B568();
    sub_1C441FF94();
    v6 = sub_1C440AFC4();
    v7(v6);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}