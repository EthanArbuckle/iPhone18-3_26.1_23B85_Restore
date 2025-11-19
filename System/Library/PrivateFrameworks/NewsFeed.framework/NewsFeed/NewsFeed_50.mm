uint64_t FormatBreakpointNode.child.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v13 = *(v1 + 128);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 160);
  v4 = v15;
  v5 = *(v1 + 80);
  v10[0] = *(v1 + 64);
  v10[1] = v5;
  v6 = *(v1 + 112);
  v11 = *(v1 + 96);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1D5C5C4CC(v10, v9);
}

uint64_t FormatBreakpointNode.__allocating_init(identifier:line:column:filePath:child:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  v15 = *(a7 + 80);
  *(v14 + 128) = *(a7 + 64);
  *(v14 + 144) = v15;
  *(v14 + 160) = *(a7 + 96);
  v16 = *(a7 + 16);
  *(v14 + 64) = *a7;
  *(v14 + 80) = v16;
  v17 = *(a7 + 48);
  *(v14 + 96) = *(a7 + 32);
  *(v14 + 112) = v17;
  return v14;
}

uint64_t FormatBreakpointNode.init(identifier:line:column:filePath:child:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  v15 = *(a7 + 80);
  *(v7 + 128) = *(a7 + 64);
  *(v7 + 144) = v15;
  *(v7 + 160) = *(a7 + 96);
  v16 = *(a7 + 16);
  *(v7 + 64) = *a7;
  *(v7 + 80) = v16;
  v17 = *(a7 + 48);
  *(v7 + 96) = *(a7 + 32);
  *(v7 + 112) = v17;
  return v7;
}

void *FormatBreakpointNode.deinit()
{

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[19];

  sub_1D5CFDD14(v1, v2, v3, v4, v5, v6, v7);
  return v0;
}

uint64_t FormatBreakpointNode.__deallocating_deinit()
{

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[19];

  sub_1D5CFDD14(v1, v2, v3, v4, v5, v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5FD50A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D665F4F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5FD50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v6[0] = *a4;
  v6[1] = v4;
  v7 = *(a4 + 32);
  return sub_1D6D2C570(v6);
}

uint64_t FormatBreakpointNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  v6 = *(v2 + 144);
  v25 = *(v2 + 128);
  v26 = v6;
  v7 = *(v2 + 80);
  v22[0] = *(v2 + 64);
  v22[1] = v7;
  v8 = *(v2 + 112);
  v10 = *(v2 + 64);
  v9 = *(v2 + 80);
  v23 = *(v2 + 96);
  v24 = v8;
  v11 = *(v2 + 144);
  v19 = v25;
  v20 = v11;
  v15 = v10;
  v16 = v9;
  v27 = *(v2 + 160);
  v21 = *(v2 + 160);
  v17 = v23;
  v18 = v5;
  sub_1D5C5C4CC(v22, v13);
  FormatSourceMapNode.bind(binder:context:)(a1, a2);
  v13[4] = v19;
  v13[5] = v20;
  v14 = v21;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  return sub_1D5C5C540(v13);
}

uint64_t sub_1D5FD5218(uint64_t a1)
{
  result = sub_1D5FD5350(&qword_1EC881F90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FD5280(void *a1)
{
  a1[1] = sub_1D5FD5350(&qword_1EC881F98);
  a1[2] = sub_1D5FD5350(&qword_1EC881FA0);
  result = sub_1D5FD5350(&qword_1EC881FA8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5FD530C(uint64_t a1)
{
  result = sub_1D5FD5350(&qword_1EC881FB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FD5350(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatBreakpointNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5FD5390(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 144);
  v26 = *(*v2 + 128);
  v27 = v7;
  v28 = *(v5 + 160);
  v8 = *(v5 + 80);
  v23[0] = *(v5 + 64);
  v23[1] = v8;
  v9 = *(v5 + 112);
  v11 = *(v5 + 64);
  v10 = *(v5 + 80);
  v24 = *(v5 + 96);
  v25 = v9;
  v12 = *(v5 + 144);
  v20 = v26;
  v21 = v12;
  v16 = v11;
  v17 = v10;
  v22 = *(v5 + 160);
  v18 = v24;
  v19 = v6;
  sub_1D5C5C4CC(v23, v14);
  FormatSourceMapNode.bind(binder:context:)(a1, a2);
  v14[4] = v20;
  v14[5] = v21;
  v15 = v22;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  return sub_1D5C5C540(v14);
}

uint64_t FeedCursorExportContext.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedCursorExportContext.init<A>(cursorContainer:name:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v30 = a1;
  v31 = a2;
  v32 = a10;
  v33 = a6;
  v15 = type metadata accessor for FeedCursorTrackerSnapshot();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v30 - v22;
  sub_1D6151884(a1);

  FeedCursorTracker.snapshot()(v23);

  *a9 = v31;
  a9[1] = a3;
  v24 = *(v16 + 32);
  v24(v19, v23, v15);
  v25 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v27 = v34;
  v26[4] = v33;
  v26[5] = v27;
  v28 = v32;
  v26[6] = v35;
  v26[7] = v28;
  v26[8] = v30;
  result = (v24)(v26 + v25, v19, v15);
  a9[2] = sub_1D5FD64E8;
  a9[3] = v26;
  return result;
}

uint64_t sub_1D5FD56B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v39 = a8;
  v40 = a6;
  v41 = a7;
  v36 = a2;
  v37 = a3;
  v38 = type metadata accessor for FeedCursorTrackerSnapshot();
  v14 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v15);
  v17 = &v33 - v16;
  type metadata accessor for FeedDatabaseStore();
  sub_1D5B5F6D0();
  v18 = sub_1D72638FC();

  v19 = sub_1D5B9F6D4(v18, a1);
  if (!v10)
  {
    v34 = a9;
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v33 - 8) = a4;
    *(&v33 - 7) = a5;
    v21 = v39;
    v22 = v41;
    *(&v33 - 6) = v40;
    *(&v33 - 5) = v22;
    *(&v33 - 4) = v21;
    *(&v33 - 3) = v23;
    *(&v33 - 2) = v36;
    v33 = v24;
    v36 = 0;
    type metadata accessor for FeedCursor();
    v35 = sub_1D725BDCC();
    v25 = v38;
    (*(v14 + 16))(v17, v37, v38);
    v26 = (*(v14 + 80) + 80) & ~*(v14 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = a4;
    *(v27 + 3) = a5;
    v28 = v41;
    *(v27 + 4) = v40;
    *(v27 + 5) = v28;
    v29 = v34;
    *(v27 + 6) = v21;
    *(v27 + 7) = v29;
    v30 = v33;
    *(v27 + 8) = a1;
    *(v27 + 9) = v30;
    (*(v14 + 32))(&v27[v26], v17, v25);

    v31 = sub_1D725B92C();
    a1 = sub_1D725BA7C();
  }

  return a1;
}

uint64_t sub_1D5FD595C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v44 = a2;
  v11 = *a3;
  v43 = sub_1D725C59C();
  v38 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v11 + 80);
  v36 = *(v11 + 88);
  v15 = type metadata accessor for FeedCursorTrackerSnapshot();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v35 - v18;
  sub_1D5FD6680();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1D7261AFC();
  v25 = sub_1D7261B2C();
  (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
  (*(v16 + 16))(v19, a4, v15);
  v26 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v27 = swift_allocObject();
  v28 = v36;
  *(v27 + 2) = v37;
  *(v27 + 3) = v28;
  v29 = v40;
  *(v27 + 4) = v39;
  *(v27 + 5) = v29;
  v30 = v42;
  *(v27 + 6) = v41;
  *(v27 + 7) = v30;
  *(v27 + 8) = a3;
  *(v27 + 9) = v24;
  (*(v16 + 32))(&v27[v26], v19, v15);
  v31 = v38;
  v32 = v43;
  (*(v38 + 104))(v14, *MEMORY[0x1E69D6188], v43);

  v33 = sub_1D725C7CC();

  (*(v31 + 8))(v14, v32);
  sub_1D5FD676C(v23);
  return v33;
}

uint64_t sub_1D5FD5C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a7;
  v72 = a6;
  v60 = a3;
  v10 = *(*a1 + 88);
  v61 = *(*a1 + 80);
  v62 = v10;
  v86 = type metadata accessor for FeedCursorGroup();
  v68 = *(v86 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v86, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - v15;
  sub_1D6D113D4();
  v17 = a5;
  v18 = FeedCursor.rootCursor.getter();
  v19 = swift_retain_n();
  v20 = v70;
  sub_1D69D1420(v19, v17, v82);
  if (v20)
  {
  }

  v69 = a1;
  v70 = v16;
  v66 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11;
  v56 = a4;
  v57 = v17;
  v67 = (v68 + 16);
  v65 = (v68 + 32);
  v22 = v62;
  while (1)
  {
    sub_1D725C6CC();
    v76 = v82[2];
    v77 = v82[3];
    v78 = v82[4];
    v79 = v82[5];
    v74 = v82[0];
    v75 = v82[1];
    sub_1D725C67C();

    v23 = *(v18 + qword_1EDFFCF40);

    v24 = v86;
    if (sub_1D726279C())
    {
      v25 = 0;
      v26 = v18;
      while (1)
      {
        v27 = sub_1D726277C();
        sub_1D726271C();
        if (v27)
        {
          v28 = v22;
          result = (*(v68 + 16))(v70, v23 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v25, v24);
        }

        else
        {
          result = sub_1D7263DBC();
          if (v54 != 8)
          {
            goto LABEL_37;
          }

          v28 = v22;
          *&v74 = result;
          (*v67)(v70, &v74, v24);
          result = swift_unknownObjectRelease();
        }

        v29 = v25 + 1;
        v30 = v66;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        (*v65)(v66, v70, v86);

        sub_1D602C3F0(v31, v30, v71, v83);
        sub_1D725C6CC();
        v76 = v83[2];
        v77 = v83[3];
        v78 = v83[4];
        v79 = v83[5];
        v74 = v83[0];
        v75 = v83[1];
        sub_1D725C67C();

        sub_1D5BA705C(v83);
        v24 = v86;
        ++v25;
        v32 = v29 == sub_1D726279C();
        v22 = v28;
        v18 = v26;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_14:

    v33 = *v18;
    v34 = *(v18 + *(*v18 + 240));
    v58 = *(v34 + 16);
    if (v58)
    {
      v59 = v34 + 32;

      v35 = 0;
      v55 = result;
      while (v35 < *(result + 16))
      {
        v39 = (v59 + 24 * v35);
        v40 = *v39;
        v63 = *(*v39 + 16);
        if (v63)
        {
          v53 = v35;
          v41 = v39[1];
          v42 = v40 + 32;

          v64 = v40;
          sub_1D5C07390(v41);

          v43 = 0;
          while (v43 < *(result + 16))
          {
            v81 = v41;
            sub_1D5C0C678(v40 + 32, &v74);
            sub_1D5C0C678(v42, v73);

            sub_1D5C07390(v41);
            sub_1D60E3970(&v81, &v74, v73, v18, v71, v84);
            sub_1D725C6CC();
            v78 = v84[4];
            v79 = v84[5];
            v80 = v85;
            v74 = v84[0];
            v75 = v84[1];
            v76 = v84[2];
            v77 = v84[3];
            sub_1D725C67C();
            ++v43;

            sub_1D5FD67C8(v84);
            v42 += 248;
            result = v64;
            if (v63 == v43)
            {

              sub_1D5C08648(v41);

              v22 = v62;
              result = v55;
              v35 = v53;
              goto LABEL_19;
            }
          }

          goto LABEL_34;
        }

LABEL_19:
        if (++v35 == v58)
        {

          v33 = *v18;
          goto LABEL_16;
        }
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_16:
    v36 = *(v33 + 272);
    swift_beginAccess();
    if (!*(v18 + v36))
    {
      break;
    }

    v37 = FeedNextCursor.syncCursor.getter();

    sub_1D5BA7608(v82);

    if (!v37)
    {
      goto LABEL_28;
    }

    v38 = swift_retain_n();
    sub_1D69D1420(v38, v57, v82);
    v18 = v37;
  }

  sub_1D5BA7608(v82);

LABEL_28:
  type metadata accessor for FeedCursorTrackerSnapshot();
  result = sub_1D6F9EB9C();
  v67 = *(result + 16);
  if (!v67)
  {
  }

  v44 = 0;
  v45 = (result + 40);
  v66 = result;
  while (1)
  {
    v46 = *(result + 16);
    v68 = v44;
    if (v44 >= v46)
    {
      break;
    }

    v47 = *(v45 - 1);
    v48 = *v45;
    v50 = v45[1];
    v49 = v45[2];
    v51 = v45[4];
    v70 = v45[3];
    v71 = v49;
    v72 = *(v69 + 32);
    v86 = v47;

    v52 = v71;

    sub_1D725C6CC();
    *&v74 = v47;
    *(&v74 + 1) = v48;
    *&v75 = v50;
    *(&v75 + 1) = v52;
    *&v76 = v70;
    *(&v76 + 1) = v51;
    sub_1D725C67C();

    v44 = v68 + 1;
    v45 += 6;
    result = v66;
    if (v67 == (v68 + 1))
    {
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D5FD64E8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for FeedCursorTrackerSnapshot() - 8);
  return sub_1D5FD56B8(a1, v1[8], v1 + ((*(v9 + 80) + 72) & ~*(v9 + 80)), v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5FD65E4(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(type metadata accessor for FeedCursorTrackerSnapshot() - 8);
  return sub_1D5FD595C(a1, *(v1 + 64), *(v1 + 72), v1 + ((*(v7 + 80) + 80) & ~*(v7 + 80)), v3, v4, v5, v6);
}

void sub_1D5FD6680()
{
  if (!qword_1EDF16870)
  {
    sub_1D7261B2C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16870);
    }
  }
}

uint64_t sub_1D5FD66D8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(type metadata accessor for FeedCursorTrackerSnapshot() - 8);
  return sub_1D5FD5C8C(v0[8], v0[9], v0 + ((*(v5 + 80) + 80) & ~*(v5 + 80)), v1, v2, v3, v4);
}

uint64_t sub_1D5FD676C(uint64_t a1)
{
  sub_1D5FD6680();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5FD6860()
{
  result = qword_1EC881FB8;
  if (!qword_1EC881FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FB8);
  }

  return result;
}

unint64_t sub_1D5FD68B8()
{
  result = qword_1EC881FC0;
  if (!qword_1EC881FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FC0);
  }

  return result;
}

uint64_t sub_1D5FD697C(uint64_t result)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v22 = *(v1 + 24);
  v21 = v1[2];
  v4 = v22;
  v5 = ((2 * HIBYTE(v22)) | ((v22 & 8) != 0));
  if (v5 - 5 < 0xA || v5 < 2)
  {
    return result;
  }

  v7 = v19;
  v8 = v20;
  if (v5 - 3 >= 2)
  {
LABEL_11:
    if ((v4 & 0xF0) == 0x30)
    {
      v14 = v7;
      v15 = v8;
      return sub_1D62921EC(result);
    }

    return result;
  }

  v9 = result;
  v10 = *(&v19 + 1);
  v17 = v19;
  v18 = v20;
  v16 = 5;
  v13 = v19;
  sub_1D5FD78CC(&v19, &v14);

  v11 = sub_1D703E0C8(&v17, &v16);

  if (v2)
  {
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v13;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  sub_1D6C4D24C(v12 | 0x3000000000000000);

  v4 = v22;
  if (((2 * HIBYTE(v22)) | ((v22 & 8) != 0)) == 2)
  {
    v8 = v20;
    v7 = v19;
    result = v9;
    goto LABEL_11;
  }

  return result;
}

uint64_t FormatTextNodeBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatOption();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v45 = *(v2 + 24);
  v18 = v2[1];
  v42 = *v2;
  v43 = v18;
  v44 = v2[2];
  if (((((v45 & 8) != 0) | (2 * HIBYTE(v45))) - 3) <= 1u)
  {
    v36 = a2;
    v20 = *(&v42 + 1);
    v19 = v43;
    v21 = v42;
    v38 = v42;
    v39 = v43;
    v37 = 5;
    sub_1D5FD78CC(&v42, v40);

    v22 = sub_1D703E0C8(&v38, &v37);
    if (v3)
    {
    }

    v34 = v22;
    v35 = v19;
    v33 = a1;
    v24 = v36;
    FormatOptionCollection.subscript.getter(v21, v20, v13);
    if ((*(v46 + 48))(v13, 1, v6) == 1)
    {

      sub_1D5D28188(v13, sub_1D5E04C00);
      if ((*(v24 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v27 = v21;
        v27[1] = v20;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      v25 = 1;
    }

    else
    {
      sub_1D5D247E0(v13, v9);
      *&v40[0] = v9[2];
      v26 = v34;

      FormatOptionValue.type.getter(&v38);
      if ((sub_1D6183C84(v38, v26) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v29 = v28;
        v31 = *v9;
        v30 = v9[1];
        *&v40[0] = v9[2];

        FormatOptionValue.type.getter(&v38);
        v32 = v38;
        *v29 = v31;
        *(v29 + 8) = v30;
        *(v29 + 16) = v32;
        *(v29 + 24) = v26;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return sub_1D5D28188(v9, type metadata accessor for FormatOption);
      }

      swift_bridgeObjectRelease_n();
      sub_1D5D247E0(v9, v17);
      v25 = 0;
    }

    (*(v46 + 56))(v17, v25, 1, v6);
    sub_1D5D28188(v17, sub_1D5E04C00);
    a2 = v36;
    a1 = v33;
  }

  v40[0] = v42;
  v40[1] = v43;
  v40[2] = v44;
  v41 = v45;
  return FormatTextNodeBinding.bindChildren(binder:context:)(a1, a2);
}

uint64_t _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v2;
  v3 = a2[1];
  v32 = *a2;
  v33 = v3;
  v5 = *a2;
  v4 = a2[1];
  v34 = a2[2];
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  v35 = *(a2 + 24);
  v36[0] = v29[0];
  v36[1] = v2;
  v36[2] = v30;
  v37 = v31;
  v38 = v5;
  v39 = v4;
  v40 = a2[2];
  v41 = *(a2 + 24);
  v6 = *(v29 + 1) | ((*(v29 + 5) | (BYTE7(v29[0]) << 16)) << 32);
  v7 = *(v29 + 9) | ((*(v29 + 13) | (HIBYTE(v29[0]) << 16)) << 32);
  v8 = v2;
  switch((2 * HIBYTE(v31)) | ((v31 & 8) != 0))
  {
    case 1:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) == 1)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    case 2:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) == 2)
      {
        LOBYTE(v20) = v29[0];
        *(&v20 + 1) = *(v29 + 1);
        HIBYTE(v20) = (*(v29 + 1) | ((*(v29 + 5) | (BYTE7(v29[0]) << 16)) << 32)) >> 48;
        *(&v20 + 5) = *(v29 + 5);
        v21 = BYTE8(v29[0]);
        v22 = *(v29 + 9);
        v24 = (*(v29 + 9) | ((*(v29 + 13) | (HIBYTE(v29[0]) << 16)) << 32)) >> 48;
        v23 = *(v29 + 13);
        v25 = v2;
        v26 = v30;
        v27 = v31 & 0xF7;
        v16 = v32;
        v17 = v33;
        v18 = v34;
        v19 = v35 & 0xF7;
        sub_1D5FD78CC(&v32, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(&v32, v28);
        v9 = _s8NewsFeed18FormatGroupBindingV4TextO2eeoiySbAE_AEtFZ_0(&v20, &v16);
        goto LABEL_54;
      }

      sub_1D5FD7B48(*&v29[0], *(&v29[0] + 1), v2, *(&v2 + 1), v30, *(&v30 + 1), v31 & 0xF7);
      goto LABEL_56;
    case 3:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 3)
      {
        goto LABEL_29;
      }

      v11 = v33;
      if (__PAIR128__(BYTE8(v29[0]) | (v7 << 8), LOBYTE(v29[0]) | (v6 << 8)) != v32)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    case 4:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 4)
      {
LABEL_29:

        goto LABEL_56;
      }

      v11 = v33;
      if (__PAIR128__(BYTE8(v29[0]) | (v7 << 8), LOBYTE(v29[0]) | (v6 << 8)) == v32)
      {
        goto LABEL_27;
      }

LABEL_26:
      if ((sub_1D72646CC() & 1) == 0)
      {
        sub_1D5FD78CC(v29, v28);
        goto LABEL_56;
      }

LABEL_27:
      sub_1D5FD78CC(&v32, v28);
      sub_1D5FD78CC(v29, v28);
      sub_1D5FD78CC(v29, v28);
      sub_1D5FD78CC(&v32, v28);
      v13 = sub_1D6341C50(v8, v11);
      sub_1D5D28188(v36, sub_1D5FD7ABC);
      sub_1D5FD7B18(&v32);
      sub_1D5FD7B18(v29);
      if ((v13 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_86;
    case 5:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 5)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v36, sub_1D5FD7ABC);
      switch(LOBYTE(v29[0]))
      {
        case 2u:
          if (v32 == 2)
          {
            goto LABEL_86;
          }

          break;
        case 3u:
          if (v32 == 3)
          {
            goto LABEL_86;
          }

          break;
        case 4u:
          if (v32 == 4)
          {
            goto LABEL_86;
          }

          break;
        default:
          if (v32 - 2 >= 3 && (v32 & 1) == (v29[0] & 1))
          {
            goto LABEL_86;
          }

          break;
      }

      goto LABEL_57;
    case 6:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 6)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    case 7:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 7)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v36, sub_1D5FD7ABC);
      if (LOBYTE(v29[0]) > 0xFBu)
      {
        if (v32 > 0xFBu)
        {
          goto LABEL_86;
        }

        goto LABEL_57;
      }

      if (v32 > 0xFBu)
      {
        goto LABEL_57;
      }

      v15 = v32 & 0x7F;
      if ((v29[0] & 0x80) == 0)
      {
        if ((v32 & 0x80) == 0 && v15 == LOBYTE(v29[0]))
        {
          goto LABEL_86;
        }

        goto LABEL_57;
      }

      if ((v32 & 0x80) == 0 || v15 != (v29[0] & 0x7F))
      {
        goto LABEL_57;
      }

      goto LABEL_86;
    case 8:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) == 8)
      {
        LOBYTE(v20) = v29[0];
        *(&v20 + 1) = *(v29 + 1);
        HIBYTE(v20) = (*(v29 + 1) | ((*(v29 + 5) | (BYTE7(v29[0]) << 16)) << 32)) >> 48;
        *(&v20 + 5) = *(v29 + 5);
        v21 = BYTE8(v29[0]);
        v22 = *(v29 + 9);
        v24 = (*(v29 + 9) | ((*(v29 + 13) | (HIBYTE(v29[0]) << 16)) << 32)) >> 48;
        v23 = *(v29 + 13);
        v25 = v2;
        v26 = v30;
        v27 = v31 & 0xF7;
        v16 = v32;
        v17 = v33;
        v18 = v34;
        v19 = v35 & 0xF7;
        sub_1D5FD78CC(&v32, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(&v32, v28);
        v9 = _s8NewsFeed19FormatPuzzleBindingV4TextO2eeoiySbAE_AEtFZ_0(&v20, &v16);
        goto LABEL_54;
      }

      sub_1D5E1DCD8(*&v29[0], *(&v29[0] + 1), v2, *(&v2 + 1), v30, *(&v30 + 1), v31 & 0xF7);
      goto LABEL_56;
    case 9:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 9)
      {
        goto LABEL_56;
      }

      v12 = LOBYTE(v29[0]) | (v6 << 8);
      sub_1D5D28188(v36, sub_1D5FD7ABC);
      if (BYTE8(v29[0]))
      {
        if (v12)
        {
          if ((BYTE8(v32) & 1) != 0 && v32)
          {
            goto LABEL_86;
          }
        }

        else if ((BYTE8(v32) & 1) != 0 && !v32)
        {
          goto LABEL_86;
        }
      }

      else if ((BYTE8(v32) & 1) == 0 && v12 == v32)
      {
        goto LABEL_86;
      }

      goto LABEL_57;
    case 10:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) == 0xA)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    case 11:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 0xB)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v36, sub_1D5FD7ABC);
      v10 = LOBYTE(v29[0]) ^ v32 ^ 1;
      return v10 & 1;
    case 12:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 0xC)
      {
        goto LABEL_56;
      }

      sub_1D5D28188(v36, sub_1D5FD7ABC);
      if (!(BYTE8(v29[0]) >> 6))
      {
        if (BYTE8(v32) > 0x3Fu)
        {
          goto LABEL_57;
        }

LABEL_68:
        if (LOBYTE(v29[0]) != v32)
        {
          goto LABEL_57;
        }

        goto LABEL_86;
      }

      if (BYTE8(v29[0]) >> 6 == 1)
      {
        if ((BYTE8(v32) & 0xC0) != 0x40)
        {
          goto LABEL_57;
        }

        goto LABEL_68;
      }

      if ((BYTE8(v32) & 0xC0) == 0x80 && (LOBYTE(v29[0]) | (v6 << 8)) == v32 && (BYTE8(v32) & 0x3F) == (BYTE8(v29[0]) & 0x3F))
      {
LABEL_86:
        v10 = 1;
        return v10 & 1;
      }

LABEL_57:
      v10 = 0;
      return v10 & 1;
    case 13:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) != 0xD)
      {
        goto LABEL_56;
      }

LABEL_47:
      sub_1D5D28188(v36, sub_1D5FD7ABC);
      v10 = LOBYTE(v29[0]) == v32;
      return v10 & 1;
    case 14:
      if (((2 * HIBYTE(v35)) | ((v35 & 8) != 0)) == 0xE)
      {
        LOBYTE(v20) = v29[0];
        *(&v20 + 1) = *(v29 + 1);
        HIBYTE(v20) = (*(v29 + 1) | ((*(v29 + 5) | (BYTE7(v29[0]) << 16)) << 32)) >> 48;
        *(&v20 + 5) = *(v29 + 5);
        v21 = BYTE8(v29[0]);
        v22 = *(v29 + 9);
        v24 = (*(v29 + 9) | ((*(v29 + 13) | (HIBYTE(v29[0]) << 16)) << 32)) >> 48;
        v23 = *(v29 + 13);
        v25 = v2;
        v26 = v30;
        v16 = v32;
        v17 = v33;
        v18 = v34;
        sub_1D5FD78CC(&v32, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(&v32, v28);
        v9 = _s8NewsFeed19FormatRecipeBindingV4TextO2eeoiySbAE_AEtFZ_0(&v20, &v16);
        goto LABEL_54;
      }

      sub_1D5E1DCE8(*&v29[0], *(&v29[0] + 1), v2);
      goto LABEL_56;
    default:
      if (!((2 * HIBYTE(v35)) | ((v35 & 8) != 0)))
      {
        LOBYTE(v20) = v29[0];
        *(&v20 + 1) = *(v29 + 1);
        HIBYTE(v20) = (*(v29 + 1) | ((*(v29 + 5) | (BYTE7(v29[0]) << 16)) << 32)) >> 48;
        *(&v20 + 5) = *(v29 + 5);
        v21 = BYTE8(v29[0]);
        v22 = *(v29 + 9);
        v24 = (*(v29 + 9) | ((*(v29 + 13) | (HIBYTE(v29[0]) << 16)) << 32)) >> 48;
        v23 = *(v29 + 13);
        v25 = v2;
        v26 = v30;
        v27 = v31 & 0xF7;
        v16 = v32;
        v17 = v33;
        v18 = v34;
        v19 = v35 & 0xF7;
        sub_1D5FD78CC(&v32, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(v29, v28);
        sub_1D5FD78CC(&v32, v28);
        v9 = _s8NewsFeed21FormatHeadlineBindingV4TextO2eeoiySbAE_AEtFZ_0(&v20, &v16);
LABEL_54:
        v10 = v9;
        sub_1D5D28188(v36, sub_1D5FD7ABC);
        sub_1D5FD7B18(&v32);
        sub_1D5FD7B18(v29);
        return v10 & 1;
      }

      sub_1D5E1DC48(*&v29[0], *(&v29[0] + 1), v2, *(&v2 + 1), v30, *(&v30 + 1), v31 & 0xF7);
LABEL_56:
      sub_1D5FD78CC(&v32, v28);
      sub_1D5D28188(v36, sub_1D5FD7ABC);
      goto LABEL_57;
  }
}

unint64_t sub_1D5FD7904(uint64_t a1)
{
  result = sub_1D5FD792C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FD792C()
{
  result = qword_1EC881FC8;
  if (!qword_1EC881FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FC8);
  }

  return result;
}

unint64_t sub_1D5FD7980(void *a1)
{
  a1[1] = sub_1D5C77160();
  a1[2] = sub_1D5FD79B8();
  result = sub_1D5FD7A0C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FD79B8()
{
  result = qword_1EDF0DED0;
  if (!qword_1EDF0DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DED0);
  }

  return result;
}

unint64_t sub_1D5FD7A0C()
{
  result = qword_1EC881FD0;
  if (!qword_1EC881FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FD0);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D5FD7A8C(uint64_t result, unsigned int a2)
{
  *(result + 48) = *(result + 48) & 0xF7 | (8 * (a2 & 1));
  *(result + 49) = a2 >> 1;
  return result;
}

void sub_1D5FD7ABC()
{
  if (!qword_1EC881FD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881FD8);
    }
  }
}

uint64_t sub_1D5FD7B48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 > 8)
  {
    if (v7 == 9)
    {
      return sub_1D5E1DCD8(result, a2, a3, a4, a5, a6, a7 & 0xF);
    }

    else if (v7 == 12)
    {
      return sub_1D5E1DCE8(result, a2, a3);
    }
  }

  else if (a7 >> 4)
  {
    if (v7 == 3)
    {
      return sub_1D5E1DCA8(result, a2, a3, BYTE1(a3));
    }
  }

  else
  {
    return sub_1D5E1DC48(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void FormatRemoteFont.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t FormatRemoteFont.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatRemoteFont.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

__n128 sub_1D5FD7C7C(char **a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v18 = v1[4];
  v7 = *(v1 + 20);
  v8 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D5D095A0(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D5D095A0((v9 > 1), v10 + 1, 1, v8);
  }

  *&v19 = v4;
  *(&v19 + 1) = v3;
  *&v20 = v5;
  *(&v20 + 1) = v6;
  *&v21 = v18;
  WORD4(v21) = v7;
  BYTE10(v21) = 0;
  sub_1D5FD8134(&v19);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[128 * v10];
  v12 = v19;
  v13 = v20;
  v14 = v22;
  *(v11 + 4) = v21;
  *(v11 + 5) = v14;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  result = v23;
  v16 = v24;
  v17 = v25[0];
  *(v11 + 137) = *(v25 + 9);
  *(v11 + 7) = v16;
  *(v11 + 8) = v17;
  *(v11 + 6) = result;
  *a1 = v8;
  return result;
}

uint64_t _s8NewsFeed16FormatRemoteFontV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v12 = v6;
  v13 = v2;

  v10 = static FormatURL.== infix(_:_:)(&v13, &v12);

  if (!v10 || v3 != v7)
  {
    return 0;
  }

  return sub_1D5F4F928(v4, v5, v8, v9);
}

unint64_t sub_1D5FD7ECC(uint64_t a1)
{
  result = sub_1D5FD7EF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FD7EF4()
{
  result = qword_1EC881FE0;
  if (!qword_1EC881FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FE0);
  }

  return result;
}

unint64_t sub_1D5FD7F48(void *a1)
{
  a1[1] = sub_1D5FD7F80();
  a1[2] = sub_1D5FD7FD4();
  result = sub_1D5FD8028();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FD7F80()
{
  result = qword_1EDF11190;
  if (!qword_1EDF11190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11190);
  }

  return result;
}

unint64_t sub_1D5FD7FD4()
{
  result = qword_1EDF11198;
  if (!qword_1EDF11198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11198);
  }

  return result;
}

unint64_t sub_1D5FD8028()
{
  result = qword_1EC881FE8;
  if (!qword_1EC881FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881FE8);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5FD8090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5FD80D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5FD813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v4 + 352) = a2;
  *(v4 + 360) = v5;
  *(v4 + 344) = a1;
  *(v4 + 368) = swift_getObjectType();
  *(v4 + 376) = type metadata accessor for PuzzleDatastoreInfo();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  sub_1D5FE3DC4(0);
  *(v4 + 400) = swift_task_alloc();
  v7 = sub_1D725891C();
  *(v4 + 408) = v7;
  *(v4 + 416) = *(v7 - 8);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = type metadata accessor for PuzzleResource();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v8 = sub_1D72585BC();
  *(v4 + 464) = v8;
  *(v4 + 472) = *(v8 - 8);
  *(v4 + 480) = swift_task_alloc();
  sub_1D5B4D3E0();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = type metadata accessor for PuzzleResourceSource();
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = *a3;
  *(v4 + 172) = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D5FD839C, 0, 0);
}

uint64_t sub_1D5FD839C()
{
  v46 = v0;
  sub_1D5C10BE0(*(v0 + 352), *(v0 + 512), type metadata accessor for PuzzleResourceSource);
  if (qword_1EC87DC80 != -1)
  {
    swift_once();
  }

  if (sub_1D72596AC())
  {
    if (qword_1EC87DC70 != -1)
    {
      swift_once();
    }

    sub_1D5FE3FFC(&qword_1EC882120, v1, type metadata accessor for PuzzleDataManager);
    sub_1D725964C();
    if (qword_1EC87DC78 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 488);
    v4 = *(v0 + 464);
    v3 = *(v0 + 472);
    sub_1D725964C();
    v5 = PuzzleResourceSource.identifier.getter();
    v7 = v6;
    sub_1D725855C();

    sub_1D725855C();

    v8 = (*(v3 + 48))(v2, 1, v4);
    v9 = *(v0 + 488);
    if (v8 == 1)
    {

      sub_1D5FE40F0(v9, sub_1D5B4D3E0);
LABEL_32:
      v41 = *(v0 + 512);
      v42 = *(v0 + 496);
      sub_1D5FE3E60();
      swift_allocError();
      swift_willThrow();
      sub_1D5FE40F0(v42, sub_1D5B4D3E0);
      sub_1D5FE40F0(v41, type metadata accessor for PuzzleResourceSource);

      v43 = *(v0 + 8);

      return v43();
    }

    v10 = *(*(v0 + 472) + 32);
    v10(*(v0 + 480), *(v0 + 488), *(v0 + 464));
    v11 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

      goto LABEL_32;
    }

    v12 = *(v0 + 512);
    v13 = *(v0 + 496);
    v14 = *(v0 + 480);
    v15 = *(v0 + 464);
    sub_1D5FE40F0(v12, type metadata accessor for PuzzleResourceSource);
    sub_1D5B4D334();
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    *v12 = v5;
    v12[1] = v7;
    v10(v12 + v17, v14, v15);
    sub_1D5FE3EB4(v13, v12 + v18, sub_1D5B4D3E0);
    swift_storeEnumTagMultiPayload();
  }

  *(v0 + 536) = CACurrentMediaTime();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 172);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);
  v22 = sub_1D725C42C();
  *(v0 + 544) = __swift_project_value_buffer(v22, qword_1EDFFCFA8);
  sub_1D5FE3DF8(v21, v20, v19);
  v23 = sub_1D725C3FC();
  v24 = sub_1D7262EDC();
  sub_1D5FE3E2C(v21, v20, v19);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 175);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136315138;
    if (v25 <= 0xFE)
    {
      v30 = HIBYTE(*(v0 + 172));
      v31 = 0x80000001D73C5A10;
      v32 = 0xD000000000000017;
      if (v30 != 1)
      {
        v32 = 0xD000000000000011;
        v31 = 0x80000001D73C5A50;
      }

      if (v30)
      {
        v29 = v32;
      }

      else
      {
        v29 = 0xD000000000000013;
      }

      if (v30)
      {
        v28 = v31;
      }

      else
      {
        v28 = 0x80000001D73C5A30;
      }
    }

    else
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    v33 = sub_1D5BC5100(v29, v28, &v45);

    *(v26 + 4) = v33;
    _os_log_impl(&dword_1D5B42000, v23, v24, "PuzzleDataManager: Start fetching resources with puzzleLaunchAction=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1DA6FD500](v27, -1, -1);
    MEMORY[0x1DA6FD500](v26, -1, -1);
  }

  v34 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService);
  v35 = v34[3];
  v36 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v44 = (*(v36 + 24) + **(v36 + 24));
  v37 = swift_task_alloc();
  *(v0 + 552) = v37;
  *v37 = v0;
  v37[1] = sub_1D5FD8A88;
  v38 = *(v0 + 512);
  v39 = *(v0 + 456);

  return v44(v39, v38, v35, v36);
}

uint64_t sub_1D5FD8A88()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1D5FDB424;
  }

  else
  {
    v2 = sub_1D5FD8B9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5FD8B9C()
{
  v85 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 360);
  v4 = *v1;
  *(v0 + 568) = *v1;
  v5 = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle;
  *(v0 + 576) = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle;
  *(v3 + v5) = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1D5C10BE0(v1, v2, type metadata accessor for PuzzleResource);
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EDC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 448);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v84[0] = v11;
    *v10 = 136315394;
    v12 = PuzzleResource.description.getter();
    v14 = v13;
    sub_1D5FE40F0(v9, type metadata accessor for PuzzleResource);
    v15 = sub_1D5BC5100(v12, v14, v84);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = (CACurrentMediaTime() - v8) * 1000.0;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7273AE0;
    v18 = MEMORY[0x1E69E6438];
    *(v17 + 56) = MEMORY[0x1E69E63B0];
    *(v17 + 64) = v18;
    *(v17 + 32) = v16 / 1000.0;
    v19 = sub_1D72620BC();
    v21 = v20;

    v22 = sub_1D5BC5100(v19, v21, v84);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_1D5B42000, v6, v7, "PuzzleDataManager: Fetched puzzle resource: %s duration=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v10, -1, -1);

    v23 = *(v3 + v5);
    if (v23)
    {
LABEL_3:
      v25 = *(v0 + 416);
      v24 = *(v0 + 424);
      v82 = *(v0 + 408);
      v26 = *(v0 + 360);
      v27 = [v23 puzzleType];
      *(v0 + 584) = v27;
      v28 = *(v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
      v29 = *(v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
      __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v28);
      v30 = [v27 identifier];
      v31 = sub_1D726207C();
      v33 = v32;

      sub_1D72587BC();
      v34 = (*(v29 + 56))(v31, v33, v24, v28, v29);

      (*(v25 + 8))(v24, v82);
      *(v0 + 592) = *(v34 + 16);

      v35 = swift_task_alloc();
      *(v0 + 600) = v35;
      *v35 = v0;
      v35[1] = sub_1D5FD9658;

      return sub_1D5FDCED8(v27);
    }
  }

  else
  {
    v37 = *(v0 + 448);

    sub_1D5FE40F0(v37, type metadata accessor for PuzzleResource);
    v23 = *(v3 + v5);
    if (v23)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 624) = 0;
  *(v0 + 816) = 0;
  v38 = sub_1D725C3FC();
  v39 = sub_1D7262EDC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v84[0] = v41;
    *v40 = 136315394;
    v42 = *(v0 + 536);
    v43 = sub_1D5BC5100(7104878, 0xE300000000000000, v84);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2080;
    v44 = (CACurrentMediaTime() - v42) * 1000.0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7273AE0;
    v46 = MEMORY[0x1E69E6438];
    *(v45 + 56) = MEMORY[0x1E69E63B0];
    *(v45 + 64) = v46;
    *(v45 + 32) = v44 / 1000.0;
    v47 = sub_1D72620BC();
    v49 = v48;

    v50 = sub_1D5BC5100(v47, v49, v84);

    *(v40 + 14) = v50;
    _os_log_impl(&dword_1D5B42000, v38, v39, "PuzzleDataManager: Fetched puzzle statistics: %s duration=%s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v41, -1, -1);
    MEMORY[0x1DA6FD500](v40, -1, -1);
  }

  v51 = *(*(v0 + 360) + *(v0 + 576));
  *(v0 + 632) = v51;
  if (v51)
  {
    v52 = *(v0 + 172);
    *(v0 + 152) = *(v0 + 520);
    *(v0 + 168) = v52;
    swift_unknownObjectRetain();
    v53 = swift_task_alloc();
    *(v0 + 640) = v53;
    *v53 = v0;
    v53[1] = sub_1D5FD9E88;
    v54 = *(v0 + 456);

    return sub_1D5FDD544(v51, v54, v0 + 152);
  }

  else
  {
    *(v0 + 672) = 0u;
    v55 = sub_1D725C3FC();
    v56 = sub_1D7262EDC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 536);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v84[0] = v59;
      *v58 = 136315394;
      v60 = sub_1D5BC5100(7104878, 0xE300000000000000, v84);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2080;
      v61 = (CACurrentMediaTime() - v57) * 1000.0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D7273AE0;
      v63 = MEMORY[0x1E69E6438];
      *(v62 + 56) = MEMORY[0x1E69E63B0];
      *(v62 + 64) = v63;
      *(v62 + 32) = v61 / 1000.0;
      v64 = sub_1D72620BC();
      v66 = v65;

      v67 = sub_1D5BC5100(v64, v66, v84);

      *(v58 + 14) = v67;
      _os_log_impl(&dword_1D5B42000, v55, v56, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v59, -1, -1);
      MEMORY[0x1DA6FD500](v58, -1, -1);
    }

    v68 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
    v69 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    v70 = PuzzleResourceSource.identifier.getter();
    v71 = (*(*(v69 + 8) + 56))(v70);

    if (v71)
    {
      sub_1D5FDDE24(v84);

      v72 = v84[0];
      v73 = v84[1];
      v74 = v84[2];
      v75 = v84[3];
      v76 = v84[4];
      v77 = v84[5];
    }

    else
    {
      v76 = xmmword_1D728CF30;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v77 = 0uLL;
    }

    *(v0 + 752) = v76;
    *(v0 + 768) = v77;
    *(v0 + 720) = v74;
    *(v0 + 736) = v75;
    *(v0 + 688) = v72;
    *(v0 + 704) = v73;
    v78 = *(v0 + 360);
    sub_1D5FDE158(v78, *(v0 + 400));
    v79 = *(v78 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
    ObjectType = swift_getObjectType();
    v83 = (*(v79 + 40) + **(v79 + 40));
    v81 = swift_task_alloc();
    *(v0 + 784) = v81;
    *v81 = v0;
    v81[1] = sub_1D5FDA3E8;

    return v83(ObjectType, v79);
  }
}

uint64_t sub_1D5FD9658(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v5 = sub_1D5FDB538;
  }

  else
  {
    *(v4 + 616) = a1;
    v5 = sub_1D5FD9780;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5FD9780()
{
  v55 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 616);
  v2 = *(v0 + 592) != 0;
  *(v0 + 624) = v1;
  *(v0 + 816) = v2;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v54[0] = v6;
    *v5 = 136315394;
    if (v1)
    {
      v7 = type metadata accessor for PuzzleStatistic();

      v9 = MEMORY[0x1DA6F9DD0](v8, v7);
      v11 = v10;
    }

    else
    {
      v9 = 7104878;
      v11 = 0xE300000000000000;
    }

    v12 = *(v0 + 536);
    v13 = sub_1D5BC5100(v9, v11, v54);

    *(v5 + 4) = v13;
    *(v5 + 12) = 2080;
    v14 = (CACurrentMediaTime() - v12) * 1000.0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    v16 = MEMORY[0x1E69E6438];
    *(v15 + 56) = MEMORY[0x1E69E63B0];
    *(v15 + 64) = v16;
    *(v15 + 32) = v14 / 1000.0;
    v17 = sub_1D72620BC();
    v19 = v18;

    v20 = sub_1D5BC5100(v17, v19, v54);

    *(v5 + 14) = v20;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Fetched puzzle statistics: %s duration=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v21 = *(*(v0 + 360) + *(v0 + 576));
  *(v0 + 632) = v21;
  if (v21)
  {
    v22 = *(v0 + 172);
    *(v0 + 152) = *(v0 + 520);
    *(v0 + 168) = v22;
    swift_unknownObjectRetain();
    v23 = swift_task_alloc();
    *(v0 + 640) = v23;
    *v23 = v0;
    v23[1] = sub_1D5FD9E88;
    v24 = *(v0 + 456);

    return sub_1D5FDD544(v21, v24, v0 + 152);
  }

  else
  {
    *(v0 + 672) = 0u;
    v26 = sub_1D725C3FC();
    v27 = sub_1D7262EDC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 536);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v54[0] = v30;
      *v29 = 136315394;
      v31 = sub_1D5BC5100(7104878, 0xE300000000000000, v54);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      v32 = (CACurrentMediaTime() - v28) * 1000.0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D7273AE0;
      v34 = MEMORY[0x1E69E6438];
      *(v33 + 56) = MEMORY[0x1E69E63B0];
      *(v33 + 64) = v34;
      *(v33 + 32) = v32 / 1000.0;
      v35 = sub_1D72620BC();
      v37 = v36;

      v38 = sub_1D5BC5100(v35, v37, v54);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_1D5B42000, v26, v27, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v30, -1, -1);
      MEMORY[0x1DA6FD500](v29, -1, -1);
    }

    v39 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
    v40 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v41 = PuzzleResourceSource.identifier.getter();
    v42 = (*(*(v40 + 8) + 56))(v41);

    if (v42)
    {
      sub_1D5FDDE24(v54);

      v43 = v54[0];
      v44 = v54[1];
      v45 = v54[2];
      v46 = v54[3];
      v47 = v54[4];
      v48 = v54[5];
    }

    else
    {
      v47 = xmmword_1D728CF30;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v48 = 0uLL;
    }

    *(v0 + 752) = v47;
    *(v0 + 768) = v48;
    *(v0 + 720) = v45;
    *(v0 + 736) = v46;
    *(v0 + 688) = v43;
    *(v0 + 704) = v44;
    v49 = *(v0 + 360);
    sub_1D5FDE158(v49, *(v0 + 400));
    v50 = *(v49 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
    ObjectType = swift_getObjectType();
    v53 = (*(v50 + 40) + **(v50 + 40));
    v52 = swift_task_alloc();
    *(v0 + 784) = v52;
    *v52 = v0;
    v52[1] = sub_1D5FDA3E8;

    return v53(ObjectType, v50);
  }
}

uint64_t sub_1D5FD9E88(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 648) = v2;

  if (v2)
  {
    v7 = sub_1D5FDBD2C;
  }

  else
  {
    *(v6 + 656) = a2;
    *(v6 + 664) = a1;
    v7 = sub_1D5FD9FC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D5FD9FC0()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  *(v0 + 680) = v2;
  *(v0 + 672) = v1;

  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 536);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v34[0] = v7;
    *v6 = 136315394;
    if (v2)
    {
      v8 = v1;
    }

    else
    {
      v8 = 7104878;
    }

    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    v10 = sub_1D5BC5100(v8, v9, v34);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = (CACurrentMediaTime() - v5) * 1000.0;
    *(v0 + 224) = 0;
    *(v0 + 232) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    v13 = MEMORY[0x1E69E6438];
    *(v12 + 56) = MEMORY[0x1E69E63B0];
    *(v12 + 64) = v13;
    *(v12 + 32) = v11 / 1000.0;
    v14 = sub_1D72620BC();
    v16 = v15;

    v17 = sub_1D5BC5100(v14, v16, v34);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  v18 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v20 = PuzzleResourceSource.identifier.getter();
  v21 = (*(*(v19 + 8) + 56))(v20);

  if (v21)
  {
    sub_1D5FDDE24(v34);

    v22 = v34[0];
    v23 = v34[1];
    v24 = v34[2];
    v25 = v34[3];
    v26 = v34[4];
    v27 = v34[5];
  }

  else
  {
    v26 = xmmword_1D728CF30;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v27 = 0uLL;
  }

  *(v0 + 752) = v26;
  *(v0 + 768) = v27;
  *(v0 + 720) = v24;
  *(v0 + 736) = v25;
  *(v0 + 688) = v22;
  *(v0 + 704) = v23;
  v28 = *(v0 + 360);
  sub_1D5FDE158(v28, *(v0 + 400));
  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
  ObjectType = swift_getObjectType();
  v33 = (*(v29 + 40) + **(v29 + 40));
  v31 = swift_task_alloc();
  *(v0 + 784) = v31;
  *v31 = v0;
  v31[1] = sub_1D5FDA3E8;

  return v33(ObjectType, v29);
}

uint64_t sub_1D5FDA3E8(char a1)
{
  *(*v1 + 817) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5FDA4E8, 0, 0);
}

uint64_t sub_1D5FDA4E8()
{
  v16 = v0;
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 536);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = (CACurrentMediaTime() - v3) * 1000.0;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = MEMORY[0x1E69E6438];
    *(v7 + 56) = MEMORY[0x1E69E63B0];
    *(v7 + 64) = v8;
    *(v7 + 32) = v6 / 1000.0;
    v9 = sub_1D72620BC();
    v11 = v10;

    v12 = sub_1D5BC5100(v9, v11, &v15);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_1D5B42000, v1, v2, "PuzzleDataManager: isGameCenterEnabled duration=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1DA6FD500](v5, -1, -1);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 792) = v13;
  *v13 = v0;
  v13[1] = sub_1D5FDA750;

  return sub_1D5FDE448();
}

uint64_t sub_1D5FDA750(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 800) = v1;

  if (v1)
  {
    v5 = sub_1D5FDC23C;
  }

  else
  {
    *(v4 + 808) = a1;
    v5 = sub_1D5FDA878;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5FDA878()
{
  v111 = v0;
  v105 = *(v0 + 808);
  v107 = *(v0 + 800);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 536);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v109 = v5;
    *v4 = 136315138;
    v6 = (CACurrentMediaTime() - v3) * 1000.0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = MEMORY[0x1E69E6438];
    *(v7 + 56) = MEMORY[0x1E69E63B0];
    *(v7 + 64) = v8;
    *(v7 + 32) = v6 / 1000.0;
    v9 = sub_1D72620BC();
    v11 = v10;

    v12 = sub_1D5BC5100(v9, v11, &v109);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_1D5B42000, v1, v2, "PuzzleDataManager: Fetched related puzzles info duration=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1DA6FD500](v5, -1, -1);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v13 = *(v0 + 360);
  sub_1D5C10BE0(*(v0 + 456), *(v0 + 440), type metadata accessor for PuzzleResource);
  v14 = [*(v13 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v15 = v110;
  *(v0 + 16) = v109;
  *(v0 + 32) = v15;
  if (!*(v0 + 40))
  {
    sub_1D5EBD03C(v0 + 16);
    goto LABEL_11;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v16 = *(v0 + 312);
  v17 = [v16 integerValue];
  if (v17 == -1)
  {

    v102 = 21;
    v104 = -1;
    goto LABEL_21;
  }

LABEL_12:
  v104 = v17;
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v18 = v110;
  *(v0 + 48) = v109;
  *(v0 + 64) = v18;
  if (!*(v0 + 72))
  {
    sub_1D5EBD03C(v0 + 48);
    goto LABEL_19;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    v21 = 21;
    goto LABEL_20;
  }

  v19 = *(v0 + 304);
  v20 = [v19 integerValue];

  v21 = v20 + 21;
LABEL_20:
  v102 = v21;
LABEL_21:
  v22 = *(v0 + 568);
  v23 = *(v0 + 172);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 360);
  v27 = sub_1D5FDEB3C(v22);
  v28 = *(v26 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleTypeSettings);
  sub_1D5FE3DF8(v25, v24, v23);
  v29 = [objc_msgSend(v22 puzzleType)];
  swift_unknownObjectRelease();
  if (!v29)
  {
    sub_1D726207C();
    v29 = sub_1D726203C();
  }

  v30 = [v28 settingsDataForPuzzleTypeID_];

  if (v30)
  {
    v31 = sub_1D725867C();
    v100 = v32;
    v101 = v31;
  }

  else
  {
    v100 = 0xF000000000000000;
    v101 = 0;
  }

  v97 = *(v0 + 672);
  v98 = *(v0 + 680);
  v95 = *(v0 + 816);
  v96 = *(v0 + 817);
  v94 = *(v0 + 172);
  v92 = *(v0 + 520);
  v93 = *(v0 + 528);
  v90 = *(v0 + 440);
  v34 = *(v0 + 392);
  v33 = *(v0 + 400);
  v35 = *(v0 + 376);
  v99 = *(v0 + 384);
  v36 = ((v102 ^ v104) & 1) == 0;
  v88 = *(v0 + 720);
  v89 = *(v0 + 688);
  v85 = *(v0 + 736);
  v86 = *(v0 + 704);
  v87 = *(v0 + 752);
  v84 = *(v0 + 768);
  v103 = sub_1D5FDEDB8();
  v91 = v37;
  type metadata accessor for PuzzleStatsInfo();
  swift_allocObject();

  v39 = PuzzleStatsInfo.init(statistics:)(v38);
  sub_1D5C10BE0(v33, v34 + v35[12], sub_1D5FE3DC4);
  v40 = sub_1D5FDF3D4();
  v42 = v41;
  v43 = sub_1D5FDF918();
  v45 = v44;
  sub_1D5FE3EB4(v90, v34, type metadata accessor for PuzzleResource);
  *(v34 + v35[5]) = v36;
  *(v34 + v35[6]) = v27 & 1;
  v46 = (v34 + v35[7]);
  *v46 = v89;
  v46[1] = v86;
  v46[2] = v88;
  v46[3] = v85;
  v46[4] = v87;
  v46[5] = v84;
  v47 = v34 + v35[8];
  *v47 = v92;
  *(v47 + 8) = v93;
  *(v47 + 16) = v94;
  v48 = (v34 + v35[9]);
  *v48 = v101;
  v48[1] = v100;
  v49 = (v34 + v35[10]);
  *v49 = v103;
  v49[1] = v91;
  *(v34 + v35[11]) = v39;
  *(v34 + v35[13]) = v95;
  v50 = (v34 + v35[14]);
  *v50 = v40;
  v50[1] = v42;
  *(v34 + v35[15]) = v96;
  v51 = (v34 + v35[16]);
  *v51 = v97;
  v51[1] = v98;
  v52 = (v34 + v35[17]);
  *v52 = v43;
  v52[1] = v45;
  *(v34 + v35[18]) = v105;
  sub_1D5C10BE0(v34, v99, type metadata accessor for PuzzleDatastoreInfo);
  type metadata accessor for PuzzleDatastore();
  swift_allocObject();
  v53 = sub_1D67AFAA8(v99);
  if (v107)
  {
    v54 = *(v0 + 512);
    v55 = *(v0 + 456);
    v56 = *(v0 + 400);
    sub_1D5FE40F0(*(v0 + 392), type metadata accessor for PuzzleDatastoreInfo);
    sub_1D5FE40F0(v56, sub_1D5FE3DC4);
    sub_1D5FE40F0(v54, type metadata accessor for PuzzleResourceSource);
    sub_1D5FE40F0(v55, type metadata accessor for PuzzleResource);

    v57 = *(v0 + 8);
  }

  else
  {
    v108 = v53;
    v58 = sub_1D725C3FC();
    v59 = sub_1D7262EDC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 536);
      v61 = *(v0 + 512);
      v62 = *(v0 + 392);
      v106 = *(v0 + 400);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v109 = v64;
      *v63 = 136315138;
      v65 = (CACurrentMediaTime() - v60) * 1000.0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1D7273AE0;
      v67 = MEMORY[0x1E69E6438];
      *(v66 + 56) = MEMORY[0x1E69E63B0];
      *(v66 + 64) = v67;
      *(v66 + 32) = v65 / 1000.0;
      v68 = sub_1D72620BC();
      v70 = v69;

      v71 = sub_1D5BC5100(v68, v70, &v109);

      *(v63 + 4) = v71;
      _os_log_impl(&dword_1D5B42000, v58, v59, "PuzzleDataManager: Finished assembling puzzle data duration=%s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1DA6FD500](v64, -1, -1);
      MEMORY[0x1DA6FD500](v63, -1, -1);

      sub_1D5FE40F0(v62, type metadata accessor for PuzzleDatastoreInfo);
      sub_1D5FE40F0(v106, sub_1D5FE3DC4);
      v72 = v61;
    }

    else
    {
      v73 = *(v0 + 512);
      v75 = *(v0 + 392);
      v74 = *(v0 + 400);

      sub_1D5FE40F0(v75, type metadata accessor for PuzzleDatastoreInfo);
      sub_1D5FE40F0(v74, sub_1D5FE3DC4);
      v72 = v73;
    }

    sub_1D5FE40F0(v72, type metadata accessor for PuzzleResourceSource);
    v76 = *(v0 + 568);
    v77 = *(v0 + 472);
    v79 = *(v0 + 456);
    v78 = *(v0 + 464);
    v80 = *(v0 + 344);
    v81 = *(*(v0 + 432) + 20);
    v82 = type metadata accessor for PuzzleData();
    (*(v77 + 16))(&v80[*(v82 + 20)], v79 + v81, v78);
    *v80 = v76;
    *&v80[*(v82 + 24)] = v108;
    swift_unknownObjectRetain();
    sub_1D5FE40F0(v79, type metadata accessor for PuzzleResource);

    v57 = *(v0 + 8);
  }

  return v57();
}

uint64_t sub_1D5FDB424()
{
  sub_1D5FE40F0(*(v0 + 512), type metadata accessor for PuzzleResourceSource);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FDB538()
{
  v60 = v0;
  v1 = *(v0 + 608);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 608);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v59[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D726497C();
    v10 = sub_1D5BC5100(v8, v9, v59);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Failed to get puzzle statistics with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v0 + 608);

    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 592) != 0;
  *(v0 + 624) = 0;
  *(v0 + 816) = v12;
  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v59[0] = v16;
    *v15 = 136315394;
    v17 = *(v0 + 536);
    v18 = sub_1D5BC5100(7104878, 0xE300000000000000, v59);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = (CACurrentMediaTime() - v17) * 1000.0;
    *(v0 + 240) = 0;
    *(v0 + 248) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D7273AE0;
    v21 = MEMORY[0x1E69E6438];
    *(v20 + 56) = MEMORY[0x1E69E63B0];
    *(v20 + 64) = v21;
    *(v20 + 32) = v19 / 1000.0;
    v22 = sub_1D72620BC();
    v24 = v23;

    v25 = sub_1D5BC5100(v22, v24, v59);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1D5B42000, v13, v14, "PuzzleDataManager: Fetched puzzle statistics: %s duration=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v26 = *(*(v0 + 360) + *(v0 + 576));
  *(v0 + 632) = v26;
  if (v26)
  {
    v27 = *(v0 + 172);
    *(v0 + 152) = *(v0 + 520);
    *(v0 + 168) = v27;
    swift_unknownObjectRetain();
    v28 = swift_task_alloc();
    *(v0 + 640) = v28;
    *v28 = v0;
    v28[1] = sub_1D5FD9E88;
    v29 = *(v0 + 456);

    return sub_1D5FDD544(v26, v29, v0 + 152);
  }

  else
  {
    *(v0 + 672) = 0u;
    v31 = sub_1D725C3FC();
    v32 = sub_1D7262EDC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 536);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v59[0] = v35;
      *v34 = 136315394;
      v36 = sub_1D5BC5100(7104878, 0xE300000000000000, v59);

      *(v34 + 4) = v36;
      *(v34 + 12) = 2080;
      v37 = (CACurrentMediaTime() - v33) * 1000.0;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1D7273AE0;
      v39 = MEMORY[0x1E69E6438];
      *(v38 + 56) = MEMORY[0x1E69E63B0];
      *(v38 + 64) = v39;
      *(v38 + 32) = v37 / 1000.0;
      v40 = sub_1D72620BC();
      v42 = v41;

      v43 = sub_1D5BC5100(v40, v42, v59);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1D5B42000, v31, v32, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v35, -1, -1);
      MEMORY[0x1DA6FD500](v34, -1, -1);
    }

    v44 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
    v45 = v44[4];
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v46 = PuzzleResourceSource.identifier.getter();
    v47 = (*(*(v45 + 8) + 56))(v46);

    if (v47)
    {
      sub_1D5FDDE24(v59);

      v48 = v59[0];
      v49 = v59[1];
      v50 = v59[2];
      v51 = v59[3];
      v52 = v59[4];
      v53 = v59[5];
    }

    else
    {
      v52 = xmmword_1D728CF30;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v53 = 0uLL;
    }

    *(v0 + 752) = v52;
    *(v0 + 768) = v53;
    *(v0 + 720) = v50;
    *(v0 + 736) = v51;
    *(v0 + 688) = v48;
    *(v0 + 704) = v49;
    v54 = *(v0 + 360);
    sub_1D5FDE158(v54, *(v0 + 400));
    v55 = *(v54 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
    ObjectType = swift_getObjectType();
    v58 = (*(v55 + 40) + **(v55 + 40));
    v57 = swift_task_alloc();
    *(v0 + 784) = v57;
    *v57 = v0;
    v57[1] = sub_1D5FDA3E8;

    return v58(ObjectType, v55);
  }
}

uint64_t sub_1D5FDBD2C()
{
  v42 = v0;
  v1 = *(v0 + 648);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 648);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v41[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D726497C();
    v10 = sub_1D5BC5100(v8, v9, v41);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Failed to obtain thumbnail small url with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 648);
  }

  *(v0 + 672) = 0u;
  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EDC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 536);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v41[0] = v16;
    *v15 = 136315394;
    v17 = sub_1D5BC5100(7104878, 0xE300000000000000, v41);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    v18 = (CACurrentMediaTime() - v14) * 1000.0;
    *(v0 + 224) = 0;
    *(v0 + 232) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    v20 = MEMORY[0x1E69E6438];
    *(v19 + 56) = MEMORY[0x1E69E63B0];
    *(v19 + 64) = v20;
    *(v19 + 32) = v18 / 1000.0;
    v21 = sub_1D72620BC();
    v23 = v22;

    v24 = sub_1D5BC5100(v21, v23, v41);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleDataManager: Fetched puzzle small thumbnail url: %s duration=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v25 = (*(v0 + 360) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  v26 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v27 = PuzzleResourceSource.identifier.getter();
  v28 = (*(*(v26 + 8) + 56))(v27);

  if (v28)
  {
    sub_1D5FDDE24(v41);

    v29 = v41[0];
    v30 = v41[1];
    v31 = v41[2];
    v32 = v41[3];
    v33 = v41[4];
    v34 = v41[5];
  }

  else
  {
    v33 = xmmword_1D728CF30;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v34 = 0uLL;
  }

  *(v0 + 752) = v33;
  *(v0 + 768) = v34;
  *(v0 + 720) = v31;
  *(v0 + 736) = v32;
  *(v0 + 688) = v29;
  *(v0 + 704) = v30;
  v35 = *(v0 + 360);
  sub_1D5FDE158(v35, *(v0 + 400));
  v36 = *(v35 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleGameCenterService + 8);
  ObjectType = swift_getObjectType();
  v40 = (*(v36 + 40) + **(v36 + 40));
  v38 = swift_task_alloc();
  *(v0 + 784) = v38;
  *v38 = v0;
  v38[1] = sub_1D5FDA3E8;

  return v40(ObjectType, v36);
}

uint64_t sub_1D5FDC23C()
{
  v115 = v0;
  v1 = *(v0 + 800);
  v2 = v1;
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 800);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v113 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D726497C();
    v10 = sub_1D5BC5100(v8, v9, &v113);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleDataManager: Failed to get related puzzles info with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 800);
  }

  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 536);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v113 = v16;
    *v15 = 136315138;
    v17 = (CACurrentMediaTime() - v14) * 1000.0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = MEMORY[0x1E69E6438];
    *(v18 + 56) = MEMORY[0x1E69E63B0];
    *(v18 + 64) = v19;
    *(v18 + 32) = v17 / 1000.0;
    v20 = sub_1D72620BC();
    v22 = v21;

    v23 = sub_1D5BC5100(v20, v22, &v113);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_1D5B42000, v12, v13, "PuzzleDataManager: Fetched related puzzles info duration=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v24 = *(v0 + 360);
  sub_1D5C10BE0(*(v0 + 456), *(v0 + 440), type metadata accessor for PuzzleResource);
  v25 = [*(v24 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v25, v25 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
  }

  v26 = v114;
  *(v0 + 16) = v113;
  *(v0 + 32) = v26;
  if (*(v0 + 40))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v27 = *(v0 + 312);
      v28 = [v27 integerValue];
      if (v28 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1D5EBD03C(v0 + 16);
  }

  v27 = 0;
  v28 = 0;
LABEL_15:
  if (objc_getAssociatedObject(v25, ~v28))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
  }

  v29 = v114;
  *(v0 + 48) = v113;
  *(v0 + 64) = v29;
  if (*(v0 + 72))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v30 = *(v0 + 304);
      v31 = [v30 integerValue];

      v32 = v31 + 21;
      goto LABEL_23;
    }
  }

  else
  {
    sub_1D5EBD03C(v0 + 48);
  }

LABEL_22:

  v32 = 21;
LABEL_23:
  v112 = v32;
  v33 = *(v0 + 568);
  v34 = *(v0 + 172);
  v35 = *(v0 + 528);
  v36 = *(v0 + 520);
  v37 = *(v0 + 360);
  v38 = sub_1D5FDEB3C(v33);
  v39 = *(v37 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleTypeSettings);
  sub_1D5FE3DF8(v36, v35, v34);
  v40 = [objc_msgSend(v33 puzzleType)];
  swift_unknownObjectRelease();
  if (!v40)
  {
    sub_1D726207C();
    v40 = sub_1D726203C();
  }

  v41 = [v39 settingsDataForPuzzleTypeID_];

  if (v41)
  {
    v42 = sub_1D725867C();
    v108 = v43;
    v110 = v42;
  }

  else
  {
    v108 = 0xF000000000000000;
    v110 = 0;
  }

  v104 = *(v0 + 817);
  v105 = *(v0 + 672);
  v106 = *(v0 + 680);
  v103 = *(v0 + 816);
  v102 = *(v0 + 172);
  v100 = *(v0 + 520);
  v101 = *(v0 + 528);
  v97 = *(v0 + 440);
  v45 = *(v0 + 392);
  v44 = *(v0 + 400);
  v46 = *(v0 + 376);
  v107 = *(v0 + 384);
  v95 = *(v0 + 720);
  v96 = *(v0 + 688);
  v92 = *(v0 + 736);
  v93 = *(v0 + 704);
  v94 = *(v0 + 752);
  v91 = *(v0 + 768);
  v47 = sub_1D5FDEDB8();
  v98 = v48;
  v99 = v47;
  type metadata accessor for PuzzleStatsInfo();
  swift_allocObject();

  v50 = PuzzleStatsInfo.init(statistics:)(v49);
  sub_1D5C10BE0(v44, v45 + v46[12], sub_1D5FE3DC4);
  v51 = sub_1D5FDF3D4();
  v53 = v52;
  v54 = sub_1D5FDF918();
  v56 = v55;
  sub_1D5FE3EB4(v97, v45, type metadata accessor for PuzzleResource);
  *(v45 + v46[5]) = ((v112 ^ v28) & 1) == 0;
  *(v45 + v46[6]) = v38 & 1;
  v57 = (v45 + v46[7]);
  *v57 = v96;
  v57[1] = v93;
  v57[2] = v95;
  v57[3] = v92;
  v57[4] = v94;
  v57[5] = v91;
  v58 = v45 + v46[8];
  *v58 = v100;
  *(v58 + 8) = v101;
  *(v58 + 16) = v102;
  v59 = (v45 + v46[9]);
  *v59 = v110;
  v59[1] = v108;
  v60 = (v45 + v46[10]);
  *v60 = v99;
  v60[1] = v98;
  *(v45 + v46[11]) = v50;
  *(v45 + v46[13]) = v103;
  v61 = (v45 + v46[14]);
  *v61 = v51;
  v61[1] = v53;
  *(v45 + v46[15]) = v104;
  v62 = (v45 + v46[16]);
  *v62 = v105;
  v62[1] = v106;
  v63 = (v45 + v46[17]);
  *v63 = v54;
  v63[1] = v56;
  *(v45 + v46[18]) = 0;
  sub_1D5C10BE0(v45, v107, type metadata accessor for PuzzleDatastoreInfo);
  type metadata accessor for PuzzleDatastore();
  swift_allocObject();
  v111 = sub_1D67AFAA8(v107);
  v64 = sub_1D725C3FC();
  v65 = sub_1D7262EDC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = *(v0 + 536);
    v67 = *(v0 + 512);
    v68 = *(v0 + 392);
    v109 = *(v0 + 400);
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v113 = v70;
    *v69 = 136315138;
    v71 = (CACurrentMediaTime() - v66) * 1000.0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    MEMORY[0x1DA6F9910](37, 0xE100000000000000);
    sub_1D7262ABC();
    MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
    sub_1D5FE4648(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1D7273AE0;
    v73 = MEMORY[0x1E69E6438];
    *(v72 + 56) = MEMORY[0x1E69E63B0];
    *(v72 + 64) = v73;
    *(v72 + 32) = v71 / 1000.0;
    v74 = sub_1D72620BC();
    v76 = v75;

    v77 = sub_1D5BC5100(v74, v76, &v113);

    *(v69 + 4) = v77;
    _os_log_impl(&dword_1D5B42000, v64, v65, "PuzzleDataManager: Finished assembling puzzle data duration=%s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1DA6FD500](v70, -1, -1);
    MEMORY[0x1DA6FD500](v69, -1, -1);

    sub_1D5FE40F0(v68, type metadata accessor for PuzzleDatastoreInfo);
    sub_1D5FE40F0(v109, sub_1D5FE3DC4);
    v78 = v67;
  }

  else
  {
    v79 = *(v0 + 512);
    v81 = *(v0 + 392);
    v80 = *(v0 + 400);

    sub_1D5FE40F0(v81, type metadata accessor for PuzzleDatastoreInfo);
    sub_1D5FE40F0(v80, sub_1D5FE3DC4);
    v78 = v79;
  }

  sub_1D5FE40F0(v78, type metadata accessor for PuzzleResourceSource);
  v82 = *(v0 + 568);
  v83 = *(v0 + 472);
  v85 = *(v0 + 456);
  v84 = *(v0 + 464);
  v86 = *(v0 + 344);
  v87 = *(*(v0 + 432) + 20);
  v88 = type metadata accessor for PuzzleData();
  (*(v83 + 16))(&v86[*(v88 + 20)], v85 + v87, v84);
  *v86 = v82;
  *&v86[*(v88 + 24)] = v111;
  swift_unknownObjectRetain();
  sub_1D5FE40F0(v85, type metadata accessor for PuzzleResource);

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1D5FDCED8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D7263F5C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1D5FE3F1C(0);
  v2[8] = swift_task_alloc();
  v4 = sub_1D7263F4C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5FDD02C, 0, 0);
}

uint64_t sub_1D5FDD02C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v16 = *(v0 + 24);
  sub_1D7263F2C();
  sub_1D7263F3C();
  v6 = *(v4 + 8);
  *(v0 + 104) = v6;
  *(v0 + 112) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  (*(v4 + 16))(v5, v1, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_1D726496C();
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v7[1] = vextq_s8(v16, v16, 8uLL);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  sub_1D5FE4648(0, &unk_1EC882150, sub_1D5FE4420, MEMORY[0x1E69E6720]);
  v10 = v9;
  v11 = sub_1D5FE3FFC(&qword_1EDF04298, 255, MEMORY[0x1E69E8820]);
  *v8 = v0;
  v8[1] = sub_1D5FDD238;
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 40);

  return MEMORY[0x1EEE44790](v0 + 16, v12, v13, &unk_1D728D0E8, v7, v14, v10, v11);
}

uint64_t sub_1D5FDD238()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  sub_1D5FE40F0(v2, sub_1D5FE3F1C);
  if (v0)
  {
    v6 = sub_1D5FDD4A8;
  }

  else
  {
    v6 = sub_1D5FDD3FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5FDD3FC()
{
  (*(v0 + 104))(*(v0 + 96), *(v0 + 72));
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5FDD4A8()
{
  (*(v0 + 104))(*(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FDD544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  sub_1D5B4D3E0();
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_1D72585BC();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = *a3;
  *(v4 + 128) = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D5FDD694, 0, 0);
}

uint64_t sub_1D5FDD694()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_1D5FE0CD4(*(v0 + 32), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 131);
    sub_1D5FE40F0(*(v0 + 56), sub_1D5B4D3E0);
    if (v4)
    {
      v5 = swift_task_alloc();
      *(v0 + 120) = v5;
      *v5 = v0;
      v5[1] = sub_1D5FDDC44;
      v6 = *(v0 + 32);

      return sub_1D5FE0670(v6);
    }

    sub_1D5FE3E0C(*(v0 + 104), *(v0 + 112), *(v0 + 128), 0);
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725C42C();
    __swift_project_value_buffer(v33, qword_1EDFFCFA8);
    v34 = sub_1D725C3FC();
    v35 = sub_1D7262EDC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 128);
    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D5B42000, v34, v35, "PuzzleDataManager: Skipping fetch thumbnailSmallUrl as cached data not available in fullScreen modal launchMode", v40, 2u);
      MEMORY[0x1DA6FD500](v40, -1, -1);
    }

    sub_1D5FE3E2C(v39, v38, v37);

    v11 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  (*(v9 + 32))(*(v0 + 96), *(v0 + 56), v10);
  v11 = sub_1D725841C();
  v13 = v12;
  type metadata accessor for PuzzleResource();
  sub_1D72584BC();
  sub_1D725849C();
  v14 = *(v9 + 8);
  v14(v8, v10);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  sub_1D725851C();
  v17 = sub_1D726203C();

  v18 = [v16 fileExistsAtPath_];

  if (v18)
  {
    v19 = [v15 defaultManager];
    v20 = sub_1D725844C();
    *(v0 + 24) = 0;
    v21 = [v19 removeItemAtURL:v20 error:v0 + 24];

    v22 = *(v0 + 24);
    if (!v21)
    {
      v46 = *(v0 + 88);
      v45 = *(v0 + 96);
      v47 = *(v0 + 64);
      v48 = v22;

      sub_1D725829C();

      swift_willThrow();
      v14(v46, v47);
      v43 = v45;
      v44 = v47;
      goto LABEL_21;
    }

    v23 = v22;
  }

  v24 = [v15 defaultManager];
  v25 = sub_1D725844C();
  v26 = sub_1D725844C();
  *(v0 + 16) = 0;
  v27 = [v24 copyItemAtURL:v25 toURL:v26 error:v0 + 16];

  v28 = *(v0 + 16);
  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v31 = *(v0 + 64);
  if (v27)
  {
    v32 = v28;
    v14(v30, v31);
    v14(v29, v31);
LABEL_16:

    v41 = *(v0 + 8);

    return v41(v11, v13);
  }

  v42 = v28;

  sub_1D725829C();

  swift_willThrow();
  v14(v30, v31);
  v43 = v29;
  v44 = v31;
LABEL_21:
  v14(v43, v44);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1D5FDDC44(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_1D5FDDE24(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5B5B2A0();
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [v1 progressLevel];
  v9 = [v1 score];
  v10 = v9;
  if (v9)
  {
    v40 = [v9 integerValue];
  }

  else
  {
    v40 = 0;
  }

  v11 = [v1 scoreType];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 integerValue];

    if (v13 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (!v13)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 2;
  }

  v39 = v14;
  v15 = [v2 rankID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D726207C();
    v37 = v18;
    v38 = v17;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v19 = [v2 usedReveal];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 BOOLValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v2 playDuration];
  v23 = [v2 completedDate];
  if (v23)
  {
    sub_1D72588BC();

    v24 = sub_1D725891C();
    (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  }

  else
  {
    v25 = sub_1D725891C();
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  }

  sub_1D5FE40F0(v8, sub_1D5B5B2A0);
  v26 = [v2 progressData];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D725867C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v31 = [v2 progressMovesDescription];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1D726207C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *a1 = v41;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23 != 0;
  *(a1 + 24) = v28;
  *(a1 + 32) = v30;
  *(a1 + 40) = v40;
  *(a1 + 48) = v10 == 0;
  *(a1 + 49) = v39;
  v36 = v37;
  *(a1 + 56) = v38;
  *(a1 + 64) = v36;
  *(a1 + 72) = v21;
  *(a1 + 80) = v33;
  *(a1 + 88) = v35;
}

uint64_t sub_1D5FDE158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), *(a1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24));
  v9 = PuzzleResourceSource.identifier.getter();
  v10 = (*(*(v8 + 8) + 56))(v9);

  if (v10)
  {
    v11 = [v10 firstCompletedDate];
    if (v11)
    {
      v12 = v11;
      sub_1D72588BC();

      v13 = sub_1D725891C();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    }

    else
    {
      v17 = sub_1D725891C();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    v18 = [v10 firstPlayDuration];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 integerValue];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v10 bestScore];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 integerValue];
    }

    else
    {
      v23 = 0;
    }

    sub_1D5FE3EB4(v7, a2, sub_1D5B5B2A0);
    v24 = type metadata accessor for PuzzleHistoryInfo();
    v25 = a2 + *(v24 + 20);
    *v25 = v20;
    *(v25 + 8) = v19 == 0;
    v26 = a2 + *(v24 + 24);
    *v26 = v23;
    *(v26 + 8) = v22 == 0;
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }

  else
  {
    v14 = type metadata accessor for PuzzleHistoryInfo();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1D5FDE448()
{
  v1[3] = v0;
  v2 = sub_1D7263F5C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1D5FE3F1C(0);
  v1[7] = swift_task_alloc();
  v3 = sub_1D7263F4C();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5FDE59C, 0, 0);
}

uint64_t sub_1D5FDE59C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  v0[12] = v1;
  if (!v1)
  {
LABEL_4:

    v2 = v0[1];

    return v2(0);
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x20000) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[3];
  sub_1D7263F2C();
  sub_1D7263F3C();
  v10 = *(v7 + 8);
  v0[13] = v10;
  v0[14] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  (*(v7 + 16))(v8, v4, v6);
  (*(v7 + 56))(v8, 0, 1, v6);
  sub_1D726496C();
  v11 = swift_task_alloc();
  v0[15] = v11;
  *(v11 + 16) = v9;
  v12 = swift_task_alloc();
  v0[16] = v12;
  sub_1D5FE4258();
  v14 = v13;
  v15 = sub_1D5FE3FFC(&qword_1EDF04298, 255, MEMORY[0x1E69E8820]);
  *v12 = v0;
  v12[1] = sub_1D5FDE814;
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[4];

  return MEMORY[0x1EEE44790](v0 + 2, v16, v17, &unk_1D728D0C8, v11, v18, v14, v15);
}

uint64_t sub_1D5FDE814()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  sub_1D5FE40F0(v2, sub_1D5FE3F1C);
  if (v0)
  {
    v6 = sub_1D5FDEA84;
  }

  else
  {
    v6 = sub_1D5FDE9D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5FDE9D8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  swift_unknownObjectRelease();
  v1(v2, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D5FDEA84()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  swift_unknownObjectRelease();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D5FDEB3C(void *a1)
{
  v2 = v1;
  if (![a1 isPaid])
  {
    return 1;
  }

  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v4);
  v6 = [a1 identifier];
  v7 = sub_1D726207C();
  v9 = v8;

  LOBYTE(v6) = (*(*(v5 + 8) + 8))(v7, v9, v4);

  if (v6)
  {
    return 1;
  }

  v11 = [*(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v12 = v16;
      v13 = [v16 integerValue];
      if (v13 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_1D5EBD03C(&v19);
  }

  v12 = 0;
  v13 = 0;
LABEL_13:
  if (objc_getAssociatedObject(v11, ~v13))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (*(&v18 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v14 = v16;
      v15 = [v14 integerValue];

      return (v15 ^ v13) & 1;
    }
  }

  else
  {
    sub_1D5EBD03C(&v19);
  }

LABEL_20:

  return v13 & 1;
}

void *sub_1D5FDEDB8()
{
  result = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (result)
  {
    v2 = [objc_msgSend(result puzzleType)];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_1D5B5534C(0, &qword_1EDF043B8);
      v3 = sub_1D7261D3C();

      v4 = 0;
      v5 = 1 << *(v3 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v3 + 64);
      v8 = (v5 + 63) >> 6;
      v9 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v10 = v4;
        if (!v7)
        {
          break;
        }

LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v4 << 6);
        v13 = (*(v3 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(v3 + 56) + 8 * v12);

        v17 = [swift_unknownObjectRetain() navigationBarBackgroundColor];
        if (v17)
        {
          v62 = v9;
          v18 = v17;
          v19 = [v17 hex];

          v20 = sub_1D726207C();
          v63 = v21;
          v64 = v20;

          v68 = MEMORY[0x1E69E6158];
          *&v67 = v15;
          *(&v67 + 1) = v14;
          sub_1D5B7C390(&v67, v66);
          v22 = MEMORY[0x1E69E7CC8];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = sub_1D5B69D90(0x6E6564496B6E6172, 0xEE00726569666974);
          v26 = v22[2];
          v27 = (v24 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_43;
          }

          v29 = v24;
          if (v22[3] >= v28)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C06BE0();
            }
          }

          else
          {
            sub_1D5BAFF10(v28, isUniquelyReferenced_nonNull_native);
            v30 = sub_1D5B69D90(0x6E6564496B6E6172, 0xEE00726569666974);
            if ((v29 & 1) != (v31 & 1))
            {
              goto LABEL_47;
            }

            v25 = v30;
          }

          if (v29)
          {
            v32 = (v22[7] + 32 * v25);
            __swift_destroy_boxed_opaque_existential_1(v32);
            sub_1D5B7C390(v66, v32);
          }

          else
          {
            v22[(v25 >> 6) + 8] |= 1 << v25;
            v33 = (v22[6] + 16 * v25);
            strcpy(v33, "rankIdentifier");
            v33[15] = -18;
            sub_1D5B7C390(v66, (v22[7] + 32 * v25));
            v34 = v22[2];
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_45;
            }

            v22[2] = v36;
          }

          v68 = MEMORY[0x1E69E6158];
          *&v67 = v64;
          *(&v67 + 1) = v63;
          sub_1D5B7C390(&v67, v66);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v38 = sub_1D5B69D90(0xD00000000000001CLL, 0x80000001D73C5A70);
          v40 = v22[2];
          v41 = (v39 & 1) == 0;
          v35 = __OFADD__(v40, v41);
          v42 = v40 + v41;
          if (v35)
          {
            goto LABEL_44;
          }

          v43 = v39;
          if (v22[3] >= v42)
          {
            if ((v37 & 1) == 0)
            {
              v60 = v38;
              sub_1D5C06BE0();
              v38 = v60;
            }
          }

          else
          {
            sub_1D5BAFF10(v42, v37);
            v38 = sub_1D5B69D90(0xD00000000000001CLL, 0x80000001D73C5A70);
            if ((v43 & 1) != (v44 & 1))
            {
              goto LABEL_47;
            }
          }

          if (v43)
          {
            v45 = (v22[7] + 32 * v38);
            __swift_destroy_boxed_opaque_existential_1(v45);
            sub_1D5B7C390(v66, v45);
          }

          else
          {
            v22[(v38 >> 6) + 8] |= 1 << v38;
            v46 = (v22[6] + 16 * v38);
            *v46 = 0xD00000000000001CLL;
            v46[1] = 0x80000001D73C5A70;
            sub_1D5B7C390(v66, (v22[7] + 32 * v38));
            v47 = v22[2];
            v35 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v35)
            {
              goto LABEL_46;
            }

            v22[2] = v48;
          }

          v49 = [v16 navigationBarBackgroundDarkModeColor];
          if (v49)
          {
            v50 = v49;
            v51 = [v49 hex];

            v52 = sub_1D726207C();
            v54 = v53;

            v68 = MEMORY[0x1E69E6158];
            *&v67 = v52;
            *(&v67 + 1) = v54;
            sub_1D5B7C390(&v67, v66);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            sub_1D5BAFB24(v66, 0xD000000000000024, 0x80000001D73C5A90, v55);
          }

          v56 = v62;
          v65 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1D69916B4(0, v62[2] + 1, 1, v62);
          }

          v58 = v56[2];
          v57 = v56[3];
          v59 = v56;
          if (v58 >= v57 >> 1)
          {
            v59 = sub_1D69916B4((v57 > 1), v58 + 1, 1, v56);
          }

          swift_unknownObjectRelease();
          v59[2] = v58 + 1;
          v9 = v59;
          v59[v58 + 4] = v65;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      while (1)
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v4 >= v8)
        {

          sub_1D5BB0DB0();
          v61 = sub_1D72626BC();

          return v61;
        }

        v7 = *(v3 + 64 + 8 * v4);
        ++v10;
        if (v7)
        {
          goto LABEL_10;
        }
      }

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
      result = sub_1D726493C();
      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5FDF3D4()
{
  v1 = v0;
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (!v7)
  {
    return 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 2) != 0 || (v8 = [objc_msgSend(v7 puzzleType)], swift_unknownObjectRelease(), !v8))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v56 = sub_1D726267C();

  v9 = [v7 identifier];
  v10 = sub_1D726207C();
  v55 = v11;

  v53 = v7;
  v12 = [objc_msgSend(v7 puzzleType)];
  swift_unknownObjectRelease();
  v13 = sub_1D726207C();
  v15 = v14;

  v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
  v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
  v50 = (v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v16);
  sub_1D72587BC();
  v18 = *(v17 + 56);
  v51 = v13;
  v52 = v15;
  v19 = v18(v13, v15, v6, v16, v17);
  (*(v3 + 8))(v6, v2);
  v20 = sub_1D5B86020(v19);
  v21 = v56;

  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v21 + 32;
    v26 = v20 + 56;
    v54 = MEMORY[0x1E69E7CC0];
    v27 = v55;
    while (1)
    {
      while (1)
      {
        if (v24 >= *(v21 + 16))
        {
          __break(1u);
          return result;
        }

        v28 = (v25 + 16 * v24);
        v29 = *v28;
        v30 = v28[1];
        ++v24;
        if (*v28 != v10 || v30 != v27)
        {
          result = sub_1D72646CC();
          if ((result & 1) == 0)
          {
            break;
          }
        }

LABEL_7:
        if (v24 == v23)
        {
          goto LABEL_33;
        }
      }

      if (*(v20 + 16))
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v32 = sub_1D7264A5C();
        v33 = -1 << *(v20 + 32);
        v34 = v32 & ~v33;
        if ((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = (*(v20 + 48) + 16 * v34);
            v37 = *v36 == v29 && v36[1] == v30;
            if (v37 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v27 = v55;
          v21 = v56;
          goto LABEL_7;
        }
      }

      else
      {
      }

LABEL_23:
      v38 = v54;
      result = swift_isUniquelyReferenced_nonNull_native();
      v57 = v38;
      if ((result & 1) == 0)
      {
        result = sub_1D5BFC364(0, *(v38 + 16) + 1, 1);
        v38 = v57;
      }

      v21 = v56;
      v39 = v38;
      v40 = *(v38 + 16);
      v41 = *(v39 + 24);
      v42 = v40 + 1;
      if (v40 >= v41 >> 1)
      {
        v54 = v40 + 1;
        result = sub_1D5BFC364((v41 > 1), v40 + 1, 1);
        v42 = v54;
        v21 = v56;
        v39 = v57;
      }

      *(v39 + 16) = v42;
      v54 = v39;
      v43 = v39 + 16 * v40;
      *(v43 + 32) = v29;
      *(v43 + 40) = v30;
      v27 = v55;
      if (v24 == v23)
      {
        goto LABEL_33;
      }
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
  v27 = v55;
LABEL_33:

  if (*(v54 + 16))
  {
    v44 = *(v54 + 32);

    swift_unknownObjectRelease();

    return v44;
  }

  else
  {

    v45 = v50[3];
    v46 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v45);
    sub_1D5B5A5C4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7273AE0;
    *(v47 + 32) = v10;
    *(v47 + 40) = v27;
    v48 = (*(v46 + 80))(v51, v52, v47, v45, v46);
    swift_unknownObjectRelease();

    return v48;
  }
}

void *sub_1D5FDF918()
{
  result = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (result)
  {
    v2 = [result puzzleType];
    v3 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_appConfigurationManager) appConfiguration)];
    swift_unknownObjectRelease();
    v4 = [v3 puzzleRanksByPuzzleTypeID];

    if (v4)
    {
      sub_1D5FE4150(0, &qword_1EDF04A60, &qword_1EDF04670, 0x1E69B5520, MEMORY[0x1E69E62F8]);
      v5 = sub_1D7261D3C();

      v6 = [v2 identifier];
      v7 = sub_1D726207C();
      v9 = v8;

      if (*(v5 + 16))
      {
        v10 = sub_1D5B69D90(v7, v9);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v5 + 56) + 8 * v10);

          if (v13 >> 62)
          {
LABEL_52:
            v14 = sub_1D7263BFC();
            if (v14)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
LABEL_7:
              v15 = 0;
              v16 = MEMORY[0x1E69E7CC0];
              v17 = MEMORY[0x1E69E7CC8];
              do
              {
                if ((v13 & 0xC000000000000001) != 0)
                {
                  v18 = MEMORY[0x1DA6FB460](v15, v13);
                }

                else
                {
                  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_51;
                  }

                  v18 = *(v13 + 8 * v15 + 32);
                }

                v19 = v18;
                if (__OFADD__(v15, 1))
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
                  goto LABEL_52;
                }

                v65 = v15 + 1;
                v20 = [v18 identifier];
                v21 = sub_1D726207C();
                v23 = v22;

                v68 = MEMORY[0x1E69E6158];
                *&v67 = v21;
                *(&v67 + 1) = v23;
                sub_1D5B7C390(&v67, v66);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v26 = sub_1D5B69D90(0x696669746E656469, 0xEA00000000007265);
                v27 = v17[2];
                v28 = (v25 & 1) == 0;
                v29 = v27 + v28;
                if (__OFADD__(v27, v28))
                {
                  goto LABEL_47;
                }

                v30 = v25;
                if (v17[3] >= v29)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v33 = v17;
                    if (v25)
                    {
                      goto LABEL_21;
                    }
                  }

                  else
                  {
                    sub_1D5C06BE0();
                    v33 = v17;
                    if (v30)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
                  sub_1D5BAFF10(v29, isUniquelyReferenced_nonNull_native);
                  v31 = sub_1D5B69D90(0x696669746E656469, 0xEA00000000007265);
                  if ((v30 & 1) != (v32 & 1))
                  {
                    goto LABEL_54;
                  }

                  v26 = v31;
                  v33 = v17;
                  if (v30)
                  {
LABEL_21:
                    v38 = (v33[7] + 32 * v26);
                    __swift_destroy_boxed_opaque_existential_1(v38);
                    sub_1D5B7C390(v66, v38);
                    goto LABEL_22;
                  }
                }

                v33[(v26 >> 6) + 8] |= 1 << v26;
                v34 = (v33[6] + 16 * v26);
                *v34 = 0x696669746E656469;
                v34[1] = 0xEA00000000007265;
                sub_1D5B7C390(v66, (v33[7] + 32 * v26));
                v35 = v33[2];
                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_49;
                }

                v33[2] = v37;
LABEL_22:
                v39 = [v19 name];
                v40 = sub_1D726207C();
                v42 = v41;

                v68 = MEMORY[0x1E69E6158];
                *&v67 = v40;
                *(&v67 + 1) = v42;
                sub_1D5B7C390(&v67, v66);
                v43 = swift_isUniquelyReferenced_nonNull_native();
                v44 = sub_1D5B69D90(1701667182, 0xE400000000000000);
                v46 = v33[2];
                v47 = (v45 & 1) == 0;
                v36 = __OFADD__(v46, v47);
                v48 = v46 + v47;
                if (v36)
                {
                  goto LABEL_48;
                }

                v49 = v45;
                if (v33[3] < v48)
                {
                  sub_1D5BAFF10(v48, v43);
                  v44 = sub_1D5B69D90(1701667182, 0xE400000000000000);
                  if ((v49 & 1) != (v50 & 1))
                  {
LABEL_54:
                    result = sub_1D726493C();
                    __break(1u);
                    return result;
                  }

LABEL_27:
                  if (v49)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_32;
                }

                if (v43)
                {
                  goto LABEL_27;
                }

                v52 = v44;
                sub_1D5C06BE0();
                v44 = v52;
                if (v49)
                {
LABEL_28:
                  v51 = (v33[7] + 32 * v44);
                  __swift_destroy_boxed_opaque_existential_1(v51);
                  sub_1D5B7C390(v66, v51);
                  goto LABEL_34;
                }

LABEL_32:
                v33[(v44 >> 6) + 8] |= 1 << v44;
                v53 = (v33[6] + 16 * v44);
                *v53 = 1701667182;
                v53[1] = 0xE400000000000000;
                sub_1D5B7C390(v66, (v33[7] + 32 * v44));
                v54 = v33[2];
                v36 = __OFADD__(v54, 1);
                v55 = v54 + 1;
                if (v36)
                {
                  goto LABEL_50;
                }

                v33[2] = v55;
LABEL_34:
                v56 = [v19 icon];
                if (v56)
                {
                  v57 = v56;
                  v58 = sub_1D726207C();
                  v60 = v59;

                  v68 = MEMORY[0x1E69E6158];
                  *&v67 = v58;
                  *(&v67 + 1) = v60;
                  sub_1D5B7C390(&v67, v66);
                  v61 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1D5BAFB24(v66, 1852793705, 0xE400000000000000, v61);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v16 = sub_1D69916B4(0, v16[2] + 1, 1, v16);
                }

                v63 = v16[2];
                v62 = v16[3];
                if (v63 >= v62 >> 1)
                {
                  v16 = sub_1D69916B4((v62 > 1), v63 + 1, 1, v16);
                }

                v16[2] = v63 + 1;
                v16[v63 + 4] = v33;
                ++v15;
              }

              while (v65 != v14);
            }
          }

          sub_1D5BB0DB0();
          v64 = sub_1D72626BC();

          swift_unknownObjectRelease();
          return v64;
        }
      }

      else
      {
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_1D5FDFFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FDFFF0, 0, 0);
}

uint64_t sub_1D5FDFFF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[6] = v5;
  sub_1D5FE4648(0, &unk_1EC882150, sub_1D5FE4420, MEMORY[0x1E69E6720]);
  v7 = v6;
  *v5 = v0;
  v5[1] = sub_1D5FE0118;
  v8 = v0[2];

  return MEMORY[0x1EEE44AD8](v8, &unk_1D728D100, v3, v7);
}

uint64_t sub_1D5FE0118()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5E6E770, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5FE0254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE0278, 0, 0);
}

uint64_t sub_1D5FE0278()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleStatsService;
  v0[5] = OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleStatsService;
  v4 = *(v1 + v2 + 24);
  v3 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D5FE0340;

  return PuzzleStatsServiceType.updateStats()(v4, v3);
}

uint64_t sub_1D5FE0340()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5FE043C, 0, 0);
}

uint64_t sub_1D5FE043C()
{
  v1 = (v0[3] + v0[5]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D5FE0570;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1D5FE0570(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5D09DE8, 0, 0);
}

uint64_t sub_1D5FE0670(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1D7263F5C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1D5FE3F1C(0);
  v2[9] = swift_task_alloc();
  v4 = sub_1D7263F4C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5FE07C4, 0, 0);
}

uint64_t sub_1D5FE07C4()
{
  v2 = v0[6].i64[0];
  v1 = v0[6].i64[1];
  v3 = v0[5].i64[0];
  v4 = v0[5].i64[1];
  v5 = v0[4].i64[1];
  v16 = v0[2];
  sub_1D7263F2C();
  sub_1D7263F3C();
  v6 = *(v4 + 8);
  v0[7].i64[0] = v6;
  v0[7].i64[1] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  (*(v4 + 16))(v5, v1, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_1D726496C();
  v7 = swift_task_alloc();
  v0[8].i64[0] = v7;
  v7[1] = vextq_s8(v16, v16, 8uLL);
  v8 = swift_task_alloc();
  v0[8].i64[1] = v8;
  sub_1D5B5A5C4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v10 = v9;
  v11 = sub_1D5FE3FFC(&qword_1EDF04298, 255, MEMORY[0x1E69E8820]);
  *v8 = v0;
  v8[1] = sub_1D5FE09C4;
  v13 = v0[4].i64[0];
  v12 = v0[4].i64[1];
  v14 = v0[3].i64[0];

  return MEMORY[0x1EEE44790](&v0[1], v12, v13, &unk_1D728D0A8, v7, v14, v10, v11);
}

uint64_t sub_1D5FE09C4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  sub_1D5FE40F0(v2, sub_1D5FE3F1C);
  if (v0)
  {
    v6 = sub_1D5FE0C38;
  }

  else
  {
    v6 = sub_1D5FE0B88;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D5FE0B88()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1D5FE0C38()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FE0CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = sub_1D72583CC();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v116 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  v128 = v6;
  v129 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v120 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v119 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v108 - v18;
  v19 = sub_1D7258C0C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FE4648(0, &qword_1EDF43B40, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v108 - v26;
  v28 = sub_1D7258ABC();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D7258C2C();
  v121 = *(v33 - 8);
  v122 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D725891C();
  v123 = *(v37 - 8);
  v124 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v127 = a1;
  v41 = [a1 publishDate];
  if (v41)
  {
    v42 = v41;
    sub_1D72588BC();

    (*(v29 + 104))(v32, *MEMORY[0x1E6969868], v28);
    sub_1D7258ACC();
    (*(v29 + 8))(v32, v28);
    sub_1D7258CBC();
    v43 = sub_1D7258CFC();
    result = (*(*(v43 - 8) + 48))(v27, 1, v43);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7258BFC();
      (*(v20 + 104))(v23, *MEMORY[0x1E6969AB0], v19);
      v113 = v36;
      v45 = sub_1D7258C1C();
      (*(v20 + 8))(v23, v19);
      v46 = v127;
      v47 = [v127 difficulty];
      v48 = [objc_opt_self() defaultManager];
      v49 = [v48 URLsForDirectory:9 inDomains:1];
      v50 = v128;
      v51 = sub_1D726267C();

      if (*(v51 + 16))
      {
        v110 = v45;
        v108 = v47;
        v112 = v48;
        v111 = v40;
        v52 = v51 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
        v109 = *(v129 + 16);
        v109(v125, v52, v50);

        sub_1D5B5A5C4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1D7279970;
        *(v53 + 32) = 0x7954656C7A7A7570;
        *(v53 + 40) = 0xEA00000000006570;
        v54 = [objc_msgSend(v46 puzzleType)];
        swift_unknownObjectRelease();
        v55 = sub_1D726207C();
        v57 = v56;

        *(v53 + 48) = v55;
        *(v53 + 56) = v57;
        *(v53 + 64) = 0x69616E626D756874;
        *(v53 + 72) = 0xEA0000000000736CLL;
        v59 = v116;
        v58 = v117;
        v60 = v118;
        (*(v117 + 104))(v116, *MEMORY[0x1E6968F70], v118);
        sub_1D5BF4D9C();
        v61 = v119;
        sub_1D725857C();

        (*(v58 + 8))(v59, v60);
        if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x8000) != 0)
        {
          v131 = 115;
          v132 = 0xE100000000000000;
          v130 = v110;
          v80 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v80);

          MEMORY[0x1DA6F9910](95, 0xE100000000000000);
          v130 = v108;
        }

        else
        {
          v131 = 115;
          v132 = 0xE100000000000000;
          v130 = v110;
        }

        v81 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v81);

        MEMORY[0x1DA6F9910](1735290926, 0xE400000000000000);
        v82 = v113;
        v83 = v114;
        v84 = v120;
        sub_1D725848C();

        sub_1D725851C();
        v85 = sub_1D726203C();

        v86 = v112;
        v87 = [v112 fileExistsAtPath_];

        v88 = v111;
        v89 = v128;
        if (v87)
        {

          v90 = *(v129 + 8);
          v90(v61, v89);
          v90(v125, v89);
          (*(v121 + 8))(v82, v122);
          (*(v123 + 8))(v88, v124);
          v91 = v126;
          (*(v129 + 32))(v126, v84, v89);
          v92 = *(v129 + 56);
          v93 = v91;
          v94 = 0;
        }

        else
        {
          if (qword_1EDF3B838 != -1)
          {
            swift_once();
          }

          v95 = sub_1D725C42C();
          __swift_project_value_buffer(v95, qword_1EDFFCFA8);
          v109(v83, v84, v89);
          v96 = sub_1D725C3FC();
          v97 = sub_1D7262EDC();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v131 = v99;
            *v98 = 136315138;
            v100 = sub_1D725852C();
            v101 = v83;
            v103 = v102;
            v104 = v61;
            v105 = *(v129 + 8);
            v105(v101, v128);
            v106 = sub_1D5BC5100(v100, v103, &v131);

            *(v98 + 4) = v106;
            _os_log_impl(&dword_1D5B42000, v96, v97, "PuzzleDataManager: Cannot fetch thumbnailSmallUrl as file does not exist %s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v99);
            MEMORY[0x1DA6FD500](v99, -1, -1);
            MEMORY[0x1DA6FD500](v98, -1, -1);

            v105(v120, v128);
            v105(v104, v128);
            v105(v125, v128);
            v89 = v128;
            (*(v121 + 8))(v113, v122);
          }

          else
          {

            v107 = *(v129 + 8);
            v107(v83, v89);
            v107(v84, v89);
            v107(v61, v89);
            v107(v125, v89);
            (*(v121 + 8))(v82, v122);
          }

          (*(v123 + 8))(v88, v124);
          v92 = *(v129 + 56);
          v93 = v126;
          v94 = 1;
        }

        return v92(v93, v94, 1, v89);
      }

      else
      {

        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v76 = sub_1D725C42C();
        __swift_project_value_buffer(v76, qword_1EDFFCFA8);
        v77 = sub_1D725C3FC();
        v78 = sub_1D7262EBC();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_1D5B42000, v77, v78, "PuzzleDataManager: Cannot fetch thumbnailSmallUrl as documentsURL is nil", v79, 2u);
          MEMORY[0x1DA6FD500](v79, -1, -1);
        }

        (*(v121 + 8))(v113, v122);
        (*(v123 + 8))(v40, v124);
        return (*(v129 + 56))(v126, 1, 1, v50);
      }
    }
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725C42C();
    __swift_project_value_buffer(v62, qword_1EDFFCFA8);
    v63 = v127;
    swift_unknownObjectRetain();
    v64 = sub_1D725C3FC();
    v65 = sub_1D7262EDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v131 = v67;
      *v66 = 136315138;
      v68 = [v63 identifier];
      v69 = sub_1D726207C();
      v71 = v70;

      v72 = sub_1D5BC5100(v69, v71, &v131);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_1D5B42000, v64, v65, "PuzzleDataManager: Cannot fetch thumbnailSmallUrl as publishDate is nil %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1DA6FD500](v67, -1, -1);
      MEMORY[0x1DA6FD500](v66, -1, -1);
    }

    v73 = v128;
    v74 = *(v129 + 56);
    v75 = v126;

    return v74(v75, 1, 1, v73);
  }

  return result;
}

uint64_t sub_1D5FE1B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE1B30, 0, 0);
}

uint64_t sub_1D5FE1B30()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[6] = v5;
  sub_1D5B5A5C4(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v7 = v6;
  *v5 = v0;
  v5[1] = sub_1D5FE1C4C;
  v8 = v0[2];

  return MEMORY[0x1EEE44AD8](v8, &unk_1D728D0B8, v3, v7);
}

uint64_t sub_1D5FE1C4C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5FE4814, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5FE1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE1DAC, 0, 0);
}

uint64_t sub_1D5FE1DAC()
{
  v1 = (v0[3] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 144) + **(v3 + 144));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D5FE1EE4;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1D5FE1EE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D5FE2040, 0, 0);
  }
}

uint64_t sub_1D5FE2068(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE2088, 0, 0);
}

uint64_t sub_1D5FE2088()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_1D5FE4258();
  v6 = v5;
  *v4 = v0;
  v4[1] = sub_1D5FE2178;
  v7 = v0[2];

  return MEMORY[0x1EEE44AD8](v7, &unk_1D728D0D8, v2, v6);
}

uint64_t sub_1D5FE2178()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5FE22B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5FE22B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FE2318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5FE2338, 0, 0);
}

uint64_t sub_1D5FE2338()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (v1 && (v2 = [v1 relatedPuzzleIDs]) != 0)
  {
    v3 = *(v0 + 24);
    v4 = v2;
    v5 = sub_1D726267C();
    *(v0 + 32) = v5;

    v6 = (v3 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService);
    v7 = *(v3 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleService + 24);
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v12 = (*(v8 + 48) + **(v8 + 48));
    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v9[1] = sub_1D5FE2500;

    return v12(v5, v7, v8);
  }

  else
  {
    **(v0 + 16) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D5FE2500(uint64_t a1)
{
  *(*v2 + 48) = a1;

  if (v1)
  {

    v3 = sub_1D5FE28E8;
  }

  else
  {

    v3 = sub_1D5FE2650;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

char *sub_1D5FE2650()
{
  v37 = v0;
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1D69985A4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v35;
  v6 = (*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService);
  v32 = v0;
  v33 = v1 & 0xC000000000000001;
  v31 = *(v0 + 48) + 32;
  v34 = v2;
  do
  {
    if (v33)
    {
      v7 = MEMORY[0x1DA6FB460](v4, *(v32 + 48));
    }

    else
    {
      v7 = *(v31 + 8 * v4);
      swift_unknownObjectRetain();
    }

    v9 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v9);
    v10 = [v7 identifier];
    v11 = sub_1D726207C();
    v13 = v12;

    v14 = (*(*(v8 + 8) + 56))(v11, v13, v9);

    if (v14)
    {
      sub_1D5FDDE24(v36);

      v15 = v36[0];
      v16 = v36[1];
      v17 = v36[2];
      v18 = v36[3];
      v19 = v36[4];
      v20 = v36[5];
    }

    else
    {
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = xmmword_1D728CF30;
      v20 = 0uLL;
    }

    v22 = *(v35 + 16);
    v21 = *(v35 + 24);
    if (v22 >= v21 >> 1)
    {
      v29 = v16;
      v30 = v15;
      v27 = v18;
      v28 = v17;
      v25 = v20;
      v26 = v19;
      sub_1D69985A4((v21 > 1), v22 + 1, 1);
      v20 = v25;
      v19 = v26;
      v18 = v27;
      v17 = v28;
      v16 = v29;
      v15 = v30;
    }

    *(v35 + 16) = v22 + 1;
    v23 = v35 + 104 * v22;
    *(v23 + 32) = v7;
    ++v4;
    *(v23 + 40) = v15;
    *(v23 + 56) = v16;
    *(v23 + 72) = v17;
    *(v23 + 88) = v18;
    *(v23 + 104) = v19;
    *(v23 + 120) = v20;
  }

  while (v34 != v4);
  v0 = v32;

LABEL_17:
  **(v0 + 16) = v5;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D5FE2A28()
{
  swift_getObjectType();

  return sub_1D725964C();
}

uint64_t sub_1D5FE2A80()
{
  swift_getObjectType();

  return sub_1D725965C();
}

uint64_t sub_1D5FE2AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_1D5FE2B70(uint64_t a1, _OWORD *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = a2[3];
      v10[2] = a2[2];
      v10[3] = v7;
      v8 = a2[5];
      v10[4] = a2[4];
      v10[5] = v8;
      v9 = a2[1];
      v10[0] = *a2;
      v10[1] = v9;
      (*(v5 + 40))(v10, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D5FE2C40()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_1D5EBD03C(&v20);
    goto LABEL_9;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v17;
  v3 = [v17 integerValue];
  if (v3 == -1)
  {

    return 1;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_1D5EBD03C(&v20);
LABEL_18:

    if (v4)
    {
      return 1;
    }

    goto LABEL_19;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = v17;
  v6 = [v5 integerValue];

  if ((v6 ^ v4))
  {
    return 1;
  }

LABEL_19:
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (!v7)
  {
    return 0;
  }

  if ([swift_unknownObjectRetain() isPaid])
  {
    v8 = v0;
    v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 24);
    v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzleHistoryService), v9);
    v11 = [v7 identifier];
    v12 = sub_1D726207C();
    v14 = v13;

    v15 = (*(*(v10 + 8) + 8))(v12, v14, v9);
    swift_unknownObjectRelease();

    if (v15)
    {
      return 1;
    }

    return *(v8 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration);
  }

  else
  {
    swift_unknownObjectRelease();
    return 1;
  }
}

uint64_t sub_1D5FE2F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for PuzzleResourceSource();
  v5[8] = swift_task_alloc();
  type metadata accessor for PuzzleData();
  v5[9] = swift_task_alloc();
  sub_1D726290C();
  v5[10] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D5FE2FFC, v7, v6);
}

uint64_t sub_1D5FE2FFC()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 48) identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  *v1 = v3;
  v1[1] = v5;
  swift_storeEnumTagMultiPayload();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = -16777216;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1D5FE3100;
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return sub_1D5FD813C(v7, v8, v0 + 16);
}

uint64_t sub_1D5FE3100()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 112) = v0;

  sub_1D5FE40F0(v3, type metadata accessor for PuzzleResourceSource);
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1D5FE3308;
  }

  else
  {
    v6 = sub_1D5FE324C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D5FE324C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1D5FE3A94(*(v0 + 72), Strong);
    swift_unknownObjectRelease();
  }

  sub_1D5FE40F0(*(v0 + 72), type metadata accessor for PuzzleData);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D5FE3308()
{
  v22 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();
  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = [v8 identifier];
    v13 = sub_1D726207C();
    v15 = v14;

    v16 = sub_1D5BC5100(v13, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleDataManager: Error fetching puzzle data for puzzleID=%s error=%@", v9, 0x16u);
    sub_1D5FE45C0(v10);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

void sub_1D5FE35F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle);
  if (!v3)
  {
    return;
  }

  v5 = [v3 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + 48;
    v12 = MEMORY[0x1E69E7CC0];
    v31 = a2 + 48;
    do
    {
      v32 = v12;
      v13 = (v11 + 24 * v10);
      while (1)
      {
        if (v10 >= v9)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_36;
        }

        v34 = v10 + 1;
        v14 = v9;
        v15 = *(v13 - 1);
        v16 = *v13;
        v33 = *(v13 - 2);
        v17 = v33;
        v18 = [swift_unknownObjectRetain() identifier];
        v19 = v6;
        v20 = v8;
        v21 = sub_1D726207C();
        v23 = v22;

        v24 = v21;
        v8 = v20;
        v6 = v19;
        v25 = v24 == v19 && v23 == v8;
        v26 = v25;
        v9 = v14;
        if (v26)
        {
          break;
        }

        v27 = sub_1D72646CC();

        if (v27)
        {
          goto LABEL_18;
        }

        sub_1D5FE38D8(v33, v15, v16);
        ++v10;
        v13 += 24;
        if (v34 == v14)
        {
          v12 = v32;
          goto LABEL_25;
        }
      }

LABEL_18:
      v12 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D69985C4(0, *(v32 + 16) + 1, 1);
        v12 = v32;
      }

      v29 = *(v12 + 16);
      v28 = *(v12 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D69985C4((v28 > 1), v29 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v29 + 1;
      v30 = v12 + 24 * v29;
      v10 = v34;
      *(v30 + 32) = v33;
      *(v30 + 40) = v15;
      *(v30 + 48) = v16;
      v11 = v31;
    }

    while (v34 != v14);
LABEL_25:
    if (*(v12 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_32:

    return;
  }

LABEL_28:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_32;
  }

  sub_1D6A27814(v12);

  swift_unknownObjectRelease();
}

void *sub_1D5FE38D8(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D5FE3920()
{
  sub_1D5FE4648(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_puzzle];
  if (v5)
  {
    v6 = sub_1D726294C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1D726290C();
    swift_unknownObjectRetain_n();
    v7 = v0;
    v8 = sub_1D72628FC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v9[5] = v5;
    sub_1D6BD1334(0, 0, v4, &unk_1D728D110, v9);

    swift_unknownObjectRelease();
  }
}

void sub_1D5FE3A94(uint64_t a1, uint64_t a2)
{
  sub_1D5FE4648(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  sub_1D5C10BE0(a1, &v17 - v6, type metadata accessor for PuzzleData);
  v8 = type metadata accessor for PuzzleData();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D5FE46AC(v7, a2 + v9);
  swift_endAccess();
  v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  [v10 loadLocalDatastore:*(*(a1 + *(v8 + 24)) + 16) options:0 completion:0];
  v11 = [*(a2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D5EBD03C(&v21);
    goto LABEL_9;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v12 = v18;
  v13 = [v18 integerValue];
  if (v13 == -1)
  {

    goto LABEL_21;
  }

  v14 = v13;
LABEL_10:
  if (objc_getAssociatedObject(v11, ~v14))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    if (swift_dynamicCast())
    {
      v15 = v18;
      v16 = [v15 integerValue];

      if (((v16 ^ v14) & 1) == 0)
      {
        return;
      }

LABEL_21:
      [v10 setFocusShouldStartInputSession_];
      return;
    }
  }

  else
  {
    sub_1D5EBD03C(&v21);
  }

  if (v14)
  {
    goto LABEL_21;
  }
}

id sub_1D5FE3DF8(id result, void *a2, uint64_t a3)
{
  if (BYTE3(a3) != 255)
  {
    return sub_1D5FE3E0C(result, a2, a3, SBYTE3(a3));
  }

  return result;
}

id sub_1D5FE3E0C(id result, id a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return result;
  }

  if (!a4)
  {
  }

  return result;
}

void sub_1D5FE3E2C(void *a1, void *a2, uint64_t a3)
{
  if (BYTE3(a3) != 255)
  {
    sub_1D5FE3E40(a1, a2, a3, SBYTE3(a3));
  }
}

void sub_1D5FE3E40(void *a1, id a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

unint64_t sub_1D5FE3E60()
{
  result = qword_1EC882128;
  if (!qword_1EC882128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882128);
  }

  return result;
}

uint64_t sub_1D5FE3EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5FE3F50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5FE1B0C(a1, v5, v4);
}

uint64_t sub_1D5FE3FFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5FE4044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5FE1D88(a1, v5, v4);
}

uint64_t sub_1D5FE40F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5FE4150(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5A498(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5FE41B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5FE2068(a1, v4);
}

void sub_1D5FE4258()
{
  if (!qword_1EC882140)
  {
    sub_1D5B5A5C4(255, &qword_1EC882148, &type metadata for PuzzleDatastoreRelatedPuzzleInfo, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882140);
    }
  }
}

uint64_t sub_1D5FE42D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5FE2318(a1, v4);
}

uint64_t sub_1D5FE4374(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D5FDFFCC(a1, v5, v4);
}

uint64_t sub_1D5FE4454(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D5FE0254(a1, v5, v4);
}

uint64_t sub_1D5FE4500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D5FE2F08(a1, v4, v5, v7, v6);
}

uint64_t sub_1D5FE45C0(uint64_t a1)
{
  sub_1D5FE4150(0, &qword_1EDF04360, &qword_1EDF1A650, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5FE4648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5FE46AC(uint64_t a1, uint64_t a2)
{
  sub_1D5FE4648(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5FE4764()
{
  result = qword_1EC882160;
  if (!qword_1EC882160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882160);
  }

  return result;
}

unint64_t sub_1D5FE47BC()
{
  result = qword_1EC882168;
  if (!qword_1EC882168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882168);
  }

  return result;
}

CGSize_optional __swiftcall FormatLayoutSizeSnapshot.size(for:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1D5B69D90(a1._countAndFlagsBits, a1._object), (v6 & 1) != 0))
  {
    v7 = *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  result.value.height = v5;
  result.value.width = v4;
  result.is_nil = v7;
  return result;
}

uint64_t sub_1D5FE4898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D73C5B40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D5FE492C(uint64_t a1)
{
  v2 = sub_1D5FE52D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5FE4968(uint64_t a1)
{
  v2 = sub_1D5FE52D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayoutSizeSnapshot.encode(to:)(void *a1)
{
  sub_1D5FE5440(0, &qword_1EDF025F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FE52D4();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D5FE5328();
  sub_1D5FE5390();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatLayoutSizeSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5BE71D0(v3, v1);
  return sub_1D7264A5C();
}

uint64_t FormatLayoutSizeSnapshot.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5FE5440(0, &qword_1EDF039E0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5FE52D4();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5FE5328();
    sub_1D5FE54A4();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5FE4D04()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5BE71D0(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5FE4D54()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5BE71D0(v3, v1);
  return sub_1D7264A5C();
}

void *FormatLayoutResizingProvider.__allocating_init()()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = swift_allocObject();
  sub_1D5FE5554(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  sub_1D5B6BD6C(0);
  sub_1D5FE5554(&qword_1EDF1B5C0, sub_1D5B6BD6C);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v3 = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC8];
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

void *FormatLayoutResizingProvider.init()()
{
  v1 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v1, v2);
  sub_1D5FE5554(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  sub_1D5B6BD6C(0);
  sub_1D5FE5554(&qword_1EDF1B5C0, sub_1D5B6BD6C);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v3 = sub_1D725A7AC();
  v4 = MEMORY[0x1E69E7CC8];
  v0[2] = v3;
  v0[3] = v4;
  v0[4] = 0;
  v0[5] = 0;
  return v0;
}

uint64_t sub_1D5FE5098(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  sub_1D725A76C();
  swift_beginAccess();
  v14 = *(v6 + 24);
  if (*(v14 + 16) && (v15 = sub_1D6D62C64(a5, a6), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v17 = sub_1D5BC9514(MEMORY[0x1E69E7CC0]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D79124(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v7 + 24);
  *(v7 + 24) = 0x8000000000000000;
  sub_1D6D78FC4(v17, v19, a5, a6);
  *(v7 + 24) = v23;
  swift_endAccess();
  result = sub_1D725A77C();
  v21 = *(v7 + 32);
  if (v21)
  {

    v21(v22);
    return sub_1D5B74328(v21);
  }

  return result;
}

uint64_t FormatLayoutResizingProvider.onChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D5B74328(v3);
}

uint64_t FormatLayoutResizingProvider.deinit()
{

  sub_1D5B74328(*(v0 + 32));
  return v0;
}

uint64_t FormatLayoutResizingProvider.__deallocating_deinit()
{

  sub_1D5B74328(*(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1D5FE52D4()
{
  result = qword_1EDF0CF20;
  if (!qword_1EDF0CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF20);
  }

  return result;
}

void sub_1D5FE5328()
{
  if (!qword_1EDF05640)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05640);
    }
  }
}

unint64_t sub_1D5FE5390()
{
  result = qword_1EDF05638;
  if (!qword_1EDF05638)
  {
    sub_1D5FE5328();
    sub_1D5FE5554(&unk_1EDF043A0, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05638);
  }

  return result;
}

void sub_1D5FE5440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5FE52D4();
    v7 = a3(a1, &type metadata for FormatLayoutSizeSnapshot.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5FE54A4()
{
  result = qword_1EDF05630;
  if (!qword_1EDF05630)
  {
    sub_1D5FE5328();
    sub_1D5FE5554(&qword_1EDF04398, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05630);
  }

  return result;
}

uint64_t sub_1D5FE5554(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5FE55A0()
{
  result = qword_1EC882170;
  if (!qword_1EC882170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882170);
  }

  return result;
}

unint64_t sub_1D5FE5644()
{
  result = qword_1EC882178;
  if (!qword_1EC882178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882178);
  }

  return result;
}

unint64_t sub_1D5FE569C()
{
  result = qword_1EDF0CF10;
  if (!qword_1EDF0CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF10);
  }

  return result;
}

unint64_t sub_1D5FE56F4()
{
  result = qword_1EDF0CF18;
  if (!qword_1EDF0CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF18);
  }

  return result;
}

uint64_t static FormatImageTransform.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1D5FE579C(uint64_t a1)
{
  result = sub_1D5FE57C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FE57C4()
{
  result = qword_1EC882180;
  if (!qword_1EC882180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882180);
  }

  return result;
}

unint64_t sub_1D5FE5818(void *a1)
{
  a1[1] = sub_1D5C74590();
  a1[2] = sub_1D5FE5850();
  result = sub_1D5FE58A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FE5850()
{
  result = qword_1EDF0EFD0;
  if (!qword_1EDF0EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFD0);
  }

  return result;
}

unint64_t sub_1D5FE58A4()
{
  result = qword_1EC882188;
  if (!qword_1EC882188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882188);
  }

  return result;
}

uint64_t sub_1D5FE59A0()
{
  v1 = MEMORY[0x1DA6F2D00]();
  *(v0 + 24) = v1;
  if (v1)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1D5FE5A4C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE44EF0](v1);
}

uint64_t sub_1D5FE5A4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D5FE6840;
  }

  else
  {

    v2 = sub_1D5F77B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5FE5B88()
{
  v1 = MEMORY[0x1DA6F2D00]();
  *(v0 + 24) = v1;
  if (v1)
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1D5FE5C34;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE44EF0](v1);
}

uint64_t sub_1D5FE5C34()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D5FE5D50;
  }

  else
  {

    v2 = sub_1D5F77B68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5FE5D50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5FE5DB4()
{
  v0 = sub_1D726307C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5B5DA7C();
  sub_1D7261AFC();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B71058(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  sub_1D5B631E8(0);
  sub_1D5B71058(&qword_1EDF1AE80, sub_1D5B631E8);
  sub_1D7263B6C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1D72630BC();
  qword_1EDF33418 = result;
  return result;
}

uint64_t sub_1D5FE6010(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D5FE6060(a1);
  return v2;
}

uint64_t *sub_1D5FE6060(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;

  sub_1D5FE67D4();
  swift_allocObject();
  v1[2] = sub_1D725B68C();
  swift_allocObject();
  v1[3] = sub_1D725B68C();

  sub_1D725AE3C();

  if (v14 > 1u)
  {
    v4 = qword_1EDF33410;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v7 = *(v3 + 80);
    v6[2] = v7;
    v8 = *(v3 + 88);
    v6[3] = v8;
    v6[4] = v5;

    sub_1D725AE5C();

    __swift_project_boxed_opaque_existential_1(v12, v13);

    sub_1D725A72C();

    __swift_destroy_boxed_opaque_existential_1(v12);
    v9 = swift_allocObject();
    swift_weakInit();

    v10 = swift_allocObject();
    v10[2] = v7;
    v10[3] = v8;
    v10[4] = v9;
    sub_1D725AE5C();

    __swift_project_boxed_opaque_existential_1(v12, v13);

    sub_1D725A72C();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1D725B67C();
    sub_1D725B67C();
  }

  return v1;
}

unsigned __int8 *sub_1D5FE6370(unsigned __int8 *result)
{
  if (*result <= 1u)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D725B67C();
      sub_1D725B67C();
    }
  }

  return result;
}

uint64_t sub_1D5FE63E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    v1 = swift_allocError();
    *v2 = 12;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 6;

    sub_1D725B65C();

    v3 = swift_allocError();
    *v4 = 12;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 6;

    sub_1D725B65C();
  }

  return result;
}

uint64_t sub_1D5FE6528()
{
  v0 = swift_allocObject();
  sub_1D5FE6560();
  return v0;
}

uint64_t sub_1D5FE6560()
{
  sub_1D5FE67D4();
  swift_allocObject();
  *(v0 + 16) = sub_1D725B68C();
  swift_allocObject();
  *(v0 + 24) = sub_1D725B68C();
  return v0;
}

uint64_t sub_1D5FE65CC()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1D5FE66E0;
  }

  else
  {
    v2 = sub_1D5F71DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5FE66F8()
{
  type metadata accessor for FeedServiceError();
  swift_getWitnessTable();
  v0 = swift_allocError();
  *v1 = 13;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 6;
  sub_1D725B65C();
}

void sub_1D5FE67D4()
{
  if (!qword_1EDF3BAB8)
  {
    v0 = sub_1D725B69C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BAB8);
    }
  }
}

uint64_t FormatPuzzleEmbedViewController.layoutIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FormatPuzzleEmbedViewController.layoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id FormatPuzzleEmbedViewController.layoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void FormatPuzzleEmbedViewController.layoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FormatPuzzleEmbedViewController.resizingProvider.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*FormatPuzzleEmbedViewController.resizingProvider.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_resizingProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1D5FE6C14;
}

void sub_1D5FE6C14(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D5FE6C94@<X0>(void *a1@<X0>, uint64_t (**a2)(double *, double *)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D6007D94;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4);
}

uint64_t sub_1D5FE6D34(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6007D90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3);
  return sub_1D5B74328(v8);
}

uint64_t sub_1D5FE6E74@<X0>(void *a1@<X0>, uint64_t (**a2)(double *, double *)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D6007A10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4);
}

uint64_t sub_1D5FE6F14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6007A0C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3);
  return sub_1D5B74328(v8);
}

uint64_t sub_1D5FE6FE8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1D5DEA510(*v2);
  return v3;
}

uint64_t sub_1D5FE704C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_1D5B74328(v7);
}

char *FormatPuzzleEmbedViewController.init(puzzleEmbedViewController:componentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D725895C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onReuse;
  sub_1D6007BE4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  swift_weakInit();
  v17 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_teaserInteractionEvents] = MEMORY[0x1E69E7CD0];
  v19 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier];
  sub_1D725894C();
  v21 = sub_1D725893C();
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  *v20 = v21;
  v20[1] = v23;
  *&v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController] = a1;
  v24 = &v4[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_componentProvider];
  v25 = v29;
  *v24 = a2;
  *(v24 + 1) = v25;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  v27 = *&v26[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController] + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
  swift_beginAccess();
  *(v27 + 8) = &protocol witness table for FormatPuzzleEmbedViewController;
  swift_unknownObjectWeakAssign();
  return v26;
}

id FormatPuzzleEmbedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FormatPuzzleEmbedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setClipsToBounds_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 setAutoresizingMask_];

  v5 = *&v0[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  [v0 addChildViewController_];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v5 view];
  if (v8)
  {
    v9 = v8;
    [v7 addSubview_];

    [v5 didMoveToParentViewController_];
    [*&v5[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController] prewarm];
    v10 = &v5[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate];
    swift_beginAccess();
    *(v10 + 1) = &protocol witness table for FormatPuzzleEmbedViewController;
    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1);
  if (!*&v2[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView])
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (!v5)
    {
      sub_1D725A9FC();
      if ((sub_1D725A9EC() & 1) == 0)
      {
        sub_1D5FE790C();
      }
    }
  }

  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  [v7 addObserver:v2 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v8 = [v6 defaultCenter];
  [v8 addObserver:v2 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];
}

void sub_1D5FE790C()
{
  v1 = v0;
  *&v34[0] = 0xD000000000000013;
  *(&v34[0] + 1) = 0x80000001D73C5E80;
  v34[1] = 0uLL;
  v34[2] = 2uLL;
  v34[3] = 0uLL;
  v35 = 4;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_componentProvider + 8);
  ObjectType = swift_getObjectType();
  v31 = 2uLL;
  v32 = 0uLL;
  v33 = 4;
  v29 = v34[0];
  v30 = 0uLL;
  v27 = 0;
  v28 = 0;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v2 + 32);

  sub_1D6007B88(v34, v36);
  v6 = v5(&v29, &v27, sub_1D6007B80, v4, ObjectType, v2);
  v8 = v7;

  v36[2] = v31;
  v36[3] = v32;
  v37 = v33;
  v36[0] = v29;
  v36[1] = v30;
  sub_1D5EDB748(v36);

  v9 = (v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView);
  v10 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView);
  *v9 = v6;
  v9[1] = v8;
  v11 = v6;

  v12 = *v9;
  if (*v9)
  {
    v13 = v9[1];
    v14 = swift_getObjectType();
    v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier);
    v16 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier + 8);
    v17 = v13[2];
    v18 = v12;

    v17(v15, v16, v14, v13);
  }

  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v20 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController;
  v21 = *(v19 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  sub_1D5B5A498(0, &qword_1EC88B4C0);
  v22 = v11;
  v23 = sub_1D726265C();
  v24 = sub_1D726265C();
  [v21 setShortcutsBarWithLeadingGroups:v23 trailingGroups:{v24, v27, v28}];

  [*(v19 + v20) setInputAccessoryView_];
  v25 = [objc_opt_self() current];
  if (v25)
  {
    v26 = v25;
    swift_bridgeObjectRelease_n();
    sub_1D6007C34(v34);
    [v26 setPencilInputExpected_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1);
  v3 = &v1[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView];
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView];
  *v3 = 0;
  *(v3 + 1) = 0;

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController;
  v7 = *(v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  sub_1D5B5A498(0, &qword_1EC88B4C0);
  v8 = sub_1D726265C();
  v9 = sub_1D726265C();
  [v7 setShortcutsBarWithLeadingGroups:v8 trailingGroups:v9];

  [*(v5 + v6) setInputAccessoryView_];
  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver_];
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.viewWillLayoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
  v2 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;
  v6 = v3;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v10 setFrame_];
    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_1D5FE7FDC(uint64_t a1, SEL *a2, void *a3)
{
  v6 = v3;
  result = sub_1D7257B0C();
  if (result)
  {
    v8 = result;
    v37 = sub_1D726207C();
    v38 = v9;
    sub_1D7263C9C();
    if (!v8[2] || (v10 = sub_1D6D62B40(v39), (v11 & 1) == 0))
    {

      return sub_1D5F42574(v39);
    }

    sub_1D5B76B10(v8[7] + 32 * v10, v40);
    sub_1D5F42574(v39);
    type metadata accessor for CGRect(0);
    if ((swift_dynamicCast() & 1) != 0 && [v6 isViewLoaded])
    {
      result = [v6 view];
      if (!result)
      {
        __break(1u);
        goto LABEL_17;
      }

      v12 = result;
      v13 = [result window];

      if (v13)
      {

        result = [v6 view];
        if (result)
        {
          v14 = result;
          result = [v6 view];
          if (result)
          {
            v15 = result;
            [result *a2];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            result = [v6 view];
            if (result)
            {
              v24 = result;

              v25 = sub_1D726342C();

              [v14 convertRect:v25 toCoordinateSpace:{v17, v19, v21, v23}];
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v33 = v32;

              v34 = &v6[*a3];
              result = swift_beginAccess();
              v35 = *v34;
              if (*v34)
              {

                v35(v36, v27, v29, v31, v33, *&v37, v38);
                return sub_1D5B74328(v35);
              }

              return result;
            }

LABEL_19:
            __break(1u);
            return result;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t sub_1D5FE82AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1D7257B1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7257AEC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

void sub_1D5FE839C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v1 = [objc_opt_self() sharedApplication];
    [v1 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.puzzleEmbedDidReceiveInteractionMessage()()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v0 = sub_1D725C42C();
  __swift_project_value_buffer(v0, qword_1EDFFCFA8);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D5B42000, v1, v2, "FormatPuzzleEmbedViewController: puzzleEmbedDidReceiveInteractionMessage", v3, 2u);
    MEMORY[0x1DA6FD500](v3, -1, -1);
  }

  swift_beginAccess();
  sub_1D5FEAC94(&v4, 1);
  swift_endAccess();
}

uint64_t FormatPuzzleEmbedViewController.puzzleEmbedDidReceiveProgress(_:)()
{
  v1 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D5B42000, v3, v4, "FormatPuzzleEmbedViewController: puzzleEmbedDidReceiveProgress", v5, 2u);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_teaserInteractionEvents;
  swift_beginAccess();
  v7 = *(v1 + v6);
  sub_1D7264A0C();
  sub_1D72621EC();
  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v7 + 48) + v10);
      if (v12 != 1 && v12 != 2)
      {
        break;
      }

      v13 = sub_1D72646CC();

      if (v13)
      {
        return swift_endAccess();
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + v6);
    sub_1D5FF9228(0, v10, isUniquelyReferenced_nonNull_native);
    *(v1 + v6) = v16;
  }

  return swift_endAccess();
}

uint64_t FormatPuzzleEmbedViewController.reuseIdentifier.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D5FE8894@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1D5FE88FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*(*a2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t FormatPuzzleEmbedViewController.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*FormatPuzzleEmbedViewController.reuseIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = v7[1];
  *(v4 + 24) = *v7;
  *(v4 + 32) = v8;

  return sub_1D5FE8A98;
}

void sub_1D5FE8A98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + *(*a1 + 48));
  *v4 = *(*a1 + 24);
  v4[1] = v3;
  if (a2)
  {
  }

  free(v2);
}

uint64_t sub_1D5FE8B08()
{
  v1 = (*(*v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D5FE8B74(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*sub_1D5FE8BE8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FormatPuzzleEmbedViewController.reuseIdentifier.modify(v2);
  return sub_1D5FE8C5C;
}

void sub_1D5FE8C5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Void __swiftcall FormatPuzzleEmbedViewController.prepareForReuse()()
{
  MEMORY[0x1DA6F6CF0]();

  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v2 = (v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1D5B74328(v3);
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
}

uint64_t sub_1D5FE8D78()
{
  v1 = *v0;
  MEMORY[0x1DA6F6CF0]();

  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
  v3 = (v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v4 = *v3;
  *v3 = 0;
  v3[1] = 0;
  result = sub_1D5B74328(v4);
  *(v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
  return result;
}

void sub_1D5FE8E2C(uint64_t a1, uint64_t a2)
{
  sub_1D5D51EB4(&qword_1EC882298, a2, type metadata accessor for FormatPuzzleEmbedViewController);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D5FE8EB8(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    v8 = 0x6D6F74746F62;
    v9 = 7105633;
    v10 = 0xE700000000000000;
    v11 = 0xE600000000000000;
    while (1)
    {
      v12 = *(*(v4 + 48) + v7);
      if (v12 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v13 = 0x676E696461656CLL;
        }

        else
        {
          v13 = 7368564;
        }

        if (*(*(v4 + 48) + v7))
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xE300000000000000;
        }
      }

      else if (v12 == 2)
      {
        v14 = 0xE800000000000000;
        v13 = 0x676E696C69617274;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = v8;
        }

        else
        {
          v13 = 7105633;
        }

        if (v12 == 3)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE300000000000000;
        }
      }

      if (a2 == 3)
      {
        v9 = v8;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (a2 == 2)
      {
        v9 = 0x676E696C69617274;
        v11 = 0xE800000000000000;
      }

      if (a2)
      {
        v15 = 0x676E696461656CLL;
      }

      else
      {
        v15 = 7368564;
      }

      if (!a2)
      {
        v10 = 0xE300000000000000;
      }

      v16 = a2 <= 1u ? v15 : v9;
      v17 = a2 <= 1u ? v10 : v11;
      if (v13 == v16 && v14 == v17)
      {
        break;
      }

      v18 = v8;
      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_40;
      }

      v7 = (v7 + 1) & v24;
      v8 = v18;
      v9 = 7105633;
      v10 = 0xE700000000000000;
      v11 = 0xE600000000000000;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_1D5FF7394(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FE917C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D72649FC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D5FF76CC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FE925C(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D7264A0C();
  v7 = (a2 >> 62) - 1;
  if (v7 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;

    sub_1D5FF77EC(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
    *a1 = a2;
    return 1;
  }

  v23 = v2;
  v24 = a2;
  v25 = a1;
  v11 = ~v9;
  v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v13 = *(*(v6 + 48) + 8 * v10);
    if ((v13 >> 62) - 1 > 1)
    {
      v16 = 0;
      v15 = 0;
      if (v7 > 1)
      {
LABEL_10:
        v17 = 0;
        v18 = 0;
        if (!v15)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);

      if (v7 > 1)
      {
        goto LABEL_10;
      }
    }

    v20 = *(v12 + 16);
    v17 = *(v20 + 16);
    v18 = *(v20 + 24);

    if (!v15)
    {
LABEL_18:
      if (!v18)
      {
LABEL_23:

        goto LABEL_25;
      }

LABEL_6:

      goto LABEL_7;
    }

LABEL_11:
    if (!v18)
    {
      goto LABEL_6;
    }

    if (v16 == v17 && v15 == v18)
    {
      break;
    }

    v19 = sub_1D72646CC();

    if (v19)
    {
      goto LABEL_23;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      a2 = v24;
      a1 = v25;
      v3 = v23;
      goto LABEL_22;
    }
  }

LABEL_25:
  *v25 = *(*(v6 + 48) + 8 * v10);

  return 0;
}

uint64_t sub_1D5FE94C8(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 5)
      {
        if (*(*(v4 + 48) + v7) > 8u)
        {
          if (v8 == 9)
          {
            v9 = 0xD000000000000017;
            v10 = 0x80000001D73B9B90;
          }

          else if (v8 == 10)
          {
            v9 = 0xD000000000000012;
            v10 = 0x80000001D73B9BB0;
          }

          else
          {
            v9 = 0xD000000000000019;
            v10 = 0x80000001D73B9BD0;
          }
        }

        else if (v8 == 6)
        {
          v9 = 0xD000000000000014;
          v10 = 0x80000001D73B9B40;
        }

        else if (v8 == 7)
        {
          v9 = 0x6F4C7374726F7073;
          v10 = 0xEF6567616D496F67;
        }

        else
        {
          v9 = 0xD000000000000016;
          v10 = 0x80000001D73B9B70;
        }
      }

      else if (*(*(v4 + 48) + v7) > 2u)
      {
        if (v8 == 3)
        {
          v9 = 0x616D497265766F63;
          v10 = 0xEA00000000006567;
        }

        else
        {
          v9 = 0x4976614E64656566;
          if (v8 == 4)
          {
            v10 = 0xEC0000006567616DLL;
          }

          else
          {
            v10 = 0xEE0051486567616DLL;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        v9 = 0xD00000000000001DLL;
        if (v8 == 1)
        {
          v10 = 0x80000001D73B9AD0;
        }

        else
        {
          v10 = 0x80000001D73B9AF0;
        }
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = 0x80000001D73B9AB0;
      }

      v11 = 0xD000000000000017;
      v12 = 0xD000000000000019;
      if (a2 == 10)
      {
        v12 = 0xD000000000000012;
      }

      v13 = 0x80000001D73B9BD0;
      if (a2 == 10)
      {
        v13 = 0x80000001D73B9BB0;
      }

      if (a2 != 9)
      {
        v11 = v12;
      }

      v14 = 0x80000001D73B9B90;
      if (a2 != 9)
      {
        v14 = v13;
      }

      v15 = 0xD000000000000014;
      v16 = 0xD000000000000016;
      if (a2 == 7)
      {
        v16 = 0x6F4C7374726F7073;
      }

      v17 = 0xEF6567616D496F67;
      if (a2 != 7)
      {
        v17 = 0x80000001D73B9B70;
      }

      if (a2 == 6)
      {
        v18 = 0x80000001D73B9B40;
      }

      else
      {
        v15 = v16;
        v18 = v17;
      }

      if (a2 <= 8u)
      {
        v11 = v15;
        v14 = v18;
      }

      v19 = 0xEE0051486567616DLL;
      if (a2 == 4)
      {
        v19 = 0xEC0000006567616DLL;
      }

      v20 = 0x616D497265766F63;
      if (a2 == 3)
      {
        v19 = 0xEA00000000006567;
      }

      else
      {
        v20 = 0x4976614E64656566;
      }

      v21 = 0xD00000000000001DLL;
      if (a2 == 1)
      {
        v22 = 0x80000001D73B9AD0;
      }

      else
      {
        v22 = 0x80000001D73B9AF0;
      }

      if (!a2)
      {
        v21 = 0xD000000000000012;
        v22 = 0x80000001D73B9AB0;
      }

      if (a2 <= 2u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = a2 <= 5u ? v20 : v11;
      v24 = a2 <= 5u ? v19 : v14;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_1D72646CC();

      if (v25)
      {
        goto LABEL_67;
      }

      v7 = (v7 + 1) & v30;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_1D5FF7A60(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FE9914(void *a1, void *a2)
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

    v9 = sub_1D7263C0C();

    if (v9)
    {

      sub_1D5B5A498(0, &qword_1EDF1AAF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D7263BFC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D6E14AA0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D5FF61B0(v20 + 1, &qword_1EDF042D8, &qword_1EDF1AAF0, 0x1E69B5380, &qword_1EDF1AAE0);
    }

    v18 = v8;
    sub_1D5FF7310(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D5B5A498(0, &qword_1EDF1AAF0);
  v11 = sub_1D72636FC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D5FFF8A0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EDF042D8, &qword_1EDF1AAF0, 0x1E69B5380, &qword_1EDF1AAE0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D726370C();

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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D5FE9BB4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  v18 = v2;
  v19 = a1;
  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_1D5FF7F1C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_23;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0xD000000000000014;
    v11 = 0x80000001D73BA280;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_7:
    if (v12 == 1)
    {
      v13 = 0xD000000000000021;
    }

    else
    {
      v13 = 0x7461636572706564;
    }

    if (v12 == 1)
    {
      v14 = 0x80000001D73BA2A0;
    }

    else
    {
      v14 = 0xEA00000000006465;
    }

    if (v10 == v13)
    {
      goto LABEL_17;
    }

LABEL_18:
    v15 = sub_1D72646CC();

    if (v15)
    {
      goto LABEL_22;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v10 = 0x7461636572706564;
  v11 = 0xEA00000000006465;
  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0xD000000000000021;
    v11 = 0x80000001D73BA2A0;
  }

  v12 = a2;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_16:
  v14 = 0x80000001D73BA280;
  if (v10 != 0xD000000000000014)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v11 != v14)
  {
    goto LABEL_18;
  }

LABEL_22:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_23:
  *v19 = a2;
  return result;
}

uint64_t sub_1D5FE9E08(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  FormatOptionType.rawValue.getter();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 5)
      {
        if (*(*(v4 + 48) + v7) > 8u)
        {
          if (v8 == 9)
          {
            v10 = 0xE500000000000000;
            v9 = 0x6F65646976;
          }

          else if (v8 == 10)
          {
            v10 = 0xE400000000000000;
            v9 = 1953394534;
          }

          else
          {
            v9 = 0x616C506F65646976;
            v10 = 0xEB00000000726579;
          }
        }

        else if (v8 == 6)
        {
          v10 = 0xE300000000000000;
          v9 = 7107189;
        }

        else
        {
          v10 = 0xE500000000000000;
          if (v8 == 7)
          {
            v9 = 0x726F6C6F63;
          }

          else
          {
            v9 = 0x6567616D69;
          }
        }
      }

      else if (*(*(v4 + 48) + v7) > 2u)
      {
        if (v8 == 3)
        {
          v10 = 0xE500000000000000;
          v9 = 0x74616F6C66;
        }

        else if (v8 == 4)
        {
          v10 = 0xE700000000000000;
          v9 = 0x72656765746E69;
        }

        else
        {
          v10 = 0xE600000000000000;
          v9 = 0x676E69727473;
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v8 == 1)
        {
          v9 = 1702125924;
        }

        else
        {
          v9 = 1836412517;
        }

        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x6E61656C6F6F62;
      }

      v11 = 0x616C506F65646976;
      if (a2 == 10)
      {
        v11 = 1953394534;
      }

      v12 = 0xEB00000000726579;
      if (a2 == 10)
      {
        v12 = 0xE400000000000000;
      }

      if (a2 == 9)
      {
        v11 = 0x6F65646976;
        v12 = 0xE500000000000000;
      }

      v13 = 0x726F6C6F63;
      if (a2 != 7)
      {
        v13 = 0x6567616D69;
      }

      v14 = 0xE500000000000000;
      if (a2 == 6)
      {
        v13 = 7107189;
        v14 = 0xE300000000000000;
      }

      if (a2 <= 8u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x72656765746E69;
      if (a2 != 4)
      {
        v15 = 0x676E69727473;
      }

      v16 = 0xE600000000000000;
      if (a2 == 4)
      {
        v16 = 0xE700000000000000;
      }

      if (a2 == 3)
      {
        v15 = 0x74616F6C66;
        v16 = 0xE500000000000000;
      }

      v17 = 1836412517;
      if (a2 == 1)
      {
        v17 = 1702125924;
      }

      v18 = 0xE400000000000000;
      if (!a2)
      {
        v17 = 0x6E61656C6F6F62;
        v18 = 0xE700000000000000;
      }

      if (a2 <= 2u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = a2 <= 5u ? v15 : v11;
      v20 = a2 <= 5u ? v16 : v12;
      if (v9 == v19 && v10 == v20)
      {
        break;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_63;
      }

      v7 = (v7 + 1) & v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

LABEL_63:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_1D5FF81F0(a2, v7, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1D5FEA1F0()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  v2 = sub_1D7264A5C() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1D5FF8644(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1D5FEA2CC(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v11 = 0xE500000000000000;
          v10 = 0x6567616D69;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 1633905005;
          }

          else
          {
            v10 = 0x66456C6175736976;
          }

          if (v9 == 4)
          {
            v11 = 0xE400000000000000;
          }

          else
          {
            v11 = 0xEC00000074636566;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x72476C6169646172;
        }

        else
        {
          v10 = 0x65695674696C7073;
        }

        if (v9 == 1)
        {
          v11 = 0xEE00746E65696461;
        }

        else
        {
          v11 = 0xE900000000000077;
        }
      }

      else
      {
        v11 = 0xE800000000000000;
        v10 = 0x746E656964617267;
      }

      v12 = 0x66456C6175736976;
      if (a2 == 4)
      {
        v12 = 1633905005;
      }

      v13 = 0xEC00000074636566;
      if (a2 == 4)
      {
        v13 = 0xE400000000000000;
      }

      if (a2 == 3)
      {
        v12 = 0x6567616D69;
        v13 = 0xE500000000000000;
      }

      v14 = 0x72476C6169646172;
      if (a2 != 1)
      {
        v14 = 0x65695674696C7073;
      }

      v15 = 0xEE00746E65696461;
      if (a2 != 1)
      {
        v15 = 0xE900000000000077;
      }

      if (!a2)
      {
        v14 = 0x746E656964617267;
        v15 = 0xE800000000000000;
      }

      v16 = a2 <= 2u ? v14 : v12;
      v17 = a2 <= 2u ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
        goto LABEL_44;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_1D5FF8754(a2, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FEA660(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v4 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v42 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v43 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v42 - v26);
  v44 = v2;
  v51 = *v2;
  sub_1D7264A0C();
  sub_1D5BE7354(a2, v27, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE7424(v27, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v53 = *v27;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  v28 = sub_1D7264A5C();
  v29 = -1 << *(v51 + 32);
  v30 = v28 & ~v29;
  v48 = v51 + 56;
  if ((*(v51 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
  {
    v46 = ~v29;
    v49 = *(v9 + 72);
    v50 = v16;
    while (1)
    {
      v31 = *(v51 + 48);
      v47 = v49 * v30;
      sub_1D5BE7354(v31 + v49 * v30, v20, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5BE7354(v20, v16, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5BE7424(v16, v7, type metadata accessor for GenericDataVisualization);
        v54 = 0x3A636972656E6567;
        v55 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v7, v7[1]);
        v32 = v55;
        v52 = v54;
        sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v53 = *v16;
        v54 = 0x3A3A7374726F7073;
        v55 = 0xE800000000000000;
        v33 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v33);

        v32 = v55;
        v52 = v54;
      }

      sub_1D5BE7354(a2, v12, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5BE7424(v12, v7, type metadata accessor for GenericDataVisualization);
        v54 = 0x3A636972656E6567;
        v55 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v7, v7[1]);
        v35 = v54;
        v34 = v55;
        sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v53 = *v12;
        v54 = 0x3A3A7374726F7073;
        v55 = 0xE800000000000000;
        v36 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v36);

        v35 = v54;
        v34 = v55;
      }

      v16 = v50;
      if (v52 == v35 && v32 == v34)
      {
        break;
      }

      v37 = sub_1D72646CC();

      sub_1D5BF1AEC(v20, type metadata accessor for WebEmbedDataVisualization);
      if (v37)
      {
        goto LABEL_18;
      }

      v30 = (v30 + 1) & v46;
      if (((*(v48 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_1D5BF1AEC(v20, type metadata accessor for WebEmbedDataVisualization);
LABEL_18:
    sub_1D5BF1AEC(a2, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5BE7354(*(v51 + 48) + v47, v45, type metadata accessor for WebEmbedDataVisualization);
    return 0;
  }

  else
  {
LABEL_16:
    v38 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v43;
    sub_1D5BE7354(a2, v43, type metadata accessor for WebEmbedDataVisualization);
    v54 = *v38;
    sub_1D5FF8B4C(v40, v30, isUniquelyReferenced_nonNull_native);
    *v38 = v54;
    sub_1D5BE7424(a2, v45, type metadata accessor for WebEmbedDataVisualization);
    return 1;
  }
}

uint64_t sub_1D5FEAC94(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  v18 = v2;
  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    sub_1D5FF9228(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0x6E4572657474656CLL;
    v11 = 0xEB00000000797274;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0xD000000000000010;
    }

    else
    {
      v13 = 1752461154;
    }

    if (v12 == 1)
    {
      v14 = 0x80000001D73BC380;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_1D72646CC();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0xD000000000000010;
    v11 = 0x80000001D73BC380;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v11 = 0xE400000000000000;
  v10 = 1752461154;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xEB00000000797274;
  if (v10 != 0x6E4572657474656CLL)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *a1 = a2;
  return result;
}

uint64_t sub_1D5FEAEF8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1D7264A0C();
  FeedItem.Kind.hash(into:)();
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v23 = a1;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_50:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_1D5BF2DDC(a2, a3);
    sub_1D5FF94F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *v23 = a2;
    v23[1] = a3;
    return 1;
  }

  v12 = ~v10;
  while (2)
  {
    v13 = *(v8 + 48) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    switch(v15)
    {
      case 0uLL:
        if (a3)
        {
          goto LABEL_41;
        }

        goto LABEL_51;
      case 1uLL:
        if (a3 == 1)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 2uLL:
        if (a3 == 2)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 3uLL:
        if (a3 == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 4uLL:
        if (a3 == 4)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 5uLL:
        if (a3 == 5)
        {
          goto LABEL_51;
        }

        goto LABEL_41;
      case 6uLL:
        if (a3 != 6)
        {
          goto LABEL_41;
        }

LABEL_51:
        sub_1D5BF6680(*v13, *(v13 + 8));
        v21 = a2;
        v22 = v15;
        goto LABEL_52;
      case 7uLL:
        if (a3 != 7)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 7uLL);
        v21 = a2;
        v22 = 7;
        goto LABEL_52;
      case 8uLL:
        if (a3 != 8)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 8uLL);
        v21 = a2;
        v22 = 8;
        goto LABEL_52;
      case 9uLL:
        if (a3 != 9)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 9uLL);
        v21 = a2;
        v22 = 9;
        goto LABEL_52;
      case 0xAuLL:
        if (a3 != 10)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xAuLL);
        v21 = a2;
        v22 = 10;
        goto LABEL_52;
      case 0xBuLL:
        if (a3 != 11)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xBuLL);
        v21 = a2;
        v22 = 11;
        goto LABEL_52;
      case 0xCuLL:
        if (a3 != 12)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xCuLL);
        v21 = a2;
        v22 = 12;
        goto LABEL_52;
      case 0xDuLL:
        if (a3 != 13)
        {
          goto LABEL_41;
        }

        sub_1D5BF6680(*v13, 0xDuLL);
        v21 = a2;
        v22 = 13;
        goto LABEL_52;
      case 0xEuLL:
        if (a3 != 14)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 14;
        goto LABEL_52;
      case 0xFuLL:
        if (a3 != 15)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 15;
        goto LABEL_52;
      case 0x10uLL:
        if (a3 != 16)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 16;
        goto LABEL_52;
      case 0x11uLL:
        if (a3 != 17)
        {
          goto LABEL_41;
        }

        v21 = *v13;
        v22 = 17;
        goto LABEL_52;
      default:
        if (a3 < 0x12)
        {
          sub_1D5BF2DDC(*v13, *(v13 + 8));
LABEL_41:
          sub_1D5BF2DDC(a2, a3);
          sub_1D5BF6680(v14, v15);
          sub_1D5BF6680(a2, a3);
          goto LABEL_42;
        }

        if (v14 != a2 || v15 != a3)
        {
          v17 = sub_1D72646CC();
          sub_1D5BF2DDC(a2, a3);
          sub_1D5BF2DDC(v14, v15);
          sub_1D5BF6680(v14, v15);
          sub_1D5BF6680(a2, a3);
          if (v17)
          {
            goto LABEL_53;
          }

LABEL_42:
          v11 = (v11 + 1) & v12;
          if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_50;
          }

          continue;
        }

        sub_1D5BF2DDC(a2, a3);
        sub_1D5BF2DDC(a2, a3);
        sub_1D5BF6680(a2, a3);
        v21 = a2;
        v22 = a3;
LABEL_52:
        sub_1D5BF6680(v21, v22);
LABEL_53:
        sub_1D5BF6680(a2, a3);
        v20 = *(*(v8 + 48) + 16 * v11);
        *v23 = v20;
        sub_1D5BF2DDC(v20, *(&v20 + 1));
        return 0;
    }
  }
}

uint64_t sub_1D5FEB328(_BYTE *a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  v9 = *v4;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a2);
  v10 = sub_1D7264A5C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (*(*(v9 + 48) + v12) != a2)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1D5FF9868(a2, v12, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v16;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D5FEB448(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1D7264A0C();
  v18 = a2;
  if (a2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 1685217635;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_1D72621EC();

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x746C7561666564 : 1685217635;
      v12 = *(*(v4 + 48) + v9) ? 0xE700000000000000 : 0xE400000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_1D72646CC();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_1D5FF99E4(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1D5FEB604(_BYTE *a1, uint64_t a2)
{
  v20 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v20 + 32);
  v7 = v5 & ~v6;
  if ((*(v20 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v20 + 48) + v7);
      v10 = 0xD00000000000001CLL;
      if (v9 == 1)
      {
        v11 = "unusedProperties";
      }

      else
      {
        v10 = 0xD000000000000028;
        v11 = "duplicateNewsroomIdentifiers";
      }

      v12 = v9 == 0;
      if (*(*(v20 + 48) + v7))
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xD000000000000010;
      }

      v14 = "bility-news-plus-via-hardware";
      if (!v12)
      {
        v14 = v11;
      }

      if (a2)
      {
        v15 = a2 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
        v16 = a2 == 1 ? "unusedProperties" : "duplicateNewsroomIdentifiers";
      }

      else
      {
        v15 = 0xD000000000000010;
        v16 = "bility-news-plus-via-hardware";
      }

      if (v13 == v15 && (v14 | 0x8000000000000000) == (v16 | 0x8000000000000000))
      {
        break;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_25;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v20 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    result = 0;
    LOBYTE(a2) = *(*(v20 + 48) + v7);
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1D5FF9C08(a2, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}