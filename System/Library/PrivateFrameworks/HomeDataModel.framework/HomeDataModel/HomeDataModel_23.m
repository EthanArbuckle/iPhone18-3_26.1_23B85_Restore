uint64_t sub_1D18D0F6C()
{
  v5 = v0[57];
  swift_beginAccess();
  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = [v6 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v8 = sub_1D1E67C1C();

    if (v8 >> 62)
    {
LABEL_83:
      v80 = sub_1D1E6873C();
      if (v80)
      {
        v81 = v80;
        v9 = sub_1D1808600(v80, 0);

        sub_1D18D2FC0(v9 + 32, v81, v8);
        v83 = v82;

        if (v83 != v81)
        {
          __break(1u);
          goto LABEL_86;
        }
      }

      else
      {
LABEL_94:
        v9 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = v0[52];
    v0[36] = v9;
    sub_1D1747DDC(v0 + 36);
    if (v10)
    {

      v11 = v0[36];
    }

    v2 = 0;
    v3 = v0[36];
  }

  else
  {
    v2 = v0[52];
    v3 = MEMORY[0x1E69E7CC0];
  }

  v1 = v0[55];
  v13 = v0[56];
  v8 = v0[47];
  v14 = v0[43];
  v96 = v0;
  v15 = v0[37];
  (v1)(v0[44], v8, v15);
  (v1)(v14, v8, v15);
  v86 = v3 >> 62;
  if (!(v3 >> 62))
  {
    v92 = v3 & 0xFFFFFFFFFFFFFF8;
    v91 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_86:
  v92 = v3 & 0xFFFFFFFFFFFFFF8;
  v91 = sub_1D1E6873C();
LABEL_12:
  v16 = 0;
  v87 = v3;
  v89 = (v3 + 32);
  v90 = v3 & 0xC000000000000001;
  v0 = v96;
  while (1)
  {
    if (v16 == v91)
    {
      v8 = v91;
      goto LABEL_45;
    }

    v95 = v16;
    if (v90)
    {
      v17 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v16 >= *(v92 + 16))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v17 = *&v89[8 * v16];
    }

    v1 = v0[55];
    v8 = v0[56];
    v19 = v0[42];
    v18 = v0[43];
    v20 = v0[41];
    v21 = v0[37];
    v93 = v17;
    v22 = [v17 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v23 = sub_1D1E67C1C();

    v4 = v23;
    (v1)(v19, v18, v21);
    (v1)(v20, v18, v21);
    v94 = (v23 >> 62);
    v97 = v23 & 0xFFFFFFFFFFFFFF8;
    v24 = v23 >> 62 ? sub_1D1E6873C() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = 0;
    v0 = (v23 & 0xC000000000000001);
    v88 = v4 + 32;
    while (v24 != v3)
    {
      if (v0)
      {
        v1 = v4;
        v25 = MEMORY[0x1D3891EF0](v3, v4);
      }

      else
      {
        if (v3 >= *(v97 + 16))
        {
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v1 = v4;
        v25 = *(v4 + 8 * v3 + 32);
      }

      v26 = v25;
      v27 = v96[41];
      v28 = [v25 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v29 = sub_1D1E67C1C();

      v30 = swift_task_alloc();
      *(v30 + 16) = v27;
      v8 = sub_1D174A6C4(sub_1D1749C64, v30, v29);

      if (v8)
      {
        v24 = v3;
        v4 = v1;
        break;
      }

      v31 = __OFADD__(v3++, 1);
      v4 = v1;
      if (v31)
      {
        goto LABEL_78;
      }
    }

    if (!v94)
    {
      break;
    }

    if (v24 != sub_1D1E6873C())
    {
      goto LABEL_40;
    }

LABEL_34:
    v0 = v96;
    v8 = v96[41];
    v32 = v96[37];
    v33 = v96[38];
    v34 = *(v33 + 8);
    v1 = v33 + 8;
    v34(v96[42], v32);

    v34(v8, v32);

    v16 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      goto LABEL_80;
    }
  }

  if (v24 == *(v97 + 16))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v0)
  {
    goto LABEL_92;
  }

  if (v24 >= *(v97 + 16))
  {
    __break(1u);
    goto LABEL_94;
  }

  for (i = *(v88 + 8 * v24); ; i = MEMORY[0x1D3891EF0](v24, v4))
  {
    v36 = i;
    v0 = v96;
    v37 = v96[42];
    v39 = v96[37];
    v38 = v96[38];
    v40 = [i services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v4 = sub_1D1E67C1C();

    v41 = swift_task_alloc();
    *(v41 + 16) = v37;
    v42 = sub_1D174A6C4(sub_1D1778988, v41, v4);

    v44 = *(v38 + 8);
    v1 = v38 + 8;
    v43 = v44;
    v44(v37, v39);

    v45 = v96[41];
    v46 = v96[37];
    if (!v42)
    {
      goto LABEL_97;
    }

    (v43)(v45, v46);

    v8 = v95;
LABEL_45:
    v0[58] = v2;
    if (v86)
    {
      if (v8 == sub_1D1E6873C())
      {
LABEL_63:
        v59 = v0[43];
        v60 = v0[37];
        v61 = *(v0[38] + 8);
        v61(v0[44], v60);

        v61(v59, v60);
        v62 = sub_1D18D1A2C;
        goto LABEL_74;
      }
    }

    else if (v8 == *(v92 + 16))
    {
      goto LABEL_63;
    }

    if (v90)
    {
      v47 = MEMORY[0x1D3891EF0](v8, v87);
      goto LABEL_50;
    }

    if (v8 >= *(v92 + 16))
    {
      break;
    }

    v47 = *&v89[8 * v8];
LABEL_50:
    v48 = v0[55];
    v49 = v0[56];
    v50 = v0[44];
    v52 = v0[39];
    v51 = v0[40];
    v24 = v0[37];
    v94 = v47;
    v3 = [v47 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v4 = sub_1D1E67C1C();

    v48(v51, v50, v24);
    v48(v52, v50, v24);
    v95 = v4 >> 62;
    v98 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v8 = sub_1D1E6873C();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = 0;
    v53 = v4 & 0xC000000000000001;
    v93 = (v4 + 32);
    while (v8 != v1)
    {
      if (v53)
      {
        v0 = v4;
        v54 = MEMORY[0x1D3891EF0](v1, v4);
      }

      else
      {
        if (v1 >= *(v98 + 16))
        {
          goto LABEL_81;
        }

        v0 = v4;
        v54 = *(v4 + 8 * v1 + 32);
      }

      v55 = v54;
      v56 = v96[39];
      v57 = [v54 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v58 = sub_1D1E67C1C();

      v24 = swift_task_alloc();
      *(v24 + 16) = v56;
      v3 = sub_1D174A6C4(sub_1D1778988, v24, v58);

      if (v3)
      {
        v8 = v1;
        v4 = v0;
        break;
      }

      v31 = __OFADD__(v1++, 1);
      v4 = v0;
      if (v31)
      {
        goto LABEL_82;
      }
    }

    v1 = v96;
    if (v95)
    {
      v63 = sub_1D1E6873C();
    }

    else
    {
      v63 = *(v98 + 16);
    }

    if (v8 == v63)
    {
      v43 = v96[43];
      v45 = v96[44];
      v46 = v96[39];
      v65 = v96[37];
      v84 = v96[38];
      v85 = *(v84 + 8);
      v72 = (v84 + 8);
      v85(v96[40], v65);

      v85(v46, v65);
      v85(v45, v65);

      v85(v43, v65);
      __break(1u);
      goto LABEL_96;
    }

    v92 = v4;
    if (v53)
    {
      goto LABEL_90;
    }

    if (v8 < *(v98 + 16))
    {
      v64 = *(v93 + v8);
      goto LABEL_72;
    }

    __break(1u);
LABEL_92:
    ;
  }

  __break(1u);
LABEL_90:
  v64 = MEMORY[0x1D3891EF0](v8, v4);
LABEL_72:
  v45 = v64;
  v65 = v1;
  v66 = *(v1 + 320);
  v67 = v65[37];
  v68 = v65[38];
  v69 = [v64 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v70 = sub_1D1E67C1C();

  v43 = swift_task_alloc();
  *(v43 + 16) = v66;
  v46 = v2;
  v71 = sub_1D174A6C4(sub_1D1778988, v43, v70);
  v65[59] = v71;
  v65[60] = v46;

  v72 = *(v68 + 8);
  v72(v66, v67);

  if (!v71)
  {
LABEL_96:
    v72(v65[39], v65[37]);
    __break(1u);
LABEL_97:
    v77 = (v43)(v45, v46);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v77, v78, v79);
  }

  v73 = v65[43];
  v74 = v65[44];
  v75 = v65[39];
  v76 = v65[37];

  v72(v75, v76);
  v72(v74, v76);

  v72(v73, v76);
  v62 = sub_1D18D1DDC;
LABEL_74:
  v77 = v62;
  v78 = 0;
  v79 = 0;

  return MEMORY[0x1EEE6DFA0](v77, v78, v79);
}

uint64_t sub_1D18D1A2C()
{
  v1 = *(v0 + 456);

  v2 = *(v0 + 464);
  sub_1D1741A30(*(v0 + 376), &qword_1EC6430E0, &qword_1D1E71438);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  *(v0 + 416) = v2;
  v5 = (v4 - 1) & v4;
  if (v5)
  {
    v6 = *(v0 + 392);
LABEL_7:
    *(v0 + 424) = v5;
    *(v0 + 432) = v3;
    v9 = *(v0 + 376);
    v8 = *(v0 + 384);
    v10 = *(v0 + 360);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = __clz(__rbit64(v5)) | (v3 << 6);
    v14 = *(v6 + 48) + *(v12 + 72) * v13;
    v15 = *(v12 + 16);
    *(v0 + 440) = v15;
    *(v0 + 448) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v8, v14, v11);
    v16 = *(*(v6 + 56) + 8 * v13);
    v17 = *(v10 + 48);
    (*(v12 + 32))(v9, v8, v11);
    *(v9 + v17) = v16;
    v18 = qword_1EE07AF78;

    if (v18 != -1)
    {
LABEL_27:
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v19 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v19 == 2 || (v19 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v20 = *(v0 + 280);
    if (v20)
    {
      goto LABEL_16;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v20 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v20)
    {
LABEL_16:
      *(v0 + 456) = v20;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v21 = qword_1EC64ABE8;
      v22 = sub_1D18D0F6C;
      v23 = 0;
    }

    else
    {
LABEL_19:
      *(v0 + 488) = sub_1D1E67E1C();
      *(v0 + 496) = sub_1D1E67E0C();
      v24 = sub_1D1E67D4C();
      v26 = v25;
      v22 = sub_1D18D23F0;
      v21 = v24;
      v23 = v26;
    }

    return MEMORY[0x1EEE6DFA0](v22, v21, v23);
  }

  else
  {
    while (1)
    {
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v6 = *(v0 + 392);
      if (v7 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v6 + 8 * v7 + 64);
      ++v3;
      if (v5)
      {
        v3 = v7;
        goto LABEL_7;
      }
    }

    v28 = *(v0 + 376);
    v27 = *(v0 + 384);
    v29 = *(v0 + 368);
    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    v33 = *(v0 + 328);
    v32 = *(v0 + 336);
    v34 = *(v0 + 320);
    v38 = *(v0 + 312);

    v35 = *(v0 + 8);
    v36 = *(v0 + 408);

    return v35(v36);
  }
}

uint64_t sub_1D18D1DDC()
{
  v67 = v0;
  v1 = *(v0 + 456);

  v2 = *(v0 + 472);
  v61 = *(v0 + 480);
  v3 = *(v0 + 368);
  v4 = *(v0 + 360);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  sub_1D1741C08(*(v0 + 376), v3, &qword_1EC6430E0, &qword_1D1E71438);
  v7 = *(v3 + *(v4 + 48));
  v8 = -1 << *(v7 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v7 + 64);
  (*(v6 + 8))(v3, v5);
  v11 = 0;
  v12 = (63 - v8) >> 6;
  v13 = *(v0 + 400);
LABEL_5:
  v62 = v13;
  v14 = v11;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_14:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v15 << 6);
      v19 = *(*(v7 + 48) + v18);
      sub_1D1741970(*(v7 + 56) + 32 * v18, v0 + 96);
      *(v0 + 56) = v19;
      sub_1D16EEE38((v0 + 96), (v0 + 64));
      v11 = v15;
LABEL_15:
      *(v0 + 48) = *(v0 + 88);
      v20 = *(v0 + 72);
      *(v0 + 16) = *(v0 + 56);
      *(v0 + 32) = v20;
      if (!*(v0 + 48))
      {
        break;
      }

      v21 = *(v0 + 16);
      sub_1D16EEE38((v0 + 24), (v0 + 128));
      v64 = v21;
      v22 = HMService.subscript.getter(&v64);
      if (v22)
      {
        v23 = v22;
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        sub_1D1741970(v0 + 128, v0 + 224);
        v65 = v21;
        static HMService.convert(_:characteristicKind:)(v0 + 224, &v65, v0 + 192);
        sub_1D1741A30(v0 + 224, &qword_1EC645D58, &unk_1D1E7E530);
        if (*(v0 + 216))
        {
          sub_1D16EEE38((v0 + 192), (v0 + 160));
        }

        else
        {
          sub_1D1741970(v0 + 128, v0 + 160);
          if (*(v0 + 216))
          {
            sub_1D1741A30(v0 + 192, &qword_1EC645D58, &unk_1D1E7E530);
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v62.f64[0];
        sub_1D1752BCC((v0 + 160), v23, isUniquelyReferenced_nonNull_native);

        __swift_destroy_boxed_opaque_existential_1((v0 + 128));
        v25 = &v66;
        v13 = vld1q_dup_f64(v25);
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 128));
      v14 = v11;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    sub_1D1741A30(*(v0 + 376), &qword_1EC6430E0, &qword_1D1E71438);

    v27 = *(v0 + 424);
    v26 = *(v0 + 432);
    *(v0 + 400) = v62;
    *(v0 + 416) = v61;
    v28 = (v27 - 1) & v27;
    if (v28)
    {
      v29 = *(v0 + 392);
LABEL_31:
      *(v0 + 424) = v28;
      *(v0 + 432) = v26;
      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v33 = *(v0 + 360);
      v34 = *(v0 + 296);
      v35 = *(v0 + 304);
      v36 = __clz(__rbit64(v28)) | (v26 << 6);
      v37 = *(v29 + 48) + *(v35 + 72) * v36;
      v38 = *(v35 + 16);
      *(v0 + 440) = v38;
      *(v0 + 448) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v31, v37, v34);
      v39 = *(*(v29 + 56) + 8 * v36);
      v40 = *(v33 + 48);
      (*(v35 + 32))(v32, v31, v34);
      *(v32 + v40) = v39;
      v41 = qword_1EE07AF78;

      if (v41 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }

    while (1)
    {
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v29 = *(v0 + 392);
      if (v30 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {
        v51 = *(v0 + 376);
        v50 = *(v0 + 384);
        v52 = *(v0 + 368);
        v54 = *(v0 + 344);
        v53 = *(v0 + 352);
        v56 = *(v0 + 328);
        v55 = *(v0 + 336);
        v57 = *(v0 + 320);
        v63 = *(v0 + 312);

        v58 = *(v0 + 8);
        v59 = *(v0 + 408);

        return v58(v59);
      }

      v28 = *(v29 + 8 * v30 + 64);
      ++v26;
      if (v28)
      {
        v26 = v30;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_7:
    if (v12 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v12;
    }

    v11 = v16 - 1;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        v10 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        goto LABEL_15;
      }

      v10 = *(v7 + 64 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_32:
  os_unfair_lock_lock(&dword_1EE07AF80);
  v42 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v42 == 2 || (v42 & 1) == 0)
  {
    goto LABEL_43;
  }

  if (qword_1EC642308 != -1)
  {
    swift_once();
  }

  sub_1D1E693FC();
  v43 = *(v0 + 280);
  if (v43)
  {
    goto LABEL_40;
  }

  if (qword_1EC642310 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BC0);
  v43 = off_1EC649BC8;

  os_unfair_lock_unlock(&dword_1EC649BC0);
  if (v43)
  {
LABEL_40:
    *(v0 + 456) = v43;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v44 = qword_1EC64ABE8;
    v45 = sub_1D18D0F6C;
    v46 = 0;
  }

  else
  {
LABEL_43:
    *(v0 + 488) = sub_1D1E67E1C();
    *(v0 + 496) = sub_1D1E67E0C();
    v47 = sub_1D1E67D4C();
    v49 = v48;
    v45 = sub_1D18D23F0;
    v44 = v47;
    v46 = v49;
  }

  return MEMORY[0x1EEE6DFA0](v45, v44, v46);
}

uint64_t sub_1D18D23F0()
{
  v1 = *(v0 + 496);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18D2488, 0, 0);
}

uint64_t sub_1D18D2488()
{
  v1 = *(v0 + 488);
  *(v0 + 504) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18D2514, v3, v2);
}

uint64_t sub_1D18D2514()
{
  v1 = *(v0 + 504);

  *(v0 + 512) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D18D2588, 0, 0);
}

uint64_t sub_1D18D2588()
{
  v1 = v0[61];
  v2 = v0[47];
  v0[65] = sub_1D1E66A2C();
  v0[66] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18D2620, v4, v3);
}

uint64_t sub_1D18D2620()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];

  v0[67] = [v3 serviceFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D18D26B4, 0, 0);
}

uint64_t sub_1D18D26B4()
{
  v67 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 416);
  v3 = *(v0 + 376);
  if (v1)
  {
    v61 = *(v0 + 416);
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    sub_1D1741C08(v3, v4, &qword_1EC6430E0, &qword_1D1E71438);
    v8 = *(v4 + *(v5 + 48));
    v9 = -1 << *(v8 + 32);
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v8 + 64);
    (*(v7 + 8))(v4, v6);
    v12 = 0;
    v13 = (63 - v9) >> 6;
    v14 = *(v0 + 400);
LABEL_6:
    v62 = v14;
    v15 = v12;
    if (v11)
    {
      while (1)
      {
        v16 = v15;
LABEL_15:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = v18 | (v16 << 6);
        v20 = *(*(v8 + 48) + v19);
        sub_1D1741970(*(v8 + 56) + 32 * v19, v0 + 96);
        *(v0 + 56) = v20;
        sub_1D16EEE38((v0 + 96), (v0 + 64));
        v12 = v16;
LABEL_16:
        *(v0 + 48) = *(v0 + 88);
        v21 = *(v0 + 72);
        *(v0 + 16) = *(v0 + 56);
        *(v0 + 32) = v21;
        if (!*(v0 + 48))
        {
          break;
        }

        v22 = *(v0 + 16);
        sub_1D16EEE38((v0 + 24), (v0 + 128));
        v64 = v22;
        v23 = HMService.subscript.getter(&v64);
        if (v23)
        {
          v24 = v23;
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          sub_1D1741970(v0 + 128, v0 + 224);
          v65 = v22;
          static HMService.convert(_:characteristicKind:)(v0 + 224, &v65, v0 + 192);
          sub_1D1741A30(v0 + 224, &qword_1EC645D58, &unk_1D1E7E530);
          if (*(v0 + 216))
          {
            sub_1D16EEE38((v0 + 192), (v0 + 160));
          }

          else
          {
            sub_1D1741970(v0 + 128, v0 + 160);
            if (*(v0 + 216))
            {
              sub_1D1741A30(v0 + 192, &qword_1EC645D58, &unk_1D1E7E530);
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v62.f64[0];
          sub_1D1752BCC((v0 + 160), v24, isUniquelyReferenced_nonNull_native);

          __swift_destroy_boxed_opaque_existential_1((v0 + 128));
          v26 = &v66;
          v14 = vld1q_dup_f64(v26);
          goto LABEL_6;
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 128));
        v15 = v12;
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      sub_1D1741A30(*(v0 + 376), &qword_1EC6430E0, &qword_1D1E71438);

      v27 = *(v0 + 432);
      v28 = (*(v0 + 424) - 1) & *(v0 + 424);
      *(v0 + 400) = v62;
      *(v0 + 416) = v61;
      if (!v28)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_8:
    if (v13 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v13;
    }

    v12 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v11 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        goto LABEL_16;
      }

      v11 = *(v8 + 64 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D1741A30(v3, &qword_1EC6430E0, &qword_1D1E71438);
    v27 = *(v0 + 432);
    v28 = (*(v0 + 424) - 1) & *(v0 + 424);
    *(v0 + 416) = v2;
    if (v28)
    {
LABEL_27:
      v29 = *(v0 + 392);
LABEL_33:
      *(v0 + 424) = v28;
      *(v0 + 432) = v27;
      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v33 = *(v0 + 360);
      v34 = *(v0 + 296);
      v35 = *(v0 + 304);
      v36 = __clz(__rbit64(v28)) | (v27 << 6);
      v37 = *(v29 + 48) + *(v35 + 72) * v36;
      v38 = *(v35 + 16);
      *(v0 + 440) = v38;
      *(v0 + 448) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v31, v37, v34);
      v39 = *(*(v29 + 56) + 8 * v36);
      v40 = *(v33 + 48);
      (*(v35 + 32))(v32, v31, v34);
      *(v32 + v40) = v39;
      v41 = qword_1EE07AF78;

      if (v41 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_54;
    }

LABEL_29:
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v29 = *(v0 + 392);
      if (v30 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {
        v51 = *(v0 + 376);
        v50 = *(v0 + 384);
        v52 = *(v0 + 368);
        v54 = *(v0 + 344);
        v53 = *(v0 + 352);
        v56 = *(v0 + 328);
        v55 = *(v0 + 336);
        v57 = *(v0 + 320);
        v63 = *(v0 + 312);

        v58 = *(v0 + 8);
        v59 = *(v0 + 408);

        return v58(v59);
      }

      v28 = *(v29 + 8 * v30 + 64);
      ++v27;
      if (v28)
      {
        v27 = v30;
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_34:
  os_unfair_lock_lock(&dword_1EE07AF80);
  v42 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v42 == 2 || (v42 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (qword_1EC642308 != -1)
  {
    swift_once();
  }

  sub_1D1E693FC();
  v43 = *(v0 + 280);
  if (v43)
  {
    goto LABEL_42;
  }

  if (qword_1EC642310 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BC0);
  v43 = off_1EC649BC8;

  os_unfair_lock_unlock(&dword_1EC649BC0);
  if (v43)
  {
LABEL_42:
    *(v0 + 456) = v43;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v44 = qword_1EC64ABE8;
    v45 = sub_1D18D0F6C;
    v46 = 0;
  }

  else
  {
LABEL_45:
    *(v0 + 488) = sub_1D1E67E1C();
    *(v0 + 496) = sub_1D1E67E0C();
    v47 = sub_1D1E67D4C();
    v49 = v48;
    v45 = sub_1D18D23F0;
    v44 = v47;
    v46 = v49;
  }

  return MEMORY[0x1EEE6DFA0](v45, v44, v46);
}

uint64_t CharacteristicValueSet.description.getter()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v1 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v21 - v2;
  v3 = *v0 + 64;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*v0 + 64);
  v7 = (v4 + 63) >> 6;
  v23 = *v0;

  v9 = 0;
  v10 = 0;
  for (i = 0xE000000000000000; v6; result = sub_1D1741A30(v18, &qword_1EC6430E0, &qword_1D1E71438))
  {
    v24 = v10;
    v12 = v9;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v12 << 6);
    v15 = v23;
    v16 = *(v23 + 48);
    v17 = sub_1D1E66A7C();
    v18 = v21;
    (*(*(v17 - 8) + 16))(v21, v16 + *(*(v17 - 8) + 72) * v14, v17);
    *(v18 + *(v22 + 48)) = *(*(v15 + 56) + 8 * v14);
    v25 = 0;
    v26 = 0xE000000000000000;

    sub_1D1E6884C();

    v25 = v24;
    v26 = i;
    MEMORY[0x1D3890F70](0x203A4449555520, 0xE700000000000000);
    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v19);

    MEMORY[0x1D3890F70](0x206874697720, 0xE600000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D17857C0();
    v20 = sub_1D1E6760C();
    MEMORY[0x1D3890F70](v20);

    v10 = v25;
    i = v26;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v12);
    ++v9;
    if (v6)
    {
      v24 = v10;
      v9 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D2FC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EE079E18, &qword_1EC646260, &qword_1D1E7E918);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646260, &qword_1D1E7E918);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3160(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6462F0, &qword_1EC64FE40, &qword_1D1EB0F40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3300(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6462E0, &qword_1EC6462D8, &qword_1D1E7E9D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6462D8, &qword_1D1E7E9D8);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D34A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6461A0, &qword_1EC646198, &qword_1D1E7E780);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646198, &qword_1D1E7E780);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3640(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6461D0, &qword_1EC6461C8, &qword_1D1E7E808);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461C8, &qword_1D1E7E808);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D37E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC646110, &qword_1EC646108, &qword_1D1E7E668);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646108, &qword_1D1E7E668);
            v9 = sub_1D1790D5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC646168, &qword_1EC646160, &qword_1D1E7E718);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646160, &qword_1D1E7E718);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3B20(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_1D1E66A7C();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);
}

id sub_1D18D3BF0(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_1D1741970(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_1D18D3C80(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_1D1E66A7C();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = v12 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * a3;

  return sub_1D18DC660(v13, a2);
}

void *sub_1D18D3D7C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    *result = *v6;
    result[1] = v8;
    v9 = *(v6 + 16);
    *(result + 16) = v9;
    v10 = v5;
    sub_1D1741830(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1D18D3E20(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    result[2] = v9;
    v10 = *(v6 + 24);
    *(result + 24) = v10;
    v11 = v5;
    sub_1D17418FC(v7, v8, v9, v10);
    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D18D3ED4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26[3] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v16 = *a2;
  if (!*(*a4 + 16) || (sub_1D1742188(a3), (v17 & 1) == 0))
  {
    v18 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    v19 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *a4;
    sub_1D1752B8C(v18, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v25[0];
  }

  (*(v11 + 16))(v14, a3, v10);
  v21 = sub_1D1C76E38(v25);
  if (*v22)
  {
    sub_1D1741970(v26, v24);
    sub_1D1B0CE00(v24, v16);
  }

  (v21)(v25, 0);
  (*(v11 + 8))(v14, v10);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1D18D40C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v14, v15, v16);
  v17 = *a2;
  v21 = a4;
  v22 = a1;
  v23 = v17;
  v18 = *(a6 + 8);
  sub_1D1E67ADC();
  return (*(v11 + 8))(v14, a5);
}

uint64_t sub_1D18D41EC(uint64_t a1, uint64_t a2, void *a3)
{
  v105 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v92 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v95 = &v92 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v92 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v92 - v15;
  v99 = *(a2 + 16);
  if (!v99)
  {
    return result;
  }

  v17 = 0;
  v19 = *(v6 + 16);
  v18 = v6 + 16;
  v104 = v19;
  v98 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v20 = v105 + 64;
  v101 = *(v18 + 56);
  v96 = (v18 - 8);
  v100 = v18;
  v97 = &v92 - v15;
  v94 = a3;
  v93 = v5;
  do
  {
    v103 = v17;
    v104(v16, v98 + v101 * v17, v5);
    v24 = *a3;
    if (*(*a3 + 16))
    {
      v25 = sub_1D1742188(v16);
      if (v26)
      {
        v27 = v16;
        v28 = *(*(v24 + 56) + 8 * v25);
        v104(v95, v27, v5);
        v29 = v105;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v28;
        v31 = 1 << *(v29 + 32);
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & *(v29 + 64);
        v34 = (v31 + 63) >> 6;

        v35 = 0;
        while (1)
        {
          if (!v33)
          {
            if (v34 <= v35 + 1)
            {
              v38 = v35 + 1;
            }

            else
            {
              v38 = v34;
            }

            v39 = v38 - 1;
            while (1)
            {
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (v37 >= v34)
              {
                v33 = 0;
                v110 = 0;
                v35 = v39;
                v108 = 0u;
                v109 = 0u;
                goto LABEL_25;
              }

              v33 = *(v20 + 8 * v37);
              ++v35;
              if (v33)
              {
                v35 = v37;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            sub_1D1E690FC();
            __break(1u);
LABEL_67:
            result = sub_1D1E690FC();
            __break(1u);
            return result;
          }

          v37 = v35;
LABEL_24:
          v40 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v41 = v40 | (v37 << 6);
          v42 = *(*(v105 + 48) + v41);
          sub_1D1741970(*(v105 + 56) + 32 * v41, v106);
          LOBYTE(v108) = v42;
          sub_1D16EEE38(v106, (&v108 + 8));
LABEL_25:
          v106[0] = v108;
          v106[1] = v109;
          v107 = v110;
          if (!v110)
          {
            v112 = 0;
            memset(v111, 0, sizeof(v111));
LABEL_49:

            a3 = v94;
            v72 = *v94;
            v73 = swift_isUniquelyReferenced_nonNull_native();
            *&v111[0] = *a3;
            v74 = *&v111[0];
            v75 = v95;
            v76 = sub_1D1742188(v95);
            v78 = *(v74 + 16);
            v79 = (v77 & 1) == 0;
            v53 = __OFADD__(v78, v79);
            v80 = v78 + v79;
            if (v53)
            {
              goto LABEL_65;
            }

            v81 = v77;
            if (*(v74 + 24) >= v80)
            {
              v5 = v93;
              if (v73)
              {
                goto LABEL_54;
              }

              v88 = v76;
              sub_1D1734AF0();
              v76 = v88;
              v83 = *&v111[0];
              if ((v81 & 1) == 0)
              {
                goto LABEL_57;
              }

LABEL_55:
              v84 = *(v83 + 56);
              v85 = *(v84 + 8 * v76);
              *(v84 + 8 * v76) = v28;

              v86 = v95;
            }

            else
            {
              sub_1D1721C88(v80, v73);
              v76 = sub_1D1742188(v75);
              v5 = v93;
              if ((v81 & 1) != (v82 & 1))
              {
                goto LABEL_67;
              }

LABEL_54:
              v83 = *&v111[0];
              if (v81)
              {
                goto LABEL_55;
              }

LABEL_57:
              v89 = v76;
              v90 = v92;
              v86 = v95;
              v104(v92, v95, v5);
              sub_1D19DD7D8(v89, v90, v28, v83);
            }

            v91 = *v96;
            (*v96)(v86, v5);
            *a3 = v83;
            v16 = v97;
            result = (v91)(v97, v5);
            goto LABEL_5;
          }

          LOBYTE(v111[0]) = v106[0];
          sub_1D1741970(v106 + 8, v111 + 8);
          sub_1D1741A30(v106, &qword_1EC646288, &qword_1D1E7E948);
          if (!v112)
          {
            goto LABEL_49;
          }

          v43 = LOBYTE(v111[0]);
          sub_1D16EEE38((v111 + 8), &v108);
          v45 = sub_1D171D140(v43);
          v46 = v28[2];
          v47 = (v44 & 1) == 0;
          v48 = v46 + v47;
          if (__OFADD__(v46, v47))
          {
            goto LABEL_61;
          }

          v49 = v44;
          if (v28[3] >= v48)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v28 = v113;
              if (v44)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1D1734AC8();
              v28 = v113;
              if (v49)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            sub_1D1721C60(v48, isUniquelyReferenced_nonNull_native & 1);
            v50 = sub_1D171D140(v43);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_66;
            }

            v45 = v50;
            v28 = v113;
            if (v49)
            {
LABEL_12:
              v36 = (v28[7] + 32 * v45);
              __swift_destroy_boxed_opaque_existential_1(v36);
              sub_1D16EEE38(&v108, v36);
              goto LABEL_13;
            }
          }

          v28[(v45 >> 6) + 8] |= 1 << v45;
          *(v28[6] + v45) = v43;
          sub_1D16EEE38(&v108, (v28[7] + 32 * v45));
          v52 = v28[2];
          v53 = __OFADD__(v52, 1);
          v54 = v52 + 1;
          if (v53)
          {
            goto LABEL_62;
          }

          v28[2] = v54;
LABEL_13:
          isUniquelyReferenced_nonNull_native = 1;
        }
      }
    }

    v55 = v102;
    v104(v102, v16, v5);
    v56 = *a3;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *&v111[0] = *a3;
    v58 = *&v111[0];
    v59 = sub_1D1742188(v55);
    v61 = *(v58 + 16);
    v62 = (v60 & 1) == 0;
    v53 = __OFADD__(v61, v62);
    v63 = v61 + v62;
    if (v53)
    {
      goto LABEL_63;
    }

    v64 = v60;
    if (*(v58 + 24) >= v63)
    {
      if ((v57 & 1) == 0)
      {
        v87 = v59;
        sub_1D1734AF0();
        v59 = v87;
      }
    }

    else
    {
      sub_1D1721C88(v63, v57);
      v59 = sub_1D1742188(v102);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_67;
      }
    }

    v66 = *&v111[0];
    if (v64)
    {
      v21 = *(*&v111[0] + 56);
      v22 = *(v21 + 8 * v59);
      *(v21 + 8 * v59) = v105;

      v23 = *v96;
      (*v96)(v102, v5);
      v16 = v97;
      result = (v23)(v97, v5);
    }

    else
    {
      *(*&v111[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
      v67 = v59;
      v68 = v102;
      v104((v66[6] + v59 * v101), v102, v5);
      *(v66[7] + 8 * v67) = v105;
      v69 = *v96;

      v69(v68, v5);
      v16 = v97;
      result = (v69)(v97, v5);
      v70 = v66[2];
      v53 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v53)
      {
        goto LABEL_64;
      }

      v66[2] = v71;
    }

    *a3 = v66;
LABEL_5:
    v17 = v103 + 1;
  }

  while (v103 + 1 != v99);
  return result;
}

uint64_t sub_1D18D4A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v12);
  v16 = a3;
  v17 = a1;
  v13 = *(a5 + 8);
  sub_1D1E67ADC();
  return (*(v9 + 8))(v12, a4);
}

unint64_t sub_1D18D4B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA0, &qword_1D1E7E980);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  result = sub_1D171D1A4(v4 | (v5 << 32));
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v10 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = v3[6] + 8 * result;
    *v11 = v4;
    *(v11 + 4) = v5;
    v12 = v3[7] + 16 * result;
    *v12 = v6;
    *(v12 + 8) = v7;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    sub_1D1741AF8(v6, v7);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 4);
    v5 = *(v10 - 12);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_1D171D1A4(v4 | (v5 << 32));
    v10 += 24;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D4C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BD8, &unk_1D1E7E900);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_1D1741AF8(v5, v6);
      result = sub_1D171D228(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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

unint64_t sub_1D18D4DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461F0, &unk_1D1E7E840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C78, &unk_1D1E6E9D0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6461F0, &unk_1D1E7E840);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1D1E669FC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_1D18D4FC0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE8, &qword_1D1E7BC10);
  v3 = sub_1D1E68BCC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D171D128(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D171D128(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D50D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643710, &unk_1D1EA2630);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticActionSet();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticActionSet);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D5304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437A8, &unk_1D1E71F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6437A8, &unk_1D1E71F00);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticAccessory(0);
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticAccessory);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D5520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643798, &qword_1D1E71EF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643798, &qword_1D1E71EF0);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticCameraProfile();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticCameraProfile);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643768, &qword_1D1E71EC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643768, &qword_1D1E71EC0);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticMediaSystem();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticMediaSystem);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D5958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643750, &unk_1D1E7E6B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643750, &unk_1D1E7E6B0);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticMediaProfile();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticMediaProfile);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D5B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437B8, &unk_1D1E7E730);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6437B8, &unk_1D1E7E730);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticServiceGroup();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticServiceGroup);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D5D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6436E8, &unk_1D1E71E40);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticService(0);
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticService);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D5FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642948, &qword_1D1E6E6A8);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646170, &unk_1D1E7E720);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticMatterDevice();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticMatterDevice);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D61C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461A8, &qword_1D1E7E788);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF0, &unk_1D1E7E790);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6461A8, &qword_1D1E7E788);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticHH2Update(0);
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticHH2Update);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D640C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642928, &qword_1D1E7E5E0);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1D1741C08(i, &v14, &qword_1EC6460C8, &qword_1D1E91100);
      v5 = v14;
      result = sub_1D171D4E0(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
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

unint64_t sub_1D18D6538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v13, &qword_1EC646238, &qword_1D1E7E8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1D171D2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D16EEE38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1D18D6668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BB8, &unk_1D1E6E900);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D1741C08(i, v10, &qword_1EC646218, &unk_1D1E7E890);
      result = sub_1D171DB60(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1D16EEE38(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_1D18D677C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B98, &unk_1D1E6E8E0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646210, &unk_1D1E7E870);
      v12 = *v6;
      result = sub_1D17420B0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for StaticMatterDevice();
      result = sub_1D18DC75C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for StaticMatterDevice);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1D18D6954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461B0, &qword_1D1E7E7A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B90, &unk_1D1E7E7B0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6461B0, &qword_1D1E7E7A8);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for EndpointPath(0);
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for EndpointPath);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D6B94(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_1D1E68BCC();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1D1741C08(v17, v13, a2, v28);
      result = sub_1D1742188(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_1D1E66A7C();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_1D18D6D74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C80, &unk_1D1E8DED0);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D171D2F0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D18D6E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v13, &qword_1EC646228, &qword_1D1E8A0C0);
      v5 = v13;
      v6 = v14;
      result = sub_1D171D2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D16EEE38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1D18D6FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646230, &unk_1D1E7E8C0);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1D171D4E0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = v3[7] + 16 * result;
    *v10 = v5;
    *(v10 + 8) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1D1741AF8(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1D171D4E0(v4);
    v9 += 24;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D70C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646118, &unk_1D1E7E670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642930, &qword_1D1E6E690);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646118, &unk_1D1E7E670);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StateSnapshot(0);
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StateSnapshot);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D72DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642950, &unk_1D1E6E6B0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646208, &unk_1D1E7E860);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for MatterStateSnapshot();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for MatterStateSnapshot);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D74F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429E0, &qword_1D1E6E738);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = *(a1 + 64);
  result = sub_1D17420B0(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    swift_unknownObjectRetain();

    return v3;
  }

  v9 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 40 * result;
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 24) = v18;
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

    v14 = v9 + 3;
    v4 = *(v9 - 4);
    v5 = *(v9 - 3);
    v17 = *(v9 - 1);
    v18 = *v9;

    swift_unknownObjectRetain();

    result = sub_1D17420B0(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D765C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646120, &unk_1D1E7E680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429F0, &qword_1D1E6E748);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646120, &unk_1D1E7E680);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticHome();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticHome);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D7878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646200, &qword_1D1E7E858);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429E8, &qword_1D1E6E740);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646200, &qword_1D1E7E858);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D7A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6462C8, &qword_1D1E7E9C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C60, &qword_1D1E6E9B8);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6462C8, &qword_1D1E7E9C0);
      v12 = *v6;
      result = sub_1D17420B0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1D18D7C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A58, &qword_1D1E7E6F0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, v10, &qword_1EC646150, &unk_1D1E7E6F8);
      result = sub_1D171D140(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1D16EEE38(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1D18D7DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BF8, &qword_1D1E7E920);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v11, &qword_1EC646268, &qword_1D1E7E928);
      v5 = v11;
      result = sub_1D171D368(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D16EEE38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D18D7F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B38, &unk_1D1E6E880);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6437C8, &qword_1D1E71F28);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticZone();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticZone);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D811C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643740, &qword_1D1E71E98);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticRoom(0);
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticRoom);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D8338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B40, &qword_1D1E7E7D0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6437D8, &unk_1D1EAAD40);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticUser();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticUser);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D8554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B10, &unk_1D1E7E7C0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643730, &unk_1D1EA7CA0);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticResident();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticResident);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D8770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642978, &unk_1D1E7BC00);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 3);
      sub_1D1741830(v5, v6, v7);
      result = sub_1D171D368(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = v3[7] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D18D888C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646290, &unk_1D1E7E950);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C08, &qword_1D1E6E958);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646290, &unk_1D1E7E950);
      result = sub_1D171D54C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for BatchRequestError.ID();
      result = sub_1D18DC75C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BatchRequestError.ID);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D8A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429D0, &qword_1D1E7E660);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      sub_1D17418FC(v5, v6, v7, v8);
      result = sub_1D171D368(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D18D8BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646100, &unk_1D1E7E650);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D171D228(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1D18D8D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D171D2F0(v5, v6);
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

void *sub_1D18D8E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6462A8, &unk_1D1E7E970);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1D174218C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D174218C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D8F20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C40, &qword_1D1E6E990);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6452F0, &qword_1D1E96C50);
      result = sub_1D171D710(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for StaticServiceCharacteristicDoublet();
      sub_1D18DC75C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StaticServiceCharacteristicDoublet);
      v17 = v8[7];
      v18 = type metadata accessor for IconTextValueStringDataHolder();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for IconTextValueStringDataHolder);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D9138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460F8, &unk_1D1E7E640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C38, &qword_1D1E6E988);
    v8 = sub_1D1E68BCC();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6460F8, &unk_1D1E7E640);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 32 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_1D18D9378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460F0, &unk_1D1E7E630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C28, &unk_1D1E7BBE0);
  v8 = sub_1D1E68BCC();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  v26 = *(v2 + 48);
  v27 = v10;

  sub_1D1741C08(a1 + v9, v6, &qword_1EC6460F0, &unk_1D1E7E630);
  v11 = sub_1D1742188(v6);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v13 = v11;
  v25 = sub_1D1E66A7C();
  v14 = *(v25 - 8);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = a1 + v27 + v9;
  while (1)
  {
    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v15(v8[6] + v16 * v13, v6, v25);
    result = memmove((v8[7] + (v13 << 7)), &v6[v26], 0x80uLL);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v22 = v17 + v27;
    sub_1D1741C08(v17, v6, &qword_1EC6460F0, &unk_1D1E7E630);
    v13 = sub_1D1742188(v6);
    v17 = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D95FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C20, &unk_1D1E6E970);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, v13, &qword_1EC6462A0, &qword_1D1E7E968);
      result = sub_1D171D804(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D16EEE38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1D18D974C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D171D2F0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D18D9848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646298, &qword_1D1E7E960);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D171D2F0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D18D995C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461C0, &qword_1D1E7E7E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642988, &unk_1D1E7E7F0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6461C0, &qword_1D1E7E7E8);
      result = sub_1D171D934(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = _s7MergeIdVMa();
      result = sub_1D18DC75C(v6, v15 + *(*(v16 - 8) + 72) * v14, _s7MergeIdVMa);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18D9B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BF0, &unk_1D1E6E940);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D1741C08(i, &v11, &qword_1EC6460D0, &qword_1D1E7E5E8);
      v5 = v11;
      result = sub_1D171D4E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_1D16EEE38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1D18D9C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646250, &unk_1D1E7E8F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BD0, &unk_1D1E6E920);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646250, &unk_1D1E7E8F0);
      result = sub_1D171D278(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for StaticCluster();
      result = sub_1D18DC75C(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StaticCluster);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1D18D9E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646248, &unk_1D1E7E8E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BC8, &qword_1D1E6E918);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646248, &unk_1D1E7E8E0);
      v12 = *v6;
      result = sub_1D171D15C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 2 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ActionEndpoint();
      result = sub_1D18DC75C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for ActionEndpoint);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

void *sub_1D18DA05C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_1D1E68BCC();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429C0, &qword_1D1E6E718);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1D17420B0(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v15 = *v8;
    swift_unknownObjectRetain();
    result = sub_1D17420B0(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BC0, &qword_1D1E7E8A0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v15, &qword_1EC646220, &qword_1D1E7E8A8);
      v5 = v15;
      v6 = v16;
      result = sub_1D171D2F0(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

void *sub_1D18DA3CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1D1E68BCC();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_1D171D15C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 2 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 4);
    v17 = *v12;

    v10 = sub_1D171D15C(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642908, &qword_1D1E6E668);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1D1741C08(i, &v15, &qword_1EC6460C0, &unk_1D1E7E5D0);
      result = sub_1D171D1A4(v15 | (v16 << 32));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 8 * result;
      v8 = v16;
      *v7 = v15;
      *(v7 + 4) = v8;
      v9 = v3[7] + 40 * result;
      v10 = v17;
      v11 = v18;
      *(v9 + 32) = v19;
      *v9 = v10;
      *(v9 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D18DA614(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B78, &qword_1D1E6E8C0);
  v3 = sub_1D1E68BCC();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_1D17420B0(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    v12 = v4;
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_1D17420B0(v5);
    v8 += 2;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B50, &qword_1D1E6E898);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1D171D3B8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 2 * result) = v5;
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

unint64_t sub_1D18DA7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461B8, &qword_1D1E7E7D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6428F8, &qword_1D1E7E7E0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC6461B8, &qword_1D1E7E7D8);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for HomeState();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for HomeState);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DAA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B68, &qword_1D1E6E8B0);
    v8 = sub_1D1E68BCC();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v6, &unk_1EC649E20, &unk_1D1E717B0);
      result = sub_1D1742188(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
      result = sub_1D1741A90(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_1EC642B60, &qword_1D1E7E800);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DAC64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A68, &qword_1D1E6E7B8);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, v10, &qword_1EC646178, &unk_1D1E7E740);
      result = sub_1D171D140(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1D16EEE38(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1D18DAD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC8, &unk_1D1EB2A50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BE0, &unk_1D1E7E600);
    v8 = sub_1D1E68BCC();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v6, &qword_1EC645BC8, &unk_1D1EB2A50);
      result = sub_1D1742188(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
      result = sub_1D1741A90(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_1EC645BD0, &qword_1D1E96B30);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DAFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646190, &unk_1D1E7E770);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429C8, &unk_1D1E6E720);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646190, &unk_1D1E7E770);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DB1BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646180, &unk_1D1E7E750);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429D8, &qword_1D1E6E730);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646180, &unk_1D1E7E750);
      result = sub_1D171DF0C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
      result = sub_1D18DC75C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DB3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB0, &unk_1D1E6E800);
    v3 = sub_1D1E68BCC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D171D128(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_1D18DB490(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D1E68BCC();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_1D171D408(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D18DB57C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646148, &unk_1D1E7E6E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A40, &qword_1D1E6E798);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646148, &unk_1D1E7E6E0);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticLightProfile();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticLightProfile);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DB798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646158, &qword_1D1E7E708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AE0, &qword_1D1E7E710);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646158, &qword_1D1E7E708);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for StaticTelevisionProfile();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StaticTelevisionProfile);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DB9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A28, &qword_1D1E6E780);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC643248, &qword_1D1E716A0);
      result = sub_1D171D140(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for StaticCharacteristic();
      result = sub_1D18DC75C(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StaticCharacteristic);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DBB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646140, &unk_1D1E7E6D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A38, &qword_1D1E6E790);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646140, &unk_1D1E7E6D0);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for ActionService();
      result = sub_1D18DC75C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for ActionService);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DBDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646130, &qword_1D1E7E6A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B88, &unk_1D1E6E8D0);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646130, &qword_1D1E7E6A8);
      v12 = *v6;
      result = sub_1D171D15C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 2 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for StaticEndpoint();
      result = sub_1D18DC75C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for StaticEndpoint);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

void *sub_1D18DBFD4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A10, &qword_1D1E7E6A0);
  v3 = sub_1D1E68BCC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D17420B0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D17420B0(v4);
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

unint64_t sub_1D18DC0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646128, &unk_1D1E7E690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429F8, &unk_1D1E6E750);
    v8 = sub_1D1E68BCC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v10, v6, &qword_1EC646128, &unk_1D1E7E690);
      result = sub_1D1742188(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D1E66A7C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D18DC2C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_1D1ABFE14(v40);
  if (!v42)
  {
    goto LABEL_25;
  }

  v12 = v40[0];
  sub_1D16EEE38(&v41, v39);
  v13 = *a5;
  result = sub_1D171D140(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1D1721C60(v19, a4 & 1);
    v21 = *a5;
    result = sub_1D171D140(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1D1E690FC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1D1734AC8();
    result = v25;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = (v23[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_1D16EEE38(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + result) = v12;
  result = sub_1D16EEE38(v39, (v23[7] + 32 * result));
  v26 = v23[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v23[2] = v27;
LABEL_15:
    sub_1D1ABFE14(v40);
    if (v42)
    {
      v20 = 1;
      do
      {
        v12 = v40[0];
        sub_1D16EEE38(&v41, v39);
        v29 = *a5;
        result = sub_1D171D140(v12);
        v31 = v29[2];
        v32 = (v30 & 1) == 0;
        v18 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v30;
        if (v29[3] < v33)
        {
          sub_1D1721C60(v33, 1);
          v34 = *a5;
          result = sub_1D171D140(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = (v36[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_1(v28);
          sub_1D16EEE38(v39, v28);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + result) = v12;
          result = sub_1D16EEE38(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_1D1ABFE14(v40);
      }

      while (v42);
    }

LABEL_25:
    sub_1D1716918();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D18DC5C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D18DC610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D18DC660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18DC6C4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  return CharacteristicValueSet.add(values:on:)(v3, a1);
}

uint64_t sub_1D18DC6F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v8 = *(v1 + 32);
  v5 = v3[3];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
  return sub_1D18D3ED4(v6, &v8, a1, v4, v5);
}

uint64_t sub_1D18DC75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D18DC824()
{
  result = qword_1EC6462F8;
  if (!qword_1EC6462F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6462F8);
  }

  return result;
}

unint64_t sub_1D18DC87C()
{
  result = qword_1EC646300;
  if (!qword_1EC646300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646300);
  }

  return result;
}

unint64_t sub_1D18DC8D4()
{
  result = qword_1EC646308;
  if (!qword_1EC646308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646308);
  }

  return result;
}

unint64_t sub_1D18DC92C()
{
  result = qword_1EC646310;
  if (!qword_1EC646310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646310);
  }

  return result;
}

uint64_t ServiceKind.foregroundColor.getter()
{
  v1 = *v0;
  v12[1] = *v0;
  ServiceKind.umbrellaCategory.getter(v12);
  v2 = "00-8000-0026BB765291";
  v3 = "17-A590-755E1AAC02AE";
  if (v12[0] != 6)
  {
    v3 = "73-8FBD-0E8978A33403";
  }

  v4 = "60-AD68-D91053B75F44";
  if (v12[0] != 4)
  {
    v4 = "7E-BE63-1D00B1500545";
  }

  if (v12[0] <= 5u)
  {
    v3 = v4;
  }

  v5 = "73-A058-C5E64BC487B2";
  if (v12[0] != 2)
  {
    v5 = "CE-986D-63B28F62C9E3";
  }

  if (v12[0])
  {
    v2 = "13-AA62-01754F256DD5";
  }

  if (v12[0] > 1u)
  {
    v2 = v5;
  }

  if (v12[0] <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if ((v6 | 0x8000000000000000) == 0x80000001D1EB37F0)
  {
  }

  else
  {
    v7 = sub_1D1E6904C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (sub_1D17C4E00(v1, &unk_1F4D62268))
  {
    return sub_1D1E673FC();
  }

LABEL_21:
  v11[2] = v1;
  ServiceKind.rawValue.getter();
  if (0x80000001D1EB34F0 == v9)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    if ((v10 & 1) == 0)
    {
      v11[1] = v1;
      ServiceKind.umbrellaCategory.getter(v11);
      if (v11[0] <= 2u)
      {
        if (!v11[0])
        {
          return sub_1D1E6735C();
        }

        if (v11[0] == 2)
        {
          return sub_1D1E673FC();
        }
      }

      else
      {
        switch(v11[0])
        {
          case 3:
            return sub_1D1E673CC();
          case 4:
            return sub_1D1E6738C();
          case 6:
            return sub_1D1E6734C();
        }
      }

      return sub_1D1E673AC();
    }
  }

  return sub_1D1E6739C();
}

uint64_t ServiceKind.localizedDescription.getter()
{
  v1 = sub_1D1E66ADC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E677DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  result = *v0;
  switch(*v0)
  {
    case 1:
      v6 = "AccessoryInformationService_ServiceTypeCapitalized";
      goto LABEL_22;
    case 2:
      v9 = 0x7363697274654DLL;
      v17 = 0xE700000000000000;
      goto LABEL_69;
    case 3:
      v10 = "AirPurifier_ServiceTypeCapitalized";
      goto LABEL_56;
    case 4:
      v16 = "AirQualitySensor_ServiceTypeCapitalized";
      goto LABEL_53;
    case 5:
      v20 = "Battery_ServiceTypeCapitalized";
      goto LABEL_60;
    case 6:
      v15 = "CameraControl_ServiceTypeCapitalized";
      goto LABEL_45;
    case 7:
      v18 = "CameraRTPStreamManagement_ServiceTypeCapitalized";
      goto LABEL_43;
    case 8:
      v18 = "CameraRecordingManagement_ServiceTypeCapitalized";
LABEL_43:
      v8 = (v18 - 32);
      v9 = 0xD000000000000030;
      goto LABEL_68;
    case 9:
      v8 = "nsor_ServiceTypeCapitalized";
      v9 = 0xD00000000000002ALL;
      goto LABEL_68;
    case 0xA:
      v8 = "rviceTypeCapitalized";
      v9 = 0xD00000000000002BLL;
      goto LABEL_68;
    case 0xB:
      v15 = "ContactSensor_ServiceTypeCapitalized";
      goto LABEL_45;
    case 0xC:
      return 0x6C616E7265746E49;
    case 0xD:
      v9 = 0x74736F6E67616944;
      v17 = 0xEB00000000736369;
      goto LABEL_69;
    case 0xE:
      v8 = "_ServiceTypeShortCapitalized";
      v9 = 0xD00000000000001BLL;
      goto LABEL_68;
    case 0xF:
      v14 = "VideoDoorbell_CategoryCapitalized";
      goto LABEL_65;
    case 0x10:
      v8 = "Faucet_ServiceTypeCapitalized";
      v9 = 0xD00000000000001ALL;
      goto LABEL_68;
    case 0x11:
      v13 = "Faucet_ServiceTypeCapitalized";
      goto LABEL_67;
    case 0x12:
      v21 = "FilterMaintenance_ServiceTypeCapitalized";
      goto LABEL_49;
    case 0x13:
      v16 = "GarageDoorOpener_ServiceTypeCapitalized";
      goto LABEL_53;
    case 0x14:
      v19 = "HeaterCooler_ServiceTypeCapitalized";
      goto LABEL_47;
    case 0x15:
      v8 = "erviceTypeCapitalized";
      v9 = 0xD00000000000002DLL;
      goto LABEL_68;
    case 0x16:
      v12 = "HumiditySensor_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x17:
      v10 = "InputSource_ServiceTypeCapitalized";
      goto LABEL_56;
    case 0x18:
      v16 = "IrrigationSystem_ServiceTypeCapitalized";
LABEL_53:
      v8 = (v16 - 32);
      v9 = 0xD000000000000027;
      goto LABEL_68;
    case 0x19:
      v11 = "Label_ServiceTypeCapitalized";
      goto LABEL_26;
    case 0x1A:
      v14 = "LeakSensor_ServiceTypeCapitalized";
      goto LABEL_65;
    case 0x1B:
      v10 = "LightSensor_ServiceTypeCapitalized";
      goto LABEL_56;
    case 0x1C:
      v8 = "erviceTypeCapitalized";
      v9 = 0xD000000000000020;
      goto LABEL_68;
    case 0x1D:
      v12 = "LockManagement_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x1E:
      v15 = "LockMechanism_ServiceTypeCapitalized";
LABEL_45:
      v8 = (v15 - 32);
      v9 = 0xD000000000000024;
      goto LABEL_68;
    case 0x1F:
      v14 = "Microphone_ServiceTypeCapitalized";
      goto LABEL_65;
    case 0x20:
      v19 = "MotionSensor_ServiceTypeCapitalized";
LABEL_47:
      v8 = (v19 - 32);
      v9 = 0xD000000000000023;
      goto LABEL_68;
    case 0x21:
      v8 = "Outlet_ServiceTypeCapitalized";
      v9 = 0xD000000000000026;
      goto LABEL_68;
    case 0x22:
      v13 = "Outlet_ServiceTypeCapitalized";
      goto LABEL_67;
    case 0x23:
      v12 = "SecuritySystem_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x24:
      v11 = "Slats_ServiceTypeCapitalized";
      goto LABEL_26;
    case 0x25:
      v10 = "SmokeSensor_ServiceTypeCapitalized";
LABEL_56:
      v8 = (v10 - 32);
      v9 = 0xD000000000000022;
      goto LABEL_68;
    case 0x26:
      v20 = "Speaker_ServiceTypeCapitalized";
LABEL_60:
      v8 = (v20 - 32);
      v9 = 0xD00000000000001ELL;
      goto LABEL_68;
    case 0x27:
      v8 = "iceTypeCapitalized";
      v9 = 0xD000000000000031;
      goto LABEL_68;
    case 0x28:
      v6 = "StatelessProgrammableSwitch_ServiceTypeCapitalized";
LABEL_22:
      v8 = (v6 - 32);
      v9 = 0xD000000000000032;
      goto LABEL_68;
    case 0x29:
      v13 = "Switch_ServiceTypeCapitalized";
      goto LABEL_67;
    case 0x2A:
      v9 = 0x4320746567726154;
      v17 = 0xEE006C6F72746E6FLL;
      goto LABEL_69;
    case 0x2B:
      v8 = "ceTypeCapitalized";
      v9 = 0xD000000000000019;
      goto LABEL_68;
    case 0x2C:
      v14 = "Television_ServiceTypeCapitalized";
      goto LABEL_65;
    case 0x2D:
      v21 = "TemperatureSensor_ServiceTypeCapitalized";
LABEL_49:
      v8 = (v21 - 32);
      v9 = 0xD000000000000028;
      goto LABEL_68;
    case 0x2E:
      v14 = "Thermostat_ServiceTypeCapitalized";
LABEL_65:
      v17 = (v14 - 32) | 0x8000000000000000;
      v9 = 0xD000000000000021;
      goto LABEL_69;
    case 0x2F:
      v11 = "Valve_ServiceTypeCapitalized";
LABEL_26:
      v8 = (v11 - 32);
      v9 = 0xD00000000000001CLL;
      goto LABEL_68;
    case 0x30:
      v12 = "VentilationFan_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x31:
      result = MobileGestalt_get_current_device();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_72;
    case 0x32:
      result = MobileGestalt_get_current_device();
      if (result)
      {
LABEL_4:
        v7 = result;
        MobileGestalt_get_wapiCapability();

        sub_1D1E6776C();
        sub_1D1E66ACC();
        return sub_1D1E6787C();
      }

      else
      {
        __break(1u);
LABEL_72:
        __break(1u);
      }

      return result;
    case 0x33:
      v13 = "Window_ServiceTypeCapitalized";
LABEL_67:
      v8 = (v13 - 32);
      v9 = 0xD00000000000001DLL;
      goto LABEL_68;
    case 0x34:
      v12 = "WindowCovering_ServiceTypeCapitalized";
LABEL_63:
      v8 = (v12 - 32);
      v9 = 0xD000000000000025;
LABEL_68:
      v17 = v8 | 0x8000000000000000;
LABEL_69:
      result = static String.hfLocalized(_:)(v9, v17);
      break;
    default:
      return result;
  }

  return result;
}

HomeDataModel::ServiceKind_optional String.serviceKind.getter@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  result.value = ServiceKind.init(rawValue:)(v6).value;
  v8 = v9;
  if (v9 == 53)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

HomeDataModel::ServiceSubKind_optional String.serviceSubKind.getter@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  result.value = ServiceSubKind.init(rawValue:)(v6).value;
  v8 = v9;
  if (v9 == 5)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t ServiceKind.requiredCharacteristicKinds.getter()
{
  v1 = *v0 - 1;
  if (v1 <= 0x33 && ((0xCFFBFFEFFE7DFuLL >> v1) & 1) != 0)
  {
    return sub_1D179B3D4(*(&off_1E83EF3D8 + (*v0 - 1)));
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t ServiceKind.optionalCharacteristicKinds.getter()
{
  v1 = *v0 - 1;
  if (v1 <= 0x33 && ((0xCF3BFFEFFE71DuLL >> v1) & 1) != 0)
  {
    return sub_1D179B3D4(*(&off_1E83EF578 + (*v0 - 1)));
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

HomeDataModel::ServiceKind_optional __swiftcall ServiceKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E6908C();

  v5 = 0;
  v6 = 35;
  switch(v3)
  {
    case 0:
      goto LABEL_50;
    case 1:
      v5 = 1;
      goto LABEL_50;
    case 2:
      v5 = 2;
      goto LABEL_50;
    case 3:
      v5 = 3;
      goto LABEL_50;
    case 4:
      v5 = 4;
      goto LABEL_50;
    case 5:
      v5 = 5;
      goto LABEL_50;
    case 6:
      v5 = 6;
      goto LABEL_50;
    case 7:
      v5 = 7;
      goto LABEL_50;
    case 8:
      v5 = 8;
      goto LABEL_50;
    case 9:
      v5 = 9;
      goto LABEL_50;
    case 10:
      v5 = 10;
      goto LABEL_50;
    case 11:
      v5 = 11;
      goto LABEL_50;
    case 12:
      v5 = 12;
      goto LABEL_50;
    case 13:
      v5 = 13;
      goto LABEL_50;
    case 14:
      v5 = 14;
      goto LABEL_50;
    case 15:
      v5 = 15;
      goto LABEL_50;
    case 16:
      v5 = 16;
      goto LABEL_50;
    case 17:
      v5 = 17;
      goto LABEL_50;
    case 18:
      v5 = 18;
      goto LABEL_50;
    case 19:
      v5 = 19;
      goto LABEL_50;
    case 20:
      v5 = 20;
      goto LABEL_50;
    case 21:
      v5 = 21;
      goto LABEL_50;
    case 22:
      v5 = 22;
      goto LABEL_50;
    case 23:
      v5 = 23;
      goto LABEL_50;
    case 24:
      v5 = 24;
      goto LABEL_50;
    case 25:
      v5 = 25;
      goto LABEL_50;
    case 26:
      v5 = 26;
      goto LABEL_50;
    case 27:
      v5 = 27;
      goto LABEL_50;
    case 28:
      v5 = 28;
      goto LABEL_50;
    case 29:
      v5 = 29;
      goto LABEL_50;
    case 30:
      v5 = 30;
      goto LABEL_50;
    case 31:
      v5 = 31;
      goto LABEL_50;
    case 32:
      v5 = 32;
      goto LABEL_50;
    case 33:
      v5 = 33;
      goto LABEL_50;
    case 34:
      v5 = 34;
LABEL_50:
      v6 = v5;
      break;
    case 35:
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    default:
      v6 = 53;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D18DD7B0(char *a1, char *a2)
{
  v8 = *a1;
  v7 = *a2;
  ServiceKind.rawValue.getter();
  v3 = v2;
  ServiceKind.rawValue.getter();
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D1E6904C();
  }

  return v5 & 1;
}

unint64_t sub_1D18DD858@<X0>(void *a1@<X8>)
{
  result = ServiceKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D18DD948()
{
  v1 = *v0;
  sub_1D1E6920C();
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18DD9B0()
{
  v2 = *v0;
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D18DDA14()
{
  v1 = *v0;
  sub_1D1E6920C();
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

unint64_t ServiceKind.id.getter()
{
  v2 = *v0;
  ServiceKind.rawValue.getter();
  return 0xD000000000000024;
}

unint64_t sub_1D18DDAB4@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  result = ServiceKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v4;
  return result;
}

uint64_t ServiceKind.supportedCharacteristicKinds.getter()
{
  v1 = *v0;
  v2 = ServiceKind.requiredCharacteristicKinds.getter();
  v3 = ServiceKind.optionalCharacteristicKinds.getter();

  return sub_1D18C0104(v3, v2);
}

HomeDataModel::ServiceSubKind_optional __swiftcall ServiceSubKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ServiceSubKind.rawValue.getter()
{
  *v0;
  *v0;
  *v0;
  return 0xD000000000000024;
}

uint64_t sub_1D18DDCCC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18DDD80()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D18DDE20()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D18DDEDC(void *a1@<X8>)
{
  v2 = *v1;
  v3 = "dentifierValveSideJets";
  v4 = "F6-8E38-5291C7FB7545";
  v5 = "AC-A277-EA6D097A190C";
  if (v2 != 3)
  {
    v5 = "4C-B87C-C35305FA9FFC";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = "47-BAC7-A7CF9EBD35EA";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  *a1 = 0xD000000000000024;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t ServiceKind.pluralLocalizedDescription.getter()
{
  v1 = sub_1D1E66ADC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D1E677DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  result = *v0;
  switch(*v0)
  {
    case 1:
      v6 = "AccessoryInformationService_ServiceTypeCapitalizedPlural";
      goto LABEL_22;
    case 2:
      v9 = 0x7363697274654DLL;
      v17 = 0xE700000000000000;
      goto LABEL_69;
    case 3:
      v10 = "AirPurifier_ServiceTypeCapitalizedPlural";
      goto LABEL_56;
    case 4:
      v16 = "AirQualitySensor_ServiceTypeCapitalizedPlural";
      goto LABEL_53;
    case 5:
      v20 = "Battery_ServiceTypeCapitalizedPlural";
      goto LABEL_60;
    case 6:
      v15 = "CameraControl_ServiceTypeCapitalizedPlural";
      goto LABEL_45;
    case 7:
      v18 = "CameraRTPStreamManagement_ServiceTypeCapitalizedPlural";
      goto LABEL_43;
    case 8:
      v18 = "CameraRecordingManagement_ServiceTypeCapitalizedPlural";
LABEL_43:
      v8 = (v18 - 32);
      v9 = 0xD000000000000036;
      goto LABEL_68;
    case 9:
      v8 = "CapitalizedPlural";
      v9 = 0xD000000000000030;
      goto LABEL_68;
    case 0xA:
      v8 = "rviceTypeCapitalizedPlural";
      v9 = 0xD000000000000031;
      goto LABEL_68;
    case 0xB:
      v15 = "ContactSensor_ServiceTypeCapitalizedPlural";
      goto LABEL_45;
    case 0xC:
      v9 = 0x6C616E7265746E49;
      v17 = 0xE800000000000000;
      goto LABEL_69;
    case 0xD:
      v9 = 0x74736F6E67616944;
      v17 = 0xEB00000000736369;
      goto LABEL_69;
    case 0xE:
      v8 = "tCapitalizedPlural";
      v9 = 0xD000000000000021;
      goto LABEL_68;
    case 0xF:
      v14 = "VideoDoorbell_CategoryCapitalizedPlural";
      goto LABEL_65;
    case 0x10:
      v8 = "peCapitalizedPlural";
      v9 = 0xD000000000000020;
      goto LABEL_68;
    case 0x11:
      v13 = "Faucet_ServiceTypeCapitalizedPlural";
      goto LABEL_67;
    case 0x12:
      v21 = "FilterMaintenance_ServiceTypeCapitalizedPlural";
      goto LABEL_49;
    case 0x13:
      v16 = "GarageDoorOpener_ServiceTypeCapitalizedPlural";
      goto LABEL_53;
    case 0x14:
      v19 = "HeaterCooler_ServiceTypeCapitalizedPlural";
      goto LABEL_47;
    case 0x15:
      v8 = "erviceTypeCapitalizedPlural";
      v9 = 0xD000000000000033;
      goto LABEL_68;
    case 0x16:
      v12 = "HumiditySensor_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x17:
      v10 = "InputSource_ServiceTypeCapitalizedPlural";
      goto LABEL_56;
    case 0x18:
      v16 = "IrrigationSystem_ServiceTypeCapitalizedPlural";
LABEL_53:
      v8 = (v16 - 32);
      v9 = 0xD00000000000002DLL;
      goto LABEL_68;
    case 0x19:
      v11 = "Label_ServiceTypeCapitalizedPlural";
      goto LABEL_26;
    case 0x1A:
      v14 = "LeakSensor_ServiceTypeCapitalizedPlural";
      goto LABEL_65;
    case 0x1B:
      v10 = "LightSensor_ServiceTypeCapitalizedPlural";
      goto LABEL_56;
    case 0x1C:
      v8 = "erviceTypeCapitalizedPlural";
      v9 = 0xD000000000000026;
      goto LABEL_68;
    case 0x1D:
      v12 = "LockManagement_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x1E:
      v15 = "LockMechanism_ServiceTypeCapitalizedPlural";
LABEL_45:
      v8 = (v15 - 32);
      v9 = 0xD00000000000002ALL;
      goto LABEL_68;
    case 0x1F:
      v14 = "Microphone_ServiceTypeCapitalizedPlural";
      goto LABEL_65;
    case 0x20:
      v19 = "MotionSensor_ServiceTypeCapitalizedPlural";
LABEL_47:
      v8 = (v19 - 32);
      v9 = 0xD000000000000029;
      goto LABEL_68;
    case 0x21:
      v8 = "peCapitalizedPlural";
      v9 = 0xD00000000000002CLL;
      goto LABEL_68;
    case 0x22:
      v13 = "Outlet_ServiceTypeCapitalizedPlural";
      goto LABEL_67;
    case 0x23:
      v12 = "SecuritySystem_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x24:
      v11 = "Slats_ServiceTypeCapitalizedPlural";
      goto LABEL_26;
    case 0x25:
      v10 = "SmokeSensor_ServiceTypeCapitalizedPlural";
LABEL_56:
      v8 = (v10 - 32);
      v9 = 0xD000000000000028;
      goto LABEL_68;
    case 0x26:
      v20 = "Speaker_ServiceTypeCapitalizedPlural";
LABEL_60:
      v8 = (v20 - 32);
      v9 = 0xD000000000000024;
      goto LABEL_68;
    case 0x27:
      v8 = "iceTypeCapitalizedPlural";
      v9 = 0xD000000000000037;
      goto LABEL_68;
    case 0x28:
      v6 = "StatelessProgrammableSwitch_ServiceTypeCapitalizedPlural";
LABEL_22:
      v8 = (v6 - 32);
      v9 = 0xD000000000000038;
      goto LABEL_68;
    case 0x29:
      v13 = "Switch_ServiceTypeCapitalizedPlural";
      goto LABEL_67;
    case 0x2A:
      v9 = 0x4320746567726154;
      v17 = 0xEF736C6F72746E6FLL;
      goto LABEL_69;
    case 0x2B:
      v8 = "ceTypeCapitalized";
      v9 = 0xD000000000000019;
      goto LABEL_68;
    case 0x2C:
      v14 = "Television_ServiceTypeCapitalizedPlural";
      goto LABEL_65;
    case 0x2D:
      v21 = "TemperatureSensor_ServiceTypeCapitalizedPlural";
LABEL_49:
      v8 = (v21 - 32);
      v9 = 0xD00000000000002ELL;
      goto LABEL_68;
    case 0x2E:
      v14 = "Thermostat_ServiceTypeCapitalizedPlural";
LABEL_65:
      v17 = (v14 - 32) | 0x8000000000000000;
      v9 = 0xD000000000000027;
      goto LABEL_69;
    case 0x2F:
      v11 = "Valve_ServiceTypeCapitalizedPlural";
LABEL_26:
      v8 = (v11 - 32);
      v9 = 0xD000000000000022;
      goto LABEL_68;
    case 0x30:
      v12 = "VentilationFan_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x31:
      result = MobileGestalt_get_current_device();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_71;
    case 0x32:
      result = MobileGestalt_get_current_device();
      if (result)
      {
LABEL_4:
        v7 = result;
        MobileGestalt_get_wapiCapability();

        sub_1D1E6776C();
        sub_1D1E66ACC();
        return sub_1D1E6787C();
      }

      else
      {
        __break(1u);
LABEL_71:
        __break(1u);
      }

      return result;
    case 0x33:
      v13 = "Window_ServiceTypeCapitalizedPlural";
LABEL_67:
      v8 = (v13 - 32);
      v9 = 0xD000000000000023;
      goto LABEL_68;
    case 0x34:
      v12 = "WindowCovering_ServiceTypeCapitalizedPlural";
LABEL_63:
      v8 = (v12 - 32);
      v9 = 0xD00000000000002BLL;
LABEL_68:
      v17 = v8 | 0x8000000000000000;
LABEL_69:
      result = static String.hfLocalized(_:)(v9, v17);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Collection<>.humanReadableServiceKinds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D18CE91C(sub_1D18DE6D8, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
  v8 = sub_1D1E6770C();

  return v8;
}

uint64_t sub_1D18DE6D8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = ServiceKind.localizedDescription.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D18DE74C(uint64_t (*a1)(_BYTE *))
{
  v6 = *v1;
  v3 = static IconSymbol.defaultSymbol(serviceKind:)(&v6, &v5);
  return a1(v3);
}

unint64_t ServiceKind.iconSymbolDeactivatedSlashedVersion.getter()
{
  v2 = *v0;
  static IconSymbol.defaultSymbol(serviceKind:)(&v2, &v3);
  if (v3 == 31)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0;
  }
}

_BYTE *ServiceKind.iconSymbolDeactivatedRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v6 = *v1;
  result = static IconSymbol.defaultSymbol(serviceKind:)(&v6, &v7);
  if (v7 - 41 < 7 || v7 == 27)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

_BYTE *ServiceKind.iconSymbolActivatedRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v9 = *v1;
  result = static IconSymbol.defaultSymbol(serviceKind:)(&v9, &v10);
  v4 = v10 - 26;
  v5 = v4 > 0x2D;
  v6 = (1 << v4) & 0x200000000181;
  if (v5 || v6 == 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1D18DE8E8(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  v8 = 47;
  v7 = v3;
  v4 = static IconSymbol.defaultSymbol(for:subKind:)(&v8, &v7, &v6);
  return a1(v4);
}

void *sub_1D18DE93C()
{
  result = sub_1D179ACDC(&unk_1F4D62290);
  off_1EC646318 = result;
  return result;
}

uint64_t static ServiceKind.serviceKindsThatRequireSpecialToggleHandling.getter()
{
  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ServiceKind.serviceKindsThatRequireSpecialToggleHandling.setter(void *a1)
{
  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EC646318 = a1;
}

uint64_t (*static ServiceKind.serviceKindsThatRequireSpecialToggleHandling.modify())()
{
  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void ServiceKind.togglingCharacteristicKind.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (*v1 > 0x1Eu)
  {
    if (v2 <= 0x30)
    {
      if (((1 << v2) & 0x1940000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v2 == 38)
      {
        goto LABEL_16;
      }

      if (v2 == 41)
      {
        goto LABEL_18;
      }
    }

    if (v2 != 31)
    {
      if (v2 == 34)
      {
        goto LABEL_18;
      }

LABEL_13:
      *a1 = -82;
      return;
    }

LABEL_16:
    *a1 = 84;
    return;
  }

  if (*v1 <= 0x13u)
  {
    if (v2 != 3)
    {
      if (v2 != 16)
      {
        if (v2 != 17)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_15:
    *a1 = 3;
    return;
  }

  if ((v2 - 20) < 2)
  {
    goto LABEL_15;
  }

  if (v2 != 28)
  {
    goto LABEL_13;
  }

LABEL_18:
  *a1 = 105;
}

uint64_t ServiceKind.canBeToggled.getter()
{
  v1 = *v0;
  if (v1 - 3) < 0x2E && ((0x32C892066001uLL >> (v1 - 3)))
  {
    v2 = 1;
  }

  else
  {
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_1EC646318;

    v2 = sub_1D171951C(v1, v3);
  }

  return v2 & 1;
}

uint64_t ServiceKind.stateStatusDependentCharaceristicKinds.getter()
{
  v1 = &unk_1F4D5EEA0;
  switch(*v0)
  {
    case 3:
      goto LABEL_4;
    case 4:
      result = sub_1D179B3D4(&unk_1F4D5EEC8);
      break;
    case 9:
      result = sub_1D179B3D4(&unk_1F4D5EEF0);
      break;
    case 0xA:
      result = sub_1D179B3D4(&unk_1F4D5EF18);
      break;
    case 0xB:
      result = sub_1D179B3D4(&unk_1F4D5EF40);
      break;
    case 0xE:
      result = sub_1D179B3D4(&unk_1F4D5EF68);
      break;
    case 0x10:
      result = sub_1D179B3D4(&unk_1F4D5EF90);
      break;
    case 0x11:
      result = sub_1D179B3D4(&unk_1F4D5EFB8);
      break;
    case 0x13:
      result = sub_1D179B3D4(&unk_1F4D5EFE0);
      break;
    case 0x14:
      result = sub_1D179B3D4(&unk_1F4D5F008);
      break;
    case 0x15:
      result = sub_1D179B3D4(&unk_1F4D5F030);
      break;
    case 0x16:
      result = sub_1D179B3D4(&unk_1F4D5F058);
      break;
    case 0x17:
      result = sub_1D179B3D4(&unk_1F4D5F080);
      break;
    case 0x18:
      result = sub_1D179B3D4(&unk_1F4D5F0A8);
      break;
    case 0x1A:
      result = sub_1D179B3D4(&unk_1F4D5F0D0);
      break;
    case 0x1B:
      result = sub_1D179B3D4(&unk_1F4D5F0F8);
      break;
    case 0x1C:
      result = sub_1D179B3D4(&unk_1F4D5F120);
      break;
    case 0x1E:
      result = sub_1D179B3D4(&unk_1F4D5F148);
      break;
    case 0x1F:
      result = sub_1D179B3D4(&unk_1F4D5F170);
      break;
    case 0x20:
      result = sub_1D179B3D4(&unk_1F4D5F198);
      break;
    case 0x21:
      result = sub_1D179B3D4(&unk_1F4D5F1C0);
      break;
    case 0x22:
      result = sub_1D179B3D4(&unk_1F4D5F1E8);
      break;
    case 0x23:
      result = sub_1D179B3D4(&unk_1F4D5F210);
      break;
    case 0x25:
      result = sub_1D179B3D4(&unk_1F4D5F238);
      break;
    case 0x26:
      v1 = &unk_1F4D5F260;
LABEL_4:
      result = sub_1D179B3D4(v1);
      break;
    case 0x29:
      result = sub_1D179B3D4(&unk_1F4D5F288);
      break;
    case 0x2C:
      result = sub_1D179B3D4(&unk_1F4D5F2B0);
      break;
    case 0x2D:
      result = sub_1D179B3D4(&unk_1F4D5F2D8);
      break;
    case 0x2E:
      result = sub_1D179B3D4(&unk_1F4D5F300);
      break;
    case 0x2F:
      result = sub_1D179B3D4(&unk_1F4D5F328);
      break;
    case 0x30:
      result = sub_1D179B3D4(&unk_1F4D5F350);
      break;
    case 0x33:
      result = sub_1D179B3D4(&unk_1F4D5F378);
      break;
    case 0x34:
      result = sub_1D179B3D4(&unk_1F4D5F3A0);
      break;
    default:
      result = MEMORY[0x1E69E7CD0];
      break;
  }

  return result;
}

unint64_t sub_1D18DEE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646358, &qword_1D1E7EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E7EBC0;
  v1 = *MEMORY[0x1E696C9C8];
  *(inited + 32) = sub_1D1E6781C();
  v2 = MEMORY[0x1E69E7CD0];
  *(inited + 40) = v3;
  *(inited + 48) = v2;
  v4 = *MEMORY[0x1E696C9E8];
  *(inited + 56) = sub_1D1E6781C();
  *(inited + 64) = v5;
  *(inited + 72) = sub_1D179ACDC(&unk_1F4D5FBF0);
  v6 = *MEMORY[0x1E696C988];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v7;
  *(inited + 96) = sub_1D179ACDC(&unk_1F4D5FC18);
  v8 = *MEMORY[0x1E696C990];
  *(inited + 104) = sub_1D1E6781C();
  *(inited + 112) = v9;
  *(inited + 120) = sub_1D179ACDC(&unk_1F4D5FC40);
  v10 = *MEMORY[0x1E696C998];
  *(inited + 128) = sub_1D1E6781C();
  *(inited + 136) = v11;
  *(inited + 144) = sub_1D179ACDC(&unk_1F4D5FC68);
  v12 = *MEMORY[0x1E696C9A8];
  *(inited + 152) = sub_1D1E6781C();
  *(inited + 160) = v13;
  *(inited + 168) = sub_1D179ACDC(&unk_1F4D5FC90);
  v14 = *MEMORY[0x1E696C9C0];
  *(inited + 176) = sub_1D1E6781C();
  *(inited + 184) = v15;
  *(inited + 192) = sub_1D179ACDC(&unk_1F4D5FCB8);
  v16 = *MEMORY[0x1E696C9D0];
  *(inited + 200) = sub_1D1E6781C();
  *(inited + 208) = v17;
  *(inited + 216) = sub_1D179ACDC(&unk_1F4D5FCE0);
  v18 = *MEMORY[0x1E696C9D8];
  *(inited + 224) = sub_1D1E6781C();
  *(inited + 232) = v19;
  *(inited + 240) = sub_1D179ACDC(&unk_1F4D5FD08);
  v20 = *MEMORY[0x1E696C9F0];
  *(inited + 248) = sub_1D1E6781C();
  *(inited + 256) = v21;
  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  *(inited + 264) = off_1EE07AB38;
  v22 = *MEMORY[0x1E696CA10];
  *(inited + 272) = sub_1D1E6781C();
  *(inited + 280) = v23;

  *(inited + 288) = sub_1D179ACDC(&unk_1F4D5FD30);
  v24 = *MEMORY[0x1E696CA38];
  *(inited + 296) = sub_1D1E6781C();
  *(inited + 304) = v25;
  *(inited + 312) = sub_1D179ACDC(&unk_1F4D5FD58);
  v26 = *MEMORY[0x1E696CA50];
  *(inited + 320) = sub_1D1E6781C();
  *(inited + 328) = v27;
  *(inited + 336) = sub_1D179ACDC(&unk_1F4D5FD80);
  v28 = *MEMORY[0x1E696CA58];
  *(inited + 344) = sub_1D1E6781C();
  *(inited + 352) = v29;
  *(inited + 360) = sub_1D179ACDC(&unk_1F4D5FDA8);
  v30 = *MEMORY[0x1E696C968];
  *(inited + 368) = sub_1D1E6781C();
  *(inited + 376) = v31;
  *(inited + 384) = sub_1D179ACDC(&unk_1F4D5FDD0);
  v32 = *MEMORY[0x1E696C950];
  *(inited + 392) = sub_1D1E6781C();
  *(inited + 400) = v33;
  *(inited + 408) = sub_1D179ACDC(&unk_1F4D5FDF8);
  v34 = *MEMORY[0x1E696C958];
  *(inited + 416) = sub_1D1E6781C();
  *(inited + 424) = v35;
  *(inited + 432) = sub_1D179ACDC(&unk_1F4D5FE20);
  v36 = *MEMORY[0x1E696C948];
  *(inited + 440) = sub_1D1E6781C();
  *(inited + 448) = v37;
  *(inited + 456) = sub_1D179ACDC(&unk_1F4D5FE48);
  v38 = *MEMORY[0x1E696CA08];
  *(inited + 464) = sub_1D1E6781C();
  *(inited + 472) = v39;
  *(inited + 480) = sub_1D179ACDC(&unk_1F4D5FE70);
  v40 = *MEMORY[0x1E696C9A0];
  *(inited + 488) = sub_1D1E6781C();
  *(inited + 496) = v41;
  *(inited + 504) = sub_1D179ACDC(&unk_1F4D5FE98);
  v42 = *MEMORY[0x1E696C9F8];
  *(inited + 512) = sub_1D1E6781C();
  *(inited + 520) = v43;
  *(inited + 528) = sub_1D179ACDC(&unk_1F4D5FEC0);
  v44 = *MEMORY[0x1E696CA20];
  *(inited + 536) = sub_1D1E6781C();
  *(inited + 544) = v45;
  *(inited + 552) = sub_1D179ACDC(&unk_1F4D5FEE8);
  v46 = sub_1D18D63E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646360, &qword_1D1E7EFA8);
  swift_arrayDestroy();
  return v46;
}

unint64_t sub_1D18DF248()
{
  result = qword_1EE07ADD8;
  if (!qword_1EE07ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07ADD8);
  }

  return result;
}

unint64_t sub_1D18DF2A0()
{
  result = qword_1EC646330;
  if (!qword_1EC646330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D18DF498()
{
  result = qword_1EC646348;
  if (!qword_1EC646348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646348);
  }

  return result;
}

unint64_t sub_1D18DF4EC()
{
  result = qword_1EC646350;
  if (!qword_1EC646350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646350);
  }

  return result;
}

uint64_t ServiceKind.serviceStatusCountString.getter()
{
  v1 = 0xD000000000000021;
  v2 = "tactSensor_Multiple";
  v3 = 0;
  switch(*v0)
  {
    case 3:
      goto LABEL_22;
    case 0xB:
      v6 = "HFStatusTitleContactSensor_Multiple";
      goto LABEL_21;
    case 0xE:
      v7 = "HFStatusTitleDoor_Multiple";
      goto LABEL_17;
    case 0x10:
    case 0x30:
      v2 = "workRouter_Multiple";
      v1 = 0xD000000000000019;
      goto LABEL_22;
    case 0x11:
      v4 = "HFStatusTitleFaucet_Multiple";
      goto LABEL_19;
    case 0x13:
      v5 = "HFStatusTitleGarageDoor_Multiple";
      goto LABEL_7;
    case 0x18:
      v2 = "HFStatusTitleLightbulb_Multiple";
      v1 = 0xD000000000000026;
      goto LABEL_22;
    case 0x1C:
      v2 = "HFStatusTitleLock_Multiple";
      v1 = 0xD00000000000001FLL;
      goto LABEL_22;
    case 0x1E:
      v7 = "HFStatusTitleLock_Multiple";
LABEL_17:
      v2 = (v7 - 32);
      v1 = 0xD00000000000001ALL;
      goto LABEL_22;
    case 0x22:
      v4 = "HFStatusTitleOutlet_Multiple";
      goto LABEL_19;
    case 0x26:
      v2 = "HFStatusTitleSwitch_Multiple";
      v1 = 0xD00000000000001DLL;
      goto LABEL_22;
    case 0x27:
    case 0x28:
      v4 = "HFStatusTitleSwitch_Multiple";
      goto LABEL_19;
    case 0x2C:
      v5 = "HFStatusTitleTelevision_Multiple";
LABEL_7:
      v2 = (v5 - 32);
      v1 = 0xD000000000000020;
      goto LABEL_22;
    case 0x2F:
      v2 = "HFStatusTitleFan_Multiple";
      v1 = 0xD00000000000001BLL;
      goto LABEL_22;
    case 0x31:
      v6 = "HFStatusTitleNetworkRouter_Multiple";
LABEL_21:
      v2 = (v6 - 32);
      v1 = 0xD000000000000023;
      goto LABEL_22;
    case 0x33:
      v4 = "HFStatusTitleWindow_Multiple";
      goto LABEL_19;
    case 0x34:
      v4 = "HFStatusTitleBlinds_Multiple";
LABEL_19:
      v2 = (v4 - 32);
      v1 = 0xD00000000000001CLL;
LABEL_22:
      v3 = static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
      break;
    default:
      return v3;
  }

  return v3;
}

unint64_t sub_1D18DF6C4(char a1)
{
  result = 0x656D6F486465656ELL;
  switch(a1)
  {
    case 2:
      return result;
    case 3:
      result = 0x694669576465656ELL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x65746E496465656ELL;
      break;
    case 6:
      result = 0x647261486465656ELL;
      break;
    case 7:
    case 16:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6F4E6F6572657473;
      break;
    case 9:
      result = 0x72456F6572657473;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x465044436465656ELL;
      break;
    case 21:
      result = 0x656E65476465656ELL;
      break;
    case 22:
      result = 0x6F72506E49786966;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D18DF9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D18E5718(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D18DF9DC(uint64_t a1)
{
  v2 = sub_1D18E1B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFA18(uint64_t a1)
{
  v2 = sub_1D18E1B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFA54(uint64_t a1)
{
  v2 = sub_1D18E1BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFA90(uint64_t a1)
{
  v2 = sub_1D18E1BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFACC(uint64_t a1)
{
  v2 = sub_1D18E1E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFB08(uint64_t a1)
{
  v2 = sub_1D18E1E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFB44(uint64_t a1)
{
  v2 = sub_1D18E1CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFB80(uint64_t a1)
{
  v2 = sub_1D18E1CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFBBC(uint64_t a1)
{
  v2 = sub_1D18E1CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFBF8(uint64_t a1)
{
  v2 = sub_1D18E1CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFC34(uint64_t a1)
{
  v2 = sub_1D18E1C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFC70(uint64_t a1)
{
  v2 = sub_1D18E1C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFCAC(uint64_t a1)
{
  v2 = sub_1D18E213C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFCE8(uint64_t a1)
{
  v2 = sub_1D18E213C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFD24(uint64_t a1)
{
  v2 = sub_1D18E228C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFD60(uint64_t a1)
{
  v2 = sub_1D18E228C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFD9C(uint64_t a1)
{
  v2 = sub_1D18E2190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFDD8(uint64_t a1)
{
  v2 = sub_1D18E2190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFE14(uint64_t a1)
{
  v2 = sub_1D18E1DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFE50(uint64_t a1)
{
  v2 = sub_1D18E1DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFE8C(uint64_t a1)
{
  v2 = sub_1D18E1DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFEC8(uint64_t a1)
{
  v2 = sub_1D18E1DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFF04(uint64_t a1)
{
  v2 = sub_1D18E2238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFF40(uint64_t a1)
{
  v2 = sub_1D18E2238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFF7C(uint64_t a1)
{
  v2 = sub_1D18E21E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFFB8(uint64_t a1)
{
  v2 = sub_1D18E21E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFFF4(uint64_t a1)
{
  v2 = sub_1D18E1E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0030(uint64_t a1)
{
  v2 = sub_1D18E1E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E006C(uint64_t a1)
{
  v2 = sub_1D18E2334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E00A8(uint64_t a1)
{
  v2 = sub_1D18E2334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E00E4(uint64_t a1)
{
  v2 = sub_1D18E22E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0120(uint64_t a1)
{
  v2 = sub_1D18E22E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E015C(uint64_t a1)
{
  v2 = sub_1D18E1F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0198(uint64_t a1)
{
  v2 = sub_1D18E1F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E01D4(uint64_t a1)
{
  v2 = sub_1D18E1D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0210(uint64_t a1)
{
  v2 = sub_1D18E1D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E024C(uint64_t a1)
{
  v2 = sub_1D18E1F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0288(uint64_t a1)
{
  v2 = sub_1D18E1F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E02C4(uint64_t a1)
{
  v2 = sub_1D18E1BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0300(uint64_t a1)
{
  v2 = sub_1D18E1BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E033C(uint64_t a1)
{
  v2 = sub_1D18E2040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0378(uint64_t a1)
{
  v2 = sub_1D18E2040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E03B4(uint64_t a1)
{
  v2 = sub_1D18E2094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E03F0(uint64_t a1)
{
  v2 = sub_1D18E2094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E042C(uint64_t a1)
{
  v2 = sub_1D18E20E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0468(uint64_t a1)
{
  v2 = sub_1D18E20E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E04A4(uint64_t a1)
{
  v2 = sub_1D18E1EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E04E0(uint64_t a1)
{
  v2 = sub_1D18E1EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E051C(uint64_t a1)
{
  v2 = sub_1D18E1FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0558(uint64_t a1)
{
  v2 = sub_1D18E1FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SymptomError.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646368, &qword_1D1E7EFF0);
  v160 = *(v4 - 8);
  v161 = v4;
  v5 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v159 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646370, &qword_1D1E7EFF8);
  v157 = *(v7 - 8);
  v158 = v7;
  v8 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v156 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646378, &qword_1D1E7F000);
  v154 = *(v10 - 8);
  v155 = v10;
  v11 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646380, &qword_1D1E7F008);
  v151 = *(v13 - 8);
  v152 = v13;
  v14 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646388, &qword_1D1E7F010);
  v148 = *(v16 - 8);
  v149 = v16;
  v17 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v147 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646390, &qword_1D1E7F018);
  v145 = *(v19 - 8);
  v146 = v19;
  v20 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v144 = &v92 - v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646398, &qword_1D1E7F020);
  v142 = *(v143 - 8);
  v22 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v92 - v23;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463A0, &qword_1D1E7F028);
  v139 = *(v140 - 8);
  v24 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v92 - v25;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463A8, &qword_1D1E7F030);
  v136 = *(v137 - 8);
  v26 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v92 - v27;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463B0, &qword_1D1E7F038);
  v133 = *(v134 - 8);
  v28 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v92 - v29;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463B8, &qword_1D1E7F040);
  v130 = *(v131 - 8);
  v30 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v92 - v31;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463C0, &qword_1D1E7F048);
  v127 = *(v128 - 8);
  v32 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v92 - v33;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463C8, &qword_1D1E7F050);
  v124 = *(v125 - 8);
  v34 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v92 - v35;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463D0, &qword_1D1E7F058);
  v121 = *(v122 - 8);
  v36 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v92 - v37;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463D8, &qword_1D1E7F060);
  v118 = *(v119 - 8);
  v38 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v92 - v39;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463E0, &qword_1D1E7F068);
  v115 = *(v116 - 8);
  v40 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v92 - v41;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463E8, &qword_1D1E7F070);
  v112 = *(v113 - 8);
  v42 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v92 - v43;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463F0, &qword_1D1E7F078);
  v109 = *(v110 - 8);
  v44 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v92 - v45;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463F8, &qword_1D1E7F080);
  v106 = *(v107 - 8);
  v46 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v92 - v47;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646400, &qword_1D1E7F088);
  v103 = *(v104 - 8);
  v48 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v92 - v49;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646408, &qword_1D1E7F090);
  v100 = *(v101 - 8);
  v50 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v92 - v51;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646410, &qword_1D1E7F098);
  v97 = *(v98 - 8);
  v52 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v92 - v53;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646418, &qword_1D1E7F0A0);
  v94 = *(v95 - 8);
  v54 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v56 = &v92 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646420, &qword_1D1E7F0A8);
  v93 = *(v57 - 8);
  v58 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v92 - v59;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646428, &qword_1D1E7F0B0);
  v61 = *(v163 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v64 = &v92 - v63;
  v65 = *v2;
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18E1B54();
  v162 = v64;
  sub_1D1E6930C();
  v67 = (v61 + 8);
  switch(v65)
  {
    case 1:
      v164 = 1;
      sub_1D18E22E0();
      v80 = v162;
      v81 = v163;
      sub_1D1E68DFC();
      (*(v94 + 8))(v56, v95);
      return (*v67)(v80, v81);
    case 2:
      v164 = 2;
      sub_1D18E228C();
      v76 = v96;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v97 + 8))(v76, v98);
      return (*v67)(v69, v68);
    case 3:
      v164 = 3;
      sub_1D18E2238();
      v78 = v99;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v100 + 8))(v78, v101);
      return (*v67)(v69, v68);
    case 4:
      v164 = 4;
      sub_1D18E21E4();
      v73 = v102;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v103 + 8))(v73, v104);
      return (*v67)(v69, v68);
    case 5:
      v164 = 5;
      sub_1D18E2190();
      v87 = v105;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v106 + 8))(v87, v107);
      return (*v67)(v69, v68);
    case 6:
      v164 = 6;
      sub_1D18E213C();
      v89 = v108;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v109 + 8))(v89, v110);
      return (*v67)(v69, v68);
    case 7:
      v164 = 7;
      sub_1D18E20E8();
      v79 = v111;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v112 + 8))(v79, v113);
      return (*v67)(v69, v68);
    case 8:
      v164 = 8;
      sub_1D18E2094();
      v91 = v114;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v115 + 8))(v91, v116);
      return (*v67)(v69, v68);
    case 9:
      v164 = 9;
      sub_1D18E2040();
      v75 = v117;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v118 + 8))(v75, v119);
      return (*v67)(v69, v68);
    case 10:
      v164 = 10;
      sub_1D18E1FEC();
      v90 = v120;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v121 + 8))(v90, v122);
      return (*v67)(v69, v68);
    case 11:
      v164 = 11;
      sub_1D18E1F98();
      v72 = v123;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v124 + 8))(v72, v125);
      return (*v67)(v69, v68);
    case 12:
      v164 = 12;
      sub_1D18E1F44();
      v74 = v126;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v127 + 8))(v74, v128);
      return (*v67)(v69, v68);
    case 13:
      v164 = 13;
      sub_1D18E1EF0();
      v88 = v129;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v130 + 8))(v88, v131);
      return (*v67)(v69, v68);
    case 14:
      v164 = 14;
      sub_1D18E1E9C();
      v71 = v132;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v133 + 8))(v71, v134);
      return (*v67)(v69, v68);
    case 15:
      v164 = 15;
      sub_1D18E1E48();
      v77 = v135;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v136 + 8))(v77, v137);
      return (*v67)(v69, v68);
    case 16:
      v164 = 16;
      sub_1D18E1DF4();
      v70 = v138;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v139 + 8))(v70, v140);
      return (*v67)(v69, v68);
    case 17:
      v164 = 17;
      sub_1D18E1DA0();
      v83 = v141;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v142 + 8))(v83, v143);
      return (*v67)(v69, v68);
    case 18:
      v164 = 18;
      sub_1D18E1D4C();
      v84 = v144;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      v86 = v145;
      v85 = v146;
      goto LABEL_26;
    case 19:
      v164 = 19;
      sub_1D18E1CF8();
      v84 = v147;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      v86 = v148;
      v85 = v149;
      goto LABEL_26;
    case 20:
      v164 = 20;
      sub_1D18E1CA4();
      v84 = v150;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      v86 = v151;
      v85 = v152;
      goto LABEL_26;
    case 21:
      v164 = 21;
      sub_1D18E1C50();
      v84 = v153;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      v86 = v154;
      v85 = v155;
      goto LABEL_26;
    case 22:
      v164 = 22;
      sub_1D18E1BFC();
      v84 = v156;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      v86 = v157;
      v85 = v158;
      goto LABEL_26;
    case 23:
      v164 = 23;
      sub_1D18E1BA8();
      v84 = v159;
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      v86 = v160;
      v85 = v161;
LABEL_26:
      (*(v86 + 8))(v84, v85);
      break;
    default:
      v164 = 0;
      sub_1D18E2334();
      v69 = v162;
      v68 = v163;
      sub_1D1E68DFC();
      (*(v93 + 8))(v60, v57);
      break;
  }

  return (*v67)(v69, v68);
}

unint64_t sub_1D18E1B54()
{
  result = qword_1EC646430;
  if (!qword_1EC646430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646430);
  }

  return result;
}

unint64_t sub_1D18E1BA8()
{
  result = qword_1EC646438;
  if (!qword_1EC646438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646438);
  }

  return result;
}

unint64_t sub_1D18E1BFC()
{
  result = qword_1EC646440;
  if (!qword_1EC646440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646440);
  }

  return result;
}

unint64_t sub_1D18E1C50()
{
  result = qword_1EC646448;
  if (!qword_1EC646448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646448);
  }

  return result;
}

unint64_t sub_1D18E1CA4()
{
  result = qword_1EC646450;
  if (!qword_1EC646450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646450);
  }

  return result;
}

unint64_t sub_1D18E1CF8()
{
  result = qword_1EC646458;
  if (!qword_1EC646458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646458);
  }

  return result;
}

unint64_t sub_1D18E1D4C()
{
  result = qword_1EC646460;
  if (!qword_1EC646460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646460);
  }

  return result;
}

unint64_t sub_1D18E1DA0()
{
  result = qword_1EC646468;
  if (!qword_1EC646468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646468);
  }

  return result;
}

unint64_t sub_1D18E1DF4()
{
  result = qword_1EC646470;
  if (!qword_1EC646470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646470);
  }

  return result;
}

unint64_t sub_1D18E1E48()
{
  result = qword_1EC646478;
  if (!qword_1EC646478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646478);
  }

  return result;
}

unint64_t sub_1D18E1E9C()
{
  result = qword_1EC646480;
  if (!qword_1EC646480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646480);
  }

  return result;
}

unint64_t sub_1D18E1EF0()
{
  result = qword_1EC646488;
  if (!qword_1EC646488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646488);
  }

  return result;
}

unint64_t sub_1D18E1F44()
{
  result = qword_1EC646490;
  if (!qword_1EC646490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646490);
  }

  return result;
}

unint64_t sub_1D18E1F98()
{
  result = qword_1EC646498;
  if (!qword_1EC646498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646498);
  }

  return result;
}

unint64_t sub_1D18E1FEC()
{
  result = qword_1EC6464A0;
  if (!qword_1EC6464A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464A0);
  }

  return result;
}

unint64_t sub_1D18E2040()
{
  result = qword_1EC6464A8;
  if (!qword_1EC6464A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464A8);
  }

  return result;
}

unint64_t sub_1D18E2094()
{
  result = qword_1EC6464B0;
  if (!qword_1EC6464B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464B0);
  }

  return result;
}

unint64_t sub_1D18E20E8()
{
  result = qword_1EC6464B8;
  if (!qword_1EC6464B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464B8);
  }

  return result;
}

unint64_t sub_1D18E213C()
{
  result = qword_1EC6464C0;
  if (!qword_1EC6464C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464C0);
  }

  return result;
}

unint64_t sub_1D18E2190()
{
  result = qword_1EC6464C8;
  if (!qword_1EC6464C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464C8);
  }

  return result;
}

unint64_t sub_1D18E21E4()
{
  result = qword_1EC6464D0;
  if (!qword_1EC6464D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464D0);
  }

  return result;
}

unint64_t sub_1D18E2238()
{
  result = qword_1EC6464D8;
  if (!qword_1EC6464D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464D8);
  }

  return result;
}

unint64_t sub_1D18E228C()
{
  result = qword_1EC6464E0;
  if (!qword_1EC6464E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6464E0);
  }

  return result;
}