uint64_t sub_1B0B0A9B8(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  for (i = 0; v6; v9 = result ^ v20)
  {
    v20 = v9;
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(*(a2 + 48) + 4 * v13);
    v15 = (*(a2 + 56) + 24 * v13);
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 2);
    sub_1B03B2000(v17, v18);
    v23 = a1[2];
    v24 = a1[3];
    v25 = *(a1 + 8);
    v21 = *a1;
    v22 = a1[1];
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v16);
    sub_1B03B2000(v17, v18);
    sub_1B0E42F48();
    sub_1B0391D50(v17, v18);
    sub_1B0391D50(v17, v18);
    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1B2728D70](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      v20 = v9;
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B0AB48(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8)) | (v4 << 6);
    v12 = *(*(a2 + 48) + 4 * v11);
    v13 = *(a2 + 56) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 9);
    v20 = *(v2 + 32);
    v21 = *(v2 + 48);
    v22 = *(v2 + 64);
    v18 = *v2;
    v19 = *(v2 + 16);
    sub_1B0E46C88();
    sub_1B0E46C68();
    if ((v15 & 1) == 0)
    {
      MEMORY[0x1B2728D70](v14);
    }

    v8 &= v8 - 1;
    MEMORY[0x1B2728D70](v16);
    result = sub_1B0E46CB8();
    v3 ^= result;
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return MEMORY[0x1B2728D70](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B0AC94(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v28 = a1[2];
  v29 = v4;
  v30 = *(a1 + 8);
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  sub_1B0E46CB8();
  v23 = a2;
  result = 0;
  v7 = 0;
  v10 = *(a2 + 56);
  v9 = a2 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) != 0)
  {
    do
    {
      v24 = result;
      v15 = v7;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(v23 + 48) + 24 * (v16 | (v15 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 20);
      v22 = *(v17 + 22);
      sub_1B0E46C28();
      v2 = v2 & 0xFF00000000000000 | v20 | (v21 << 32) | (v22 << 48);
      GmailLabel.hash(into:)(v25, v18, v19, v2);
      result = sub_1B0E46CB8() ^ v24;
    }

    while (v13);
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      return MEMORY[0x1B2728D70](result);
    }

    v13 = *(v9 + 8 * v15);
    ++v7;
    if (v13)
    {
      v24 = result;
      v7 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B0ADF0(__int128 *a1, uint64_t a2)
{
  v17 = a1[2];
  v18 = a1[3];
  v19 = *(a1 + 8);
  v15 = *a1;
  v16 = a1[1];
  sub_1B0E46CB8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1B0E46C28();
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B2728D70](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B0AF54(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0B0AFC4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_1B03B2000(v4, *v2);
      sub_1B0B01F68(v5, v4, v3);
      result = sub_1B0391D50(v5[0], v5[1]);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0B0B038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
LABEL_6:
    v6 = (v28 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v3 + 40);
    sub_1B0E46C28();
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    result = sub_1B0E46CB8();
    v11 = ~(-1 << *(v3 + 32));
    for (i = result & v11; ; i = (i + 1) & v11)
    {
      v13 = *(v5 + 8 * (i >> 6));
      if (((1 << i) & v13) == 0)
      {
        break;
      }

      v14 = (*(v3 + 48) + 16 * i);
      v15 = *v14;
      v16 = v14[1];
      v17 = sub_1B0E44BB8();
      v19 = v18;
      if (v17 == sub_1B0E44BB8() && v19 == v20)
      {

LABEL_4:

LABEL_5:
        if (++v4 == v27)
        {
          return v3;
        }

        goto LABEL_6;
      }

      v22 = sub_1B0E46A78();

      if (v22)
      {
        goto LABEL_4;
      }
    }

    *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
    v23 = (*(v3 + 48) + 16 * i);
    *v23 = v8;
    v23[1] = v7;
    v24 = *(v3 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v3 + 16) = v26;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

__n128 sub_1B0B0B26C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v3 = *(a1 + 40), sub_1B0E46C28(), MEMORY[0x1B2728D70](1), v4 = sub_1B0E46CB8(), v5 = -1 << *(a1 + 32), v6 = v4 & ~v5, ((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(a1 + 48) + 16 * v6 + 8);
      v9 = v8 == 0;
      if (!v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  v10 = Flag.draft.unsafeMutableAddressor();
  v11 = v10;
  v350 = v9;
  if (*(a1 + 16))
  {
    v12 = *v10;
    v13 = *(v10 + 1);
    v14 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v15 = sub_1B0E46CB8();
    v16 = -1 << *(a1 + 32);
    v17 = v15 & ~v16;
    if ((*(a1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      do
      {
        v19 = (*(a1 + 48) + 16 * v17);
        if (v19[1])
        {
          v20 = *v19;
          v21 = sub_1B0E44BB8();
          v23 = v22;
          if (v21 == sub_1B0E44BB8() && v23 == v24)
          {

LABEL_23:

            v9 = v350;
LABEL_24:
            v341 = *(v11 + 1);
            v342 = *v11;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_25;
          }

          v26 = sub_1B0E46A78();

          if (v26)
          {
            goto LABEL_23;
          }
        }

        v17 = (v17 + 1) & v18;
      }

      while (((*(a1 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_24;
  }

  v341 = 0;
  v342 = 0;
LABEL_25:
  v27 = Flag.flagged.unsafeMutableAddressor();
  v28 = v27;
  if (*(a1 + 16))
  {
    v29 = *v27;
    v30 = *(v27 + 1);
    v31 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v32 = sub_1B0E46CB8();
    v33 = -1 << *(a1 + 32);
    v34 = v32 & ~v33;
    if ((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v35 = ~v33;
      do
      {
        v36 = (*(a1 + 48) + 16 * v34);
        if (v36[1])
        {
          v37 = *v36;
          v38 = sub_1B0E44BB8();
          v40 = v39;
          if (v38 == sub_1B0E44BB8() && v40 == v41)
          {

LABEL_40:

            v9 = v350;
LABEL_41:
            v339 = *(v28 + 1);
            v340 = *v28;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_42;
          }

          v43 = sub_1B0E46A78();

          if (v43)
          {
            goto LABEL_40;
          }
        }

        v34 = (v34 + 1) & v35;
      }

      while (((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_41;
  }

  v339 = 0;
  v340 = 0;
LABEL_42:
  v44 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v45 = v44;
  if (*(a1 + 16))
  {
    v46 = *v44;
    v47 = *(v44 + 1);
    v48 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v49 = sub_1B0E46CB8();
    v50 = -1 << *(a1 + 32);
    v51 = v49 & ~v50;
    if ((*(a1 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
    {
      v52 = ~v50;
      do
      {
        v53 = (*(a1 + 48) + 16 * v51);
        if (v53[1])
        {
          v54 = *v53;
          v55 = sub_1B0E44BB8();
          v57 = v56;
          if (v55 == sub_1B0E44BB8() && v57 == v58)
          {

LABEL_57:

            v9 = v350;
LABEL_58:
            v62 = *v45;
            v61 = *(v45 + 1);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v63 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v65 = *(v63 + 2);
            v64 = *(v63 + 3);
            v349 = v63;
            if (v65 >= v64 >> 1)
            {
              v349 = sub_1B0AFF1F4((v64 > 1), v65 + 1, 1, v63);
            }

            *(v349 + 2) = v65 + 1;
            v66 = &v349[16 * v65];
            *(v66 + 4) = v62;
            *(v66 + 5) = v61;
            goto LABEL_61;
          }

          v60 = sub_1B0E46A78();

          if (v60)
          {
            goto LABEL_57;
          }
        }

        v51 = (v51 + 1) & v52;
      }

      while (((*(a1 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_58;
  }

  v349 = MEMORY[0x1E69E7CC0];
LABEL_61:
  v67 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
  v68 = v67;
  if (!*(a1 + 16))
  {
LABEL_92:
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1B0EC1E70;
      v106 = *(v68 + 1);
      *(v105 + 32) = *v68;
      *(v105 + 40) = v106;
      v338 = v105;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v338 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_97;
  }

  v69 = *v67;
  v70 = *(v67 + 1);
  v71 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v72 = sub_1B0E46CB8();
  v73 = a1 + 56;
  v74 = -1 << *(a1 + 32);
  v75 = v72 & ~v74;
  if (((*(a1 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
  {
LABEL_72:

    if (*(a1 + 16))
    {
      goto LABEL_80;
    }

    goto LABEL_91;
  }

  v76 = ~v74;
  while (1)
  {
    v77 = (*(a1 + 48) + 16 * v75);
    if (!v77[1])
    {
      goto LABEL_64;
    }

    v78 = *v77;
    v79 = sub_1B0E44BB8();
    v81 = v80;
    if (v79 == sub_1B0E44BB8() && v81 == v82)
    {
      break;
    }

    v84 = sub_1B0E46A78();

    if (v84)
    {
      goto LABEL_75;
    }

LABEL_64:
    v75 = (v75 + 1) & v76;
    if (((*(v73 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
    {
      goto LABEL_72;
    }
  }

LABEL_75:

  v86 = *v68;
  v85 = *(v68 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v349 = sub_1B0AFF1F4(0, *(v349 + 2) + 1, 1, v349);
  }

  v88 = *(v349 + 2);
  v87 = *(v349 + 3);
  if (v88 >= v87 >> 1)
  {
    v349 = sub_1B0AFF1F4((v87 > 1), v88 + 1, 1, v349);
  }

  *(v349 + 2) = v88 + 1;
  v89 = &v349[16 * v88];
  *(v89 + 4) = v86;
  *(v89 + 5) = v85;
  if (!*(a1 + 16))
  {
    goto LABEL_91;
  }

LABEL_80:
  v90 = *v68;
  v91 = *(v68 + 1);
  v92 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v93 = sub_1B0E46CB8();
  v94 = -1 << *(a1 + 32);
  v95 = v93 & ~v94;
  if (((*(v73 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
  {
LABEL_90:

LABEL_91:
    v9 = v350;
    goto LABEL_92;
  }

  v96 = ~v94;
  while (1)
  {
    v97 = (*(a1 + 48) + 16 * v95);
    if (!v97[1])
    {
      goto LABEL_82;
    }

    v98 = *v97;
    v99 = sub_1B0E44BB8();
    v101 = v100;
    if (v99 == sub_1B0E44BB8() && v101 == v102)
    {
      break;
    }

    v104 = sub_1B0E46A78();

    if (v104)
    {
      goto LABEL_96;
    }

LABEL_82:
    v95 = (v95 + 1) & v96;
    if (((*(v73 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

LABEL_96:

  v338 = MEMORY[0x1E69E7CC0];
  v9 = v350;
LABEL_97:
  v107 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  v108 = v107;
  if (*(a1 + 16))
  {
    v109 = *v107;
    v110 = *(v107 + 1);
    v111 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v112 = sub_1B0E46CB8();
    v113 = -1 << *(a1 + 32);
    v114 = v112 & ~v113;
    if ((*(a1 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
    {
      v115 = ~v113;
      do
      {
        v116 = (*(a1 + 48) + 16 * v114);
        if (v116[1])
        {
          v117 = *v116;
          v118 = sub_1B0E44BB8();
          v120 = v119;
          if (v118 == sub_1B0E44BB8() && v120 == v121)
          {

LABEL_112:

            v9 = v350;
LABEL_113:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
            v124 = swift_allocObject();
            *(v124 + 16) = xmmword_1B0EC1E70;
            v125 = *(v108 + 1);
            *(v124 + 32) = *v108;
            *(v124 + 40) = v125;
            v337 = v124;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_114;
          }

          v123 = sub_1B0E46A78();

          if (v123)
          {
            goto LABEL_112;
          }
        }

        v114 = (v114 + 1) & v115;
      }

      while (((*(a1 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_113;
  }

  v337 = MEMORY[0x1E69E7CC0];
LABEL_114:
  v126 = Flag.Keyword.junk.unsafeMutableAddressor();
  v127 = v126;
  if (*(a1 + 16))
  {
    v128 = *v126;
    v129 = *(v126 + 1);
    v130 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v131 = sub_1B0E46CB8();
    v132 = -1 << *(a1 + 32);
    v133 = v131 & ~v132;
    if ((*(a1 + 56 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133))
    {
      v134 = ~v132;
      do
      {
        v135 = (*(a1 + 48) + 16 * v133);
        if (v135[1])
        {
          v136 = *v135;
          v137 = sub_1B0E44BB8();
          v139 = v138;
          if (v137 == sub_1B0E44BB8() && v139 == v140)
          {

LABEL_129:

            v9 = v350;
LABEL_130:
            v144 = *v127;
            v143 = *(v127 + 1);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v145 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v147 = *(v145 + 2);
            v146 = *(v145 + 3);
            if (v147 >= v146 >> 1)
            {
              v145 = sub_1B0AFF1F4((v146 > 1), v147 + 1, 1, v145);
            }

            *(v145 + 2) = v147 + 1;
            v348 = v145;
            v148 = &v145[16 * v147];
            *(v148 + 4) = v144;
            *(v148 + 5) = v143;
            goto LABEL_133;
          }

          v142 = sub_1B0E46A78();

          if (v142)
          {
            goto LABEL_129;
          }
        }

        v133 = (v133 + 1) & v134;
      }

      while (((*(a1 + 56 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_130;
  }

  v348 = MEMORY[0x1E69E7CC0];
LABEL_133:
  v149 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
  v344 = v149;
  if (!*(a1 + 16))
  {
    goto LABEL_151;
  }

  v150 = *v149;
  v151 = *(v149 + 1);
  v152 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v153 = sub_1B0E46CB8();
  v154 = -1 << *(a1 + 32);
  v155 = v153 & ~v154;
  if (((*(a1 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
  {
LABEL_144:

    v9 = v350;
    goto LABEL_151;
  }

  v156 = ~v154;
  while (2)
  {
    v157 = (*(a1 + 48) + 16 * v155);
    if (!v157[1])
    {
LABEL_136:
      v155 = (v155 + 1) & v156;
      if (((*(a1 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
      {
        goto LABEL_144;
      }

      continue;
    }

    break;
  }

  v158 = *v157;
  v159 = sub_1B0E44BB8();
  v161 = v160;
  if (v159 != sub_1B0E44BB8() || v161 != v162)
  {
    v164 = sub_1B0E46A78();

    if (v164)
    {
      goto LABEL_146;
    }

    goto LABEL_136;
  }

LABEL_146:

  v166 = *v344;
  v165 = *(v344 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = v350;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v167 = v348;
  }

  else
  {
    v167 = sub_1B0AFF1F4(0, *(v348 + 2) + 1, 1, v348);
  }

  v169 = *(v167 + 2);
  v168 = *(v167 + 3);
  if (v169 >= v168 >> 1)
  {
    v167 = sub_1B0AFF1F4((v168 > 1), v169 + 1, 1, v167);
  }

  *(v167 + 2) = v169 + 1;
  v348 = v167;
  v170 = &v167[16 * v169];
  *(v170 + 4) = v166;
  *(v170 + 5) = v165;
LABEL_151:
  v171 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  v172 = v171;
  if (*(a1 + 16))
  {
    v173 = *v171;
    v174 = *(v171 + 1);
    v175 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v176 = sub_1B0E46CB8();
    v177 = -1 << *(a1 + 32);
    v178 = v176 & ~v177;
    if ((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
    {
      v179 = ~v177;
      do
      {
        v180 = (*(a1 + 48) + 16 * v178);
        if (v180[1])
        {
          v181 = *v180;
          v182 = sub_1B0E44BB8();
          v184 = v183;
          if (v182 == sub_1B0E44BB8() && v184 == v185)
          {

LABEL_166:

            v9 = v350;
LABEL_167:
            v189 = *v172;
            v188 = *(v172 + 1);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v190 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v192 = *(v190 + 2);
            v191 = *(v190 + 3);
            if (v192 >= v191 >> 1)
            {
              v190 = sub_1B0AFF1F4((v191 > 1), v192 + 1, 1, v190);
            }

            *(v190 + 2) = v192 + 1;
            v347 = v190;
            v193 = &v190[16 * v192];
            *(v193 + 4) = v189;
            *(v193 + 5) = v188;
            goto LABEL_170;
          }

          v187 = sub_1B0E46A78();

          if (v187)
          {
            goto LABEL_166;
          }
        }

        v178 = (v178 + 1) & v179;
      }

      while (((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) != 0);
    }

    v9 = v350;
  }

  if (v9)
  {
    goto LABEL_167;
  }

  v347 = MEMORY[0x1E69E7CC0];
LABEL_170:
  v194 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
  v195 = v194;
  if (!*(a1 + 16))
  {
LABEL_200:
    v218 = v344;
    if (v9)
    {
LABEL_201:
      v235 = *v218;
      v234 = *(v218 + 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v236 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v238 = *(v236 + 2);
      v237 = *(v236 + 3);
      if (v238 >= v237 >> 1)
      {
        v236 = sub_1B0AFF1F4((v237 > 1), v238 + 1, 1, v236);
      }

      *(v236 + 2) = v238 + 1;
      v239 = &v236[16 * v238];
      *(v239 + 4) = v235;
      *(v239 + 5) = v234;
      goto LABEL_208;
    }

LABEL_205:
    v236 = MEMORY[0x1E69E7CC0];
    goto LABEL_208;
  }

  v196 = *v194;
  v197 = *(v194 + 1);
  v198 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v199 = sub_1B0E46CB8();
  v200 = a1 + 56;
  v201 = -1 << *(a1 + 32);
  v202 = v199 & ~v201;
  if (((*(a1 + 56 + ((v202 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v202) & 1) == 0)
  {
LABEL_181:

    goto LABEL_188;
  }

  v203 = ~v201;
  while (2)
  {
    v204 = (*(a1 + 48) + 16 * v202);
    if (!v204[1])
    {
LABEL_173:
      v202 = (v202 + 1) & v203;
      if (((*(v200 + ((v202 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v202) & 1) == 0)
      {
        goto LABEL_181;
      }

      continue;
    }

    break;
  }

  v205 = *v204;
  v206 = sub_1B0E44BB8();
  v208 = v207;
  if (v206 != sub_1B0E44BB8() || v208 != v209)
  {
    v211 = sub_1B0E46A78();

    if (v211)
    {
      goto LABEL_183;
    }

    goto LABEL_173;
  }

LABEL_183:

  v213 = *v195;
  v212 = *(v195 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v214 = v347;
  }

  else
  {
    v214 = sub_1B0AFF1F4(0, *(v347 + 2) + 1, 1, v347);
  }

  v216 = *(v214 + 2);
  v215 = *(v214 + 3);
  if (v216 >= v215 >> 1)
  {
    v214 = sub_1B0AFF1F4((v215 > 1), v216 + 1, 1, v214);
  }

  *(v214 + 2) = v216 + 1;
  v347 = v214;
  v217 = &v214[16 * v216];
  *(v217 + 4) = v213;
  *(v217 + 5) = v212;
LABEL_188:
  v218 = v344;
  if (!*(a1 + 16))
  {
    v9 = v350;
    if (v350)
    {
      goto LABEL_201;
    }

    goto LABEL_205;
  }

  v219 = *v344;
  v220 = *(v344 + 1);
  v221 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v222 = sub_1B0E46CB8();
  v223 = -1 << *(a1 + 32);
  v224 = v222 & ~v223;
  if (((*(v200 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
  {
LABEL_199:

    v9 = v350;
    goto LABEL_200;
  }

  v225 = ~v223;
  while (1)
  {
    v226 = (*(a1 + 48) + 16 * v224);
    if (!v226[1])
    {
      goto LABEL_191;
    }

    v227 = *v226;
    v228 = sub_1B0E44BB8();
    v230 = v229;
    if (v228 == sub_1B0E44BB8() && v230 == v231)
    {
      break;
    }

    v233 = sub_1B0E46A78();

    if (v233)
    {
      goto LABEL_207;
    }

LABEL_191:
    v224 = (v224 + 1) & v225;
    if (((*(v200 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
    {
      goto LABEL_199;
    }
  }

LABEL_207:

  v236 = MEMORY[0x1E69E7CC0];
  v9 = v350;
LABEL_208:
  v240 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
    v345 = v236;
    v242 = *v195;
    v241 = *(v195 + 1);
    v243 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v244 = sub_1B0E46CB8();
    v245 = -1 << *(a1 + 32);
    v246 = v244 & ~v245;
    if ((*(a1 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246))
    {
      v247 = ~v245;
      do
      {
        v248 = (*(a1 + 48) + 16 * v246);
        if (v248[1])
        {
          v249 = *v248;
          v250 = sub_1B0E44BB8();
          v252 = v251;
          if (v250 == sub_1B0E44BB8() && v252 == v253)
          {

LABEL_227:

            v9 = v350;
            v236 = v345;
            v240 = 0xEE0070756E61656CLL;
            if (v350)
            {
LABEL_228:
              v261 = 1;
              if (*(a1 + 16))
              {
                goto LABEL_270;
              }

              goto LABEL_284;
            }

            goto LABEL_230;
          }

          v255 = sub_1B0E46A78();

          if (v255)
          {
            goto LABEL_227;
          }
        }

        v246 = (v246 + 1) & v247;
      }

      while (((*(a1 + 56 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) != 0);
    }

    v9 = v350;
    v236 = v345;
    v240 = 0xEE0070756E61656CLL;
  }

  if (v9)
  {
    v257 = *v195;
    v256 = *(v195 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_1B0AFF1F4(0, *(v236 + 2) + 1, 1, v236);
    }

    v259 = *(v236 + 2);
    v258 = *(v236 + 3);
    if (v259 >= v258 >> 1)
    {
      v236 = sub_1B0AFF1F4((v258 > 1), v259 + 1, 1, v236);
    }

    *(v236 + 2) = v259 + 1;
    v260 = &v236[16 * v259];
    *(v260 + 4) = v257;
    *(v260 + 5) = v256;
    goto LABEL_228;
  }

LABEL_230:
  v262 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
    v261 = 0;
    goto LABEL_284;
  }

  v263 = *v262;
  v264 = *(v262 + 1);
  v265 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v266 = sub_1B0E46CB8();
  v267 = a1 + 56;
  v268 = -1 << *(a1 + 32);
  v269 = v266 & ~v268;
  if (((*(a1 + 56 + ((v269 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v269) & 1) == 0)
  {
    goto LABEL_258;
  }

  v270 = ~v268;
  while (1)
  {
    v271 = (*(a1 + 48) + 16 * v269);
    if (!v271[1])
    {
      goto LABEL_233;
    }

    v272 = *v271;
    v273 = sub_1B0E44BB8();
    v275 = v274;
    if (v273 == sub_1B0E44BB8() && v275 == v276)
    {
      break;
    }

    v278 = sub_1B0E46A78();

    if (v278)
    {
      goto LABEL_243;
    }

LABEL_233:
    v269 = (v269 + 1) & v270;
    if (((*(v267 + ((v269 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v269) & 1) == 0)
    {
LABEL_267:

      v261 = 0;
      goto LABEL_268;
    }
  }

LABEL_243:

  v279 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v9 = v350;
  if (!*(a1 + 16))
  {
    goto LABEL_283;
  }

  v280 = *v279;
  v281 = *(v279 + 1);
  v282 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v283 = sub_1B0E46CB8();
  v284 = -1 << *(a1 + 32);
  v285 = v283 & ~v284;
  if (((*(v267 + ((v285 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v285) & 1) == 0)
  {
LABEL_258:

    v261 = 0;
    goto LABEL_269;
  }

  v286 = ~v284;
  while (1)
  {
    v287 = (*(a1 + 48) + 16 * v285);
    if (!v287[1])
    {
      goto LABEL_246;
    }

    v288 = *v287;
    v289 = sub_1B0E44BB8();
    v291 = v290;
    if (v289 == sub_1B0E44BB8() && v291 == v292)
    {
      break;
    }

    v294 = sub_1B0E46A78();

    if (v294)
    {
      goto LABEL_255;
    }

LABEL_246:
    v285 = (v285 + 1) & v286;
    if (((*(v267 + ((v285 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v285) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_255:

  v295 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v9 = v350;
  if (!*(a1 + 16))
  {
LABEL_283:
    v261 = 0;
    v240 = 0xEE0070756E61656CLL;
    goto LABEL_284;
  }

  v296 = *v295;
  v297 = *(v295 + 1);
  v298 = *(a1 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v299 = sub_1B0E46CB8();
  v300 = -1 << *(a1 + 32);
  v301 = v299 & ~v300;
  if (((*(v267 + ((v301 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v301) & 1) == 0)
  {
    goto LABEL_258;
  }

  v302 = ~v300;
  while (1)
  {
    v303 = (*(a1 + 48) + 16 * v301);
    if (!v303[1])
    {
      goto LABEL_259;
    }

    v304 = *v303;
    v305 = sub_1B0E44BB8();
    v307 = v306;
    if (v305 == sub_1B0E44BB8() && v307 == v308)
    {
      break;
    }

    v310 = sub_1B0E46A78();

    if (v310)
    {
      goto LABEL_290;
    }

LABEL_259:
    v301 = (v301 + 1) & v302;
    if (((*(v267 + ((v301 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v301) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_290:

  v261 = 1;
LABEL_268:
  v9 = v350;
LABEL_269:
  v240 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
LABEL_270:
    v311 = *(a1 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v312 = sub_1B0E46CB8();
    v313 = -1 << *(a1 + 32);
    v314 = v312 & ~v313;
    if ((*(a1 + 56 + ((v314 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v314))
    {
      v346 = v236;
      v315 = ~v313;
      while (1)
      {
        v316 = (*(a1 + 48) + 16 * v314);
        if (v316[1])
        {
          v317 = *v316;
          v318 = sub_1B0E44BB8();
          v320 = v319;
          if (v318 == sub_1B0E44BB8() && v320 == v321)
          {

LABEL_282:

            v324 = v342;
            v325 = a2;
            v327 = v340;
            v326 = v341;
            v329 = v338;
            v328 = v339;
            v330 = v337;
            v332 = v347;
            v331 = v348;
            v236 = v346;
LABEL_286:
            v333 = 0x4364756F6C436924;
            goto LABEL_288;
          }

          v323 = sub_1B0E46A78();

          if (v323)
          {
            goto LABEL_282;
          }
        }

        v314 = (v314 + 1) & v315;
        if (((*(a1 + 56 + ((v314 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v314) & 1) == 0)
        {
          v236 = v346;
          break;
        }
      }
    }
  }

LABEL_284:

  if (v9)
  {
    v324 = v342;
    v325 = a2;
    v327 = v340;
    v326 = v341;
    v329 = v338;
    v328 = v339;
    v330 = v337;
    v332 = v347;
    v331 = v348;
    goto LABEL_286;
  }

  v333 = 0;
  v240 = 0;
  v324 = v342;
  v325 = a2;
  v327 = v340;
  v326 = v341;
  v329 = v338;
  v328 = v339;
  v330 = v337;
  v332 = v347;
  v331 = v348;
LABEL_288:
  *&v352 = v324;
  *(&v352 + 1) = v326;
  *&v353 = v327;
  *(&v353 + 1) = v328;
  *&v354 = v349;
  *(&v354 + 1) = v330;
  v355.n128_u64[0] = v329;
  v355.n128_u64[1] = v331;
  *&v356 = v332;
  *(&v356 + 1) = v236;
  LOBYTE(v357) = v261;
  *(&v357 + 1) = v364[0];
  DWORD1(v357) = *(v364 + 3);
  *(&v357 + 1) = v333;
  v358 = v240;
  v359[0] = v324;
  v359[1] = v326;
  v359[2] = v327;
  v359[3] = v328;
  v359[4] = v349;
  v359[5] = v330;
  v359[6] = v329;
  v359[7] = v331;
  v359[8] = v332;
  v359[9] = v236;
  v360 = v261;
  *v361 = v364[0];
  *&v361[3] = *(v364 + 3);
  v362 = v333;
  v363 = v240;
  sub_1B0B0D4C8(&v352, v351);
  sub_1B0B0D500(v359);
  v334 = v357;
  *(v325 + 64) = v356;
  *(v325 + 80) = v334;
  *(v325 + 96) = v358;
  v335 = v353;
  *v325 = v352;
  *(v325 + 16) = v335;
  result = v355;
  *(v325 + 32) = v354;
  *(v325 + 48) = result;
  return result;
}

unint64_t sub_1B0B0CE64(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = *(a1 + 40), sub_1B0E46C28(), MEMORY[0x1B2728D70](1), v3 = sub_1B0E46CB8(), v4 = -1 << *(a1 + 32), v5 = v3 & ~v4, ((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(a1 + 48) + 16 * v5 + 8);
      v8 = v7 == 0;
      if (!v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B0AFD5E4(v10, v11, a1, v8);

  v13 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B0AFD5E4(v14, v15, a1, v8);

  v17 = Flag.Keyword.junk.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v18) = sub_1B0AFD5E4(v18, v19, a1, v8);

  if (v18)
  {
    v20 = Flag.Keyword.notJunk.unsafeMutableAddressor();
    v21 = *v20;
    v22 = v20[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v21) = sub_1B0AFD5E4(v21, v22, a1, v8);

    if (v21)
    {
      v23 = 0x10000;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v25 = *v24;
  v26 = v24[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v25) = sub_1B0AFD5E4(v25, v26, a1, v8);

  if (v25 & 1) != 0 && (v27 = Flag.Keyword.colorBit1.unsafeMutableAddressor(), v28 = *v27, v29 = v27[1], _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), LOBYTE(v28) = sub_1B0AFD5E4(v28, v29, a1, v8), , (v28))
  {
    v30 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v31 = *v30;
    v32 = v30[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v31) = sub_1B0AFD5E4(v31, v32, a1, v8);

    if (v31)
    {
      v33 = 0x1000000;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  v34 = sub_1B0AFD5E4(static Flag.Keyword.iCloudCleanup, unk_1EB737E80, a1, v8);
  v35 = 0x100000000;
  if ((v34 & 1) == 0)
  {
    v35 = 0;
  }

  v36 = 256;
  if ((v16 & 1) == 0)
  {
    v36 = 0;
  }

  return v36 & 0xFFFFFFFFFFFFFFFELL | v12 & 1 | v23 | v33 | v35;
}

unint64_t sub_1B0B0D12C()
{
  result = qword_1EB6DD978;
  if (!qword_1EB6DD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD978);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0B0D1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1B0B0D1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagDecoder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagDecoder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0B0D328()
{
  result = qword_1EB6DA2D8;
  if (!qword_1EB6DA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DA2D8);
  }

  return result;
}

unint64_t sub_1B0B0D3AC()
{
  result = qword_1EB6DE230;
  if (!qword_1EB6DE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE230);
  }

  return result;
}

uint64_t sub_1B0B0D400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B0D468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B0D530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B0D594(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1B0B0D5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B0D648()
{
  result = sub_1B03D0770(&unk_1F2710EA8);
  qword_1EB737D30 = result;
  return result;
}

void sub_1B0B0D670(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1B0A92638(a1, &v23 - v9);
  sub_1B0A92638(a1, v7);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B0E0FC(v2, v26);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v25);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v17 = *(v15 + 12);
    sub_1B0A9269C(v7);
    *(v13 + 29) = v17;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v18 = *(v16 + 4);
    LODWORD(v16) = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v10);
    v23 = v18;
    v24 = v16;
    v19 = sub_1B0E44BA8();
    v21 = sub_1B0399D64(v19, v20, &v25);

    *(v13 + 43) = v21;
    *(v13 + 51) = 2048;
    v22 = *(v27 + 16);
    sub_1B0B0E134(v26);
    *(v13 + 53) = v22;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld identifier(s).", v13, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0B0E134(v26);
    sub_1B0A9269C(v7);

    sub_1B0A9269C(v10);
  }
}

void sub_1B0B0D924(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 112);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B03D753C(v6, v4);

  if (*(v7 + 16))
  {
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    sub_1B0B25B64(v7, v8, v9);
  }

  else
  {

    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
  }

  MEMORY[0x1EEE9AC00](v10);
  if (*(a1 + 192) == 1)
  {
    v12 = *(a1 + 176);
    v11 = *(a1 + 184);
    v15 = *(a1 + 168);
    v13 = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v15, v8, v9, 0, sub_1B0B0DD00);
    sub_1B03BB638(v13, v12, v11, 1);
    v14 = v15;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v14;
    *(a1 + 192) = 1;
  }
}

uint64_t sub_1B0B0DA6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(type metadata accessor for MailboxSyncState() + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = *(a1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + v4);
  sub_1B0B0DE00(v3, sub_1B0B0DD08, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(a1 + v4) = v8;
  return result;
}

uint64_t sub_1B0B0DB0C()
{
  if (qword_1EB6DD4B8 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0B0DB7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, unint64_t *a3@<X8>)
{
  result = sub_1B0A9F164(a1, a2);
  if (result)
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 32);
    *(v7 + 16) = *(v3 + 24);
    *(v7 + 24) = v8;
    *(v7 + 32) = *(v3 + 40);
    v6 = v7 | 0xA000000000000002;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1B0B0DC30()
{
  result = qword_1EB6DD4B0;
  if (!qword_1EB6DD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4B0);
  }

  return result;
}

unint64_t sub_1B0B0DC84(uint64_t a1)
{
  result = sub_1B0B0DCAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B0DCAC()
{
  result = qword_1EB6DD4A8;
  if (!qword_1EB6DD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD4A8);
  }

  return result;
}

uint64_t sub_1B0B0DD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return sub_1B03B2000(v3, v2);
}

unint64_t sub_1B0B0DD38(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x15 && (*(v1 + 32) | (*(v1 + 32) << 32)) == (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((result & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    result = sub_1B04520BC(*(v1 + 24), *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10));
    if (result)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v3 = *(v1 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v1 + 112);
      sub_1B0B0DE00(v2, sub_1B0B0DD08, 0, isUniquelyReferenced_nonNull_native, &v5);

      *(v1 + 112) = v5;
    }
  }

  return result;
}

uint64_t sub_1B0B0DE00(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v43 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = 0;
  v44 = v10;
  v45 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(a1 + 56) + 24 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    LOBYTE(v17) = *(v17 + 17);
    v51 = *(*(a1 + 48) + 16 * v16);
    v52 = v18;
    v53 = v19;
    v54 = v20;
    v55 = v17;
    sub_1B03B2000(v51, *(&v51 + 1));
    a2(&v56, &v51);
    sub_1B0391D50(v51, *(&v51 + 1));
    v21 = v60;
    if ((v60 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_1B03D91F8();
    }

    v23 = v56;
    v22 = v57;
    v48 = v58;
    v49 = v59;
    v50 = HIBYTE(v60);
    v24 = *v61;
    v26 = sub_1B0AE002C(v56, v57);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B0B8DE40();
      }
    }

    else
    {
      v31 = v61;
      sub_1B0B30DF8(v29, a4 & 1);
      v32 = *v31;
      v33 = sub_1B0AE002C(v23, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v26 = v33;
    }

    v35 = (v13 - 1) & v13;
    v36 = *v61;
    if (v30)
    {
      sub_1B0391D50(v23, v22);
      v12 = v36[7] + 24 * v26;
      *v12 = v48;
      *(v12 + 8) = v49;
      *(v12 + 16) = v21 & 1;
      *(v12 + 17) = v50;
    }

    else
    {
      v36[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v36[6] + 16 * v26);
      *v37 = v23;
      v37[1] = v22;
      v38 = v36[7] + 24 * v26;
      *v38 = v48;
      *(v38 + 8) = v49;
      *(v38 + 16) = v21 & 1;
      *(v38 + 17) = v50;
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v36[2] = v41;
    }

    a4 = 1;
    v11 = v14;
    v10 = v44;
    v6 = v45;
    v9 = v35;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B0E178(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B0B0E22C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1B0B0E274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0B0E2E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9 - 8];
  sub_1B03B1B00(a1, &v32[-v9 - 8], type metadata accessor for Task.Logger);
  sub_1B03B1B00(a1, v7, type metadata accessor for Task.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B11BF0(v2, v33);
  sub_1B0B11BF0(v2, v32);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 68158722;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = *&v7[*(v4 + 20)];
    sub_1B03B1D60(v7, type metadata accessor for Task.Logger);
    *(v13 + 10) = v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    v17 = *(v16 + 1);
    v18 = *(v16 + 2);
    v19 = *(v16 + 3);
    v20 = *(v16 + 4);
    v21 = *(v16 + 10);
    sub_1B0A982D8(*v16, v17, v18, v19);
    sub_1B03B1D60(v10, type metadata accessor for Task.Logger);
    if (v19 < 0)
    {
    }

    v22 = sub_1B0399D64(v17, v18, &v31);

    *(v13 + 13) = v22;
    *(v13 + 21) = 2080;
    if (v34)
    {
      v23 = 0x616C696176616E75;
    }

    else
    {
      v23 = 0x6574726F70707573;
    }

    if (v34)
    {
      v24 = 0xEB00000000656C62;
    }

    else
    {
      v24 = 0xE900000000000064;
    }

    sub_1B0B11C28(v33);
    v25 = sub_1B0399D64(v23, v24, &v31);

    *(v13 + 23) = v25;
    *(v13 + 31) = 2080;
    if (v32[113])
    {
      v26 = 256;
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_1B0B6C628(v26 | v32[112]);
    v29 = v28;
    sub_1B0B11C28(v32);
    v30 = sub_1B0399D64(v27, v29, &v31);

    *(v13 + 33) = v30;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] Created task (NAMESPACE: %s; LIST: %s).", v13, 0x29u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B03B1D60(v7, type metadata accessor for Task.Logger);

    sub_1B0B11C28(v32);
    sub_1B0B11C28(v33);
    sub_1B03B1D60(v10, type metadata accessor for Task.Logger);
  }
}

uint64_t sub_1B0B0E658@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (*(v3 + 80) & 1) != 0 || *(v3 + 88) || (v5 = a1, v6 = a2, v7 = sub_1B0B70024(1, a1, a2), a1 = v5, a2 = v6, (v7))
  {
    if (sub_1B0B70024(0, a1, a2))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4570, &qword_1B0EC55C8);
      v9 = *(*(v8 - 8) + 56);
      v10 = v8;
      v11 = a3;
      v12 = 1;
      goto LABEL_11;
    }

    if (*(v3 + 113))
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1B0B0E848(v13 | *(v3 + 112));
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4570, &qword_1B0EC55C8);
    v16 = &a3[*(v15 + 48)];
    *a3 = 0;
    v17 = ByteBufferAllocator.buffer(string:)(42, 0xE100000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v20 = MailboxName.init(_:)(v17, v19, v18 & 0xFFFFFFFFFFFFFFLL);
    *v16 = 0;
    *(v16 + 2) = 0;
    *(v16 + 2) = v20;
    *(v16 + 6) = v21;
    *(v16 + 4) = v14;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4570, &qword_1B0EC55C8);
    v23 = *(v15 + 48);
    *a3 = 1;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v9 = *(*(v15 - 8) + 56);
  v11 = a3;
  v12 = 0;
  v10 = v15;
LABEL_11:

  return v9(v11, v12, 1, v10);
}

char *sub_1B0B0E848(__int16 a1)
{
  if (!a1)
  {
    result = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) != 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 1)
  {
    result = sub_1B0AFF314(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(result + 2);
    v3 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      result = sub_1B0AFF314((v3 > 1), v4 + 1, 1, result);
    }

    v6 = &unk_1F27105C8;
  }

  else
  {
    result = sub_1B0AFF314(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(result + 2);
    v7 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      result = sub_1B0AFF314((v7 > 1), v4 + 1, 1, result);
    }

    v6 = &unk_1F27105F0;
  }

  *(result + 2) = v5;
  v8 = &result[64 * v4];
  *(v8 + 4) = v6;
  *(v8 + 8) = 0;
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    v9 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v9;
    }

    else
    {
      result = sub_1B0AFF314(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(result + 2);
    v10 = *(result + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_1B0AFF314((v10 > 1), v11 + 1, 1, result);
    }

    *(result + 2) = v11 + 1;
    v12 = &result[64 * v11];
    *(v12 + 4) = 2;
    *(v12 + 5) = 0;
    *(v12 + 6) = 0;
    *(v12 + 7) = 0;
    *(v12 + 8) = 0x8000000000000000;
    *(v12 + 9) = 0;
    *(v12 + 10) = 0;
    *(v12 + 11) = 0;
  }

  return result;
}

unint64_t sub_1B0B0E9BC(char a1, unint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v13 = type metadata accessor for Task.Logger(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  if ((a1 & 1) == 0 && !*(*v6 + 16))
  {
    v41 = v18;
    sub_1B03B1B00(a6, &v35 - v19, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a6, v16, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v21 = sub_1B0E43988();
    v22 = sub_1B0E458E8();
    if (os_log_type_enabled(v21, v22))
    {
      v39 = v22;
      v40 = v21;
      v23 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v23 = 68158210;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v24 = v41;
      v36 = *&v16[*(v41 + 20)];
      v37 = type metadata accessor for Task.Logger;
      sub_1B03B1D60(v16, type metadata accessor for Task.Logger);
      *(v23 + 10) = v36;
      *(v23 + 11) = 2082;
      v25 = &v20[*(v24 + 20)];
      v26 = *v25;
      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = *(v25 + 4);
      v30 = *(v25 + 10);
      v41 = *(v25 + 1);
      v36 = v29;
      sub_1B0A982D8(v26, v41, v28, v27);
      sub_1B03B1D60(v20, v37);
      if (v27 < 0)
      {
      }

      v31 = sub_1B0399D64(v41, v28, &v42);

      *(v23 + 13) = v31;
      v32 = v40;
      _os_log_impl(&dword_1B0389000, v40, v39, "[%.*hhx-%{public}s] LIST completed, but we didn’t get any mailboxes, notably no INBOX.", v23, 0x15u);
      v33 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B272C230](v33, -1, -1);
      MEMORY[0x1B272C230](v23, -1, -1);
    }

    else
    {
      sub_1B03B1D60(v16, type metadata accessor for Task.Logger);

      sub_1B03B1D60(v20, type metadata accessor for Task.Logger);
    }
  }

  return sub_1B0A9174C(a6, a2, a3, a4, a5);
}

uint64_t sub_1B0B0EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  if (v9)
  {
    v11 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_1B07BA724(*(v4 + 88));
    if ((sub_1B0A9D054(0, a2, a4) & 1) == 0)
    {
      v14 = swift_allocObject();
      result = 0;
      v14[2] = v9;
      v14[3] = v11;
      v14[4] = v10;
      return result;
    }
  }

  if ((sub_1B0A986FC(0, a1, a2, a3) & 1) != 0 && (v9 || *(v4 + 80)) && (sub_1B0A9D054(1, a2, a4) & 1) == 0)
  {
    *(swift_allocObject() + 16) = *v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 1;
  }

  else if ((sub_1B0B11FE4(1, a1, a2, a4, sub_1B0A9D03C) & 1) != 0 && (sub_1B0A9D054(2, a2, a4) & 1) == 0 && (v12 = *(v4 + 8), *(v12 + 16)))
  {
    *(swift_allocObject() + 16) = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_1B0B0EE38(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v239 = 0;
  v252 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(v252[-1].isa + 8);
  MEMORY[0x1EEE9AC00](v252);
  v251 = (&v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256 = type metadata accessor for State.Logger();
  v8 = *(*(v256 - 8) + 64);
  MEMORY[0x1EEE9AC00](v256);
  v257 = &v236 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for Task.Logger(0);
  v10 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v12 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v245 = &v236 - v14;
  MEMORY[0x1EEE9AC00](v15);
  *&v242 = &v236 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v243 = &v236 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v250 = &v236 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v254 = &v236 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v240 = &v236 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v241 = (&v236 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v248 = (&v236 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v249 = (&v236 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v236 - v32;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v236 - v36;
  MEMORY[0x1EEE9AC00](v38);
  isa = a1[15].isa;
  v253 = a2;
  v246 = v12;
  v244 = a1;
  if (isa)
  {
    v43 = &v236 - v41;
    v44 = a1;
    v45 = *(isa + 16);
    MEMORY[0x1EEE9AC00](v39);
    *&v247 = v46;
    *(&v236 - 2) = v46;
    v47 = v239;
    v48 = sub_1B0B11728(isa, sub_1B0B10A18);

    v44[15].isa = v48;
    v49 = v45 - *(v48 + 16);
    v239 = v47;
    if (v49 < 1)
    {
      a2 = v253;
    }

    else
    {
      a2 = v253;
      sub_1B03B1B00(v253, v43, type metadata accessor for Task.Logger);
      sub_1B03B1B00(a2, v37, type metadata accessor for Task.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v50 = sub_1B0E43988();
      v51 = sub_1B0E45908();
      if (os_log_type_enabled(v50, v51))
      {
        LODWORD(v238) = v51;
        v52 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v272[0] = v237;
        *v52 = 68158466;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v255;
        v54 = *&v37[*(v255 + 20)];
        sub_1B03B1D60(v37, type metadata accessor for Task.Logger);
        *(v52 + 10) = v54;
        *(v52 + 11) = 2082;
        v55 = &v43[*(v53 + 20)];
        v56 = *(v55 + 1);
        v57 = *(v55 + 2);
        v58 = *(v55 + 3);
        v59 = *(v55 + 4);
        v60 = *(v55 + 10);
        sub_1B0A982D8(*v55, v56, v57, v58);
        sub_1B03B1D60(v43, type metadata accessor for Task.Logger);
        if (v58 < 0)
        {
        }

        v61 = sub_1B0399D64(v56, v57, v272);

        *(v52 + 13) = v61;
        *(v52 + 21) = 2048;
        *(v52 + 23) = v49;
        _os_log_impl(&dword_1B0389000, v50, v238, "[%.*hhx-%{public}s] Did remove %ld mailbox(es)", v52, 0x1Fu);
        v62 = v237;
        __swift_destroy_boxed_opaque_existential_0(v237);
        MEMORY[0x1B272C230](v62, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);

        a2 = v253;
        v12 = v246;
      }

      else
      {
        sub_1B03B1D60(v37, type metadata accessor for Task.Logger);

        sub_1B03B1D60(v43, type metadata accessor for Task.Logger);
      }
    }

    v77 = v249;
    v3 = v247;
  }

  else
  {
    v63 = v40;
    sub_1B03B1B00(a2, v40, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a2, v33, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v64 = sub_1B0E43988();
    v65 = sub_1B0E458E8();
    if (os_log_type_enabled(v64, v65))
    {
      LODWORD(v238) = v65;
      *&v247 = v3;
      v66 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v272[0] = v237;
      *v66 = 68158210;
      *(v66 + 4) = 2;
      *(v66 + 8) = 256;
      v67 = v255;
      v68 = *&v33[*(v255 + 20)];
      sub_1B03B1D60(v33, type metadata accessor for Task.Logger);
      *(v66 + 10) = v68;
      *(v66 + 11) = 2082;
      v69 = v63 + *(v67 + 20);
      v70 = *(v69 + 8);
      v72 = *(v69 + 16);
      v71 = *(v69 + 24);
      v73 = *(v69 + 32);
      v74 = *(v69 + 40);
      sub_1B0A982D8(*v69, v70, v72, v71);
      sub_1B03B1D60(v63, type metadata accessor for Task.Logger);
      if (v71 < 0)
      {
      }

      v75 = sub_1B0399D64(v70, v72, v272);

      *(v66 + 13) = v75;
      _os_log_impl(&dword_1B0389000, v64, v238, "[%.*hhx-%{public}s] Setting empty list of mailboxes.", v66, 0x15u);
      v76 = v237;
      __swift_destroy_boxed_opaque_existential_0(v237);
      MEMORY[0x1B272C230](v76, -1, -1);
      MEMORY[0x1B272C230](v66, -1, -1);

      a2 = v253;
      v12 = v246;
      v3 = v247;
    }

    else
    {
      sub_1B03B1D60(v33, type metadata accessor for Task.Logger);

      sub_1B03B1D60(v63, type metadata accessor for Task.Logger);
    }

    v77 = v249;
    v78 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
    v244[15].isa = v78;
  }

  v79 = v248;
  v80 = v3[11];
  v249 = v3[12];
  v81 = v3[13];
  if (!v80)
  {
    v77 = v241;
    sub_1B03B1B00(a2, v241, type metadata accessor for Task.Logger);
    v104 = v240;
    sub_1B03B1B00(a2, v240, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v82 = sub_1B0E43988();
    v105 = sub_1B0E45908();
    if (os_log_type_enabled(v82, v105))
    {
      LODWORD(v247) = v105;
      v248 = v82;
      v106 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v272[0] = v238;
      *v106 = 68158210;
      *(v106 + 4) = 2;
      *(v106 + 8) = 256;
      v107 = v255;
      v108 = *(v104 + *(v255 + 20));
      sub_1B03B1D60(v104, type metadata accessor for Task.Logger);
      *(v106 + 10) = v108;
      *(v106 + 11) = 2082;
      v109 = v77 + *(v107 + 20);
      v110 = *(v109 + 1);
      v112 = *(v109 + 2);
      v111 = *(v109 + 3);
      v113 = *(v109 + 4);
      v114 = *(v109 + 10);
      sub_1B0A982D8(*v109, v110, v112, v111);
      sub_1B03B1D60(v77, type metadata accessor for Task.Logger);
      if (v111 < 0)
      {
      }

      v115 = sub_1B0399D64(v110, v112, v272);

      *(v106 + 13) = v115;
      v116 = v248;
      _os_log_impl(&dword_1B0389000, v248, v247, "[%.*hhx-%{public}s] Server isn't namespaced.", v106, 0x15u);
      v117 = v238;
      __swift_destroy_boxed_opaque_existential_0(v238);
      MEMORY[0x1B272C230](v117, -1, -1);
      MEMORY[0x1B272C230](v106, -1, -1);

      a2 = v253;
      v12 = v246;
      goto LABEL_28;
    }

    v118 = v104;
LABEL_27:
    sub_1B03B1D60(v118, type metadata accessor for Task.Logger);

    sub_1B03B1D60(v77, type metadata accessor for Task.Logger);
LABEL_28:
    v103 = v249;
    goto LABEL_29;
  }

  sub_1B03B1B00(a2, v77, type metadata accessor for Task.Logger);
  sub_1B03B1B00(a2, v79, type metadata accessor for Task.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82 = sub_1B0E43988();
  v83 = sub_1B0E45908();

  if (!os_log_type_enabled(v82, v83))
  {
    v118 = v79;
    goto LABEL_27;
  }

  LODWORD(v247) = v83;
  v248 = v82;
  v84 = swift_slowAlloc();
  v241 = swift_slowAlloc();
  *&v271[0] = v241;
  *v84 = 68158979;
  *(v84 + 4) = 2;
  *(v84 + 8) = 256;
  v85 = v255;
  v86 = *(&v79->isa + *(v255 + 20));
  sub_1B03B1D60(v79, type metadata accessor for Task.Logger);
  *(v84 + 10) = v86;
  *(v84 + 11) = 2082;
  v87 = v77 + *(v85 + 20);
  v88 = *(v87 + 1);
  v90 = *(v87 + 2);
  v89 = *(v87 + 3);
  v91 = *(v87 + 4);
  v92 = *(v87 + 10);
  sub_1B0A982D8(*v87, v88, v90, v89);
  sub_1B03B1D60(v77, type metadata accessor for Task.Logger);
  if (v89 < 0)
  {
  }

  v93 = sub_1B0399D64(v88, v90, v271);

  *(v84 + 13) = v93;
  *(v84 + 21) = 2160;
  *(v84 + 23) = 0x786F626C69616DLL;
  *(v84 + 31) = 2085;
  v94 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v272[0] = MailboxName.init(_:)(v94);
  LODWORD(v272[1]) = v95;
  v96 = sub_1B0E44BA8();
  v98 = sub_1B0399D64(v96, v97, v271);

  *(v84 + 33) = v98;
  *(v84 + 41) = 2080;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v99 = v249;
  v100 = sub_1B0399D64(v249, v81, v271);

  *(v84 + 43) = v100;
  v101 = v248;
  _os_log_impl(&dword_1B0389000, v248, v247, "[%.*hhx-%{public}s] Server is namespaced: %{sensitive,mask.mailbox}s (%s)", v84, 0x33u);
  v102 = v241;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v102, -1, -1);
  MEMORY[0x1B272C230](v84, -1, -1);

  v103 = v99;
  a2 = v253;
  v12 = v246;
LABEL_29:
  v119 = v244;
  v120 = v244[18].isa;
  v121 = v244[19].isa;
  v122 = v244[20].isa;
  v244[18].isa = v80;
  v119[19].isa = v103;
  v119[20].isa = v81;
  sub_1B07BA724(v80);
  sub_1B07BA794(v120);
  BYTE1(v119[17].isa) = 0;
  v119[16].isa = static MonotonicTime.now()();
  LOBYTE(v119[17].isa) = 0;
  v123 = v254;
  sub_1B03B1B00(a2, v254, type metadata accessor for Task.Logger);
  v124 = *(v123 + *(v255 + 20));
  v125 = v257;
  sub_1B0E43998();
  *(v125 + *(v256 + 20)) = v124;
  sub_1B03B1D60(v123, type metadata accessor for Task.Logger);
  sub_1B0B86B3C(v125);
  sub_1B03B1D60(v125, type metadata accessor for State.Logger);
  memcpy(v272, v119, 0x108uLL);
  v126 = sub_1B0B38204();
  v128 = v126[2].isa;
  if (v128)
  {
    v257 = v128 - 1;
    v129 = 32;
    *&v127 = 68160515;
    v247 = v127;
    v249 = v126;
    while (1)
    {
      v256 = v129;
      v130 = *(&v126[2].isa + v129);
      v271[0] = *(&v126->isa + v129);
      v271[1] = v130;
      v131 = *(&v126[4].isa + v129);
      v132 = *(&v126[6].isa + v129);
      v133 = *(&v126[8].isa + v129);
      LOBYTE(v271[5]) = *(&v126[10].isa + v129);
      v271[3] = v132;
      v271[4] = v133;
      v271[2] = v131;
      v134 = WORD6(v271[0]);
      v135 = *&v271[0];
      v136 = DWORD2(v271[0]);
      v137 = v250;
      sub_1B03B1B00(a2, v250, type metadata accessor for Task.Logger);
      v138 = sub_1B0E439A8();
      v139 = v251;
      (*(*(v138 - 8) + 16))(v251, v137, v138);
      v140 = v137 + *(v255 + 20);
      v142 = *(v140 + 8);
      v141 = *(v140 + 16);
      v143 = *v140;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_bridgeObjectRetain_n();
      sub_1B0B118A8(v271, v270);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1D60(v137, type metadata accessor for Task.Logger);
      v144 = v139 + SHIDWORD(v252[2].isa);
      *v144 = v143;
      *(v144 + 8) = v142;
      *(v144 + 16) = v141;
      LODWORD(v254) = v134;
      *(v144 + 24) = v134;
      *(v144 + 32) = v135;
      *(v144 + 40) = v136;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1D60(v139, type metadata accessor for MailboxTaskLogger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      sub_1B0B118A8(v271, v270);
      v145 = sub_1B0E43988();
      v146 = sub_1B0E45908();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v263 = v248;
        *v147 = v247;
        *(v147 + 4) = 2;
        *(v147 + 8) = 256;
        *(v147 + 10) = v143;
        *(v147 + 11) = 2082;
        v148 = sub_1B0399D64(v142, v141, &v263);

        *(v147 + 13) = v148;
        *(v147 + 21) = 1040;
        *(v147 + 23) = 2;
        *(v147 + 27) = 512;

        *(v147 + 29) = v254;

        *(v147 + 31) = 2160;
        *(v147 + 33) = 0x786F626C69616DLL;
        *(v147 + 41) = 2085;
        v270[0] = v135;
        LODWORD(v270[1]) = v136;
        v149 = sub_1B0E44BA8();
        v151 = sub_1B0399D64(v149, v150, &v263);

        *(v147 + 43) = v151;
        *(v147 + 51) = 2048;
        sub_1B0B11904(v271);
        v152 = *&v271[1];
        if (BYTE8(v271[1]))
        {
          v152 = 0;
        }

        *(v147 + 53) = v152;
        sub_1B0B11904(v271);
        *(v147 + 61) = 1024;
        v153 = static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*&v271[2], DWORD2(v271[2]), 0, 0);
        sub_1B0B11904(v271);
        *(v147 + 63) = (v153 & 1) == 0;
        sub_1B0B11904(v271);
        *(v147 + 67) = 2048;
        sub_1B0B11904(v271);
        v154 = *&v271[3];
        if (BYTE8(v271[3]))
        {
          v154 = 0;
        }

        *(v147 + 69) = v154;
        sub_1B0B11904(v271);
        *(v147 + 77) = 1024;
        sub_1B0B11904(v271);
        v155 = HIDWORD(v271[3]);
        if (LOBYTE(v271[4]))
        {
          v155 = 0;
        }

        *(v147 + 79) = v155;
        sub_1B0B11904(v271);
        *(v147 + 83) = 2048;
        sub_1B0B11904(v271);
        v156 = *(&v271[4] + 1);
        if (LOBYTE(v271[5]))
        {
          v156 = 0;
        }

        *(v147 + 85) = v156;
        sub_1B0B11904(v271);
        _os_log_impl(&dword_1B0389000, v145, v146, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] local {highest-mod-seq: %llu, modifications: %{BOOL}d}, remote {count: %ld, next UID: %u, highest-mod-seq: %llu}", v147, 0x5Du);
        v157 = v248;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v157, -1, -1);
        v158 = v147;
        a2 = v253;
        MEMORY[0x1B272C230](v158, -1, -1);
      }

      else
      {
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
        sub_1B0B11904(v271);
      }

      v126 = v249;
      if (!v257)
      {
        break;
      }

      --v257;
      v129 = v256 + 88;
    }

    v12 = v246;
  }

  else
  {
  }

  v159 = v244;
  memcpy(v271, v244, 0x108uLL);
  v160 = sub_1B03C5290();
  v161 = *(v160 + 16);
  memcpy(v270, v159, sizeof(v270));
  v162 = LOBYTE(v270[3]);
  v163 = BYTE1(v270[3]);
  v164 = v270[4];
  v165 = v270[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v166 = sub_1B0397D14();
  v167 = v166;
  if (v164 == 3 || v164 == 2)
  {

    LODWORD(v257) = 1;
    v168 = v243;
LABEL_49:
    v169 = v242;
    goto LABEL_50;
  }

  v233 = sub_1B0BAE1A4(v166);
  if (v163)
  {
    goto LABEL_95;
  }

  if (v164 == 1)
  {
    if (!v162)
    {
LABEL_95:
      v234 = v233 ^ 1;
      goto LABEL_96;
    }

    if (v162 == 1)
    {
      v234 = 1;
LABEL_96:
      LODWORD(v257) = v234;
      goto LABEL_97;
    }
  }

  else if (v164 || (v162 - 1) >= 2)
  {
    goto LABEL_95;
  }

  LODWORD(v257) = 0;
LABEL_97:
  v168 = v243;
  sub_1B0397E04(&unk_1F2710548, v165);
  sub_1B0BAE1A4(v167);
  v235 = sub_1B039109C(v165);

  if (v235)
  {
    goto LABEL_49;
  }

  v169 = v242;
  if (v163)
  {
    sub_1B0BAE1A4(v167);
  }

LABEL_50:

  sub_1B03B1B00(a2, v168, type metadata accessor for Task.Logger);
  sub_1B03B1B00(a2, v169, type metadata accessor for Task.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v170 = sub_1B0E43988();
  v171 = sub_1B0E45908();
  if (os_log_type_enabled(v170, v171))
  {
    v254 = v161;
    v256 = v160;
    v172 = v169;
    v173 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    v263 = v252;
    *v173 = 68158722;
    *(v173 + 4) = 2;
    *(v173 + 8) = 256;
    v174 = v255;
    v175 = *(v172 + *(v255 + 20));
    sub_1B03B1D60(v172, type metadata accessor for Task.Logger);
    *(v173 + 10) = v175;
    *(v173 + 11) = 2082;
    v176 = v168 + *(v174 + 20);
    v177 = *(v176 + 8);
    v179 = *(v176 + 16);
    v178 = *(v176 + 24);
    v180 = *(v176 + 32);
    v181 = *(v176 + 40);
    sub_1B0A982D8(*v176, v177, v179, v178);
    sub_1B03B1D60(v168, type metadata accessor for Task.Logger);
    if (v178 < 0)
    {
    }

    v182 = sub_1B0399D64(v177, v179, &v263);

    *(v173 + 13) = v182;
    *(v173 + 21) = 2048;
    *(v173 + 23) = v254;
    *(v173 + 31) = 2080;
    if (v257)
    {
      v183 = 0xD000000000000014;
    }

    else
    {
      v183 = 0x746C7561666564;
    }

    if (v257)
    {
      v184 = 0x80000001B0F2B370;
    }

    else
    {
      v184 = 0xE700000000000000;
    }

    v185 = sub_1B0399D64(v183, v184, &v263);

    *(v173 + 33) = v185;
    _os_log_impl(&dword_1B0389000, v170, v171, "[%.*hhx-%{public}s] There are (still) %ld mailbox(es) to sync. Sync behavior: %s.", v173, 0x29u);
    v186 = v252;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v186, -1, -1);
    MEMORY[0x1B272C230](v173, -1, -1);

    v12 = v246;
    v160 = v256;
  }

  else
  {
    sub_1B03B1D60(v169, type metadata accessor for Task.Logger);

    sub_1B03B1D60(v168, type metadata accessor for Task.Logger);
  }

  sub_1B0B11958(4, v160, &v263);

  v187 = v263;
  v188 = v265;
  v189 = v266;
  v254 = v267;
  v190 = v268;
  v191 = v269;
  v262 = v265;
  v261 = v268;
  v240 = v264;
  sub_1B0B11A78(v263, v264, v265);
  v193 = v245;
  if ((v188 & 1) == 0 && (v190 & 1) == 0)
  {
    v194 = v240;
    if (v240 == v254)
    {
      v195 = v240;
      if (v187 == v189)
      {
LABEL_86:
        v232 = v261;
        sub_1B0425168(v187, v194, v262);
        sub_1B0425168(v189, v254, v232);

        sub_1B0425168(v189, v195, 0);
        return;
      }

      v196 = 0;
      v252 = (v191 + 56);
      v241 = (v191 + 64);
      *&v192 = 68158979;
      v242 = v192;
      v197 = v187;
      v243 = v191;
      v244 = v189;
      v250 = v254;
      v251 = v187;
      while (v197 >= v187)
      {
        if (v197 >= v189)
        {
          goto LABEL_103;
        }

        if (v197 < 0)
        {
          goto LABEL_104;
        }

        v198 = 1 << v191[32];
        if (v197 >= v198)
        {
          goto LABEL_104;
        }

        v199 = v197 >> 6;
        v200 = v252[v197 >> 6].isa;
        if (((v200 >> v197) & 1) == 0)
        {
          goto LABEL_105;
        }

        if (*(v191 + 9) != v254)
        {
          goto LABEL_106;
        }

        v201 = v200 & (-2 << (v197 & 0x3F));
        if (v201)
        {
          v198 = __clz(__rbit64(v201)) | v197 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v202 = v199 << 6;
          v203 = v199 + 1;
          v204 = &v241[v199];
          while (v203 < (v198 + 63) >> 6)
          {
            v206 = *v204++;
            v205 = v206;
            v202 += 64;
            ++v203;
            if (v206)
            {
              v198 = __clz(__rbit64(v205)) + v202;
              break;
            }
          }
        }

        v207 = __OFADD__(v196, 1);
        v208 = v196 + 1;
        if (v207)
        {
          goto LABEL_107;
        }

        v257 = v208;
        v209 = *(v191 + 6) + 16 * v197;
        v210 = *v209;
        v211 = *(v209 + 8);
        v212 = v253;
        sub_1B03B1B00(v253, v193, type metadata accessor for Task.Logger);
        sub_1B03B1B00(v212, v12, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v213 = sub_1B0E43988();
        v214 = v12;
        v215 = sub_1B0E45908();

        LODWORD(v256) = v215;
        if (os_log_type_enabled(v213, v215))
        {
          LODWORD(v248) = v211;
          v249 = v213;
          v216 = v193;
          v217 = swift_slowAlloc();
          *&v247 = swift_slowAlloc();
          v260 = v247;
          *v217 = v242;
          *(v217 + 4) = 2;
          *(v217 + 8) = 256;
          v218 = v255;
          v219 = *(v214 + *(v255 + 20));
          sub_1B03B1D60(v214, type metadata accessor for Task.Logger);
          *(v217 + 10) = v219;
          *(v217 + 11) = 2082;
          v220 = v216 + *(v218 + 20);
          v221 = *(v220 + 8);
          v223 = *(v220 + 16);
          v222 = *(v220 + 24);
          v224 = *(v220 + 32);
          v225 = *(v220 + 40);
          sub_1B0A982D8(*v220, v221, v223, v222);
          sub_1B03B1D60(v216, type metadata accessor for Task.Logger);
          if (v222 < 0)
          {
          }

          v226 = sub_1B0399D64(v221, v223, &v260);

          *(v217 + 13) = v226;
          *(v217 + 21) = 2048;
          v196 = v257;
          *(v217 + 23) = v257;
          *(v217 + 31) = 2160;
          *(v217 + 33) = 0x786F626C69616DLL;
          *(v217 + 41) = 2085;
          v258 = v210;
          v259 = v248;
          v227 = sub_1B0E44BA8();
          v229 = sub_1B0399D64(v227, v228, &v260);

          *(v217 + 43) = v229;
          v230 = v249;
          _os_log_impl(&dword_1B0389000, v249, v256, "[%.*hhx-%{public}s] [%ld] mailbox to sync: '%{sensitive,mask.mailbox}s'", v217, 0x33u);
          v231 = v247;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v231, -1, -1);
          MEMORY[0x1B272C230](v217, -1, -1);

          v193 = v245;
          v12 = v246;
          v191 = v243;
          v189 = v244;
        }

        else
        {
          sub_1B03B1D60(v214, type metadata accessor for Task.Logger);

          sub_1B03B1D60(v193, type metadata accessor for Task.Logger);
          v196 = v257;
          v12 = v214;
        }

        v197 = v198;
        v195 = v250;
        v187 = v251;
        if (v198 == v189)
        {
          v194 = v240;
          goto LABEL_86;
        }
      }
    }

    else
    {
      __break(1u);
    }

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
  }

  __break(1u);
}

uint64_t sub_1B0B10874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0B0EC90(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_1B0B108C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

unint64_t sub_1B0B108F4()
{
  result = qword_1EB6DDF40;
  if (!qword_1EB6DDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF40);
  }

  return result;
}

unint64_t sub_1B0B10948()
{
  result = qword_1EB6DDF38;
  if (!qword_1EB6DDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF38);
  }

  return result;
}

unint64_t sub_1B0B1099C(uint64_t a1)
{
  result = sub_1B0B109C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B109C4()
{
  result = qword_1EB6DDF30;
  if (!qword_1EB6DDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF30);
  }

  return result;
}

uint64_t sub_1B0B10A18(uint64_t a1, unsigned int a2)
{
  if (*(**(v2 + 16) + 16))
  {
    sub_1B03AB888(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_1B0B10A54(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B0B11584(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B0B10AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = sub_1B0E460B8();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0B10BC8(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1B0B11A78(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B10D2C(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B1B00(a1, v6, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 10:
      v40 = *v6;
      v41 = *(v6 + 1);
      v42 = *(v6 + 2);
      if (*(*v6 + 16))
      {
        v44 = *(v40 + 64);
        v43 = *(v40 + 72);
        v45 = *(v40 + 80);
        if (v44)
        {
          v58[1] = *(v40 + 88);
          v60 = v41;
          v59 = *(v40 + 56);
          v47 = *(v40 + 32);
          v46 = *(v40 + 40);
          v48 = *(v40 + 48) | (*(v40 + 54) << 48) | (*(v40 + 52) << 32);
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v49 = MailboxName.init(_:)(v47, v46, v48);
          v50 = Namespace.init(prefix:separator:)(v49, v59, v44);
          v52 = v51;
          v54 = v53;

          swift_bridgeObjectRelease_n();

LABEL_23:
          v56 = *(v1 + 96);
          v57 = *(v1 + 104);
          result = sub_1B07BA794(*(v1 + 88));
          *(v1 + 88) = v50;
          *(v1 + 96) = v52;
          *(v1 + 104) = v54;
          return result;
        }

        v55 = *(v40 + 72);
      }

      v50 = 0;
      v52 = 0;
      v54 = 0;
      goto LABEL_23;
    case 9:
      v23 = *v6;
      v24 = *(v6 + 2);
      v25 = *(v6 + 6);
      v66 = *(v6 + 5);
      v67 = v25;
      v26 = *(v6 + 8);
      v68 = *(v6 + 7);
      v69 = v26;
      v27 = *(v6 + 2);
      v62 = *(v6 + 1);
      v63 = v27;
      v28 = *(v6 + 4);
      v64 = *(v6 + 3);
      v65 = v28;
      v29 = sub_1B0B6C038(v61, v23, v24);
      v31 = v30;
      v32 = *v30;
      sub_1B0B11B9C(&v62);
      if (v32)
      {
        if (BYTE8(v62) & 1) != 0 || (v64 & 1) != 0 || (BYTE8(v64))
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 1;
        }

        else
        {
          v39 = 0;
          v33 = v62;
          v35 = v65;
          v36 = BYTE8(v65);
          v37 = v67;
          v38 = BYTE8(v67);
          v34 = HIDWORD(v63) | (DWORD1(v64) << 32);
        }

        v31[3] = v33;
        v31[4] = v34;
        v31[5] = v35;
        v31[6] = v36;
        v31[7] = v37;
        *(v31 + 64) = v38;
        *(v31 + 65) = v39;
        (v29)(v61, 0);
      }

      else
      {
        (v29)(v61, 0);
      }

    case 7:
      v9 = *v6;
      v8 = *(v6 + 1);
      v10 = *(v6 + 4);
      v11 = v6[20];
      v12 = *(v6 + 3);
      v13 = *(v6 + 4);
      v14 = *(v6 + 5);
      if (*(v1 + 80) == 1 && !*(v1 + 88))
      {
        v15 = sub_1B0B9C9AC(v11);
        if (v16)
        {
          *(v1 + 88) = Namespace.init(prefix:separator:)(MEMORY[0x1E69E7CC0], v15, v16);
          *(v1 + 96) = v17;
          *(v1 + 104) = v18;
        }
      }

      swift_bridgeObjectRetain_n();
      v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      RemoteMailbox.init(attributes:path:)(v19, v8, v10 | (v11 << 32), &v62);
      v20 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = *v1;
      sub_1B0A9BF5C(&v62, v8, v10, isUniquelyReferenced_nonNull_native);

      swift_bridgeObjectRelease_n();

      *v1 = v61[0];
      break;
    default:
      return sub_1B03B1D60(v6, type metadata accessor for UntaggedResponse);
  }

  return result;
}

unint64_t sub_1B0B1117C(unint64_t result)
{
  if (*(v1 + 112) != 2 || ((result >> 59) & 0x1E | (result >> 2) & 1) != 4)
  {
    return result;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = 0;
  v7 = v4 - 1;
  v8 = 32;
  v52 = v3;
  v53 = v4 - 1;
  do
  {
    v9 = *(v3 + v8 + 32);
    v10 = *(v3 + v8 + 48);
    v11 = *(v3 + v8 + 64);
    *&v67[9] = *(v3 + v8 + 73);
    *v67 = v11;
    v12 = *(v3 + v8 + 16);
    v63 = *(v3 + v8);
    v64 = v12;
    v65 = v9;
    v66 = v10;
    v13 = *&v67[16];
    v14 = *(&v11 + 1);
    sub_1B0B11A84(&v63, &v58);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v14, v13, 0, 0) & 1) == 0 || v67[24] != 1)
    {
      goto LABEL_28;
    }

    v15 = *v54;
    if (!*(*v54 + 16) || (v16 = sub_1B03AB888(v64, DWORD2(v64)), (v17 & 1) == 0))
    {
      v56 = 0;
      v55 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
LABEL_16:
      sub_1B0B11AE0(&v63);
      *&v58 = 0;
      *(&v58 + 1) = v22;
      *&v59 = v24;
      *(&v59 + 1) = v23;
      *&v60 = v25;
      *(&v60 + 1) = v26;
      *&v61 = v28;
      *(&v61 + 1) = v27;
      LOBYTE(v62) = v55;
      HIBYTE(v62) = v56;
      sub_1B0B11B34(&v58);
LABEL_17:
      v3 = v52;
      v7 = v53;
      if (v53 == v6)
      {
      }

      goto LABEL_29;
    }

    v18 = *(v15 + 56) + 72 * v16;
    v58 = *v18;
    v19 = *(v18 + 64);
    v21 = *(v18 + 32);
    v20 = *(v18 + 48);
    v59 = *(v18 + 16);
    v60 = v21;
    v61 = v20;
    v62 = v19;
    v22 = *(&v58 + 1);
    v49 = v58;
    v23 = *(&v59 + 1);
    v24 = v59;
    v26 = *(&v21 + 1);
    v25 = v21;
    v27 = *(&v20 + 1);
    v28 = v20;
    v55 = v19;
    v56 = HIBYTE(v19);
    sub_1B03BB0B4(&v58, &v57);
    if (!v49)
    {
      goto LABEL_16;
    }

    v58 = __PAIR128__(v22, v49);
    v59 = __PAIR128__(v23, v24);
    v60 = __PAIR128__(v26, v25);
    v61 = __PAIR128__(v27, v28);
    v62 = __PAIR16__(v56, v55);
    sub_1B0B11B34(&v58);
    if (v56)
    {
      sub_1B0B11AE0(&v63);
      goto LABEL_17;
    }

    v29 = v28;
    v3 = v52;
    v7 = v53;
    if (v55 & 1) != 0 || (v67[0])
    {
      goto LABEL_28;
    }

    if (((*(&v66 + 1) | v27) & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if (v27 != *(&v66 + 1))
    {
LABEL_28:
      sub_1B0B11AE0(&v63);
      if (v7 == v6)
      {
      }

      goto LABEL_29;
    }

    v30 = v63;
    v31 = v54[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v54[1];
    v32 = v57;
    v33 = sub_1B03B8A9C(v30, *(&v30 + 1));
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_40;
    }

    if (v32[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v57;
        if ((v34 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v51 = v33;
        v44 = v34;
        sub_1B0B8D4FC();
        v45 = v44;
        v33 = v51;
        v42 = v57;
        if ((v45 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v39 = v34;
      sub_1B0B2F9F0(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1B03B8A9C(v30, *(&v30 + 1));
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_42;
      }

      v41 = v39;
      v42 = v57;
      if ((v41 & 1) == 0)
      {
LABEL_35:
        v42[(v33 >> 6) + 8] |= 1 << v33;
        *(v42[6] + 16 * v33) = v30;
        v46 = v42[7] + 24 * v33;
        *v46 = 0;
        *(v46 + 4) = 1;
        *(v46 + 8) = v26;
        *(v46 + 16) = v29 & 1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B11AE0(&v63);
        v47 = v42[2];
        v37 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v37)
        {
          goto LABEL_41;
        }

        v42[2] = v48;
        goto LABEL_37;
      }
    }

    v43 = v42[7] + 24 * v33;
    *v43 = 0;
    *(v43 + 4) = 1;
    *(v43 + 8) = v26;
    *(v43 + 16) = v29 & 1;
    sub_1B0B11AE0(&v63);
LABEL_37:
    v54[1] = v42;
    if (v53 == v6)
    {
    }

LABEL_29:
    ++v6;
    v8 += 96;
  }

  while (v6 < *(v3 + 16));
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B11584(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v29 = a4;
  v24 = result;
  v25 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 48) + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(a3 + 56) + 72 * v14;
    v27[0] = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v28 = *(v18 + 64);
    v27[2] = v20;
    v27[3] = v19;
    v27[1] = v21;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BB0B4(v27, v26);
    LOBYTE(v17) = v29(v16, v17, v27);
    sub_1B039E440(v27);

    if (v17)
    {
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1B0B22180(v24, a2, v25, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1B0B22180(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B11728(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1B0B11584(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1B0B10A54(v11, v6, v4, a2);
  result = MEMORY[0x1B272C230](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0B11958@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = sub_1B0E460B8();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = sub_1B0B10BC8(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = sub_1B0E460B8();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = sub_1B0B10AE4(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B0B11A78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0B11B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4568, &qword_1B0EC55C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B11C58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v35 = a3;
  v42 = type metadata accessor for TaskHistory.Running(0);
  v34 = *(v42 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v33 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  result = sub_1B0A9E3F4(a1, a2 & 1, a5);
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  v21 = 0;
  v36 = result + 32;
  v39 = result;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v40 + 16);
    if (v22)
    {
      break;
    }

LABEL_3:
    ++v21;
    result = v39;
    if (v21 == v38)
    {
      goto LABEL_19;
    }
  }

  v23 = *(v36 + 4 * v21);
  v24 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v25 = *(v37 + 72);
  while (1)
  {
    sub_1B03B1B00(v24, v19, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v19, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v24 += v25;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

  v26 = *(v16 + 2);
  sub_1B03E1BE8(*v16);
  if (v26 != v23)
  {
    goto LABEL_8;
  }

  v27 = *(v35 + 16);
  if (v27)
  {
    v28 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      v30 = v41;
      sub_1B03B1B00(v28, v41, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v30, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v10 + 1);
        sub_1B03E1BE8(*(v10 + 1));
        if (v31 == v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v10, type metadata accessor for TaskHistory.Running);
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v32 = 1;
LABEL_20:

  return v32;
}

uint64_t sub_1B0B11FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v41 = a3;
  v36 = a2;
  v43 = type metadata accessor for TaskHistory.Running(0);
  v35 = *(v43 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v34 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  result = a5(a1, a4, v18);
  v39 = *(result + 16);
  if (!v39)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  v22 = 0;
  v37 = result + 32;
  v40 = result;
  while (1)
  {
    if (v22 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v23 = *(v41 + 16);
    if (v23)
    {
      break;
    }

LABEL_3:
    ++v22;
    result = v40;
    if (v22 == v39)
    {
      goto LABEL_19;
    }
  }

  v24 = *(v37 + 4 * v22);
  v25 = v41 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v26 = *(v38 + 72);
  while (1)
  {
    sub_1B03B1B00(v25, v20, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v20, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v25 += v26;
    if (!--v23)
    {
      goto LABEL_3;
    }
  }

  v27 = *(v16 + 2);
  sub_1B03E1BE8(*v16);
  if (v27 != v24)
  {
    goto LABEL_8;
  }

  v28 = *(v36 + 16);
  if (v28)
  {
    v29 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v30 = *(v35 + 72);
    do
    {
      v31 = v42;
      sub_1B03B1B00(v29, v42, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v31, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *(v10 + 1);
        sub_1B03E1BE8(*(v10 + 1));
        if (v32 == v24)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v10, type metadata accessor for TaskHistory.Running);
      }

      v29 += v30;
      --v28;
    }

    while (v28);
  }

  v33 = 1;
LABEL_20:

  return v33;
}

uint64_t sub_1B0B12358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v35 = a3;
  v42 = type metadata accessor for TaskHistory.Running(0);
  v34 = *(v42 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v33 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  result = sub_1B0A9F194(a1, a2, a5);
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  v21 = 0;
  v36 = result + 32;
  v39 = result;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v22 = *(v40 + 16);
    if (v22)
    {
      break;
    }

LABEL_3:
    ++v21;
    result = v39;
    if (v21 == v38)
    {
      goto LABEL_19;
    }
  }

  v23 = *(v36 + 4 * v21);
  v24 = v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v25 = *(v37 + 72);
  while (1)
  {
    sub_1B03B1B00(v24, v19, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v19, v16, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v16, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v24 += v25;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

  v26 = *(v16 + 2);
  sub_1B03E1BE8(*v16);
  if (v26 != v23)
  {
    goto LABEL_8;
  }

  v27 = *(v35 + 16);
  if (v27)
  {
    v28 = v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v29 = *(v34 + 72);
    do
    {
      v30 = v41;
      sub_1B03B1B00(v28, v41, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v30, v10, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v10 + 1);
        sub_1B03E1BE8(*(v10 + 1));
        if (v31 == v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v10, type metadata accessor for TaskHistory.Running);
      }

      v28 += v29;
      --v27;
    }

    while (v27);
  }

  v32 = 1;
LABEL_20:

  return v32;
}

uint64_t sub_1B0B126CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v33 = a2;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - v10;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  result = sub_1B0A9F750(a1 & 1, a4);
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 32;
  v37 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    ++v19;
    result = v37;
    if (v19 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v19);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_1B03B1B00(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v17, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B03B1D60(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *(v14 + 2);
  sub_1B03E1BE8(*v14);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      v28 = v39;
      sub_1B03B1B00(v26, v39, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v28, v8, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = *(v8 + 1);
        sub_1B03E1BE8(*(v8 + 1));
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B03B1D60(v8, type metadata accessor for TaskHistory.Running);
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v30 = 1;
LABEL_20:

  return v30;
}

uint64_t sub_1B0B12A70(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B12B64(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9))));
      v15 = *v14;
      LODWORD(v14) = *(v14 + 8);
      v16 = v15;
      v17 = v14;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a1(&v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1B0B12CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_1B03B5F54(v13, v14);
}

_DWORD *sub_1B0B12D88@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result & 0xFFFFFF;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B0B12DA8()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B12DF0()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B12E34(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v62 = a3;
  v63 = a4;
  LODWORD(v67) = a2;
  v61 = _s12LocalMailboxV6LoggerVMa();
  v6 = *(*(v61 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v61);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v60 - v11;
  v12 = type metadata accessor for PendingPersistenceUpdates();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s13SelectedStateV7WrappedVMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for MailboxSyncState();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 96);
  v77 = v24;
  v25 = *(a1 + 32);
  v79 = *(a1 + 16);
  v80 = v25;
  v81[0] = *(a1 + 48);
  *(v81 + 11) = *(a1 + 59);
  v78 = *a1;
  v26 = *a1;
  if (*a1)
  {
    v72 = *a1;
    v73 = *(a1 + 8);
    v74 = *(a1 + 24);
    v75 = *(a1 + 40);
    *v76 = *(a1 + 56);
    *&v76[15] = *(a1 + 71);
    v27 = v4;
    if (v73 | (v73 << 32)) == (*(v4 + 24) | (*(v4 + 24) << 32)) && (sub_1B04520BC(v26, *(v4 + 16)))
    {
      v28 = v4;
      sub_1B03B5C80(a1, v68, &qword_1EB6E4580, &qword_1B0EC5720);
      sub_1B03B5C80(a1, v68, &qword_1EB6E4580, &qword_1B0EC5720);

      sub_1B0B395EC(&v72, v62, v23);
      sub_1B0398EFC(&v77, &qword_1EB6E4578, &qword_1B0EC5718);
      v29 = *(v4 + 84);
      v30 = *(v4 + 88);
      *v19 = v67;
      sub_1B0B149EC(v23, v19 + *(v16 + 20), type metadata accessor for MailboxSyncState);
      v31 = v19 + *(v16 + 24);
      *v31 = v29;
      v31[4] = v30;
      v32 = _s13SelectedStateV8_StorageCMa(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v35 = swift_allocObject();
      sub_1B0B149EC(v19, v35 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(v28 + 96) = v35;
      return result;
    }

    sub_1B03B5C80(a1, v68, &qword_1EB6E4580, &qword_1B0EC5720);

    if (!v24)
    {
      return sub_1B0398EFC(&v77, &qword_1EB6E4578, &qword_1B0EC5718);
    }
  }

  else
  {

    v27 = v4;
    if (!v24)
    {
      return sub_1B0398EFC(&v77, &qword_1EB6E4578, &qword_1B0EC5718);
    }
  }

  v37 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  if (*(v24 + v37) != v67)
  {
    return sub_1B0398EFC(&v77, &qword_1EB6E4578, &qword_1B0EC5718);
  }

  v38 = v24 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  sub_1B03D0E68(v38 + *(v16 + 20) + *(v20 + 52), v15, type metadata accessor for PendingPersistenceUpdates);
  v69 = MEMORY[0x1E69E7CD0];
  if (*v15 == 1)
  {
    swift_retain_n();
    sub_1B03BDD7C(v71, 6);
  }

  else
  {
    swift_retain_n();
  }

  if (v15[1] == 1)
  {
    sub_1B03BDD7C(v71, 7);
  }

  if (v15[2] == 1)
  {
    sub_1B03BDD7C(v71, 8);
  }

  v39 = v69;
  sub_1B03D44D0(v15, type metadata accessor for PendingPersistenceUpdates);
  v40 = *(v39 + 16);

  if (v40)
  {
    v41 = v63;
    v42 = v66;
    sub_1B03D0E68(v63, v66, _s12LocalMailboxV6LoggerVMa);
    v43 = v64;
    sub_1B03D0E68(v41, v64, _s12LocalMailboxV6LoggerVMa);
    v44 = v65;
    sub_1B03D0E68(v41, v65, _s12LocalMailboxV6LoggerVMa);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v45 = sub_1B0E43988();
    v46 = sub_1B0E458C8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71[0] = v63;
      *v47 = 68158979;
      LODWORD(v62) = v46;
      v48 = v44;
      v49 = v43;
      v67 = v27;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v50 = v61;
      v51 = *(v43 + *(v61 + 20));
      sub_1B03D44D0(v49, _s12LocalMailboxV6LoggerVMa);
      *(v47 + 10) = v51;
      *(v47 + 11) = 1040;
      *(v47 + 13) = 2;
      *(v47 + 17) = 512;
      v52 = *(v48 + *(v50 + 20) + 2);
      sub_1B03D44D0(v48, _s12LocalMailboxV6LoggerVMa);
      *(v47 + 19) = v52;
      *(v47 + 21) = 2160;
      *(v47 + 23) = 0x786F626C69616DLL;
      *(v47 + 31) = 2085;
      v53 = v42 + *(v50 + 20);
      v54 = *(v53 + 8);
      v55 = *(v53 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D44D0(v42, _s12LocalMailboxV6LoggerVMa);
      v69 = v54;
      v70 = v55;
      v56 = sub_1B0E44BA8();
      v58 = sub_1B0399D64(v56, v57, v71);

      *(v47 + 33) = v58;
      v27 = v67;
      _os_log_impl(&dword_1B0389000, v45, v62, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox has pending updates while being deselected.", v47, 0x29u);
      v59 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1B272C230](v59, -1, -1);
      MEMORY[0x1B272C230](v47, -1, -1);
    }

    else
    {
      sub_1B03D44D0(v44, _s12LocalMailboxV6LoggerVMa);
      sub_1B03D44D0(v43, _s12LocalMailboxV6LoggerVMa);

      sub_1B03D44D0(v42, _s12LocalMailboxV6LoggerVMa);
    }

    Set<>.formNonEmpty()();
  }

  sub_1B0398EFC(&v77, &qword_1EB6E4578, &qword_1B0EC5718);

  *(v27 + 96) = 0;
  return result;
}

void sub_1B0B13584(int a1, uint64_t a2)
{
  v45 = a2;
  v46 = a1;
  v39 = _s19UserInitiatedSearchV5StateOMa(0);
  v5 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v35 - v14;
  v36 = _s19UserInitiatedSearchVMa(0);
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v35 - v19);
  v21 = *(v2 + 152);
  v41 = (v2 + 152);
  v22 = v21[2];
  if (!v22)
  {
    return;
  }

  v23 = 0;
  while (1)
  {
    if (v23 >= v21[2])
    {
      __break(1u);
LABEL_17:
      v21 = sub_1B0B8C93C(v21);
      goto LABEL_10;
    }

    v3 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v4 = *(v15 + 72) * v23;
    sub_1B03D0E68(v21 + v3 + v4, v20, _s19UserInitiatedSearchVMa);
    v24 = *v20;
    sub_1B03D44D0(v20, _s19UserInitiatedSearchVMa);
    if (v24 == v46)
    {
      break;
    }

    if (v22 == ++v23)
    {
      return;
    }
  }

  v25 = v44;
  sub_1B03B5C80(v45, v44, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v42 + 48))(v25, 1, v43) == 1)
  {
    sub_1B0398EFC(v25, &unk_1EB6E3670, &unk_1B0E9B260);
    v26 = v38;
    sub_1B0BAFFB0(v23, v38);
    sub_1B03D44D0(v26, _s19UserInitiatedSearchVMa);
    return;
  }

  sub_1B074BA2C(v25, v40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v23 >= v21[2])
  {
    __break(1u);
  }

  else
  {
    v27 = v37;
    v28 = v21 + v3 + *(v36 + 20);
    sub_1B03D0E68(&v28[v4], v37, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0398EFC(v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D44D0(v27, _s19UserInitiatedSearchV5StateOMa);
    }

    else
    {
      sub_1B03D44D0(v27, _s19UserInitiatedSearchV5StateOMa);
      v29 = v40;
      v30 = v35;
      sub_1B03B5C80(v40, v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
      MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
      v32 = *(MessagesVMa + 20);
      sub_1B03D06F8();
      sub_1B0E46EE8();
      sub_1B0398EFC(v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v33 = *(MessagesVMa + 24);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      (*(*(v34 - 8) + 56))(v30 + v33, 1, 1, v34);
      swift_storeEnumTagMultiPayload();
      sub_1B0B14B64(v30, &v28[v4]);
    }

    *v41 = v21;
  }
}

uint64_t sub_1B0B13A74(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 152);
  v4 = v3[2];
  if (v4)
  {
    v5 = v2;
    v7 = result;
    v8 = *(v2 + 152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v3 = sub_1B0B8C93C(v3);
    }

    v9 = 0;
    do
    {
      if (v9 >= v3[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v10 = v9 + 1;
      v11 = *(_s19UserInitiatedSearchVMa(0) - 8);
      v12 = v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9;
      result = sub_1B0BC7F44(v7, a2);
      v9 = v10;
    }

    while (v4 != v10);
    *(v5 + 152) = v3;
  }

  return result;
}

uint64_t sub_1B0B13B6C(uint64_t a1)
{
  v2 = v1;
  v44 = _s13SelectedStateV7WrappedVMa(0);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0B1476C((v1 + 144), a1);

  v8 = *(*(v2 + 144) + 16);
  if (v8 >= v6)
  {
    sub_1B0BAD234(v6, v8);
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = 0;
    v15 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
    v42 = v2;
    v43 = a1;
    while (v12)
    {
      v16 = v12;
LABEL_13:
      v12 = (v16 - 1) & v16;
      if (*(v2 + 96))
      {
        v18 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v16)))));
        v19 = *v18;
        v20 = v18[1];
        sub_1B03B2000(*v18, v20);
        v21 = *(v2 + 96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v2 + 96);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = v15[81];
          swift_beginAccess();
          v25 = v23 + v24;
          v26 = v41;
          sub_1B03D0E68(v25, v41, _s13SelectedStateV7WrappedVMa);
          v27 = _s13SelectedStateV8_StorageCMa(0);
          v28 = *(v27 + 48);
          v29 = *(v27 + 52);
          v30 = swift_allocObject();
          sub_1B0B149EC(v26, v30 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(v2 + 96) = v30;
          v23 = v30;
          v15 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
        }

        v31 = v23 + v15[81];
        swift_beginAccess();
        v32 = v31 + *(v44 + 20);
        v33 = *(type metadata accessor for MailboxSyncState() + 56);
        v34 = *(v32 + v33);
        v35 = sub_1B0AE002C(v19, v20);
        if (v36)
        {
          v37 = v35;
          v38 = *(v32 + v33);
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v32 + v33);
          v45 = v40;
          *(v32 + v33) = 0x8000000000000000;
          if (!v39)
          {
            sub_1B0B8DE40();
            v40 = v45;
          }

          sub_1B0391D50(*(*(v40 + 48) + 16 * v37), *(*(v40 + 48) + 16 * v37 + 8));
          sub_1B0B90414(v37, v40);
          *(v32 + v33) = v40;
        }

        swift_endAccess();
        result = sub_1B0391D50(v19, v20);
        v2 = v42;
        a1 = v43;
        v15 = &OBJC_IVAR____TtC15IMAP2Connection10Connection_receiveTranscoder;
      }
    }

    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v17 >= v13)
      {
      }

      v16 = *(v9 + 8 * v17);
      ++v14;
      if (v16)
      {
        v14 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B0B13E58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxSyncState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a2;
  v24 = v2;
  result = sub_1B0B12A70(sub_1B0B149D0, v22, a1);
  v10 = *(v2 + 96);
  if (v10)
  {
    v11 = v10 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v12 = _s13SelectedStateV7WrappedVMa(0);
    result = (v11 + *(v12 + 20));
    if (*(result[19] + 16) == 15 && !*(result[20] + 16) && !*(result[21] + 16))
    {
      v13 = (v11 + *(v12 + 24));
      v14 = *v13;
      v15 = *(v13 + 4);
      sub_1B03D0E68(result, v8, type metadata accessor for MailboxSyncState);
      v16 = *(v8 + 4);
      v17 = v8[20];
      v18 = *(v8 + 3);
      v19 = v8[32];
      result = sub_1B03D44D0(v8, type metadata accessor for MailboxSyncState);
      *(v2 + 104) = v14;
      if (v17 & 1 | (v19 > 1))
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

      *(v2 + 108) = v15;
      if (v17 & 1 | (v19 > 1))
      {
        v21 = 0;
      }

      else
      {
        v21 = v18;
      }

      *(v2 + 112) = v20;
      *(v2 + 120) = v21;
      *(v2 + 128) = v17 & 1 | (v19 > 1);
    }
  }

  return result;
}

uint64_t sub_1B0B13FEC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13SelectedStateV7WrappedVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *a1;
  sub_1B03D0E68(a2, &v46 - v14, type metadata accessor for MailboxTaskLogger);
  sub_1B03D0E68(a2, v13, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v17 = sub_1B0E43988();
  v18 = sub_1B0E458C8();
  if (!os_log_type_enabled(v17, v18))
  {
    sub_1B03D44D0(v13, type metadata accessor for MailboxTaskLogger);

    sub_1B03D44D0(v15, type metadata accessor for MailboxTaskLogger);
    result = *(a3 + 96);
    if (!result)
    {
      return result;
    }

LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(a3 + 96);
      v37 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      v38 = v49;
      sub_1B03D0E68(v36 + v37, v49, _s13SelectedStateV7WrappedVMa);
      v39 = _s13SelectedStateV8_StorageCMa(0);
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      v42 = swift_allocObject();
      sub_1B0B149EC(v38, v42 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);
      *(a3 + 96) = v42;
    }

    v43 = *(a3 + 96) + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v44 = (v43 + *(v6 + 20));
    if (sub_1B0A94670(v16, v44[20]))
    {
      sub_1B03BDE74(v16);
      v45 = v16;
    }

    else
    {
      if ((sub_1B0A94670(v16, v44[19]) & 1) == 0 || (sub_1B0A94670(v16, v44[21]) & 1) == 0)
      {
        sub_1B03BDD7C(&v53, v16);
        return swift_endAccess();
      }

      v45 = v16;
    }

    sub_1B03BDE74(v45);
    return swift_endAccess();
  }

  v19 = swift_slowAlloc();
  v48 = v6;
  v20 = v19;
  v47 = swift_slowAlloc();
  v50[0] = v47;
  *v20 = 68159491;
  *(v20 + 4) = 2;
  *(v20 + 8) = 256;
  v21 = *(v9 + 20);
  v46 = v17;
  v22 = &v13[v21];
  *(v20 + 10) = v13[v21];
  *(v20 + 11) = 2082;
  v23 = *(v9 + 20);
  v52 = v18;
  v24 = &v15[v23];
  *(v20 + 13) = sub_1B0399D64(*&v15[v23 + 8], *&v15[v23 + 16], v50);
  *(v20 + 21) = 1040;
  *(v20 + 23) = 2;
  *(v20 + 27) = 512;
  LOWORD(v22) = *(v22 + 12);
  sub_1B03D44D0(v13, type metadata accessor for MailboxTaskLogger);
  *(v20 + 29) = v22;
  *(v20 + 31) = 2160;
  *(v20 + 33) = 0x786F626C69616DLL;
  *(v20 + 41) = 2085;
  v25 = *(v24 + 4);
  LODWORD(v24) = *(v24 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03D44D0(v15, type metadata accessor for MailboxTaskLogger);
  v50[3] = v25;
  v51 = v24;
  v26 = sub_1B0E44BA8();
  v28 = sub_1B0399D64(v26, v27, v50);

  *(v20 + 43) = v28;
  *(v20 + 51) = 2080;
  v29 = sub_1B0BAEDAC(v16);
  v31 = sub_1B0399D64(v29, v30, v50);

  *(v20 + 53) = v31;
  v32 = v46;
  _os_log_impl(&dword_1B0389000, v46, v52, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking step %s as complete.", v20, 0x3Du);
  v33 = v47;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v33, -1, -1);
  v34 = v20;
  v6 = v48;
  MEMORY[0x1B272C230](v34, -1, -1);

  result = *(a3 + 96);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1B0B144C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  if (v2 == 1)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728DB0](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0B14538()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x1B2728D70](0);
  }

  v2 = *v0;
  MEMORY[0x1B2728D70](1);
  return MEMORY[0x1B2728DB0](v2);
}

uint64_t sub_1B0B14588()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  if (v2 == 1)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728DB0](v1);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0B145F4(_BOOL8 result, uint64_t a2)
{
  if (*(result + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return *a2 == *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B1463C(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  if ((result & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v8 = result;
  result = 0;
  if ((a5 & 0x100000000) == 0 && v8 == a5)
  {
LABEL_6:
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a2 == a6)
    {
      if ((a7 | a3) < 0)
      {
        __break(1u);
        return result;
      }

      if (a7 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0B1469C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 56); ; i += 5)
  {
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    sub_1B03B2000(v6, v7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0A92A68(v6, v7, a2);
    sub_1B0391D50(v6, v7);

    if (v9)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B0B1476C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_1B0B1469C(*a1, a2);
  v38 = result;
  if (v2)
  {
    return v38;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v8 = (v3 + 16);
    v7 = *(v3 + 16);
    if (v6 == v7)
    {
      return v38;
    }

    v9 = 40 * result + 104;
    while (v6 < v7)
    {
      v15 = v3 + v9;
      v16 = *(v3 + v9 - 24);
      v17 = *(v3 + v9 - 16);
      v18 = *(v3 + v9 - 8);
      sub_1B03B2000(v16, v17);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = sub_1B0A92A68(v16, v17, a2);
      sub_1B0391D50(v16, v17);

      if ((v19 & 1) == 0)
      {
        v14 = v38;
        if (v6 != v38)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v38 >= *v8)
          {
            goto LABEL_24;
          }

          if (v6 >= *v8)
          {
            goto LABEL_25;
          }

          v20 = 40 * v38;
          v21 = v3 + 32 + 40 * v38;
          v22 = *(v21 + 24);
          v31 = *(v21 + 32);
          v34 = *v21;
          v35 = *(v15 - 32);
          v24 = *(v15 - 24);
          v23 = *(v15 - 16);
          v25 = *(v15 - 8);
          v26 = *(v3 + v9);
          v33 = *(v21 + 8);
          v32 = *(v21 + 16);
          sub_1B03B2000(v33, v32);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v24, v23);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0B8C964(v3);
            v3 = result;
          }

          if (v38 >= *(v3 + 16))
          {
            goto LABEL_26;
          }

          v27 = v3 + v20;
          v28 = *(v3 + v20 + 40);
          v29 = *(v3 + v20 + 48);
          v30 = *(v3 + v20 + 56);
          *(v27 + 32) = v35;
          *(v27 + 40) = v24;
          *(v27 + 48) = v23;
          *(v27 + 56) = v25;
          *(v27 + 64) = v26;
          sub_1B0391D50(v28, v29);

          if (v6 >= *(v3 + 16))
          {
            goto LABEL_27;
          }

          v10 = (v3 + v9);
          v11 = *(v3 + v9 - 24);
          v12 = *(v3 + v9 - 16);
          v13 = *(v3 + v9 - 8);
          *(v10 - 8) = v34;
          *(v10 - 3) = v33;
          *(v10 - 2) = v32;
          *(v10 - 1) = v22;
          *v10 = v31;
          sub_1B0391D50(v11, v12);

          *a1 = v3;
          v14 = v38;
        }

        v38 = v14 + 1;
      }

      ++v6;
      v8 = (v3 + 16);
      v7 = *(v3 + 16);
      v9 += 40;
      if (v6 == v7)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B149EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B14A7C()
{
  result = sub_1B0E439A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0B14AF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B14B10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1B0B14B64(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchV5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0B14BDC()
{
  result = qword_1EB6E4588;
  if (!qword_1EB6E4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4588);
  }

  return result;
}

uint64_t sub_1B0B14C30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v16 = *(a3 + 16);
  v17 = result;
  if (v16)
  {
    v4 = 0;
    v5 = (a3 + 52);
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v3 + 16))
    {
      v7 = *(v5 - 5);
      v8 = *(v5 - 12);
      v9 = *(v5 - 1);
      v10 = *v5;
      v19 = v7;
      v20 = v8;
      v21 = v9;
      v22 = v10;
      j___s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v17(&v19);
      if (v18)
      {
        j__swift_bridgeObjectRelease();

        goto LABEL_15;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v6;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09D84(0, *(v6 + 16) + 1, 1);
          v6 = v23;
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09D84((v12 > 1), v13 + 1, 1);
          v6 = v23;
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 24 * v13;
        *(v14 + 32) = v7;
        *(v14 + 40) = v8;
        *(v14 + 48) = v9;
        *(v14 + 52) = v10;
        v3 = a3;
      }

      else
      {
        result = j__swift_bridgeObjectRelease();
      }

      ++v4;
      v5 += 24;
      if (v16 == v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v6;
  }

  return result;
}

uint64_t sub_1B0B14DE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09DA4(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09DA4((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v14;
        v15 = v7 + 24 * v13;
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        *(v15 + 48) = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_1B0B14F6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09E04(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09E04((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v14;
        v15 = v7 + 24 * v13;
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        *(v15 + 48) = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

uint64_t sub_1B0B150F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 4);
      v10 = *(v6 - 1);
      v9 = *v6;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = v18(&v19);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B09EC4(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1B0B09EC4((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v14;
        v15 = v7 + 24 * v13;
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        *(v15 + 48) = v9;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 3;
      if (v17 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

void sub_1B0B1527C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1B03B5C80(a3 + v15 + v16 * v13, v12, &qword_1EB6E4280, &qword_1B0EC4800);
      v17 = a1(v12);
      if (v3)
      {
        sub_1B0398EFC(v12, &qword_1EB6E4280, &qword_1B0EC4800);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1B03C60A4(v12, v24, &qword_1EB6E4280, &qword_1B0EC4800);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0B0A064(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B0B0A064(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_1B03C60A4(v24, v14 + v15 + v20 * v16, &qword_1EB6E4280, &qword_1B0EC4800);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_1B0398EFC(v12, &qword_1EB6E4280, &qword_1B0EC4800);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1B0B15500(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v25 = *(SearchResult - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](SearchResult - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1B03BCDD0(a3 + v15 + v16 * v13, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v17 = a1(v12);
      if (v3)
      {
        sub_1B0B238BC(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1B0B24104(v12, v24, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0B0A184(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1B0B0A184(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_1B0B24104(v24, v14 + v15 + v20 * v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_1B0B238BC(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1B0B1578C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = 0;
    v6 = (a3 + 49);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v12 = *(v6 - 17);
      v13 = *(v6 - 9);
      v14 = *(v6 - 1);
      v15 = *v6;
      v19 = v12;
      v20 = v13;
      v21 = v14;
      v22 = v15;
      result = v18(&v19);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v23 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1B0B0A244(0, *(v7 + 16) + 1, 1);
          v7 = v23;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          result = sub_1B0B0A244((v8 > 1), v9 + 1, 1);
          v10 = v9 + 1;
          v3 = 0;
          v7 = v23;
        }

        *(v7 + 16) = v10;
        v11 = v7 + 24 * v9;
        *(v11 + 32) = v12;
        *(v11 + 40) = v13;
        *(v11 + 48) = v14;
        *(v11 + 49) = v15;
        v4 = a3;
      }

      ++v5;
      v6 += 24;
      if (v17 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_1B0B159C0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(BOOL, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = a4;
    v10 = result;
    v11 = 0;
    v12 = (a3 + 48);
    v13 = MEMORY[0x1E69E7CC0];
    v25 = result;
    v24 = *(a3 + 16);
    while (v11 < *(v7 + 16))
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v29 = *(v12 - 4);
      v30 = v14;
      v31 = v15;
      v9();
      v16 = v10(&v29);
      if (v6)
      {
        a5(v30, v31);

        goto LABEL_15;
      }

      if (v16)
      {
        v17 = v29;
        v19 = v30;
        v18 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v13;
        if ((result & 1) == 0)
        {
          result = a6(0, *(v13 + 16) + 1, 1);
          v13 = v32;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          result = a6(v20 > 1, v21 + 1, 1);
          v13 = v32;
        }

        *(v13 + 16) = v21 + 1;
        v22 = v13 + 24 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        *(v22 + 48) = v18;
        v9 = a4;
        v7 = a3;
        v10 = v25;
        v8 = v24;
      }

      else
      {
        result = (a5)(v30, v31);
      }

      ++v11;
      v12 += 3;
      if (v8 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1B0B15B88(uint64_t a1, void (*a2)(_BYTE *__return_ptr, _BYTE *), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = a1 + 32;
    v8 = *(a4 + 16);
    v38 = (a4 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v36 = a1 + 32;
    do
    {
      v20 = (v7 + 24 * v6);
      v21 = *v20;
      v22 = *(v20 + 1);
      v23 = *(v20 + 16);
      LOBYTE(v20) = *(v20 + 17);
      *v40 = v21;
      *&v40[8] = v22;
      v40[16] = v23;
      v40[17] = v20;
      v5(v39, v40);
      if (v8)
      {
        v24 = *v39;
        v25 = v38;
        v26 = v8;
        while (1)
        {
          v27 = v25[9];
          *&v40[128] = v25[8];
          *&v40[144] = v27;
          *&v40[160] = v25[10];
          *&v40[169] = *(v25 + 169);
          v28 = v25[5];
          *&v40[64] = v25[4];
          *&v40[80] = v28;
          v29 = v25[7];
          *&v40[96] = v25[6];
          *&v40[112] = v29;
          v30 = v25[1];
          *v40 = *v25;
          *&v40[16] = v30;
          v31 = v25[3];
          *&v40[32] = v25[2];
          *&v40[48] = v31;
          if (*v39 == *v40)
          {
            break;
          }

          v25 += 12;
          if (!--v26)
          {
            goto LABEL_4;
          }
        }

        sub_1B0A912A8(v40, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B0B00298(0, v9[2] + 1, 1, v9);
        }

        v33 = v9[2];
        v32 = v9[3];
        if (v33 >= v32 >> 1)
        {
          v9 = sub_1B0B00298((v32 > 1), v33 + 1, 1, v9);
        }

        *&v39[132] = *&v40[136];
        *&v39[148] = *&v40[152];
        *&v39[164] = *&v40[168];
        v39[180] = v40[184];
        *&v39[68] = *&v40[72];
        *&v39[84] = *&v40[88];
        *&v39[100] = *&v40[104];
        *&v39[116] = *&v40[120];
        *&v39[4] = *&v40[8];
        *&v39[20] = *&v40[24];
        *&v39[36] = *&v40[40];
        *&v39[52] = *&v40[56];
        v9[2] = v33 + 1;
        v10 = &v9[24 * v33];
        *(v10 + 8) = v24;
        v11 = *v39;
        v12 = *&v39[16];
        v13 = *&v39[32];
        *(v10 + 84) = *&v39[48];
        *(v10 + 68) = v13;
        *(v10 + 52) = v12;
        *(v10 + 36) = v11;
        v14 = *&v39[64];
        v15 = *&v39[80];
        v16 = *&v39[96];
        *(v10 + 148) = *&v39[112];
        *(v10 + 132) = v16;
        *(v10 + 116) = v15;
        *(v10 + 100) = v14;
        v17 = *&v39[128];
        v18 = *&v39[144];
        v19 = *&v39[160];
        *(v10 + 209) = *&v39[173];
        *(v10 + 196) = v19;
        *(v10 + 180) = v18;
        *(v10 + 164) = v17;
        v7 = v36;
        v5 = a2;
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v4);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
    v34 = sub_1B0E466A8();
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC8];
  }

  *v40 = v34;
  sub_1B0B234B8(v9, 1, v40);

  return *v40;
}

uint64_t sub_1B0B15E58(uint64_t a1)
{
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MessageIdentifierSet.insert(_:)(v12, &v11, v10))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(a1 + 48) + ((v8 << 8) | (4 * v9)));
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B15F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v12 = sub_1B0B7CD90(v11, a2, a3, v9, v10);
  if ((v12 & 1) != 0 && (a5 & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v13);
    v12 = (*(v14 + 56))(v13, v14) ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_1B0B16070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, char *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, char a15)
{
  v253 = a8;
  v254 = a7;
  v283 = a5;
  v272 = a2;
  v266 = a1;
  v261 = a9;
  v269 = type metadata accessor for SearchMailbox();
  v20 = *(*(v269 - 8) + 64);
  MEMORY[0x1EEE9AC00](v269);
  v268 = (&v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4590, &qword_1B0EC5900);
  v22 = *(*(v270 - 8) + 64);
  MEMORY[0x1EEE9AC00](v270);
  v267 = &v240 - v23;
  v285 = _s19UserInitiatedSearchV5StateOMa(0);
  v24 = *(*(v285 - 8) + 64);
  MEMORY[0x1EEE9AC00](v285);
  v276 = &v240 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = _s19UserInitiatedSearchVMa(0);
  v256 = *(v284 - 8);
  v26 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v284);
  v271 = (&v240 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = _s29DetermineMessageBatchesResultOMa(0);
  v28 = *(*(v248 - 8) + 64);
  MEMORY[0x1EEE9AC00](v248);
  v249 = &v240 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MessageBatches(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v247 = &v240 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for DownloadTask(0);
  v33 = *(*(v243 - 8) + 64);
  MEMORY[0x1EEE9AC00](v243);
  v244 = (&v240 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4598, &unk_1B0EC5908);
  v35 = *(*(v245 - 8) + 64);
  MEMORY[0x1EEE9AC00](v245);
  v246 = &v240 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v252 = &v240 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v257 = &v240 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v259 = &v240 - v43;
  v44 = type metadata accessor for MessagesPendingDownloadPerPass();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v255 = &v240 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MessagesPendingDownload();
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v250 = &v240 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v251 = &v240 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v280 = &v240 - v53;
  v258 = 0;
  v281 = _s29DetermineNewestMessagesResultOMa(0);
  v54 = *(*(v281 - 8) + 64);
  MEMORY[0x1EEE9AC00](v281);
  v56 = &v240 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = *(v15 + 172);
  v57 = *v15;
  v274 = *(v15 + 8);
  v58 = *(v15 + 16);
  v273 = *(v15 + 24);
  v262 = v15;
  v59 = *(v15 + 144);
  v60 = *(v59 + 16);
  v260 = a3;
  v277 = v58;
  v278 = v57;
  v242 = a4;
  v282 = v59;
  if (v60)
  {
    *&v293 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0A304(0, v60, 0);
    v61 = v293;
    v62 = (v59 + 48);
    do
    {
      v64 = *(v62 - 1);
      v63 = *v62;
      sub_1B03B2000(v64, *v62);
      *&v293 = v61;
      v66 = *(v61 + 16);
      v65 = *(v61 + 24);
      v16 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        sub_1B0B0A304((v65 > 1), v66 + 1, 1);
        v61 = v293;
      }

      v62 += 5;
      *(v61 + 16) = v16;
      v67 = v61 + 16 * v66;
      *(v67 + 32) = v64;
      *(v67 + 40) = v63;
      --v60;
    }

    while (v60);
    a3 = v260;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61 = MEMORY[0x1E69E7CC0];
  }

  v68 = sub_1B03D74A0(v61);

  v69 = v266 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v263 = _s13SelectedStateV7WrappedVMa(0);
  v70 = *(v263 + 20);
  v279 = v69;
  v71 = v69 + v70;
  v264 = type metadata accessor for MailboxSyncState();
  v72 = *(v71 + *(v264 + 56));
  *&v299 = MEMORY[0x1E69E7CD0];
  BYTE8(v299) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v73 = MEMORY[0x1E69E7CC0];
  v74 = sub_1B03D016C(MEMORY[0x1E69E7CC0]);
  v300 = v74;
  v75 = sub_1B03D753C(v72, v68);

  if (*(v75 + 16))
  {
    *&v293 = v278;
    *(&v293 + 1) = v274;
    LOWORD(v294) = v275;
    *(&v294 + 1) = v277;
    LODWORD(v295) = v273;
    *&v290 = v277;
    DWORD2(v290) = v273;
    *(&v295 + 1) = v75;
    *&v296 = &type metadata for GetUIDsForDownloadRequests;
    sub_1B0451F2C();
    sub_1B0E461E8();
    v305 = v297;
    v306 = v298;
    v307 = v299;
    v308 = v300;
    v301 = v293;
    v302 = v294;
    v303 = v295;
    v304 = v296;
    sub_1B0B0E0FC(&v301, v286);
    *&v286[120] = v73;
    *&v286[128] = v73;
    sub_1B0B0E134(&v301);
    *&v287[96] = *&v286[96];
    *&v287[112] = *&v286[112];
    *&v287[128] = *&v286[128];
    *&v287[32] = *&v286[32];
    *&v287[48] = *&v286[48];
    *&v287[64] = *&v286[64];
    *&v287[80] = *&v286[80];
    *v287 = *v286;
    *&v287[16] = *&v286[16];
    v74 = &qword_1B0EC5918;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45A0, &qword_1B0EC5918);
    *&v286[24] = v76;
    v77 = sub_1B0B23F6C(&qword_1EB6DD398, &qword_1EB6E45A0, &qword_1B0EC5918);
    *&v286[32] = v77;
    *v286 = swift_allocObject();
    sub_1B03B5C80(v287, *v286 + 16, &qword_1EB6E45A0, &qword_1B0EC5918);
    v78 = v283(v286);
    __swift_destroy_boxed_opaque_existential_0(v286);
    if (v78)
    {

      v79 = v261;
      v261[3] = v76;
      v79[4] = v77;
      result = swift_allocObject();
      *v79 = result;
      v81 = *&v287[112];
      *(result + 112) = *&v287[96];
      *(result + 128) = v81;
      *(result + 144) = *&v287[128];
      v82 = *&v287[48];
      *(result + 48) = *&v287[32];
      *(result + 64) = v82;
      v83 = *&v287[80];
      *(result + 80) = *&v287[64];
      *(result + 96) = v83;
      v84 = *&v287[16];
      *(result + 16) = *v287;
      *(result + 32) = v84;
      return result;
    }

    sub_1B0398EFC(v287, &qword_1EB6E45A0, &qword_1B0EC5918);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v241 = a13;
  LOBYTE(v85) = v262;
  sub_1B03D6DD0(v266, v283, a6, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v87 = v276;
  v88 = v280;
  if (EnumCaseMultiPayload == 1)
  {

    v89 = *(v56 + 1);
    v90 = v261;
    *v261 = *v56;
    *(v90 + 16) = v89;
    *(v90 + 32) = *(v56 + 4);
    return result;
  }

  sub_1B0B238BC(v56, _s29DetermineNewestMessagesResultOMa);
  if (qword_1EB6DDFC0 != -1)
  {
    swift_once();
  }

  v91 = v272;
  v92 = sub_1B03D9200(qword_1EB737DC0, v272, a3);
  v265 = a6;
  if ((v92 & 1) == 0)
  {

    goto LABEL_67;
  }

  v16 = v263;
  v93 = v264;
  v94 = v279;
  v95 = v279 + *(v263 + 20) + *(v264 + 52);
  v96 = v95 + *(type metadata accessor for PendingPersistenceUpdates() + 28);
  v85 = v255;
  sub_1B03BCDD0(v96, v255, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1B03BCDD0(v85, v88, type metadata accessor for MessagesPendingDownload);
  v97 = sub_1B0B238BC(v85, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v88 + 16) && !*(*(v94 + *(v16 + 20) + *(v93 + 56)) + 16))
  {

    sub_1B0B238BC(v88, type metadata accessor for MessagesPendingDownload);
    a3 = v260;
    v91 = v272;
    goto LABEL_67;
  }

  v98 = v259;
  v254(v97);
  v99 = v251;
  sub_1B03BCDD0(v88, v251, type metadata accessor for MessagesPendingDownload);
  a6 = &unk_1B0E9AF40;
  v88 = v257;
  sub_1B03B5C80(v98, v257, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v100 = *(v94 + *(v16 + 20) + *(v93 + 56));
  v16 = v250;
  sub_1B03BCDD0(v99, v250, type metadata accessor for MessagesPendingDownload);
  v101 = v252;
  sub_1B03B5C80(v88, v252, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v102 = swift_allocObject();
  *(v102 + 16) = v100;
  *&v301 = v282;
  *(&v301 + 1) = sub_1B0B23A04;
  *&v302 = v102;
  *(&v302 + 1) = sub_1B0B23460;
  *&v303 = 0;
  *(&v303 + 1) = sub_1B0B23474;
  *&v304 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v103 = sub_1B0B20C24(v16, v101, &v301);
  v105 = v104;
  v255 = v106;
  sub_1B0398EFC(v88, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v99, type metadata accessor for MessagesPendingDownload);
  v254 = v103;
  LODWORD(v253) = byte_1F2711300;
  if (byte_1F2711300)
  {
    a3 = v260;
    if (byte_1F2711300 == 1)
    {
      v107 = 11;
    }

    else
    {
      v107 = 13;
    }

    v111 = v257;
    v112 = sub_1B0B42388(v107, v103, v105 | ((HIDWORD(v105) & 1) << 32), v257);
    MEMORY[0x1EEE9AC00](v112);
    *(&v240 - 2) = v111;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v113 = v103;
    v114 = v258;
    v115 = sub_1B0B1578C(sub_1B0B23A0C, (&v240 - 4), v113);
    v258 = v114;
    v116 = sub_1B0B208F0(v115);
    sub_1B0398EFC(v111, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v110 = v116;
    v87 = v276;
    v117 = v279;
    v118 = v263;
    v119 = v264;
    v91 = v272;
    v74 = *(v116 + 16);
    if (!v74)
    {
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v108 = v255;
  v74 = *(v255 + 16);
  LOBYTE(v85) = v74 - 7;
  a3 = v260;
  v91 = v272;
  if (v74 > 7)
  {
    v109 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v110 = sub_1B0B20A30(v109, v108 + 32, v74 - 7, (2 * v74) | 1);
    v87 = v276;
    goto LABEL_30;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v120 = v74 - 1;
  v87 = v276;
  v110 = v108;
  if (v74 <= 1)
  {
LABEL_30:
    v117 = v279;
    v118 = v263;
    v119 = v264;
    v74 = *(v110 + 16);
    if (!v74)
    {
      goto LABEL_65;
    }

LABEL_31:
    v121 = *(v117 + *(v118 + 20) + *(v119 + 80));
    v122 = *(v121 + 16);
    v281 = v121 + 32;
    v282 = v110 + 32;
    v263 = v121;
    v123 = v110;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v264 = v123;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v124 = 0;
    v125 = MEMORY[0x1E69E7CC0];
    v279 = v74;
    do
    {
      if (v122)
      {
        v136 = *(v282 + 24 * v124);
        v137 = v281;
        v138 = v122;
        while (1)
        {
          v139 = *v137;
          v140 = v137[1];
          v141 = v137[3];
          *&v287[32] = v137[2];
          *&v287[48] = v141;
          *v287 = v139;
          *&v287[16] = v140;
          v142 = v137[4];
          v143 = v137[5];
          v144 = v137[7];
          *&v287[96] = v137[6];
          *&v287[112] = v144;
          *&v287[64] = v142;
          *&v287[80] = v143;
          v145 = v137[8];
          v146 = v137[9];
          v147 = v137[10];
          *&v287[169] = *(v137 + 169);
          *&v287[144] = v146;
          *&v287[160] = v147;
          *&v287[128] = v145;
          if (v136 == *v287)
          {
            break;
          }

          v137 += 12;
          if (!--v138)
          {
            goto LABEL_33;
          }
        }

        sub_1B0A912A8(v287, v286);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1B0B00298(0, v125[2] + 1, 1, v125);
        }

        v149 = v125[2];
        v148 = v125[3];
        if (v149 >= v148 >> 1)
        {
          v125 = sub_1B0B00298((v148 > 1), v149 + 1, 1, v125);
        }

        *&v286[132] = *&v287[136];
        *&v286[148] = *&v287[152];
        *&v286[164] = *&v287[168];
        v286[180] = v287[184];
        *&v286[68] = *&v287[72];
        *&v286[84] = *&v287[88];
        *&v286[100] = *&v287[104];
        *&v286[116] = *&v287[120];
        *&v286[4] = *&v287[8];
        *&v286[20] = *&v287[24];
        *&v286[36] = *&v287[40];
        *&v286[52] = *&v287[56];
        v125[2] = v149 + 1;
        v126 = &v125[24 * v149];
        *(v126 + 8) = v136;
        v127 = *v286;
        v128 = *&v286[16];
        v129 = *&v286[32];
        *(v126 + 84) = *&v286[48];
        *(v126 + 68) = v129;
        *(v126 + 52) = v128;
        *(v126 + 36) = v127;
        v130 = *&v286[64];
        v131 = *&v286[80];
        v132 = *&v286[96];
        *(v126 + 148) = *&v286[112];
        *(v126 + 132) = v132;
        *(v126 + 116) = v131;
        *(v126 + 100) = v130;
        v133 = *&v286[128];
        v134 = *&v286[144];
        v135 = *&v286[160];
        *(v126 + 209) = *&v286[173];
        *(v126 + 196) = v135;
        *(v126 + 180) = v134;
        *(v126 + 164) = v133;
        v74 = v279;
      }

LABEL_33:
      ++v124;
    }

    while (v124 != v74);
    if (v125[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
      v150 = sub_1B0E466A8();
    }

    else
    {
      v150 = MEMORY[0x1E69E7CC8];
    }

    v151 = v278;
    *v287 = v150;
    v152 = v258;
    sub_1B0B234B8(v125, 1, v287);
    if (v152)
    {

      __break(1u);
      return result;
    }

    v153 = v264;

    v282 = *v287;
    v309[0] = v151;
    v309[1] = v274;
    v310 = v275;
    v154 = v277;
    v311 = v277;
    v312 = v273;
    v155 = v273;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v156 = sub_1B0451E64(MEMORY[0x1E69E7CC0]);
    v157 = v244;
    *v244 = v156;
    *(v157 + 8) = 0;
    v158 = v253;
    sub_1B0ABD77C(v309, v153, v253, v287);
    v159 = *&v287[40];
    v160 = *&v287[16];
    *(v157 + 64) = *v287;
    *(v157 + 80) = v160;
    *(v157 + 96) = *&v287[32];
    *(v157 + 112) = v287[48];
    *(v157 + 9) = 0;
    *v286 = v154;
    *&v286[8] = v155;
    LODWORD(a6) = v155;
    v286[12] = 0;
    v286[13] = v158;
    v161 = v243;
    *(v157 + 16) = v243;
    sub_1B03D06A4();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    v162 = *(v161 + 36);
    v281 = *(v161 + 40);
    v85 = v157 + v162;
    v163 = _s18InProgressMessagesVMa(0);
    v164 = v163[6];
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v165 = v85 + v163[9];
    sub_1B0E46EE8();
    v166 = v85 + v163[10];
    sub_1B0E46EE8();
    v167 = MEMORY[0x1E69E7CC0];
    v168 = sub_1B0BABAA8(MEMORY[0x1E69E7CC0]);
    *v85 = v154;
    *(v85 + 8) = a6;
    *(v85 + 16) = v282;
    *(v85 + v163[7]) = v167;
    *(v85 + v163[8]) = v167;
    v16 = v167;
    *(v85 + v163[11]) = v168;
    sub_1B0AC3330(v157 + v281);
    sub_1B0AC39A4(v159);

    v169 = v246;
    sub_1B0B24104(v157, v246, type metadata accessor for DownloadTask);
    v88 = v245;
    v170 = (v169 + *(v245 + 36));
    *v170 = v16;
    v170[1] = v16;
    *&v286[24] = v88;
    v74 = sub_1B0B23F6C(&qword_1EB6DD400, &qword_1EB6E4598, &unk_1B0EC5908);
    *&v286[32] = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v286);
    sub_1B03B5C80(v169, boxed_opaque_existential_1, &qword_1EB6E4598, &unk_1B0EC5908);
    LOBYTE(v85) = v283(v286);
    __swift_destroy_boxed_opaque_existential_0(v286);
    if ((v85 & 1) == 0)
    {
      sub_1B0398EFC(v169, &qword_1EB6E4598, &unk_1B0EC5908);
      a3 = v260;
      v91 = v272;
      v87 = v276;
      LOBYTE(v85) = v254;
      goto LABEL_66;
    }

    *(&v291 + 1) = v88;
    v292 = v74;
    v172 = __swift_allocate_boxed_opaque_existential_1(&v290);
    sub_1B03C60A4(v169, v172, &qword_1EB6E4598, &unk_1B0EC5908);
    sub_1B0398EFC(v259, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B238BC(v280, type metadata accessor for MessagesPendingDownload);
    a3 = v260;
    v91 = v272;
    v87 = v276;
    if (*(&v291 + 1))
    {
      sub_1B0450C74(&v290, &v293);
      v173 = &v293;
      return sub_1B0450C74(v173, v261);
    }

    goto LABEL_68;
  }

  v174 = *(v108 + 16);
  if (!v174)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v120 < v174)
  {
    LODWORD(v16) = *(v108 + 32);
    v282 = *(v108 + 40);
    LOBYTE(a6) = *(v108 + 48);
    LODWORD(v281) = *(v108 + 49);
    v88 = 24 * v120;
    v175 = v108 + 32 + 24 * v120;
    LODWORD(a3) = *v175;
    v91 = *(v175 + 8);
    LOBYTE(v85) = *(v175 + 16);
    LOBYTE(v87) = *(v175 + 17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v108;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_55;
  }

LABEL_100:
  while (1)
  {
    __break(1u);
LABEL_101:
    v110 = sub_1B0B8C98C(v255);
LABEL_55:
    *(v110 + 32) = a3;
    *(v110 + 40) = v91;
    *(v110 + 48) = v85;
    *(v110 + 49) = v87;
    v177 = v110 + 32 + v88;
    *v177 = v16;
    *(v177 + 8) = v282;
    *(v177 + 16) = a6;
    *(v177 + 17) = v281;
    a3 = v260;
    v91 = v272;
    v87 = v276;
    v117 = v279;
    v119 = v264;
    v85 = v74 >> 1;
    if (v74 >> 1 == 1)
    {
      break;
    }

    v178 = v74 - 2;
    if (v74 == 3)
    {
      goto LABEL_62;
    }

    v179 = *(v110 + 16);
    if (v179 < 2)
    {
      goto LABEL_99;
    }

    if (v178 < v179)
    {
      LODWORD(v282) = *(v110 + 56);
      v281 = *(v110 + 64);
      LODWORD(v257) = *(v110 + 72);
      v88 = *(v110 + 73);
      v180 = 24 * v178;
      v181 = v110 + 24 * v178;
      v182 = *(v181 + 32);
      v183 = *(v181 + 40);
      v184 = *(v181 + 48);
      LODWORD(v16) = *(v181 + 49);
      a6 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a6 = sub_1B0B8C98C(a6);
      }

      v117 = v279;
      v119 = v264;
      v110 = a6;
      v185 = &a6[v180];
      *(a6 + 14) = v182;
      *(a6 + 8) = v183;
      a6[72] = v184;
      a6[73] = v16;
      *(v185 + 8) = v282;
      *(v185 + 5) = v281;
      v185[48] = v257;
      v185[49] = v88;
      a3 = v260;
      v91 = v272;
      v87 = v276;
LABEL_62:
      if (v85 == 2)
      {
        break;
      }

      v186 = v74 - 3;
      if (v74 == 5)
      {
        break;
      }

      v231 = *(v110 + 16);
      if (v231 < 3)
      {
        goto LABEL_99;
      }

      if (v186 < v231)
      {
        LODWORD(v282) = *(v110 + 80);
        v232 = *(v110 + 88);
        v233 = *(v110 + 96);
        v234 = *(v110 + 97);
        v16 = 24 * v186;
        v235 = v110 + 24 * v186;
        v88 = *(v235 + 32);
        v236 = *(v235 + 40);
        v237 = *(v235 + 48);
        v238 = *(v235 + 49);
        a6 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a6 = sub_1B0B8C98C(a6);
        }

        v110 = a6;
        v239 = &a6[v16];
        *(a6 + 20) = v88;
        *(a6 + 11) = v236;
        a6[96] = v237;
        a6[97] = v238;
        *(v239 + 8) = v282;
        *(v239 + 5) = v232;
        v239[48] = v233;
        v239[49] = v234;
        a3 = v260;
        v91 = v272;
        v87 = v276;
        goto LABEL_30;
      }
    }
  }

  v118 = v263;
  v74 = *(v110 + 16);
  if (v74)
  {
    goto LABEL_31;
  }

LABEL_65:

  LOBYTE(v85) = v254;
LABEL_66:
  sub_1B0398EFC(v259, &unk_1EB6E1AF0, &unk_1B0E9AF40);

  sub_1B0B238BC(v280, type metadata accessor for MessagesPendingDownload);
LABEL_67:
  v292 = 0;
  v290 = 0u;
  v291 = 0u;
LABEL_68:
  sub_1B0398EFC(&v290, &qword_1EB6E45A8, &unk_1B0EC5920);
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DA8, v91, a3) & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v264 = a12;
  v259 = *(v262 + 152);
  v187 = *(v259 + 16);
  v188 = v271;
  if (!v187)
  {
LABEL_78:
    result = sub_1B0ADEB60(v259);
    if (result)
    {
      v206 = v249;
      v207 = v262;
      sub_1B0B1B95C(v266, v283, v265, v264, a14, a15 & 1, v249);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v208 = *(v206 + 16);
        v209 = v261;
        *v261 = *v206;
        *(v209 + 16) = v208;
        *(v209 + 32) = *(v206 + 32);
      }

      else
      {
        v212 = HIDWORD(v241) & 1;
        v213 = v241 & 1;
        v284 = HIWORD(v241) & 1;
        v285 = (v241 >> 40) & 1;
        v282 = HIBYTE(v241) & 1;
        v214 = BYTE3(v241) & 1;
        v215 = v241 >> 16;
        v216 = v206;
        v217 = v241 >> 8;
        v218 = v247;
        sub_1B0B24104(v216, v247, type metadata accessor for MessageBatches);
        v219 = MEMORY[0x1EEE9AC00](v91);
        *(&v240 - 4) = v207;
        *(&v240 - 3) = v218;
        LODWORD(v280) = v213;
        *(&v240 - 16) = v213;
        v277 = v217;
        v278 = v215;
        *(&v240 - 15) = v217;
        *(&v240 - 14) = v215;
        LODWORD(v279) = v214;
        *(&v240 - 13) = v214;
        v281 = v212;
        *(&v240 - 12) = v212;
        v221 = v284;
        v220 = v285;
        v223 = v282;
        v222 = v283;
        *(&v240 - 11) = v285;
        *(&v240 - 10) = v221;
        *(&v240 - 9) = v223;
        v224 = v260;
        v225 = v242;
        sub_1B0B18C58(v219, v260, v242, v222, sub_1B0B2391C, &v288);
        if (v289)
        {
          sub_1B0450C74(&v288, &v290);
          sub_1B0450C74(&v290, &v293);
          v226 = v261;
          v227 = v247;
        }

        else
        {
          v228 = sub_1B0398EFC(&v288, &qword_1EB6E45A8, &unk_1B0EC5920);
          MEMORY[0x1EEE9AC00](v228);
          v229 = v247;
          *(&v240 - 6) = v262;
          *(&v240 - 5) = v229;
          v230 = v264;
          *(&v240 - 4) = v266;
          *(&v240 - 3) = v230;
          *(&v240 - 16) = v280;
          LOBYTE(v230) = v278;
          *(&v240 - 15) = v277;
          *(&v240 - 14) = v230;
          *(&v240 - 13) = v279;
          *(&v240 - 12) = v281;
          *(&v240 - 11) = v220;
          *(&v240 - 10) = v221;
          *(&v240 - 9) = v223;
          sub_1B0B1892C(v272, v224, v225, v283, v265, sub_1B0B23920, &v288);
          v227 = v229;
          if (v289)
          {
            sub_1B0450C74(&v288, &v290);
            sub_1B0450C74(&v290, &v293);
          }

          else
          {
            sub_1B0398EFC(&v288, &qword_1EB6E45A8, &unk_1B0EC5920);
            v293 = 0u;
            v294 = 0u;
            *&v295 = 0;
          }

          v226 = v261;
        }

        sub_1B0B238BC(v227, type metadata accessor for MessageBatches);
        if (*(&v294 + 1))
        {
          sub_1B0450C74(&v293, v286);
          return sub_1B0450C74(v286, v226);
        }

        else
        {
          result = sub_1B0398EFC(&v293, &qword_1EB6E45A8, &unk_1B0EC5920);
          *(v226 + 32) = 0;
          *v226 = 0u;
          *(v226 + 16) = 0u;
        }
      }
    }

    else
    {
      v210 = v261;
      v261[4] = 0;
      *v210 = 0u;
      *(v210 + 1) = 0u;
    }

    return result;
  }

  v189 = v259 + ((*(v256 + 80) + 32) & ~*(v256 + 80));
  v190 = *(v256 + 72);
  v263 = v190;
  while (2)
  {
    sub_1B03BCDD0(v189, v188, _s19UserInitiatedSearchVMa);
    sub_1B03BCDD0(v188 + *(v284 + 20), v87, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0B238BC(v188, _s19UserInitiatedSearchVMa);
      sub_1B0B238BC(v87, _s19UserInitiatedSearchV5StateOMa);
      goto LABEL_74;
    }

    v192 = *v87;
    v191 = *(v87 + 8);
    v281 = *(v87 + 16);
    LODWORD(v280) = *(v87 + 24);
    v193 = *v188;
    LODWORD(v279) = *(v264 + 4);
    v195 = v268;
    v194 = v269;
    *v268 = 223;
    *(v195 + 104) = MEMORY[0x1E69E7CD0];
    *(v195 + 112) = 0;
    v196 = *(v194 + 52);
    v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(*(v197 - 8) + 56))(v195 + v196, 1, 1, v197);
    *(v195 + 8) = v193;
    v198 = v277;
    v199 = v274;
    *(v195 + 16) = v278;
    *(v195 + 24) = v199;
    *(v195 + 32) = v275;
    *(v195 + 40) = v198;
    LODWORD(v199) = v273;
    *(v195 + 48) = v273;
    LODWORD(v290) = v193;
    *(&v290 + 1) = v198;
    LODWORD(v291) = v199;
    *(v195 + 56) = v194;
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B23938(v192);
    sub_1B0B23974();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E461E8();
    *(v195 + 120) = v192;
    *(v195 + 128) = v191;
    v282 = v191;
    *(v195 + 136) = v281;
    *(v195 + 144) = v280;
    *(v195 + 145) = v279;
    v200 = v267;
    sub_1B0B24104(v195, v267, type metadata accessor for SearchMailbox);
    v201 = v270;
    v202 = (v200 + *(v270 + 36));
    v203 = MEMORY[0x1E69E7CC0];
    *v202 = MEMORY[0x1E69E7CC0];
    v202[1] = v203;
    *(&v291 + 1) = v201;
    v204 = sub_1B0B23F6C(&qword_1EB6E45B8, &qword_1EB6E4590, &qword_1B0EC5900);
    v292 = v204;
    v205 = __swift_allocate_boxed_opaque_existential_1(&v290);
    sub_1B03B5C80(v200, v205, &qword_1EB6E4590, &qword_1B0EC5900);
    LOBYTE(v193) = v283(&v290);
    __swift_destroy_boxed_opaque_existential_0(&v290);
    if ((v193 & 1) == 0)
    {
      sub_1B0B239C8(v192);

      sub_1B0398EFC(v200, &qword_1EB6E4590, &qword_1B0EC5900);
      v188 = v271;
      sub_1B0B238BC(v271, _s19UserInitiatedSearchVMa);
      v91 = v272;
      v87 = v276;
      v190 = v263;
LABEL_74:
      v189 += v190;
      if (!--v187)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  *(&v294 + 1) = v270;
  *&v295 = v204;
  v211 = __swift_allocate_boxed_opaque_existential_1(&v293);
  sub_1B03C60A4(v200, v211, &qword_1EB6E4590, &qword_1B0EC5900);
  sub_1B0B239C8(v192);

  sub_1B0B238BC(v271, _s19UserInitiatedSearchVMa);
  sub_1B0450C74(&v293, v286);
  v173 = v286;
  return sub_1B0450C74(v173, v261);
}

uint64_t sub_1B0B17C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v80 = a4;
  v84 = a1;
  v92 = type metadata accessor for SearchMailbox();
  v19 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4590, &qword_1B0EC5900);
  v22 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v78 - v23;
  v102 = _s19UserInitiatedSearchV5StateOMa(0);
  v24 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v95 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = _s19UserInitiatedSearchVMa(0);
  v26 = *(v101 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v29 = (&v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = _s29DetermineMessageBatchesResultOMa(0);
  v30 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MessageBatches(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  result = sub_1B03D9200(qword_1EB737DA8, a2, a3);
  if (result)
  {
    v81 = v32;
    v82 = v36;
    v78 = a2;
    v79 = a3;
    v85 = a7;
    v38 = a14;
    v94 = a10;
    v86 = *(a14 + 152);
    v39 = *(v86 + 16);
    v40 = v95;
    if (v39)
    {
      v41 = v86 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v42 = *(v26 + 72);
      v90 = a5;
      v89 = a14;
      v87 = v42;
      v88 = v29;
      do
      {
        sub_1B03BCDD0(v41, v29, _s19UserInitiatedSearchVMa);
        sub_1B03BCDD0(v29 + *(v101 + 20), v40, _s19UserInitiatedSearchV5StateOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1B0B238BC(v29, _s19UserInitiatedSearchVMa);
          sub_1B0B238BC(v40, _s19UserInitiatedSearchV5StateOMa);
        }

        else
        {
          v43 = *(v40 + 8);
          v103 = *v40;
          v104 = v43;
          v100 = *(v40 + 16);
          v99 = *(v40 + 24);
          v44 = *v29;
          v97 = *(v38 + 172);
          v45 = *v38;
          v96 = *(v38 + 8);
          v46 = v38;
          v47 = *(v38 + 16);
          v48 = *(v46 + 24);
          v98 = *(v94 + 4);
          *v21 = 223;
          *(v21 + 13) = MEMORY[0x1E69E7CD0];
          v21[112] = 0;
          v49 = a6;
          v50 = v92;
          v51 = *(v92 + 52);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
          (*(*(v52 - 8) + 56))(&v21[v51], 1, 1, v52);
          *(v21 + 2) = v44;
          v53 = v96;
          *(v21 + 2) = v45;
          *(v21 + 3) = v53;
          *(v21 + 16) = v97;
          *(v21 + 5) = v47;
          *(v21 + 12) = v48;
          LODWORD(v107) = v44;
          *(&v107 + 1) = v47;
          v108 = v48;
          *(v21 + 7) = v50;
          swift_bridgeObjectRetain_n();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v54 = v103;
          sub_1B0B23938(v103);
          sub_1B0B23974();
          v55 = v104;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E461E8();
          *(v21 + 15) = v54;
          *(v21 + 16) = v55;
          *(v21 + 17) = v100;
          v21[144] = v99;
          *(v21 + 145) = v98;
          v56 = v91;
          sub_1B0B24104(v21, v91, type metadata accessor for SearchMailbox);
          v57 = v93;
          v58 = (v56 + *(v93 + 36));
          v59 = MEMORY[0x1E69E7CC0];
          *v58 = MEMORY[0x1E69E7CC0];
          v58[1] = v59;
          v109 = v57;
          v60 = sub_1B0B23F6C(&qword_1EB6E45B8, &qword_1EB6E4590, &qword_1B0EC5900);
          v110 = v60;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v107);
          sub_1B03B5C80(v56, boxed_opaque_existential_1, &qword_1EB6E4590, &qword_1B0EC5900);
          a6 = v49;
          a5 = v90;
          LOBYTE(v45) = v90(&v107);
          __swift_destroy_boxed_opaque_existential_0(&v107);
          if (v45)
          {
            *(&v112 + 1) = v93;
            v113 = v60;
            v66 = __swift_allocate_boxed_opaque_existential_1(&v111);
            sub_1B03C60A4(v56, v66, &qword_1EB6E4590, &qword_1B0EC5900);
            sub_1B0B239C8(v103);

            sub_1B0B238BC(v88, _s19UserInitiatedSearchVMa);
            sub_1B0450C74(&v111, &v114);
            return sub_1B0450C74(&v114, v85);
          }

          sub_1B0B239C8(v103);

          sub_1B0398EFC(v56, &qword_1EB6E4590, &qword_1B0EC5900);
          v29 = v88;
          sub_1B0B238BC(v88, _s19UserInitiatedSearchVMa);
          v38 = v89;
          v40 = v95;
          v42 = v87;
        }

        v41 += v42;
        --v39;
      }

      while (v39);
    }

    result = sub_1B0ADEB60(v86);
    if (result)
    {
      v62 = v81;
      sub_1B0B1B95C(v84, a5, a6, v94, a12, a13 & 1, v81);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v63 = *(v62 + 16);
        v64 = v85;
        *v85 = *v62;
        *(v64 + 16) = v63;
        *(v64 + 32) = *(v62 + 32);
      }

      else
      {
        v67 = v82;
        v68 = sub_1B0B24104(v62, v82, type metadata accessor for MessageBatches);
        MEMORY[0x1EEE9AC00](v68);
        *(&v78 - 4) = v69;
        *(&v78 - 3) = v67;
        LODWORD(v101) = a11 & 1;
        *(&v78 - 16) = a11 & 1;
        v103 = a11 >> 8;
        *(&v78 - 15) = BYTE1(a11);
        v104 = a11 >> 16;
        *(&v78 - 14) = BYTE2(a11);
        v89 = v69;
        *(&v78 - 13) = BYTE3(a11) & 1;
        *(&v78 - 12) = BYTE4(a11) & 1;
        v70 = (a11 >> 40) & 1;
        *(&v78 - 11) = v70;
        *(&v78 - 10) = BYTE6(a11) & 1;
        v71 = HIBYTE(a11) & 1;
        *(&v78 - 9) = v71;
        v72 = v78;
        v73 = v79;
        v74 = v80;
        v90 = a5;
        v102 = a6;
        sub_1B0B18C58(v78, v79, v80, a5, sub_1B0B2419C, &v105);
        if (v106)
        {
          goto LABEL_18;
        }

        v75 = sub_1B0398EFC(&v105, &qword_1EB6E45A8, &unk_1B0EC5920);
        MEMORY[0x1EEE9AC00](v75);
        *(&v78 - 6) = v89;
        *(&v78 - 5) = v67;
        v76 = v94;
        *(&v78 - 4) = v84;
        *(&v78 - 3) = v76;
        *(&v78 - 16) = v101;
        *(&v78 - 15) = v103;
        *(&v78 - 14) = v104;
        *(&v78 - 13) = BYTE3(a11) & 1;
        *(&v78 - 12) = BYTE4(a11) & 1;
        *(&v78 - 11) = v70;
        *(&v78 - 10) = BYTE6(a11) & 1;
        *(&v78 - 9) = v71;
        sub_1B0B1892C(v72, v73, v74, v90, v102, sub_1B0B241A0, &v105);
        if (v106)
        {
LABEL_18:
          sub_1B0450C74(&v105, &v107);
          sub_1B0450C74(&v107, &v111);
        }

        else
        {
          sub_1B0398EFC(&v105, &qword_1EB6E45A8, &unk_1B0EC5920);
          v111 = 0u;
          v112 = 0u;
          v113 = 0;
        }

        v77 = v85;
        sub_1B0B238BC(v82, type metadata accessor for MessageBatches);
        if (*(&v112 + 1))
        {
          sub_1B0450C74(&v111, &v114);
          return sub_1B0450C74(&v114, v77);
        }

        else
        {
          result = sub_1B0398EFC(&v111, &qword_1EB6E45A8, &unk_1B0EC5920);
          *(v77 + 32) = 0;
          *v77 = 0u;
          *(v77 + 16) = 0u;
        }
      }
    }

    else
    {
      v65 = v85;
      *(v85 + 32) = 0;
      *v65 = 0u;
      v65[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B186FC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  if (*(a1 + 16) && (v10 = sub_1B03AB888(*(a2 + 16), *(a2 + 24)), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(a1 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v15 = *(v14 - 8);
    sub_1B03B5C80(v13 + *(v15 + 72) * v12, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v15 + 56))(v9, 0, 1, v14);
    return sub_1B03C60A4(v9, a3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_1B0398EFC(v9, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  return result;
}

double sub_1B0B1892C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v31[1] = a5;
  v32 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45D8, &qword_1B0EC5950);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45E0, &qword_1B0EC5958);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v31 - v21);
  if (qword_1EB6DD598 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D38, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  if ((*(*(SearchResultMessages - 8) + 48))(v15, 1, SearchResultMessages) == 1)
  {
    sub_1B0398EFC(v15, &qword_1EB6E45D8, &qword_1B0EC5950);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1B03BCDD0(v15, v20, type metadata accessor for FetchSearchResultMessages);
  v25 = &v20[*(v16 + 36)];
  v26 = MEMORY[0x1E69E7CC0];
  *v25 = MEMORY[0x1E69E7CC0];
  *(v25 + 1) = v26;
  sub_1B0B238BC(v15, type metadata accessor for FetchSearchResultMessages);
  sub_1B03C60A4(v20, v22, &qword_1EB6E45E0, &qword_1B0EC5958);
  if (!*(*v22 + 16) || (sub_1B0B1F36C(*v22, a1, a2, a3)) && (v33[3] = v16, v27 = sub_1B0B23F6C(&qword_1EB6E45E8, &qword_1EB6E45E0, &qword_1B0EC5958), v33[4] = v27, v28 = __swift_allocate_boxed_opaque_existential_1(v33), sub_1B03B5C80(v22, v28, &qword_1EB6E45E0, &qword_1B0EC5958), v29 = v32(v33), __swift_destroy_boxed_opaque_existential_0(v33), (v29))
  {
    *(a7 + 24) = v16;
    *(a7 + 32) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
    sub_1B03C60A4(v22, boxed_opaque_existential_1, &qword_1EB6E45E0, &qword_1B0EC5958);
  }

  else
  {
    sub_1B0398EFC(v22, &qword_1EB6E45E0, &qword_1B0EC5958);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

double sub_1B0B18C58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6DD2C0 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D20, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v21);
  if (!v21[0])
  {
    sub_1B0398EFC(v21, &qword_1EB6E45F8, &qword_1B0EC5970);
LABEL_11:
    *(a6 + 32) = 0;
    *&v19 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v19;
  }

  sub_1B0B23A90(v21, &v22);
  *&v30 = MEMORY[0x1E69E7CC0];
  *(&v30 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0B23AEC(v21);
  v37 = v28;
  v38 = v29;
  v39 = v30;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v31 = v22;
  v32 = v23;
  if (*(v22 + 16) && (sub_1B0B1F36C(v22, a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4600, &qword_1B0EC5978);
  *(&v23 + 1) = v12;
  v13 = sub_1B0B23F6C(&qword_1EB6DD388, &qword_1EB6E4600, &qword_1B0EC5978);
  *&v24 = v13;
  *&v22 = swift_allocObject();
  sub_1B03B5C80(&v31, v22 + 16, &qword_1EB6E4600, &qword_1B0EC5978);
  v14 = a4(&v22);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v38;
    v15[7] = v37;
    v15[8] = v16;
    v15[9] = v39;
    v17 = v34;
    v15[3] = v33;
    v15[4] = v17;
    v18 = v36;
    v15[5] = v35;
    v15[6] = v18;
    v19 = v32;
    v15[1] = v31;
    v15[2] = v19;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v31, &qword_1EB6E4600, &qword_1B0EC5978);
    *&v19 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v19;
}

uint64_t sub_1B0B18EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36[1] = a5;
  v37 = a4;
  v36[0] = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4618, &qword_1B0EC59A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4620, &qword_1B0EC59B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v36 - v25;
  if (qword_1EB6DD9A0 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D70, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B0B1B414(a6, a7 & 1, a8, a10 & 0x101010101FFFF01, v19);
  PendingDownload = type metadata accessor for FindPendingDownload();
  if ((*(*(PendingDownload - 8) + 48))(v19, 1, PendingDownload) == 1)
  {
    sub_1B0398EFC(v19, &qword_1EB6E4618, &qword_1B0EC59A8);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1B03BCDD0(v19, v24, type metadata accessor for FindPendingDownload);
  v29 = &v24[*(v20 + 36)];
  v30 = MEMORY[0x1E69E7CC0];
  *v29 = MEMORY[0x1E69E7CC0];
  *(v29 + 1) = v30;
  sub_1B0B238BC(v19, type metadata accessor for FindPendingDownload);
  sub_1B03C60A4(v24, v26, &qword_1EB6E4620, &qword_1B0EC59B0);
  v31 = *(v26 + 6);
  if (!*(v31 + 16) || (sub_1B0B1F36C(v31, a1, a2, v36[0])) && (v38[3] = v20, v32 = sub_1B0B23F6C(&qword_1EB6DD3C8, &qword_1EB6E4620, &qword_1B0EC59B0), v38[4] = v32, v33 = __swift_allocate_boxed_opaque_existential_1(v38), sub_1B03B5C80(v26, v33, &qword_1EB6E4620, &qword_1B0EC59B0), v34 = v37(v38), __swift_destroy_boxed_opaque_existential_0(v38), (v34))
  {
    *(a9 + 24) = v20;
    *(a9 + 32) = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9);
    sub_1B03C60A4(v26, boxed_opaque_existential_1, &qword_1EB6E4620, &qword_1B0EC59B0);
  }

  else
  {
    sub_1B0398EFC(v26, &qword_1EB6E4620, &qword_1B0EC59B0);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_1B03A3614(a6);
}

double sub_1B0B191FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6DD8B8 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D60, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v24);
  if (!v24[0])
  {
    sub_1B0398EFC(v24, &qword_1EB6E4690, &qword_1B0EC5A28);
LABEL_11:
    *(a6 + 32) = 0;
    *&v22 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v22;
  }

  sub_1B0AA6A5C(v24, &v25);
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1B0AA6A94(v24);
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  v42 = v33;
  v38 = v29;
  v39 = v30;
  v34 = v25;
  v35 = v26;
  v12 = *(sub_1B03D0770(&unk_1F2711038) + 16);

  if (v12)
  {
    v13 = sub_1B03D0770(&unk_1F2711060);
    v14 = sub_1B0B1F36C(v13, a1, a2, a3);

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4698, &qword_1B0EC5A30);
  *(&v26 + 1) = v15;
  v16 = sub_1B0B23F6C(&qword_1EB6DD3B8, &qword_1EB6E4698, &qword_1B0EC5A30);
  *&v27 = v16;
  *&v25 = swift_allocObject();
  sub_1B03B5C80(&v34, v25 + 16, &qword_1EB6E4698, &qword_1B0EC5A30);
  v17 = a4(&v25);
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (v17)
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
    v18 = swift_allocObject();
    *a6 = v18;
    v19 = v41;
    *(v18 + 112) = v40;
    *(v18 + 128) = v19;
    *(v18 + 144) = v42;
    v20 = v37;
    *(v18 + 48) = v36;
    *(v18 + 64) = v20;
    v21 = v39;
    *(v18 + 80) = v38;
    *(v18 + 96) = v21;
    v22 = v35;
    *(v18 + 16) = v34;
    *(v18 + 32) = v22;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v34, &qword_1EB6E4698, &qword_1B0EC5A30);
    *&v22 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v22;
}

double sub_1B0B19478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6DD380 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D28, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v24);
  if (!v24[0])
  {
    sub_1B0398EFC(v24, &qword_1EB6E4680, &qword_1B0EC5A18);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B0AA93EC(v24, &v25);
  *&v32 = MEMORY[0x1E69E7CC0];
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0AA9424(v24);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v12 = *(sub_1B03D0770(&unk_1F2711088) + 16);

  if (v12)
  {
    v13 = sub_1B03D0770(&unk_1F27110B0);
    v14 = sub_1B0B1F36C(v13, a1, a2, a3);

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4688, &qword_1B0EC5A20);
  *(&v26 + 1) = v15;
  v16 = sub_1B0B23F6C(&qword_1EB6DD390, &qword_1EB6E4688, &qword_1B0EC5A20);
  *&v27 = v16;
  *&v25 = swift_allocObject();
  sub_1B03B5C80(&v33, v25 + 16, &qword_1EB6E4688, &qword_1B0EC5A20);
  v17 = a4(&v25);
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (v17)
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
    v18 = swift_allocObject();
    *a6 = v18;
    v19 = v38;
    v18[5] = v37;
    v18[6] = v19;
    v20 = v40;
    v18[7] = v39;
    v18[8] = v20;
    v21 = v34;
    v18[1] = v33;
    v18[2] = v21;
    result = *&v35;
    v23 = v36;
    v18[3] = v35;
    v18[4] = v23;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v33, &qword_1EB6E4688, &qword_1B0EC5A20);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1B0B196DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6E3DC0 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB738368, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_1B0398EFC(v22, &qword_1EB6E46B8, &qword_1B0EC5A48);
LABEL_11:
    *(a6 + 32) = 0;
    *&v20 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v20;
  }

  sub_1B0AA47C0(v22, &v23);
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1B0AA47F8(v22);
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  if (*(*(&v25 + 1) + 16) && (sub_1B0B1F36C(*(&v25 + 1), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46C0, &qword_1B0EC5A50);
  *(&v24 + 1) = v12;
  v13 = sub_1B0B23F6C(&qword_1EB6E46C8, &qword_1EB6E46C0, &qword_1B0EC5A50);
  *&v25 = v13;
  *&v23 = swift_allocObject();
  sub_1B03B5C80(&v34, v23 + 16, &qword_1EB6E46C0, &qword_1B0EC5A50);
  v14 = a4(&v23);
  __swift_destroy_boxed_opaque_existential_0(&v23);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v43;
    *(v15 + 144) = v42;
    *(v15 + 160) = v16;
    *(v15 + 176) = v44;
    v17 = v39;
    *(v15 + 80) = v38;
    *(v15 + 96) = v17;
    v18 = v41;
    *(v15 + 112) = v40;
    *(v15 + 128) = v18;
    v19 = v35;
    *(v15 + 16) = v34;
    *(v15 + 32) = v19;
    v20 = v37;
    *(v15 + 48) = v36;
    *(v15 + 64) = v20;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v34, &qword_1EB6E46C0, &qword_1B0EC5A50);
    *&v20 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v20;
}

double sub_1B0B1993C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6E3DC8 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB738370, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_1B0398EFC(v22, &qword_1EB6E4670, &qword_1B0EC5A08);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B0AA5BF0(v22, &v23);
  *&v32 = MEMORY[0x1E69E7CC0];
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0AA5C28(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (*(*(&v25 + 1) + 16) && (sub_1B0B1F36C(*(&v25 + 1), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46A8, &qword_1B0EC5A40);
  *(&v24 + 1) = v12;
  v13 = sub_1B0B23F6C(&qword_1EB6E46B0, &qword_1EB6E46A8, &qword_1B0EC5A40);
  *&v25 = v13;
  *&v23 = swift_allocObject();
  sub_1B03B5C80(&v33, v23 + 16, &qword_1EB6E46A8, &qword_1B0EC5A40);
  v14 = a4(&v23);
  __swift_destroy_boxed_opaque_existential_0(&v23);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v33, &qword_1EB6E46A8, &qword_1B0EC5A40);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1B0B19B88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6DD7B8 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D50, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v21);
  if (!v21[0])
  {
    sub_1B0398EFC(v21, &qword_1EB6E4678, &qword_1B0EC5A10);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B0B23F10(v21, &v22);
  *(&v30 + 1) = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_1B0B23EB0(v21);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v32 = v22;
  v33 = v23;
  if (*(*(&v24 + 1) + 16) && (sub_1B0B1F36C(*(&v24 + 1), a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46A0, &qword_1B0EC5A38);
  *(&v23 + 1) = v12;
  v13 = sub_1B0B23F6C(&qword_1EB6DD3B0, &qword_1EB6E46A0, &qword_1B0EC5A38);
  *&v24 = v13;
  *&v22 = swift_allocObject();
  sub_1B03B5C80(&v32, v22 + 16, &qword_1EB6E46A0, &qword_1B0EC5A38);
  v14 = a4(&v22);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v39;
    *(v15 + 112) = v38;
    *(v15 + 128) = v16;
    *(v15 + 144) = v40;
    *(v15 + 160) = v41;
    v17 = v35;
    *(v15 + 48) = v34;
    *(v15 + 64) = v17;
    v18 = v37;
    *(v15 + 80) = v36;
    *(v15 + 96) = v18;
    result = *&v32;
    v20 = v33;
    *(v15 + 16) = v32;
    *(v15 + 32) = v20;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v32, &qword_1EB6E46A0, &qword_1B0EC5A38);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0B19DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X8>)
{
  if (qword_1EB6DD970 != -1)
  {
    swift_once();
  }

  if (sub_1B03D9200(qword_1EB737D68, a1, a2))
  {
    v14 = *(a5 + 172);
    v15 = *(a5 + 8);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);
    *&v57 = *a5;
    *(&v57 + 1) = v15;
    v58 = v14;
    v59 = v16;
    v60 = v17;
    v18 = *a6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B500B0(&v57, v18, v30);
    sub_1B0B23DC4(v30, &v31);
    *&v43 = MEMORY[0x1E69E7CC0];
    *(&v43 + 1) = MEMORY[0x1E69E7CC0];
    sub_1B0B23E20(v30);
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v44 = v31;
    v45 = v32;
    if (*(v37 + 16) && (sub_1B0B1F36C(v37, a1, a2, a3) & 1) == 0)
    {
      goto LABEL_11;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4640, &qword_1B0EC59D8);
    *(&v32 + 1) = v19;
    v20 = sub_1B0B23F6C(&qword_1EB6DD3C0, &qword_1EB6E4640, &qword_1B0EC59D8);
    *&v33 = v20;
    *&v31 = swift_allocObject();
    sub_1B03B5C80(&v44, v31 + 16, &qword_1EB6E4640, &qword_1B0EC59D8);
    v21 = a4(&v31);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    if (v21)
    {
      *(a7 + 24) = v19;
      *(a7 + 32) = v20;
      v22 = swift_allocObject();
      *a7 = v22;
      v23 = v55;
      v22[11] = v54;
      v22[12] = v23;
      v22[13] = v56;
      v24 = v51;
      v22[7] = v50;
      v22[8] = v24;
      v25 = v53;
      v22[9] = v52;
      v22[10] = v25;
      v26 = v47;
      v22[3] = v46;
      v22[4] = v26;
      v27 = v49;
      v22[5] = v48;
      v22[6] = v27;
      v28 = v45;
      v22[1] = v44;
      v22[2] = v28;
    }

    else
    {
LABEL_11:
      sub_1B0398EFC(&v44, &qword_1EB6E4640, &qword_1B0EC59D8);
      *a7 = 0u;
      *(a7 + 16) = 0u;
      *(a7 + 32) = 0;
    }

    return sub_1B03A3614(a5);
  }

  else
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;

    return sub_1B03A3614(a5);
  }
}

uint64_t sub_1B0B1A09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35[1] = a5;
  v36 = a4;
  v35[0] = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4648, &qword_1B0EC59E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4650, &qword_1B0EC59E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v35 - v24;
  if (qword_1EB6DDC30 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DA0, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1B0B1F088(a6, a7, a8, v18);
  v26 = type metadata accessor for UploadMessages(0);
  if ((*(*(v26 - 8) + 48))(v18, 1, v26) == 1)
  {
    sub_1B0398EFC(v18, &qword_1EB6E4648, &qword_1B0EC59E0);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1B03BCDD0(v18, v23, type metadata accessor for UploadMessages);
  v28 = &v23[*(v19 + 36)];
  v29 = MEMORY[0x1E69E7CC0];
  *v28 = MEMORY[0x1E69E7CC0];
  *(v28 + 1) = v29;
  sub_1B0B238BC(v18, type metadata accessor for UploadMessages);
  sub_1B03C60A4(v23, v25, &qword_1EB6E4650, &qword_1B0EC59E8);
  v30 = *(v25 + 5);
  if (!*(v30 + 16) || (sub_1B0B1F36C(v30, a1, a2, v35[0])) && (v37[3] = v19, v31 = sub_1B0B23F6C(&qword_1EB6DD3F0, &qword_1EB6E4650, &qword_1B0EC59E8), v37[4] = v31, v32 = __swift_allocate_boxed_opaque_existential_1(v37), sub_1B03B5C80(v25, v32, &qword_1EB6E4650, &qword_1B0EC59E8), v33 = v36(v37), __swift_destroy_boxed_opaque_existential_0(v37), (v33))
  {
    *(a9 + 24) = v19;
    *(a9 + 32) = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9);
    sub_1B03C60A4(v25, boxed_opaque_existential_1, &qword_1EB6E4650, &qword_1B0EC59E8);
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E4650, &qword_1B0EC59E8);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_1B03A3614(a6);
}

double sub_1B0B1A3E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1EB6DDA38 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D80, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_1B0398EFC(v22, &qword_1EB6E4658, &qword_1B0EC59F0);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1B0A96130(v22, &v23);
  *&v32 = MEMORY[0x1E69E7CC0];
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  sub_1B0A96168(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (*(v23 + 16) && (sub_1B0B1F36C(v23, a1, a2, a3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4660, &qword_1B0EC59F8);
  *(&v24 + 1) = v12;
  v13 = sub_1B0B23F6C(&qword_1EB6DD3D8, &qword_1EB6E4660, &qword_1B0EC59F8);
  *&v25 = v13;
  *&v23 = swift_allocObject();
  sub_1B03B5C80(&v33, v23 + 16, &qword_1EB6E4660, &qword_1B0EC59F8);
  v14 = a4(&v23);
  __swift_destroy_boxed_opaque_existential_0(&v23);
  if (v14)
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
LABEL_9:
    sub_1B0398EFC(&v33, &qword_1EB6E4660, &qword_1B0EC59F8);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0B1A630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a3;
  v41 = a5;
  v14 = type metadata accessor for UploadFlagChanges(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4668, &qword_1B0EC5A00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38 - v23;
  if (qword_1EB6DDA80 != -1)
  {
    swift_once();
  }

  if (sub_1B03D9200(qword_1EB737D90, a1, a2))
  {
    v39 = a4;
    v25 = *(a6 + 172);
    v26 = *(a6 + 8);
    v27 = *(a6 + 16);
    v28 = *(a6 + 24);
    v43[0] = *a6;
    v43[1] = v26;
    v44 = v25;
    v45 = v27;
    v46 = v28;
    v29 = *(a7 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BB9FE0(v43, v29, v17);
    sub_1B03BCDD0(v17, v22, type metadata accessor for UploadFlagChanges);
    v30 = &v22[*(v18 + 36)];
    v31 = MEMORY[0x1E69E7CC0];
    *v30 = MEMORY[0x1E69E7CC0];
    *(v30 + 1) = v31;
    sub_1B0B238BC(v17, type metadata accessor for UploadFlagChanges);
    sub_1B03C60A4(v22, v24, &qword_1EB6E4668, &qword_1B0EC5A00);
    v32 = *(v24 + 5);
    if (!*(v32 + 16) || (sub_1B0B1F36C(v32, a1, a2, v40)) && (v42[3] = v18, v33 = sub_1B0B23F6C(&qword_1EB6DD3E0, &qword_1EB6E4668, &qword_1B0EC5A00), v42[4] = v33, v34 = __swift_allocate_boxed_opaque_existential_1(v42), sub_1B03B5C80(v24, v34, &qword_1EB6E4668, &qword_1B0EC5A00), v35 = v39(v42), __swift_destroy_boxed_opaque_existential_0(v42), (v35))
    {
      *(a8 + 24) = v18;
      *(a8 + 32) = v33;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8);
      sub_1B03C60A4(v24, boxed_opaque_existential_1, &qword_1EB6E4668, &qword_1B0EC5A00);
    }

    else
    {
      sub_1B0398EFC(v24, &qword_1EB6E4668, &qword_1B0EC5A00);
      *a8 = 0u;
      *(a8 + 16) = 0u;
      *(a8 + 32) = 0;
    }
  }

  else
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return sub_1B03A3614(a6);
}

double sub_1B0B1A96C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v31[1] = a5;
  v32 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46D0, &qword_1B0EC5A58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46D8, &qword_1B0EC5A60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v31 - v21);
  if (qword_1EB6DDF70 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DB8, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  Messages = type metadata accessor for FetchMessages(0);
  if ((*(*(Messages - 8) + 48))(v15, 1, Messages) == 1)
  {
    sub_1B0398EFC(v15, &qword_1EB6E46D0, &qword_1B0EC5A58);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1B03BCDD0(v15, v20, type metadata accessor for FetchMessages);
  v25 = &v20[*(v16 + 36)];
  v26 = MEMORY[0x1E69E7CC0];
  *v25 = MEMORY[0x1E69E7CC0];
  *(v25 + 1) = v26;
  sub_1B0B238BC(v15, type metadata accessor for FetchMessages);
  sub_1B03C60A4(v20, v22, &qword_1EB6E46D8, &qword_1B0EC5A60);
  if (!*(*v22 + 16) || (sub_1B0B1F36C(*v22, a1, a2, a3)) && (v33[3] = v16, v27 = sub_1B0B23F6C(&qword_1EB6DD3F8, &qword_1EB6E46D8, &qword_1B0EC5A60), v33[4] = v27, v28 = __swift_allocate_boxed_opaque_existential_1(v33), sub_1B03B5C80(v22, v28, &qword_1EB6E46D8, &qword_1B0EC5A60), v29 = v32(v33), __swift_destroy_boxed_opaque_existential_0(v33), (v29))
  {
    *(a7 + 24) = v16;
    *(a7 + 32) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
    sub_1B03C60A4(v22, boxed_opaque_existential_1, &qword_1EB6E46D8, &qword_1B0EC5A60);
  }

  else
  {
    sub_1B0398EFC(v22, &qword_1EB6E46D8, &qword_1B0EC5A60);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

double sub_1B0B1AC98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v32[1] = a5;
  v33 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46E0, &qword_1B0EC5A68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46E8, &qword_1B0EC5A70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v32 - v21;
  if (qword_1EB6DDA00 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737D78, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  if ((*(*(MissingMessages - 8) + 48))(v15, 1, MissingMessages) == 1)
  {
    sub_1B0398EFC(v15, &qword_1EB6E46E0, &qword_1B0EC5A68);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1B03BCDD0(v15, v20, type metadata accessor for FindMissingMessages);
  v25 = &v20[*(v16 + 36)];
  v26 = MEMORY[0x1E69E7CC0];
  *v25 = MEMORY[0x1E69E7CC0];
  *(v25 + 1) = v26;
  sub_1B0B238BC(v15, type metadata accessor for FindMissingMessages);
  sub_1B03C60A4(v20, v22, &qword_1EB6E46E8, &qword_1B0EC5A70);
  v27 = *(v22 + 13);
  if (!*(v27 + 16) || (sub_1B0B1F36C(v27, a1, a2, a3)) && (v34[3] = v16, v28 = sub_1B0B23F6C(&qword_1EB6DD3D0, &qword_1EB6E46E8, &qword_1B0EC5A70), v34[4] = v28, v29 = __swift_allocate_boxed_opaque_existential_1(v34), sub_1B03B5C80(v22, v29, &qword_1EB6E46E8, &qword_1B0EC5A70), v30 = v33(v34), __swift_destroy_boxed_opaque_existential_0(v34), (v30))
  {
    *(a7 + 24) = v16;
    *(a7 + 32) = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
    sub_1B03C60A4(v22, boxed_opaque_existential_1, &qword_1EB6E46E8, &qword_1B0EC5A70);
  }

  else
  {
    sub_1B0398EFC(v22, &qword_1EB6E46E8, &qword_1B0EC5A70);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

uint64_t sub_1B0B1AFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46F0, &qword_1B0EC5A78);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v47 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E46F8, &qword_1B0EC5A80);
  v23 = *(*(v54 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v54);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v53 = &v47 - v27;
  if (qword_1EB6DD888 != -1)
  {
    swift_once();
  }

  v50 = a1;
  v51 = a2;
  if ((sub_1B03D9200(qword_1EB737D58, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  v47 = a3;
  v48 = a4;
  v28 = *(a6 + 172);
  v29 = *(a6 + 8);
  v30 = *(a6 + 16);
  v31 = *(a6 + 24);
  *&v56 = *a6;
  *(&v56 + 1) = v29;
  v57 = v28;
  v58 = v30;
  v59 = v31;
  v49 = a7;
  v32 = a7 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v33 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v34 = v32 + v33 + *(type metadata accessor for MailboxSyncState() + 48);
  v35 = type metadata accessor for PendingServerResponses();
  sub_1B03B5C80(v34 + *(v35 + 24), v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B60C14(&v56, v18, v22);
  v36 = type metadata accessor for NotifyMessagesVanished();
  if ((*(*(v36 - 8) + 48))(v22, 1, v36) == 1)
  {
    sub_1B0398EFC(v22, &qword_1EB6E46F0, &qword_1B0EC5A78);
LABEL_6:
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    goto LABEL_12;
  }

  sub_1B03BCDD0(v22, v26, type metadata accessor for NotifyMessagesVanished);
  v37 = v54;
  v38 = &v26[*(v54 + 36)];
  v39 = MEMORY[0x1E69E7CC0];
  *v38 = MEMORY[0x1E69E7CC0];
  *(v38 + 1) = v39;
  sub_1B0B238BC(v22, type metadata accessor for NotifyMessagesVanished);
  v40 = v53;
  sub_1B03C60A4(v26, v53, &qword_1EB6E46F8, &qword_1B0EC5A80);
  v41 = *(v40 + *(v36 + 36));
  if (!*(v41 + 16) || (sub_1B0B1F36C(v41, v50, v51, v47)) && (v55[3] = v37, v42 = sub_1B0B23F6C(&qword_1EB6E4700, &qword_1EB6E46F8, &qword_1B0EC5A80), v55[4] = v42, v43 = __swift_allocate_boxed_opaque_existential_1(v55), sub_1B03B5C80(v40, v43, &qword_1EB6E46F8, &qword_1B0EC5A80), v44 = v48(v55), __swift_destroy_boxed_opaque_existential_0(v55), (v44))
  {
    *(a8 + 24) = v37;
    *(a8 + 32) = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8);
    sub_1B03C60A4(v40, boxed_opaque_existential_1, &qword_1EB6E46F8, &qword_1B0EC5A80);
  }

  else
  {
    sub_1B0398EFC(v40, &qword_1EB6E46F8, &qword_1B0EC5A80);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

LABEL_12:
  sub_1B03A3614(a6);
}

uint64_t sub_1B0B1B414@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v53 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v51 - v18;
  v19 = type metadata accessor for MessagesPendingDownload();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PendingPersistenceUpdates();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a1 + 43);
  v27 = *a1;
  v51 = a1[1];
  v59 = a1[2];
  v54 = *(a1 + 6);
  v28 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v29 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v30 = type metadata accessor for MailboxSyncState();
  sub_1B03BCDD0(v28 + v29 + *(v30 + 52), v26, type metadata accessor for PendingPersistenceUpdates);
  v31 = &v26[*(v23 + 28)];
  v57 = a2;
  if (a2)
  {
    v31 += *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
  }

  sub_1B03BCDD0(v31, v22, type metadata accessor for MessagesPendingDownload);
  sub_1B03B5C80(&v26[*(v23 + 32)], v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = *(*v22 + 16);
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58 = v22;
  v55 = v26;
  if (v32 < 0x11A || (v33 = sub_1B0B41D24(), (v33 & 0x100000000) != 0))
  {
    v35 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B15E58(v35);
  }

  else
  {
    LODWORD(v63) = 1;
    LODWORD(v62) = v33;
    v34 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v63, &v62, &type metadata for UID, v34, &v64);
    v63 = v64;
    v62 = Range<>.init<A>(_:)(&v63, &type metadata for UID, v34);
    sub_1B03D06F8();
    sub_1B0E46F08();
  }

  MessageIdentifierSet.union(_:)(v61, v17);
  sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v36 = v56;
  sub_1B03B5C80(v17, v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v37 = v59;
  v38 = (v60 & 1) == 0;
  *(a5 + 56) = 0;
  v39 = 47;
  if (v38)
  {
    v39 = 0;
  }

  v53 = v39;
  *a5 = 0;
  *(a5 + 8) = v27;
  *(a5 + 16) = v51;
  *(a5 + 24) = v52;
  *(a5 + 32) = v37;
  v40 = v54;
  *(a5 + 40) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43D0, &qword_1B0EC5138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v42 = v17;
  v43 = v36;
  v44 = v57 & 1;
  if (v57)
  {
    v45 = 10;
  }

  else
  {
    v45 = 9;
  }

  *(inited + 32) = v45;
  v46 = sub_1B03D0770(inited);
  swift_setDeallocating();
  *(a5 + 48) = v46;
  *(a5 + 57) = v44;
  PendingDownload = type metadata accessor for FindPendingDownload();
  sub_1B03B5C80(v43, a5 + PendingDownload[9], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v48 = PendingDownload[11];
  v64 = v37;
  v65 = v40;
  v66 = v44;
  *(a5 + v48) = PendingDownload;
  sub_1B03D0964();
  sub_1B0E461E8();
  sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v55, type metadata accessor for PendingPersistenceUpdates);
  v49 = a5 + PendingDownload[10];
  *v49 = v53;
  *(v49 + 8) = (v60 & 1) == 0;
  sub_1B0B238BC(v58, type metadata accessor for MessagesPendingDownload);
  return (*(*(PendingDownload - 1) + 56))(a5, 0, 1, PendingDownload);
}