uint64_t sub_1000779F4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1000876AC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1000830D0(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_100077ABC()
{
  v1 = *v0;
  v2 = qword_1000B3C40;
  swift_beginAccess();
  v8 = *(v0 + v2);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  sub_10008739C();

  swift_getWitnessTable();
  v3 = sub_10008722C();

  v8 = v3;

  sub_100081FBC(&v8);

  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800);
  v4 = sub_10008712C();

  return v4;
}

uint64_t sub_100077CC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10008614C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v17 - v9;
  sub_10008645C();
  sub_10008611C();
  (*(v3 + 8))(v6, v2);
  v11 = sub_10008639C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_10000649C(v10, &qword_1000AE638, &qword_10008A0D0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = sub_10008633C();
    v15 = v16;
    result = (*(v12 + 8))(v10, v11);
  }

  *a1 = v14;
  a1[1] = v15;
  return result;
}

uint64_t sub_100077EA8()
{
  v1 = *v0;
  v2 = qword_1000B3C40;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();

  v6 = sub_10008736C();

  return v6;
}

uint64_t sub_100077FCC()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_1000B3C40;
  swift_beginAccess();
  v10 = *(v1 + v3);
  v9 = *(v2 + 80);
  v8 = *(v2 + 88);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  sub_10008739C();
  sub_1000860EC();

  swift_getWitnessTable();
  v4 = sub_10008722C();

  v5 = *(v4 + 16);

  v6 = *(v1 + v3);

  sub_10008736C();

  return sub_100086AFC();
}

uint64_t sub_10007821C(uint64_t a1)
{
  v2 = sub_10008614C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10008646C();
}

uint64_t sub_100078344()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_10007840C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

void *sub_1000784CC()
{
  v0 = sub_10008630C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10008632C();
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  v7 = __chkstk_darwin(v5);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v56 = &v50 - v10;
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_10008642C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000649C(v16, &qword_1000AE3E0, &unk_100089E60);
    return _swiftEmptyArrayStorage;
  }

  v51 = v18;
  v52 = v17;
  (*(v18 + 32))(v21, v16, v17);
  v50 = v21;
  result = sub_10008641C();
  v23 = result;
  v24 = result[2];
  v65 = v5;
  v59 = v24;
  if (!v24)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_24:

    v37 = v57;
    v38 = v57[2];
    if (v38)
    {
      v67 = _swiftEmptyArrayStorage;
      sub_10006F608(0, v38, 0);
      v39 = v67;
      v66 = *(v62 + 16);
      v40 = v37 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
      v64 = *(v62 + 72);
      v41 = (v62 + 8);
      do
      {
        v42 = v61;
        v43 = v65;
        v66(v61, v40, v65);
        v44 = sub_1000862EC();
        v46 = v45;
        (*v41)(v42, v43);
        v67 = v39;
        v48 = v39[2];
        v47 = v39[3];
        if (v48 >= v47 >> 1)
        {
          sub_10006F608((v47 > 1), v48 + 1, 1);
          v39 = v67;
        }

        v39[2] = v48 + 1;
        v49 = &v39[2 * v48];
        v49[4] = v44;
        v49[5] = v46;
        v40 += v64;
        --v38;
      }

      while (v38);
      (*(v51 + 8))(v50, v52);

      return v39;
    }

    (*(v51 + 8))(v50, v52);
    return _swiftEmptyArrayStorage;
  }

  v25 = 0;
  v58 = v62 + 16;
  v66 = (v1 + 16);
  v26 = (v1 + 8);
  v55 = (v62 + 32);
  v53 = (v62 + 8);
  v57 = _swiftEmptyArrayStorage;
  v60 = v12;
  v54 = result;
  while (v25 < v23[2])
  {
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v63 = *(v62 + 72);
    (*(v62 + 16))(v12, v23 + v64 + v63 * v25, v5);
    result = sub_10008631C();
    if (result)
    {
      v27 = result;
      v28 = 0;
      v29 = result[2];
      while (1)
      {
        if (v29 == v28)
        {

          v12 = v60;
          v5 = v65;
          result = (*v53)(v60, v65);
          goto LABEL_22;
        }

        if (v28 >= v27[2])
        {
          break;
        }

        (*(v1 + 16))(v4, v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28, v0);
        if (sub_1000862FC() == 0x646F702D656D6F68 && v31 == 0xE800000000000000)
        {

          (*v26)(v4, v0);
LABEL_16:

          v32 = *v55;
          v5 = v65;
          (*v55)(v56, v60, v65);
          v33 = v57;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10006F810(0, v33[2] + 1, 1);
            v33 = v67;
          }

          v36 = v33[2];
          v35 = v33[3];
          if (v36 >= v35 >> 1)
          {
            sub_10006F810(v35 > 1, v36 + 1, 1);
            v33 = v67;
          }

          v33[2] = v36 + 1;
          v57 = v33;
          result = v32(v33 + v64 + v36 * v63, v56, v5);
          v12 = v60;
LABEL_22:
          v23 = v54;
          goto LABEL_6;
        }

        ++v28;
        v30 = sub_100087A1C();

        result = (*v26)(v4, v0);
        if (v30)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

    result = (*v53)(v12, v5);
LABEL_6:
    if (++v25 == v59)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100078BA4()
{
  v1 = v0;
  v48 = *v0;
  v2 = sub_10008632C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  v17 = sub_10008642C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_1000AE3E0;
    v23 = &unk_100089E60;
    return sub_10000649C(v16, v22, v23);
  }

  v45 = v17;
  v46 = v12;
  v44 = v18;
  (*(v18 + 32))(v21, v16, v17);
  v43 = v21;
  v24 = sub_10008641C();
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_8:

    v28 = 1;
    v16 = v46;
LABEL_10:
    (*(v3 + 56))(v16, v28, 1, v2);
    v29 = *(v48 + 80);
    v30 = *(v48 + 88);
    type metadata accessor for CarrySettingsDetailViewModel();
    swift_getWitnessTable();
    sub_10008676C();
    sub_10008679C();

    v31 = v47;
    sub_10000E4A4(v16, v47, &qword_1000AE5F8, &unk_10008A090);
    sub_1000793D8(v31);
    v32 = (*(v3 + 48))(v16, 1, v2);
    v34 = v44;
    v33 = v45;
    v35 = v43;
    if (v32 != 1)
    {
      v36 = (v1 + qword_1000B3C30);
      v37 = *(v1 + qword_1000B3C30 + 8);
      *v36 = 0;
      v36[1] = 0;

      sub_100079A10(v38);
      v39 = (v1 + qword_1000B3C38);
      v40 = *(v1 + qword_1000B3C38 + 8);
      *v39 = 0;
      v39[1] = 0;

      sub_10007AD7C();
    }

    (*(v34 + 8))(v35, v33);
    v22 = &qword_1000AE5F8;
    v23 = &unk_10008A090;
    return sub_10000649C(v16, v22, v23);
  }

  v26 = 0;
  v27 = (v3 + 8);
  while (v26 < *(v24 + 16))
  {
    (*(v3 + 16))(v6, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v26, v2);
    if (sub_10007906C())
    {

      v16 = v46;
      (*(v3 + 32))(v46, v6, v2);
      v28 = 0;
      goto LABEL_10;
    }

    ++v26;
    (*v27)(v6, v2);
    if (v25 == v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = (*v27)(v6, v2);
  __break(1u);
  return result;
}

uint64_t sub_10007906C()
{
  v0 = sub_1000862EC();
  v2 = v1;
  v3 = sub_10007912C();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      return 1;
    }

    else
    {
      v6 = sub_100087A1C();

      return v6 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10007912C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_1000791E0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867EC();
  return sub_100078BA4();
}

uint64_t sub_1000792B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_100001EEC(a4, a5);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  sub_10000E4A4(a1, &v16 - v13, a4, a5);
  sub_10000E4A4(v14, v12, a4, a5);
  sub_1000867AC();
  sub_10000649C(a1, a4, a5);
  return sub_10000649C(v14, a4, a5);
}

uint64_t sub_1000793FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v8 = *v6;
  v9 = sub_100001EEC(a2, a3);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v16 - v11;
  v17 = *(v8 + 80);
  v13 = v17;
  v14 = *(v8 + 88);
  v18 = v14;
  swift_getKeyPath();
  v16[0] = v13;
  v16[1] = v14;
  swift_getKeyPath();
  sub_10000E4A4(a1, v12, a2, a3);

  sub_1000867EC();
  return sub_10000649C(a1, a2, a3);
}

uint64_t sub_100079564()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_100079618()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

void *sub_1000796D0()
{
  v36 = sub_10008632C();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v36);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v29 - v6;
  v8 = sub_1000863FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B54C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000649C(v7, &qword_1000AE5E8, &qword_10008A080);
    return _swiftEmptyArrayStorage;
  }

  (*(v9 + 32))(v12, v7, v8);
  v13 = sub_1000863DC();
  v14 = *(v13 + 16);
  if (!v14)
  {

    (*(v9 + 8))(v12, v8);
    return _swiftEmptyArrayStorage;
  }

  v30 = v12;
  v31 = v9;
  v32 = v8;
  v37 = _swiftEmptyArrayStorage;
  sub_10006F608(0, v14, 0);
  v15 = v37;
  v17 = *(v0 + 16);
  v16 = v0 + 16;
  v18 = *(v16 + 64);
  v29[1] = v13;
  v19 = v13 + ((v18 + 32) & ~v18);
  v33 = *(v16 + 56);
  v34 = v17;
  v35 = v16;
  v20 = (v16 - 8);
  do
  {
    v21 = v36;
    v34(v3, v19, v36);
    v22 = sub_1000862EC();
    v24 = v23;
    (*v20)(v3, v21);
    v37 = v15;
    v26 = v15[2];
    v25 = v15[3];
    if (v26 >= v25 >> 1)
    {
      sub_10006F608((v25 > 1), v26 + 1, 1);
      v15 = v37;
    }

    v15[2] = v26 + 1;
    v27 = &v15[2 * v26];
    v27[4] = v22;
    v27[5] = v24;
    v19 += v33;
    --v14;
  }

  while (v14);
  (*(v31 + 8))(v30, v32);

  return v15;
}

uint64_t sub_100079A10()
{
  v46 = *v0;
  v1 = sub_10008632C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  v17 = sub_1000863FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B54C();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_1000AE5E8;
    v23 = &qword_10008A080;
    v24 = v16;
    return sub_10000649C(v24, v22, v23);
  }

  v44 = v10;
  v45 = v12;
  v25 = v0;
  v42 = v18;
  v43 = v17;
  (*(v18 + 32))(v21, v16, v17);
  v41 = v21;
  v26 = sub_1000863DC();
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_8:

    v30 = 1;
    v31 = v45;
LABEL_10:
    (*(v2 + 56))(v31, v30, 1, v1);
    v32 = *(v46 + 80);
    v33 = *(v46 + 88);
    type metadata accessor for CarrySettingsDetailViewModel();
    swift_getWitnessTable();
    sub_10008676C();
    sub_10008679C();

    v34 = v44;
    sub_10000E4A4(v31, v44, &qword_1000AE5F8, &unk_10008A090);
    sub_100079EFC(v34);
    v35 = (*(v2 + 48))(v31, 1, v1);
    v37 = v42;
    v36 = v43;
    v38 = v41;
    if (v35 != 1)
    {
      sub_1000791E0();
    }

    (*(v37 + 8))(v38, v36);
    v22 = &qword_1000AE5F8;
    v23 = &unk_10008A090;
    v24 = v31;
    return sub_10000649C(v24, v22, v23);
  }

  v28 = 0;
  v29 = (v2 + 8);
  while (v28 < *(v26 + 16))
  {
    (*(v2 + 16))(v5, v26 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v28, v1);
    if (sub_10007B438(v5, v25, &CarrySettings.LivabilityAudience.purposeName.getter, &qword_1000B3C30))
    {

      v31 = v45;
      (*(v2 + 32))(v45, v5, v1);
      v30 = 0;
      goto LABEL_10;
    }

    ++v28;
    (*v29)(v5, v1);
    if (v27 == v28)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = (*v29)(v5, v1);
  __break(1u);
  return result;
}

uint64_t sub_100079F70()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v4;
}

uint64_t sub_10007A024()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_10007A0DC()
{
  v1 = *v0;
  v2 = qword_1000B3C40;
  swift_beginAccess();
  v12 = *(v0 + v2);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  sub_10008739C();

  swift_getWitnessTable();
  v3 = sub_10008722C();

  v4 = sub_100082D20(v3);

  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_10006F258(*(v4 + 16), 0);
  v7 = sub_100037174(&v12, v6 + 4, v5, v4);
  sub_100023AA8();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = _swiftEmptyArrayStorage;
  }

  v12 = v6;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800);
  v8 = sub_10008712C();

  return v8;
}

uint64_t sub_10007A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100001EEC(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_10000E4A4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

unint64_t sub_10007A438()
{
  v1 = *v0;
  v2 = qword_1000B3C40;
  swift_beginAccess();
  v31 = *(v0 + v2);
  v30 = *(v1 + 80);
  v29 = *(v1 + 88);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  sub_10008739C();

  swift_getWitnessTable();
  v3 = sub_10008722C();

  v5 = 0;
  v25 = v3 + 40;
  v27 = -*(v3 + 16);
  v28 = v3;
  v26 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = v5 + 1;
  v7 = (v25 + 16 * v5);
  while (v27 + v6 != 1)
  {
    v5 = v6;
    if ((v6 - 1) >= *(v28 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    if (v8 == 0xD000000000000011 && 0x800000010008FC70 == v9)
    {
      v16 = 1;
      goto LABEL_31;
    }

    v11 = *(v7 - 1);
    v12 = *v7;
    v13 = sub_100087A1C();
    v15 = v8 == 0xD000000000000011 && 0x800000010008FC90 == v9;
    v16 = 1;
    if ((v13 & 1) != 0 || v15)
    {
      goto LABEL_31;
    }

    v17 = sub_100087A1C();
    v18 = v8 == 0xD000000000000011 && 0x800000010008FCB0 == v9;
    v19 = v18;
    if (v17 & 1) != 0 || v19 || (sub_100087A1C())
    {
      goto LABEL_31;
    }

    if (v8 != 0xD000000000000011 || 0x800000010008FCD0 != v9)
    {
      v6 = v5 + 1;
      v7 += 2;
      result = sub_100087A1C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v16 = 0;
LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10006F00C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v21 = *(v26 + 2);
    v20 = *(v26 + 3);
    if (v21 >= v20 >> 1)
    {
      result = sub_10006F00C((v20 > 1), v21 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v21 + 1;
    v26[v21 + 32] = v16;
    goto LABEL_2;
  }

  v22 = sub_100028994(v26);
  v24 = v23;

  if (v24)
  {
    return v22;
  }

  else
  {
    return 0xD000000000000010;
  }
}

char *sub_10007A7F8()
{
  v0 = sub_1000863FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v50 - v6;
  __chkstk_darwin(v5);
  v59 = &v50 - v8;
  v9 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v50 - v11;
  v13 = sub_10008642C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000649C(v12, &qword_1000AE3E0, &unk_100089E60);
    return _swiftEmptyArrayStorage;
  }

  v51 = v14;
  v52 = v13;
  (*(v14 + 32))(v17, v12, v13);
  v50 = v17;
  v19 = sub_10008640C();
  v20 = _swiftEmptyArrayStorage;
  v56 = *(v19 + 16);
  if (v56)
  {
    v21 = 0;
    v22 = v1;
    v54 = v7;
    v55 = (v1 + 16);
    v53 = (v1 + 8);
    v58 = (v1 + 32);
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = v19;
      v25 = *(v22 + 72);
      (*(v22 + 16))(v59, v19 + v23 + v25 * v21, v0);
      if (sub_1000863CC() == 1397716596 && v26 == 0xE400000000000000)
      {
        break;
      }

      v27 = sub_100087A1C();

      if (v27)
      {
        goto LABEL_12;
      }

      (*v53)(v59, v0);
LABEL_6:
      ++v21;
      v19 = v24;
      if (v56 == v21)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v28 = *v58;
    (*v58)(v7, v59, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006F7CC(0, *(v20 + 2) + 1, 1);
      v20 = v60;
    }

    v31 = *(v20 + 2);
    v30 = *(v20 + 3);
    if (v31 >= v30 >> 1)
    {
      sub_10006F7CC(v30 > 1, v31 + 1, 1);
      v20 = v60;
    }

    *(v20 + 2) = v31 + 1;
    v32 = &v20[v23 + v31 * v25];
    v7 = v54;
    v28(v32, v54, v0);
    goto LABEL_6;
  }

  v22 = v1;
LABEL_18:

  v33 = *(v20 + 2);
  if (v33)
  {
    v60 = _swiftEmptyArrayStorage;
    sub_10006F608(0, v33, 0);
    v34 = v60;
    v36 = *(v22 + 16);
    v35 = v22 + 16;
    v37 = &v20[(*(v35 + 64) + 32) & ~*(v35 + 64)];
    v58 = *(v35 + 56);
    v59 = v36;
    v55 = v20;
    v56 = (v35 - 8);
    do
    {
      v38 = v57;
      v39 = v35;
      (v59)(v57, v37, v0);
      v40 = sub_1000863EC();
      v42 = v41;
      v43 = v0;
      (*v56)(v38, v0);
      v60 = v34;
      v45 = *(v34 + 2);
      v44 = *(v34 + 3);
      if (v45 >= v44 >> 1)
      {
        sub_10006F608((v44 > 1), v45 + 1, 1);
        v34 = v60;
      }

      *(v34 + 2) = v45 + 1;
      v46 = &v34[16 * v45];
      *(v46 + 4) = v40;
      *(v46 + 5) = v42;
      v37 = v58 + v37;
      --v33;
      v0 = v43;
      v35 = v39;
    }

    while (v33);
  }

  else
  {

    v34 = _swiftEmptyArrayStorage;
  }

  v60 = v34;

  sub_100081FBC(&v60);
  v48 = v51;
  v47 = v52;
  v49 = v50;

  (*(v48 + 8))(v49, v47);
  return v60;
}

uint64_t sub_10007AD7C()
{
  v1 = *v0;
  v2 = sub_1000863FC();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v65 = &v53 - v8;
  __chkstk_darwin(v7);
  v68 = &v53 - v9;
  v10 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v53 - v15);
  v17 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v53 - v19;
  v21 = sub_10008642C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077A84();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v26 = &qword_1000AE3E0;
    v27 = &unk_100089E60;
    v28 = v20;
    return sub_10000649C(v28, v26, v27);
  }

  v58 = v1;
  v59 = v6;
  v56 = v21;
  v57 = v14;
  v60 = v16;
  v61 = v0;
  v55 = v22;
  (*(v22 + 32))(v25, v20, v21);
  v54 = v25;
  v29 = sub_10008640C();
  v30 = *(v29 + 16);
  v67 = v2;
  v64 = v30;
  if (v30)
  {
    v31 = 0;
    v62 = (v66 + 8);
    v63 = v66 + 16;
    v32 = (v66 + 32);
    v33 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v16 = ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v34 = *(v66 + 72);
      (*(v66 + 16))(v68, v16 + v29 + v34 * v31, v2);
      if (sub_1000863CC() == 1397716596 && v35 == 0xE400000000000000)
      {
        break;
      }

      v36 = sub_100087A1C();

      if (v36)
      {
        goto LABEL_12;
      }

      (*v62)(v68, v2);
LABEL_6:
      if (v64 == ++v31)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v37 = *v32;
    (*v32)(v65, v68, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006F7CC(0, v33[2] + 1, 1);
      v33 = v69;
    }

    v40 = v33[2];
    v39 = v33[3];
    if (v40 >= v39 >> 1)
    {
      sub_10006F7CC(v39 > 1, v40 + 1, 1);
      v33 = v69;
    }

    v33[2] = v40 + 1;
    v41 = v16 + v33 + v40 * v34;
    v2 = v67;
    v37(v41, v65, v67);
    goto LABEL_6;
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_18:

  v42 = v33[2];
  v44 = v60;
  v43 = v61;
  v31 = v59;
  if (!v42)
  {
LABEL_23:

    v46 = 1;
    v47 = v67;
LABEL_25:
    v48 = v66;
    (*(v66 + 56))(v44, v46, 1, v47);
    v49 = *(v58 + 80);
    v50 = *(v58 + 88);
    type metadata accessor for CarrySettingsDetailViewModel();
    swift_getWitnessTable();
    sub_10008676C();
    sub_10008679C();

    v51 = v57;
    sub_10000E4A4(v44, v57, &qword_1000AE5E8, &qword_10008A080);
    sub_10007B560(v51);
    if ((*(v48 + 48))(v44, 1, v47) != 1)
    {
      sub_1000791E0(0, 0);
    }

    (*(v55 + 8))(v54, v56);
    v26 = &qword_1000AE5E8;
    v27 = &qword_10008A080;
    v28 = v44;
    return sub_10000649C(v28, v26, v27);
  }

  v45 = 0;
  v16 = (v66 + 8);
  while (v45 < v33[2])
  {
    (*(v66 + 16))(v31, v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v45, v67);
    if (sub_10007B438(v31, v43, &CarrySettings.LivabilityTrainAudiences.trainName.getter, &qword_1000B3C38))
    {

      v47 = v67;
      (*(v66 + 32))(v44, v31, v67);
      v46 = 0;
      goto LABEL_25;
    }

    ++v45;
    (*v16)(v31, v67);
    if (v42 == v45)
    {
      goto LABEL_23;
    }
  }

LABEL_30:
  __break(1u);

  result = (*v16)(v31, v67);
  __break(1u);
  return result;
}

uint64_t sub_10007B438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = a3();
  v8 = (a2 + *a4);
  v9 = v8[1];
  if (v9)
  {
    if (v6 == *v8 && v9 == v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_100087A1C();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10007B4E8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = (v4 + *a3);
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  return a4();
}

uint64_t sub_10007B584()
{
  v1 = v0;
  v2 = *v0;
  v15 = 0xE000000000000000;
  sub_1000877DC(77);
  v16 = 0;
  v17 = 0xE000000000000000;
  v18._object = 0x80000001000903E0;
  v18._countAndFlagsBits = 0xD00000000000002DLL;
  sub_1000871BC(v18);
  v19._countAndFlagsBits = sub_100077ABC();
  sub_1000871BC(v19);

  v20._countAndFlagsBits = 0x20646C696843090ALL;
  v20._object = 0xEF203A746E756F43;
  sub_1000871BC(v20);
  v14 = sub_100077EA8();
  v21._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v21);

  v22._countAndFlagsBits = 0x656369766544090ALL;
  v22._object = 0xEB00000000203A73;
  sub_1000871BC(v22);
  v3 = qword_1000B3C40;
  swift_beginAccess();
  v13 = *(v1 + v3);
  v12[2] = *(v2 + 80);
  v12[3] = *(v2 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  v4 = sub_10008739C();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_100013210(sub_10008462C, v12, v4, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);

  v13 = v7;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100006454(qword_1000AE2B8, &qword_1000AE2B0, &qword_10008D800);
  v8 = sub_10008712C();
  v10 = v9;

  v23._countAndFlagsBits = v8;
  v23._object = v10;
  sub_1000871BC(v23);

  return v16;
}

uint64_t sub_10007B858@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  result = sub_100049490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10007B904()
{
  v1 = qword_1000B3C40;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10007B94C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a1;
  v3 = sub_10008614C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008645C();
  v8 = sub_10008613C();
  (*(v4 + 8))(v7, v3);
  v9 = sub_1000776A0(v8);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = _s11DeviceModelVMa_0();
  a2[3] = v10;
  a2[4] = &off_1000A8868;
  v11 = sub_10002396C(a2);
  (*(*(v10 - 8) + 16))(v11, v15, v10);
  a2[5] = v9;
  v12 = a2 + *(type metadata accessor for ProfileListViewModel() + 24);
  return sub_10008608C();
}

uint64_t sub_10007BB1C@<X0>(uint64_t *a1@<X8>)
{
  sub_10008619C();
  v1 = sub_10008618C();
  v3 = v2;
  sub_1000861BC();
  v4 = type metadata accessor for ProfileViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  v8 = (v7 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
  *v8 = v1;
  v8[1] = v3;
  swift_beginAccess();
  sub_1000867AC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000867AC();
  result = swift_endAccess();
  *a1 = v7;
  return result;
}

uint64_t sub_10007BD08()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = *(*(sub_100001EEC(&qword_1000AE5D8, &qword_10008A070) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = *(*(sub_100001EEC(&qword_1000B04D0, &qword_10008D7F0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v4 = sub_1000860EC();
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_1000873FC();
  v1[25] = sub_1000873EC();
  v8 = sub_1000873DC();
  v1[26] = v8;
  v1[27] = v7;

  return _swift_task_switch(sub_10007BE94, v8, v7);
}

uint64_t sub_10007BE94()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for CarrySettingsDetailViewModel();
  v0[28] = v5;
  sub_100059B74(0xD000000000000032, 0x8000000100090340, v5, &off_1000A9B40);
  v6 = [objc_opt_self() sharedInstance];
  v0[29] = v6;
  sub_100078330();
  v7 = sub_10008714C();

  sub_100077FA4();
  v8 = sub_10008714C();

  [v6 setAccountID:v7 password:v8 syncToKeychain:0];

  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_10007C074;
  v9 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000B04D8, &qword_10008D7F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10007C5F0;
  v0[13] = &unk_1000A9C60;
  v0[14] = v9;
  [v6 validateWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10007C074()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_10007C554;
  }

  else
  {
    v6 = sub_10007C1A4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10007C1A4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  sub_100059B74(0xD000000000000038, 0x80000001000903A0, v0[28], &off_1000A9B40);
  sub_100078330();
  sub_100077FA4();
  v7 = sub_10008604C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000860CC();
  (*(v2 + 16))(v5, v1, v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_10007C348;
  v9 = v0[20];
  v10 = v0[18];

  return sub_10007DD80(v9);
}

uint64_t sub_10007C348()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 160);
  v7 = *v0;

  sub_10000649C(v3, &qword_1000AE5D8, &qword_10008A070);
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return _swift_task_switch(sub_10007C49C, v5, v4);
}

uint64_t sub_10007C49C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);

  (*(v4 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10007C554()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[20];
  v5 = v0[21];

  swift_willThrow();

  v7 = v0[1];
  v8 = v0[30];

  return v7();
}

uint64_t sub_10007C5F0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100001FB4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10007C6BC()
{
  v1[10] = v0;
  v1[11] = *v0;
  v2 = sub_10008632C();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_10008623C();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = *(*(sub_100001EEC(&qword_1000AE5F8, &unk_10008A090) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_1000873FC();
  v1[23] = sub_1000873EC();
  v10 = sub_1000873DC();
  v1[24] = v10;
  v1[25] = v9;

  return _swift_task_switch(sub_10007C89C, v10, v9);
}

uint64_t sub_10007C89C()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  (*(v6 + 56))(v0[22], 1, 1, v5);
  v8 = *(v3 + 104);
  v8(v2, enum case for CarrySettings.ProfileVariant.unspecified(_:), v4);
  sub_100079EE8();
  v9 = *(v6 + 48);
  LODWORD(v7) = v9(v1, 1, v5);
  sub_10000649C(v1, &qword_1000AE5F8, &unk_10008A090);
  if (v7 == 1)
  {
    v10 = v0[19];
    v11 = v0[12];
    v12 = v0[10];
    sub_1000793C4();
    LODWORD(v12) = v9(v10, 1, v11);
    sub_10000649C(v10, &qword_1000AE5F8, &unk_10008A090);
    if (v12 == 1)
    {
      goto LABEL_6;
    }

    v13 = v0[20];
    v14 = v0[10];
    sub_1000793C4();
    v15 = &enum case for CarrySettings.ProfileVariant.colorAudience(_:);
  }

  else
  {
    v16 = v0[20];
    v17 = v0[10];
    sub_100079EE8();
    v15 = &enum case for CarrySettings.ProfileVariant.livabilityTrain(_:);
  }

  v18 = v0[22];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[15];
  (*(v0[16] + 8))(v20, v21);
  sub_10000649C(v18, &qword_1000AE5F8, &unk_10008A090);
  sub_1000845A4(v19, v18);
  v8(v20, *v15, v21);
LABEL_6:
  v22 = v0[18];
  v23 = v0[12];
  sub_10000E4A4(v0[22], v22, &qword_1000AE5F8, &unk_10008A090);
  v24 = v9(v22, 1, v23);
  v25 = v0[18];
  if (v24 == 1)
  {
    v27 = v0[22];
    v26 = v0[23];
    v29 = v0[16];
    v28 = v0[17];
    v30 = v0[15];

    (*(v29 + 8))(v28, v30);
    sub_10000649C(v27, &qword_1000AE5F8, &unk_10008A090);
    sub_10000649C(v25, &qword_1000AE5F8, &unk_10008A090);
    v32 = v0[21];
    v31 = v0[22];
    v34 = v0[19];
    v33 = v0[20];
    v36 = v0[17];
    v35 = v0[18];
    v37 = v0[14];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v40 = v0[11];
    v41 = v0[10];
    (*(v0[13] + 32))(v0[14], v0[18], v0[12]);
    sub_1000877DC(20);
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    v63._object = 0x8000000100090300;
    v63._countAndFlagsBits = 0xD000000000000012;
    sub_1000871BC(v63);
    sub_1000878DC();
    v42 = v0[5];
    v43 = v0[6];
    v44 = *(v40 + 80);
    v45 = *(v40 + 88);
    v46 = type metadata accessor for CarrySettingsDetailViewModel();
    v0[26] = v46;
    sub_100059B74(v42, v43, v46, &off_1000A9B40);

    v0[27] = *(v41 + qword_1000B3C48);
    v47 = qword_1000B3C40;
    swift_beginAccess();
    v0[9] = *(v41 + v47);
    v48 = swift_task_alloc();
    *v48 = v44;
    v48[1] = v45;
    KeyPath = swift_getKeyPath();

    v50 = swift_task_alloc();
    v50[2] = v44;
    v50[3] = v45;
    v50[4] = KeyPath;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    _s11DeviceModelVMa_0();
    v52 = sub_10008739C();
    swift_unknownObjectRetain();

    WitnessTable = swift_getWitnessTable();
    v55 = sub_100013210(sub_10008438C, v50, v52, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v54);
    v0[28] = v55;

    v56 = *(v45 + 88);
    v61 = (v56 + *v56);
    v57 = v56[1];
    v58 = swift_task_alloc();
    v0[29] = v58;
    *v58 = v0;
    v58[1] = sub_10007CEAC;
    v59 = v0[17];
    v60 = v0[14];

    return v61(v60, v59, v55, v44, v45);
  }
}

uint64_t sub_10007CEAC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  v6 = v2[27];

  swift_unknownObjectRelease();
  v7 = v2[25];
  v8 = v2[24];
  if (v0)
  {
    v9 = sub_10007D130;
  }

  else
  {
    v9 = sub_10007D01C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10007D01C()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_10000649C(v2, &qword_1000AE5F8, &unk_10008A090);
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10007D130()
{
  v1 = v0[30];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v13 = v0[15];
  v9 = v0[12];
  v8 = v0[13];

  sub_1000877DC(29);
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  v19._object = 0x8000000100090320;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000871BC(v19);
  sub_1000878DC();
  sub_100059AE8(90, v0[7], v0[8], v2, &off_1000A9B40);

  swift_willThrow();
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v13);
  sub_10000649C(v4, &qword_1000AE5F8, &unk_10008A090);

  v10 = v0[1];
  v11 = v0[30];

  return v10();
}

uint64_t sub_10007D2E8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_100001EEC(&qword_1000AE5D8, &qword_10008A070) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1000873FC();
  v1[5] = sub_1000873EC();
  v4 = sub_1000873DC();
  v1[6] = v4;
  v1[7] = v3;

  return _swift_task_switch(sub_10007D3E0, v4, v3);
}

uint64_t sub_10007D3E0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for CarrySettingsDetailViewModel();
  sub_100059B74(0xD000000000000021, 0x80000001000902D0, v5, &off_1000A9B40);
  v6 = sub_1000860EC();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10007D4F0;
  v8 = v0[4];
  v9 = v0[2];

  return sub_10007DD80(v8);
}

uint64_t sub_10007D4F0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_10000649C(v3, &qword_1000AE5D8, &qword_10008A070);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10007D644, v5, v4);
}

uint64_t sub_10007D644()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10007D6AC()
{
  v1[8] = v0;
  v1[9] = *v0;
  sub_1000873FC();
  v1[10] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[11] = v3;
  v1[12] = v2;

  return _swift_task_switch(sub_10007D76C, v3, v2);
}

uint64_t sub_10007D76C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = qword_1000B3C40;
  swift_beginAccess();
  v0[5] = *(v2 + v3);
  v4 = swift_task_alloc();
  v5 = *(v1 + 80);
  *v4 = v5;
  v6 = *(v1 + 88);
  v4[1] = v6;
  KeyPath = swift_getKeyPath();

  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  v10 = sub_10008739C();

  WitnessTable = swift_getWitnessTable();
  v13 = sub_100013210(sub_100084B54, v8, v10, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);
  v0[13] = v13;

  sub_1000877DC(17);
  v21._countAndFlagsBits = 0x20676E6964616F4CLL;
  v21._object = 0xEF206E6F204E5056;
  sub_1000871BC(v21);
  v0[6] = v13;
  v0[14] = sub_10008739C();
  v0[15] = swift_getWitnessTable();
  sub_1000879FC();
  v14 = type metadata accessor for CarrySettingsDetailViewModel();
  v0[16] = v14;
  sub_100059B74(0, 0xE000000000000000, v14, &off_1000A9B40);

  v0[17] = *(v2 + qword_1000B3C48);
  v15 = *(v6 + 56);
  swift_unknownObjectRetain();
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_10007DADC;

  return v19(v13, v5, v6);
}

uint64_t sub_10007DADC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_10007DC68;
  }

  else
  {
    v7 = v2[17];
    v8 = v2[13];

    swift_unknownObjectRelease();
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_10007DC04;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10007DC04()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007DC68()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[10];

  swift_unknownObjectRelease();
  sub_1000877DC(28);
  v12._object = 0x80000001000902B0;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v12);
  v0[7] = v6;
  sub_1000879FC();

  sub_100059AE8(90, 0, 0xE000000000000000, v2, &off_1000A9B40);

  swift_willThrow();
  v8 = v0[1];
  v9 = v0[19];

  return v8();
}

uint64_t sub_10007DD80(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  sub_1000873FC();
  v2[17] = sub_1000873EC();
  v4 = sub_1000873DC();
  v2[18] = v4;
  v2[19] = v3;

  return _swift_task_switch(sub_10007DE40, v4, v3);
}

uint64_t sub_10007DE40()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *(v0 + 160) = type metadata accessor for CarrySettingsDetailViewModel();
  swift_getWitnessTable();
  sub_10008676C();
  sub_10008679C();

  v6 = qword_1000B3C40;
  *(v0 + 168) = qword_1000B3C40;
  swift_beginAccess();
  *(v0 + 88) = *(v2 + v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  *(v0 + 176) = sub_10008739C();
  swift_getWitnessTable();
  sub_10008758C();
  *(v0 + 56) = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  sub_100001EEC(&qword_1000B04B8, &qword_10008D7E8);
  sub_1000844C4();
  sub_10008725C();

  *(v0 + 184) = *(v2 + qword_1000B3C48);
  v8 = *(v2 + v6);
  *(v0 + 192) = v8;
  v9 = *(v5 + 96);
  swift_unknownObjectRetain();

  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_10007E128;

  return v13(v8, v4, v5);
}

uint64_t sub_10007E128()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v10 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_10007E2AC;
  }

  else
  {
    v8 = v2[23];
    v7 = v2[24];

    swift_unknownObjectRelease();
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_10007E24C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10007E24C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007E2AC()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[15];

  swift_unknownObjectRelease();
  sub_1000877DC(42);
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  v12._object = 0x8000000100090250;
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000871BC(v12);
  v0[12] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v13._countAndFlagsBits = 0x736C65646F6D202CLL;
  v13._object = 0xEA0000000000203ALL;
  sub_1000871BC(v13);
  v0[13] = *(v8 + v5);
  swift_getWitnessTable();
  sub_1000879FC();
  sub_100059AE8(60, v0[9], v0[10], v6, &off_1000A9B40);

  v9 = v0[1];

  return v9();
}

void sub_10007E448(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v51 = a3;
  v57 = a1;
  v4 = *a2;
  v5 = sub_100001EEC(&qword_1000AE5D8, &qword_10008A070);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v52 = v47 - v7;
  v8 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v47 - v10;
  v12 = sub_10008614C();
  v55 = *(v12 - 1);
  v56 = v12;
  v13 = *(v55 + 64);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 88);
  v17 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  v47[2] = v16;
  v47[1] = v17;
  swift_getAssociatedConformanceWitness();
  v18 = _s11DeviceModelVMa_0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v47 - v21;
  v23 = sub_10008639C();
  v54 = *(v23 - 8);
  v24 = *(v54 + 64);
  __chkstk_darwin(v23);
  v53 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v57;
  v27 = qword_1000B3C40;
  swift_beginAccess();
  v57 = a2;
  v48 = v27;
  v28 = *(a2 + v27);

  v29 = v26;
  sub_1000873CC();

  sub_10008645C();
  v49 = v18;
  v50 = v19;
  (*(v19 + 8))(v22, v18);
  sub_10008611C();
  (*(v55 + 8))(v15, v56);
  v30 = v54;
  if ((*(v54 + 48))(v11, 1, v23) == 1)
  {
    sub_10000649C(v11, &qword_1000AE638, &qword_10008A0D0);
    return;
  }

  v31 = v53;
  (*(v30 + 32))(v53, v11, v23);
  v32 = objc_allocWithZone(NSUserDefaults);
  v33 = sub_10008714C();
  v34 = [v32 initWithSuiteName:v33];

  v35 = v31;
  if (v34)
  {
    v36 = v34;
    v37 = sub_10008714C();
    v38 = [v36 BOOLForKey:v37];

    if (v38)
    {
      v39 = type metadata accessor for CarrySettingsDetailViewModel();
      sub_100059B74(0xD000000000000037, 0x8000000100090270, v39, &off_1000A9B40);
      sub_10008638C();
LABEL_7:
      sub_10000E4A4(v51, v52, &qword_1000AE5D8, &qword_10008A070);
      v40 = v30;
      v41 = v57;
      v42 = v48;
      swift_beginAccess();
      v56 = v34;
      v43 = sub_10008739C();
      sub_10008731C();
      v44 = *(v41 + v42);
      sub_100082A94(v29, v44);
      v45 = v44 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v29;
      v46 = sub_10008644C();
      sub_10008610C();
      v46(v58, 0);
      nullsub_1(v43);
      swift_endAccess();

      (*(v40 + 8))(v53, v23);
      return;
    }
  }

  if (sub_10008638C())
  {
    goto LABEL_7;
  }

  (*(v30 + 8))(v35, v23);
}

uint64_t sub_10007EA34()
{
  v1 = qword_1000B03C0;
  v2 = sub_100001EEC(&qword_1000AE608, &unk_10008A0A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1000B03C8;
  v4 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + qword_1000B03D0, v4);
  v6 = qword_1000B03D8;
  v7 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1000B03E0;
  v9 = sub_100001EEC(&qword_1000AE5F0, &qword_10008A088);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = qword_1000B03E8;
  v12 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + qword_1000B3C30 + 8);

  v10(v0 + qword_1000B03F0, v9);
  v14 = qword_1000B03F8;
  v15 = sub_100001EEC(&qword_1000B04E0, &unk_10008DD10);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = *(v0 + qword_1000B3C38 + 8);

  v17 = qword_1000B0400;
  v18 = sub_100001EEC(&qword_1000AE5E0, &qword_10008A078);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + qword_1000B3C40);

  v20 = *(v0 + qword_1000B3C48);
  swift_unknownObjectRelease();
  v21 = *(v0 + qword_1000B3C50);

  return v0;
}

uint64_t sub_10007ED10()
{
  sub_10007EA34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int sub_10007ED80()
{
  sub_100087ADC();
  sub_100087AEC(v0);
  return sub_100087AFC();
}

uint64_t sub_10007EE14()
{
  v0 = sub_100084494();

  return v0;
}

uint64_t sub_10007EE5C()
{
  v0 = sub_100084480();

  return v0;
}

uint64_t sub_10007EE98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_10007BD08();
}

uint64_t sub_10007EF24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10007C6BC();
}

uint64_t sub_10007EFB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10007D2E8();
}

uint64_t sub_10007F03C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_10007D6AC();
}

uint64_t sub_10007F0C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  result = sub_10008676C();
  *a2 = result;
  return result;
}

Swift::Int sub_10007F1F0()
{
  sub_100087ADC();
  v1 = *v0;
  sub_10007F1C4();
  return sub_100087AFC();
}

uint64_t sub_10007F230@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  type metadata accessor for CarrySettingsDetailViewModel();
  result = sub_1000877FC();
  *a2 = result;
  return result;
}

uint64_t sub_10007F284(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[4] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[5] = result;
  return result;
}

uint64_t sub_10007F320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + qword_1000B3C50);
  v4 = *(a2 + qword_1000B3C50);
  v7 = v2 + 80;
  v5 = *(v2 + 80);
  v6 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return static Array<A>.== infix(_:_:)(v3, v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_10007F3C4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_100002238();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_10008781C();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_10008781C();
LABEL_26:
        v17 = v16;
        v18 = sub_10008764C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_10008764C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_10008793C();
  }

  result = sub_10008793C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10007F604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100078330();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10007F630(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000783F8();
}

uint64_t sub_10007F6BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100079564();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10007F6EC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100079618();
}

uint64_t sub_10007F714(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = sub_100001EEC(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v18 - v14;
  sub_10000E4A4(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_10007F7C0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100087ADC();
  sub_1000871AC();
  v9 = sub_100087AFC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100087A1C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100080C7C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10007F910(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_100087ACC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100080DFC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10007F9F0(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_10008773C();

    if (v8)
    {

      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_10008772C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v21 = sub_10007FE6C(v7, result + 1);
        v22 = *(v21 + 16);
        if (*(v21 + 24) <= v22)
        {
          sub_1000806DC(v22 + 1);
        }

        sub_100080B54(v23, v21);

        *v3 = v21;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_100087ADC();
    sub_100087AEC(a2);
    v11 = sub_100087AFC();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      v15 = qword_1000B3C50;
      while (1)
      {
        v16 = *(*(*(v6 + 48) + 8 * v13) + qword_1000B3C50);
        v17 = *(a2 + v15);

        LOBYTE(v16) = sub_10007F3C4(v16, v17);

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v18 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v2;

      sub_100080F1C(v20, v13, isUniquelyReferenced_nonNull_native);
      *v2 = v26;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10007FC54(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10008773C();

    if (v9)
    {

      sub_100002238();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10008772C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100080078(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10008092C(v21 + 1);
    }

    v19 = v8;
    sub_100080BF8(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100002238();
  v11 = sub_10008763C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000810BC(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10008764C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10007FE6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
    v2 = sub_1000877BC();
    v16 = v2;
    sub_1000876EC();
    for (; sub_10008775C(); ++*(v2 + 16))
    {
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_1000806DC(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      sub_100087ADC();
      sub_100087AEC(v15);
      result = sub_100087AFC();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100080078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
    v2 = sub_1000877BC();
    v15 = v2;
    sub_1000876EC();
    if (sub_10008775C())
    {
      sub_100002238();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10008092C(v9 + 1);
        }

        v2 = v15;
        result = sub_10008763C(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10008775C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100080258(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000B04A8, &unk_10008D7D0);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100087ADC();
      sub_1000871AC();
      result = sub_100087AFC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000804B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_100087ACC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000806DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_100087ADC();
      sub_100087AEC(v18);
      result = sub_100087AFC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10008092C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_10008763C(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100080B54(Swift::UInt a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_100087ADC();
  sub_100087AEC(a1);
  sub_100087AFC();
  v5 = -1 << *(a2 + 32);
  result = sub_1000876CC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100080BF8(uint64_t a1, uint64_t a2)
{
  sub_10008763C(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_1000876CC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100080C7C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100080258(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10008121C();
      goto LABEL_16;
    }

    sub_100081758(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100087ADC();
  sub_1000871AC();
  result = sub_100087AFC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100087A1C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100087A4C();
  __break(1u);
  return result;
}

uint64_t sub_100080DFC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000804B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100081378();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100081990(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_100087ACC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100087A4C();
  __break(1u);
  return result;
}

Swift::Int sub_100080F1C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000806DC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000814B8();
      goto LABEL_12;
    }

    sub_100081B80(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_100087ADC();
  sub_100087AEC(v5);
  result = sub_100087AFC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = qword_1000B3C50;
    do
    {
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      v13 = *(*(*(v8 + 48) + 8 * a2) + qword_1000B3C50);
      v14 = *(v5 + v12);

      LOBYTE(v13) = sub_10007F3C4(v13, v14);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100087A4C();
  __break(1u);
  return result;
}

void sub_1000810BC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008092C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100081608();
      goto LABEL_12;
    }

    sub_100081DA8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10008763C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100002238();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10008764C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100087A4C();
  __break(1u);
}

void *sub_10008121C()
{
  v1 = v0;
  sub_100001EEC(&qword_1000B04A8, &unk_10008D7D0);
  v2 = *v0;
  v3 = sub_10008779C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100081378()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  v2 = *v0;
  v3 = sub_10008779C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000814B8()
{
  v1 = v0;
  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  v2 = *v0;
  v3 = sub_10008779C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100081608()
{
  v1 = v0;
  sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
  v2 = *v0;
  v3 = sub_10008779C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100081758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000B04A8, &unk_10008D7D0);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100087ADC();

      sub_1000871AC();
      result = sub_100087AFC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100081990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_100087ACC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_100081B80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_100087ADC();
      sub_100087AEC(v17);
      result = sub_100087AFC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100081DA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001EEC(&qword_1000B04B0, &qword_10008D7E0);
  result = sub_1000877AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_10008763C(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_100081FBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100082AE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100082028(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100082028(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000879BC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_10008733C();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000821F0(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100082120(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100082120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_100087A1C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000821F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100082A80(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000827CC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_100087A1C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_100087A1C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10006ED18(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10006ED18((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000827CC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100082A80(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000829F4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_100087A1C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000827CC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_100087A1C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_100087A1C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000829F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100082A80(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100082A94(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100082AFC(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10008774C();
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_dynamicCast();
      return v14;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = sub_10008770C();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_10008771C();
    sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
    swift_dynamicCast();
    v6 = *(a4 + 40);
    sub_100087ADC();
    sub_100087AEC(v14);
    v7 = sub_100087AFC();
    v8 = -1 << *(a4 + 32);
    v5 = v7 & ~v8;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v9 = ~v8;
      v10 = qword_1000B3C50;
      do
      {
        v11 = *(*(*(a4 + 48) + 8 * v5) + qword_1000B3C50);
        v12 = *(v14 + v10);

        LOBYTE(v11) = sub_10007F3C4(v11, v12);

        if (v11)
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v9;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v13 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_100082D20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000874DC();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10007F7C0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100082DB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000874DC();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10007F910(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100082E2C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    sub_10008793C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
  sub_100006454(&qword_1000AE5C0, &qword_1000AE5B8, &unk_10008DD20);
  result = sub_1000874DC();
  v11 = result;
  if (!v2)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v8 = sub_10008781C();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_15:
          __break(1u);
          return v11;
        }
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_15;
        }
      }

      sub_10007F9F0(&v10, v8);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }
  }

  v6 = result;
  v5 = sub_10008793C();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100082FA0(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100002238();
    sub_100084428();
    result = sub_1000874DC();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10008781C();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10007FC54(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_10008793C();
  }

  v6 = result;
  v5 = sub_10008793C();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000830D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

char *sub_100083124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  WitnessTable = a2;
  v115 = a1;
  v102 = *v2;
  v4 = sub_100001EEC(&qword_1000AE5E0, &qword_10008A078);
  v113 = *(v4 - 8);
  v114 = v4;
  v5 = *(v113 + 64);
  __chkstk_darwin(v4);
  v116 = v100 - v6;
  v7 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v106 = v100 - v9;
  v110 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  v109 = *(v110 - 8);
  v10 = *(v109 + 64);
  __chkstk_darwin(v110);
  v105 = v100 - v11;
  v12 = sub_100001EEC(&qword_1000AE5F0, &qword_10008A088);
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v104 = v100 - v14;
  v15 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v100 - v17;
  v19 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v108 = *(v19 - 8);
  v20 = *(v108 + 64);
  __chkstk_darwin(v19);
  v22 = v100 - v21;
  v23 = sub_100001EEC(&qword_1000AE608, &unk_10008A0A0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v100 - v26;
  v28 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = v100 - v30;
  v32 = qword_1000B03C0;
  v33 = sub_10008642C();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v103 = *(v102 + 80);
  v102 = *(v102 + 88);
  sub_1000792B4(v31, v34, v35, &qword_1000AE3E0, &unk_100089E60);
  v100[9] = v24;
  v36 = *(v24 + 32);
  v100[5] = v32;
  v100[10] = v23;
  v36(&v3[v32], v27, v23);
  v37 = qword_1000B03D8;
  v123 = 0;
  v124 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  v38 = v3;
  v39 = *(v108 + 32);
  v100[8] = v37;
  v100[11] = v19;
  v39(&v3[v37], v22, v19);
  v40 = qword_1000B03E0;
  v41 = sub_10008632C();
  v101 = *(*(v41 - 8) + 56);
  v42 = v18;
  (v101)(v18, 1, 1, v41);
  v43 = v104;
  sub_1000792B4(v42, v44, v45, &qword_1000AE5F8, &unk_10008A090);
  v46 = *(v111 + 32);
  v100[7] = v40;
  v47 = v112;
  v46(&v3[v40], v43, v112);
  v48 = qword_1000B03E8;
  LOBYTE(v123) = 1;
  v49 = v105;
  sub_1000867AC();
  v50 = *(v109 + 32);
  v100[6] = v48;
  v50(&v38[v48], v49, v110);
  v51 = &v38[qword_1000B3C30];
  *v51 = 0;
  *(v51 + 1) = 0;
  v100[4] = v51;
  v52 = qword_1000B03F0;
  (v101)(v42, 1, 1, v41);
  sub_1000792B4(v42, v53, v54, &qword_1000AE5F8, &unk_10008A090);
  v105 = v52;
  v55 = v47;
  v56 = v102;
  v46(&v38[v52], v43, v55);
  v57 = v103;
  v58 = &v38[qword_1000B3C38];
  *v58 = 0;
  *(v58 + 1) = 0;
  v101 = v58;
  v59 = qword_1000B0400;
  v60 = sub_1000863FC();
  v61 = v106;
  (*(*(v60 - 8) + 56))(v106, 1, 1, v60);
  v62 = v116;
  sub_1000792B4(v61, v63, v64, &qword_1000AE5E8, &qword_10008A080);
  v65 = *(v113 + 32);
  v106 = v59;
  v65(&v38[v59], v62, v114);
  v100[3] = qword_1000B3C40;
  v66 = v115;
  *&v38[qword_1000B3C40] = v115;
  v104 = qword_1000B3C48;
  v116 = v38;
  *&v38[qword_1000B3C48] = WitnessTable;
  v123 = v66;
  v121 = v57;
  v122 = v56;
  KeyPath = swift_getKeyPath();
  v118 = v57;
  v119 = v56;
  v120 = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0();
  v69 = sub_10008739C();

  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  v71 = sub_100013210(sub_100084B54, v117, v69, AssociatedTypeWitness, &type metadata for Never, WitnessTable, &protocol witness table for Never, v70);

  v100[2] = qword_1000B3C50;
  *&v116[qword_1000B3C50] = v71;
  v123 = v66;
  __chkstk_darwin(v72);
  v100[-2] = v57;
  v100[-1] = v56;
  v73 = swift_getKeyPath();
  v74 = __chkstk_darwin(v73);
  v100[-4] = v57;
  v100[-3] = v56;
  v100[-2] = v74;
  swift_getWitnessTable();
  v75 = sub_10008722C();

  v76 = sub_100082D20(v75);

  if (*(v76 + 16) == 1)
  {
    v77 = sub_1000779F4(v76);
    v79 = v78;

    v80 = v115;
    if (v79)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v80 = v115;
  }

  v77 = 0;
  v79 = 0xE000000000000000;
LABEL_6:
  v81 = qword_1000B03D0;
  swift_beginAccess();
  v125 = v77;
  v126 = v79;
  v100[1] = v81;
  sub_1000867AC();
  v82 = swift_endAccess();
  v123 = v80;
  __chkstk_darwin(v82);
  v100[-2] = v57;
  v100[-1] = v56;
  v83 = swift_getKeyPath();
  v84 = __chkstk_darwin(v83);
  v86 = v85;
  v100[-4] = v85;
  v100[-3] = v56;
  v100[-2] = v84;
  v87 = sub_10008722C();

  v88 = sub_100082D20(v87);

  if (*(v88 + 16) != 1)
  {

    v92 = v86;
LABEL_10:

    v89 = 0;
    v91 = 0xE000000000000000;
    goto LABEL_11;
  }

  v89 = sub_1000779F4(v88);
  v91 = v90;

  v92 = v86;
  if (!v91)
  {
    goto LABEL_10;
  }

LABEL_11:
  v93 = v115;
  swift_beginAccess();
  v125 = v89;
  v126 = v91;
  sub_1000867AC();
  v94 = swift_endAccess();
  v123 = v93;
  __chkstk_darwin(v94);
  v100[-2] = v92;
  v100[-1] = v56;
  v95 = type metadata accessor for ProfileListViewModel();
  v97 = sub_100013210(sub_100084408, &v100[-4], v69, v95, &type metadata for Never, WitnessTable, &protocol witness table for Never, v96);

  v98 = v116;
  swift_beginAccess();
  v125 = v97;
  sub_100001EEC(&qword_1000AE618, &qword_10008A0B0);
  sub_1000867AC();
  swift_endAccess();
  return v98;
}

char *sub_10008428C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = type metadata accessor for CarrySettingsDetailViewModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_100083124(a1, a2);
}

__n128 sub_100084314(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100084354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000860DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000843D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000860BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100084408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10007B94C(a1, a2);
}

unint64_t sub_100084428()
{
  result = qword_1000AFAB0;
  if (!qword_1000AFAB0)
  {
    sub_100002238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAB0);
  }

  return result;
}

uint64_t sub_100084480()
{
  result = *(v0 + qword_1000B3C38);
  v2 = *(v0 + qword_1000B3C38 + 8);
  return result;
}

uint64_t sub_100084494()
{
  result = *(v0 + qword_1000B3C30);
  v2 = *(v0 + qword_1000B3C30 + 8);
  return result;
}

unint64_t sub_1000844C4()
{
  result = qword_1000B04C0;
  if (!qword_1000B04C0)
  {
    sub_100003200(&qword_1000B04B8, &qword_10008D7E8);
    sub_100084550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B04C0);
  }

  return result;
}

unint64_t sub_100084550()
{
  result = qword_1000B04C8;
  if (!qword_1000B04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B04C8);
  }

  return result;
}

uint64_t sub_1000845A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008462C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10007B858(a1);
}

uint64_t sub_1000846F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008634C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100084778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008616C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000847B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100079F70();
  *a2 = result;
  return result;
}

uint64_t sub_1000847DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10007A024();
}

uint64_t sub_100084880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100079564();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000848B0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100079618();
}

uint64_t sub_100084950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10007912C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10008497C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000791E0();
}

uint64_t sub_1000849C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100078330();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100084A30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100077FA4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100084A74(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_100084AC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100077CC4(a1);
}

uint64_t sub_100084BCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100084BE4(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

__n128 sub_100084C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100084C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v113 = sub_100001EEC(&qword_1000B04F8, &qword_10008DEC0);
  v3 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v114 = &v93 - v4;
  v108 = sub_100001EEC(&qword_1000B0500, &qword_10008DEC8);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v110 = (&v93 - v6);
  v112 = sub_100001EEC(&qword_1000B0508, &qword_10008DED0);
  v7 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v111 = &v93 - v8;
  v109 = sub_100001EEC(&qword_1000B0510, &unk_10008DED8);
  v9 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v11 = &v93 - v10;
  v12 = sub_100086BCC();
  v102 = *(v12 - 8);
  v13 = v102[8];
  __chkstk_darwin(v12);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001EEC(&qword_1000AEB98, &qword_10008AE40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v93 - v19;
  v21 = sub_100001EEC(&qword_1000B0518, &qword_10008DEE8);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v24 = __chkstk_darwin(v23);
  v28 = &v93 - v27;
  v29 = *a1;
  v30 = *(a1 + 8);
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = *(a1 + 32);
  if (*(a1 + 80))
  {
    if (*(a1 + 80) == 1)
    {
      v103 = *(a1 + 16);
      v104 = v29;
      v105 = v33;
      v106 = v31;
      v34 = *(a1 + 40);
      v35 = *(a1 + 48);
      v36 = *(a1 + 56);
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      v101 = v34;
      v102 = v38;
      v107 = v30;
      v99 = v37;
      v100 = v36;
      v98 = v35;
      sub_10001FAF0(a1, &v134);
      if (v30)
      {
        v39 = v105;
        sub_100085BF8(v104, v30, v103, v106, v105);
        v97 = v39;

        v40 = sub_100086CBC();
        v95 = v41;
        v96 = v40;
        v43 = v42;
        v94 = v44;
        KeyPath = swift_getKeyPath();
        v46 = sub_100086C3C();
        v47 = swift_getKeyPath();
        v48 = v43 & 1;
        LOBYTE(v134) = v43 & 1;
        v49 = sub_100086E2C();
        v30 = swift_getKeyPath();

        *&v151 = v96;
        *(&v151 + 1) = v95;
        LOBYTE(v152) = v48;
        *(&v152 + 1) = v94;
        *&v153 = KeyPath;
        v37 = v99;
        v36 = v100;
        BYTE8(v153) = 1;
        *&v154 = v47;
        v34 = v101;
        *(&v154 + 1) = v46;
        v35 = v98;
      }

      else
      {
        v49 = 0;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
      }

      *&v155 = v30;
      *(&v155 + 1) = v49;
      v62 = v102;
      if (v35)
      {
        sub_100085BF8(v34, v35, v36, v37, v102);
        v97 = v62;

        v63 = sub_100086CBC();
        v95 = v64;
        v96 = v63;
        v66 = v65;
        v94 = v67;
        v68 = swift_getKeyPath();
        v69 = sub_100086C2C();
        v70 = swift_getKeyPath();
        v71 = v66 & 1;
        LOBYTE(v134) = v66 & 1;
        v72 = sub_100086E2C();
        v73 = swift_getKeyPath();

        *&v146 = v96;
        *(&v146 + 1) = v95;
        LOBYTE(v147) = v71;
        *(&v147 + 1) = v94;
        *&v148 = v68;
        BYTE8(v148) = 1;
        *&v149 = v70;
        *(&v149 + 1) = v69;
      }

      else
      {
        v73 = 0;
        v72 = 0;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
      }

      *&v150 = v73;
      *(&v150 + 1) = v72;
      v129 = v153;
      v130 = v154;
      v127 = v151;
      v128 = v152;
      v144[3] = v149;
      v144[4] = v150;
      v144[1] = v147;
      v144[2] = v148;
      v131 = v155;
      v132[0] = v151;
      v132[3] = v154;
      v132[4] = v155;
      v132[1] = v152;
      v132[2] = v153;
      v119 = v153;
      v120 = v154;
      v117 = v151;
      v118 = v152;
      v133[2] = v148;
      v133[3] = v149;
      v133[0] = v146;
      v133[1] = v147;
      v121 = v155;
      v122 = v146;
      v125 = v149;
      v126 = v150;
      v123 = v147;
      v124 = v148;
      v133[4] = v150;
      v134 = v151;
      v137 = v154;
      v138 = v155;
      v135 = v152;
      v136 = v153;
      v143 = v150;
      v144[0] = v146;
      v141 = v148;
      v142 = v149;
      v139 = v146;
      v140 = v147;
      sub_10000E4A4(&v151, v116, &qword_1000B0540, &qword_10008DEF8);
      sub_10000E4A4(&v146, v116, &qword_1000B0540, &qword_10008DEF8);
      sub_10000E4A4(v132, v116, &qword_1000B0540, &qword_10008DEF8);
      sub_10000E4A4(v133, v116, &qword_1000B0540, &qword_10008DEF8);
      sub_10000649C(v144, &qword_1000B0540, &qword_10008DEF8);
      v145[2] = v129;
      v145[3] = v130;
      v145[4] = v131;
      v145[0] = v127;
      v145[1] = v128;
      sub_10000649C(v145, &qword_1000B0540, &qword_10008DEF8);
      v74 = v124;
      v75 = v110;
      v110[6] = v123;
      v75[7] = v74;
      v76 = v126;
      v75[8] = v125;
      v75[9] = v76;
      v77 = v120;
      v75[2] = v119;
      v75[3] = v77;
      v78 = v122;
      v75[4] = v121;
      v75[5] = v78;
      v79 = v118;
      *v75 = v117;
      v75[1] = v79;
      swift_storeEnumTagMultiPayload();
      sub_10000E4A4(&v134, v116, &qword_1000B0548, &qword_10008DF00);
      sub_100001EEC(&qword_1000B0538, &qword_10008DEF0);
      sub_100006454(&qword_1000B0528, &qword_1000B0510, &unk_10008DED8);
      sub_100006454(&qword_1000B0530, &qword_1000B0538, &qword_10008DEF0);
      v80 = v111;
      sub_100086B8C();
      sub_10000E4A4(v80, v114, &qword_1000B0508, &qword_10008DED0);
      swift_storeEnumTagMultiPayload();
      sub_100085AC0();
      sub_100086B8C();
      sub_10000649C(&v134, &qword_1000B0548, &qword_10008DF00);
      sub_10000649C(&v146, &qword_1000B0540, &qword_10008DEF8);
      sub_10000649C(&v151, &qword_1000B0540, &qword_10008DEF8);
      sub_100085BA0(v101, v98, v100, v99, v102);
      sub_100085BA0(v104, v107, v103, v106, v105);
      return sub_10000649C(v80, &qword_1000B0508, &qword_10008DED0);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100085AC0();
      return sub_100086B8C();
    }
  }

  else
  {
    v97 = v26;
    v98 = v25;
    v100 = v24;
    v101 = v11;
    v103 = v32;
    v104 = v29;
    v106 = v31;
    v107 = v30;
    v50 = v28;
    v105 = v33;
    sub_100085BF8(v29, v107, v32, v31, v33);
    sub_10008688C();
    sub_100086BBC();
    sub_100006454(&qword_1000AEBB8, &qword_1000AEB98, &qword_10008AE40);
    sub_100085DF4();
    v99 = v50;
    sub_100086CFC();
    (v102[1])(v15, v12);
    (*(v17 + 8))(v20, v16);
    if (v107)
    {
      sub_10001FAF0(a1, &v134);
      v102 = v105;

      v51 = sub_100086CBC();
      v104 = v52;
      v105 = v51;
      v54 = v53;
      v103 = v55;
      v96 = swift_getKeyPath();
      v56 = sub_100086C2C();
      v57 = swift_getKeyPath();
      v58 = v54 & 1;
      LOBYTE(v134) = v54 & 1;
      v59 = sub_100086E2C();
      v60 = swift_getKeyPath();

      *&v134 = v105;
      *(&v134 + 1) = v104;
      LOBYTE(v135) = v58;
      *(&v135 + 1) = v103;
      *&v136 = v96;
      BYTE8(v136) = 1;
      *&v137 = v57;
      *(&v137 + 1) = v56;
    }

    else
    {
      v60 = 0;
      v59 = 0;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
    }

    *&v138 = v60;
    *(&v138 + 1) = v59;
    v81 = v97;
    v82 = v98;
    v83 = *(v98 + 16);
    v84 = v100;
    (v83)(v97, v99, v100);
    v148 = v136;
    v149 = v137;
    v150 = v138;
    v146 = v134;
    v147 = v135;
    v85 = v101;
    v83();
    v86 = (v85 + *(sub_100001EEC(&qword_1000B0558, &qword_10008DF98) + 48));
    v88 = v149;
    v87 = v150;
    v154 = v149;
    v155 = v150;
    v90 = v147;
    v89 = v148;
    v152 = v147;
    v153 = v148;
    v91 = v146;
    v151 = v146;
    v86[2] = v148;
    v86[3] = v88;
    v86[4] = v87;
    *v86 = v91;
    v86[1] = v90;
    v116[3] = v88;
    v116[4] = v87;
    v116[1] = v90;
    v116[2] = v89;
    v116[0] = v91;
    sub_10000E4A4(&v134, v145, &qword_1000B0540, &qword_10008DEF8);
    sub_10000E4A4(&v151, v145, &qword_1000B0540, &qword_10008DEF8);
    sub_10000649C(v116, &qword_1000B0540, &qword_10008DEF8);
    v107 = *(v82 + 8);
    v107(v81, v84);
    sub_10000E4A4(v85, v110, &qword_1000B0510, &unk_10008DED8);
    swift_storeEnumTagMultiPayload();
    sub_100001EEC(&qword_1000B0538, &qword_10008DEF0);
    sub_100006454(&qword_1000B0528, &qword_1000B0510, &unk_10008DED8);
    sub_100006454(&qword_1000B0530, &qword_1000B0538, &qword_10008DEF0);
    v92 = v111;
    sub_100086B8C();
    sub_10000E4A4(v92, v114, &qword_1000B0508, &qword_10008DED0);
    swift_storeEnumTagMultiPayload();
    sub_100085AC0();
    sub_100086B8C();
    sub_10000649C(&v134, &qword_1000B0540, &qword_10008DEF8);
    sub_10000E018(a1);
    sub_10000649C(v92, &qword_1000B0508, &qword_10008DED0);
    sub_10000649C(v101, &qword_1000B0510, &unk_10008DED8);
    return (v107)(v99, v100);
  }
}

uint64_t sub_1000859E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v3;
  v17[4] = *(v1 + 64);
  v18 = *(v1 + 80);
  v4 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v4;
  *a1 = sub_100086B3C();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v5 = sub_100001EEC(&qword_1000B04E8, &qword_10008DEB0);
  sub_100084C50(v17, a1 + *(v5 + 44));
  v6 = sub_100086BEC();
  sub_10008686C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_100001EEC(&qword_1000B04F0, &qword_10008DEB8);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_100085AC0()
{
  result = qword_1000B0520;
  if (!qword_1000B0520)
  {
    sub_100003200(&qword_1000B0508, &qword_10008DED0);
    sub_100006454(&qword_1000B0528, &qword_1000B0510, &unk_10008DED8);
    sub_100006454(&qword_1000B0530, &qword_1000B0538, &qword_10008DEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0520);
  }

  return result;
}

void sub_100085BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_100085BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }

  return result;
}

uint64_t sub_100085C44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000869CC();
  *a1 = result;
  return result;
}

uint64_t sub_100085C70(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000869DC();
}

uint64_t sub_100085C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A0C();
  *a1 = result;
  return result;
}

uint64_t sub_100085CC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A0C();
  *a1 = result;
  return result;
}

uint64_t sub_100085D44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100086A2C();
  *a1 = result;
  return result;
}

uint64_t sub_100085D70(uint64_t *a1)
{
  v1 = *a1;

  return sub_100086A3C();
}

uint64_t sub_100085D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000869CC();
  *a1 = result;
  return result;
}

uint64_t sub_100085DC8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000869DC();
}

unint64_t sub_100085DF4()
{
  result = qword_1000B0550;
  if (!qword_1000B0550)
  {
    sub_100086BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0550);
  }

  return result;
}

uint64_t sub_100085E50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100085E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_100085EF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

unint64_t sub_100085F3C()
{
  result = qword_1000B0560;
  if (!qword_1000B0560)
  {
    sub_100003200(&qword_1000B04F0, &qword_10008DEB8);
    sub_100006454(&qword_1000B0568, &unk_1000B0570, "\bc");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0560);
  }

  return result;
}