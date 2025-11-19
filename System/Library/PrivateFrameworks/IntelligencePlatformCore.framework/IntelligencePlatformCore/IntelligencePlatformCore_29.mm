uint64_t BMContextualUnderstandingSoundAnalysis.asFlatDictionary()()
{
  sub_1C443F580();
  v1 = sub_1C4F00F28();
  sub_1C443F580();
  v2 = sub_1C4F00F28();
  v3 = [v0 classifiedSounds];
  sub_1C4461BB8(0, &qword_1EC0BA6E8, 0x1E698EB78);
  v4 = sub_1C4F01678();

  v65 = sub_1C443156C(v4);
  v5 = 0;
  v64 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v65 == v5)
    {

      v62 = sub_1C465D560(v1);

      return v62;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C6940F90](v5, v4);
    }

    else
    {
      if (v5 >= *(v64 + 16))
      {
        goto LABEL_40;
      }

      v6 = *(v4 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = sub_1C4663178(v6);
    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = v8;
    v11 = v9;
    v12 = 0.0;
    if (v1[2])
    {
      v13 = sub_1C44191B8();
      v15 = sub_1C445FAA8(v13, v14);
      if (v16)
      {
        v12 = *(v1[7] + 8 * v15);
      }
    }

    v66 = v7;
    if (v2[2])
    {
      v17 = sub_1C44191B8();
      v19 = sub_1C445FAA8(v17, v18);
      v20 = 1.0;
      v21 = 1.0;
      if (v22)
      {
        v21 = *(v2[7] + 8 * v19);
      }

      v12 = v12 * v21;
      if (v2[2])
      {
        v23 = sub_1C44191B8();
        v25 = sub_1C445FAA8(v23, v24);
        if (v26)
        {
          v20 = *(v2[7] + 8 * v25) + 1.0;
        }
      }
    }

    else
    {
      v20 = 1.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_1C44191B8();
    v29 = sub_1C445FAA8(v27, v28);
    if (__OFADD__(v2[2], (v30 & 1) == 0))
    {
      goto LABEL_41;
    }

    v31 = v29;
    v32 = v30;
    sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
    if (sub_1C4F02458())
    {
      v33 = sub_1C44191B8();
      v35 = sub_1C445FAA8(v33, v34);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_48;
      }

      v31 = v35;
    }

    if (v32)
    {
      *(v2[7] + 8 * v31) = v20;
    }

    else
    {
      sub_1C4401D38(&v2[v31 >> 6]);
      v37 = (v2[6] + 16 * v31);
      *v37 = v10;
      v37[1] = v11;
      *(v2[7] + 8 * v31) = v20;
      v38 = v2[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_45;
      }

      v2[2] = v40;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    [v66 confidence];
    if (!v2[2])
    {
      goto LABEL_42;
    }

    v42 = v41;
    v43 = sub_1C44191B8();
    v45 = sub_1C445FAA8(v43, v44);
    if ((v46 & 1) == 0)
    {
      goto LABEL_43;
    }

    v47 = *(v2[7] + 8 * v45);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_1C44191B8();
    v50 = sub_1C445FAA8(v48, v49);
    v52 = v51;
    if (__OFADD__(v1[2], (v51 & 1) == 0))
    {
      goto LABEL_44;
    }

    v53 = v50;
    if (sub_1C4F02458())
    {
      v54 = sub_1C44191B8();
      v56 = sub_1C445FAA8(v54, v55);
      if ((v52 & 1) != (v57 & 1))
      {
        goto LABEL_48;
      }

      v53 = v56;
    }

    if (v52)
    {
      *(v1[7] + 8 * v53) = (v12 + v42) / v47;
    }

    else
    {
      sub_1C4401D38(&v1[v53 >> 6]);
      v58 = (v1[6] + 16 * v53);
      *v58 = v10;
      v58[1] = v11;
      *(v1[7] + 8 * v53) = v59;
      v60 = v1[2];
      v39 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v39)
      {
        goto LABEL_46;
      }

      v1[2] = v61;
    }

    ++v5;
  }

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
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C466018C()
{
  v1 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  sub_1C4405814();
  sub_1C4660594();
  *v0 = v2;
}

_OWORD *sub_1C46601FC()
{
  sub_1C442F0C4();
  v3 = v0;
  v7 = sub_1C4416E4C(v4, v5, v6);
  sub_1C442C5D8(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4460A24();
  sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v10 = *v0;
    v11 = sub_1C4405814();
    sub_1C445FAA8(v11, v12);
    sub_1C44331E4();
    if (!v14)
    {
      goto LABEL_14;
    }

    v2 = v13;
  }

  if (v1)
  {
    sub_1C440962C((*(*v3 + 56) + 32 * v2));
    sub_1C43FBC98();
    sub_1C4422220();

    return sub_1C44482AC(v15, v16);
  }

  else
  {
    sub_1C441C874();
    sub_1C457DC88(v19, v20, v21, v22, v23);
    sub_1C4422220();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C466033C()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v2 = sub_1C4EFDAF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C457AAB4();
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA780, &qword_1C4F146B8);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AAB4();
    sub_1C440F418();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v13 = sub_1C4411960();
    v14(v13);
    v15 = sub_1C4412E2C();
    sub_1C457DD10(v15, v16, v17, v18);
    sub_1C43FE9F0();
  }
}

void sub_1C4660468()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v2 = sub_1C4EFEEF8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C457AB64();
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA838, &unk_1C4F54220);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AB64();
    sub_1C440F418();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v12 = sub_1C4411960();
    v13(v12);
    v14 = sub_1C4412E2C();
    sub_1C457DD28(v14, v15, v16, v17);
    sub_1C43FE9F0();
  }
}

void sub_1C4660594()
{
  sub_1C4424FA4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1C445FAA8(v6, v4);
  sub_1C442C5D8(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
  if (sub_1C440D17C())
  {
    v14 = sub_1C440C3B4();
    sub_1C445FAA8(v14, v5);
    sub_1C43FED0C();
    if (!v16)
    {
      goto LABEL_12;
    }

    v3 = v15;
  }

  v17 = *v1;
  if (v2)
  {
    *(*(v17 + 56) + 8 * v3) = v9;
  }

  else
  {
    sub_1C457DBD8(v3, v7, v5, v17);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C46606B8()
{
  sub_1C43FBD3C();
  v5 = v1;
  v7 = v6;
  sub_1C448F0D8();
  v9 = sub_1C457AC14(v8);
  sub_1C442C5D8(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  sub_1C456902C(&qword_1EC0BA7E0, &qword_1C4F14708);
  if (sub_1C44951A0())
  {
    v16 = *v1;
    sub_1C457AC14(v7);
    sub_1C4404D54();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  if (v15)
  {
    v19 = (*(*v5 + 56) + 32 * v14);
    *v19 = v4;
    v19[1] = v3;
    v19[2] = v2;
    v19[3] = v0;
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C43FE9F0();

    sub_1C457DD40(v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1C46607A8()
{
  sub_1C442F0C4();
  v4 = sub_1C441F5D8(v2, v3);
  v5 = sub_1C457AC14(v4);
  sub_1C442C5D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0BA7D8, &qword_1C4F14700);
  v8 = sub_1C440D17C();
  if (v8)
  {
    v11 = sub_1C440C3B4();
    sub_1C457AC14(v11);
    sub_1C43FED0C();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C442AB6C(v8, v9, v10, *v0);
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    return sub_1C457EB24(v15, v16, v17, v18);
  }
}

void sub_1C4660870()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v4 = sub_1C4EFDAB8();
  v5 = sub_1C43FCDF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4406908();
  sub_1C457AD28();
  sub_1C442C5D8(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B9A48, &unk_1C4F10BA0);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AD28();
    sub_1C440F418();
    if (!v12)
    {
      goto LABEL_11;
    }

    v2 = v11;
  }

  if (v3)
  {
    sub_1C44408D4(v0, *(*v1 + 56) + 48 * v2, &qword_1EC0B9A20, &unk_1C4F10DF0);
  }

  else
  {
    v13 = sub_1C4411960();
    v14(v13);
    v15 = sub_1C4412E2C();
    sub_1C457DD8C(v15, v16, v17, v18);
  }

  sub_1C43FE9F0();
}

void sub_1C466099C()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v2 = sub_1C4EFDAB8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C457AD28();
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA708, &qword_1C4F14668);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AD28();
    sub_1C440F418();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v12 = sub_1C4411960();
    v13(v12);
    v14 = sub_1C4412E2C();
    sub_1C457DE14(v14, v15, v16, v17);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C4660AC8()
{
  sub_1C442F0C4();
  v4 = sub_1C441F5D8(v2, v3);
  v5 = sub_1C457ADD8(v4);
  sub_1C442C5D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0BA7D0, &qword_1C4F146F8);
  v8 = sub_1C440D17C();
  if (v8)
  {
    v11 = sub_1C440C3B4();
    sub_1C457ADD8(v11);
    sub_1C43FED0C();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C442AB6C(v8, v9, v10, *v0);
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    return sub_1C457EB24(v15, v16, v17, v18);
  }
}

void sub_1C4660B90()
{
  sub_1C442F0C4();
  v6 = sub_1C441F5D8(v4, v5);
  v7 = sub_1C457AE04(v6);
  sub_1C442C5D8(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for PHPersonAgeType(0);
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0B8D90, &qword_1C4F0E330);
  if (sub_1C440D17C())
  {
    v10 = sub_1C440C3B4();
    sub_1C457AE04(v10);
    sub_1C43FED0C();
    if (!v12)
    {
      goto LABEL_12;
    }

    v3 = v11;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    sub_1C457DE2C(v13, v14, v15, v16);
  }
}

void sub_1C4660C74()
{
  sub_1C442F0C4();
  sub_1C444B080();
  v5 = v4;
  v7 = sub_1C440DFB8(v4, v6);
  v9 = sub_1C445FAA8(v7, v8);
  sub_1C442C5D8(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4460A24();
  sub_1C456902C(&qword_1EC0B9E10, &unk_1C4F12D68);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C444C21C();
    sub_1C44331E4();
    if (!v13)
    {
      goto LABEL_12;
    }

    v3 = v12;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 2 * v3) = v5;
    sub_1C4422220();
  }

  else
  {
    v14 = sub_1C44158DC();
    sub_1C457DE68(v14, v15, v0, v5, v16);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4660D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v26;
  v39 = v38;
  v41 = v40;
  v42 = *v26;
  v43 = sub_1C457AF68();
  sub_1C442C5D8(v43, v44);
  if (v45)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(v36, v34);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v46 = *v37;
    sub_1C457AF68();
    sub_1C4410A40();
    if (!v48)
    {
      goto LABEL_12;
    }

    v27 = v47;
  }

  v49 = *v37;
  if (v28)
  {
    v50 = *(v49 + 56);
    v51 = *(v50 + 8 * v27);
    *(v50 + 8 * v27) = v41;
    sub_1C4405950();
  }

  else
  {
    v32(v27, v39, v41, v49);
    sub_1C45A2358(v39, &a9);
    sub_1C4405950();
  }
}

uint64_t sub_1C4660EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F0C4();
  v11 = v10;
  v15 = sub_1C4416E4C(v12, v13, v14);
  sub_1C442C5D8(v15, v16);
  if (v19)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v20 = v17;
  v21 = v18;
  sub_1C456902C(&qword_1EC0B8D78, &qword_1C4F0E308);
  sub_1C43FD314();
  v22 = sub_1C4F02458();
  if (v22)
  {
    v10 = *v10;
    v26 = sub_1C4405814();
    sub_1C445FAA8(v26, v27);
    sub_1C4410A40();
    if (!v28)
    {
      goto LABEL_14;
    }

    v20 = v22;
  }

  if (v21)
  {
    sub_1C4413ECC(v22, v23, v24, v25, *v11);
    v29 = sub_1C4EFF0C8();
    sub_1C43FBCE0(v29);
    v31 = *(v30 + 40);
    sub_1C443F124(v10 + *(v30 + 72) * v20);
    sub_1C4422220();

    return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }

  else
  {
    sub_1C441C874();
    sub_1C457DEE8(v41, v42, v43, v44, v45);
    sub_1C4422220();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4660FFC()
{
  sub_1C44158A0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v34 = v8;
  sub_1C446060C();
  v10 = v9;
  v11 = *v0;
  v14 = sub_1C445FAA8(v12, v13);
  sub_1C442C5D8(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v19 = v16;
  v20 = v17;
  sub_1C456902C(&qword_1EC0BA928, &qword_1C4F14800);
  if (sub_1C4F02458())
  {
    v21 = *v3;
    v22 = sub_1C44158DC();
    sub_1C445FAA8(v22, v23);
    sub_1C440F418();
    if (!v25)
    {
      goto LABEL_14;
    }

    v19 = v24;
  }

  v26 = *v3;
  if (v20)
  {
    v27 = (*(v26 + 56) + 32 * v19);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    *v27 = v10;
    v27[1] = v2;
    v27[2] = v1;
    v27[3] = v34;

    sub_1C4410198();
  }

  else
  {
    sub_1C457DF64(v19, v7, v5, v10, v2, v1, v34, v26);
    sub_1C4410198();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4661148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v15 = sub_1C4EFF428();
  v16 = sub_1C43FCDF8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4406908();
  sub_1C457B070();
  sub_1C442C5D8(v19, v20);
  if (v21)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA920, &unk_1C4F3A6B0);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457B070();
    sub_1C440F418();
    if (!v23)
    {
      goto LABEL_12;
    }

    v13 = v22;
  }

  if (v14)
  {
    v24 = *(*v12 + 56);
    v25 = sub_1C4EFF0C8();
    sub_1C43FBCE0(v25);
    v27 = *(v26 + 40);
    sub_1C443F124(v24 + *(v26 + 72) * v13);
    sub_1C43FE9F0();

    v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    v36 = sub_1C4411960();
    v37(v36);
    v38 = sub_1C4412E2C();
    sub_1C457DFB4(v38, v39, v40, v41);
    sub_1C43FE9F0();
  }
}

void sub_1C46612A8()
{
  sub_1C43FBD3C();
  sub_1C44305B0(v3, v4);
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C457AB64();
  sub_1C442C5D8(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(&qword_1EC0BA730, &qword_1C4F14678);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C457AB64();
    sub_1C447EF98();
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v15 = *v1;
  if (v2)
  {
    sub_1C4422A54();
    sub_1C43FE9F0();
  }

  else
  {
    v17 = *(v8 + 16);
    v18 = sub_1C44158DC();
    v19(v18);
    v20 = sub_1C43FD018();
    sub_1C457DFF8(v20, v21, v0, v22, v15);
    sub_1C43FE9F0();
  }
}

id sub_1C46613F0()
{
  v2 = v1;
  sub_1C44041A4();
  v18 = v3;
  v4 = sub_1C457EB50(v3);
  sub_1C442C5D8(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for NLLanguage(0);
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_1C456902C(&qword_1EC0BA760, &qword_1C4F14698);
  if (sub_1C4423638())
  {
    v11 = *v1;
    sub_1C457EB50(v18);
    sub_1C43FED0C();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  v14 = *v2;
  if (v10)
  {
    v15 = *(v14 + 56);
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = v0;
  }

  else
  {
    sub_1C457EB30(v9, v18, v0, v14);

    return v18;
  }
}

void sub_1C46614F4()
{
  sub_1C442F0C4();
  sub_1C4424FA4();
  sub_1C44041A4();
  v5 = sub_1C457B350(v4);
  sub_1C442C5D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0BA868, &qword_1C4F14768);
  if (sub_1C440D17C())
  {
    v8 = sub_1C440C3B4();
    sub_1C457B350(v8);
    sub_1C43FED0C();
    if (!v10)
    {
      goto LABEL_12;
    }

    v3 = v9;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_1C4422220();
  }

  else
  {
    sub_1C4422220();

    sub_1C4457B50(v11, v12, v13, v14);
  }
}

uint64_t sub_1C46615C4(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1C457B394();
  sub_1C442C5D8(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_1C456902C(&qword_1EC0BA8D8, &qword_1C4F147C0);
  result = sub_1C4423638();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  result = sub_1C457B394();
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    *(*(v17 + 56) + 8 * v12) = a2;
  }

  else
  {
    sub_1C457EB34(v12, a1, v17, a2);

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

void sub_1C46616C8()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v2 = sub_1C4EFF0C8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C44E3664();
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_10:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C44E3664();
    sub_1C440F418();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v1)
  {
    v10 = *(*v0 + 56);
    v11 = type metadata accessor for EntityMatch(0);
    sub_1C43FBD18(v11);
    v13 = *(v12 + 72);
    sub_1C443E2D8();
  }

  else
  {
    v14 = sub_1C4411960();
    v15(v14);
    v16 = sub_1C4412E2C();
    sub_1C457E06C(v16, v17, v18, v19);
  }

  sub_1C43FE9F0();
}

void sub_1C466182C()
{
  sub_1C43FBD3C();
  sub_1C4434074(v5, v6, v7, v8, v9, v10);
  v25 = sub_1C4EFF0C8();
  v11 = sub_1C43FCDF8(v25);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C44E3664();
  sub_1C442C5D8(v16, v17);
  if (v18)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(v1, v0);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C44E3664();
    sub_1C447EF98();
    if (!v20)
    {
      goto LABEL_11;
    }

    v3 = v19;
  }

  if (v4)
  {
    *(*(*v2 + 56) + 8 * v3) = v27;
  }

  else
  {
    v21 = *(v13 + 16);
    v22 = sub_1C44158DC();
    v23(v22);
    v24 = sub_1C43FD018();
    v26(v24);
  }

  sub_1C43FE9F0();
}

void sub_1C4661954()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v2 = sub_1C4EFF0C8();
  v3 = sub_1C43FCDF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4406908();
  sub_1C44E3664();
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA848, &unk_1C4F4F970);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C44E3664();
    sub_1C440F418();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *v0;
  if (v1)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    v12 = sub_1C4411960();
    v13(v12);
    v14 = sub_1C4412E2C();
    sub_1C457EB2C(v14);
    sub_1C43FE9F0();
  }
}

void sub_1C4661AA8()
{
  sub_1C43FBD3C();
  sub_1C44305B0(v3, v4);
  v5 = sub_1C4EFF8A8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440593C();
  sub_1C457AC78();
  sub_1C442C5D8(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443EEC4();
  sub_1C456902C(&qword_1EC0BA710, &unk_1C4F17420);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    sub_1C447F8EC();
    sub_1C457AC78();
    sub_1C447EF98();
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  v15 = *v1;
  if (v2)
  {
    sub_1C4422A54();
    sub_1C43FE9F0();
  }

  else
  {
    v17 = *(v8 + 16);
    v18 = sub_1C44158DC();
    v19(v18);
    v20 = sub_1C43FD018();
    sub_1C457E114(v20, v21, v0, v22, v15);
    sub_1C43FE9F0();
  }
}

void sub_1C4661C40()
{
  sub_1C442F0C4();
  v5 = sub_1C441F5D8(v3, v4);
  v6 = sub_1C457ADD8(v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  sub_1C456902C(&qword_1EC0BA750, &qword_1C4F61360);
  if (sub_1C440D17C())
  {
    v9 = sub_1C440C3B4();
    sub_1C457ADD8(v9);
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v1 = v10;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 40 * v1));
    sub_1C43FBC98();
    sub_1C4422220();

    sub_1C441D670(v12, v13);
  }

  else
  {
    sub_1C4459B10();
    sub_1C4422220();

    sub_1C457E1C8(v15, v16, v17, v18);
  }
}

void sub_1C4661D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440D19C();
  a25 = v31;
  a26 = v32;
  v33 = v27;
  sub_1C448F0D8();
  v34 = sub_1C457AF68();
  sub_1C442C5D8(v34, v35);
  if (v38)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v39 = v36;
  v40 = v37;
  sub_1C456902C(&qword_1EC0BA718, &qword_1C4F541F0);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    v41 = *v27;
    sub_1C457AF68();
    sub_1C4404D54();
    if (!v43)
    {
      goto LABEL_12;
    }

    v39 = v42;
  }

  v44 = *v33;
  if (v40)
  {
    v45 = (*(v44 + 56) + 24 * v39);
    v46 = v45[2];
    *v45 = v30;
    v45[1] = v29;
    v45[2] = v28;
    sub_1C4405950();
  }

  else
  {
    sub_1C457E1E0(v39, v26, v30, v29, v28, v44);
    sub_1C45A2358(v26, &a9);
    sub_1C4405950();
  }
}

void sub_1C4661F14()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v3 = sub_1C4EFEEF8();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4406908();
  sub_1C457AB64();
  sub_1C442C5D8(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0BA8A8, &qword_1C4F14790);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C457AB64();
    sub_1C440F418();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 32 * v1));
    sub_1C43FBC98();
    sub_1C43FE9F0();

    sub_1C44482AC(v12, v13);
  }

  else
  {
    v15 = sub_1C4411960();
    v16(v15);
    v17 = sub_1C4412E2C();
    sub_1C457E244(v17, v18, v19, v20);
    sub_1C43FE9F0();
  }
}

void sub_1C466207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v15 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4406908();
  sub_1C44E3664();
  sub_1C442C5D8(v19, v20);
  if (v21)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B8DD8, qword_1C4F0E370);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C44E3664();
    sub_1C440F418();
    if (!v23)
    {
      goto LABEL_12;
    }

    v13 = v22;
  }

  if (v14)
  {
    v24 = *(*v12 + 56);
    v25 = sub_1C4EF9D38();
    sub_1C43FBCE0(v25);
    v27 = *(v26 + 40);
    sub_1C443F124(v24 + *(v26 + 72) * v13);
    sub_1C43FE9F0();

    v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    v36 = sub_1C4411960();
    v37(v36);
    v38 = sub_1C4412E2C();
    sub_1C457E2C0(v38, v39, v40, v41);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C46621DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBD3C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1C440DFB8(v22, v20);
  v25 = sub_1C457EB3C(v24);
  sub_1C442C5D8(v25, v26);
  if (v29)
  {
    __break(1u);
LABEL_14:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v30 = v27;
  v31 = v28;
  sub_1C456902C(&qword_1EC0B8DD0, &qword_1C4F0E368);
  if (sub_1C44951A0())
  {
    v32 = *v12;
    sub_1C457EB3C(v21);
    sub_1C440F418();
    if (!v34)
    {
      goto LABEL_14;
    }

    v30 = v33;
  }

  v35 = *v13;
  if (v31)
  {
    v36 = *(v35 + 56);
    v37 = sub_1C4EFF8A8();
    sub_1C43FBCE0(v37);
    v39 = *(v38 + 40);
    sub_1C443F124(v36 + *(v38 + 72) * v30);
    sub_1C43FE9F0();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  else
  {
    sub_1C457E3B0(v30, v21, v19, v17, v15, v23, v35);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE9F0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4662330()
{
  sub_1C442F0C4();
  sub_1C444B080();
  v5 = v4;
  v7 = sub_1C440DFB8(v4, v6);
  v9 = sub_1C445FAA8(v7, v8);
  sub_1C442C5D8(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4460A24();
  sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C444C21C();
    sub_1C44331E4();
    if (!v13)
    {
      goto LABEL_12;
    }

    v3 = v12;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v5;
    sub_1C4422220();
  }

  else
  {
    v14 = sub_1C44158DC();
    sub_1C44686AC(v14, v15, v0, v5, v16);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4662408()
{
  sub_1C4424FA4();
  v5 = v4;
  sub_1C44041A4();
  v6 = sub_1C457B530();
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  sub_1C456902C(&qword_1EC0BA878, &qword_1C4F14778);
  if (sub_1C440D17C())
  {
    sub_1C440C3B4();
    sub_1C457B530();
    sub_1C44331E4();
    if (!v10)
    {
      goto LABEL_11;
    }

    v2 = v9;
  }

  v11 = *v1;
  if (v3)
  {
    *(*(v11 + 56) + 8 * v2) = v0;
  }

  else
  {
    v12 = *v5;
    v15 = v5[1];
    v16 = v12;
    v14 = v5[2];
    sub_1C457E490(v2, v5, v0, v11);
    sub_1C448DB48(&v16, v13);
    sub_1C448DB48(&v15, v13);
    sub_1C448DB48(&v14, v13);
  }
}

void sub_1C4662550()
{
  sub_1C442F0C4();
  v6 = sub_1C441F5D8(v4, v5);
  v7 = sub_1C457B5CC(v6);
  sub_1C442C5D8(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0BA950, &qword_1C4F14818);
  if (sub_1C440D17C())
  {
    v10 = sub_1C440C3B4();
    sub_1C457B5CC(v10);
    sub_1C43FED0C();
    if (!v12)
    {
      goto LABEL_12;
    }

    v3 = v11;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    sub_1C457E4E0(v13, v14, v15, v16);
  }
}

uint64_t sub_1C466260C()
{
  sub_1C442F0C4();
  v4 = sub_1C441F5D8(v2, v3);
  v5 = sub_1C457B5CC(v4);
  sub_1C442C5D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C44690DC();
  sub_1C456902C(&qword_1EC0BA958, &qword_1C4F14820);
  v8 = sub_1C440D17C();
  if (v8)
  {
    v11 = sub_1C440C3B4();
    sub_1C457B5CC(v11);
    sub_1C43FED0C();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C442AB6C(v8, v9, v10, *v0);
    sub_1C4422220();
  }

  else
  {
    sub_1C4409AF8();
    sub_1C4422220();

    return sub_1C457EB24(v15, v16, v17, v18);
  }
}

void sub_1C466288C()
{
  sub_1C442F0C4();
  v1 = v0;
  v5 = sub_1C4416E4C(v2, v3, v4);
  sub_1C442C5D8(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v9 = v7;
  sub_1C456902C(&qword_1EC0B8D80, &qword_1C4F0E318);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    v10 = *v0;
    v11 = sub_1C4405814();
    sub_1C445FAA8(v11, v12);
    sub_1C4410A40();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  if (v9)
  {
    v14 = *(*v1 + 56);
    v15 = sub_1C456902C(&qword_1EC0B8588, &qword_1C4F0E310);
    sub_1C43FBD18(v15);
    v17 = *(v16 + 72);
    sub_1C440BBC0();
    sub_1C44408D4(v18, v19, v20, v21);
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C457E63C(v22, v23, v24, v25, v26);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C46629C4()
{
  sub_1C442F0C4();
  v5 = sub_1C441F5D8(v3, v4);
  v6 = sub_1C457B724(v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  sub_1C456902C(&qword_1EC0BA758, &qword_1C4F14690);
  if (sub_1C440D17C())
  {
    v9 = sub_1C440C3B4();
    sub_1C457B724(v9);
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v1 = v10;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 40 * v1));
    sub_1C43FBC98();
    sub_1C4422220();

    sub_1C441D670(v12, v13);
  }

  else
  {
    sub_1C4459B10();
    sub_1C4422220();

    sub_1C457E1C8(v15, v16, v17, v18);
  }
}

void sub_1C4662AA0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for EntityEdge();
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = *v0;
  v14 = sub_1C457B750(v3);
  sub_1C442C5D8(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v19 = v16;
  v20 = v17;
  sub_1C456902C(&qword_1EC0BA740, &qword_1C4F14688);
  sub_1C4408720();
  if (sub_1C4F02458())
  {
    v21 = sub_1C440C3B4();
    sub_1C457B750(v21);
    sub_1C4404D54();
    if (!v23)
    {
      goto LABEL_12;
    }

    v19 = v22;
  }

  v24 = *v1;
  if (v20)
  {
    sub_1C43FC0B4();
    sub_1C43FE9F0();
  }

  else
  {
    sub_1C46631E8();
    sub_1C457E6B4(v19, v12, v5, v24);
    sub_1C43FE9F0();
  }
}

void sub_1C4662C0C()
{
  sub_1C442F0C4();
  v2 = v0;
  v6 = sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(&qword_1EC0BA770, &qword_1C4F146A8);
  sub_1C43FD314();
  v9 = sub_1C4F02458();
  if (v9)
  {
    v13 = *v0;
    v14 = sub_1C4405814();
    sub_1C445FAA8(v14, v15);
    sub_1C4410A40();
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    v17 = sub_1C4413ECC(v9, v10, v11, v12, *v2);
    v18 = _s14ViewConfigInfoVMa(v17);
    sub_1C43FBD18(v18);
    v20 = *(v19 + 72);
    sub_1C443E2D8();
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C457E728(v21, v22, v23, v24, v25);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C4662D08()
{
  sub_1C442F0C4();
  v5 = sub_1C441F5D8(v3, v4);
  v6 = sub_1C444F264(v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4411974();
  sub_1C456902C(&qword_1EC0BA6F0, &qword_1C4F61340);
  if (sub_1C440D17C())
  {
    v9 = sub_1C440C3B4();
    sub_1C444F264(v9);
    sub_1C44331E4();
    if (!v11)
    {
      goto LABEL_14;
    }

    v1 = v10;
  }

  if (v2)
  {
    sub_1C440962C((*(*v0 + 56) + 40 * v1));
    sub_1C43FBC98();
    sub_1C4422220();

    sub_1C441D670(v12, v13);
  }

  else
  {
    sub_1C4459B10();
    sub_1C4422220();

    sub_1C457E1C8(v15, v16, v17, v18);
  }
}

void sub_1C4662E0C()
{
  sub_1C43FBD3C();
  sub_1C440A7AC();
  v3 = sub_1C4EF98F8();
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4406908();
  sub_1C43FE83C();
  sub_1C442C5D8(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C441020C();
  sub_1C456902C(&qword_1EC0B8DA0, &qword_1C4F0E338);
  sub_1C43FD314();
  if (sub_1C4F02458())
  {
    sub_1C4426A50();
    sub_1C43FE83C();
    sub_1C440F418();
    if (!v11)
    {
      goto LABEL_12;
    }

    v1 = v10;
  }

  v12 = *v0;
  if (v2)
  {
    sub_1C44141A0();
    sub_1C440962C((v14 + v1 * v13));
    sub_1C43FBC98();
    sub_1C43FE9F0();

    sub_1C441D670(v15, v16);
  }

  else
  {
    v18 = sub_1C4411960();
    v19(v18);
    v20 = sub_1C4412E2C();
    sub_1C457E938(v20, v21, v22, v23);
    sub_1C43FE9F0();
  }
}

void sub_1C4662F4C()
{
  sub_1C442F0C4();
  v2 = v0;
  v6 = sub_1C4416E4C(v3, v4, v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C443DF54();
  sub_1C456902C(&qword_1EC0B8D88, &qword_1C4F0E328);
  sub_1C43FD314();
  v9 = sub_1C4F02458();
  if (v9)
  {
    v13 = *v0;
    v14 = sub_1C4405814();
    sub_1C445FAA8(v14, v15);
    sub_1C4410A40();
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    sub_1C4413ECC(v9, v10, v11, v12, *v2);
    v17 = _s15NameAndRequestsVMa();
    sub_1C43FBD18(v17);
    v19 = *(v18 + 72);
    sub_1C443E2D8();
    sub_1C4422220();
  }

  else
  {
    sub_1C441C874();
    sub_1C457E9B8(v20, v21, v22, v23, v24);
    sub_1C4422220();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4663098()
{
  sub_1C44158A0();
  sub_1C446060C();
  v4 = sub_1C440DFB8(v2, v3);
  v6 = sub_1C445FAA8(v4, v5);
  sub_1C442C5D8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  sub_1C4423AC0();
  sub_1C4408720();
  v9 = sub_1C4F02458();
  if (v9)
  {
    sub_1C4451290();
    sub_1C4410A40();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1C4440968(v9, v10, v11, v12, *v0);
    sub_1C4410198();
  }

  else
  {
    v16 = sub_1C441E240();
    v17(v16);
    sub_1C4410198();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C4663178(void *a1)
{
  v1 = [a1 soundName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C46631DC(uint64_t a1, char a2)
{
  if (a2)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C46631E8()
{
  v1 = sub_1C43FECE0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C4663250(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C46632A8(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C46632A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v10, a2, v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v12, v10, 1, 1, 0);
  v17 = [a1 publisherWithOptions_];

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v31 = sub_1C4663A20;
  v32 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C44405F8;
  v30 = &unk_1F43E5ED0;
  v19 = _Block_copy(&aBlock);
  v20 = a1;

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v13;
  v31 = sub_1C4663A28;
  v32 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C443EC24;
  v30 = &unk_1F43E5F20;
  v22 = _Block_copy(&aBlock);
  v23 = v20;

  v24 = [v17 sinkWithCompletion:v19 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v19);

  swift_beginAccess();
  *a3 = *(v13 + 16);
  swift_unknownObjectRetain();
}

void sub_1C46635CC(void *a1, void *a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = a2;
    v7 = v4;
    oslog = sub_1C4F00968();
    v8 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315394;
      v11 = [v6 description];
      v12 = sub_1C4F01138();
      v14 = v13;

      v15 = sub_1C441D828(v12, v14, &v21);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2080;
      v16 = v7;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, &v21);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_1C43F8000, oslog, v8, "Unable to fetch events from stream %s with error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v10, -1, -1);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4663814(void *a1, void *a2, uint64_t a3)
{
  if ([a1 respondsToSelector_])
  {
    v6 = [a1 eventBody];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      v8 = *(a3 + 16);
      *(a3 + 16) = v7;
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v9 = sub_1C4F00978();
      sub_1C442B738(v9, qword_1EDDFECB8);
      v10 = a2;
      oslog = sub_1C4F00968();
      v11 = sub_1C4F01CF8();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136315138;
        v14 = [v10 description];
        v15 = sub_1C4F01138();
        v17 = v16;

        v18 = sub_1C441D828(v15, v17, &v20);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_1C43F8000, oslog, v11, "Unable to parse event body from stream: %s", v12, 0xCu);
        sub_1C440962C(v13);
        MEMORY[0x1C6942830](v13, -1, -1);
        MEMORY[0x1C6942830](v12, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1C4663A38()
{
  type metadata accessor for BMWalletOrderMonitor();
  v0 = swift_allocObject();
  result = sub_1C4663A74();
  qword_1EDE2CC28 = v0;
  return result;
}

void *sub_1C4663A74()
{
  v2 = v0;
  v3 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    sub_1C440D1D4();
    *v7 = 136315138;
    v8 = sub_1C46655C4();
    v10 = sub_1C441D828(v8, v9, &v12);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v5, v6, "<%s: Init>", v7, 0xCu);
    sub_1C440962C(v1);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  return v2;
}

uint64_t sub_1C4663BC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C4663BE8()
{
  sub_1C4663BC0();

  return swift_deallocClassInstance();
}

void sub_1C4663C1C(uint64_t a1)
{
  v67 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Configuration();
  v4 = sub_1C43FCF7C(v3);
  v69 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v70 = v8;
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F01D98();
  v66 = *(v9 - 8);
  v10 = v66[8];
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v65 = (v12 - v11);
  v13 = sub_1C4F01D58();
  v14 = sub_1C43FBCE0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = sub_1C4F00D88();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1C43FBCC4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDDFECB8);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CB8();
  v22 = os_log_type_enabled(v20, v21);
  v68 = v2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136315138;
    v25 = sub_1C46655C4();
    v27 = sub_1C441D828(v25, v26, &aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1C43F8000, v20, v21, "<%s: Starting observe notification>", v23, 0xCu);
    sub_1C440962C(v24);
    sub_1C43FEA20();
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  v28 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v29 = [v28 FoundIn];
  swift_unknownObjectRelease();
  sub_1C4665684();
  sub_1C4F00D78();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C46656C8(&qword_1EDDF0418, MEMORY[0x1E69E8030]);
  sub_1C456902C(&qword_1EC0B8498, &qword_1C4F0CD40);
  sub_1C4573E04();
  sub_1C4F020C8();
  (v66[13])(v65, *MEMORY[0x1E69E8090], v9);
  v30 = sub_1C4F01DC8();
  type metadata accessor for BMWalletOrderMonitor.WalletOrderTask();
  v31 = swift_allocObject();
  *(v31 + 16) = 0xD000000000000033;
  *(v31 + 24) = 0x80000001C4F8F090;
  *(v31 + 32) = 0;
  *(v31 + 40) = MEMORY[0x1E69E7CD0];
  sub_1C456902C(&qword_1EC0BA990, &qword_1C4F148C8);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = v31;
  v33 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v34 = v30;
  v35 = sub_1C4665710(0xD000000000000030, 0x80000001C4F8EFD0, v34, 1);
  v64 = v35;
  v36 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v37 = v34;
  v38 = sub_1C4665710(0xD000000000000032, 0x80000001C4F8F010, v37, 1);
  v65 = v38;
  v39 = objc_allocWithZone(MEMORY[0x1E698F258]);
  v66 = v37;
  v40 = sub_1C4665710(0xD000000000000036, 0x80000001C4F8F050, v66, 1);
  v62 = v40;
  v41 = [v29 ClassicOrder];
  v42 = [v41 DSLPublisher];

  v43 = [v42 subscribeOn_];
  v60 = v43;

  v63 = v29;
  v44 = [v29 OrderEmail];
  v45 = [v44 DSLPublisher];

  v46 = [v45 subscribeOn_];
  v61 = v46;

  v47 = [v29 Transaction];
  v48 = [v47 DSLPublisher];

  v49 = [v48 subscribeOn_];
  v50 = [v46 mergeWithOther_];
  v51 = [v50 mergeWithOther_];

  v76 = nullsub_1;
  v77 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1C44405F8;
  v75 = &unk_1F43E5F48;
  v52 = _Block_copy(&aBlock);
  v53 = v71;
  sub_1C4430958(v67, v71, type metadata accessor for Configuration);
  v54 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v55 = (v70 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = v32;
  sub_1C4665AA8(v53, v56 + v54, type metadata accessor for Configuration);
  *(v56 + v55) = v68;
  v76 = sub_1C4665784;
  v77 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1C443EC24;
  v75 = &unk_1F43E5F98;
  v57 = _Block_copy(&aBlock);

  v58 = [v51 sinkWithCompletion:v52 receiveInput:v57];
  _Block_release(v57);
  _Block_release(v52);
  swift_unknownObjectRelease();
}

uint64_t sub_1C4664464(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v40 = a2;
  v6 = type metadata accessor for Configuration();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = v8;
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Source();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocBox();
  v15 = v14;
  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v16 = sub_1C442B738(v9, &qword_1EDDFD290);
  sub_1C4430958(v16, v15, type metadata accessor for Source);
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_eventBody))
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_1EDDFD1A0 != -1)
        {
          swift_once();
        }

        v17 = &qword_1EDDFD1A8;
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
LABEL_16:
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        if (qword_1EDDFD1F0 != -1)
        {
          swift_once();
        }

        v17 = &qword_1EDDFD1F8;
      }

      v16 = sub_1C442B738(v9, v17);
    }

    sub_1C4665A44(v16, v15);
    goto LABEL_16;
  }

LABEL_17:
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDDFECB8);

  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CB8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41[0] = v22;
    *v21 = 136315394;
    v23 = sub_1C46655C4();
    v25 = sub_1C441D828(v23, v24, v41);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    swift_beginAccess();
    sub_1C4430958(v15, v12, type metadata accessor for Source);
    v26 = *v12;
    v27 = v12[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448D818(v12);
    v28 = sub_1C441D828(v26, v27, v41);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_1C43F8000, v19, v20, "<%s: Received notification for %{public}s>", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v22, -1, -1);
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  swift_beginAccess();
  sub_1C4430958(v15, v12, type metadata accessor for Source);
  v29 = v40;
  sub_1C46649E0(v12, v40);
  sub_1C448D818(v12);
  v30 = v39;
  sub_1C4430958(v38, v39, type metadata accessor for Configuration);
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = (v37 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = sub_1C4665AA8(v30, v33 + v31, type metadata accessor for Configuration);
  *(v33 + v32) = v13;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  MEMORY[0x1EEE9AC00](v34);
  *(&v36 - 4) = v29;
  *(&v36 - 3) = &unk_1C4F148D8;
  *(&v36 - 2) = v33;

  os_unfair_lock_lock(v29 + 6);
  sub_1C4665A24();
  os_unfair_lock_unlock(v29 + 6);
}

uint64_t sub_1C46649E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  v11 = a1;
  os_unfair_lock_lock((a2 + 24));
  sub_1C4665B08((a2 + 16), v8);
  os_unfair_lock_unlock((a2 + 24));
  return sub_1C448D818(&v8[*(v5 + 56)]);
}

uint64_t sub_1C4664AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(type metadata accessor for Source() - 8);
  v4[10] = v5;
  v6 = *(v5 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4664B78, 0, 0);
}

uint64_t sub_1C4664B78()
{
  v36 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v2 = sub_1C4F00978();
  *(v0 + 112) = sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    sub_1C440D1D4();
    *v6 = 136315138;
    v7 = sub_1C46655C4();
    v9 = sub_1C441D828(v7, v8, &v35);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v3, v4, "<%s: Starting delta update>", v6, 0xCu);
    sub_1C440962C(v1);
    sub_1C43FFD4C();
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 48);
  v12 = *(v11 + 32);
  *(v0 + 160) = v12;
  v13 = -1;
  v14 = -1 << v12;
  if (-(-1 << v12) < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v11 + 56);
  v16 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      if (((63 - v14) >> 6) - 1 == v18)
      {

        v31 = *(v0 + 96);
        v30 = *(v0 + 104);
        v32 = *(v0 + 88);

        sub_1C43FBDA0();
        sub_1C43FD0C0();

        __asm { BRAA            X1, X16 }
      }

      v17 = v18 + 1;
      v15 = *(v16 + 8 * v18++ + 64);
    }

    while (!v15);
  }

  *(v0 + 120) = v15;
  *(v0 + 128) = v17;
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v16 + 48);
  v22 = *(v10 + 72);
  v23 = sub_1C440A7C4(__clz(__rbit64(v15)) | (v17 << 6));
  v25 = v24;
  sub_1C4430958(v23, v20, v24);
  sub_1C4665AA8(v20, v19, v25);
  if (qword_1EDDF0AB0 != -1)
  {
    sub_1C4402D88();
  }

  v26 = *(v0 + 56);
  *(v0 + 136) = sub_1C4468E90();
  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  *v27 = v0;
  sub_1C441F5F4(v27);
  sub_1C43FD0C0();

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4664F8C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);

  if (v0)
  {
    v6 = sub_1C46653D0;
  }

  else
  {
    v6 = sub_1C46650C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C46650C0()
{
  v38 = v0;
  sub_1C448D818(*(v0 + 96));
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = (*(v0 + 120) - 1) & *(v0 + 120);
  if (v5)
  {
    v6 = *(v0 + 48);
    goto LABEL_7;
  }

  do
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      sub_1C4402D88();
      goto LABEL_8;
    }

    v6 = *(v0 + 48);
    if (v7 >= (((1 << *(v0 + 160)) + 63) >> 6))
    {

LABEL_16:
      v33 = *(v0 + 96);
      v32 = *(v0 + 104);
      v34 = *(v0 + 88);

      sub_1C43FBDA0();
      sub_1C43FD0C0();

      __asm { BRAA            X1, X16 }
    }

    v5 = *(v6 + 8 * v7 + 56);
    ++v4;
  }

  while (!v5);
  v4 = v7;
LABEL_7:
  *(v0 + 120) = v5;
  *(v0 + 128) = v4;
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = __clz(__rbit64(v5)) | (v4 << 6);
  v11 = *(v6 + 48);
  v12 = *(*(v0 + 80) + 72);
  v13 = sub_1C440A7C4(v10);
  v1 = v14;
  sub_1C4430958(v13, v9, v14);
  sub_1C4665AA8(v9, v8, v1);
  if (qword_1EDDF0AB0 != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v15 = *(v0 + 56);
  *(v0 + 136) = sub_1C4468E90();
  if (v3)
  {
    v16 = *(v0 + 48);
    sub_1C448D818(*(v0 + 96));

    sub_1C44331F4();
    v17 = v3;
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CD8();

    if (os_log_type_enabled(v18, v19))
    {
      sub_1C4402DA8();
      sub_1C43FED1C();
      sub_1C440D1D4();
      *v1 = 136315650;
      v20 = sub_1C46655C4();
      sub_1C441D828(v20, v21, v37);

      sub_1C43FD324();
      sub_1C4416E78();
      sub_1C44192A0();
      v22 = *v2;
      v23 = v2[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v2);
      sub_1C441D828(v22, v23, v37);

      sub_1C440DFC8();
      *(v0 + 40) = v3;
      v24 = v3;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v25 = sub_1C4F01198();
      v27 = sub_1C441D828(v25, v26, v37);

      *(v1 + 3) = v27;
      sub_1C440D1B8(&dword_1C43F8000, v28, v19, "<%s: Error running delta updates for BMWalletOrder Streams with srcType %{public}s: %s>");
      sub_1C4410A50();
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    else
    {
    }

    goto LABEL_16;
  }

  v29 = swift_task_alloc();
  *(v0 + 144) = v29;
  *v29 = v0;
  sub_1C441F5F4();
  sub_1C43FD0C0();

  return sub_1C4ACB9F0();
}

uint64_t sub_1C46653D0()
{
  v24 = v0;
  v3 = v0[12];
  v4 = v0[6];

  sub_1C448D818(v3);
  v5 = v0[19];
  sub_1C44331F4();
  v6 = v5;
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CD8();

  if (os_log_type_enabled(v7, v8))
  {
    sub_1C4402DA8();
    v23 = sub_1C43FED1C();
    *v1 = 136315650;
    v9 = sub_1C46655C4();
    sub_1C441D828(v9, v10, &v23);

    sub_1C43FD324();
    sub_1C4416E78();
    sub_1C44192A0();
    v11 = *v2;
    v12 = v2[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C448D818(v2);
    sub_1C441D828(v11, v12, &v23);

    sub_1C440DFC8();
    v0[5] = v5;
    v13 = v5;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v14 = sub_1C4F01198();
    v16 = sub_1C441D828(v14, v15, &v23);

    *(v1 + 24) = v16;
    sub_1C440D1B8(&dword_1C43F8000, v17, v8, "<%s: Error running delta updates for BMWalletOrder Streams with srcType %{public}s: %s>");
    sub_1C4410A50();
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[11];

  sub_1C43FBDA0();

  return v21();
}

unint64_t sub_1C4665684()
{
  result = qword_1EDDFA4A0;
  if (!qword_1EDDFA4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA4A0);
  }

  return result;
}

uint64_t sub_1C46656C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C4665710(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_1C4F01108();

  v8 = [v4 initWithIdentifier:v7 targetQueue:a3 waking:a4 & 1];

  return v8;
}

uint64_t sub_1C4665784(void *a1)
{
  v3 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4664464(a1, v9, v1 + v8, v10);
}

uint64_t sub_1C466581C(uint64_t a1)
{
  v4 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C4665934;

  return sub_1C4664AA0(a1, v1 + v6, v9, v10);
}

uint64_t sub_1C4665934()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_1C43FBDA0();

  return v2();
}

void sub_1C4665A24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1C4CE6064();
}

uint64_t sub_1C4665A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4665AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4665B2C()
{
  sub_1C456902C(&qword_1EC0BA9A0, &qword_1C4F14910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F148E0;
  *(v0 + 32) = 1701869940;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = 0x696669746E656469;
  *(v0 + 64) = 0xEA00000000007265;
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = 0x69746167654E7369;
  *(v0 + 88) = 0xEA00000000006576;
  *(v0 + 96) = swift_getKeyPath();
  strcpy((v0 + 104), "sequenceNumber");
  *(v0 + 119) = -18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 120) = v1;
  *(v0 + 128) = 0xD000000000000010;
  *(v0 + 136) = v2;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 144) = v3;
  *(v0 + 152) = 0xD000000000000022;
  *(v0 + 160) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 168) = v5;
  *(v0 + 176) = 0xD000000000000010;
  *(v0 + 184) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 192) = v7;
  *(v0 + 200) = 0xD000000000000010;
  *(v0 + 208) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 216) = v9;
  *(v0 + 224) = 0xD000000000000012;
  *(v0 + 232) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 240) = v11;
  *(v0 + 248) = 0xD00000000000001BLL;
  *(v0 + 256) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 264) = v13;
  *(v0 + 272) = 0xD00000000000001ALL;
  *(v0 + 280) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 288) = v15;
  *(v0 + 296) = 0xD00000000000001FLL;
  *(v0 + 304) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 312) = v17;
  *(v0 + 320) = 0xD00000000000001FLL;
  *(v0 + 328) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 336) = v19;
  *(v0 + 344) = 0xD000000000000028;
  *(v0 + 352) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 360) = v21;
  *(v0 + 368) = 0xD00000000000002ELL;
  *(v0 + 376) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 384) = v23;
  *(v0 + 392) = 0xD000000000000028;
  *(v0 + 400) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 408) = v25;
  *(v0 + 416) = 0xD000000000000022;
  *(v0 + 424) = v26;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 432) = v27;
  *(v0 + 440) = 0xD00000000000002CLL;
  *(v0 + 448) = v28;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 456) = v29;
  *(v0 + 464) = 0xD00000000000002ELL;
  *(v0 + 472) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 480) = v31;
  *(v0 + 488) = 0xD00000000000002CLL;
  *(v0 + 496) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 504) = v33;
  *(v0 + 512) = 0xD00000000000002BLL;
  *(v0 + 520) = v34;
  *(v0 + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 536) = 0xD000000000000023;
  *(v0 + 544) = v35;
  *(v0 + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 560) = 0xD000000000000028;
  *(v0 + 568) = v36;
  *(v0 + 576) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 584) = 0xD00000000000002ALL;
  *(v0 + 592) = v37;
  *(v0 + 600) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 608) = 0xD000000000000028;
  *(v0 + 616) = v38;
  *(v0 + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 632) = 0xD00000000000002ELL;
  *(v0 + 640) = v39;
  *(v0 + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 656) = 0xD000000000000028;
  *(v0 + 664) = v40;
  *(v0 + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 680) = 0xD000000000000022;
  *(v0 + 688) = v41;
  *(v0 + 696) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 704) = 0xD00000000000002CLL;
  *(v0 + 712) = v42;
  *(v0 + 720) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 728) = 0xD00000000000002ELL;
  *(v0 + 736) = v43;
  *(v0 + 744) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 752) = 0xD00000000000002CLL;
  *(v0 + 760) = v44;
  *(v0 + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 776) = 0xD00000000000002BLL;
  *(v0 + 784) = v45;
  *(v0 + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 800) = 0xD000000000000023;
  *(v0 + 808) = v46;
  *(v0 + 816) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 824) = 0xD000000000000028;
  *(v0 + 832) = v47;
  *(v0 + 840) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 848) = 0xD00000000000002ALL;
  *(v0 + 856) = v48;
  *(v0 + 864) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6EB0);
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 872) = 0;
  *(v0 + 880) = 0xE000000000000000;
  *(v0 + 888) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6ED8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 896) = 0;
  *(v0 + 904) = 0xE000000000000000;
  *(v0 + 912) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6F00);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 920) = 0;
  *(v0 + 928) = 0xE000000000000000;
  *(v0 + 936) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6F28);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 944) = 0;
  *(v0 + 952) = 0xE000000000000000;
  *(v0 + 960) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6F50);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 968) = 0;
  *(v0 + 976) = 0xE000000000000000;
  *(v0 + 984) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6F78);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 992) = 0;
  *(v0 + 1000) = 0xE000000000000000;
  *(v0 + 1008) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6FA0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1016) = 0;
  *(v0 + 1024) = 0xE000000000000000;
  *(v0 + 1032) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6FC8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1040) = 0;
  *(v0 + 1048) = 0xE000000000000000;
  *(v0 + 1056) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D6FF0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1064) = 0;
  *(v0 + 1072) = 0xE000000000000000;
  *(v0 + 1080) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7018);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1088) = 0;
  *(v0 + 1096) = 0xE000000000000000;
  *(v0 + 1104) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7040);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1112) = 0;
  *(v0 + 1120) = 0xE000000000000000;
  *(v0 + 1128) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7068);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1136) = 0;
  *(v0 + 1144) = 0xE000000000000000;
  *(v0 + 1152) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7090);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1160) = 0;
  *(v0 + 1168) = 0xE000000000000000;
  *(v0 + 1176) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D70B8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1184) = 0;
  *(v0 + 1192) = 0xE000000000000000;
  *(v0 + 1200) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D70E0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1208) = 0;
  *(v0 + 1216) = 0xE000000000000000;
  *(v0 + 1224) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7108);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1232) = 0;
  *(v0 + 1240) = 0xE000000000000000;
  *(v0 + 1248) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7130);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1256) = 0;
  *(v0 + 1264) = 0xE000000000000000;
  *(v0 + 1272) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7158);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1280) = 0;
  *(v0 + 1288) = 0xE000000000000000;
  *(v0 + 1296) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7180);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1304) = 0;
  *(v0 + 1312) = 0xE000000000000000;
  *(v0 + 1320) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D71A8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1328) = 0;
  *(v0 + 1336) = 0xE000000000000000;
  *(v0 + 1344) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D71D0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1352) = 0;
  *(v0 + 1360) = 0xE000000000000000;
  *(v0 + 1368) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D71F8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1376) = 0;
  *(v0 + 1384) = 0xE000000000000000;
  *(v0 + 1392) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7220);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1400) = 0;
  *(v0 + 1408) = 0xE000000000000000;
  *(v0 + 1416) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7248);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1424) = 0;
  *(v0 + 1432) = 0xE000000000000000;
  *(v0 + 1440) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7270);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1448) = 0;
  *(v0 + 1456) = 0xE000000000000000;
  *(v0 + 1464) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7298);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1472) = 0;
  *(v0 + 1480) = 0xE000000000000000;
  *(v0 + 1488) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D72C0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1496) = 0;
  *(v0 + 1504) = 0xE000000000000000;
  *(v0 + 1512) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D72E8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1520) = 0;
  *(v0 + 1528) = 0xE000000000000000;
  *(v0 + 1536) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7310);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1544) = 0;
  *(v0 + 1552) = 0xE000000000000000;
  *(v0 + 1560) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7338);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1568) = 0;
  *(v0 + 1576) = 0xE000000000000000;
  *(v0 + 1584) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7360);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C4434EBC();
  sub_1C442FC2C();

  *(v0 + 1592) = 0;
  *(v0 + 1600) = 0xE000000000000000;
  *(v0 + 1608) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7388);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1616) = 0;
  *(v0 + 1624) = 0xE000000000000000;
  *(v0 + 1632) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D73B0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1640) = 0;
  *(v0 + 1648) = 0xE000000000000000;
  *(v0 + 1656) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D73D8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1664) = 0;
  *(v0 + 1672) = 0xE000000000000000;
  *(v0 + 1680) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7400);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1688) = 0;
  *(v0 + 1696) = 0xE000000000000000;
  *(v0 + 1704) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7428);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1712) = 0;
  *(v0 + 1720) = 0xE000000000000000;
  *(v0 + 1728) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7450);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1736) = 0;
  *(v0 + 1744) = 0xE000000000000000;
  *(v0 + 1752) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7478);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1760) = 0;
  *(v0 + 1768) = 0xE000000000000000;
  *(v0 + 1776) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D74A0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1784) = 0;
  *(v0 + 1792) = 0xE000000000000000;
  *(v0 + 1800) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D74C8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1808) = 0;
  *(v0 + 1816) = 0xE000000000000000;
  *(v0 + 1824) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D74F0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1832) = 0;
  *(v0 + 1840) = 0xE000000000000000;
  *(v0 + 1848) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7518);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1856) = 0;
  *(v0 + 1864) = 0xE000000000000000;
  *(v0 + 1872) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7540);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1880) = 0;
  *(v0 + 1888) = 0xE000000000000000;
  *(v0 + 1896) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7568);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1904) = 0;
  *(v0 + 1912) = 0xE000000000000000;
  *(v0 + 1920) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7590);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1928) = 0;
  *(v0 + 1936) = 0xE000000000000000;
  *(v0 + 1944) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D75B8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1952) = 0;
  *(v0 + 1960) = 0xE000000000000000;
  *(v0 + 1968) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D75E0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 1976) = 0;
  *(v0 + 1984) = 0xE000000000000000;
  *(v0 + 1992) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7608);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2000) = 0;
  *(v0 + 2008) = 0xE000000000000000;
  *(v0 + 2016) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7630);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2024) = 0;
  *(v0 + 2032) = 0xE000000000000000;
  *(v0 + 2040) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7658);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2048) = 0;
  *(v0 + 2056) = 0xE000000000000000;
  *(v0 + 2064) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7680);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2072) = 0;
  *(v0 + 2080) = 0xE000000000000000;
  *(v0 + 2088) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D76A8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2096) = 0;
  *(v0 + 2104) = 0xE000000000000000;
  *(v0 + 2112) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D76D0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2120) = 0;
  *(v0 + 2128) = 0xE000000000000000;
  *(v0 + 2136) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D76F8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2144) = 0;
  *(v0 + 2152) = 0xE000000000000000;
  *(v0 + 2160) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7720);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2168) = 0;
  *(v0 + 2176) = 0xE000000000000000;
  *(v0 + 2184) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7748);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2192) = 0;
  *(v0 + 2200) = 0xE000000000000000;
  *(v0 + 2208) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7770);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2216) = 0;
  *(v0 + 2224) = 0xE000000000000000;
  *(v0 + 2232) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7798);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2240) = 0;
  *(v0 + 2248) = 0xE000000000000000;
  *(v0 + 2256) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D77C0);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2264) = 0;
  *(v0 + 2272) = 0xE000000000000000;
  *(v0 + 2280) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D77E8);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2288) = 0;
  *(v0 + 2296) = 0xE000000000000000;
  *(v0 + 2304) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7810);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2312) = 0;
  *(v0 + 2320) = 0xE000000000000000;
  *(v0 + 2328) = swift_getKeyPath();
  sub_1C4D50668(&unk_1F43D7838);
  sub_1C4406928();
  sub_1C4F02248();

  sub_1C441C884();
  sub_1C442FC2C();

  *(v0 + 2336) = 0;
  *(v0 + 2344) = 0xE000000000000000;
  *(v0 + 2352) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BA9A8, &qword_1C4F16768);

  return sub_1C4F00F28();
}

uint64_t sub_1C4667624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  sub_1C466A714(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t sub_1C46676C8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488C89C();
}

uint64_t sub_1C46676F4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488C93C();
}

uint64_t sub_1C4667720(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488C9DC();
}

uint64_t sub_1C466774C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CA7C();
}

uint64_t sub_1C4667778(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CB1C();
}

uint64_t sub_1C46677A4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CBBC();
}

uint64_t sub_1C46677D0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CC5C();
}

uint64_t sub_1C46677FC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CCFC();
}

uint64_t sub_1C4667828(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CD9C();
}

uint64_t sub_1C4667854(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CE3C();
}

uint64_t sub_1C4667880(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CEDC();
}

uint64_t sub_1C46678AC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488CF7C();
}

uint64_t sub_1C46678D8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D01C();
}

uint64_t sub_1C4667904(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D0BC();
}

uint64_t sub_1C4667930(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D15C();
}

uint64_t sub_1C466795C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D1FC();
}

uint64_t sub_1C4667988(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D29C();
}

uint64_t sub_1C46679B4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D33C();
}

uint64_t sub_1C46679E0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D3DC();
}

uint64_t sub_1C4667A0C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D47C();
}

uint64_t sub_1C4667A38(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D51C();
}

uint64_t sub_1C4667A64(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D5BC();
}

uint64_t sub_1C4667A90(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D65C();
}

uint64_t sub_1C4667ABC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D6FC();
}

uint64_t sub_1C4667AE8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D79C();
}

uint64_t sub_1C4667B14(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D83C();
}

uint64_t sub_1C4667B40(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D8DC();
}

uint64_t sub_1C4667B6C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488D97C();
}

uint64_t sub_1C4667B98(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DA1C();
}

uint64_t sub_1C4667BC4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DABC();
}

uint64_t sub_1C4667BF0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DB5C();
}

uint64_t sub_1C4667C1C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DBFC();
}

uint64_t sub_1C4667C48(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DC9C();
}

uint64_t sub_1C4667C74(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DD3C();
}

uint64_t sub_1C4667CA0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DDDC();
}

uint64_t sub_1C4667CCC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DE7C();
}

uint64_t sub_1C4667CF8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DF1C();
}

uint64_t sub_1C4667D24(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488DFBC();
}

uint64_t sub_1C4667D50(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E05C();
}

uint64_t sub_1C4667D7C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E0FC();
}

uint64_t sub_1C4667DA8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E19C();
}

uint64_t sub_1C4667DD4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E23C();
}

uint64_t sub_1C4667E00(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E2DC();
}

uint64_t sub_1C4667E2C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E37C();
}

uint64_t sub_1C4667E58(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E41C();
}

uint64_t sub_1C4667E84(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E4BC();
}

uint64_t sub_1C4667EB0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E55C();
}

uint64_t sub_1C4667EDC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E5FC();
}

uint64_t sub_1C4667F08(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E69C();
}

uint64_t sub_1C4667F34(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E73C();
}

uint64_t sub_1C4667F60(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E7DC();
}

uint64_t sub_1C4667F8C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E87C();
}

uint64_t sub_1C4667FB8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E91C();
}

uint64_t sub_1C4667FE4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488E9BC();
}

uint64_t sub_1C4668010(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EA5C();
}

uint64_t sub_1C466803C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EAFC();
}

uint64_t sub_1C4668068(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EB9C();
}

uint64_t sub_1C4668094(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EC3C();
}

uint64_t sub_1C46680C0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488ECDC();
}

uint64_t sub_1C46680EC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488ED7C();
}

uint64_t sub_1C4668118(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EE1C();
}

uint64_t sub_1C4668144(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EEBC();
}

uint64_t sub_1C4668170(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EF5C();
}

uint64_t sub_1C466819C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488EFFC();
}

uint64_t sub_1C46681C8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F09C();
}

uint64_t sub_1C46681F4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F13C();
}

uint64_t sub_1C4668220(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F1DC();
}

uint64_t sub_1C466824C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F27C();
}

uint64_t sub_1C4668278(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F31C();
}

uint64_t sub_1C46682A4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F3BC();
}

uint64_t sub_1C46682D0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F45C();
}

uint64_t sub_1C46682FC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F4FC();
}

uint64_t sub_1C4668328(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F59C();
}

uint64_t sub_1C4668354(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F63C();
}

uint64_t sub_1C4668380(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F6DC();
}

uint64_t sub_1C46683AC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F77C();
}

uint64_t sub_1C46683D8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F81C();
}

uint64_t sub_1C4668404(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F8BC();
}

uint64_t sub_1C4668430(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F95C();
}

uint64_t sub_1C466845C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488F9FC();
}

uint64_t sub_1C4668488(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FA9C();
}

uint64_t sub_1C46684B4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FB3C();
}

uint64_t sub_1C46684E0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FBDC();
}

uint64_t sub_1C466850C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FC7C();
}

uint64_t sub_1C4668538(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FD1C();
}

uint64_t sub_1C4668564(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FDBC();
}

uint64_t sub_1C4668590(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FE5C();
}

uint64_t sub_1C46685BC(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FEFC();
}

uint64_t sub_1C46685E8(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C488FF9C();
}

uint64_t sub_1C4668614(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C489003C();
}

uint64_t sub_1C4668640(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C48900DC();
}

uint64_t sub_1C466866C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C489017C();
}

uint64_t sub_1C4668698(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C489021C();
}

uint64_t sub_1C46686C4(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C48902BC();
}

uint64_t sub_1C46686F0(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C489035C();
}

uint64_t sub_1C466871C(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C48903FC();
}

uint64_t sub_1C4668748(uint64_t *a1)
{
  v1 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C489049C();
}

uint64_t sub_1C4668774()
{
  sub_1C456902C(&qword_1EC0BA9B0, &qword_1C4F16770);
  v0 = sub_1C456902C(&qword_1EC0BA9B8, &qword_1C4F16778);
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = v0 - 8;
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C4F148F0;
  v5 = v32 + v4 + *(v3 + 56);
  sub_1C440F428();
  sub_1C4EFDAC8();
  *v5 = 2;
  *(v5 + 8) = 0;
  sub_1C4410A6C(v32 + v4 + v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v5 = 2;
  *(v5 + 8) = 0;
  sub_1C4410A6C(v32 + v4 + 2 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v5 = 3;
  *(v5 + 8) = 0;
  sub_1C4410A6C(v32 + v4 + 3 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v5 = 3;
  *(v5 + 8) = 0;
  sub_1C4410A6C(v32 + v4 + 4 * v2);
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C(v32 + v4 + 5 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(6);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v5 = 3;
  *(v5 + 8) = 0;
  sub_1C4410A6C(v32 + v4 + 7 * v2);
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C44041B0();
  sub_1C4410A6C(v32 + v4 + 8 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C44041B0();
  sub_1C4410A6C(v32 + v4 + 9 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C44041B0();
  sub_1C4410A6C(v32 + v4 + 10 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v5 = 3;
  *(v5 + 8) = 0;
  sub_1C4411980(11);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(12);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(13);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(14);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C(v32 + v4 + 15 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C(v32 + v4 + 16 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4410A6C(v32 + v4 + 17 * v2);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(18);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(19);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(20);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(21);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(22);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(23);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(24);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(25);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(26);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(27);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(28);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(29);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  sub_1C43FFF0C();
  sub_1C4411980(30);
  sub_1C440D1EC();
  sub_1C441F620();
  sub_1C4EFDAC8();
  *v5 = 3;
  *(v5 + 8) = 0;
  v33 = v3;
  v6 = v32 + v4 + 31 * v2 + *(v3 + 56);
  sub_1C45979B8(&unk_1F43D7860);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C43FBDF0();
  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  v7 = v32 + v4 + 32 * v2 + *(v3 + 56);
  sub_1C45979B8(&unk_1F43D7888);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C44259B4();
  v8 = v32 + v4 + 33 * v2 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D78B0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C44259B4();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D78D8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441EADC();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40(35);
  sub_1C45979B8(&unk_1F43D7900);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  v34 = v2;
  v9 = v32 + v4 + 36 * v2 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7928);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C440596C();
  v10 = v32 + v4 + 37 * v2 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7950);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C4433210();
  sub_1C4412E40(38);
  sub_1C45979B8(&unk_1F43D7978);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40(39);
  sub_1C45979B8(&unk_1F43D79A0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4432060();
  sub_1C442C5EC();
  sub_1C4412E40(40);
  sub_1C45979B8(&unk_1F43D79C8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C4412E40(41);
  sub_1C45979B8(&unk_1F43D79F0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441EADC();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40(42);
  sub_1C45979B8(&unk_1F43D7A18);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4412E40(43);
  sub_1C45979B8(&unk_1F43D7A40);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C441E258();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7A68);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4412E40(45);
  sub_1C45979B8(&unk_1F43D7A90);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40(46);
  sub_1C45979B8(&unk_1F43D7AB8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4412E40(47);
  sub_1C45979B8(&unk_1F43D7AE0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4412E40(48);
  sub_1C45979B8(&unk_1F43D7B08);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4412E40(49);
  sub_1C45979B8(&unk_1F43D7B30);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441EADC();
  sub_1C43FC0E4();

  sub_1C4432060();
  sub_1C442C5EC();
  v11 = v32 + v4 + 50 * v34;
  v12 = v11 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7B58);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  *v12 = 3;
  *(v12 + 8) = 0;
  sub_1C441E258();
  v13 = v11 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7B80);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C440596C();
  sub_1C4412E40(52);
  sub_1C45979B8(&unk_1F43D7BA8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C4432060();
  sub_1C442C5EC();
  sub_1C4412E40(53);
  sub_1C45979B8(&unk_1F43D7BD0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C441E258();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7BF8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4412E40(55);
  sub_1C45979B8(&unk_1F43D7C20);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  v14 = v32 + v4 + 56 * v34;
  v15 = v14 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7C48);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C44259B4();
  sub_1C441E258();
  v16 = v14 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7C70);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C4433210();
  v17 = v32 + v4 + 58 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7C98);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  v18 = v32 + v4 + 59 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7CC0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C4433210();
  v19 = v32 + v4 + 60 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7CE8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C44259B4();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D10);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D38);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D60);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4409B08();
  sub_1C45979B8(&unk_1F43D7D88);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4404D64();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7DB0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7DD8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  v20 = v32 + v4 + 67 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7E00);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4432060();
  *v20 = 3;
  *(v20 + 8) = 0;
  v21 = v32 + v4 + 68 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7E28);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  *v21 = 3;
  *(v21 + 8) = 0;
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7E50);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7E78);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7EA0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  v22 = v32 + v4 + 72 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7EC8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4432060();
  sub_1C440596C();
  v23 = v32 + v4 + 73 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7EF0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7F18);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7F40);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  v24 = v32 + v4 + 76 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D7F68);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7F90);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4416E98();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7FB8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C4402DC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D7FE0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C4424FB0();
  sub_1C43FC0E4();

  sub_1C4432060();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8008);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  v25 = v32 + v4 + 81 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D8030);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C4433210();
  v26 = v32 + v4 + 82 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D8058);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8080);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D80A8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C4432060();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D80D0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D80F8);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8120);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C43FD344();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8148);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8170);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C441B7C0();
  sub_1C43FC0E4();

  sub_1C440A7DC();
  sub_1C442C5EC();
  sub_1C4408730();
  sub_1C45979B8(&unk_1F43D8198);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C442DDE4();
  sub_1C43FC0E4();

  sub_1C440F428();
  sub_1C4EFDAC8();
  sub_1C442C5EC();
  v27 = v32 + v4 + 91 * v34 + *(v33 + 56);
  sub_1C45979B8(&unk_1F43D81C0);
  sub_1C44192CC();
  sub_1C4F02248();

  sub_1C45FE854(0xD000000000000015);
  sub_1C43FC0E4();

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  *v27 = 3;
  *(v27 + 8) = 0;
  v28 = v32 + v4 + 92 * v34 + *(v33 + 56);
  v29 = sub_1C45979B8(&unk_1F43D81E8);
  sub_1C4F02248();

  v30 = sub_1C45FE854(v29);
  MEMORY[0x1C6940010](v30);

  sub_1C442B9C8();
  sub_1C440F428();
  sub_1C4EFDAC8();
  *v28 = 3;
  *(v28 + 8) = 0;
  sub_1C4EFDAF8();
  sub_1C466A77C();

  return sub_1C4F00F28();
}

void sub_1C466A4CC()
{
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v0 = sub_1C4EFDAB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F14900;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x1E69A9468], v0);
  (v6)(v5 + v2, *MEMORY[0x1E69A9460], v0);
  (v6)(v5 + 2 * v2, *MEMORY[0x1E69A93C8], v0);
  v7 = *MEMORY[0x1E69A93E0];
  v8 = sub_1C4414970(3 * v2);
  v6(v8);
  (v6)(v5 + 4 * v2, *MEMORY[0x1E69A9438], v0);
  v9 = *MEMORY[0x1E69A9430];
  v10 = sub_1C4414970(5 * v2);
  v6(v10);
  (v6)(v5 + 6 * v2, *MEMORY[0x1E69A9400], v0);
  v11 = *MEMORY[0x1E69A93D8];
  v12 = sub_1C4414970(7 * v2);
  v6(v12);
  (v6)(v5 + 8 * v2, *MEMORY[0x1E69A9448], v0);
  v13 = *MEMORY[0x1E69A93F0];
  v14 = sub_1C4414970(9 * v2);
  v6(v14);
  (v6)(v5 + 10 * v2, *MEMORY[0x1E69A9420], v0);
  sub_1C4D524E0();
  qword_1EC151B48 = v15;
}

uint64_t sub_1C466A714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C466A77C()
{
  result = qword_1EDDEFFA8;
  if (!qword_1EDDEFFA8)
  {
    sub_1C4EFDAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFA8);
  }

  return result;
}

uint64_t sub_1C466A824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C4409B14();
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 24);
  sub_1C4426A5C();
  v7();
  swift_endAccess();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  sub_1C4409B14();
  (v7)(v3 + v8, a2, v5);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
  v10 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = 0;

  sub_1C4409B14();
  sub_1C456902C(&unk_1EC0BA9C0, &unk_1C4F16810);
  sub_1C4F00F88();
  swift_endAccess();
  v11 = *(v3 + v9);
  *(v3 + v9) = 0;

  v12 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate) = 0;

  v13 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents) = 0;
}

void sub_1C466A96C()
{
  sub_1C43FBD3C();
  v54 = v1;
  v55 = v2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v56 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v59 = v13;
  v60 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v58 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v54 - v18;
  v19 = sub_1C4EFDAB8();
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v54 - v29;
  v31 = *MEMORY[0x1E69A9420];
  v32 = *(v22 + 104);
  v32(&v54 - v29, v31, v19);
  sub_1C466E268(v30);
  v33 = *(v22 + 8);
  v33(v30, v19);
  v32(v27, v31, v19);
  v34 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
  swift_beginAccess();
  v35 = sub_1C465C170(v27, *(v0 + v34));
  if (!v35)
  {
    swift_endAccess();
    v33(v27, v19);
LABEL_8:
    v43 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v44 = sub_1C4F01658();
    [v43 initWithSequence_];

    goto LABEL_15;
  }

  v36 = v35;
  swift_endAccess();
  v33(v27, v19);
  if (!sub_1C4428DA0(v36))
  {

    goto LABEL_8;
  }

  sub_1C446C964(v54, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v37 = v60;
  if (sub_1C44157D4(v10, 1, v60) == 1)
  {
    v38 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
    sub_1C440D164();
    v39 = v59;
    v40 = v57;
    (*(v59 + 16))(v57, v0 + v38, v37);
    sub_1C43FC0FC(v10);
    v41 = v56;
    if (!v42)
    {
      sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    v39 = v59;
    v40 = v57;
    (*(v59 + 32))(v57, v10, v37);
    v41 = v56;
  }

  sub_1C446C964(v55, v41, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FC0FC(v41);
  if (v42)
  {
    v45 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    sub_1C440D164();
    v47 = v58;
    (*(v39 + 16))(v58, v0 + v45, v37);
    v49 = sub_1C43FC0FC(v41);
    if (!v42)
    {
      v49 = sub_1C4420C3C(v41, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    v46 = *(v39 + 32);
    v47 = v58;
    sub_1C4426A5C();
    v49 = v48();
  }

  MEMORY[0x1EEE9AC00](v49);
  *(&v54 - 2) = v40;
  *(&v54 - 1) = v47;
  sub_1C4B341F0();
  v50 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v51 = sub_1C4F01658();

  [v50 initWithSequence_];

  v52 = *(v39 + 8);
  v53 = sub_1C44158DC();
  v52(v53);
  (v52)(v40, v37);
LABEL_15:
  sub_1C43FE9F0();
}

void sub_1C466AE74()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v94 = v4;
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v90 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v92 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v89 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440D164();
  v18 = *(v8 + 16);
  v19 = sub_1C440597C();
  v18(v19);
  sub_1C44192E0();
  sub_1C4498E70(v20, v21);
  v22 = sub_1C4F01068();
  v23 = *(v8 + 8);
  v24 = sub_1C43FE99C();
  (v23)(v24);
  if ((v22 & 1) == 0)
  {
    sub_1C440D164();
    v45 = sub_1C440597C();
    v18(v45);
    v91 = v3;
    v46 = sub_1C4F01068();
    v47 = sub_1C43FE99C();
    (v23)(v47);
    if (v46)
    {
      v93 = v23;
      if (qword_1EDDFA668 != -1)
      {
        goto LABEL_58;
      }

      goto LABEL_7;
    }

    sub_1C466DE10();
    v65 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents);
    if (!v65)
    {
      goto LABEL_30;
    }

    (v18)(v89, v3, v5);
    (v18)(v92, v3, v5);
    v95[0] = 1;
    v66 = type metadata accessor for MotionStateEvent();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    sub_1C46229B8(v89, v92, v95);
    if (sub_1C4428DA0(v65))
    {
      v69 = sub_1C4428DA0(v65);
      v70 = &OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
      if (v69 > 0)
      {
        v87 = v1;
        v18 = OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
        v71 = v65 & 0xC000000000000001;
        v91 = v65 + 32;
        v93 = (v65 & 0xFFFFFFFFFFFFFF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v5 = 0;
        v90 = v69;
        v72 = v69;
        while (1)
        {
          if (__OFSUB__(v72, v5))
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v73 = (v72 - v5) / 2;
          v23 = v5 + v73;
          if (__OFADD__(v5, v73))
          {
            goto LABEL_53;
          }

          if (v71)
          {
            v69 = MEMORY[0x1C6940F90](v5 + v73, v65);
          }

          else
          {
            if (v23 < 0)
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              sub_1C4406728();
LABEL_7:
              v48 = sub_1C4F00978();
              sub_1C43FCEE8(v48, qword_1EDE2DDE0);
              (v18)(v90, v91, v5);

              v27 = sub_1C4F00968();
              v49 = sub_1C4F01CE8();

              if (os_log_type_enabled(v27, v49))
              {
                v50 = sub_1C440F274();
                v95[0] = sub_1C43FC11C();
                *v50 = 136315394;
                sub_1C44192E0();
                sub_1C4498E70(v51, v52);
                v86 = v49;
                v53 = sub_1C4F02858();
                v55 = v54;
                v56 = sub_1C4404084();
                v93(v56);
                sub_1C441D828(v53, v55, v95);
                sub_1C4408758();

                *(v50 + 4) = v53;
                *(v50 + 12) = 2080;
                v57 = sub_1C440597C();
                v58(v57);
                sub_1C4F02858();
                v59 = sub_1C43FE99C();
                v93(v59);
                v60 = sub_1C43FBC98();
                v63 = sub_1C441D828(v60, v61, v62);

                *(v50 + 14) = v63;
                sub_1C440BBCC(&dword_1C43F8000, "CachedContextProvider: motionState(at:) input date out of bound (input date %s >= end date %s). Returning nil.", v86);
LABEL_9:
                swift_arrayDestroy();
                sub_1C4402DEC();
                sub_1C43FBE2C();
              }

              else
              {

                v77 = sub_1C4404084();
                v93(v77);
              }

              goto LABEL_30;
            }

            if (v23 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v69 = *(v91 + 8 * v23);
          }

          v74 = v70;
          v75 = *v70;
          if (sub_1C4EF9C18())
          {

            v5 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_54;
            }

            v23 = v72;
          }

          else
          {
            v76 = sub_1C4EF9C08();

            if ((v76 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v72 = v23;
          v70 = v74;
          if (v5 >= v23)
          {
            v69 = v90;
            v1 = v87;
            if (v5 != v90)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v69)
      {
        v5 = 0;
      }

      else
      {
LABEL_34:
        v5 = v69 - 1;
      }

LABEL_35:
      v71 = v65 & 0xC000000000000001;
      sub_1C4431590(v5, (v65 & 0xC000000000000001) == 0);
      if ((v65 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x1C6940F90](v5, v65);
      }

      else
      {
        sub_1C440C3C0(v65 + 8 * v5);
      }

      v81 = *v70;
      if (sub_1C4EF9C18())
      {

LABEL_45:
        v80 = v94;
        sub_1C4431590(v5, v71 == 0);
        if (v71)
        {
          v85 = MEMORY[0x1C6940F90](v5, v65);

          v78 = *(v85 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1C440C3C0(v65 + 8 * v5);

          v78 = *(v69 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
        }

        v79 = 0;
        goto LABEL_31;
      }

      v82 = sub_1C4EF9C08();

      if ((v82 & 1) == 0)
      {
        goto LABEL_45;
      }

      if (v5)
      {
        if (__OFSUB__(v5--, 1))
        {
          __break(1u);
LABEL_44:
          v5 = v23;
        }

        goto LABEL_45;
      }
    }

    v84 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate);
    v80 = v94;
    if (v84)
    {
      v79 = 0;
      v78 = *(v84 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
    }

    else
    {
      v78 = 0;
      v79 = 1;
    }

    goto LABEL_31;
  }

  v93 = v23;
  if (qword_1EDDFA668 != -1)
  {
LABEL_55:
    sub_1C4406728();
  }

  v25 = sub_1C4F00978();
  sub_1C43FCEE8(v25, qword_1EDE2DDE0);
  v26 = sub_1C43FE990();
  v18(v26);

  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CE8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_1C440F274();
    v95[1] = sub_1C43FC11C();
    *v29 = 136315394;
    sub_1C44192E0();
    sub_1C4498E70(v30, v31);
    v88 = v28;
    v32 = sub_1C4F02858();
    v34 = v33;
    v35 = sub_1C44158DC();
    v93(v35);
    v36 = sub_1C441C89C();
    sub_1C441D828(v36, v34, v37);
    sub_1C4408758();

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v38 = sub_1C440597C();
    v39(v38);
    sub_1C4F02858();
    v40 = sub_1C43FE99C();
    v93(v40);
    v41 = sub_1C43FBC98();
    v44 = sub_1C441D828(v41, v42, v43);

    *(v29 + 14) = v44;
    sub_1C440BBCC(&dword_1C43F8000, "CachedContextProvider: motionState(at:) input date out of bound (input date %s < start date %s). Returning nil.", v88);
    goto LABEL_9;
  }

  v64 = sub_1C44158DC();
  v93(v64);
LABEL_30:
  v78 = 0;
  v79 = 1;
  v80 = v94;
LABEL_31:
  *v80 = v78;
  *(v80 + 8) = v79;
  sub_1C43FE9F0();
}

void sub_1C466B77C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  sub_1C441B7D8(v4);
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v115 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v114 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v111 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v105 - v17;
  v19 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  sub_1C440D164();
  v20 = *(v8 + 16);
  v113 = v19;
  v21 = sub_1C440D1F8();
  v20(v21);
  sub_1C44192E0();
  sub_1C4498E70(v22, v23);
  LOBYTE(v19) = sub_1C4F01068();
  v24 = *(v8 + 8);
  v25 = sub_1C4404C28();
  v24(v25);
  v116 = v24;
  v117 = v8 + 8;
  v118 = v8 + 16;
  if ((v19 & 1) == 0)
  {
    v48 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    sub_1C440D164();
    v115 = v48;
    v49 = sub_1C440D1F8();
    v20(v49);
    LOBYTE(v48) = sub_1C4F01068();
    v50 = sub_1C4404C28();
    v24(v50);
    v51 = v3;
    if (v48)
    {
      if (qword_1EDDFA668 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_7;
    }

    v76 = v112;
    sub_1C466E268(v112);
    v77 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
    swift_beginAccess();
    v78 = sub_1C465C170(v76, *(v1 + v77));
    if (!v78)
    {
      swift_endAccess();
      goto LABEL_30;
    }

    v79 = v78;
    swift_endAccess();
    if (!sub_1C4428DA0(v79))
    {

      goto LABEL_30;
    }

    type metadata accessor for BehaviorEvent();
    memset(v121, 0, sizeof(v121));
    v122 = 21;
    v80 = sub_1C4404084();
    v51 = v118;
    v20(v80);
    sub_1C45D644C(v121, v18);
    v82 = v81;
    v120 = v81;
    v83 = sub_1C4428DA0(v79);
    if (v83 > 0)
    {
      v84 = 0;
      v110 = v79 & 0xC000000000000001;
      v108 = v79 & 0xFFFFFFFFFFFFFF8;
      v109 = v79;
      v107 = v79 + 32;
      v106 = v83;
      v85 = v111;
      v114 = v82;
      while (1)
      {
        if (__OFSUB__(v83, v84))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v86 = (v83 - v84) / 2;
        v1 = v84 + v86;
        if (__OFADD__(v84, v86))
        {
          goto LABEL_50;
        }

        v113 = v84;
        v112 = v83;
        if (v110)
        {
          v87 = MEMORY[0x1C6940F90](v1, v109);
        }

        else
        {
          if (v1 < 0)
          {
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            sub_1C4406728();
LABEL_7:
            v52 = sub_1C4F00978();
            sub_1C43FCEE8(v52, qword_1EDE2DDE0);
            v53 = v114;
            (v20)(v114, v51, v5);

            v54 = sub_1C4F00968();
            v55 = sub_1C4F01CE8();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = sub_1C440F274();
              v113 = sub_1C43FC11C();
              v121[0] = v113;
              *v56 = 136315394;
              sub_1C44192E0();
              sub_1C4498E70(v57, v58);
              v112 = v54;
              sub_1C443F134();
              v111 = v1;
              v60 = v59;
              v61 = sub_1C4402E08();
              LODWORD(v114) = v55;
              v62 = v20;
              v63 = v116;
              v116(v61);
              v64 = sub_1C443FB14();
              v66 = sub_1C441D828(v64, v60, v65);

              *(v56 + 4) = v66;
              *(v56 + 12) = 2080;
              v67 = sub_1C440D1F8();
              v62(v67);
              sub_1C443F134();
              v69 = v68;
              v70 = sub_1C4404C28();
              v63(v70);
              v71 = sub_1C443FB14();
              v73 = sub_1C441D828(v71, v69, v72);

              *(v56 + 14) = v73;
              v74 = v112;
              _os_log_impl(&dword_1C43F8000, v112, v114, "CachedContextProvider: lastBehaviorEvent input date out of bound (input date %s >= end date %s). Returning nil.", v56, 0x16u);
              swift_arrayDestroy();
              sub_1C4402DEC();
              sub_1C43FBE2C();

              goto LABEL_30;
            }

            v75 = v53;
LABEL_29:
            (v116)(v75, v5);
            goto LABEL_30;
          }

          if (v1 >= *(v108 + 16))
          {
            goto LABEL_54;
          }

          v88 = *(v107 + 8 * v1);
        }

        v115 = v87;
        v89 = *(v87 + 64);
        sub_1C441C160();
        v90 = sub_1C440D1F8();
        v20(v90);
        v91 = *(v82 + 64);
        sub_1C441C160();
        v20(v85);
        v92 = sub_1C4EF9C18();
        v93 = sub_1C4402E08();
        v94 = v116;
        v116(v93);
        v95 = sub_1C4404C28();
        v94(v95);
        if (v92)
        {

          v84 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_51;
          }

          v1 = v112;
          v85 = v111;
        }

        else
        {
          v96 = *(v115 + 64);
          sub_1C441C160();
          v97 = sub_1C440D1F8();
          v20(v97);
          v98 = *(v114 + 64);
          sub_1C441C160();
          v20(v85);
          v99 = sub_1C4EF9C08();

          v100 = sub_1C4402E08();
          v94(v100);
          v101 = sub_1C4404C28();
          v94(v101);
          v84 = v113;
          if ((v99 & 1) == 0)
          {
            v79 = v109;
            goto LABEL_45;
          }
        }

        v83 = v1;
        v51 = v118;
        v82 = v114;
        if (v84 >= v1)
        {
          v83 = v106;
          v79 = v109;
          if (v84 == v106)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }
      }
    }

    if (v83)
    {
      v84 = 0;
    }

    else
    {
LABEL_35:
      v84 = &v83[-1].isa + 7;
    }

LABEL_36:
    v102 = v79 & 0xC000000000000001;
    sub_1C4431590(v84, (v79 & 0xC000000000000001) == 0);
    v110 = v79 & 0xC000000000000001;
    if ((v79 & 0xC000000000000001) != 0)
    {
      v102 = MEMORY[0x1C6940F90](v84, v79);
    }

    else
    {
      sub_1C440C3C0(v79 + 8 * v84);
    }

    v119 = v102;
    v103 = sub_1C466E870(&v119, &v120);

    if (v103 == 2)
    {
      if (!v84)
      {
LABEL_47:

        goto LABEL_30;
      }

      v1 = v84 - 1;
      if (!__OFSUB__(v84, 1))
      {
LABEL_45:
        v104 = v110;
        sub_1C4431590(v1, v110 == 0);
        if (v104)
        {
          MEMORY[0x1C6940F90](v1, v79);
        }

        else
        {
          sub_1C440C3C0(v79 + 8 * v1);
        }

        goto LABEL_47;
      }

      __break(1u);
    }

    v1 = v84;
    goto LABEL_45;
  }

  if (qword_1EDDFA668 != -1)
  {
LABEL_52:
    sub_1C4406728();
  }

  v26 = sub_1C4F00978();
  sub_1C43FCEE8(v26, qword_1EDE2DDE0);
  v27 = v115;
  v28 = sub_1C43FE990();
  v20(v28);

  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CE8();

  if (!os_log_type_enabled(v29, v30))
  {

    v75 = v27;
    goto LABEL_29;
  }

  v31 = sub_1C440F274();
  v111 = v20;
  v32 = v31;
  v114 = sub_1C43FC11C();
  v121[0] = v114;
  *v32 = 136315394;
  sub_1C44192E0();
  sub_1C4498E70(v33, v34);
  LODWORD(v112) = v30;
  sub_1C443F134();
  v36 = v35;
  v37 = v116;
  (v116)(v27, v5);
  v38 = sub_1C443FB14();
  v40 = sub_1C441D828(v38, v36, v39);

  *(v32 + 4) = v40;
  *(v32 + 12) = 2080;
  v41 = sub_1C440D1F8();
  v111(v41);
  sub_1C443F134();
  v43 = v42;
  v44 = sub_1C4404C28();
  v37(v44);
  v45 = sub_1C443FB14();
  v47 = sub_1C441D828(v45, v43, v46);

  *(v32 + 14) = v47;
  _os_log_impl(&dword_1C43F8000, v29, v112, "CachedContextProvider: lastBehaviorEvent input date out of bound (input date %s < start date %s). Returning nil.", v32, 0x16u);
  swift_arrayDestroy();
  sub_1C4402DEC();
  sub_1C43FBE2C();

LABEL_30:
  sub_1C43FE9F0();
}

void sub_1C466C14C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar;
  sub_1C440D164();
  sub_1C446C964(v1 + v14, v13, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v15 = sub_1C4EF9F88();
  if (sub_1C44157D4(v13, 1, v15) == 1)
  {
    sub_1C4420C3C(v13, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v16 = objc_autoreleasePoolPush();
    v17 = v1[5];
    v18 = v1[6];
    sub_1C4409678(v1 + 2, v17);
    (*(v18 + 8))(v17, v18);
    objc_autoreleasePoolPop(v16);
    (*(*(v15 - 8) + 16))(v10, v3, v15);
    sub_1C440BAA8(v10, 0, 1, v15);
    swift_beginAccess();
    sub_1C4630E08(v10, v1 + v14);
    swift_endAccess();
  }

  else
  {
    (*(*(v15 - 8) + 32))(v3, v13, v15);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C466C344(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar;
  v7 = sub_1C4EF9F88();
  sub_1C440BAA8(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = 0;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
  sub_1C4EFDAB8();
  sub_1C456902C(&unk_1EC0BA9D0, &unk_1C4F16820);
  sub_1C442C5FC();
  sub_1C4498E70(v9, v10);
  *(v3 + v8) = sub_1C4F00F28();
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate) = 0;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents) = 0;
  sub_1C443FA18(a1, v3 + 16);
  v11 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v11);
  v13 = *(v12 + 32);
  sub_1C4426A5C();
  v13();
  (v13)(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, a3, v11);
  return v3;
}

void sub_1C466C4B4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v232 = v4;
  v6 = v5;
  v7 = sub_1C4EFDAB8();
  v8 = sub_1C441B7D8(v7);
  v9 = sub_1C43FCDF8(v8);
  v224 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v223 = &v216 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C43FE99C();
  v16 = sub_1C456902C(v14, v15);
  v17 = sub_1C43FBD18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v228 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v227 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v216 - v24;
  v26 = sub_1C4EF9CD8();
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  v220 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v218 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v226 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v222 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v219 = v40;
  sub_1C43FD1D0();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v216 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v216 - v45;
  v229 = v6;
  sub_1C446C964(v6, v25, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v47 = sub_1C44157D4(v25, 1, v26);
  v48 = &dword_1EDE2D000;
  v230 = v29;
  v231 = v3;
  if (v47 == 1)
  {
    v49 = v44;
    sub_1C4420C3C(v25, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v50 = v1;
    v51 = v232;
    v52 = v26;
LABEL_3:
    v53 = v228;
    sub_1C446C964(v51, v228, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v53, 1, v52) == 1)
    {
      sub_1C4420C3C(v53, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v54 = v231;
      goto LABEL_5;
    }

    v97 = v230;
    v98 = v48;
    v99 = v52;
    v100 = v226;
    (*(v230 + 32))(v226, v53, v52);
    v101 = *(v98 + 418);
    sub_1C440D164();
    v102 = *(v97 + 16);
    v222 = v101;
    v102(v49, &v101[v50], v99);
    sub_1C44192E0();
    sub_1C4498E70(v103, v104);
    sub_1C44158DC();
    LOBYTE(v101) = sub_1C4F01068();
    v107 = *(v97 + 8);
    v105 = v97 + 8;
    v106 = v107;
    v107(v49, v99);
    if (v101)
    {
      v108 = v100;
      v228 = v49;
      v225 = v106;
      v230 = v105;
      v109 = v50;
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v110 = sub_1C4F00978();
      sub_1C43FCEE8(v110, qword_1EDE2DDE0);
      v102(v220, v100, v99);

      v111 = sub_1C4F00968();
      v112 = sub_1C4F01CE8();

      v113 = os_log_type_enabled(v111, v112);
      v232 = v102;
      if (v113)
      {
        v114 = sub_1C440F274();
        v224 = sub_1C43FC11C();
        v233[0] = v224;
        *v114 = 136315394;
        sub_1C44192E0();
        sub_1C4498E70(v115, v116);
        LODWORD(v223) = v112;
        v221 = v111;
        sub_1C4404084();
        v117 = sub_1C4F02858();
        v118 = v228;
        v120 = v119;
        sub_1C43FD364();
        v88 = *(v121 - 256);
        v88();
        v122 = sub_1C441D828(v117, v120, v233);

        *(v114 + 4) = v122;
        *(v114 + 12) = 2080;
        v232(v118, &v222[v109], v99);
        sub_1C4404084();
        v123 = sub_1C4F02858();
        v125 = v124;
        v126 = v118;
        v108 = v226;
        (v88)(v126, v99);
        v127 = sub_1C441D828(v123, v125, v233);

        *(v114 + 14) = v127;
        sub_1C440873C();
        _os_log_impl(v128, v129, v130, v131, v114, 0x16u);
        sub_1C441E264();
        sub_1C4402DEC();
        sub_1C43FBE2C();
      }

      else
      {

        sub_1C43FD364();
        v88 = *(v201 - 256);
        v88();
      }

      v202 = v109[5];
      v203 = v109[6];
      sub_1C4404D7C(v109 + 2);
      v204 = v227;
    }

    else
    {
      v162 = v102;
      v163 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
      sub_1C440D164();
      v222 = v50;
      v228 = v163;
      v164 = v50 + v163;
      v165 = v162;
      v162(v49, v164, v99);
      LOBYTE(v162) = sub_1C4F01068();
      v106(v49, v99);
      if ((v162 & 1) == 0)
      {
        v106(v100, v99);
        v54 = v231;
        v51 = v232;
        v50 = v222;
LABEL_5:
        v55 = v224;
        (*(v224 + 104))(v223, *MEMORY[0x1E69A9420], v225);
        sub_1C442C5FC();
        sub_1C4498E70(v56, v57);
        sub_1C4F01578();
        sub_1C4F01578();
        v58 = *(v55 + 8);
        v59 = sub_1C4402E08();
        v60(v59);
        if (v236[0] == v235)
        {
          sub_1C466A96C();
        }

        else
        {
          v160 = v50[5];
          v161 = v50[6];
          sub_1C4404D7C(v50 + 2);
          (*(v161 + 24))(v229, v51, v54, v160, v161);
        }

        goto LABEL_40;
      }

      v166 = v49;
      v225 = v106;
      v230 = v105;
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v167 = sub_1C4F00978();
      sub_1C43FCEE8(v167, qword_1EDE2DDE0);
      v232 = v165;
      v165(v218, v226, v99);
      v168 = v222;

      v169 = sub_1C4F00968();
      v170 = sub_1C4F01CE8();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = sub_1C440F274();
        LODWORD(v223) = v170;
        v172 = v171;
        v224 = sub_1C43FC11C();
        v236[0] = v224;
        *v172 = 136315394;
        sub_1C44192E0();
        sub_1C4498E70(v173, v174);
        v221 = v169;
        v175 = sub_1C4F02858();
        v176 = v166;
        v178 = v177;
        sub_1C43FD364();
        v180 = *(v179 - 256);
        v180();
        v181 = sub_1C441D828(v175, v178, v236);

        *(v172 + 4) = v181;
        *(v172 + 12) = 2080;
        v232(v176, &v228[v168], v99);
        v182 = sub_1C4F02858();
        v184 = v183;
        (v180)(v176, v99);
        v185 = sub_1C441D828(v182, v184, v236);
        v88 = v180;

        *(v172 + 14) = v185;
        sub_1C440873C();
        _os_log_impl(v186, v187, v188, v189, v172, 0x16u);
        sub_1C441E264();
        sub_1C4402DEC();
        sub_1C43FBE2C();
      }

      else
      {

        sub_1C43FD364();
        v88 = *(v212 - 256);
        v88();
      }

      v202 = *(v168 + 5);
      v203 = *(v168 + 6);
      sub_1C4404D7C(v168 + 2);
      v108 = v226;
      v204 = v227;
    }

    v232(v204, v108, v99);
    v213 = sub_1C4416DDC();
    sub_1C440BAA8(v213, v214, v215, v99);
    (*(v203 + 24))(v229, v204, v231, v202, v203);
    sub_1C4420C3C(v204, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v199 = v108;
    v200 = v99;
LABEL_39:
    (v88)(v199, v200);
    goto LABEL_40;
  }

  (*(v29 + 32))(v46, v25, v26);
  v61 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  sub_1C440D164();
  v62 = v29 + 16;
  v63 = *(v29 + 16);
  v217 = v61;
  v64 = sub_1C4415840();
  (v63)(v64);
  sub_1C44192E0();
  sub_1C4498E70(v65, v66);
  v67 = sub_1C4F01068();
  v70 = *(v29 + 8);
  v68 = (v29 + 8);
  v69 = v70;
  v71 = sub_1C43FBC98();
  (v70)(v71);
  v221 = v63;
  if (v67)
  {
    v72 = v26;
    v226 = v69;
    v228 = v44;
    v229 = v46;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v73 = sub_1C4F00978();
    sub_1C43FCEE8(v73, qword_1EDE2DDE0);
    v74 = v222;
    v75 = v221;
    v230 = v62;
    (v221)(v222, v229, v26);
    v76 = v1;

    v77 = sub_1C4F00968();
    v78 = sub_1C4F01CE8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = sub_1C440F274();
      v80 = sub_1C43FC11C();
      v234 = sub_1C441B7D8(v80);
      *v79 = 136315394;
      sub_1C44192E0();
      sub_1C4498E70(v81, v82);
      v83 = v72;
      LODWORD(v224) = v78;
      v84 = sub_1C4F02858();
      v86 = v85;
      v87 = v74;
      v88 = v226;
      (v226)(v87, v72);
      v89 = sub_1C441C89C();
      sub_1C441D828(v89, v86, v90);
      sub_1C4408758();
      v75 = v221;

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      v91 = v228;
      (v75)(v228, v76 + v217, v72);
      sub_1C4F02858();
      v93 = v92;
      (v88)(v91, v83);
      v94 = sub_1C441C89C();
      v96 = sub_1C441D828(v94, v93, v95);

      *(v79 + 14) = v96;
      _os_log_impl(&dword_1C43F8000, v77, v224, "CachedContextProvider: behaviorEventPublisher input dates out of bound (input date %s < start date %s). Not utilizing cache for this query.", v79, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      v190 = v74;
      v88 = v226;
      (v226)(v190, v72);
      v83 = v72;
    }

    v191 = v232;
    v192 = v76[5];
    v193 = v76[6];
    sub_1C4404D7C(v76 + 2);
    v194 = v227;
    v195 = v229;
    (v75)(v227, v229, v83);
    v196 = sub_1C4416DDC();
    sub_1C440BAA8(v196, v197, v198, v83);
    (*(v193 + 24))(v194, v191, v231, v192, v193);
    sub_1C4420C3C(v194, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v199 = v195;
    v200 = v83;
    goto LABEL_39;
  }

  v132 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  sub_1C440D164();
  v222 = v1;
  v217 = v132;
  v133 = sub_1C4415840();
  (v63)(v133);
  v134 = sub_1C4F01068();
  v49 = v44;
  v135 = sub_1C43FBC98();
  (v69)(v135);
  v136 = v69;
  v52 = v26;
  if ((v134 & 1) == 0)
  {
    (v69)(v46, v26);
    v50 = v222;
    v51 = v232;
    v48 = &dword_1EDE2D000;
    goto LABEL_3;
  }

  v229 = v68;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v137 = sub_1C4F00978();
  sub_1C43FCEE8(v137, qword_1EDE2DDE0);
  v138 = v219;
  (v221)(v219, v46, v26);
  v139 = v222;

  v140 = sub_1C4F00968();
  v141 = sub_1C4F01CE8();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = v136;
    v143 = sub_1C440F274();
    v228 = sub_1C43FC11C();
    v234 = v228;
    *v143 = 136315394;
    sub_1C44192E0();
    v224 = sub_1C4498E70(v144, v145);
    v226 = v140;
    v146 = sub_1C4F02858();
    v230 = v62;
    v147 = v139;
    v149 = v148;
    LODWORD(v225) = v141;
    (v142)(v138, v52);
    v150 = sub_1C441C89C();
    sub_1C441D828(v150, v149, v151);
    sub_1C4408758();
    v139 = v147;

    *(v143 + 4) = v146;
    *(v143 + 12) = 2080;
    (v221)(v49, &v147[v217], v52);
    sub_1C4F02858();
    v152 = v46;
    v154 = v153;
    v155 = v52;
    (v142)(v49, v52);
    v156 = sub_1C441C89C();
    v158 = sub_1C441D828(v156, v154, v157);
    v46 = v152;

    *(v143 + 14) = v158;
    v159 = v226;
    _os_log_impl(&dword_1C43F8000, v226, v225, "CachedContextProvider: behaviorEventPublisher input dates out of bound (input date %s >= end date %s). Not utilizing cache for this query.", v143, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C4402DEC();
  }

  else
  {

    v205 = v138;
    v155 = v52;
    (v136)(v205, v52);
    v142 = v136;
  }

  v206 = *(v139 + 5);
  v207 = *(v139 + 6);
  sub_1C4404D7C(v139 + 2);
  v208 = v227;
  (v221)(v227, v46, v155);
  v209 = sub_1C4416DDC();
  sub_1C440BAA8(v209, v210, v211, v155);
  (*(v207 + 24))(v208, v232, v231, v206, v207);
  sub_1C4420C3C(v208, &unk_1EC0B84E0, qword_1C4F0D2D0);
  (v142)(v46, v155);
LABEL_40:
  sub_1C43FE9F0();
}

void sub_1C466D624()
{
  sub_1C43FBD3C();
  v45[2] = v1;
  v46 = v0;
  v56 = v2;
  v4 = v3;
  sub_1C441B7D8(v5);
  v6 = sub_1C4EFDAB8();
  v7 = sub_1C43FCDF8(v6);
  v53 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v45 - v15;
  v61 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = sub_1C4EFDA88();
  }

  else
  {
    v17 = sub_1C4EFDA58();
  }

  v52 = *(v17 + 16);
  if (v52)
  {
    v18 = 0;
    v50 = v17 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v57 = v53 + 16;
    v49 = *MEMORY[0x1E69A9450];
    v54 = v53 + 104;
    v58 = v53 + 8;
    v47 = MEMORY[0x1E69E7CC0];
    v48 = *MEMORY[0x1E69A9418];
    v55 = v56 + 7;
    v51 = v17;
    while (v18 < *(v17 + 16))
    {
      v19 = v53;
      v4 = *(v53 + 72);
      v20 = *(v53 + 16);
      v20(v16, v50 + v4 * v18, v6);
      v21 = *(v19 + 104);
      v21(v13, v49, v6);
      sub_1C442C5FC();
      sub_1C4498E70(&qword_1EDDEFFB8, v22);
      sub_1C43FE990();
      sub_1C4F01578();
      sub_1C43FE990();
      sub_1C4F01578();
      v23 = *(v19 + 8);
      v24 = sub_1C442FC44();
      v23(v24);
      if (v59[0] == v60 || (v21(v13, v48, v6), sub_1C43FE990(), sub_1C4F01578(), sub_1C43FE990(), sub_1C4F01578(), v25 = sub_1C442FC44(), v23(v25), v59[0] == v60))
      {
LABEL_13:
        (v23)(v16, v6);
      }

      else
      {
        if (v56[2])
        {
          v26 = v56;
          v27 = v56[5];
          sub_1C442C5FC();
          sub_1C4498E70(&qword_1EDDEFFD0, v28);
          v29 = sub_1C4F00FD8();
          v30 = ~(-1 << *(v26 + 32));
          while (1)
          {
            v31 = v29 & v30;
            if (((*(v55 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
            {
              break;
            }

            v20(v13, v56[6] + v31 * v4, v6);
            sub_1C442C5FC();
            sub_1C4498E70(&unk_1EDDEFFC0, v32);
            v33 = sub_1C4F010B8();
            v34 = sub_1C442FC44();
            v23(v34);
            v29 = v31 + 1;
            if (v33)
            {
              goto LABEL_13;
            }
          }
        }

        sub_1C466C4B4();
        v4 = v35;
        MEMORY[0x1C6940330]();
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4402E08();
        sub_1C4F01748();

        (v23)(v16, v6);
        v47 = v61;
      }

      v17 = v51;
      if (++v18 == v52)
      {

        v36 = v47;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
    sub_1C4F024B8();

    goto LABEL_22;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v37 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v38 = sub_1C4F01658();
  v39 = sub_1C4415840();
  v4 = [v39 v40];

  if (v36 >> 62)
  {
    goto LABEL_24;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F02988();
LABEL_22:
  sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
  v41 = sub_1C4F01658();

  v59[4] = sub_1C4623614;
  v59[5] = 0;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 1107296256;
  v59[2] = sub_1C46237BC;
  v59[3] = &unk_1F43E6098;
  v42 = _Block_copy(v59);
  v43 = sub_1C4415840();
  [v43 v44];

  _Block_release(v42);

  sub_1C43FE9F0();
}

uint64_t sub_1C466DBD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C466DE10();
  if (!*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents))
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C446C964(a1, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FC0FC(v10);
  if (v19)
  {
    sub_1C440D164();
    v20 = v14[2];
    v21 = sub_1C440597C();
    v22(v21);
    v23 = sub_1C44157D4(v10, 1, v11);
    v27 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v23 != 1)
    {
      v27 = sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    v25 = v14[4];
    sub_1C4426A5C();
    v26();
    v27 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  MEMORY[0x1EEE9AC00](v27);
  *(&v33 - 2) = v18;
  *(&v33 - 1) = a2;
  sub_1C4B341F0();
  v24 = v28;
  v29 = v14[1];
  v30 = sub_1C43FE99C();
  v31(v30);
  return v24;
}

uint64_t sub_1C466DE10()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents;
  if (!*&v0[OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents])
  {
    v13 = *(v0 + 6);
    v30 = *(v0 + 5);
    v29 = sub_1C4409678(v0 + 2, v30);
    v14 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
    v31 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
    swift_beginAccess();
    v15 = v3[2];
    v15(v11, &v1[v14], v2);
    v28 = v15;
    sub_1C440BAA8(v11, 0, 1, v2);
    v16 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    swift_beginAccess();
    v15(v6, &v1[v16], v2);
    v17 = (*(v13 + 40))(v11, v6, 1, 1000, v30, v13);
    v27 = v3[1];
    v27(v6, v2);
    sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v18 = *&v1[v12];
    *&v1[v12] = v17;

    v19 = *(v1 + 6);
    v30 = *(v1 + 5);
    v26 = v19;
    v29 = sub_1C4409678(v1 + 2, v30);
    v20 = v31;
    v21 = v28;
    v28(v6, &v1[v31], v2);
    sub_1C4EF9BE8();
    v22 = v27;
    v27(v6, v2);
    sub_1C440BAA8(v11, 0, 1, v2);
    v21(v6, &v1[v20], v2);
    v23 = (*(v26 + 40))(v11, v6, 1, 1, v30);
    v22(v6, v2);
    sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C4428DA0(v23))
    {
      sub_1C4431590(0, (v23 & 0xC000000000000001) == 0);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1C6940F90](0, v23);
      }

      else
      {
        v24 = *(v23 + 32);
      }
    }

    else
    {

      v24 = 0;
    }

    v25 = *&v1[OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate];
    *&v1[OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate] = v24;
  }

  return result;
}

uint64_t sub_1C466E19C(uint64_t *a1)
{
  v1 = *a1;
  sub_1C4EF9CD8();
  sub_1C4498E70(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
  if (sub_1C4F01068())
  {
    return 0;
  }

  else
  {
    return sub_1C4EF9C18() & 1;
  }
}

uint64_t sub_1C466E268(uint64_t a1)
{
  v3 = sub_1C4EFDAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType;
  swift_beginAccess();
  if (*(*(v1 + v13) + 16))
  {
    sub_1C457AD28();
    if (v14)
    {
      return swift_endAccess();
    }
  }

  v67 = v7;
  v68 = v4;
  v66 = v3;
  v70 = v13;
  swift_endAccess();
  v16 = swift_allocObject();
  v69 = v16;
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v17 = (v16 + 16);
  v19 = *(v1 + 40);
  v18 = *(v1 + 48);
  sub_1C4409678((v1 + 16), v19);
  v20 = v9;
  v21 = v8;
  v22 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  swift_beginAccess();
  v23 = *(v20 + 16);
  v72 = v1;
  v65 = v23;
  v23(v12, (v1 + v22), v21);
  v24 = *(v18 + 16);
  v71 = a1;
  v25 = v24(v12, a1, v19, v18);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v26 = v28;
  v29 = (v28)(v12, v21);
  if (v25)
  {
    MEMORY[0x1C6940330](v29);
    sub_1C4427EF0(*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C4F01748();
    v30 = v70;
    v31 = v71;
  }

  else
  {
    v61 = v27;
    v62 = v22;
    v64 = v17;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v32 = sub_1C4F00978();
    sub_1C442B738(v32, qword_1EDE2DDE0);
    v31 = v71;
    v33 = v66;
    (*(v68 + 16))(v67, v71, v66);
    v34 = v72;

    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CB8();

    v63 = v36;
    v37 = os_log_type_enabled(v35, v36);
    v30 = v70;
    if (v37)
    {
      v38 = v21;
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74[0] = v60;
      *v39 = 136315394;
      v40 = v12;
      v65(v12, &v34[v62], v38);
      sub_1C4498E70(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
      v41 = v35;
      v42 = sub_1C4F02858();
      v43 = v33;
      v45 = v44;
      v26(v40, v38);
      v46 = sub_1C441D828(v42, v45, v74);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2080;
      sub_1C4498E70(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
      v47 = v67;
      v48 = sub_1C4F02858();
      v50 = v49;
      (*(v68 + 8))(v47, v43);
      v51 = sub_1C441D828(v48, v50, v74);

      *(v39 + 14) = v51;
      _os_log_impl(&dword_1C43F8000, v41, v63, "CachedContextProvider: Unable to find last event before start date %s for behavior type %s", v39, 0x16u);
      v52 = v60;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v52, -1, -1);
      v53 = v39;
      v31 = v71;
      MEMORY[0x1C6942830](v53, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v67, v33);
    }
  }

  v54 = objc_autoreleasePoolPush();
  v55 = v72;
  v56 = v69;
  sub_1C466EA7C(v72, v31, v69);
  objc_autoreleasePoolPop(v54);
  swift_beginAccess();
  v57 = *(v56 + 16);
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v58 = *&v55[v30];
  swift_isUniquelyReferenced_nonNull_native();
  v73 = *&v55[v30];
  sub_1C466099C();
  *&v55[v30] = v73;
  swift_endAccess();
}

uint64_t sub_1C466E870(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = v5[2];
  v14(&v18 - v10, *(*a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v14(v9, *(v13 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  LOBYTE(a2) = sub_1C4EF9C18();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  if (a2)
  {
    return 0;
  }

  v14(v11, *(v12 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v14(v9, *(v13 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v17 = sub_1C4EF9C08();
  v15(v9, v4);
  v15(v11, v4);
  if (v17)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1C466EA7C(char *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = a2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v12 = *(a1 + 5);
  v11 = *(a1 + 6);
  v21 = sub_1C4409678(a1 + 2, v12);
  v13 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  swift_beginAccess();
  v14 = sub_1C4EF9CD8();
  v15 = *(*(v14 - 8) + 16);
  v15(v10, &a1[v13], v14);
  sub_1C440BAA8(v10, 0, 1, v14);
  v16 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  swift_beginAccess();
  v15(v8, &a1[v16], v14);
  sub_1C440BAA8(v8, 0, 1, v14);
  v17 = (*(v11 + 24))(v10, v8, v22, v12, v11);
  sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v28 = sub_1C466ED7C;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C44405F8;
  v27 = &unk_1F43E6048;
  v18 = _Block_copy(&aBlock);
  v28 = sub_1C463086C;
  v29 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C45DFE08;
  v27 = &unk_1F43E6070;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 sinkWithCompletion:v18 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v18);
}

void sub_1C466ED7C(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1C4F02A38();
      v10 = sub_1C441D828(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "CachedContextProvider: Biome sink completed with error- %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C466EF30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a3;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = v5[2];
  v10(v8, *(*a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  sub_1C4498E70(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
  v11 = sub_1C4F01068();
  v12 = v5[1];
  v12(v8, v4);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v10(v8, *(v9 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
    v13 = sub_1C4EF9C18();
    v12(v8, v4);
  }

  return v13 & 1;
}

uint64_t sub_1C466F0EC()
{
  sub_1C440962C((v0 + 16));
  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  v2 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate, v2);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedBehaviorEventsByType);

  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastMotionStateEventBeforeStartDate);

  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_cachedMotionStateEvents);

  return v0;
}

uint64_t sub_1C466F1DC()
{
  sub_1C466F0EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CachedContextProvider()
{
  result = qword_1EDDF4478;
  if (!qword_1EDDF4478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C466F288()
{
  sub_1C4630784();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1C4EF9CD8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C466F454(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C466E19C(a1) & 1;
}

void sub_1C466F484(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1C4428DA0();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v10;
    sub_1C4673488(&v13, a2, a3, a4);
    if (v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C466F588()
{
  sub_1C43FEC28();
  sub_1C4403FC0();
  v1 = sub_1C4EF9F88();
  v2 = sub_1C43FCDF8(v1);
  v84 = v3;
  v85 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FD2D8();
  v81 = v6;
  v7 = sub_1C4EF9648();
  v8 = sub_1C43FCDF8(v7);
  v82 = v9;
  v83 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v80 = v12;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v19 = sub_1C4EF9CD8();
  v20 = sub_1C43FCDF8(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v88 = v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v78 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v78 - v30;
  v90 = v0;
  v32 = sub_1C4428DA0();
  v33 = MEMORY[0x1E69E7CC0];
  v89 = v32;
  if (v32)
  {
    v91 = MEMORY[0x1E69E7CC0];
    sub_1C43FED38();
    sub_1C459D270();
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v86 = v32 & ~(v32 >> 63);
    v87 = v18;
    v34 = v31;
    v35 = 0;
    v33 = v91;
    v36 = v90 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v37 = MEMORY[0x1C6940F90](v35, v90);
      }

      else
      {
        v37 = *(v90 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = [v38 startDate];
      sub_1C4EF9C78();

      v91 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1C43FCFE8(v40);
        sub_1C459D270();
        v33 = v91;
      }

      ++v35;
      *(v33 + 16) = v41 + 1;
      (*(v22 + 32))(v33 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v41, v29, v19);
      v32 = v89;
    }

    while (v89 != v35);
    v31 = v34;
    v18 = v87;
  }

  sub_1C466FC1C(v33, v18);

  if (sub_1C44157D4(v18, 1, v19) == 1)
  {
    sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_24:
    sub_1C44086C4();
    return;
  }

  (*(v22 + 32))(v31, v18, v19);
  v87 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0x2D4D4D2D59595959, 0xEA00000000004444, v87);
  v49 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {
LABEL_23:
    sub_1C4499940(v49, v42, v43, v44, v45, v46, v47, v48, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    v65 = v64;
    v66 = v81;
    sub_1C4EF9F58();
    sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
    sub_1C4403FC0();
    v67 = sub_1C4EF9F68();
    sub_1C43FCDF8(v67);
    v69 = v68;
    v71 = *(v70 + 72);
    v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1C4F0D130;
    (*(v69 + 104))(v73 + v72, *MEMORY[0x1E6969A48], v67);
    sub_1C4D51F7C();
    v74 = v88;
    sub_1C4EF9C88();
    v75 = v80;
    sub_1C4EF9E98();

    v76 = *(v22 + 8);
    v76(v74, v19);
    (*(v84 + 8))(v66, v85);
    sub_1C4EF95A8();

    (*(v82 + 8))(v75, v83);
    v76(v31, v19);
    v77 = *(v65 + 16);

    goto LABEL_24;
  }

  v91 = MEMORY[0x1E69E7CC0];
  sub_1C43FED38();
  sub_1C44CD9C0();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v79 = v31;
    v50 = 0;
    v49 = v91;
    v86 = v90 & 0xC000000000000001;
    do
    {
      if (v86)
      {
        v51 = MEMORY[0x1C6940F90](v50, v90);
      }

      else
      {
        v51 = *(v90 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = [v51 startDate];
      v54 = v88;
      sub_1C4EF9C78();

      v55 = sub_1C4EF9BF8();
      v56 = v19;
      (*(v22 + 8))(v54, v19);
      v57 = [v87 stringFromDate_];

      v58 = sub_1C4F01138();
      v60 = v59;

      v91 = v49;
      v62 = *(v49 + 16);
      v61 = *(v49 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1C43FCFE8(v61);
        sub_1C44CD9C0();
        v49 = v91;
      }

      ++v50;
      *(v49 + 16) = v62 + 1;
      v63 = v49 + 16 * v62;
      *(v63 + 32) = v58;
      *(v63 + 40) = v60;
      v19 = v56;
    }

    while (v89 != v50);
    v31 = v79;
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1C466FC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_1C4502254(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
      v16 = sub_1C4F01068();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return sub_1C440BAA8(v18, 0, 1, v4);
  }

  else
  {

    return sub_1C440BAA8(a2, 1, 1, v4);
  }
}

uint64_t sub_1C466FEB0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v5 + 16);
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v1;
  v8[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C4673AF0, v8);
}

uint64_t sub_1C466FF44()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames;
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C44CD9C0();
    v4 = 0;
    sub_1C441EAF8();
    sub_1C44041C0();
    sub_1C442DDFC();
    sub_1C4405988();
    sub_1C442B9D4();
    sub_1C4433220();
    sub_1C443FB20();
    sub_1C4415FA8();
    do
    {
      v20 = 0xEC00000079616468;
      v21 = 0x747269426C6C6163;
      switch(byte_1F43D8210[v4 + 32])
      {
        case 1:
          v21 = v16;
          v20 = v15;
          break;
        case 2:
          v20 = 0xE90000000000006CLL;
          v21 = v16;
          break;
        case 3:
          v20 = 0xEA00000000007275;
          v21 = v17;
          break;
        case 4:
          v21 = 0xD000000000000011;
          v20 = v14;
          break;
        case 5:
          v21 = v19;
          v20 = v18;
          break;
        case 6:
          v21 = v6;
          goto LABEL_12;
        case 7:
          v21 = v7;
LABEL_12:
          v20 = v13;
          break;
        case 8:
          v21 = v9;
          v20 = v8;
          break;
        default:
          break;
      }

      v32 = v5;
      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C43FCFE8(v22);
        sub_1C441B7E4();
        v30 = v25;
        sub_1C44CD9C0();
        sub_1C4415FA8();
        sub_1C443FB20();
        sub_1C4433220();
        sub_1C442B9D4();
        sub_1C4405988();
        sub_1C442DDFC();
        sub_1C44041C0();
        sub_1C441EAF8();
        v15 = 0xEC0000007275446CLL;
        v14 = v30;
        v13 = 0xEC000000736B6565;
        v5 = v32;
      }

      ++v4;
      *(v5 + 16) = v23 + 1;
      v24 = v5 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
    }

    while (v4 != 9);
    sub_1C4499940(v5, v6, v7, v8, v9, v10, v11, v12, v29, v30, v0, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    v2 = v26;
    v27 = *(v31 + v1);
    *(v31 + v1) = v26;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

void sub_1C4670190()
{
  sub_1C43FEC28();
  v1 = v0;
  v38 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v38);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v37 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v33 - v9;
  v39 = MEMORY[0x1E69E7CC0];
  v10 = sub_1C4428DA0();
  v11 = 0;
  v12 = v1 & 0xC000000000000001;
  v13 = v1 & 0xFFFFFFFFFFFFFF8;
  v33 = v1;
  v34 = v10;
  v14 = v1 + 32;
  v35 = (v4 + 8);
  v15 = 0x1EC0B6000uLL;
  while (1)
  {
LABEL_2:
    if (v11 == v10)
    {
      sub_1C4428DA0();

      sub_1C44086C4();
      return;
    }

    if (v12)
    {
      v16 = MEMORY[0x1C6940F90](v11, v33);
    }

    else
    {
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_21;
      }

      v16 = *(v14 + 8 * v11);
    }

    v17 = v16;
    if (__OFADD__(v11++, 1))
    {
      break;
    }

    if (*(v15 + 2248) != -1)
    {
      sub_1C4412E50();
      swift_once();
    }

    v19 = qword_1EC151B50;
    v20 = [v17 mechanism];
    if (*(v19 + 16))
    {
      v21 = v20;
      v22 = *(v19 + 40);
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v21);
      v23 = sub_1C4F02B68();
      v24 = v19 + 56;
      v25 = ~(-1 << *(v19 + 32));
      while (1)
      {
        sub_1C44259C4(v23, v24);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v23 = v26 + 1;
        if (*(*(v19 + 48) + 8 * v26) == v21)
        {
          v28 = [v17 startDate];
          sub_1C4EF9C78();

          v29 = v37;
          sub_1C4EF9C38();
          sub_1C4404A98();
          LOBYTE(v28) = sub_1C4EF9C18();
          v30 = *v35;
          (*v35)(v29, v38);
          v31 = sub_1C4404A98();
          v30(v31);
          if (v28)
          {
            sub_1C4F02318();
            v32 = *(v39 + 16);
            sub_1C4F02358();
            sub_1C4F02368();
            sub_1C4F02328();
          }

          else
          {
          }

          v10 = v34;
          v15 = 0x1EC0B6000;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_1C4670458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = a6;
  v37 = a4;
  v38 = a5;
  v39 = a3;
  v9 = sub_1C4EF9E58();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v41 = sub_1C4EF9F88();
  v18 = sub_1C43FCDF8(v41);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v27 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v28 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4433220();
  v30 = sub_1C4673B1C(v26, v27, v29 | 0x7472694200000000, 0xEC00000079616468, a1, a2);
  (*(v12 + 104))(v17, *MEMORY[0x1E6969868], v9);
  sub_1C4EF9E68();
  v31 = (*(v12 + 8))(v17, v9);
  v35 = 0;
  if ((v40 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v31);
    v33 = v37;
    v32 = v38;
    *(&v37 - 4) = v25;
    *(&v37 - 3) = v33;
    *(&v37 - 2) = v32;
    sub_1C479B4B4(sub_1C4673C40, (&v37 - 6), v39);
    if (v34)
    {
      v35 = 1;
    }
  }

  [objc_opt_self() featureValueWithInt64_];
  (*(v20 + 8))(v25, v41);
  return v30;
}

BOOL sub_1C46706D8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v31 = a2;
  v32 = sub_1C4EF9CD8();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF9648();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v13 = sub_1C4EF9F68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F0CE60;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x1E6969A78], v13);
  v19(v18 + v15, *MEMORY[0x1E6969A48], v13);
  sub_1C4D51F7C();
  v20 = [v30 startDate];
  sub_1C4EF9C78();

  sub_1C4EF9EA8();

  (*(v5 + 8))(v8, v32);
  v21 = sub_1C4EF95E8();
  if ((v22 & 1) != 0 || v21 != v29)
  {
    (*(v33 + 8))(v12, v34);
  }

  else
  {
    v23 = sub_1C4EF95A8();
    v25 = v24;
    (*(v33 + 8))(v12, v34);
    if ((v25 & 1) == 0)
    {
      return v23 == v28;
    }
  }

  return 0;
}

void sub_1C46709D8()
{
  sub_1C43FEC28();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C4EF9CD8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440D100();
  v49 = v5;
  v17 = sub_1C4428DA0();
  v48 = v9;
  v50 = v17;
  v47 = v3;
  if (v17)
  {
    v18 = v17;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    if (v18 < 0)
    {
      __break(1u);
      return;
    }

    v19 = 0;
    v20 = v51;
    v21 = (v13 + 8);
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6940F90](v19, v49);
      }

      else
      {
        v22 = *(v49 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = [v22 endDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v26 = v25;
      v27 = *v21;
      (*v21)(v2, v10);
      v28 = [v23 startDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v30 = v29;

      v27(v1, v10);
      v32 = *(v51 + 16);
      v31 = *(v51 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_1C43FCFE8(v31);
        sub_1C441B7E4();
        sub_1C459D100();
      }

      ++v19;
      *(v51 + 16) = v33;
      *(v51 + 8 * v32 + 32) = v26 - v30;
    }

    while (v50 != v19);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    v33 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v33)
    {
      v34 = 0.0;
      goto LABEL_14;
    }
  }

  v34 = 0.0;
  v35 = 32;
  do
  {
    v34 = v34 + *(v20 + v35);
    v35 += 8;
    --v33;
  }

  while (v33);
LABEL_14:
  v36 = COERCE_DOUBLE(sub_1C46134D4(v20));
  v38 = v37;

  if (v38)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v36;
  }

  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C4F0C890;
  v41 = *(v47 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v42 = *(v47 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v43 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  *(v40 + 32) = sub_1C4673B1C(v41, v42, 0x61746F546C6C6163, 0xEC0000007275446CLL, v48, v7);
  v44 = objc_opt_self();
  *(v40 + 40) = [v44 featureValueWithDouble_];
  v45 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  *(v40 + 48) = sub_1C4673B1C(v41, v42, 0x61746F546C6C6163, 0xE90000000000006CLL, v48, v7);
  *(v40 + 56) = [v44 featureValueWithInt64_];
  objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4433220();
  *(v40 + 64) = sub_1C4673B1C(v41, v42, v46 | 0x4478614D00000000, 0xEA00000000007275, v48, v7);
  *(v40 + 72) = [v44 featureValueWithDouble_];
  sub_1C44086C4();
}

void sub_1C4670DD0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = v4;
  v12 = sub_1C4EF9CD8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440D100();
  v19 = sub_1C4428DA0();
  v20 = MEMORY[0x1E69E7CC0];
  v69 = a1;
  v70 = a2;
  v68 = v7;
  v71 = v19;
  if (v19)
  {
    v21 = v19;
    sub_1C459D100();
    if (v21 < 0)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v22 = 0;
    v23 = v20;
    v24 = (v15 + 8);
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v25 = sub_1C4404B44();
        v26 = MEMORY[0x1C6940F90](v25);
      }

      else
      {
        v26 = *(a3 + 8 * v22 + 32);
      }

      v27 = v26;
      v28 = [v26 endDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v30 = v29;
      v31 = *v24;
      (*v24)(v6, v12);
      v32 = [v27 startDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v34 = v33;

      v31(v5, v12);
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_1C43FCFE8(v35);
        sub_1C441B7E4();
        sub_1C459D100();
      }

      ++v22;
      *(v23 + 16) = v37;
      *(v23 + 8 * v36 + 32) = v30 - v34;
    }

    while (v71 != v22);
  }

  else
  {
    v37 = *(MEMORY[0x1E69E7CC0] + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (!v37)
    {
      goto LABEL_20;
    }
  }

  v38 = a4 + a4;
  v20 = MEMORY[0x1E69E7CC0];
  v39 = 32;
  do
  {
    v40 = *(v23 + v39);
    if (v38 < v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v20 + 16);
        sub_1C459D100();
      }

      v43 = *(v20 + 16);
      v42 = *(v20 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C43FCFE8(v42);
        sub_1C459D100();
      }

      *(v20 + 16) = v43 + 1;
      *(v20 + 8 * v43 + 32) = v40;
    }

    v39 += 8;
    --v37;
  }

  while (v37);
LABEL_20:

  v44 = *(v20 + 16);

  v72 = MEMORY[0x1E69E7CC0];
  v45 = sub_1C4428DA0();
  for (i = 0; v45 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v50 = sub_1C4404B44();
      v47 = MEMORY[0x1C6940F90](v50);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v47 = *(a3 + 8 * i + 32);
    }

    v48 = v47;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if ([v47 direction] == 1)
    {
      sub_1C4F02318();
      v49 = *(v72 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  v51 = sub_1C4428DA0();

  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C4F0CE60;
  v53 = *(v68 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v54 = *(v68 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v55 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = sub_1C4404B44();
  *(v52 + 32) = sub_1C4673B1C(v56, v57, 0xD000000000000011, v58, v69, v70);
  v59 = v71;
  if (v71 <= 1)
  {
    v59 = 1;
  }

  v60 = v59;
  v61 = v51 / v59;
  v62 = objc_opt_self();
  *(v52 + 40) = [v62 featureValueWithDouble_];
  v63 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4433220();
  v64 = sub_1C4404B44();
  *(v52 + 48) = sub_1C4673B1C(v64, v65, v66, v67, v69, v70);
  *(v52 + 56) = [v62 featureValueWithDouble_];
}

uint64_t sub_1C46712D0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  strcpy((inited + 32), "callTwoWeeks");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0x4132750000000000;
  strcpy((inited + 56), "callSixWeeks");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = 0x414BAF8000000000;
  *(inited + 80) = 0x6C6577546C6C6163;
  *(inited + 88) = 0xEF736B6565576576;
  *(inited + 96) = 0x415BAF8000000000;
  v40 = objc_opt_self();
  v10 = 0;
  v11 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config);
  v12 = *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_config + 8);
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = *(inited + v10 + 32);
    v15 = *(inited + v10 + 40);
    v16 = *(inited + v10 + 48);
    objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4673B1C(v11, v12, v14, v15, a1, a2);
    sub_1C4670190();
    v19 = [v40 featureValueWithInt64_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = *(v13 + 16);
      sub_1C458B740();
      v13 = v24;
    }

    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1C43FCFE8(v20);
      sub_1C441B7E4();
      sub_1C458B740();
      v13 = v25;
    }

    *(v13 + 16) = v21 + 1;
    v22 = v13 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v10 += 24;
  }

  while (v10 != 72);
  swift_setDeallocating();
  sub_1C49E15B0();
  sub_1C4410A78();
  sub_1C46709D8();
  sub_1C49D39CC(v26);
  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1C4F0D130;
  v28 = sub_1C4410A78();
  *(v27 + 32) = sub_1C4670458(v28, v29, v30, a5, a6, v31);
  *(v27 + 40) = v32;
  sub_1C49D39CC(v27);
  v33 = sub_1C4410A78();
  sub_1C4670DD0(v33, v34, v35, a3);
  sub_1C49D39CC(v36);
  return v13;
}

uint64_t sub_1C4671594()
{
  v2 = v0;
  v310 = sub_1C456902C(&qword_1EC0BA9F8, &unk_1C4F168D0);
  sub_1C43FBCE0(v310);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBC74();
  v309 = v6;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBC74();
  sub_1C43FD2C8(v11);
  v303 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v303);
  v293 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2C8(&v286 - v17);
  v18 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
  v19 = sub_1C43FBD18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v319[0] = v22;
  v23 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  sub_1C43FD2C8(v27);
  v322 = sub_1C4EF9648();
  v28 = sub_1C43FCDF8(v322);
  v290 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v32);
  v328 = sub_1C4F01188();
  v33 = sub_1C43FCDF8(v328);
  v289 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v37);
  v291 = type metadata accessor for Configuration();
  v38 = sub_1C43FBCE0(v291);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  v42 = sub_1C43FD2C8(v41);
  v287 = type metadata accessor for GraphTriple(v42);
  v43 = sub_1C43FCDF8(v287);
  v288 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v49 = v48 - v47;
  v50 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBD18(v50);
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBC74();
  sub_1C43FD2C8(v54);
  v55 = sub_1C4EFF0C8();
  v56 = sub_1C43FCDF8(v55);
  v330 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v286 - v63;
  v65 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v65);
  v67 = *(v66 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBC74();
  sub_1C43FD2C8(v69);
  v316 = sub_1C4EFDE88();
  v70 = sub_1C43FCDF8(v316);
  v326 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = &v286 - v78;
  v325 = (&v286 - v78);
  MEMORY[0x1EEE9AC00](v77);
  sub_1C440D100();
  v333 = v1;
  v315 = sub_1C4EFDE98();
  v80 = sub_1C43FCDF8(v315);
  v324 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v84);
  v329 = &v286 - v85;
  v86 = MEMORY[0x1E69E7CC0];
  v345 = MEMORY[0x1E69E7CC0];
  v313 = v2;
  v305 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_store);
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4403FC0();
  v87 = *(sub_1C4EFEEF8() - 8);
  v88 = *(v87 + 72);
  v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v297 = *(v87 + 80);
  v308 = v2;
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  v300 = v89;
  sub_1C4EFE518();
  sub_1C4EFE478();
  *&v298 = v88;
  sub_1C4EFEA18();
  sub_1C4D504A4();
  v299 = v90;
  v91 = *MEMORY[0x1E69A95C0];
  v93 = v326 + 13;
  v92 = v326[13];
  v94 = v1;
  v95 = v316;
  (v92)(v94, v91, v316);
  (v92)(v79, v91, v95);
  (v92)(v320, v91, v95);
  v96 = v95;
  (v92)(v323, v91, v95);
  v97 = v314;
  LODWORD(v307) = v91;
  v306 = v93;
  v301 = v92;
  (v92)(v314, v91, v96);
  v284 = v97;
  v285 = 0;
  v98 = v323;
  sub_1C4EFDCD8();

  v100 = v326 + 1;
  v99 = v326[1];
  v101 = v97;
  v102 = v316;
  v99(v101, v316);
  v99(v98, v102);
  v103 = sub_1C4404A98();
  (v99)(v103);
  v104 = sub_1C4418370();
  v99(v104, v102);
  v105 = sub_1C43FFF1C();
  v326 = v100;
  v299 = v99;
  v99(v105, v102);
  v106 = sub_1C4EFD678();
  sub_1C44158E8(v106, &v326);
  v335 = &v345;
  v107 = v329;
  sub_1C48687D0(v329, v99, sub_1C4673BE0, v334);
  sub_1C4420C3C(v99, &unk_1EC0C07E0, &unk_1C4F168F0);
  v108 = *(v324 + 1);
  v324 = v324 + 8;
  v296 = v108;
  v108(v107, v315);
  v109 = v345;
  v110 = *(v345 + 16);
  v332 = v55;
  v329 = v345;
  if (v110)
  {
    v295 = v49;
    v342 = v86;
    sub_1C43FED38();
    sub_1C459D178();
    v111 = v342;
    v112 = v109 + 32;
    do
    {
      sub_1C442E860(v112, &v337);
      v113 = v340;
      sub_1C4409678(&v337, v339);
      v114 = *(*(v113 + 8) + 8);
      sub_1C4EFF7E8();
      sub_1C440962C(&v337);
      v342 = v111;
      v116 = *(v111 + 16);
      v115 = *(v111 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_1C43FCFE8(v115);
        sub_1C459D178();
        v111 = v342;
      }

      *(v111 + 16) = v116 + 1;
      sub_1C4409B30(&v346);
      (*(v118 + 32))(v111 + v117 + *(v118 + 72) * v116, v64, v332);
      v112 += 40;
      --v110;
    }

    while (v110);
    v49 = v295;
  }

  sub_1C45972E0();
  v295 = v119;
  v120 = swift_allocObject();
  v298 = xmmword_1C4F0D130;
  *(v120 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE3D8();
  sub_1C4D504A4();
  v308 = v121;
  v122 = sub_1C43FFF1C();
  v123 = v316;
  v124 = v301;
  (v301)(v122, v307, v316);
  sub_1C4418370();
  sub_1C441497C();
  v124();
  v125 = v320;
  sub_1C441497C();
  v124();
  v126 = v323;
  sub_1C441497C();
  v124();
  v127 = v314;
  sub_1C441497C();
  v124();
  v284 = v127;
  v285 = 0;
  v128 = v325;
  sub_1C4EFDCD8();

  v129 = v127;
  v130 = v326;
  v131 = v299;
  v299(v129, v123);
  v131(v126, v123);
  v131(v125, v123);
  v131(v128, v123);
  v132 = sub_1C43FFF1C();
  v131(v132, v123);
  v133 = sub_1C4EFF8F8();
  sub_1C44158E8(v133, &v340);
  v134 = v312;
  v135 = sub_1C498DB80();
  sub_1C4420C3C(v130, &qword_1EC0BAA00, &unk_1C4F17400);
  v296(v134, v315);
  v136 = sub_1C4EF9348();
  v137 = *(v136 + 48);
  v138 = *(v136 + 52);
  swift_allocObject();
  v320 = sub_1C4EF9338();
  sub_1C456902C(&qword_1EC0BAA08, &unk_1C4F16900);
  sub_1C4502254(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
  v323 = sub_1C4F00F28();
  v139 = *(v135 + 16);
  v140 = v319[0];
  if (!v139)
  {
LABEL_31:

    v150 = v330;
    v185 = *(v313 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView + 32);
    sub_1C4409678((v313 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView), *(v313 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView + 24));
    v328 = sub_1C4EFF2B8();
    v186 = v292;
    sub_1C449EDC8(v305 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v292, type metadata accessor for Configuration);
    v187 = (v186 + *(v291 + 20));
    v139 = *v187;
    v167 = v187[1];
    v142 = v303;
    v144 = v302;
    if (qword_1EDDFEC70 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_32;
  }

  v326 = (v49 + v287[8]);
  sub_1C4409B30(v319);
  v301 = v135;
  v142 = v135 + v141;
  v325 = (v289 + 8);
  v308 = (v290 + 32);
  v324 = *(v143 + 72);
  v312 = (v330 + 16);
  v307 = v330 + 8;
  v306 = (v290 + 8);
  while (1)
  {
    v144 = v49;
    sub_1C449EDC8(v142, v49, type metadata accessor for GraphTriple);
    v333 = objc_autoreleasePoolPush();
    v145 = *v326;
    v146 = v326[1];
    v147 = v327;
    sub_1C4F01178();
    v148 = sub_1C4F01148();
    v150 = v149;
    sub_1C4402C08(&v343);
    v151(v147, v328);
    if (v150 >> 60 == 15)
    {
      v49 = v144;
LABEL_29:
      v156 = sub_1C43FFF1C();
      goto LABEL_30;
    }

    v152 = v140;
    sub_1C4502254(&qword_1EC0BAA18, MEMORY[0x1E6968278]);
    v153 = v319[1];
    v154 = v322;
    v140 = v148;
    v155 = v331;
    sub_1C4EF9328();
    if (!v155)
    {
      break;
    }

    sub_1C441DFEC(v148, v150);
    sub_1C440BAA8(v153, 1, 1, v154);
    sub_1C4420C3C(v153, &unk_1EC0BAD50, &unk_1C4F168E0);
    v331 = 0;
    v49 = v144;
    v156 = sub_1C43FFF1C();
    v140 = v152;
LABEL_30:
    objc_autoreleasePoolPop(v156);
    sub_1C449F128();
    v142 += v324;
    if (!--v139)
    {
      goto LABEL_31;
    }
  }

  v314 = v148;
  v331 = 0;
  sub_1C440BAA8(v153, 0, 1, v154);
  sub_1C4402C08(v338);
  v157(v317, v153, v154);
  v158 = *v312;
  v159 = sub_1C4404A98();
  v311 = v160;
  (v160)(v159);
  v161 = sub_1C4EF95E8();
  if (v162)
  {
    v163 = -1;
  }

  else
  {
    v163 = v161;
  }

  v316 = v163;
  v164 = sub_1C4EF95A8();
  if (v165)
  {
    v166 = -1;
  }

  else
  {
    v166 = v164;
  }

  v315 = v166;
  v167 = v323;
  swift_isUniquelyReferenced_nonNull_native();
  v337 = v167;
  sub_1C44E3664();
  if (!__OFADD__(*(v167 + 16), (v169 & 1) == 0))
  {
    v170 = v168;
    v140 = v169;
    sub_1C456902C(&qword_1EC0BAA20, &qword_1C4F16918);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      v173 = v332;
      if ((v140 & 1) != (v172 & 1))
      {
        goto LABEL_101;
      }

      v170 = v171;
      v49 = v144;
      v167 = v322;
    }

    else
    {
      v173 = v332;
      v167 = v322;
      v49 = v144;
    }

    v174 = v337;
    v323 = v337;
    if (v140)
    {
      v175 = (*(v337 + 56) + 16 * v170);
      v176 = v315;
      *v175 = v316;
      v175[1] = v176;
    }

    else
    {
      *(v337 + 8 * (v170 >> 6) + 64) |= 1 << v170;
      v311(*(v174 + 48) + *(v330 + 72) * v170, v321, v173);
      v177 = v323;
      v178 = (*(v323 + 56) + 16 * v170);
      v179 = v315;
      *v178 = v316;
      v178[1] = v179;
      v180 = *(v177 + 16);
      v181 = __OFADD__(v180, 1);
      v182 = v180 + 1;
      if (v181)
      {
        goto LABEL_97;
      }

      *(v177 + 16) = v182;
    }

    sub_1C441DFEC(v314, v150);
    sub_1C4402C08(&v337);
    v183(v321, v173);
    sub_1C4402C08(v336);
    v184(v317, v167);
    v140 = v319[0];
    goto LABEL_29;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_32:
  v188 = xmmword_1EDDFEC78;
  sub_1C449F128();
  if (v188 & ~v139 | *(&v188 + 1) & ~v167)
  {
    v189 = 2000;
  }

  else
  {
    v189 = 200;
  }

  v190 = [objc_opt_self() interactionHistoryEnumeratorWithBatchSize_];
  v342 = MEMORY[0x1E69E7CC8];
  v324 = v190;
  sub_1C4EF97F8();
  v325 = 0;
  v191 = (v293 + 8);
  v327 = v150 + 32;
  v326 = (v150 + 16);
  v322 = v150 + 8;
  v333 = MEMORY[0x1E69E7CC0];
  v192 = v294;
  while (1)
  {
    v167 = v140;
    sub_1C4EF97D8();
    if (!v339)
    {
      sub_1C4432088();

      sub_1C4420C3C(&v337, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      goto LABEL_68;
    }

    sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v193 = v341;
    if ([v341 mechanism] == 16)
    {
      v194 = [v193 endDate];
      v195 = v318;
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v197 = v196;
      v198 = *v191;
      (*v191)(v195, v142);
      v199 = [v193 startDate];
      sub_1C4EF9C78();

      sub_1C4EF9AD8();
      v201 = v200;
      v198(v144, v142);
      sub_1C43FFF1C();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v202 = v333;
      }

      else
      {
        v240 = *(v333 + 2);
        sub_1C458A6E0();
        v202 = v241;
      }

      v204 = *(v202 + 2);
      v203 = *(v202 + 3);
      if (v204 >= v203 >> 1)
      {
        sub_1C43FCFE8(v203);
        sub_1C458A6E0();
        v202 = v242;
      }

      *(v202 + 2) = v204 + 1;
      v333 = v202;
      *&v202[8 * v204 + 32] = v197 - v201;
    }

    if (qword_1EC0B68C8 != -1)
    {
      sub_1C4412E50();
      swift_once();
    }

    v205 = qword_1EC151B50;
    v206 = [v193 mechanism];
    if (*(v205 + 16))
    {
      v207 = v206;
      v208 = *(v205 + 40);
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v207);
      v209 = sub_1C4F02B68();
      v210 = v205 + 56;
      v211 = ~(-1 << *(v205 + 32));
      do
      {
        sub_1C44259C4(v209, v210);
        if ((v213 & 1) == 0)
        {
          goto LABEL_54;
        }

        v209 = v212 + 1;
      }

      while (*(*(v205 + 48) + 8 * v212) != v207);
      v214 = [v193 sender];
      if (!v214)
      {
        goto LABEL_64;
      }

      v207 = v214;
      v215 = [v214 handle];
      sub_1C4F01138();

      v216 = String.normalizedContactHandle()();

      if (!v216.value._object)
      {

        goto LABEL_63;
      }

      sub_1C465C294(v216.value._countAndFlagsBits, v216.value._object, v328);

      if (sub_1C44157D4(v192, 1, v332) == 1)
      {

        sub_1C4420C3C(v192, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_63;
      }

      sub_1C4402C08(&v345);
      v217 = sub_1C4404B44();
      v218(v217);
      v219 = sub_1C4418370();
      sub_1C44239FC(v219);
      v220 = v342;
      swift_isUniquelyReferenced_nonNull_native();
      v337 = v220;
      sub_1C44E3664();
      if (!__OFADD__(*(v220 + 16), (v222 & 1) == 0))
      {
        v223 = v221;
        v224 = v222;
        sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
        v225 = sub_1C4F02458();
        v226 = v337;
        if (v225)
        {
          sub_1C44E3664();
          if ((v224 & 1) != (v228 & 1))
          {
            goto LABEL_101;
          }

          v223 = v227;
        }

        v342 = v226;
        if ((v224 & 1) == 0)
        {
          sub_1C4402C08(&v344);
          v229(v286, v304, v332);
          sub_1C457EB2C(v223);
        }

        v230 = (*(v226 + 56) + 8 * v223);
        v231 = v193;
        MEMORY[0x1C6940330]();
        sub_1C4427EF0(*((*v230 & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1C4F01748();

        sub_1C4402C08(&v342);
        v232(v304, v332);
        v325 = sub_1C455B584;
        v142 = v303;
        v144 = v302;
LABEL_63:
        v140 = v319[0];
LABEL_64:
        v233 = [v193 recipients];
        v234 = sub_1C4403FC0();
        sub_1C4461BB8(v234, &qword_1EDDF0360, off_1E81EC590);
        v235 = sub_1C4F01678();

        v236 = v193;
        v237 = v328;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v238 = v237;
        v239 = v331;
        sub_1C466F484(v235, v238, &v342, v236);
        v331 = v239;

        continue;
      }

      __break(1u);
LABEL_101:
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

LABEL_54:
  }

  sub_1C4432088();

LABEL_68:
  v243 = *(v333 + 2);
  if (v243)
  {
    v244 = (v333 + 32);
    v245 = 0.0;
    v246 = *(v333 + 2);
    do
    {
      v247 = *v244++;
      v245 = v245 + v247;
      --v246;
    }

    while (v246);
  }

  else
  {
    v245 = 0.0;
  }

  v248 = v245 / v243;
  v140 = v342;
  v249 = v342 + 64;
  v250 = 1 << *(v342 + 32);
  v251 = -1;
  if (v250 < 64)
  {
    v251 = ~(-1 << v250);
  }

  v150 = v251 & *(v342 + 64);
  v252 = (v250 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v139 = 0;
  v328 = MEMORY[0x1E69E7CC0];
  v327 = v140;
  do
  {
    while (2)
    {
      if (v150)
      {
        goto LABEL_81;
      }

      do
      {
        v253 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v253 >= v252)
        {
          goto LABEL_92;
        }

        v150 = *(v249 + 8 * v253);
        ++v139;
      }

      while (!v150);
      v139 = v253;
LABEL_81:
      v254 = __clz(__rbit64(v150)) | (v139 << 6);
      v255 = v309;
      (*(v330 + 16))(v309, *(v140 + 48) + *(v330 + 72) * v254, v332);
      v256 = *(*(v140 + 56) + 8 * v254);
      *(v255 + *(v310 + 48)) = v256;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v257 = sub_1C4EFF048();
      v259 = v258;
      v260 = sub_1C465C650(v255, v323);
      v144 = sub_1C46712D0(v257, v259, v248, v256, v260, v261);

      sub_1C4420C3C(v255, &qword_1EC0BA9F8, &unk_1C4F168D0);
      v167 = *(v144 + 16);
      v140 = *(v328 + 16);
      v142 = v140 + v167;
      if (__OFADD__(v140, v167))
      {
        goto LABEL_94;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v263 = v328;
      if (!isUniquelyReferenced_nonNull_native || v142 > *(v328 + 24) >> 1)
      {
        sub_1C458B740();
        v263 = v264;
      }

      v150 &= v150 - 1;
      v265 = *(v144 + 16);
      v328 = v263;
      if (v265)
      {
        v266 = *(v263 + 16);
        if ((*(v263 + 24) >> 1) - v266 < v167)
        {
          goto LABEL_96;
        }

        v140 = v263 + 16 * v266;
        sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
        swift_arrayInitWithCopy();

        sub_1C441E288();
        if (v167)
        {
          v267 = *(v328 + 16);
          v181 = __OFADD__(v267, v167);
          v268 = v267 + v167;
          if (v181)
          {
            goto LABEL_98;
          }

          *(v328 + 16) = v268;
        }

        continue;
      }

      break;
    }

    sub_1C441E288();
  }

  while (!v167);
  __break(1u);
LABEL_92:

  v269 = v313[2];
  v270 = v313[3];
  v272 = v313[4];
  v271 = v313[5];
  v273 = v313[6];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = v298;
  *(inited + 32) = v269;
  *(inited + 40) = v270;
  v275 = *(v273 + 16);
  *(&v286 - 6) = MEMORY[0x1EEE9AC00](inited);
  *(&v286 - 5) = v272;
  *(&v286 - 4) = v271;
  *(&v286 - 3) = v273;
  v284 = v328;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4418704(sub_1C4673BE8, (&v286 - 8), v276, v277, v278, v279, v280, v281, v286, v287);

  swift_setDeallocating();
  sub_1C44DEE40();

  v282 = sub_1C4418370();
  return sub_1C44239FC(v282);
}

uint64_t sub_1C4673290(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFEEF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 20);
  sub_1C4EFEA18();
  LOBYTE(v13) = sub_1C44DBB50(a1 + v13, v12);
  v14 = *(v9 + 8);
  v14(v12, v8);
  if (v13)
  {
    v15 = *(v4 + 28);
    sub_1C4EFE518();
    v16 = sub_1C44DBB50(a1 + v15, v12);
    v14(v12, v8);
    if ((v16 & 1) == 0)
    {
      sub_1C4EFE478();
      v17 = sub_1C44DBB50(a1 + v15, v12);
      v14(v12, v8);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_1C4589088();
  v18 = *(*a2 + 16);
  sub_1C4589C48();
  sub_1C449EDC8(a1, v7, type metadata accessor for GraphTriple);
  sub_1C4673C64(v18, v7, a2);
  return 1;
}

uint64_t sub_1C4673488(id *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v36 = a4;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_1C4EFF0C8();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = [*a1 handle];
  sub_1C4F01138();

  v19 = String.normalizedContactHandle()();

  if (!v19.value._object)
  {
    return result;
  }

  sub_1C465C294(v19.value._countAndFlagsBits, v19.value._object, a2);

  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    return sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  (*(v37 + 32))(v17, v10, v11);
  v21 = *a3;
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *a3;
  v22 = v38;
  *a3 = 0x8000000000000000;
  sub_1C44E3664();
  if (__OFADD__(*(v22 + 16), (v24 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v25 = v23;
  v26 = v24;
  sub_1C456902C(&qword_1EC0BAA10, &qword_1C4F16910);
  v27 = sub_1C4F02458();
  v28 = v38;
  if (v27)
  {
    sub_1C44E3664();
    if ((v26 & 1) == (v30 & 1))
    {
      v25 = v29;
      goto LABEL_8;
    }

LABEL_13:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_8:
  v31 = *a3;
  *a3 = v28;

  v32 = *a3;
  if ((v26 & 1) == 0)
  {
    (*(v37 + 16))(v15, v17, v11);
    sub_1C457EB2C(v25);
  }

  v33 = (*(v32 + 56) + 8 * v25);
  v34 = v36;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0(*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C4F01748();
  return (*(v37 + 8))(v17, v11);
}

void *sub_1C46737C0()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F128();
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_store);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView_handleView));
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25CallInteractionSignalView____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4673858()
{
  sub_1C46737C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallInteractionSignalView()
{
  result = qword_1EC0BA9E8;
  if (!qword_1EC0BA9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4673904()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C46739B8()
{
  sub_1C4671594();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4673A30()
{
  sub_1C466FEB0();
  v1 = *(v0 + 8);

  return v1();
}

id sub_1C4673B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1C4F01108();

  v9 = sub_1C4F01108();

  if (a6)
  {
    v10 = sub_1C4F01108();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithViewName:v8 featureName:v9 subidentifierName:v10];

  return v11;
}