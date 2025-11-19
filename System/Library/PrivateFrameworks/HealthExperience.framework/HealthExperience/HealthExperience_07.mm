void (*CurrentOSUpdateDateProvider.previousOSBuild.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t CurrentOSUpdateDateProvider.previousOSVersion.getter()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  sub_1D0FF4578();
  return v1;
}

double sub_1D0FB7F78@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  sub_1D0FF4578();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D0FB8004()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);

  return sub_1D0FF4588();
}

uint64_t CurrentOSUpdateDateProvider.previousOSVersion.setter()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4588();
}

void (*CurrentOSUpdateDateProvider.previousOSVersion.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t CurrentOSUpdateDateProvider.currentOSBuildUpdateDate.getter()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4578();
}

uint64_t sub_1D0FB8250(uint64_t a1)
{
  sub_1D0F3F904();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1D0FB00F8(a1, &v9 - v6);
  sub_1D0FB00F8(v7, v5);
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(v7);
}

uint64_t CurrentOSUpdateDateProvider.currentOSBuildUpdateDate.setter(uint64_t a1)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D0FB00F8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(a1);
}

void (*CurrentOSUpdateDateProvider.currentOSBuildUpdateDate.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB84F0;
}

uint64_t CurrentOSUpdateDateProvider.currentOSVersionMajorUpdateDate.getter()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4578();
}

uint64_t sub_1D0FB856C(uint64_t a1)
{
  sub_1D0F3F904();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1D0FB00F8(a1, &v9 - v6);
  sub_1D0FB00F8(v7, v5);
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(v7);
}

uint64_t CurrentOSUpdateDateProvider.currentOSVersionMajorUpdateDate.setter(uint64_t a1)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D0FB00F8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(a1);
}

void (*CurrentOSUpdateDateProvider.currentOSVersionMajorUpdateDate.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t CurrentOSUpdateDateProvider.currentOSVersionMinorUpdateDate.getter()
{
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  return sub_1D0FF4578();
}

uint64_t sub_1D0FB8884(uint64_t a1)
{
  sub_1D0F3F904();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1D0FB00F8(a1, &v9 - v6);
  sub_1D0FB00F8(v7, v5);
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(v7);
}

uint64_t CurrentOSUpdateDateProvider.currentOSVersionMinorUpdateDate.setter(uint64_t a1)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D0FB00F8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(a1);
}

void (*CurrentOSUpdateDateProvider.currentOSVersionMinorUpdateDate.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t CurrentOSUpdateDateProvider.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D0FF4348();
  v15 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v14 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v13 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FB9878();
  sub_1D0FF59A8();
  sub_1D0F91434();
  v16 = 0;
  v17 = 0;
  sub_1D0FF4598();
  type metadata accessor for CurrentOSUpdateDateProvider();
  sub_1D0FF59A8();
  v16 = 0;
  v17 = 0;
  v11[1] = a1;
  sub_1D0FF4598();
  sub_1D0FF59A8();
  v7 = *(v15 + 56);
  v12 = v2;
  v7(v6, 1, 1, v2);
  sub_1D0FF4598();
  sub_1D0FF59A8();
  v7(v6, 1, 1, v2);
  sub_1D0FF4598();
  sub_1D0FF59A8();
  v8 = v12;
  v7(v6, 1, 1, v12);
  sub_1D0FF4598();
  v9 = v14;
  sub_1D0FF4338();
  sub_1D0FB7028(v9);
  return (*(v15 + 8))(v9, v8);
}

id sub_1D0FB8E4C(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [objc_opt_self() *a3];
  if (result)
  {
    v4 = result;
    v5 = sub_1D0FF5428();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0FB8EB4()
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  sub_1D0FF4578();
  return v1;
}

void (*sub_1D0FB8F78(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t sub_1D0FB9028()
{
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  sub_1D0FF4578();
  return v1;
}

void (*sub_1D0FB910C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0FB97C8(0, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t sub_1D0FB9238(uint64_t a1)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D0FB00F8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(a1);
}

void (*sub_1D0FB930C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t sub_1D0FB9438(uint64_t a1)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D0FB00F8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(a1);
}

void (*sub_1D0FB950C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

uint64_t sub_1D0FB9638(uint64_t a1)
{
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D0FB00F8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  sub_1D0FF4588();
  return sub_1D0F58BBC(a1);
}

void (*sub_1D0FB970C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1D0FB97C8(0, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
  *(v3 + 32) = sub_1D0FF4568();
  return sub_1D0FB9B2C;
}

void sub_1D0FB97C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CurrentOSUpdateDateProvider()
{
  result = qword_1EE06EDF0;
  if (!qword_1EE06EDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D0FB9878()
{
  result = qword_1EE06E398;
  if (!qword_1EE06E398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06E398);
  }

  return result;
}

void sub_1D0FB9A40()
{
  sub_1D0FB97C8(319, &qword_1EE06F840, sub_1D0F91434, MEMORY[0x1E69A3C40]);
  if (v0 <= 0x3F)
  {
    sub_1D0FB97C8(319, &qword_1EE06F848, sub_1D0F3F904, MEMORY[0x1E69A3C40]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D0FB9B30()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0FB9C24()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0FB9D48()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0FB9E74()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0FB9FD8()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0FBA0C8()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0FBA208()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0FBA3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1D0FF4998();
  v6 = (*(a2 + 8))(a1, a2);
  v8 = v7;
  v9 = (*(a2 + 16))(a1, a2);
  v11 = a3(v6, v8, v9, v10);

  return v11;
}

uint64_t ProfileInformation.makeMonogramImage(monogramRenderer:size:scale:rightToLeft:)(void *a1, int a2, uint64_t a3, uint64_t (**a4)(void, void), double a5, double a6, double a7)
{
  v49 = a2;
  v13 = a1;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D0FF4C18();
  v47 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4BD8();
  v20 = *(v14 + 16);
  v48 = v7;
  v20(v16, v7, a3);
  v21 = sub_1D0FF4C08();
  v22 = sub_1D0FF5978();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = v17;
    v24 = v23;
    v44 = swift_slowAlloc();
    v50 = v44;
    *v24 = 136315394;
    v25 = sub_1D0FF6468();
    v27 = sub_1D0F1AE0C(v25, v26, &v50);
    v46 = v13;
    v28 = v27;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = a4[4](a3, a4);
    v31 = v30;
    (*(v14 + 8))(v16, a3);
    v32 = sub_1D0F1AE0C(v29, v31, &v50);
    v13 = v46;

    *(v24 + 14) = v32;
    _os_log_impl(&dword_1D0F17000, v21, v22, "[%s] Creating monogram image with full name '%s'", v24, 0x16u);
    v33 = v44;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v33, -1, -1);
    MEMORY[0x1D3882680](v24, -1, -1);

    (*(v47 + 8))(v19, v45);
  }

  else
  {

    (*(v14 + 8))(v16, a3);
    (*(v47 + 8))(v19, v17);
  }

  v34 = v13[3];
  v35 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v34);
  v36 = a4[1](a3, a4);
  v38 = v37;
  v39 = a4[2](a3, a4);
  v41 = (*(v35 + 8))(v36, v38, v39, v40, v49 & 1, v34, v35, a5, a6, a7);

  return v41;
}

uint64_t sub_1D0FBA8C0()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0FBA9D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0FBCB54();
  *a1 = result;
  return result;
}

void sub_1D0FBAA04(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E7473726966;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564496573756572;
  v7 = 0x80000001D1003300;
  if (v2 != 4)
  {
    v7 = 0x80000001D1003320;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000010;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656D614E7473616CLL;
  if (v2 != 1)
  {
    v9 = 0x616D496F746F6870;
    v8 = 0xEA00000000006567;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1D0FBAAE0()
{
  v1 = *v0;
  v2 = 0x6D614E7473726966;
  v3 = 0x6564496573756572;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x656D614E7473616CLL;
  if (v1 != 1)
  {
    v4 = 0x616D496F746F6870;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D0FBABB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0FBCB54();
  *a1 = result;
  return result;
}

uint64_t sub_1D0FBABE0(uint64_t a1)
{
  v2 = sub_1D0FBCD98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FBAC1C(uint64_t a1)
{
  v2 = sub_1D0FBCD98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FBAC58(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1D0FBACB8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D0FBAD04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1D0FBADA8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1D0FBAE08()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D0FBAE54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1D0FBAF2C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1D0FBAFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v8[1] = v3;
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5 + 9);
  sub_1D0FBD6B4(&v5[4], v8);
  os_unfair_lock_unlock(v5 + 9);
  v6 = v8[0];

  *a2 = v6;
  return result;
}

void sub_1D0FBB05C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  sub_1D0FBCA98();
}

uint64_t sub_1D0FBB0E8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v6 = v0;
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 9);
  sub_1D0FBC8EC(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 9);
  v3 = v5;

  return v3;
}

void sub_1D0FBB178(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D0FBCA98();
}

void (*sub_1D0FBB1F8(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  v4[7] = swift_getKeyPath();
  v5 = swift_beginAccess();
  v6 = *(v1 + 56);
  v4[4] = v1;
  v7 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v5);

  os_unfair_lock_lock(v7 + 9);
  sub_1D0FBD6B4(&v7[4], &v10);
  os_unfair_lock_unlock(v7 + 9);
  v8 = v10;

  v4[3] = v8;
  return sub_1D0FBB318;
}

void sub_1D0FBB318(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;

    sub_1D0FBCA98();

    v3 = *v4;
  }

  else
  {

    sub_1D0FBCA98();
  }

  free(v2);
}

void sub_1D0FBB3C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
  v5 = v2;
}

void *sub_1D0FBB420()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_1D0FBB464(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void *sub_1D0FBB4FC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  if (!v1)
  {
    v3 = swift_beginAccess();
    v4 = *(v0 + 56);
    v8[1] = v0;
    v5 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v3);

    os_unfair_lock_lock(v5 + 9);
    sub_1D0FBD6B4(&v5[4], v8);
    os_unfair_lock_unlock(v5 + 9);
    v2 = v8[0];
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1D0FBB5DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
}

uint64_t sub_1D0FBB63C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1D0FBB688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t ProfileImageInformation.uniqueIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t ProfileImageInformation.__allocating_init(firstName:lastName:photoImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_allocObject();
  v10 = sub_1D0FBCBA0(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t ProfileImageInformation.init(firstName:lastName:photoImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D0FBCBA0(a1, a2, a3, a4, a5);

  return v6;
}

id sub_1D0FBB804(char a1, double a2, double a3)
{
  swift_beginAccess();
  swift_beginAccess();
  v7 = *(v3 + 40);
  v8 = objc_allocWithZone(MEMORY[0x1E695CF18]);

  v9 = [v8 init];
  v10 = sub_1D0FF53E8();
  [v9 setGivenName_];

  if (v7)
  {
    v11 = sub_1D0FF53E8();
    [v9 setFamilyName_];
  }

  v12 = [objc_opt_self() defaultSettingsWithCacheSize:0 skipContactLookup:1];
  v13 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];
  v14 = [objc_opt_self() scopeWithPointSize:a1 & 1 scale:0 rightToLeft:a2 style:{a2, a3}];
  sub_1D0FBD5FC(0, &qword_1EE06F8C8, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D0FF9980;
  *(v15 + 32) = v9;
  sub_1D0F1ACD4(0, &qword_1EE070DE0);
  v16 = v9;
  v17 = sub_1D0FF55F8();

  v18 = [v13 avatarImageForContacts:v17 scope:v14];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1D0FBBA74()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2 && (v3 = [v2 CGImage]) != 0 && (v4 = v3, v5 = CGImageGetDataProvider(v3), v4, v5) && (v6 = CGDataProviderCopyData(v5), v5, v6))
  {
    sub_1D0FF6358();
    type metadata accessor for CFData(0);
    sub_1D0FBD054(&qword_1EC5FD128, 255, type metadata accessor for CFData);
    sub_1D0FF44E8();
  }

  else
  {
    sub_1D0FF6358();
  }

  swift_beginAccess();

  sub_1D0FF5488();

  swift_beginAccess();
  if (!*(v1 + 40))
  {
    return sub_1D0FF6358();
  }

  sub_1D0FF6358();

  sub_1D0FF5488();
}

uint64_t ProfileImageInformation.deinit()
{

  return v0;
}

uint64_t ProfileImageInformation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D0FBBCC0(void *a1)
{
  v3 = v1;
  sub_1D0FBCE40(0, &qword_1EE06E130, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FBCD98();
  sub_1D0FF6438();
  swift_beginAccess();
  v17 = 0;

  sub_1D0FF61C8();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    swift_beginAccess();
    v16 = 1;

    sub_1D0FF6188();

    swift_beginAccess();
    v15 = *(v3 + 64);
    v10 = v15;
    v14 = 2;
    sub_1D0FBCDEC();
    v11 = v10;
    sub_1D0FF6208();

    swift_beginAccess();
    v14 = 3;

    sub_1D0FF61C8();

    v14 = 4;
    sub_1D0FF61C8();
    swift_beginAccess();
    v13[7] = 5;
    sub_1D0FF61D8();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D0FBBFD8()
{
  sub_1D0FF6338();
  sub_1D0FBBA74();
  return sub_1D0FF6378();
}

uint64_t ProfileImageInformation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ProfileImageInformation.init(from:)(a1);
  return v2;
}

void *ProfileImageInformation.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D0FBCE40(0, &qword_1EE06F918, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  sub_1D0FBCF4C(0, qword_1EE0708D8, type metadata accessor for AtomicLazy);
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  v8 = (v1 + 48);
  *(v1 + 40) = 0;
  v9 = swift_allocObject();
  sub_1D0FBCEC8();
  v10 = swift_allocObject();
  *(v10 + 36) = 0;
  *(v10 + 16) = sub_1D0FBC7B4;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v9 + 16) = v10;
  v2[9] = 0xD000000000000016;
  v2[7] = v9;
  v2[10] = 0x80000001D1005360;
  v11 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D0FBCD98();
  v12 = v28;
  sub_1D0FF6428();
  if (v12)
  {

    type metadata accessor for ProfileImageInformation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v8;
    v13 = v26;
    v31 = 0;
    v2[2] = sub_1D0FF6108();
    v2[3] = v14;
    v31 = 1;
    v15 = sub_1D0FF60C8();
    v17 = v16;
    swift_beginAccess();
    v2[4] = v15;
    v2[5] = v17;

    v29 = 2;
    sub_1D0FBCFB8();
    sub_1D0FF6148();
    v2[8] = v30;
    LOBYTE(v30) = 3;
    v19 = sub_1D0FF6108();
    v20 = v27;
    v21 = v19;
    v23 = v22;
    swift_beginAccess();
    v2[9] = v21;
    v2[10] = v23;

    v29 = 4;
    v2[11] = sub_1D0FF6108();
    v2[12] = v24;
    v29 = 5;
    LOBYTE(v21) = sub_1D0FF6118();
    (*(v20 + 8))(v7, v13);
    v25 = v28;
    swift_beginAccess();
    *v25 = v21 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v2;
}

uint64_t sub_1D0FBC4AC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);

  return v2;
}

uint64_t sub_1D0FBC4FC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1D0FBC54C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1D0FBC5C0()
{
  sub_1D0FF6338();
  sub_1D0FBBA74();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FBC628()
{
  sub_1D0FF6338();
  sub_1D0FBBA74();
  return sub_1D0FF6378();
}

void *sub_1D0FBC674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ProfileImageInformation();
  v5 = swift_allocObject();
  result = ProfileImageInformation.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D0FBC6F0()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t static ProfileImageInformation.empty.getter()
{
  type metadata accessor for ProfileImageInformation();
  swift_allocObject();
  return sub_1D0FBCBA0(0, 0xE000000000000000, 0, 0, 0);
}

id sub_1D0FBC7B4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  result = sub_1D0FBB804(v5, 150.0, v4);
  *a1 = result;
  return result;
}

void (*sub_1D0FBC85C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>))(void *__return_ptr, uint64_t *)
{
  v8 = *a2;
  v4 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = *(a1 + 8);
    v4(&v9, &v8);
    sub_1D0FBD6A4(v4, v5, 0);
    v4 = v9;
    *a1 = v9;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  *a3 = v4;
  return v4;
}

uint64_t _s16HealthExperience23ProfileImageInformationC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[8];
  swift_beginAccess();
  v5 = a2[8];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    sub_1D0F1ACD4(0, &qword_1EE06F9A0);
    v6 = v5;
    v7 = v4;
    v8 = sub_1D0FF5BF8();

    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v5)
  {
LABEL_14:
    v14 = 0;
    return v14 & 1;
  }

  swift_beginAccess();
  v9 = a1[2];
  v10 = a1[3];
  swift_beginAccess();
  if ((v9 != a2[2] || v10 != a2[3]) && (sub_1D0FF6278() & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v11 = a1[4];
  v12 = a1[5];
  swift_beginAccess();
  v13 = a2[5];
  v14 = (v12 | v13) == 0;
  if (v12 && v13)
  {
    if (v11 == a2[4] && v12 == v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1D0FF6278();
    }
  }

  return v14 & 1;
}

uint64_t sub_1D0FBCA98()
{

  swift_getAtKeyPath();

  v0 = *(v2 + 16);
  os_unfair_lock_lock(v0 + 9);
  sub_1D0FBD64C(&v0[4]);
  os_unfair_lock_unlock(v0 + 9);
}

uint64_t sub_1D0FBCB54()
{
  v0 = sub_1D0FF6088();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D0FBCBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1D0FBCF4C(0, qword_1EE0708D8, type metadata accessor for AtomicLazy);
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = swift_allocObject();
  sub_1D0FBCEC8();
  v12 = swift_allocObject();
  *(v12 + 36) = 0;
  *(v12 + 16) = sub_1D0FBC7B4;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v11 + 16) = v12;
  *(v5 + 56) = v11;
  *(v5 + 72) = 0xD000000000000016;
  *(v5 + 80) = 0x80000001D1005360;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 64) = a5;
  v13 = a5;

  v17 = sub_1D0FF6468();
  v18 = v14;
  MEMORY[0x1D3880AC0](95, 0xE100000000000000);
  MEMORY[0x1D3880AC0](a1, a2);

  MEMORY[0x1D3880AC0](95, 0xE100000000000000);
  sub_1D0FBD5FC(0, &qword_1EE070E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v15 = sub_1D0FF5448();
  MEMORY[0x1D3880AC0](v15);

  *(v5 + 88) = v17;
  *(v5 + 96) = v18;
  return v5;
}

unint64_t sub_1D0FBCD98()
{
  result = qword_1EE070138;
  if (!qword_1EE070138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070138);
  }

  return result;
}

unint64_t sub_1D0FBCDEC()
{
  result = qword_1EE070D68;
  if (!qword_1EE070D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D68);
  }

  return result;
}

void sub_1D0FBCE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0FBCD98();
    v7 = a3(a1, &type metadata for ProfileImageInformation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D0FBCEC8()
{
  if (!qword_1EE06F988)
  {
    sub_1D0FBCF4C(255, qword_1EE070960, type metadata accessor for AtomicLazy.State);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D0FF5E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F988);
    }
  }
}

void sub_1D0FBCF4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ProfileImageInformation();
    sub_1D0FA0640();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D0FBCFB8()
{
  result = qword_1EE071178;
  if (!qword_1EE071178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071178);
  }

  return result;
}

uint64_t sub_1D0FBD054(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D0FBD4F8()
{
  result = qword_1EC5FD138;
  if (!qword_1EC5FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD138);
  }

  return result;
}

unint64_t sub_1D0FBD550()
{
  result = qword_1EE070128;
  if (!qword_1EE070128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070128);
  }

  return result;
}

unint64_t sub_1D0FBD5A8()
{
  result = qword_1EE070130;
  if (!qword_1EE070130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070130);
  }

  return result;
}

void sub_1D0FBD5FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1D0FBD64C(uint64_t a1)
{
  v3 = **(v1 + 16);
  sub_1D0FBD6A4(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return v3;
}

void sub_1D0FBD6A4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t CodableRawRepresentable.init(representableValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_1D0FF5C38();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t CodableRawRepresentable.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D0FF5C38();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CodableRawRepresentable.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_1D0FF5C38();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1D0FBD878(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D10053F0 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = sub_1D0FF6278();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1D0FBD918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FBD878(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D0FBD944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0F4FAF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D0FBD97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D0FBD9D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableRawRepresentable.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D0FF5C38();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = v8;
  v28 = &v25 - v12;
  *&v13 = v4;
  *(&v13 + 1) = v8;
  v25 = *(a2 + 32);
  v35 = v13;
  v36 = v25;
  type metadata accessor for CodableRawRepresentable.CodingKeys();
  swift_getWitnessTable();
  v14 = sub_1D0FF6218();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v31;
  sub_1D0FF6438();
  v18 = v32;
  (*(v17 + 16))(v7, v33, v32);
  v19 = *(v4 - 8);
  if ((*(v19 + 48))(v7, 1, v4) == 1)
  {
    (*(v17 + 8))(v7, v18);
  }

  else
  {
    v20 = v26;
    sub_1D0FF5588();
    (*(v19 + 8))(v7, v4);
    v22 = v28;
    v21 = v29;
    v23 = v30;
    (*(v29 + 32))(v28, v20, v30);
    sub_1D0FF6208();
    (*(v21 + 8))(v22, v23);
  }

  return (*(v34 + 8))(v16, v14);
}

uint64_t CodableRawRepresentable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a6;
  v55 = sub_1D0FF5C38();
  v54 = *(v55 - 8);
  v11 = MEMORY[0x1EEE9AC00](v55);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v52 - v14;
  v63 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1D0FF5C38();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v52 - v19;
  v72 = AssociatedTypeWitness;
  v64 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v52 - v22;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  v76 = a5;
  type metadata accessor for CodableRawRepresentable.CodingKeys();
  swift_getWitnessTable();
  v70 = sub_1D0FF6168();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v24 = &v52 - v23;
  v58 = a3;
  v59 = a2;
  v73 = a2;
  v74 = a3;
  v67 = a4;
  v75 = a4;
  v76 = a5;
  v25 = type metadata accessor for CodableRawRepresentable();
  v60 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v77;
  sub_1D0FF6428();
  v29 = a1;
  if (!v28)
  {
    v31 = v65;
    v30 = v66;
    v52 = v27;
    v77 = v25;
    v32 = v69;
    v33 = v64;
    v34 = v29;
    sub_1D0FF60F8();
    v35 = v33;
    if ((*(v33 + 48))(v71, 1, v72) == 1)
    {
      (*(v31 + 8))(v71, v30);
      v37 = v61;
      v36 = v62;
      v38 = v59;
    }

    else
    {
      v39 = *(v33 + 32);
      v40 = v32;
      v41 = v72;
      v39(v32, v71, v72);
      (*(v35 + 16))(v56, v32, v41);
      v42 = v57;
      v38 = v59;
      sub_1D0FF5598();
      v43 = v63;
      v44 = (*(v63 + 48))(v42, 1, v38);
      v37 = v61;
      if (v44 != 1)
      {
        v46 = v53;
        (*(v43 + 32))(v53, v42, v38);
        (*(v43 + 16))(v37, v46, v38);
        (*(v43 + 56))(v37, 0, 1, v38);
        v47 = v52;
        CodableRawRepresentable.init(representableValue:)(v37, v38, v52);
        (*(v43 + 8))(v46, v38);
        (*(v35 + 8))(v69, v72);
        v45 = v47;
        v36 = v62;
        goto LABEL_8;
      }

      (*(v35 + 8))(v40, v72);
      (*(v54 + 8))(v42, v55);
      v36 = v62;
    }

    (*(v63 + 56))(v37, 1, 1, v38);
    v45 = v52;
    CodableRawRepresentable.init(representableValue:)(v37, v38, v52);
LABEL_8:
    v48 = v24;
    v49 = v77;
    v50 = v60;
    (*(v68 + 8))(v48, v70);
    (*(v50 + 32))(v36, v45, v49);
    v29 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t static CodableRawRepresentable<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v28 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D0FF5C38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v24 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v24 - v13;
  v15 = *(v12 + 48);
  v16 = *(v9 + 16);
  v16(&v24 - v13, v28, v8);
  v16(&v14[v15], a2, v8);
  v28 = v6;
  v17 = *(v6 + 48);
  if (v17(v14, 1, a3) == 1)
  {
    if (v17(&v14[v15], 1, a3) == 1)
    {
      v18 = 1;
    }

    else
    {
      v9 = v27;
      v8 = TupleTypeMetadata2;
      v18 = 0;
    }
  }

  else
  {
    v16(v29, v14, v8);
    if (v17(&v14[v15], 1, a3) == 1)
    {
      (*(v28 + 8))(v29, a3);
      v18 = 0;
      v9 = v27;
      v8 = TupleTypeMetadata2;
    }

    else
    {
      v19 = v28;
      v20 = v25;
      (*(v28 + 32))(v25, &v14[v15], a3);
      v21 = v29;
      v18 = sub_1D0FF53D8();
      v22 = *(v19 + 8);
      v22(v20, a3);
      v22(v21, a3);
    }
  }

  (*(v9 + 8))(v14, v8);
  return v18 & 1;
}

uint64_t sub_1D0FBE88C()
{
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D0FBE8FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D0FBEA7C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

Swift::String __swiftcall Double.secondsAgoDescription()()
{
  v1 = v0;
  sub_1D0FBED94();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D0FFA320;
  Current = CFAbsoluteTimeGetCurrent();
  v4 = MEMORY[0x1E69E6438];
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = v4;
  *(v2 + 32) = Current - v1;

  v5 = sub_1D0FF5438();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void sub_1D0FBED94()
{
  if (!qword_1EE06F8D0)
  {
    sub_1D0FBEDEC();
    v0 = sub_1D0FF6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F8D0);
    }
  }
}

unint64_t sub_1D0FBEDEC()
{
  result = qword_1EE06F8B0;
  if (!qword_1EE06F8B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE06F8B0);
  }

  return result;
}

uint64_t static DeviceDidPairUnpairListener.createDeviceDidPairUnpairPublisher()()
{
  sub_1D0FBF158();
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultCenter];
  v5 = [objc_opt_self() sharedInstance];
  sub_1D0FBF1EC(0, &qword_1EE070AC0, MEMORY[0x1E69E6F90]);
  sub_1D0FF5BA8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D0FFD030;
  v7 = *MEMORY[0x1E69B3678];
  v8 = v4;
  v9 = v5;
  sub_1D0FF5B98();
  v10 = *MEMORY[0x1E69B3688];
  v11 = v8;
  v12 = v9;
  v13 = v10;
  sub_1D0FF5B98();
  v20 = v6;
  sub_1D0FBF1EC(0, &qword_1EE070B68, MEMORY[0x1E69E62F8]);
  sub_1D0FBF2C0(&qword_1EE070B18, MEMORY[0x1E6969F20]);
  sub_1D0FBF24C();
  sub_1D0FF4D88();
  sub_1D0FBF2C0(&unk_1EE070BE0, sub_1D0FBF158);
  v14 = v18;
  v15 = sub_1D0FF5098();

  (*(v19 + 8))(v3, v14);
  return v15;
}

void sub_1D0FBF158()
{
  if (!qword_1EE070BD8)
  {
    sub_1D0FF5BA8();
    sub_1D0FBF2C0(&qword_1EE070B18, MEMORY[0x1E6969F20]);
    v0 = sub_1D0FF4D78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070BD8);
    }
  }
}

void sub_1D0FBF1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0FF5BA8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D0FBF24C()
{
  result = qword_1EE070B60;
  if (!qword_1EE070B60)
  {
    sub_1D0FBF1EC(255, &qword_1EE070B68, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070B60);
  }

  return result;
}

uint64_t sub_1D0FBF2C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Cancellable.store(in:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D0FF4EA8();
  (*(v4 + 16))(v6, v2, a2);
  v7 = sub_1D0FF4EB8();

  sub_1D0FF4518();
  swift_beginAccess();

  sub_1D0F688DC(&v10, v7);
  swift_endAccess();

  sub_1D0FF4528();
}

uint64_t LockedCancellables.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  sub_1D0FF4548();
  swift_allocObject();
  *(v0 + 24) = sub_1D0FF4538();
  return v0;
}

uint64_t LockedCancellables.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  sub_1D0FF4548();
  swift_allocObject();
  *(v0 + 24) = sub_1D0FF4538();
  return v0;
}

uint64_t sub_1D0FBF510(uint64_t result)
{
  if (result)
  {
    v1 = result;

    sub_1D0FF4518();
    swift_beginAccess();

    sub_1D0F688DC(&v2, v1);
    swift_endAccess();

    sub_1D0FF4528();
  }

  return result;
}

uint64_t sub_1D0FBF5A8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_1D0FF4518();
  swift_beginAccess();
  v1 = sub_1D0F6C0F0();
  swift_endAccess();
  sub_1D0FF4528();

  return v1;
}

uint64_t sub_1D0FBF638(uint64_t (*a1)(uint64_t))
{
  sub_1D0FF4518();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_1D0FF5D08();
    sub_1D0FF4EA8();
    sub_1D0FBF9E8();
    result = sub_1D0FF5838();
    v2 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v18 = v12;
  while (v2 < 0)
  {
    if (!sub_1D0FF5D38() || (sub_1D0FF4EA8(), swift_dynamicCast(), (v15 = v20) == 0))
    {
LABEL_24:
      sub_1D0F36568();
      sub_1D0FF4528();
      return v18;
    }

LABEL_19:
    if (a1(v15))
    {
      swift_beginAccess();
      v16 = sub_1D0F6C0F0();
      swift_endAccess();
      if (v16)
      {

        MEMORY[0x1D3880BF0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D0FF5638();
        }

        sub_1D0FF5688();

        v12 = v21;
        goto LABEL_8;
      }
    }
  }

  v13 = v6;
  v14 = v7;
  if (v7)
  {
LABEL_15:
    v7 = (v14 - 1) & v14;
    v15 = *(*(v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_24;
    }

    v14 = *(v4 + 8 * v6);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0FBF8FC()
{
  sub_1D0FF4518();
  swift_beginAccess();

  v2 = sub_1D0F36080(v1);

  *(v0 + 16) = MEMORY[0x1E69E7CD0];

  sub_1D0FF4528();
  return v2;
}

uint64_t LockedCancellables.deinit()
{

  return v0;
}

uint64_t LockedCancellables.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D0FBF9E8()
{
  result = qword_1EE06E5E8;
  if (!qword_1EE06E5E8)
  {
    sub_1D0FF4EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06E5E8);
  }

  return result;
}

void NSUserActivity.addUserInfoEntriesFromKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v19 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = sub_1D0FBFD00;
  v14[6] = &v15;
  v6 = sub_1D0FF5358();
  sub_1D0F541F0(0, &qword_1EE06E490);
  v8 = v7;
  WitnessTable = swift_getWitnessTable();
  if (*(sub_1D0F73C8C(sub_1D0FBFD64, v14, v6, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10) + 16))
  {
    sub_1D0FC1134(0, &qword_1EE06E298);
    v11 = sub_1D0FF6028();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v19 = v11;

  sub_1D0FC0D2C(v12, 1, &v19);

  sub_1D0FBFDE4(v19);

  v13 = sub_1D0FF5328();

  [v5 addUserInfoEntriesFromDictionary_];
}

uint64_t sub_1D0FBFD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FF5588();
  sub_1D0F1B398(a3, a1);
  return v6;
}

uint64_t sub_1D0FBFD64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(a2 + 2, a1, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1D0FBFDE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D0FC1134(0, &qword_1EE06E278);
    v2 = sub_1D0FF6028();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D0F1B398(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D0F54254(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D0F54254(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D0F54254(v31, v32);
    result = sub_1D0FF5D58();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D0F54254(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_1D0FC00B8@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D0FF5348();

    sub_1D0FF4948();
    sub_1D0FC10DC();
    sub_1D0FF5588();
    sub_1D0FF5D78();
    if (*(v5 + 16))
    {
      v6 = sub_1D0FA2774(v9);
      if (v7)
      {
        sub_1D0F1B398(*(v5 + 56) + 32 * v6, a1);
        sub_1D0FA5950(v9);

        return result;
      }
    }

    sub_1D0FA5950(v9);
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double NSUserActivity.retrieveUserInfoValueForKey<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D0FF5348();

    sub_1D0FF5588();
    sub_1D0FF5D78();
    if (*(v5 + 16))
    {
      v6 = sub_1D0FA2774(v9);
      if (v7)
      {
        sub_1D0F1B398(*(v5 + 56) + 32 * v6, a1);
        sub_1D0FA5950(v9);

        return result;
      }
    }

    sub_1D0FA5950(v9);
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t NSUserActivity.getDate(for:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D0FC00B8(&v5);
  if (!v6)
  {
    sub_1D0F23B7C(&v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 1;
    goto LABEL_6;
  }

  sub_1D0FF42A8();
  v2 = 0;
LABEL_6:
  v3 = sub_1D0FF4348();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t NSUserActivity.addProfileIdentifier(_:)(uint64_t a1)
{
  v2 = v1;
  v36[15] = *MEMORY[0x1E69E9840];
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D0FF4968();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v36[0] = 0;
  v13 = [v12 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v36];
  v14 = v36[0];
  if (v13)
  {
    v15 = sub_1D0FF4288();
    v17 = v16;

    sub_1D0F53064();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D0FFA320;
    (*(v9 + 104))(v11, *MEMORY[0x1E69A2BE8], v8);
    v19 = sub_1D0FF4958();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v36[0] = v19;
    v36[1] = v21;
    sub_1D0FF5D78();
    *(inited + 96) = MEMORY[0x1E6969080];
    *(inited + 72) = v15;
    *(inited + 80) = v17;
    sub_1D0F35360(v15, v17);
    sub_1D0F530CC(inited);
    swift_setDeallocating();
    sub_1D0F5321C(inited + 32);
    v22 = sub_1D0FF5328();

    [v2 addUserInfoEntriesFromDictionary_];

    return sub_1D0F34FDC(v15, v17);
  }

  else
  {
    v24 = v14;
    v25 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    v26 = v25;
    v27 = sub_1D0FF4C08();
    v28 = sub_1D0FF5958();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136315138;
      v35[0] = v25;
      v31 = v25;
      sub_1D0F1E940();
      v32 = sub_1D0FF5448();
      v34 = sub_1D0F1AE0C(v32, v33, v36);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1D0F17000, v27, v28, "Failed to encode profileIdentifier. Error: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1D3882680](v30, -1, -1);
      MEMORY[0x1D3882680](v29, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t NSUserActivity.fetchProfileIdentifier()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - v7;
  v9 = sub_1D0FF4968();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 userInfo];
  if (!v13)
  {
    v35 = 0u;
    v36 = 0u;
    goto LABEL_9;
  }

  v33[3] = v6;
  v14 = v2;
  v15 = v13;
  v16 = sub_1D0FF5348();

  (*(v10 + 104))(v12, *MEMORY[0x1E69A2BE8], v9);
  v17 = sub_1D0FF4958();
  v19 = v18;
  (*(v10 + 8))(v12, v9);
  v33[5] = v17;
  v33[6] = v19;
  sub_1D0FF5D78();
  if (!*(v16 + 16) || (v20 = sub_1D0FA2774(v34), (v21 & 1) == 0))
  {

    sub_1D0FA5950(v34);
    v35 = 0u;
    v36 = 0u;
    v2 = v14;
    goto LABEL_9;
  }

  sub_1D0F1B398(*(v16 + 56) + 32 * v20, &v35);
  sub_1D0FA5950(v34);

  v2 = v14;
  if (!*(&v36 + 1))
  {
LABEL_9:
    sub_1D0F23B7C(&v35);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v23 = v34[0];
    v22 = v34[1];
    sub_1D0F1ACD4(0, &qword_1EE06F9D8);
    sub_1D0F1ACD4(0, &qword_1EE071070);
    v31 = sub_1D0FF5AE8();
    sub_1D0F34FDC(v23, v22);
    return v31;
  }

LABEL_10:
  sub_1D0FF4BC8();
  v24 = sub_1D0FF4C08();
  v25 = sub_1D0FF5948();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v35 = v27;
    *v26 = 136446210;
    v34[0] = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_1D0FF5448();
    v30 = sub_1D0F1AE0C(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1D0F17000, v24, v25, "[%{public}s]: Profile Identifier is missing from UserActivity", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1D3882680](v27, -1, -1);
    MEMORY[0x1D3882680](v26, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  return 0;
}

void sub_1D0FC0D2C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1D0FC1190(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_1D0F54254(v46, v41);
  v9 = *a3;
  v10 = sub_1D0F23568(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1D0FA33F8(v15, a2 & 1);
    v10 = sub_1D0F23568(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1D0FF62B8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1D0FA4FFC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    sub_1D0F1E940();
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_1D0F54254(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_1D0FC1190(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_1D0F54254(v46, v41);
      v29 = *a3;
      v30 = sub_1D0F23568(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_1D0FA33F8(v34, 1);
        v30 = sub_1D0F23568(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_1D0F54254(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1D0FF5DE8();
  MEMORY[0x1D3880AC0](0xD00000000000001BLL, 0x80000001D1004B30);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](39, 0xE100000000000000);
  sub_1D0FF5F98();
  __break(1u);
}

unint64_t sub_1D0FC10DC()
{
  result = qword_1EC5FD140;
  if (!qword_1EC5FD140)
  {
    sub_1D0FF4948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD140);
  }

  return result;
}

void sub_1D0FC1134(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D0FF6038();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D0FC1190(uint64_t a1, uint64_t a2)
{
  sub_1D0F541F0(0, &qword_1EE06E490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGImageRef.circularCrop()()
{
  v1 = v0;
  v2 = sub_1D0FF44C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v0);
  BitmapInfo = CGImageGetBitmapInfo(v0);
  v7 = CGImageGetWidth(v0);
  v8 = CGImageGetHeight(v1);
  BitsPerComponent = CGImageGetBitsPerComponent(v1);
  result = CGImageGetColorSpace(v1);
  if (result || (result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0])) != 0)
  {
    v11 = result;
    v12 = __CGBitmapContextCreate(v7, v8, BitsPerComponent, result, BitmapInfo & 0xFFFFFFE0 | 1);

    if (v12)
    {
      v13 = Width;
      v14 = Height;
      CGContextBeginPath(v12);
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = v13;
      v24.size.height = v14;
      CGContextAddEllipseInRect(v12, v24);
      CGContextClosePath(v12);
      (*(v3 + 104))(v5, *MEMORY[0x1E695EEB8], v2);
      sub_1D0FF5908();
      (*(v3 + 8))(v5, v2);
      sub_1D0FF5918();
      Image = CGBitmapContextCreateImage(v12);
      if (Image)
      {
        v16 = Image;
      }

      else
      {
        type metadata accessor for ImageGenerationError();
        sub_1D0FC2034(&qword_1EC5FD148, type metadata accessor for ImageGenerationError);
        swift_allocError();
        v16 = v19;
        sub_1D0FC1EB8();
        (*(*(v20 - 8) + 56))(v16, 4, 6, v20);
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for ImageGenerationError();
      sub_1D0FC2034(&qword_1EC5FD148, type metadata accessor for ImageGenerationError);
      swift_allocError();
      v16 = v17;
      sub_1D0FC1EB8();
      (*(*(v18 - 8) + 56))(v16, 3, 6, v18);
      swift_willThrow();
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CGImageRef.write(to:imageType:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D0FF41B8();
  sub_1D0FF4AE8();
  v5 = sub_1D0FF53E8();

  v6 = CGImageDestinationCreateWithURL(v4, v5, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, v2, 0);
    if (!CGImageDestinationFinalize(v6))
    {
      type metadata accessor for ImageGenerationError();
      sub_1D0FC2034(&qword_1EC5FD148, type metadata accessor for ImageGenerationError);
      swift_allocError();
      v8 = v7;
      sub_1D0FC1EB8();
      (*(*(v9 - 8) + 56))(v8, 6, 6, v9);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ImageGenerationError();
    sub_1D0FC2034(&qword_1EC5FD148, type metadata accessor for ImageGenerationError);
    swift_allocError();
    v11 = v10;
    v12 = sub_1D0FF4238();
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    sub_1D0FC1EB8();
    (*(*(v13 - 8) + 56))(v11, 0, 6, v13);
    swift_willThrow();
  }
}

void sub_1D0FC17E4(double a1, double a2)
{
  v4 = sub_1D0FF4278();
  v5 = CGImageSourceCreateWithData(v4, 0);

  if (!v5)
  {
    type metadata accessor for ImageGenerationError();
    sub_1D0FC2034(&qword_1EC5FD148, type metadata accessor for ImageGenerationError);
    swift_allocError();
    v13 = v12;
    sub_1D0FC1EB8();
    (*(*(v14 - 8) + 56))(v13, 1, 6, v14);
    swift_willThrow();
    return;
  }

  sub_1D0FC1F80();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D0FFA320;
  v7 = *MEMORY[0x1E696E0A8];
  *(inited + 32) = *MEMORY[0x1E696E0A8];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v8 = v7;
  v9 = sub_1D0F52EE4(inited);
  swift_setDeallocating();
  sub_1D0FC1FD8(inited + 32);
  if (a1 > a2)
  {
    a2 = a1;
  }

  type metadata accessor for CFString(0);
  sub_1D0FC2034(&qword_1EC5FC710, type metadata accessor for CFString);

  v10 = sub_1D0FF5328();

  v11 = CGImageSourceCopyPropertiesAtIndex(v5, 0, v10);

  if (v11)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v41 = 0;
      type metadata accessor for CFNumber(0);
      sub_1D0FF5338();
    }
  }

  v15 = sub_1D0FF5868();
  v16 = sub_1D0FF5868();
  v17 = v15;
  v18 = sub_1D0FF5858();

  v19 = v16;
  v20 = sub_1D0FF5858();

  v21 = v18;
  if (v18 <= v20)
  {
    v21 = v20;
  }

  v22 = floor(log2(v21 / a2));
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v23 = *MEMORY[0x1E696E0F8];
  v42 = MEMORY[0x1E69E6530];
  *&v41 = v22;
  sub_1D0F54254(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v9;
  sub_1D0FC8E90(v40, v23, isUniquelyReferenced_nonNull_native);
  v25 = v43;
  v26 = *MEMORY[0x1E696E100];
  v42 = MEMORY[0x1E69E7DE0];
  *&v41 = a2;
  sub_1D0F54254(&v41, v40);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v25;
  sub_1D0FC8E90(v40, v26, v27);
  v28 = v43;
  v29 = *MEMORY[0x1E696DFF0];
  v30 = MEMORY[0x1E69E6370];
  v42 = MEMORY[0x1E69E6370];
  LOBYTE(v41) = 1;
  sub_1D0F54254(&v41, v40);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v28;
  sub_1D0FC8E90(v40, v29, v31);
  v32 = v43;
  v33 = *MEMORY[0x1E696E000];
  v42 = v30;
  LOBYTE(v41) = 1;
  sub_1D0F54254(&v41, v40);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v32;
  sub_1D0FC8E90(v40, v33, v34);
  v35 = sub_1D0FF5328();

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, v35);

  if (ThumbnailAtIndex)
  {
  }

  else
  {
    type metadata accessor for ImageGenerationError();
    sub_1D0FC2034(&qword_1EC5FD148, type metadata accessor for ImageGenerationError);
    swift_allocError();
    v38 = v37;
    sub_1D0FC1EB8();
    (*(*(v39 - 8) + 56))(v38, 2, 6, v39);
    swift_willThrow();
  }
}

uint64_t type metadata accessor for ImageGenerationError()
{
  result = qword_1EC5FD158;
  if (!qword_1EC5FD158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0FC1EB8()
{
  if (!qword_1EC5FD150)
  {
    v0 = sub_1D0FF4238();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD150);
    }
  }
}

uint64_t sub_1D0FC1F28()
{
  sub_1D0FC1EB8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D0FC1F80()
{
  if (!qword_1EC5FD168)
  {
    sub_1D0F5436C();
    v0 = sub_1D0FF6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD168);
    }
  }
}

uint64_t sub_1D0FC1FD8(uint64_t a1)
{
  sub_1D0F5436C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0FC2034(unint64_t *a1, void (*a2)(uint64_t))
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

void static LegacyObservable.run(on:_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = static LegacyObservable.create()(v16);
  v12 = v11;
  v13 = v16[0];
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = a2;
  v14[6] = a3;
  v16[4] = sub_1D0FC2294;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D0F1E1EC;
  v16[3] = &block_descriptor_15;
  v15 = _Block_copy(v16);

  [a1 addOperationWithBlock_];

  _Block_release(v15);
  *a5 = v13;
}

uint64_t sub_1D0FC21B4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  a1(v10);
  return (*(v7 + 8))(v10, a5);
}

uint64_t sub_1D0FC22E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D0FC2348(uint64_t *a1))()
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
  return sub_1D0FC23DC;
}

uint64_t AdvertisableFeatureManager.__allocating_init(location:sources:analyticsEventSubmissionManager:queue:timeout:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  LOBYTE(a1) = *a1;
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1D0FC8D80(0, &qword_1EC5FD170, type metadata accessor for AtomicLazy);
  v11 = swift_allocObject();
  sub_1D0FC8CFC();
  v12 = swift_allocObject();
  *(v12 + 36) = 0;
  *(v12 + 16) = sub_1D0FC8C40;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v11 + 16) = v12;
  *(v10 + 48) = v11;
  sub_1D0FF4548();
  swift_allocObject();
  *(v10 + 56) = sub_1D0FF4538();
  *(v10 + 64) = 0;
  v13 = sub_1D0F53790(MEMORY[0x1E69E7CC0]);
  *(v10 + 40) = a2;
  *(v10 + 32) = a1;
  *(v10 + 72) = v13;
  *(v10 + 80) = a3;
  *(v10 + 88) = a4;
  *(v10 + 96) = a5;
  return v10;
}

uint64_t AdvertisableFeatureManager.init(location:sources:analyticsEventSubmissionManager:queue:timeout:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v11 = *a1;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1D0FC8D80(0, &qword_1EC5FD170, type metadata accessor for AtomicLazy);
  v12 = swift_allocObject();
  sub_1D0FC8CFC();
  v13 = swift_allocObject();
  *(v13 + 36) = 0;
  *(v13 + 16) = sub_1D0FC8C40;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v12 + 16) = v13;
  *(v6 + 48) = v12;
  sub_1D0FF4548();
  swift_allocObject();
  *(v6 + 56) = sub_1D0FF4538();
  *(v6 + 64) = 0;
  v14 = sub_1D0F53790(MEMORY[0x1E69E7CC0]);
  *(v6 + 40) = a2;
  *(v6 + 32) = v11;
  *(v6 + 72) = v14;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  return v6;
}

uint64_t sub_1D0FC2614()
{
  v55 = *v0;
  v1 = sub_1D0FF4C18();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D0FF5238();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D0FF5288();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v43 - v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D0F53870(MEMORY[0x1E69E7CC0]);
  v52 = v9 + 16;
  sub_1D0FF4548();
  swift_allocObject();
  v10 = sub_1D0FF4538();
  v11 = dispatch_group_create();
  v56 = v0;
  v12 = *(v0 + 5);
  v13 = *(v12 + 16);
  if (v13)
  {
    v54 = *(v56 + 32);
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      v57 = v15;
      swift_unknownObjectRetain();
      dispatch_group_enter(v11);
      ObjectType = swift_getObjectType();
      v17 = swift_allocObject();
      *(v17 + 16) = v11;
      v18 = *(&v57 + 1);
      *(v17 + 24) = v57;
      *(v17 + 40) = v10;
      *(v17 + 48) = v9;
      *(v17 + 56) = v54;
      *(v17 + 64) = v55;
      v19 = v18;
      *&v57 = *(v18 + 48);
      swift_unknownObjectRetain();
      v20 = v11;

      (v57)(sub_1D0FCA14C, v17, ObjectType, v19);

      v21 = *(v19 + 24);
      v22 = swift_unknownObjectRetain();
      v21(v22, &protocol witness table for AdvertisableFeatureManager, ObjectType, v19);
      swift_unknownObjectRelease();
      --v13;
    }

    while (v13);
  }

  *&v57 = v11;
  v23 = v53;
  result = sub_1D0FF5278();
  v25 = v56[12];
  v26 = v25 * 1000.0;
  if (COERCE__INT64(fabs(v25 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v27 = v47;
  *v47 = v26;
  v29 = v50;
  v28 = v51;
  (*(v50 + 104))(v27, *MEMORY[0x1E69E7F38], v51);
  v30 = v46;
  MEMORY[0x1D38808A0](v23, v27);
  (*(v29 + 8))(v27, v28);
  v31 = v49;
  v32 = *(v48 + 8);
  v32(v23, v49);
  v33 = v57;
  LOBYTE(v28) = sub_1D0FF5AF8();
  v32(v30, v31);
  if (v28)
  {
    v34 = v45;
    sub_1D0FF4B98();

    v35 = sub_1D0FF4C08();
    v36 = sub_1D0FF5958();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58[0] = v38;
      *v37 = 136315394;
      v39 = sub_1D0FF6468();
      v41 = sub_1D0F1AE0C(v39, v40, v58);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2048;
      *(v37 + 14) = v25;
      _os_log_impl(&dword_1D0F17000, v35, v36, "[%s] Operation timed out after %f seconds", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1D3882680](v38, -1, -1);
      MEMORY[0x1D3882680](v37, -1, -1);
    }

    (*(v43 + 8))(v34, v44);
    v33 = v57;
  }

  sub_1D0FF4518();
  swift_beginAccess();
  v42 = *(v9 + 16);

  sub_1D0FF4528();

  return v42;
}

void sub_1D0FC2C04(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *&v40 = a8;
  LODWORD(v41) = a7;
  v42 = a6;
  v43 = a5;
  v44 = a2;
  v9 = sub_1D0FF4C18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  LODWORD(a1) = *(a1 + 16);
  sub_1D0FF4B98();
  swift_unknownObjectRetain();
  v15 = sub_1D0FF4C08();
  v16 = sub_1D0FF5978();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = a1;
    a1 = v17;
    v18 = swift_slowAlloc();
    v38 = v9;
    v19 = v18;
    *&v47[0] = v18;
    *a1 = 136315394;
    v20 = sub_1D0FF6468();
    v22 = sub_1D0F1AE0C(v20, v21, v47);
    *&v40 = v13;
    v23 = v22;

    *(a1 + 4) = v23;
    *(a1 + 12) = 2082;
    ObjectType = swift_getObjectType();
    (*(a4 + 8))(&v45, ObjectType, a4);
    v25 = sub_1D0FF5448();
    v13 = sub_1D0F1AE0C(v25, v26, v47);

    *(a1 + 14) = v13;
    LOBYTE(v13) = v40;
    _os_log_impl(&dword_1D0F17000, v15, v16, "[%s] Source with identifier %{public}s returned", a1, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v19, -1, -1);
    v27 = a1;
    LOBYTE(a1) = v39;
    MEMORY[0x1D3882680](v27, -1, -1);

    (*(v10 + 8))(v12, v38);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v28 = (a1 ^ 1) & v13;
  sub_1D0FF4518();
  v29 = swift_getObjectType();
  v30 = *(a4 + 8);
  v30(&v49, v29, a4);
  v31 = v49;
  v30(&v45, v29, a4);
  v32 = v45;
  v46 = v41 & 1;
  (*(a4 + 40))(v47, &v46, v29, a4);
  v40 = v47[1];
  v41 = v47[0];
  v33 = v48;
  type metadata accessor for AdvertisableFeatureModel();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v40;
  *(v34 + 24) = v41;
  *(v34 + 40) = v35;
  *(v34 + 56) = v33;
  v46 = v28;
  sub_1D0FCA52C(0, &qword_1EE06F800, MEMORY[0x1E69E6370], MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *(v34 + 72) = sub_1D0FF4938();
  v46 = 1;
  swift_allocObject();
  *(v34 + 64) = sub_1D0FF4938();
  v36 = v42;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v36 + 16);
  *(v36 + 16) = 0x8000000000000000;
  sub_1D0FC9120(v34, v31, isUniquelyReferenced_nonNull_native);
  *(v36 + 16) = v45;
  swift_endAccess();
  sub_1D0FF4528();
  dispatch_group_leave(v44);
}

uint64_t sub_1D0FC3018(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D0FF5248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D0FF5268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_1D0FC9DAC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = &block_descriptor_16;
  v14 = _Block_copy(aBlock);

  sub_1D0FF5258();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1D0FC9DB8(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0F5D378();
  sub_1D0FC9DB8(&qword_1EE071278, sub_1D0F5D378);
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_1D0FC32EC(void (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 48) + 16);

  os_unfair_lock_lock(v4 + 9);
  sub_1D0FCA584(&v4[4], &v16);
  os_unfair_lock_unlock(v4 + 9);
  v5 = v16;

  v7 = 0;
  v14[0] = MEMORY[0x1E69E7CC0];
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v13 = sub_1D0F363FC(v14[0]);

      v14[0] = v13;
      v14[1] = 0;
      v15 = 0;
      a1(v14);
      return sub_1D0F2C31C();
    }

    v10 = *(v5 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;

        sub_1D0FF4908();

        if (v16)
        {
          sub_1D0FF5E88();
          sub_1D0FF5EC8();
          sub_1D0FF5ED8();
          result = sub_1D0FF5E98();
          v7 = v12;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v7 = v12;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v12 = v7;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0FC34D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000001D1005460;
  v8[4] = sub_1D0FC9E00;
  v8[5] = v6;
  v8[6] = v2;
  v8[7] = sub_1D0FC9E08;
  v8[8] = v7;
  v8[9] = v5;

  sub_1D0FC5664(sub_1D0FC9E14, v8);
}

uint64_t (*sub_1D0FC3630(uint64_t a1, uint64_t a2))()
{
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B98();
  swift_unknownObjectRetain();
  v8 = sub_1D0FF4C08();
  v9 = sub_1D0FF5938();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26 = v4;
    v11 = a2;
    v12 = v10;
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = sub_1D0FF6468();
    v16 = sub_1D0F1AE0C(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(&v27, ObjectType, v11);
    v18 = sub_1D0FF5448();
    v20 = sub_1D0F1AE0C(v18, v19, &v28);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D0F17000, v8, v9, "[%s] Performing prerequisite work on %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v13, -1, -1);
    v21 = v12;
    a2 = v11;
    MEMORY[0x1D3882680](v21, -1, -1);

    (*(v5 + 8))(v7, v26);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D0FCA3CC;
  *(v23 + 24) = v22;
  swift_unknownObjectRetain();
  return sub_1D0FCA434;
}

uint64_t sub_1D0FC38E8(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v37 = a3;
  v39 = a2;
  v35 = sub_1D0FF4C18();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  sub_1D0FF4B98();
  sub_1D0F2C3D0();

  v14 = sub_1D0FF4C08();
  v15 = sub_1D0FF5978();
  v36 = v8;
  sub_1D0F2C31C();

  v34 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v14;
    v17 = v16;
    v32 = swift_slowAlloc();
    v47 = v32;
    *v17 = 136315394;
    v18 = sub_1D0FF6468();
    v19 = v9;
    v21 = sub_1D0F1AE0C(v18, v20, &v47);
    v22 = v19;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v23 = v36;
    v40 = v36;
    v41 = v7;
    v42 = v22;
    v43 = v11;
    v44 = v10;
    v45 = v13;
    v46 = v12;
    sub_1D0F2C3D0();
    sub_1D0FCA52C(0, &qword_1EC5FD190, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AdvertisableFeatureManager.CollectionResult);

    v24 = sub_1D0FF5448();
    v26 = sub_1D0F1AE0C(v24, v25, &v47);

    *(v17 + 14) = v26;
    v27 = v31;
    _os_log_impl(&dword_1D0F17000, v31, v34, "[%s] Completed performing prerequisite work: %{public}s", v17, 0x16u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v28, -1, -1);
    MEMORY[0x1D3882680](v17, -1, -1);

    (*(v38 + 8))(v6, v35);
    if (!v22)
    {
LABEL_3:
      v40 = 0;
      v41 = 0;
      v42 = 0;
      return v39(&v40);
    }
  }

  else
  {

    (*(v38 + 8))(v6, v35);
    v23 = v36;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  v40 = v23;
  v41 = v7;
  v42 = 1;

  v39(&v40);
  return sub_1D0F2D710(v40, v41, v42);
}

uint64_t sub_1D0FC3C6C(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAppleInternalInstall] && (v10 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v11 = sub_1D0FF53E8(), v25 = a1, v12 = v11, v13 = objc_msgSend(v10, sel_BOOLForKey_, v11), v10, v12, a1 = v25, v13))
  {
    sub_1D0FF4B98();
    v14 = sub_1D0FF4C08();
    v15 = sub_1D0FF5958();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = sub_1D0FF6468();
      v20 = sub_1D0F1AE0C(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D0F17000, v14, v15, "[%s] Commit enablement returning forced error due to HKHealthFeatureEnablementCommitShouldReturnErrorOverride default", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1D3882680](v17, -1, -1);
      MEMORY[0x1D3882680](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v26 = 0xD000000000000017;
    v27 = 0x80000001D10054E0;
    v28 = 1;
    v25(&v26);
    return sub_1D0F2D710(v26, v27, v28);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = a1;
    v23[4] = a2;
    v23[5] = v5;
    v24 = swift_allocObject();
    v24[2] = 0xD000000000000011;
    v24[3] = 0x80000001D1005480;
    v24[4] = sub_1D0FC9E18;
    v24[5] = v22;
    v24[6] = v2;
    v24[7] = sub_1D0FC9E20;
    v24[8] = v23;
    v24[9] = v5;
    swift_retain_n();

    sub_1D0FC5664(sub_1D0FCA5B4, v24);
  }
}

uint64_t (*sub_1D0FC4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_unknownObjectRetain();

  return sub_1D0FCA210;
}

uint64_t sub_1D0FC40BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v31 = a1;
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B98();
  swift_unknownObjectRetain();

  v8 = sub_1D0FF4C08();
  v9 = sub_1D0FF5938();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v4;
    v12 = v11;
    v36 = v11;
    *v10 = 136315651;
    v13 = sub_1D0FF6468();
    v15 = sub_1D0F1AE0C(v13, v14, &v36);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(&v35, ObjectType);
    v17 = sub_1D0FF5448();
    v19 = sub_1D0F1AE0C(v17, v18, &v36);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2081;

    sub_1D0FF4908();

    if (v34)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v34)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = sub_1D0F1AE0C(v20, v21, &v36);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1D0F17000, v8, v9, "[%s] Committing enablement for %{public}s: %{private}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v12, -1, -1);
    MEMORY[0x1D3882680](v10, -1, -1);

    (*(v5 + 8))(v7, v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v23 = swift_getObjectType();

  sub_1D0FF4908();

  v24 = v37;
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  v26 = v33;
  *(v25 + 24) = v32;
  v27 = *(v26 + 64);

  v27(v24, sub_1D0FCA21C, v25, v23, v26);
}

uint64_t sub_1D0FC4424(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v38 = a4;
  v41 = a3;
  v35 = a2;
  v36 = sub_1D0FF4C18();
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  sub_1D0FF4B98();
  sub_1D0F2C3D0();

  v15 = sub_1D0FF4C08();
  v16 = sub_1D0FF5978();
  v39 = v8;
  v17 = v10;
  v37 = v9;
  sub_1D0F2C31C();

  v34 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v31 = v15;
    v19 = v18;
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v19 = 136315394;
    v20 = sub_1D0FF6468();
    v22 = sub_1D0F1AE0C(v20, v21, v49);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v23 = v39;
    v24 = v37;
    v42 = v39;
    v43 = v37;
    v44 = v17;
    v45 = v12;
    v46 = v11;
    v47 = v13;
    v48 = v14;
    sub_1D0F2C3D0();
    sub_1D0FCA52C(0, &qword_1EC5FD190, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AdvertisableFeatureManager.CollectionResult);

    v25 = sub_1D0FF5448();
    v27 = sub_1D0F1AE0C(v25, v26, v49);

    *(v19 + 14) = v27;
    v28 = v31;
    _os_log_impl(&dword_1D0F17000, v31, v34, "[%s] Completed committing enablement: %{public}s", v19, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v29, -1, -1);
    MEMORY[0x1D3882680](v19, -1, -1);

    (*(v40 + 8))(v7, v36);
    if (!v17)
    {
LABEL_3:
      sub_1D0FC7748();
      v42 = 0;
      v43 = 0;
      v44 = 0;
      return v41(&v42);
    }
  }

  else
  {

    (*(v40 + 8))(v7, v36);
    v24 = v37;
    v23 = v39;
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  v42 = v23;
  v43 = v24;
  v44 = 1;

  v41(&v42);
  return sub_1D0F2D710(v42, v43, v44);
}

uint64_t sub_1D0FC47B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1D0FC5664(sub_1D0FC9E2C, v4);
}

uint64_t sub_1D0FC4838(uint64_t result, void (*a2)(void *))
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    v25[0] = MEMORY[0x1E69E7CC0];
    sub_1D0FD0CAC(0, v3, 0);
    v5 = v25[0];
    v6 = v4 + 48;
    do
    {
      v7 = *(v6 - 8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();

      sub_1D0FF4908();

      v9 = (*(v7 + 72))(v27, ObjectType, v7);

      result = swift_unknownObjectRelease();
      v25[0] = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        result = sub_1D0FD0CAC((v10 > 1), v11 + 1, 1);
        v5 = v25[0];
      }

      *(v5 + 16) = v12;
      *(v5 + 8 * v11 + 32) = v9;
      v6 += 24;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
LABEL_25:

      v25[0] = v13;
      v25[1] = 0;
      v26 = 0;
      a2(v25);
      return sub_1D0F2C31C();
    }
  }

  v14 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v14 < *(v5 + 16))
  {
    v15 = *(v5 + 8 * v14 + 32);
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_27;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v13[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v13 = sub_1D0F50640(isUniquelyReferenced_nonNull_native, v20, 1, v13);
      if (*(v15 + 16))
      {
LABEL_21:
        v21 = (v13[3] >> 1) - v13[2];
        result = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
        if (v21 < v16)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v13[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_30;
          }

          v13[2] = v24;
        }

        goto LABEL_10;
      }
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_10:
    if (v12 == ++v14)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D0FC4AF4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v65 = *v2;
  v68 = sub_1D0FF4C18();
  result = MEMORY[0x1EEE9AC00](v68);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v2;
  v10 = v2[5];
  v11 = *(v10 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v67 = (v6 + 8);
  v15 = v10 + 40;
  *&v7 = 136315394;
  v64 = v7;
  v62 = a2;
  v61 = a1;
  v69 = v10;
  v70 = v9;
  v60 = v11;
  v59 = v10 + 40;
  while (2)
  {
    v63 = v13;
    v16 = v11 - v12;
    v17 = (v15 + 16 * v12);
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v75 = v16;
      v20 = *(v17 - 1);
      v19 = *v17;
      ObjectType = swift_getObjectType();
      v22 = *(v19 + 8);
      swift_unknownObjectRetain();
      v73 = ObjectType;
      v74 = v19;
      v72 = v22;
      v23 = (v22)(&v76, ObjectType, v19);
      v24 = v76;
      v25 = *(v71 + 48);
      v77[0] = v71;
      v26 = *(v25 + 16);
      MEMORY[0x1EEE9AC00](v23);
      *(&v58 - 2) = v77;

      os_unfair_lock_lock(v26 + 9);
      sub_1D0FC9E34(&v26[4], v78);
      os_unfair_lock_unlock(v26 + 9);
      v27 = v78[0];

      if (!*(v27 + 16) || (v28 = sub_1D0FA27FC(v24), (v29 & 1) == 0))
      {

        v31 = v70;
        sub_1D0FF4B98();
        swift_unknownObjectRetain();
        v32 = sub_1D0FF4C08();
        v33 = sub_1D0FF5968();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v66 = v14;
          v36 = v35;
          v77[0] = v35;
          *v34 = v64;
          v37 = sub_1D0FF6468();
          v39 = sub_1D0F1AE0C(v37, v38, v77);

          *(v34 + 4) = v39;
          *(v34 + 12) = 2082;
          v72(v78, v73, v74);
          LOBYTE(v76) = v78[0];
          v40 = sub_1D0FF5448();
          v42 = sub_1D0F1AE0C(v40, v41, v77);

          *(v34 + 14) = v42;
          _os_log_impl(&dword_1D0F17000, v32, v33, "[%s] Unable to find source identifier %{public}s in advertisable feature dictionary", v34, 0x16u);
          swift_arrayDestroy();
          v43 = v36;
          v14 = v66;
          MEMORY[0x1D3882680](v43, -1, -1);
          v44 = v34;
          v31 = v70;
          MEMORY[0x1D3882680](v44, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        result = (*v67)(v31, v68);
        v18 = v75;
        goto LABEL_6;
      }

      v30 = *(*(v27 + 56) + 8 * v28);

      sub_1D0FF4908();

      v18 = v75;
      if (LOBYTE(v77[0]) == 1)
      {
        break;
      }

      swift_unknownObjectRelease();

LABEL_6:
      v17 += 2;
      ++v12;
      v16 = v18 - 1;
      v10 = v69;
      if (!v16)
      {
        LOBYTE(v13) = v63;
        goto LABEL_17;
      }
    }

    v45 = v61(v20, v74, v30);
    swift_unknownObjectRelease();

    v13 = v45 | v63;
    ++v12;
    v10 = v69;
    v11 = v60;
    v15 = v59;
    if (v18 != 1)
    {
      continue;
    }

    break;
  }

LABEL_17:
  if (v13)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v46 = *(v71 + 24);
      v47 = *(v71 + 48);
      v78[0] = v71;
      v48 = *(v47 + 16);
      MEMORY[0x1EEE9AC00](result);
      *(&v58 - 2) = v78;

      os_unfair_lock_lock(v48 + 9);
      sub_1D0FCA584(&v48[4], &v76);
      os_unfair_lock_unlock(v48 + 9);
      v49 = v76;

      v50 = 0;
      v78[0] = MEMORY[0x1E69E7CC0];
      v51 = 1 << *(v49 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v49 + 64);
      v54 = (v51 + 63) >> 6;
      if (v53)
      {
        goto LABEL_24;
      }

LABEL_25:
      while (1)
      {
        v55 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_34;
        }

        if (v55 >= v54)
        {
          v56 = swift_getObjectType();

          v57 = sub_1D0F363FC(v78[0]);

          (*(v46 + 8))(v71, v57, v56, v46);

          return swift_unknownObjectRelease();
        }

        v53 = *(v49 + 64 + 8 * v55);
        ++v50;
        if (v53)
        {
          while (1)
          {
            v53 &= v53 - 1;

            sub_1D0FF4908();

            if (v76)
            {
              sub_1D0FF5E88();
              sub_1D0FF5EC8();
              sub_1D0FF5ED8();
              result = sub_1D0FF5E98();
              v50 = v55;
              if (!v53)
              {
                goto LABEL_25;
              }
            }

            else
            {

              v50 = v55;
              if (!v53)
              {
                goto LABEL_25;
              }
            }

LABEL_24:
            v55 = v50;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0FC518C()
{

  sub_1D0FF4518();

  *(v0 + 64) = 1;

  sub_1D0FF4528();
}

uint64_t sub_1D0FC51F0()
{
  v1 = v0;

  sub_1D0FF4518();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v29 = *(v2 + 16);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v30 = *(v0 + 72);
  v32 = v0;

  v9 = 0;
  if (v6)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v11 = *(*(v30 + 48) + (__clz(__rbit64(v6)) | (v10 << 6)));
        v6 &= v6 - 1;
        v12 = *(v1 + 48);
        v33[1] = v1;
        v13 = *(v12 + 16);
        MEMORY[0x1EEE9AC00](result);

        os_unfair_lock_lock(v13 + 9);
        sub_1D0FCA584(&v13[4], &v34);
        os_unfair_lock_unlock(v13 + 9);
        v14 = v34;

        if (*(v14 + 16) && (sub_1D0FA27FC(v11), (v15 & 1) != 0))
        {

          MEMORY[0x1EEE9AC00](v16);

          sub_1D0FF4918();

          v9 = v10;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v9 = v10;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v10 = v9;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = sub_1D0F53790(MEMORY[0x1E69E7CC0]);

  sub_1D0FF4528();

  if (v29)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v31 = *(v32 + 24);
      v18 = *(v32 + 48);
      v34 = v32;
      v19 = *(v18 + 16);
      MEMORY[0x1EEE9AC00](result);

      os_unfair_lock_lock(v19 + 9);
      sub_1D0FCA584(&v19[4], v33);
      os_unfair_lock_unlock(v19 + 9);
      v20 = v33[0];

      v21 = 0;
      v34 = v17;
      v22 = 1 << *(v20 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v20 + 64);
      v25 = (v22 + 63) >> 6;
      if (v24)
      {
        goto LABEL_21;
      }

LABEL_22:
      while (1)
      {
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_31;
        }

        if (v26 >= v25)
        {
          ObjectType = swift_getObjectType();

          v28 = sub_1D0F363FC(v34);

          (*(v31 + 8))(v32, v28, ObjectType);

          return swift_unknownObjectRelease();
        }

        v24 = *(v20 + 64 + 8 * v26);
        ++v21;
        if (v24)
        {
          while (1)
          {
            v24 &= v24 - 1;

            sub_1D0FF4908();

            if (v33[0])
            {
              sub_1D0FF5E88();
              sub_1D0FF5EC8();
              sub_1D0FF5ED8();
              result = sub_1D0FF5E98();
              v21 = v26;
              if (!v24)
              {
                goto LABEL_22;
              }
            }

            else
            {

              v21 = v26;
              if (!v24)
              {
                goto LABEL_22;
              }
            }

LABEL_21:
            v26 = v21;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0FC5664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1D0FF5248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D0FF5268();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v3[11];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = v6;
  aBlock[4] = sub_1D0FCA2A8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = &block_descriptor_87;
  v16 = _Block_copy(aBlock);

  sub_1D0FF5258();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1D0FC9DB8(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0F5D378();
  sub_1D0FC9DB8(&qword_1EE071278, sub_1D0F5D378);
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_1D0FC5968(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v53 = sub_1D0FF4C18();
  result = MEMORY[0x1EEE9AC00](v53);
  v57 = a1;
  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  if (!v12)
  {
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 0;
  v54 = v11 + 32;
  v52 = (v8 + 8);
  v47[0] = v12 - 1;
  v49 = MEMORY[0x1E69E7CC0];
  *&v10 = 136315394;
  v50 = v10;
  v48 = a2;
  v47[1] = a3;
  v58 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v12;
  v56 = v11;
  do
  {
    v15 = v13;
    while (1)
    {
      if (v15 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v61 = *(v54 + 16 * v15);
      ObjectType = swift_getObjectType();
      v18 = *(&v61 + 1);
      v19 = *(*(&v61 + 1) + 8);
      swift_unknownObjectRetain();
      v59 = v19;
      v60 = ObjectType;
      v20 = (v19)(&v64, ObjectType, v18);
      v21 = v64;
      v22 = *(v57 + 48);
      v63 = v57;
      v23 = *(v22 + 16);
      MEMORY[0x1EEE9AC00](v20);
      v47[-2] = &v63;

      os_unfair_lock_lock(v23 + 9);
      sub_1D0FCA584(&v23[4], &v62);
      os_unfair_lock_unlock(v23 + 9);
      v24 = v62;

      if (!*(v24 + 16) || (v25 = sub_1D0FA27FC(v21), (v26 & 1) == 0))
      {

        v28 = v58;
        sub_1D0FF4B98();
        swift_unknownObjectRetain();
        v29 = sub_1D0FF4C08();
        v30 = sub_1D0FF5968();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *&v61 = v14;
          v33 = v32;
          v63 = v32;
          *v31 = v50;
          v34 = sub_1D0FF6468();
          v36 = sub_1D0F1AE0C(v34, v35, &v63);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          v59(&v62, v60, v18);
          LOBYTE(v64) = v62;
          v37 = sub_1D0FF5448();
          v39 = sub_1D0F1AE0C(v37, v38, &v63);

          *(v31 + 14) = v39;
          _os_log_impl(&dword_1D0F17000, v29, v30, "[%s] Unable to find source identifier %{public}s in advertisable feature dictionary", v31, 0x16u);
          swift_arrayDestroy();
          v40 = v33;
          v14 = v61;
          MEMORY[0x1D3882680](v40, -1, -1);
          v41 = v31;
          v28 = v58;
          MEMORY[0x1D3882680](v41, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        result = (*v52)(v28, v53);
        v16 = v55;
        v11 = v56;
        goto LABEL_6;
      }

      v27 = *(*(v24 + 56) + 8 * v25);

      sub_1D0FF4908();

      v16 = v55;
      if (v63 == 1)
      {
        break;
      }

      swift_unknownObjectRelease();

      v11 = v56;
LABEL_6:
      if (v16 == ++v15)
      {
        v48(v49);
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v42 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1D0F50854(0, v49[2] + 1, 1, v49);
      v49 = result;
    }

    v44 = v49[2];
    v43 = v49[3];
    if (v44 >= v43 >> 1)
    {
      result = sub_1D0F50854((v43 > 1), v44 + 1, 1, v49);
      v49 = result;
    }

    v13 = v15 + 1;
    v45 = v49;
    v49[2] = v44 + 1;
    v46 = &v45[3 * v44];
    *(v46 + 2) = v61;
    v46[6] = v27;
    a2 = v48;
    v11 = v56;
    v14 = v42;
  }

  while (v47[0] != v15);
LABEL_22:
  a2(v49);
}

uint64_t sub_1D0FC5E64()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  sub_1D0F2C3D0();
  sub_1D0FF5DE8();
  sub_1D0FF56E8();
  sub_1D0F51870();
  sub_1D0FF6418();
  v5 = sub_1D0FF5448();
  MEMORY[0x1D3880AC0](v5);

  MEMORY[0x1D3880AC0](0x5B203A6C6C612820, 0xE800000000000000);
  v6 = sub_1D0FC6048(v2);
  MEMORY[0x1D3880AC0](v6);

  MEMORY[0x1D3880AC0](0x7275746572202C5DLL, 0xEE005B203A64656ELL);
  v7 = sub_1D0FC6048(v1);
  MEMORY[0x1D3880AC0](v7);

  MEMORY[0x1D3880AC0](0xD000000000000010, 0x80000001D10055C0);
  v8 = sub_1D0FC6048(v4);
  MEMORY[0x1D3880AC0](v8);

  MEMORY[0x1D3880AC0](0x656C696166202C5DLL, 0xEC0000005B203A64);
  v9 = sub_1D0FC6048(v3);
  MEMORY[0x1D3880AC0](v9);

  MEMORY[0x1D3880AC0](10589, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D0FC6048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D0FD0C6C(0, v1, 0);
    v3 = (a1 + 32);
    v4 = v30;
    v5 = "ready";
    v6 = "lowHeartRateNotification";
    v7 = "trendNotification";
    v8 = "walkingSteadinessNotification";
    v9 = "lowCardioFitnessNotification";
    do
    {
      v11 = *v3++;
      v10 = v11;
      v12 = 0xD00000000000001CLL;
      v13 = 0xD00000000000001DLL;
      if (v11 == 4)
      {
        v14 = v7;
      }

      else
      {
        v13 = 0xD00000000000001ELL;
        v14 = v8;
      }

      if (v10 == 3)
      {
        v13 = 0xD000000000000011;
        v14 = v6;
      }

      v15 = 0xD000000000000019;
      if (v10 == 1)
      {
        v16 = v9;
      }

      else
      {
        v15 = 0xD000000000000018;
        v16 = "highHeartRateNotification";
      }

      if (v10)
      {
        v12 = v15;
        v17 = v16;
      }

      else
      {
        v17 = v5;
      }

      if (v10 <= 2)
      {
        v18 = v12;
      }

      else
      {
        v18 = v13;
      }

      if (v10 <= 2)
      {
        v19 = v17;
      }

      else
      {
        v19 = v14;
      }

      v31 = v4;
      v21 = *(v4 + 16);
      v20 = *(v4 + 24);
      if (v21 >= v20 >> 1)
      {
        v26 = v9;
        v27 = v8;
        v28 = v7;
        v29 = v5;
        v23 = v6;
        sub_1D0FD0C6C((v20 > 1), v21 + 1, 1);
        v9 = v26;
        v8 = v27;
        v7 = v28;
        v5 = v29;
        v6 = v23;
        v4 = v31;
      }

      *(v4 + 16) = v21 + 1;
      v22 = v4 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19 | 0x8000000000000000;
      --v1;
    }

    while (v1);
  }

  sub_1D0FCA52C(0, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D0F7420C();
  v24 = sub_1D0FF5388();

  return v24;
}

uint64_t sub_1D0FC6238(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, char *a9)
{
  v77 = a8;
  v78 = a7;
  v82 = a6;
  v88 = a4;
  v89 = a5;
  v12 = a9;
  v74 = sub_1D0FF5238();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_1D0FF5288();
  v71 = *(v72 - 8);
  v14 = MEMORY[0x1EEE9AC00](v72);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v69 - v16;
  v87 = sub_1D0FF4C18();
  v17 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v93 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v75 = (v19 + 16);
  v76 = sub_1D0FF4548();
  swift_allocObject();
  v91 = sub_1D0FF4538();
  v92 = dispatch_group_create();
  v80 = a1;
  v81 = *(a1 + 16);
  v84 = v19;
  v90 = a9;
  if (v81)
  {
    v85 = (v17 + 8);
    v21 = (v80 + 48);
    *&v20 = 136315650;
    v83 = v20;
    v22 = v81;
    v86 = a2;
    do
    {
      v97 = v22;
      v35 = *(v21 - 2);
      v43 = *(v21 - 1);
      v95 = v21;
      v44 = *v21;
      swift_unknownObjectRetain();
      v96 = v44;

      v45 = v93;
      sub_1D0FF4B98();
      swift_unknownObjectRetain();

      v46 = sub_1D0FF4C08();
      v47 = sub_1D0FF5978();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v46, v47))
      {
        v23 = swift_slowAlloc();
        v24 = v35;
        v25 = swift_slowAlloc();
        v100 = v25;
        *v23 = v83;
        v26 = sub_1D0FF6468();
        v28 = sub_1D0F1AE0C(v26, v27, &v100);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2082;
        v29 = v86;
        *(v23 + 14) = sub_1D0F1AE0C(v86, a3, &v100);
        *(v23 + 22) = 2082;
        ObjectType = swift_getObjectType();
        (*(v43 + 8))(&v99, ObjectType, v43);
        v98 = v99;
        v31 = sub_1D0FF5448();
        v33 = sub_1D0F1AE0C(v31, v32, &v100);

        *(v23 + 24) = v33;
        _os_log_impl(&dword_1D0F17000, v46, v47, "[%s:%{public}s] Source with identifier %{public}s entering", v23, 0x20u);
        swift_arrayDestroy();
        v34 = v25;
        v35 = v24;
        MEMORY[0x1D3882680](v34, -1, -1);
        v19 = v84;
        MEMORY[0x1D3882680](v23, -1, -1);

        (*v85)(v93, v87);
      }

      else
      {

        (*v85)(v45, v87);
        v29 = v86;
      }

      v36 = v97;
      v37 = v92;
      dispatch_group_enter(v92);
      v94 = v88(v35, v43, v96);
      v38 = swift_allocObject();
      v38[2] = v29;
      v38[3] = a3;
      v38[4] = v35;
      v38[5] = v43;
      v39 = v91;
      v38[6] = v37;
      v38[7] = v39;
      v38[8] = v19;
      v40 = v19;
      v41 = v90;
      v38[9] = v90;
      swift_unknownObjectRetain();

      v42 = v37;

      v94(sub_1D0FCA2B4, v38);
      swift_unknownObjectRelease();

      v21 = v95 + 3;
      v22 = v36 - 1;
      v12 = v41;
      v19 = v40;
    }

    while (v22);
  }

  v48 = v79;
  result = sub_1D0FF5278();
  v50 = *(v82 + 96) * 1000.0;
  if (COERCE__INT64(fabs(v50)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v50 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v51 = v70;
  *v70 = v50;
  v52 = v73;
  v53 = v74;
  (*(v73 + 104))(v51, *MEMORY[0x1E69E7F38], v74);
  v54 = v69;
  MEMORY[0x1D38808A0](v48, v51);
  (*(v52 + 8))(v51, v53);
  v55 = *(v71 + 8);
  v56 = v72;
  v55(v48, v72);
  v57 = sub_1D0FF5AF8();
  v58 = (v55)(v54, v56);
  v59 = MEMORY[0x1E69E7CC0];
  v60 = v81;
  if (v81)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1D0FD0C8C(0, v81, 0);
    v59 = v100;
    v61 = v80 + 48;
    do
    {
      v62 = *(v61 - 8);
      v63 = swift_getObjectType();
      v64 = *(v62 + 8);
      swift_unknownObjectRetain();

      v64(&v99, v63, v62);

      v58 = swift_unknownObjectRelease();
      v65 = v99;
      v100 = v59;
      v67 = *(v59 + 16);
      v66 = *(v59 + 24);
      if (v67 >= v66 >> 1)
      {
        v58 = sub_1D0FD0C8C((v66 > 1), v67 + 1, 1);
        v59 = v100;
      }

      *(v59 + 16) = v67 + 1;
      *(v59 + v67 + 32) = v65;
      v61 += 24;
      --v60;
    }

    while (v60);
    v12 = v90;
  }

  v68 = v78;
  v99 = v91;
  MEMORY[0x1EEE9AC00](v58);
  *(&v69 - 6) = v75;
  *(&v69 - 40) = v57 & 1;
  *(&v69 - 4) = v82;
  *(&v69 - 3) = v59;
  *(&v69 - 2) = v12;
  sub_1D0FCA52C(0, &qword_1EC5FD190, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AdvertisableFeatureManager.CollectionResult);
  sub_1D0FC9DB8(&qword_1EE070A38, MEMORY[0x1E69A3B50]);
  sub_1D0FF49D8();

  v68(&v100);

  sub_1D0F2C31C();
}

void sub_1D0FC6BAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, uint64_t a9, uint64_t a10)
{
  sub_1D0FF4518();
  ObjectType = swift_getObjectType();
  (*(a7 + 8))(&v25, ObjectType, a7);
  v21 = v25;
  swift_beginAccess();
  v16 = *(a10 + 16);
  sub_1D0FCA310(a1, a2, a3 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a10 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1D0F50508(0, v16[2] + 1, 1, v16);
    *(a10 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1D0F50508((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[4 * v19];
  *(v20 + 32) = v21;
  v20[5] = a1;
  v20[6] = a2;
  *(v20 + 56) = a3 & 1;
  *(a10 + 16) = v16;
  swift_endAccess();
  sub_1D0FF4528();
  sub_1D0FC6D20(a4, a5, a6, a7, a8);
}

void sub_1D0FC6D20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v27 = a1;
  v28 = a4;
  v7 = sub_1D0FF4C18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B98();

  swift_unknownObjectRetain();
  v11 = sub_1D0FF4C08();
  v12 = sub_1D0FF5978();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v7;
    v16 = v15;
    v30 = v15;
    *v14 = 136315650;
    v17 = sub_1D0FF6468();
    v19 = sub_1D0F1AE0C(v17, v18, &v30);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_1D0F1AE0C(v27, a2, &v30);
    *(v14 + 22) = 2082;
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(&v29, ObjectType);
    v21 = sub_1D0FF5448();
    v23 = sub_1D0F1AE0C(v21, v22, &v30);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_1D0F17000, v11, v12, "[%s:%{public}s] Source with identifier %{public}s returned", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v16, -1, -1);
    v24 = v14;
    a5 = v26;
    MEMORY[0x1D3882680](v24, -1, -1);

    (*(v8 + 8))(v10, v25);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1D0FC6FA8@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71[1] = a5;
  v78 = a4;
  v72 = a3;
  v76 = a2;
  v77 = a6;
  v7 = sub_1D0FF4C18();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = v71 - v11;
  swift_beginAccess();
  v12 = *a1;
  v13 = *(v12 + 16);

  v83 = v13;
  if (!v13)
  {
    v79 = 0;
    v80 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v86 = 255;
    v18 = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC0];
    v85 = MEMORY[0x1E69E7CC0];
LABEL_4:

    if (v76)
    {
      v87 = v18;

      sub_1D0FCA320(v79, v80, v86);
      v19 = v73;
      sub_1D0FF4B98();
      v20 = v72;

      v21 = sub_1D0FF4C08();
      v22 = sub_1D0FF5958();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v85;
      if (v23)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v88[0] = v26;
        *v25 = 136315394;
        v27 = sub_1D0FF6468();
        v29 = v17;
        v30 = sub_1D0F1AE0C(v27, v28, v88);

        *(v25 + 4) = v30;
        v17 = v29;
        *(v25 + 12) = 2048;
        *(v25 + 14) = *(v20 + 96);
        _os_log_impl(&dword_1D0F17000, v21, v22, "[%s] Operation timed out after %f seconds", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1D3882680](v26, -1, -1);
        MEMORY[0x1D3882680](v25, -1, -1);
      }

      (*(v74 + 8))(v19, v75);
      v18 = v87;
      v31 = 0x80000001D1003F80;
      v32 = 1;
      v33 = 0xD000000000000013;
    }

    else
    {
      v34 = v86;
      v24 = v85;
      v31 = v80;
      if (v86 != 0xFF)
      {

        sub_1D0FF4B98();
        v35 = v34 & 1;
        v33 = v79;
        sub_1D0F2C3D0();
        v36 = sub_1D0FF4C08();
        v37 = v10;
        v38 = sub_1D0FF5958();
        sub_1D0FCA320(v33, v31, v34);
        if (os_log_type_enabled(v36, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v87 = v18;
          v41 = v40;
          v90 = v40;
          *v39 = 136315394;
          v42 = sub_1D0FF6468();
          v43 = v17;
          v45 = sub_1D0F1AE0C(v42, v44, &v90);
          v82 = v37;
          v46 = v45;

          *(v39 + 4) = v46;
          *(v39 + 12) = 2080;
          v88[0] = v33;
          v88[1] = v80;
          v89 = v35;
          sub_1D0F2C3D0();
          sub_1D0FCA338();
          v47 = sub_1D0FF5448();
          v49 = sub_1D0F1AE0C(v47, v48, &v90);

          *(v39 + 14) = v49;
          v17 = v43;
          v31 = v80;
          _os_log_impl(&dword_1D0F17000, v36, v38, "[%s] Error with one or more advertisable feature sources, first is %s", v39, 0x16u);
          swift_arrayDestroy();
          v50 = v41;
          v18 = v87;
          MEMORY[0x1D3882680](v50, -1, -1);
          MEMORY[0x1D3882680](v39, -1, -1);

          (*(v74 + 8))(v82, v75);
        }

        else
        {

          (*(v74 + 8))(v37, v75);
        }

        v52 = v77;
        v51 = v78;
        v32 = v86;
        goto LABEL_15;
      }

      v31 = 0;
      v32 = 0;
      v33 = v84;
    }

    v52 = v77;
    v51 = v78;
LABEL_15:
    *v52 = v33;
    *(v52 + 8) = v31;
    *(v52 + 16) = v32 & 1;
    *(v52 + 24) = v51;
    *(v52 + 32) = v17;
    *(v52 + 40) = v18;
    *(v52 + 48) = v24;
  }

  v15 = 0;
  v79 = 0;
  v80 = 0;
  v16 = (v12 + 56);
  v17 = MEMORY[0x1E69E7CC0];
  v84 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v86 = 255;
  v81 = v12;
  v82 = v10;
  while (v15 < *(v12 + 16))
  {
    v53 = *(v16 - 24);
    v55 = *(v16 - 2);
    v54 = *(v16 - 1);
    LOBYTE(v88[0]) = *v16;
    sub_1D0FCA310(v55, v54, v88[0]);
    v56 = v88[0];
    if (LOBYTE(v88[0]) != 255)
    {
      LOBYTE(v90) = v88[0] & 1;
      sub_1D0FCA310(v55, v54, v88[0] & 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D0F504F4(0, *(v17 + 2) + 1, 1, v17);
      }

      v58 = *(v17 + 2);
      v57 = *(v17 + 3);
      if (v58 >= v57 >> 1)
      {
        v17 = sub_1D0F504F4((v57 > 1), v58 + 1, 1, v17);
      }

      *(v17 + 2) = v58 + 1;
      v17[v58 + 32] = v53;
      sub_1D0F2D710(v55, v54, v56 & 1);
      v87 = v17;
      if (v90)
      {
        v59 = v86;
        if (v86 == 0xFF)
        {

          v59 = 1;
          v79 = v55;
          v80 = v54;
        }

        v86 = v59;
        sub_1D0FCA310(v55, v54, 1);
        v60 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1D0F504F4(0, *(v60 + 2) + 1, 1, v60);
        }

        v62 = *(v60 + 2);
        v61 = *(v60 + 3);
        v63 = v62 + 1;
        v64 = 1;
        if (v62 >= v61 >> 1)
        {
          v60 = sub_1D0F504F4((v61 > 1), v62 + 1, 1, v60);
        }

        v85 = v60;
      }

      else
      {
        v65 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1D0F504DC(0, *(v65 + 2) + 1, 1, v65);
        }

        v67 = *(v65 + 2);
        v66 = *(v65 + 3);
        v68 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          v65 = sub_1D0F504DC((v66 > 1), v67 + 1, 1, v65);
        }

        *(v65 + 2) = v68;
        v64 = v90;
        sub_1D0FCA310(v55, v54, v90);
        v60 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = sub_1D0F504F4(0, *(v18 + 2) + 1, 1, v18);
        }

        v62 = *(v60 + 2);
        v70 = *(v60 + 3);
        v63 = v62 + 1;
        if (v62 >= v70 >> 1)
        {
          v60 = sub_1D0F504F4((v70 > 1), v62 + 1, 1, v60);
        }

        v18 = v60;
      }

      ++v15;
      sub_1D0F2D710(v55, v54, v90);
      *(v60 + 2) = v63;
      v60[v62 + 32] = v53;
      result = sub_1D0F2D710(v55, v54, v64);
      v16 += 32;
      v10 = v82;
      v17 = v87;
      v12 = v81;
      if (v83 != v15)
      {
        continue;
      }
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0FC7748()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 32);
  v4 = v0[6];
  aBlock[0] = v0;
  v5 = *(v4 + 16);
  v6 = v2;

  os_unfair_lock_lock(v5 + 9);
  sub_1D0FCA584(&v5[4], &v17);
  os_unfair_lock_unlock(v5 + 9);
  v7 = v17;

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_1D0FC8DEC(*(v7 + 16), 0);
  v10 = sub_1D0FC9BBC(aBlock, v9 + 4, v8, v7);
  sub_1D0F36568();
  if (v10 != v8)
  {
    __break(1u);
LABEL_4:

    v9 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for AdvertisableFeatureInteractionAnalyticsEvent();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v9;
  v12 = v1[10];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  aBlock[4] = sub_1D0FCA144;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0FCA978;
  aBlock[3] = &block_descriptor_53;
  v14 = _Block_copy(aBlock);

  [v12 submitEvent:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1D0FC793C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1D0FF4C18();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    sub_1D0FF4B98();
    v11 = a2;
    v12 = sub_1D0FF4C08();
    v13 = sub_1D0FF5958();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      v24 = a3;
      *v14 = 136446466;
      swift_getMetatypeMetadata();
      v16 = sub_1D0FF5448();
      v18 = sub_1D0F1AE0C(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v24 = a2;
      v19 = a2;
      sub_1D0F1E940();
      v20 = sub_1D0FF5448();
      v22 = sub_1D0F1AE0C(v20, v21, &v23);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1D0F17000, v12, v13, "[%{public}s] Error when submitting analytics event: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v15, -1, -1);
      MEMORY[0x1D3882680](v14, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t AdvertisableFeatureManager.deinit()
{
  sub_1D0FC9E58(v0 + 16);

  return v0;
}

uint64_t AdvertisableFeatureManager.__deallocating_deinit()
{
  sub_1D0FC9E58(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D0FC7C30(uint64_t *a1))()
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
  return sub_1D0FCA5AC;
}

void sub_1D0FC7CC4(uint64_t a1, char a2)
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

uint64_t sub_1D0FC7D4C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000001D1005460;
  v8[4] = sub_1D0FCA59C;
  v8[5] = v6;
  v8[6] = v2;
  v8[7] = sub_1D0FCA5A0;
  v8[8] = v7;
  v8[9] = v5;

  sub_1D0FC5664(sub_1D0FCA5B4, v8);
}

uint64_t sub_1D0FC7EB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1D0FC5664(sub_1D0FCA5B8, v4);
}

uint64_t AdvertisableFeatureManager.advertisableFeatureSource(_:didUpdateAdvertisementStateTo:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v116 = *v3;
  v7 = sub_1D0FF4C18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v107[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v114 = &v107[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v107[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v107[-v17];

  sub_1D0FF4518();

  if (*(v3 + 64) == 1)
  {
    sub_1D0FF4B98();
    swift_unknownObjectRetain();
    v19 = sub_1D0FF4C08();
    v20 = sub_1D0FF5938();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v120[0] = v114;
      *v21 = 136315650;
      v22 = sub_1D0FF6468();
      LODWORD(v116) = v20;
      v24 = sub_1D0F1AE0C(v22, v23, v120);
      v115 = v5;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      ObjectType = swift_getObjectType();
      v117 = v7;
      v118 = v8;
      v27 = *(a2 + 8);
      v27(&v121, ObjectType, a2);
      v28 = sub_1D0FF5448();
      v30 = sub_1D0F1AE0C(v28, v29, v120);

      *(v21 + 14) = v30;
      *(v21 + 22) = 2080;
      if (v115)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v115)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      v5 = sub_1D0F1AE0C(v31, v32, v120);

      *(v21 + 24) = v5;
      LOBYTE(v5) = v115;
      _os_log_impl(&dword_1D0F17000, v19, v116, "[%s] Received updated advertisement state for %{public}s but we're currently frozen: %s", v21, 0x20u);
      v33 = v114;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v33, -1, -1);
      MEMORY[0x1D3882680](v21, -1, -1);

      (*(v118 + 8))(v18, v117);
    }

    else
    {

      (*(v8 + 8))(v18, v7);
      v27 = *(a2 + 8);
    }

    v75 = swift_getObjectType();
    v27(&v119, v75, a2);
    v76 = v119;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v4[9];
    v4[9] = 0x8000000000000000;
    sub_1D0FC926C(v5 & 1, v76, isUniquelyReferenced_nonNull_native);
    v4[9] = v121;
    swift_endAccess();

    sub_1D0FF4528();
  }

  v115 = v5;
  v117 = v7;
  v118 = v8;

  sub_1D0FF4528();

  v34 = swift_getObjectType();
  v35 = *(a2 + 8);
  v110 = v34;
  v111 = v35;
  v112 = a2 + 8;
  v113 = a2;
  v36 = (v35)(&v119, v34, a2);
  v37 = v119;
  v38 = *(v3 + 48);
  v120[0] = v3;
  v39 = *(v38 + 16);
  MEMORY[0x1EEE9AC00](v36);
  *&v107[-16] = v120;

  os_unfair_lock_lock(v39 + 9);
  sub_1D0FCA584(&v39[4], &v121);
  os_unfair_lock_unlock(v39 + 9);
  v40 = v121;

  if (*(v40 + 16) && (v41 = sub_1D0FA27FC(v37), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + 8 * v41);

    sub_1D0FF4908();

    v44 = v115;
    if (LOBYTE(v120[0]) == (v115 & 1))
    {
      v78 = v114;
      sub_1D0FF4B98();
      swift_unknownObjectRetain();
      v79 = sub_1D0FF4C08();
      v80 = sub_1D0FF5938();
      swift_unknownObjectRelease();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v117;
      if (v81)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v109 = v43;
        v85 = v84;
        v120[0] = v84;
        *v83 = 136315650;
        v86 = sub_1D0FF6468();
        v88 = sub_1D0F1AE0C(v86, v87, v120);

        *(v83 + 4) = v88;
        *(v83 + 12) = 2082;
        v111(&v121, v110, v113);
        v89 = sub_1D0FF5448();
        v91 = sub_1D0F1AE0C(v89, v90, v120);

        *(v83 + 14) = v91;
        *(v83 + 22) = 2080;
        if (v44)
        {
          v92 = 1702195828;
        }

        else
        {
          v92 = 0x65736C6166;
        }

        if (v44)
        {
          v93 = 0xE400000000000000;
        }

        else
        {
          v93 = 0xE500000000000000;
        }

        v94 = sub_1D0F1AE0C(v92, v93, v120);

        *(v83 + 24) = v94;
        _os_log_impl(&dword_1D0F17000, v79, v80, "[%s] Received updated advertisement state for %{public}s but did not change: %s", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v85, -1, -1);
        MEMORY[0x1D3882680](v83, -1, -1);
      }

      else
      {
      }

      return (*(v118 + 8))(v78, v82);
    }

    else
    {
      v45 = v16;
      sub_1D0FF4B98();
      swift_unknownObjectRetain();

      v46 = sub_1D0FF4C08();
      v47 = sub_1D0FF5938();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v114 = v45;
        v108 = v47;
        v49 = v48;
        v109 = swift_slowAlloc();
        v120[0] = v109;
        *v49 = 136315906;
        v50 = sub_1D0FF6468();
        v52 = sub_1D0F1AE0C(v50, v51, v120);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2082;
        v111(&v121, v110, v113);
        v53 = sub_1D0FF5448();
        v55 = sub_1D0F1AE0C(v53, v54, v120);

        *(v49 + 14) = v55;
        *(v49 + 22) = 2080;

        sub_1D0FF4908();

        if (v121)
        {
          v56 = 1702195828;
        }

        else
        {
          v56 = 0x65736C6166;
        }

        if (v121)
        {
          v57 = 0xE400000000000000;
        }

        else
        {
          v57 = 0xE500000000000000;
        }

        v58 = sub_1D0F1AE0C(v56, v57, v120);

        *(v49 + 24) = v58;
        *(v49 + 32) = 2080;
        if (v115)
        {
          v59 = 1702195828;
        }

        else
        {
          v59 = 0x65736C6166;
        }

        v44 = v115;
        if (v115)
        {
          v60 = 0xE400000000000000;
        }

        else
        {
          v60 = 0xE500000000000000;
        }

        v61 = sub_1D0F1AE0C(v59, v60, v120);

        *(v49 + 34) = v61;
        _os_log_impl(&dword_1D0F17000, v46, v108, "[%s] Received updated advertisement state for %{public}s: %s -> %s", v49, 0x2Au);
        v62 = v109;
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v62, -1, -1);
        MEMORY[0x1D3882680](v49, -1, -1);

        v63 = (*(v118 + 8))(v114, v117);
      }

      else
      {

        v63 = (*(v118 + 8))(v45, v117);
      }

      MEMORY[0x1EEE9AC00](v63);
      v107[-16] = v44 & 1;

      sub_1D0FF4918();

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v109 = v43;
      v118 = v4[3];
      v96 = v4[6];
      v121 = v4;
      v97 = *(v96 + 16);
      MEMORY[0x1EEE9AC00](Strong);
      *&v107[-16] = &v121;

      os_unfair_lock_lock(v97 + 9);
      sub_1D0FCA584(&v97[4], &v119);
      os_unfair_lock_unlock(v97 + 9);
      v98 = v119;

      v99 = 0;
      v121 = MEMORY[0x1E69E7CC0];
      v100 = 1 << *(v98 + 32);
      v101 = -1;
      if (v100 < 64)
      {
        v101 = ~(-1 << v100);
      }

      v102 = v101 & *(v98 + 64);
      v103 = (v100 + 63) >> 6;
      if (v102)
      {
        while (1)
        {
          v104 = v99;
LABEL_50:
          v102 &= v102 - 1;

          sub_1D0FF4908();

          if (v119)
          {
            sub_1D0FF5E88();
            sub_1D0FF5EC8();
            sub_1D0FF5ED8();
            result = sub_1D0FF5E98();
            v99 = v104;
            if (!v102)
            {
              break;
            }
          }

          else
          {

            v99 = v104;
            if (!v102)
            {
              break;
            }
          }
        }
      }

      while (1)
      {
        v104 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          break;
        }

        if (v104 >= v103)
        {
          v105 = swift_getObjectType();

          v106 = sub_1D0F363FC(v121);

          (*(v118 + 8))(v4, v106, v105);

          swift_unknownObjectRelease();
        }

        v102 = *(v98 + 64 + 8 * v104);
        ++v99;
        if (v102)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
    }
  }

  else
  {

    sub_1D0FF4B98();
    swift_unknownObjectRetain();
    v64 = sub_1D0FF4C08();
    v65 = sub_1D0FF5968();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v120[0] = v67;
      *v66 = 136315394;
      v68 = sub_1D0FF6468();
      v70 = sub_1D0F1AE0C(v68, v69, v120);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2082;
      v111(&v121, v110, v113);
      v71 = sub_1D0FF5448();
      v73 = sub_1D0F1AE0C(v71, v72, v120);

      *(v66 + 14) = v73;
      _os_log_impl(&dword_1D0F17000, v64, v65, "[%s] Unable to find source identifier %{public}s in advertisable feature dictionary", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v67, -1, -1);
      MEMORY[0x1D3882680](v66, -1, -1);
    }

    return (*(v118 + 8))(v11, v117);
  }

  return result;
}

uint64_t sub_1D0FC8C40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D0FC2614();
  *a1 = result;
  return result;
}

void sub_1D0FC8C90()
{
  if (!qword_1EC5FD178)
  {
    type metadata accessor for AdvertisableFeatureModel();
    sub_1D0F539C4();
    v0 = sub_1D0FF5358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD178);
    }
  }
}

void sub_1D0FC8CFC()
{
  if (!qword_1EC5FD180)
  {
    sub_1D0FC8D80(255, &qword_1EC5FD188, type metadata accessor for AtomicLazy.State);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D0FF5E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD180);
    }
  }
}

void sub_1D0FC8D80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AdvertisableFeatureManager();
    sub_1D0FC8C90();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1D0FC8DEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D0FCA52C(0, &qword_1EE06F8C8, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

_OWORD *sub_1D0FC8E90(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D0FA26C0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D0FA4A88();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D0FA2E8C(v13, a3 & 1);
    v8 = sub_1D0FA26C0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1D0FF62B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1D0F54254(a1, v19);
  }

  else
  {
    sub_1D0FC959C(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1D0FC8FD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D0F23568(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D0FA4FFC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D0FA33F8(v16, a4 & 1);
    v11 = sub_1D0F23568(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D0FF62B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1D0F54254(a1, v22);
  }

  else
  {
    sub_1D0FC9604(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1D0FC9120(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D0FA27FC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1D0FA36E4(v14, a3 & 1);
      result = sub_1D0FA27FC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1D0FF62B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1D0FA51D4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1D0FC926C(char a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D0FA27FC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D0FA5324();
    result = v17;
    goto LABEL_8;
  }

  sub_1D0FA3A40(v14, a3 & 1);
  result = sub_1D0FA27FC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D0FF62B8();
  __break(1u);
  return result;
}

uint64_t sub_1D0FC9398(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D0FF43A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D0F1B60C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D0FA55EC();
      goto LABEL_7;
    }

    sub_1D0FA3D88(v17, a3 & 1);
    v28 = sub_1D0F1B60C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D0FC9670(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D0FF62B8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1D0FF4348();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_1D0FC959C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D0F54254(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1D0FC9604(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D0F54254(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D0FC9670(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D0FF43A8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1D0FF4348();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

id sub_1D0FC9764(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1D0FF5D08();
  sub_1D0F304E4();
  sub_1D0FC9DB8(&qword_1EE070B40, sub_1D0F304E4);
  result = sub_1D0FF5838();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D0FF5D38())
      {
        goto LABEL_30;
      }

      sub_1D0F304E4();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1D0FC9990(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_1D0FF5D08();
  sub_1D0FF4EA8();
  sub_1D0FC9DB8(&qword_1EE06E5E8, MEMORY[0x1E695BF10]);
  result = sub_1D0FF5838();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_1D0FF5D38())
    {
      goto LABEL_29;
    }

    sub_1D0FF4EA8();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1D0FC9BBC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D0FC9D10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v10 = *a2;
  v5 = *a1;
  if (*(a1 + 16) != 1)
  {
    v6 = *(a1 + 8);
    v7 = v5;
    v8 = a1;
    v5(&v11, &v10);
    sub_1D0FCA1E8(v7, v6, 0);
    v5 = v11;
    *v8 = v11;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
  }

  *a3 = v5;
}

uint64_t sub_1D0FC9DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D0FCA1E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D0FCA21C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t objectdestroy_14Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1D0FCA310(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D0FCA320(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D0F2C31C();
  }

  return result;
}

void sub_1D0FCA338()
{
  if (!qword_1EC5FD198[0])
  {
    sub_1D0FCA52C(255, &qword_1EC5FC950, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
    sub_1D0F51870();
    v0 = sub_1D0FF6418();
    if (!v1)
    {
      atomic_store(v0, qword_1EC5FD198);
    }
  }
}

uint64_t sub_1D0FCA3CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(a1, a2, ObjectType, v5);
}

uint64_t sub_1D0FCA45C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D0FCA498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D0FCA4E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D0FCA52C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t AppStoreDataProvider.SleepCategories.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result + 24;
  if ((result - 1000) >= 9)
  {
    v2 = 9;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D0FCA5F4()
{
  result = qword_1EC5FD220;
  if (!qword_1EC5FD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD220);
  }

  return result;
}

uint64_t sub_1D0FCA648()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1 + 1000);
  return sub_1D0FF6378();
}

uint64_t sub_1D0FCA6C0()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1 + 1000);
  return sub_1D0FF6378();
}

unint64_t sub_1D0FCA720()
{
  result = qword_1EC5FD228;
  if (!qword_1EC5FD228)
  {
    sub_1D0FCA778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD228);
  }

  return result;
}

void sub_1D0FCA778()
{
  if (!qword_1EC5FD230)
  {
    v0 = sub_1D0FF56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD230);
    }
  }
}

uint64_t _s15SleepCategoriesOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15SleepCategoriesOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D0FCA928()
{
  v0 = sub_1D0F53668(qword_1F4CF4B30);
  sub_1D0F758D0();
  result = swift_arrayDestroy();
  qword_1EE079598 = v0;
  return result;
}

void sub_1D0FCA978(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t static ManagedProfileConnection.shared.getter()
{
  v0 = type metadata accessor for ManagedProfileConnection();

  return MEMORY[0x1EEE6C000](v0, &unk_1EE06FF80);
}

uint64_t sub_1D0FCAA5C()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isWheelchairDataSubmissionAllowed];

    return v2;
  }

  else
  {
    result = sub_1D0FF5F98();
    __break(1u);
  }

  return result;
}

void sub_1D0FCAB0C(char a1)
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69A2D58];
  v5[4] = nullsub_1;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D0FCA978;
  v5[3] = &block_descriptor_17;
  v4 = _Block_copy(v5);
  [v2 setUserDidAccept:a1 & 1 currentAgreement:v3 completion:v4];
  _Block_release(v4);
}

void sub_1D0FCABE0(char a1)
{
  v2 = [objc_opt_self() sharedConnection];
  [v2 setWheelchairDataSubmissionAllowed_];
}

id sub_1D0FCAC50()
{
  v0 = sub_1D0FF4C18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isOnDeviceAppInstallationAllowed];
  }

  else
  {
    sub_1D0FF4BC8();
    v7 = sub_1D0FF4C08();
    v8 = sub_1D0FF5958();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D0F17000, v7, v8, "Shared instance of MCProfileConnection does not exist", v9, 2u);
      MEMORY[0x1D3882680](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v6;
}

uint64_t AdvertisableFeatureModel.shouldAdvertise.getter()
{

  sub_1D0FF4908();

  return v1;
}

uint64_t AdvertisableFeatureModel.shouldEnable.getter()
{

  sub_1D0FF4908();

  return v1;
}

uint64_t AdvertisableFeatureModel.__allocating_init(identifier:configuration:shouldAdvertise:shouldEnable:)(_BYTE *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  *(v4 + 16) = *a1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v6;
  *(v4 + 56) = v7;
  sub_1D0FCB3E4();
  swift_allocObject();
  *(v4 + 72) = sub_1D0FF4938();
  swift_allocObject();
  *(v4 + 64) = sub_1D0FF4938();
  return v4;
}

uint64_t AdvertisableFeatureModel.configuration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v5;
}

uint64_t sub_1D0FCB098@<X0>(_BYTE *a1@<X8>)
{

  sub_1D0FF4908();

  *a1 = v3;
  return result;
}

uint64_t sub_1D0FCB0E8()
{

  sub_1D0FF4918();
}

uint64_t AdvertisableFeatureModel.shouldEnable.setter()
{

  sub_1D0FF4918();
}

uint64_t (*AdvertisableFeatureModel.shouldEnable.modify(uint64_t a1))()
{
  *a1 = v1;

  sub_1D0FF4908();

  *(a1 + 8) = *(a1 + 9);
  return sub_1D0FCB204;
}

uint64_t sub_1D0FCB204()
{

  sub_1D0FF4918();
}

uint64_t sub_1D0FCB290@<X0>(_BYTE *a1@<X8>)
{

  sub_1D0FF4908();

  *a1 = v3;
  return result;
}

uint64_t sub_1D0FCB2E0()
{

  sub_1D0FF4918();
}

uint64_t AdvertisableFeatureModel.init(identifier:configuration:shouldAdvertise:shouldEnable:)(_BYTE *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 4);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  *(v2 + 56) = v5;
  sub_1D0FCB3E4();
  swift_allocObject();
  *(v2 + 72) = sub_1D0FF4938();
  swift_allocObject();
  *(v2 + 64) = sub_1D0FF4938();
  return v2;
}

void sub_1D0FCB3E4()
{
  if (!qword_1EE06F800)
  {
    v0 = sub_1D0FF4928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F800);
    }
  }
}

uint64_t AdvertisableFeatureModel.hash(into:)()
{
  sub_1D0FF5488();

  v1 = *(v0 + 56);
  sub_1D0FF5488();
  sub_1D0FF5488();
  sub_1D0FF6358();
  if (v1)
  {
    v2 = v1;
    sub_1D0FF5C08();
  }

  sub_1D0FF4908();

  sub_1D0FF6358();

  sub_1D0FF4908();

  return sub_1D0FF6358();
}

uint64_t AdvertisableFeatureModel.deinit()
{
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AdvertisableFeatureModel.__deallocating_deinit()
{
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t AdvertisableFeatureModel.hashValue.getter()
{
  sub_1D0FF6338();
  AdvertisableFeatureModel.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FCB6D4()
{
  sub_1D0FF6338();
  AdvertisableFeatureModel.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FCB73C()
{
  sub_1D0FF6338();
  AdvertisableFeatureModel.hash(into:)();
  return sub_1D0FF6378();
}

unint64_t AdvertisableFeatureModel.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = 0xD00000000000001DLL;
  if (v1 != 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD000000000000018;
  if (v1 == 1)
  {
    v3 = 0xD000000000000019;
  }

  if (!*(v0 + 16))
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*(v0 + 16) <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D0FCB86C()
{
  v1 = *(*v0 + 16);
  v2 = 0xD00000000000001DLL;
  if (v1 != 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD000000000000018;
  if (v1 == 1)
  {
    v3 = 0xD000000000000019;
  }

  if (!*(*v0 + 16))
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*(*v0 + 16) <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t _s16HealthExperience24AdvertisableFeatureModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0F5D970(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (v4 = *(a1 + 32), v5 = *(a1 + 40), v6 = *(a1 + 48), v7 = *(a1 + 56), v22[0] = *(a1 + 24), v22[1] = v4, v22[2] = v5, v22[3] = v6, v23 = v7, v8 = *(a2 + 32), v9 = *(a2 + 40), v10 = *(a2 + 48), v11 = *(a2 + 56), v20[0] = *(a2 + 24), v20[1] = v8, v20[2] = v9, v20[3] = v10, v21 = v11, v12 = v11, , , v13 = v7, , , LOBYTE(v4) = _s16HealthExperience32AdvertisableFeatureConfigurationV2eeoiySbAC_ACtFZ_0(v22, v20), v14 = v21, , , v14, v15 = v23, , , v15, (v4) && (, sub_1D0FF4908(), , v16 = LOBYTE(v22[0]), , sub_1D0FF4908(), , v16 == LOBYTE(v22[0])))
  {

    sub_1D0FF4908();

    v19 = v22[0];

    sub_1D0FF4908();

    v17 = v19 ^ LOBYTE(v22[0]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_1D0FCBAAC()
{
  result = qword_1EC5FD238;
  if (!qword_1EC5FD238)
  {
    type metadata accessor for AdvertisableFeatureModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD238);
  }

  return result;
}

uint64_t HKProfileStore.ProfileCreationError.hashValue.getter()
{
  sub_1D0FF6338();
  MEMORY[0x1D3881950](0);
  return sub_1D0FF6378();
}

uint64_t HKProfileStore.createNewProfilePublisher(of:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FCBD90();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  sub_1D0FCBE24();
  sub_1D0FCBF90(&qword_1EC5FD250, sub_1D0FCBE24);
  v13 = v3;

  sub_1D0FF5008();
  sub_1D0FCBF90(&qword_1EC5FD258, sub_1D0FCBD90);
  v14 = sub_1D0FF5098();
  (*(v9 + 8))(v11, v8);
  return v14;
}

void sub_1D0FCBD90()
{
  if (!qword_1EC5FD240)
  {
    sub_1D0FCBE24();
    sub_1D0FCBF90(&qword_1EC5FD250, sub_1D0FCBE24);
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD240);
    }
  }
}

void sub_1D0FCBE24()
{
  if (!qword_1EC5FD248)
  {
    sub_1D0FCBE94();
    sub_1D0F1E940();
    v0 = sub_1D0FF4FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD248);
    }
  }
}

unint64_t sub_1D0FCBE94()
{
  result = qword_1EE071070;
  if (!qword_1EE071070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE071070);
  }

  return result;
}

uint64_t sub_1D0FCBEE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  sub_1D0FCBE24();
  swift_allocObject();
  v11 = a1;

  result = sub_1D0FF4FF8();
  *a5 = result;
  return result;
}

uint64_t sub_1D0FCBF90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0FCBFD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1D0FF53E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D0F8E838;
  *(v10 + 24) = v8;
  v12[4] = sub_1D0FCC5FC;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D0F1DC0C;
  v12[3] = &block_descriptor_18;
  v11 = _Block_copy(v12);

  [a3 createProfileOfType:a4 displayName:v9 completion:v11];
  _Block_release(v11);
}

void sub_1D0FCC11C(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    a1 = a2;
    v3 = 1;
LABEL_5:
    a3(a1, v3);
    return;
  }

  if (a1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  sub_1D0FCC604();
  v5 = swift_allocError();
  a3(v5, 1);
}

uint64_t Publisher<>.mapToSourceProfiles(includeAgnostic:)(char a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_1D0FCC404();
  sub_1D0FF50C8();
}

void *sub_1D0FCC258@<X0>(void *result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = *result;
  if (*result >> 62)
  {
    result = sub_1D0FF5D18();
    v6 = result;
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    result = sub_1D0FD0CCC(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v17;
    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        result = MEMORY[0x1D3881410](i, v5);
        v10 = *(v17 + 16);
        v9 = *(v17 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = result;
          sub_1D0FD0CCC((v9 > 1), v10 + 1, 1);
          result = v11;
        }

        *(v17 + 16) = v10 + 1;
        *(v17 + 8 * v10 + 32) = result;
      }
    }

    else
    {
      v12 = (v5 + 32);
      do
      {
        v13 = *(v17 + 16);
        v14 = *(v17 + 24);
        result = *v12;
        if (v13 >= v14 >> 1)
        {
          v15 = v14 > 1;
          v16 = result;
          sub_1D0FD0CCC(v15, v13 + 1, 1);
          result = v16;
        }

        *(v17 + 16) = v13 + 1;
        *(v17 + 8 * v13 + 32) = result;
        ++v12;
        --v6;
      }

      while (v6);
    }
  }

  if (a2)
  {
    result = sub_1D0FCC4BC(&unk_1F4CF51A8);
  }

  *a3 = v7;
  return result;
}

void sub_1D0FCC404()
{
  if (!qword_1EE070B90)
  {
    v0 = sub_1D0FF56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070B90);
    }
  }
}

unint64_t sub_1D0FCC458()
{
  result = qword_1EC5FD260;
  if (!qword_1EC5FD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD260);
  }

  return result;
}

uint64_t sub_1D0FCC4BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D0F509A0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D0FCC604()
{
  result = qword_1EC5FD268;
  if (!qword_1EC5FD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD268);
  }

  return result;
}

uint64_t HKBiologicalSex.stringValue.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x726568746FLL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701601645;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x656C616D6566;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x746553746F6ELL;
  }
}

id CNContactStore.findContact(for:keysToFetch:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1D0FCEA30(v6, a2, v2, v4, v5);
}

uint64_t sub_1D0FCC740(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = v6;
  *(v5 + 40) = 256;
  sub_1D0FF4828();
  swift_allocObject();
  *(v5 + 48) = sub_1D0FF4818();
  *(v5 + 16) = a1;
  return v5;
}

id static CNContactStore.shared.getter()
{
  if (qword_1EE06FA20 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06FA30;

  return v1;
}

uint64_t sub_1D0FCC828(void **a1)
{
  sub_1D0F1E9E0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D0FF9980;
  v3 = *a1;
  *(v2 + 32) = *a1;
  v4 = v3;
  return v2;
}

uint64_t static CNContactStore.namesAndIdentifierOnlyKey.getter()
{
  sub_1D0F1E9E0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1000CC0;
  v1 = *MEMORY[0x1E695C240];
  v2 = *MEMORY[0x1E695C230];
  *(v0 + 32) = *MEMORY[0x1E695C240];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C258];
  *(v0 + 48) = *MEMORY[0x1E695C258];
  v4 = v1;
  v5 = v2;
  v6 = v3;
  return v0;
}

id CNContactStore.findContactOrCreate(for:keysToFetch:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = sub_1D0FCEA30(v7, a2, v2, v5, v6);
  if (!result)
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(v9, v10);
    v11 = sub_1D0FF53E8();

    v12 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v11];

    return v12;
  }

  return result;
}

uint64_t CNContactStore.contactFetchPublisher(matching:keysToFetch:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  ObjectType = swift_getObjectType();
  sub_1D0FD0030(0, &unk_1EE06E380, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  sub_1D0FCEE30();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCEF8C();
  v17 = *(v16 - 8);
  v29 = v16;
  v30 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F39694(a1, v31);
  v20 = swift_allocObject();
  sub_1D0F25C68(v31, (v20 + 2));
  v20[7] = v4;
  v20[8] = a2;
  v20[9] = ObjectType;
  sub_1D0FCF1A8(0, &qword_1EC5FD280, MEMORY[0x1E695BED0]);
  sub_1D0FCEF18();
  v21 = v4;

  sub_1D0FF5008();
  *&v31[0] = v28;
  v22 = sub_1D0FF5B08();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_1D0F1ACD4(0, &qword_1EE071270);
  sub_1D0FCF218(&unk_1EC5FD2B0, sub_1D0FCEE30);
  sub_1D0FCF058();
  sub_1D0FF5158();
  sub_1D0FCF0D0(v10);
  (*(v13 + 8))(v15, v12);
  *(swift_allocObject() + 16) = 1;
  sub_1D0FCF1A8(0, &qword_1EC5FD2C0, type metadata accessor for ReplaySubject);
  sub_1D0FCF218(&qword_1EC5FD2C8, sub_1D0FCEF8C);
  sub_1D0FCF260();
  v23 = v29;
  v24 = sub_1D0FF5148();

  *&v31[0] = v24;
  sub_1D0FCF2D4();
  sub_1D0FCF218(&qword_1EC5FD2E0, sub_1D0FCF2D4);
  v25 = sub_1D0FF4F68();
  (*(v30 + 8))(v19, v23);

  *&v31[0] = v25;
  sub_1D0FCF3AC(0);
  sub_1D0FCF218(&qword_1EC5FD2F0, sub_1D0FCF3AC);
  v26 = sub_1D0FF5098();

  return v26;
}

uint64_t sub_1D0FCCF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v27 = a5;
  sub_1D0FCFDB0(0, &qword_1EC5FD3D8, &qword_1EC5FD3E0, &protocol descriptor for ContactLookUpInformationProviding, sub_1D0F25ECC);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  sub_1D0FCFEC4();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCFF44();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F39694(a1, v30);
  sub_1D0F25ECC(0, &qword_1EC5FD3E0);
  sub_1D0FF4FD8();
  v28 = v24;
  v29 = v25;
  sub_1D0FCEEB0();
  sub_1D0FF4FB8();
  (*(v8 + 8))(v10, v7);
  sub_1D0F39694(a1, v30);
  v21 = swift_allocObject();
  sub_1D0F25C68(v30, v21 + 16);
  *(v21 + 56) = v26;
  sub_1D0FD0030(0, &qword_1EC5FD3F8, sub_1D0FCEEB0, MEMORY[0x1E695C000]);
  sub_1D0FCF218(&qword_1EC5FD400, sub_1D0FCFEC4);
  sub_1D0FD0094();
  sub_1D0FF50E8();

  (*(v13 + 8))(v15, v12);
  sub_1D0FCF218(&unk_1EC5FD410, sub_1D0FCFF44);
  v22 = sub_1D0FF5098();
  result = (*(v18 + 8))(v20, v17);
  *v27 = v22;
  return result;
}

uint64_t sub_1D0FCD2E4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1D0FF4BC8();
  sub_1D0F39694(a2, v32);
  v11 = v10;
  v12 = sub_1D0FF4C08();
  v13 = sub_1D0FF5958();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = a3;
    v16 = v15;
    v31 = v15;
    *v14 = 136315650;
    v17 = sub_1D0FF6468();
    v19 = sub_1D0F1AE0C(v17, v18, &v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    sub_1D0F39694(v32, &v30);
    sub_1D0F25ECC(0, &qword_1EC5FD3E0);
    v20 = sub_1D0FF5448();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v23 = sub_1D0F1AE0C(v20, v22, &v31);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    v30 = v10;
    v24 = v10;
    sub_1D0F25ECC(0, &qword_1EE071010);
    v25 = sub_1D0FF5458();
    v27 = sub_1D0F1AE0C(v25, v26, &v31);

    *(v14 + 24) = v27;
    _os_log_impl(&dword_1D0F17000, v12, v13, "[%s] Could not fetch CNContact data that matches '%s': %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v16, -1, -1);
    MEMORY[0x1D3882680](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  (*(v7 + 8))(v9, v6);
  v32[0] = 0;
  sub_1D0FCEEB0();
  return sub_1D0FF4FD8();
}

uint64_t CNContactStore.contactFetchOrCreatePublisher(matching:keysToFetch:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  ObjectType = swift_getObjectType();
  sub_1D0FD0030(0, &unk_1EE06E380, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  sub_1D0FCF3E8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCF55C();
  v17 = *(v16 - 8);
  v30 = v16;
  v31 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCF628(a1, v32);
  v20 = swift_allocObject();
  sub_1D0FCF68C(v32, (v20 + 16));
  *(v20 + 64) = v4;
  *(v20 + 72) = a2;
  *(v20 + 80) = ObjectType;
  sub_1D0FCF468(0, &qword_1EC5FD300, MEMORY[0x1E695BED0]);
  sub_1D0FCF4E8();
  v21 = v4;

  sub_1D0FF5008();
  *&v32[0] = v29;
  v22 = sub_1D0FF5B08();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_1D0F1ACD4(0, &qword_1EE071270);
  sub_1D0FCF218(&qword_1EC5FD318, sub_1D0FCF3E8);
  sub_1D0FCF058();
  sub_1D0FF5158();
  sub_1D0FCF0D0(v10);
  (*(v13 + 8))(v15, v12);
  *(swift_allocObject() + 16) = 1;
  sub_1D0FCF468(0, &qword_1EC5FD320, type metadata accessor for ReplaySubject);
  sub_1D0FCF218(&qword_1EC5FD328, sub_1D0FCF55C);
  sub_1D0FCF6F8();
  v23 = v30;
  v24 = sub_1D0FF5148();

  *&v32[0] = v24;
  sub_1D0FCF76C();
  sub_1D0FCF218(&qword_1EC5FD340, sub_1D0FCF76C);
  v25 = sub_1D0FF4F68();
  (*(v31 + 8))(v19, v23);

  *&v32[0] = v25;
  sub_1D0FCF844(0);
  sub_1D0FCF218(&qword_1EC5FD350, sub_1D0FCF844);
  v26 = sub_1D0FF5098();

  return v26;
}

uint64_t sub_1D0FCDA90@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1D0FF4BC8();
  sub_1D0FCF628(a2, v46);
  v11 = v10;
  v12 = sub_1D0FF4C08();
  v13 = sub_1D0FF5958();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v45 = v16;
    *v15 = 136315651;
    v17 = sub_1D0FF6468();
    v19 = sub_1D0F1AE0C(v17, v18, &v45);
    v42 = v6;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2081;
    sub_1D0FCF628(v46, &v44);
    sub_1D0FCFBCC();
    v21 = sub_1D0FF5448();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    v24 = sub_1D0F1AE0C(v21, v23, &v45);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v44 = v10;
    v25 = v10;
    sub_1D0F25ECC(0, &qword_1EE071010);
    v26 = sub_1D0FF5458();
    v28 = sub_1D0F1AE0C(v26, v27, &v45);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_1D0F17000, v12, v13, "[%s] Could not fetch CNContact data that matches '%{private}s': %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v16, -1, -1);
    MEMORY[0x1D3882680](v15, -1, -1);

    (*(v7 + 8))(v9, v42);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    (*(v7 + 8))(v9, v6);
  }

  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  (*(v30 + 16))(v29, v30);
  v31 = sub_1D0FF53E8();

  v32 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v31];

  v33 = a2[3];
  v34 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  (*(v34 + 8))(v33, v34);
  v35 = sub_1D0FF53E8();

  [v32 setGivenName_];

  v36 = a2[3];
  v37 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2, v36);
  (*(v37 + 16))(v36, v37);
  if (v38)
  {

    v39 = sub_1D0FF53E8();
    [v32 setFamilyName_];
    swift_bridgeObjectRelease_n();
  }

  v46[0] = v32;
  sub_1D0F1ACD4(0, &qword_1EE070DE0);
  return sub_1D0FF4FD8();
}

uint64_t CNContactStore.contactFetchOrCreatePublisherNonAsync(matching:keysToFetch:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_1D0FCF3E8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCF628(a1, v18);
  v12 = swift_allocObject();
  sub_1D0FCF68C(v18, (v12 + 16));
  *(v12 + 64) = v3;
  *(v12 + 72) = a2;
  *(v12 + 80) = ObjectType;
  sub_1D0FCF468(0, &qword_1EC5FD300, MEMORY[0x1E695BED0]);
  sub_1D0FCF4E8();
  v13 = v3;

  sub_1D0FF5008();
  *(swift_allocObject() + 16) = 1;
  sub_1D0FCF468(0, &qword_1EC5FD320, type metadata accessor for ReplaySubject);
  sub_1D0FCF218(&qword_1EC5FD318, sub_1D0FCF3E8);
  sub_1D0FCF6F8();
  v14 = sub_1D0FF5148();

  *&v18[0] = v14;
  sub_1D0FCF9FC();
  sub_1D0FCF218(&qword_1EC5FD360, sub_1D0FCF9FC);
  v15 = sub_1D0FF4F68();
  (*(v9 + 8))(v11, v8);

  *&v18[0] = v15;
  sub_1D0FCFAD4(0);
  sub_1D0FCF218(&qword_1EC5FD370, sub_1D0FCFAD4);
  v16 = sub_1D0FF5098();

  return v16;
}

uint64_t sub_1D0FCE1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v32 = a4;
  v33 = a7;
  v30 = a5;
  v31 = a6;
  v28 = a2;
  v29 = a3;
  v34 = a8;
  sub_1D0FD0030(0, &qword_1EC5FD390, sub_1D0FCFBCC, MEMORY[0x1E695C000]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  sub_1D0FCFC38();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCFCC8();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FCF628(a1, v37);
  sub_1D0FCFBCC();
  sub_1D0FF4FD8();
  v35 = v28;
  v36 = v29;
  sub_1D0F1ACD4(0, &qword_1EE070DE0);
  sub_1D0FF4FB8();
  (*(v11 + 8))(v13, v10);
  sub_1D0FCF628(a1, v37);
  v24 = swift_allocObject();
  sub_1D0FCF68C(v37, (v24 + 16));
  *(v24 + 64) = v32;
  sub_1D0FCFDB0(0, &qword_1EC5FC7F0, &qword_1EE070DE0, 0x1E695CD58, sub_1D0F1ACD4);
  sub_1D0FCF218(&qword_1EC5FD3C0, sub_1D0FCFC38);
  sub_1D0FCFE0C();
  sub_1D0FF50E8();

  (*(v16 + 8))(v18, v15);
  sub_1D0FCF218(&qword_1EC5FD3D0, sub_1D0FCFCC8);
  v25 = sub_1D0FF5098();
  result = (*(v21 + 8))(v23, v20);
  *v34 = v25;
  return result;
}

id sub_1D0FCE578@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  result = sub_1D0FCEA30(v10, a3, a2, v8, v9);
  if (!result)
  {
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 16))(v12, v13);
    v14 = sub_1D0FF53E8();

    v15 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v14];

    result = v15;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1D0FCE664@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1D0FF4BC8();
  sub_1D0FCF628(a2, v39);
  v11 = v10;
  v12 = sub_1D0FF4C08();
  v13 = sub_1D0FF5958();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136315651;
    v17 = sub_1D0FF6468();
    v19 = sub_1D0F1AE0C(v17, v18, &v38);
    v35 = v6;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2081;
    sub_1D0FCF628(v39, &v37);
    sub_1D0FCFBCC();
    v21 = sub_1D0FF5448();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v24 = sub_1D0F1AE0C(v21, v23, &v38);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    v37 = v10;
    v25 = v10;
    sub_1D0F25ECC(0, &qword_1EE071010);
    v26 = sub_1D0FF5458();
    v28 = sub_1D0F1AE0C(v26, v27, &v38);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_1D0F17000, v12, v13, "[%s] Could not fetch CNContact data that matches '%{private}s': %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v16, -1, -1);
    MEMORY[0x1D3882680](v15, -1, -1);

    (*(v7 + 8))(v9, v35);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    (*(v7 + 8))(v9, v6);
  }

  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  (*(v30 + 16))(v29, v30);
  v31 = sub_1D0FF53E8();

  v32 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v31];

  v39[0] = v32;
  sub_1D0F1ACD4(0, &qword_1EE070DE0);
  return sub_1D0FF4FD8();
}

uint64_t ContactStoreError.hashValue.getter()
{
  sub_1D0FF6338();
  MEMORY[0x1D3881950](0);
  return sub_1D0FF6378();
}

id sub_1D0FCEA30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43[5] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v10 = sub_1D0FF4C18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = a4;
  v43[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  (*(a5 + 8))(a4, a5);
  if (!v15)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v16 = sub_1D0FF53E8();

  sub_1D0F27BD4();
  v17 = sub_1D0FF55F8();
  v42[0] = 0;
  v18 = [a3 unifiedContactWithIdentifier:v16 keysToFetch:v17 error:v42];

  v19 = v42[0];
  if (!v18)
  {
    v20 = v19;
    v21 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    sub_1D0F39694(v43, v42);
    v22 = v21;
    v23 = sub_1D0FF4C08();
    v24 = sub_1D0FF5958();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315651;
      v40 = ObjectType;
      swift_getMetatypeMetadata();
      v27 = sub_1D0FF5448();
      v29 = sub_1D0F1AE0C(v27, v28, &v41);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2081;
      sub_1D0F39694(v42, &v40);
      sub_1D0F25ECC(0, &qword_1EC5FD3E0);
      v30 = sub_1D0FF5448();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v33 = sub_1D0F1AE0C(v30, v32, &v41);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2080;
      v40 = v21;
      v34 = v21;
      sub_1D0F25ECC(0, &qword_1EE071010);
      v35 = sub_1D0FF5458();
      v37 = sub_1D0F1AE0C(v35, v36, &v41);

      *(v25 + 24) = v37;
      _os_log_impl(&dword_1D0F17000, v23, v24, "[%s] Could not fetch CNContact data for '%{private}s': %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v26, -1, -1);
      MEMORY[0x1D3882680](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v18;
}

void sub_1D0FCEE30()
{
  if (!qword_1EC5FD278)
  {
    sub_1D0FCF1A8(255, &qword_1EC5FD280, MEMORY[0x1E695BED0]);
    sub_1D0FCEF18();
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD278);
    }
  }
}

void sub_1D0FCEEB0()
{
  if (!qword_1EC5FD288)
  {
    sub_1D0F1ACD4(255, &qword_1EE070DE0);
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD288);
    }
  }
}

unint64_t sub_1D0FCEF18()
{
  result = qword_1EC5FD298;
  if (!qword_1EC5FD298)
  {
    sub_1D0FCF1A8(255, &qword_1EC5FD280, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD298);
  }

  return result;
}

void sub_1D0FCEF8C()
{
  if (!qword_1EC5FD2A0)
  {
    sub_1D0FCEE30();
    sub_1D0F1ACD4(255, &qword_1EE071270);
    sub_1D0FCF218(&unk_1EC5FD2B0, sub_1D0FCEE30);
    sub_1D0FCF058();
    v0 = sub_1D0FF4CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD2A0);
    }
  }
}

unint64_t sub_1D0FCF058()
{
  result = qword_1EE06E378;
  if (!qword_1EE06E378)
  {
    sub_1D0F1ACD4(255, &qword_1EE071270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06E378);
  }

  return result;
}

uint64_t sub_1D0FCF0D0(uint64_t a1)
{
  sub_1D0FD0030(0, &unk_1EE06E380, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0FCF1A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1D0FCEEB0();
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D0FCF218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D0FCF260()
{
  result = qword_1EC5FD2D0;
  if (!qword_1EC5FD2D0)
  {
    sub_1D0FCF1A8(255, &qword_1EC5FD2C0, type metadata accessor for ReplaySubject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD2D0);
  }

  return result;
}

void sub_1D0FCF2D4()
{
  if (!qword_1EC5FD2D8)
  {
    sub_1D0FCEF8C();
    sub_1D0FCF1A8(255, &qword_1EC5FD2C0, type metadata accessor for ReplaySubject);
    sub_1D0FCF218(&qword_1EC5FD2C8, sub_1D0FCEF8C);
    sub_1D0FCF260();
    v0 = sub_1D0FF4D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD2D8);
    }
  }
}

void sub_1D0FCF3E8()
{
  if (!qword_1EC5FD2F8)
  {
    sub_1D0FCF468(255, &qword_1EC5FD300, MEMORY[0x1E695BED0]);
    sub_1D0FCF4E8();
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD2F8);
    }
  }
}

void sub_1D0FCF468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_1D0F1ACD4(255, &qword_1EE070DE0);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D0FCF4E8()
{
  result = qword_1EC5FD308;
  if (!qword_1EC5FD308)
  {
    sub_1D0FCF468(255, &qword_1EC5FD300, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD308);
  }

  return result;
}

void sub_1D0FCF55C()
{
  if (!qword_1EC5FD310)
  {
    sub_1D0FCF3E8();
    sub_1D0F1ACD4(255, &qword_1EE071270);
    sub_1D0FCF218(&qword_1EC5FD318, sub_1D0FCF3E8);
    sub_1D0FCF058();
    v0 = sub_1D0FF4CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD310);
    }
  }
}

uint64_t sub_1D0FCF628(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1D0FCF68C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1D0FCF6F8()
{
  result = qword_1EC5FD330;
  if (!qword_1EC5FD330)
  {
    sub_1D0FCF468(255, &qword_1EC5FD320, type metadata accessor for ReplaySubject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD330);
  }

  return result;
}

void sub_1D0FCF76C()
{
  if (!qword_1EC5FD338)
  {
    sub_1D0FCF55C();
    sub_1D0FCF468(255, &qword_1EC5FD320, type metadata accessor for ReplaySubject);
    sub_1D0FCF218(&qword_1EC5FD328, sub_1D0FCF55C);
    sub_1D0FCF6F8();
    v0 = sub_1D0FF4D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD338);
    }
  }
}

void sub_1D0FCF880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D0FCF218(a4, a5);
    v8 = sub_1D0FF4CB8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_5Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1D0FCF9FC()
{
  if (!qword_1EC5FD358)
  {
    sub_1D0FCF3E8();
    sub_1D0FCF468(255, &qword_1EC5FD320, type metadata accessor for ReplaySubject);
    sub_1D0FCF218(&qword_1EC5FD318, sub_1D0FCF3E8);
    sub_1D0FCF6F8();
    v0 = sub_1D0FF4D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD358);
    }
  }
}

unint64_t sub_1D0FCFB10()
{
  result = qword_1EC5FD378;
  if (!qword_1EC5FD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD378);
  }

  return result;
}

unint64_t sub_1D0FCFB68()
{
  result = qword_1EC5FD388;
  if (!qword_1EC5FD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD388);
  }

  return result;
}

unint64_t sub_1D0FCFBCC()
{
  result = qword_1EC5FD398;
  if (!qword_1EC5FD398)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC5FD398);
  }

  return result;
}

void sub_1D0FCFC38()
{
  if (!qword_1EC5FD3A0)
  {
    sub_1D0F1ACD4(255, &qword_1EE070DE0);
    sub_1D0F25ECC(255, &qword_1EE071010);
    v0 = sub_1D0FF6408();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD3A0);
    }
  }
}

void sub_1D0FCFCC8()
{
  if (!qword_1EC5FD3B0)
  {
    sub_1D0FCFC38();
    sub_1D0FCFDB0(255, &qword_1EC5FC7F0, &qword_1EE070DE0, 0x1E695CD58, sub_1D0F1ACD4);
    sub_1D0FCF218(&qword_1EC5FD3C0, sub_1D0FCFC38);
    sub_1D0FCFE0C();
    v0 = sub_1D0FF4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD3B0);
    }
  }
}

void sub_1D0FCFDB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D0FF4FC8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}