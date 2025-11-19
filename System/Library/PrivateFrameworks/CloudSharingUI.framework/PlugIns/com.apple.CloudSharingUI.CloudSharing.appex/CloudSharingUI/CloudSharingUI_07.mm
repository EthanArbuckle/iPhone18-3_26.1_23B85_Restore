void sub_1000BB698(void *a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v60 - v6;
  v8 = [a1 activityType];
  if (!v8)
  {
    return;
  }

  v61 = v8;
  v9 = sub_1000C6D84();
  v11 = v10;
  if (v9 != sub_1000C6D84() || v11 != v12)
  {
    v14 = sub_1000C73A4();

    if (v14)
    {
LABEL_7:
      v15 = v61;

      return;
    }

    v16 = sub_1000C6D84();
    v18 = v17;
    if (v16 != sub_1000C6D84() || v18 != v19)
    {
      v21 = sub_1000C73A4();

      if (v21)
      {
        goto LABEL_7;
      }

      v22 = qword_100115F90;
      v23 = v61;
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = sub_1000C6D84();
      v26 = v25;
      if (v24 == sub_1000C6D84() && v26 == v27)
      {
      }

      else
      {
        v28 = sub_1000C73A4();

        if ((v28 & 1) == 0)
        {
          v46 = *a2;
          v47 = type metadata accessor for GlobalPermissionViewModel();
          v48 = *(v47 + 48);
          v49 = *(v47 + 52);
          swift_allocObject();

          sub_100043774(v50);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          if (v62 == 1)
          {
            v51 = sub_1000C6F44();
            (*(*(v51 - 8) + 56))(v7, 1, 1, v51);
            sub_1000C6F14();
            sub_1000C035C(a2, &v62);
            v52 = sub_1000C6F04();
            v36 = swift_allocObject();
            *(v36 + 16) = v52;
            *(v36 + 24) = &protocol witness table for MainActor;
            v53 = *(a2 + 144);
            *(v36 + 160) = *(a2 + 128);
            *(v36 + 176) = v53;
            *(v36 + 192) = *(a2 + 160);
            *(v36 + 208) = *(a2 + 176);
            v54 = *(a2 + 80);
            *(v36 + 96) = *(a2 + 64);
            *(v36 + 112) = v54;
            v55 = *(a2 + 112);
            *(v36 + 128) = *(a2 + 96);
            *(v36 + 144) = v55;
            v56 = *(a2 + 16);
            *(v36 + 32) = *a2;
            *(v36 + 48) = v56;
            v57 = *(a2 + 48);
            *(v36 + 64) = *(a2 + 32);
            *(v36 + 80) = v57;
            v42 = &unk_1000D6320;
            goto LABEL_29;
          }

          v58 = *(a2 + 16);
          v59 = *(a2 + 24);
          v66 = *(a2 + 8);
          v62 = v66;
          v63 = v58;
          v64 = v59;
          v45 = 3;
LABEL_31:
          v65[15] = v45;
          sub_1000C0498(&v66, v65);

          sub_10000FEB8(&qword_10011A280, &qword_1000D6310);
          sub_1000C6B94();

          sub_1000C04F4(&v66);

          return;
        }
      }

      v29 = *a2;
      v30 = type metadata accessor for GlobalPermissionViewModel();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();

      sub_100043774(v33);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v62 == 1)
      {
        v34 = sub_1000C6F44();
        (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
        sub_1000C6F14();
        sub_1000C035C(a2, &v62);
        v35 = sub_1000C6F04();
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        *(v36 + 24) = &protocol witness table for MainActor;
        v37 = *(a2 + 144);
        *(v36 + 160) = *(a2 + 128);
        *(v36 + 176) = v37;
        *(v36 + 192) = *(a2 + 160);
        *(v36 + 208) = *(a2 + 176);
        v38 = *(a2 + 80);
        *(v36 + 96) = *(a2 + 64);
        *(v36 + 112) = v38;
        v39 = *(a2 + 112);
        *(v36 + 128) = *(a2 + 96);
        *(v36 + 144) = v39;
        v40 = *(a2 + 16);
        *(v36 + 32) = *a2;
        *(v36 + 48) = v40;
        v41 = *(a2 + 48);
        *(v36 + 64) = *(a2 + 32);
        *(v36 + 80) = v41;
        v42 = &unk_1000D6330;
LABEL_29:
        sub_1000B8860(0, 0, v7, v42, v36);

        return;
      }

      v43 = *(a2 + 16);
      v44 = *(a2 + 24);
      v66 = *(a2 + 8);
      v62 = v66;
      v63 = v43;
      v64 = v44;
      v45 = 2;
      goto LABEL_31;
    }
  }
}

uint64_t sub_1000BBCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v6 = sub_1000C5D84();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000C6F14();
  v4[10] = sub_1000C6F04();
  v9 = swift_task_alloc();
  v4[11] = v9;
  *v9 = v4;
  v9[1] = sub_1000BBE2C;

  return sub_1000BA5C0(10);
}

uint64_t sub_1000BBE2C(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v6 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BBF70, v6, v5);
}

uint64_t sub_1000BBF70()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);

  v4 = *v3;
  if (v1)
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = *(v4 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v9 = *(v6 + 48);
    if (v9(v7, 1, v5) == 1)
    {
      sub_100010F24(*(v0 + 40), &qword_100116260, &qword_1000CD940);
    }

    else
    {
      v12 = *(v0 + 56);
      v11 = *(v0 + 64);
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      (*(v12 + 32))(v11, *(v0 + 40), v13);
      (*(v12 + 16))(v15, v11, v13);
      (*(v12 + 56))(v15, 0, 1, v13);
      v16 = [objc_opt_self() generalPasteboard];
      sub_100017574(v15, v14, &qword_100116260, &qword_1000CD940);
      if (v9(v14, 1, v13) == 1)
      {
        v18 = 0;
      }

      else
      {
        v19 = *(v0 + 48);
        v20 = *(v0 + 56);
        v21 = *(v0 + 24);
        sub_1000C5D24(v17);
        v18 = v22;
        (*(v20 + 8))(v21, v19);
      }

      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v25 = *(v0 + 48);
      v26 = *(v0 + 32);
      [v16 setURL:v18];

      sub_100010F24(v26, &qword_100116260, &qword_1000CD940);
      (*(v24 + 8))(v23, v25);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000816C();
      v27 = sub_1000077D8();
      if (v27)
      {
        [v27 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
    sub_100067838(3u, v10);
  }

  v28 = *(v0 + 64);
  v29 = *(v0 + 32);
  v30 = *(v0 + 40);
  v31 = *(v0 + 24);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1000BC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[8] = a4;
  v4[9] = sub_1000C6F14();
  v4[10] = sub_1000C6F04();
  v6 = *a4;
  v7 = swift_task_alloc();
  v4[11] = v7;
  *v7 = v4;
  v7[1] = sub_1000BC364;

  return sub_10005E534(0, 0, 0);
}

uint64_t sub_1000BC364()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v5 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BC4A0, v5, v4);
}

uint64_t sub_1000BC4A0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v2 + 144);
  *(v0 + 16) = *(v2 + 128);
  *(v0 + 32) = v3;
  sub_10000FEB8(&unk_10011A210, &qword_1000D60B8);
  v4 = sub_1000C6B84();
  v5 = *(v0 + 48);
  if (v5)
  {
    v6 = *(v0 + 56);
    v5(v4);
    sub_100010800(v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_1000BC54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!a1)
  {
    return;
  }

  v7 = sub_1000C6D84();
  v9 = v8;
  if (v7 == sub_1000C6D84() && v9 == v10)
  {
    goto LABEL_22;
  }

  v12 = sub_1000C73A4();
  v27 = a1;

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = sub_1000C6D84();
  v15 = v14;
  if (v13 == sub_1000C6D84() && v15 == v16)
  {

LABEL_22:

    goto LABEL_23;
  }

  v18 = sub_1000C73A4();

  if (v18)
  {
    goto LABEL_7;
  }

  v19 = qword_100115F90;
  v27 = v27;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1000C6D84();
  v22 = v21;
  if (v20 == sub_1000C6D84() && v22 == v23)
  {

LABEL_23:

    return;
  }

  v24 = sub_1000C73A4();

  if ((v24 & 1) != 0 || (v25 = *a5, !swift_unknownObjectWeakLoadStrong()))
  {
LABEL_7:

    return;
  }

  sub_10000816C();
  v26 = sub_1000077D8();
  if (v26)
  {
    [v26 _dismissViewControllerWithError:0];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

void sub_1000BC7F0()
{
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = *(v0 + 176);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000BAEAC();
}

id sub_1000BC854@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for UIActivityTransportView.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_BRActivityTypeCopyShareLink];
  *v6 = 0xD00000000000002BLL;
  *(v6 + 1) = 0x80000001000DDCA0;
  v7 = &v5[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[40] = -1;
  *&v5[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_sharingModel] = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1000BC90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0778();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000BC970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0778();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000BC9D4()
{
  sub_1000C0778();
  sub_1000C6724();
  __break(1u);
}

uint64_t sub_1000BC9FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1000C6CB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100010778(0, &qword_10011A200, OS_dispatch_queue_ptr);
  *v14 = sub_1000C7034();
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = sub_1000C6CC4();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v17 = sub_1000C6F44();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = a3;
    v19 = a1;

    sub_1000B8860(0, 0, v9, &unk_1000D6048, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000BCC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = *(*(sub_10000FEB8(&qword_100116260, &qword_1000CD940) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BCCB8, 0, 0);
}

uint64_t sub_1000BCCB8()
{
  v0[12] = *(v0[8] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel);
  v0[13] = sub_1000C6F14();
  v0[14] = sub_1000C6F04();
  v2 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BCD64, v2, v1);
}

uint64_t sub_1000BCD64()
{
  v1 = v0[14];
  v2 = v0[12];

  v0[15] = *(v2 + 24);

  return _swift_task_switch(sub_1000BCDE0, 0, 0);
}

uint64_t sub_1000BCDE0()
{
  v1 = *(v0 + 104);
  *(v0 + 128) = sub_1000C6F04();
  v3 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BCE6C, v3, v2);
}

uint64_t sub_1000BCE6C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return _swift_task_switch(sub_1000BCF2C, 0, 0);
}

uint64_t sub_1000BCF2C()
{
  v1 = *(v0 + 88);
  v2 = sub_1000C5D84();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100010F24(v1, &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    sub_1000C5D04();

    (*(v3 + 8))(v1, v2);
    v7 = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion + 8);
    v8 = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion + 16);
    *(v0 + 16) = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion);
    *(v0 + 24) = v7;
    *(v0 + 32) = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v4;
    *(v0 + 48) = sub_1000BFDA8;
    *(v0 + 56) = v9;

    sub_10000FEB8(&unk_10011A210, &qword_1000D60B8);
    sub_1000C6B94();
  }

  v10 = *(v0 + 88);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000BD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_1000C6F14();
  v5[6] = sub_1000C6F04();
  v7 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BD590, v7, v6);
}

uint64_t sub_1000BD590()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = sub_1000C6E94();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  *(v0 + 72) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v0 + 80) = v9;
  *(v0 + 88) = v8;

  return _swift_task_switch(sub_1000BD658, v9, v8);
}

uint64_t sub_1000BD658()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel;
    v4 = *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel);
    sub_1000B0F08(v1);
    v5 = *(v2 + v3);
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1000BD778;

    return sub_10006D96C();
  }

  else
  {
    v8 = *(v0 + 72);

    v9 = *(v0 + 56);
    if (v9)
    {
      v9[2](*(v0 + 56), 1);
      _Block_release(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000BD778()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1000BD898, v4, v3);
}

uint64_t sub_1000BD898()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = *(v0 + 56);
  if (v3)
  {
    v3[2](*(v0 + 56), 1);
    _Block_release(v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BD930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1000C5F74();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_1000C6F14();
  v6[16] = sub_1000C6F04();
  v11 = sub_1000C6ED4();
  v6[17] = v11;
  v6[18] = v10;

  return _swift_task_switch(sub_1000BDA34, v11, v10);
}

uint64_t sub_1000BDA34()
{
  v0[19] = *(v0[9] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1000BDAD4;

  return sub_100056B08();
}

uint64_t sub_1000BDAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_1000BDC84;
  }

  else
  {
    v7 = sub_1000BDC10;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000BDC10()
{
  v1 = v0[16];

  v3 = v0[14];
  v2 = v0[15];

  v4 = v0[1];

  return v4();
}

id sub_1000BDC84()
{
  v71 = v0;
  *(v0 + 64) = *(v0 + 168);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    result = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
    v8 = result;
    v69 = v6;
    v68 = v3;
    if (v6 == 8)
    {
      v64 = v5;
      v66 = v4;
      if (!v3)
      {
        __break(1u);
        return result;
      }

      v9 = v3;
      v10 = *(v0 + 168);
      v12 = *(v0 + 120);
      v11 = *(v0 + 128);
      v13 = *(v0 + 88);
      v14 = v9;

      v15 = v14;
      sub_1000C5F54();
      v8 = v15;

      v16 = sub_1000C5F64();
      v17 = sub_1000C6FD4();

      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 120);
      v20 = *(v0 + 96);
      v21 = *(v0 + 104);
      if (v18)
      {
        v60 = v2;
        v62 = *(v0 + 120);
        v22 = *(v0 + 80);
        v23 = *(v0 + 88);
        v58 = *(v0 + 96);
        v24 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_100071844(v22, v23, &v70);
        *(v24 + 12) = 2080;
        v8 = v8;
        v25 = [v8 description];
        v26 = sub_1000C6D84();
        v27 = v1;
        v29 = v28;

        v30 = v26;
        v2 = v60;
        v31 = sub_100071844(v30, v29, &v70);
        v1 = v27;

        *(v24 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v16, v17, "mailComposeController %s delegate stopSharingError: %s", v24, 0x16u);
        swift_arrayDestroy();

        (*(v21 + 8))(v62, v58);
      }

      else
      {

        (*(v21 + 8))(v19, v20);
      }

      v5 = v64;
      v4 = v66;
    }

    else
    {
      v38 = *(v0 + 168);
      v39 = *(v0 + 128);
      v40 = *(v0 + 112);
      v41 = *(v0 + 88);

      sub_1000C5F54();

      v42 = sub_1000C5F64();
      v43 = sub_1000C6FD4();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 104);
      v46 = *(v0 + 112);
      v63 = *(v0 + 96);
      if (v44)
      {
        v67 = v4;
        v59 = *(v0 + 112);
        v47 = v1;
        v49 = *(v0 + 80);
        v48 = *(v0 + 88);
        v61 = v2;
        v50 = swift_slowAlloc();
        v65 = v5;
        v51 = swift_slowAlloc();
        v70 = v51;
        *v50 = 136315138;
        v52 = v49;
        v1 = v47;
        v53 = v48;
        v4 = v67;
        *(v50 + 4) = sub_100071844(v52, v53, &v70);
        _os_log_impl(&_mh_execute_header, v42, v43, "mailComposeController %s delegate unexpected internal error, returning CKError.internalError as best approximation", v50, 0xCu);
        sub_100010544(v51);
        v5 = v65;

        v2 = v61;

        (*(v45 + 8))(v59, v63);
      }

      else
      {

        (*(v45 + 8))(v46, v63);
      }
    }

    v54 = *(v0 + 152);
    sub_100067838(3u, v8);
    sub_1000494BC(v1, v2, v68, v4, v5, v69);

    v55 = *(v0 + 64);

    v57 = *(v0 + 112);
    v56 = *(v0 + 120);

    v36 = *(v0 + 8);
  }

  else
  {
    v33 = *(v0 + 120);
    v32 = *(v0 + 128);
    v34 = *(v0 + 112);

    v35 = *(v0 + 64);

    v36 = *(v0 + 8);
    v37 = *(v0 + 168);
  }

  return v36();
}

void sub_1000BE148(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v21 - v9;
  v11 = [v3 activity];
  if (!v11)
  {
    return;
  }

  v21[0] = v11;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    if ([v12 respondsToSelector:"mailComposeController:didFinishWithResult:error:"])
    {
      v21[1] = a2;
      type metadata accessor for MFMailComposeResult(0);
      [v13 performSelector:"mailComposeController:didFinishWithResult:error:" withObject:a1 withObject:sub_1000C73C4()];
      swift_unknownObjectRelease();
    }

    if (a2 != 2 || a3)
    {
      v17 = sub_1000C6F44();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_1000C6F14();
      v18 = v3;
      v19 = sub_1000C6F04();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = &protocol witness table for MainActor;
      *(v20 + 32) = v18;
      strcpy((v20 + 40), "didFinishWith");
      *(v20 + 54) = -4864;
      sub_1000B82F8(0, 0, v10, &unk_1000D6018, v20);
    }

    else
    {
      v14 = *&v3[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel];
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10000816C();
        v15 = sub_1000077D8();
        if (v15)
        {
          [v15 _dismissViewControllerWithError:0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return;
      }
    }

    return;
  }

  v16 = v21[0];
}

uint64_t sub_1000BE610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_1000C6F14();
  v5[6] = sub_1000C6F04();
  v7 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BE6B0, v7, v6);
}

uint64_t sub_1000BE6B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = sub_1000C6E94();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  *(v0 + 72) = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  *(v0 + 80) = v9;
  *(v0 + 88) = v8;

  return _swift_task_switch(sub_1000BE778, v9, v8);
}

uint64_t sub_1000BE778()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel;
    v4 = *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel);
    sub_1000B0F08(v1);
    v5 = *(v2 + v3);
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1000BE898;

    return sub_10006D96C();
  }

  else
  {
    v8 = *(v0 + 72);

    v9 = *(v0 + 56);
    if (v9)
    {
      v9[2](*(v0 + 56), 1);
      _Block_release(v9);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000BE898()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1000C0824, v4, v3);
}

void sub_1000BE9B8(uint64_t a1, void *a2)
{
  v5 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v19 - v7;
  v9 = [v2 activity];
  if (!v9)
  {
    return;
  }

  v19[0] = v9;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    if ([v10 respondsToSelector:"messageComposeViewController:didFinishWithResult:"])
    {
      v19[1] = a2;
      type metadata accessor for MessageComposeResult(0);
      [v11 performSelector:"messageComposeViewController:didFinishWithResult:" withObject:a1 withObject:sub_1000C73C4()];
      swift_unknownObjectRelease();
    }

    if (a2 == 1)
    {
      v12 = *&v2[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel];
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10000816C();
        v13 = sub_1000077D8();
        if (v13)
        {
          [v13 _dismissViewControllerWithError:0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v15 = sub_1000C6F44();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      sub_1000C6F14();
      v16 = v2;
      v17 = sub_1000C6F04();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = &protocol witness table for MainActor;
      *(v18 + 32) = v16;
      strcpy((v18 + 40), "didFinishWith");
      *(v18 + 54) = -4864;
      sub_1000B82F8(0, 0, v8, &unk_1000D5FC0, v18);
    }

    return;
  }

  v14 = v19[0];
}

uint64_t sub_1000BECC4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_1000C6E74();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000C6EC4();
    swift_endAccess();
    v5 = [v4 subviews];
    sub_100010778(0, &qword_10011A278, UIView_ptr);
    v6 = sub_1000C6E94();

    v7 = v6 >> 62 ? sub_1000C72F4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7 < 1)
    {
      return result;
    }

    v9 = [v4 subviews];
    v10 = sub_1000C6E94();

    if (v10 >> 62)
    {
      v4 = sub_1000C72F4();
      if (!v4)
      {
      }
    }

    else
    {
      v4 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000C7254();
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(v10 + 8 * i + 32);
      }

      v13 = v12;
      v14 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1000BECC4(v12, a2);

      if (v14 == v4)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000C6EA4();
  }
}

uint64_t sub_1000BEEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100017CBC;

  return sub_1000BD930(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BEFA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000BF0A0;

  return v7(a1);
}

uint64_t sub_1000BF0A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000BF198(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100017CBC;

  return v7();
}

uint64_t sub_1000BF280(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100011080;

  return v8();
}

uint64_t sub_1000BF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100017574(a3, v25 - v11, &qword_1001164E0, &unk_1000CDD50);
  v13 = sub_1000C6F44();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100010F24(v12, &qword_1001164E0, &unk_1000CDD50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000C6F34();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000C6ED4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000C6DB4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

    return v23;
  }

LABEL_8:
  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000BF664(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C0810;

  return v7(a1);
}

uint64_t sub_1000BF760()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100017CBC;

  return sub_1000BE610(v2, v3, v4, v5, v6);
}

uint64_t sub_1000BF82C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BF864(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000BF664(a1, v5);
}

uint64_t sub_1000BF91C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011080;

  return sub_1000BD930(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BF9E4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BFA3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100017CBC;

  return sub_1000BD4F0(v2, v3, v4, v5, v6);
}

uint64_t sub_1000BFB04()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFB4C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BFB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BFBC8(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1000BFC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100017CBC;

  return sub_1000BCC18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BFCE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000BEFA8(a1, v5);
}

uint64_t sub_1000BFDA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000BFDD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BFE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_1000B9E50(a1, v4, v5, v7, v6);
}

uint64_t sub_1000BFEE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BFF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011080;

  return sub_1000BA350(a1, v4, v5, v7, v6);
}

void sub_1000BFFF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_1000199B8(a1, a2, a3, a4, a5, a6);
  }
}

id sub_1000C0004(void *a1)
{
  if (!a1)
  {
    return [objc_allocWithZone(NSOperation) init];
  }

  v1 = a1;
  v2 = [v1 activity];
  if (v2)
  {

    v7[4] = nullsub_2;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10008EFD4;
    v7[3] = &unk_10010BB20;
    v3 = _Block_copy(v7);
    v4 = [objc_opt_self() blockOperationWithBlock:v3];

    _Block_release(v3);

    return v4;
  }

  else
  {
    v6 = [objc_allocWithZone(NSOperation) init];

    return v6;
  }
}

unint64_t sub_1000C0154()
{
  result = qword_10011A230;
  if (!qword_10011A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A230);
  }

  return result;
}

uint64_t sub_1000C01A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100107710;
  v6._object = a2;
  v4 = sub_1000C7344(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

__n128 sub_1000C01F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000C0230(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1000C0278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C02FC()
{
  result = qword_10011A238;
  if (!qword_10011A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A238);
  }

  return result;
}

uint64_t sub_1000C0394()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  v10 = *(v0 + 112);

  v11 = *(v0 + 120);

  v12 = *(v0 + 136);

  v13 = *(v0 + 144);

  v14 = *(v0 + 152);

  if (*(v0 + 160))
  {
    v15 = *(v0 + 168);
  }

  v16 = *(v0 + 176);
  v17 = *(v0 + 184);
  v18 = *(v0 + 192);
  sub_100050264();

  return _swift_deallocObject(v0, 193, 7);
}

uint64_t sub_1000C0458()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C054C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000BC2A8(a1, v4, v5, v1 + 4);
}

uint64_t sub_1000C05FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  v12 = *(v0 + 136);

  v13 = *(v0 + 152);

  v14 = *(v0 + 160);

  v15 = *(v0 + 168);

  if (*(v0 + 176))
  {
    v16 = *(v0 + 184);
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v19 = *(v0 + 208);
  sub_100050264();

  return _swift_deallocObject(v0, 209, 7);
}

uint64_t sub_1000C06C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000BBCCC(a1, v4, v5, v1 + 32);
}

unint64_t sub_1000C0778()
{
  result = qword_10011A288;
  if (!qword_10011A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A288);
  }

  return result;
}

uint64_t sub_1000C0848(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1000C0A04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RequesterInfoView()
{
  result = qword_10011A2E8;
  if (!qword_10011A2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C0BEC()
{
  sub_10004C40C();
  if (v0 <= 0x3F)
  {
    sub_1000C0D3C();
    if (v1 <= 0x3F)
    {
      sub_10004C4F8(319, &qword_100117BC0, &qword_100117018, &qword_1000CD830, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10004C4F8(319, &qword_100117BC8, &unk_100117BD0, qword_1000CF980, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10004C4F8(319, &qword_100116A98, &qword_100116A20, &qword_1000CCB90, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000C0D3C()
{
  if (!qword_10011A2F8)
  {
    type metadata accessor for RequesterInfoViewModel();
    sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
    v0 = sub_1000C6244();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A2F8);
    }
  }
}

uint64_t sub_1000C0DEC@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v91 = sub_10000FEB8(&qword_10011A340, &qword_1000D6400);
  v78 = *(v91 - 8);
  v2 = *(v78 + 64);
  __chkstk_darwin(v91);
  v92 = &v73 - v3;
  v87 = sub_10000FEB8(&qword_10011A348, &qword_1000D6408);
  v4 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v89 = &v73 - v5;
  v6 = sub_1000C65B4();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  __chkstk_darwin(v6);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000FEB8(&qword_10011A350, &qword_1000D6410);
  v75 = *(v86 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v86);
  v79 = &v73 - v10;
  v88 = sub_10000FEB8(&qword_10011A358, &unk_1000D6418);
  v76 = *(v88 - 8);
  v11 = *(v76 + 64);
  __chkstk_darwin(v88);
  v80 = &v73 - v12;
  v13 = sub_1000C6694();
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  __chkstk_darwin(v13);
  v74 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v73 - v19;
  v21 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v77 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v73 - v26;
  __chkstk_darwin(v25);
  v29 = &v73 - v28;
  v93 = sub_10000FEB8(&qword_10011A360, &qword_1000D6428);
  v82 = *(v93 - 8);
  v30 = *(v82 + 64);
  __chkstk_darwin(v93);
  v32 = &v73 - v31;
  v95 = v1;
  sub_10000FEB8(&qword_10011A368, &qword_1000D6430);
  sub_10001E490(&qword_10011A370, &qword_10011A368, &qword_1000D6430);
  v94 = v32;
  v33 = v81;
  sub_1000C6864();
  v34 = v1 + *(type metadata accessor for RequesterInfoView() + 28);
  sub_1000A36E0(v29);
  (*(v33 + 104))(v27, enum case for UserInterfaceSizeClass.regular(_:), v13);
  (*(v33 + 56))(v27, 0, 1, v13);
  v35 = *(v17 + 56);
  sub_100017574(v29, v20, &unk_100117BD0, qword_1000CF980);
  sub_100017574(v27, &v20[v35], &unk_100117BD0, qword_1000CF980);
  v36 = *(v33 + 48);
  if (v36(v20, 1, v13) == 1)
  {
    sub_100010F24(v27, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v29, &unk_100117BD0, qword_1000CF980);
    v37 = v36(&v20[v35], 1, v13);
    v38 = v93;
    if (v37 == 1)
    {
      sub_100010F24(v20, &unk_100117BD0, qword_1000CF980);
LABEL_9:
      sub_1000C6774();
      v57 = sub_10001E490(&qword_10011A378, &qword_10011A360, &qword_1000D6428);
      v92 = v57;
      sub_1000C6934();
      sub_1000C65D4();
      v58 = sub_1000C68C4();
      v60 = v59;
      v62 = v61;
      v63 = v83;
      v64 = v84;
      v65 = v85;
      (*(v84 + 104))(v83, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v85);
      v96 = v93;
      v97 = v57;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v67 = v86;
      v68 = v79;
      sub_1000C6954();
      sub_1000500D8(v58, v60, v62 & 1);

      (*(v64 + 8))(v63, v65);
      v38 = v93;
      (*(v75 + 8))(v68, v67);
      v69 = v76;
      v70 = v88;
      v71 = v80;
      (*(v76 + 16))(v89, v80, v88);
      swift_storeEnumTagMultiPayload();
      v96 = v67;
      v97 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v96 = v38;
      v97 = v92;
      swift_getOpaqueTypeConformance2();
      sub_1000C6624();
      (*(v69 + 8))(v71, v70);
      return (*(v82 + 8))(v94, v38);
    }

    goto LABEL_6;
  }

  v39 = v77;
  sub_100017574(v20, v77, &unk_100117BD0, qword_1000CF980);
  if (v36(&v20[v35], 1, v13) == 1)
  {
    sub_100010F24(v27, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v29, &unk_100117BD0, qword_1000CF980);
    (*(v33 + 8))(v39, v13);
    v38 = v93;
LABEL_6:
    sub_100010F24(v20, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_7;
  }

  v53 = &v20[v35];
  v54 = v74;
  (*(v33 + 32))(v74, v53, v13);
  sub_1000C455C(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass);
  v55 = sub_1000C6D34();
  v56 = *(v33 + 8);
  v56(v54, v13);
  sub_100010F24(v27, &unk_100117BD0, qword_1000CF980);
  sub_100010F24(v29, &unk_100117BD0, qword_1000CF980);
  v56(v39, v13);
  sub_100010F24(v20, &unk_100117BD0, qword_1000CF980);
  v38 = v93;
  if (v55)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1000C65D4();
  v40 = sub_1000C68C4();
  v42 = v41;
  v44 = v43;
  v46 = v83;
  v45 = v84;
  v47 = v85;
  (*(v84 + 104))(v83, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v85);
  v48 = sub_10001E490(&qword_10011A378, &qword_10011A360, &qword_1000D6428);
  sub_1000C6954();
  sub_1000500D8(v40, v42, v44 & 1);

  (*(v45 + 8))(v46, v47);
  v49 = v78;
  v50 = v91;
  v51 = v92;
  (*(v78 + 16))(v89, v92, v91);
  swift_storeEnumTagMultiPayload();
  v96 = v38;
  v97 = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v96 = v86;
  v97 = v52;
  swift_getOpaqueTypeConformance2();
  v96 = v38;
  v97 = v48;
  swift_getOpaqueTypeConformance2();
  sub_1000C6624();
  (*(v49 + 8))(v51, v50);
  return (*(v82 + 8))(v94, v38);
}

uint64_t sub_1000C1A28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v43 = sub_10000FEB8(&qword_10011A380, &qword_1000D6438);
  v74 = *(v43 - 8);
  v3 = v74[8];
  v4 = __chkstk_darwin(v43);
  v71 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v37 - v6;
  v7 = sub_10000FEB8(&qword_100117C60, &qword_1000D6440);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = v69[8];
  v9 = __chkstk_darwin(v7);
  v72 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v37 - v11;
  v73 = sub_10000FEB8(&qword_10011A388, &qword_1000D6448);
  v42 = *(v73 - 8);
  v12 = v42;
  v13 = *(v42 + 64);
  v14 = __chkstk_darwin(v73);
  v46 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v103 = 0;
  LOBYTE(v104) = 0;
  v77 = a1;
  sub_10000FEB8(&qword_10011A390, &unk_1000D6450);
  sub_10001E490(&qword_10011A398, &qword_10011A390, &unk_1000D6450);
  v41 = v17;
  sub_1000C6C04();
  LOBYTE(v102[0]) = 1;
  sub_1000C6BD4();
  v50 = v103;
  v62 = v104;
  v61 = v105;
  LOBYTE(v90) = 1;
  sub_1000C6BD4();
  v56 = v102[1];
  v57 = v102[0];
  v55 = LOBYTE(v102[2]);
  LOBYTE(v87) = 0;
  sub_1000C6BD4();
  v63 = v90;
  v68 = v91;
  v67 = v92;
  LOBYTE(v84) = 0;
  sub_1000C6BD4();
  v65 = v88;
  v66 = v87;
  v64 = v89;
  LOBYTE(v81) = 0;
  sub_1000C6BD4();
  v59 = v85;
  v60 = v84;
  v58 = v86;
  v79 = 0;
  sub_1000C6BD4();
  v53 = v82;
  v54 = v81;
  v52 = v83;
  type metadata accessor for SharingModel();
  sub_1000C455C(&qword_100117158, type metadata accessor for SharingModel);
  v18 = sub_1000C6404();
  v40 = v18;
  v47 = v19;
  v78 = 1;
  sub_1000C6AD4();
  v48 = v79;
  v51 = v80;
  v76 = a1;
  sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  sub_1000505FC();
  v20 = v45;
  sub_1000C6C14();
  v103 = 0;
  LOBYTE(v104) = 0;
  v75 = a1;
  v21 = v49;
  sub_1000C6C04();
  v22 = *(v12 + 16);
  v23 = v46;
  v24 = v73;
  v22(v46, v17, v73);
  v38 = v69[2];
  v38(v72, v20, v70);
  v37 = v74[2];
  v25 = v21;
  v26 = v43;
  v37(v71, v25, v43);
  v27 = v44;
  v22(v44, v23, v24);
  v28 = sub_10000FEB8(&qword_10011A3A0, &qword_1000D6460);
  v29 = v28[12];
  v102[0] = v18;
  v102[1] = v47;
  v102[2] = _swiftEmptyArrayStorage;
  v102[3] = v50;
  v102[4] = v62;
  LOBYTE(v102[5]) = v61;
  *(&v102[5] + 1) = *v101;
  HIDWORD(v102[5]) = *&v101[3];
  v102[7] = 0;
  v102[6] = 0;
  v102[8] = _swiftEmptyArrayStorage;
  v102[9] = v57;
  v102[10] = v56;
  LOBYTE(v102[11]) = v55;
  HIDWORD(v102[11]) = *&v100[3];
  *(&v102[11] + 1) = *v100;
  v102[13] = 0;
  v102[12] = 0;
  v102[14] = _swiftEmptyArrayStorage;
  LOBYTE(v102[15]) = 0;
  *(&v102[15] + 1) = *v99;
  HIDWORD(v102[15]) = *&v99[3];
  v102[16] = 0;
  v102[17] = 0;
  v102[18] = _swiftEmptyArrayStorage;
  LOBYTE(v102[19]) = 0;
  *(&v102[19] + 1) = *v98;
  HIDWORD(v102[19]) = *&v98[3];
  v39 = nullsub_2;
  v102[20] = nullsub_2;
  v102[21] = 0;
  v102[22] = v63;
  v102[23] = v68;
  LOBYTE(v102[24]) = v67;
  HIDWORD(v102[24]) = *&v97[3];
  *(&v102[24] + 1) = *v97;
  v102[25] = v66;
  v102[26] = v65;
  LOBYTE(v102[27]) = v64;
  HIDWORD(v102[27]) = *&v96[3];
  *(&v102[27] + 1) = *v96;
  v102[28] = v60;
  v102[29] = v59;
  LOBYTE(v102[30]) = v58;
  HIDWORD(v102[30]) = *&v95[3];
  *(&v102[30] + 1) = *v95;
  v102[31] = v54;
  v102[32] = v53;
  LOBYTE(v102[33]) = v52;
  *(&v102[33] + 1) = *v94;
  HIDWORD(v102[33]) = *&v94[3];
  LOBYTE(v102[34]) = v48;
  *(&v102[34] + 1) = *v93;
  HIDWORD(v102[34]) = *&v93[3];
  v102[35] = v51;
  memcpy(&v27[v29], v102, 0x120uLL);
  v30 = v70;
  v38(&v27[v28[16]], v72, v70);
  v31 = v71;
  v37(&v27[v28[20]], v71, v26);
  sub_10005051C(v102, &v103);
  v32 = v74[1];
  ++v74;
  v33 = v26;
  v32(v49, v26);
  v34 = v69[1];
  v34(v45, v30);
  v35 = *(v42 + 8);
  v35(v41, v73);
  v32(v31, v33);
  v34(v72, v30);
  v103 = v40;
  v104 = v47;
  v105 = _swiftEmptyArrayStorage;
  v106 = v50;
  v107 = v62;
  v108 = v61;
  *v109 = *v101;
  *&v109[3] = *&v101[3];
  v111 = 0;
  v110 = 0;
  v112 = _swiftEmptyArrayStorage;
  v113 = v57;
  v114 = v56;
  v115 = v55;
  *v116 = *v100;
  *&v116[3] = *&v100[3];
  v118 = 0;
  v117 = 0;
  v119 = _swiftEmptyArrayStorage;
  v120 = 0;
  *v121 = *v99;
  *&v121[3] = *&v99[3];
  v122 = 0;
  v123 = 0;
  v124 = _swiftEmptyArrayStorage;
  v125 = 0;
  *v126 = *v98;
  *&v126[3] = *&v98[3];
  v127 = v39;
  v128 = 0;
  v129 = v63;
  v130 = v68;
  v131 = v67;
  *&v132[3] = *&v97[3];
  *v132 = *v97;
  v133 = v66;
  v134 = v65;
  v135 = v64;
  *&v136[3] = *&v96[3];
  *v136 = *v96;
  v137 = v60;
  v138 = v59;
  v139 = v58;
  *&v140[3] = *&v95[3];
  *v140 = *v95;
  v141 = v54;
  v142 = v53;
  v143 = v52;
  *v144 = *v94;
  *&v144[3] = *&v94[3];
  v145 = v48;
  *v146 = *v93;
  *&v146[3] = *&v93[3];
  v147 = v51;
  sub_100050578(&v103);
  return (v35)(v46, v73);
}

uint64_t sub_1000C23F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = sub_1000C65C4();
  LOBYTE(v73) = 1;
  sub_1000C2AFC(a1, &v57);
  v87 = *&v58[48];
  v88 = *&v58[64];
  v89 = *&v58[80];
  v83 = v57;
  v84 = *v58;
  v86 = *&v58[32];
  v85 = *&v58[16];
  v90[0] = v57;
  v90[1] = *v58;
  v90[2] = *&v58[16];
  v90[3] = *&v58[32];
  v90[4] = *&v58[48];
  v90[5] = *&v58[64];
  v90[6] = *&v58[80];
  sub_100017574(&v83, &v45, &qword_100117CD8, &qword_1000CFCB0);
  sub_100010F24(v90, &qword_100117CD8, &qword_1000CFCB0);
  *&v82[55] = v86;
  *&v82[71] = v87;
  *&v82[87] = v88;
  *&v82[103] = v89;
  *&v82[7] = v83;
  *&v82[23] = v84;
  *&v82[39] = v85;
  v32 = v73;
  v33 = sub_1000C65E4();
  v3 = a1 + *(type metadata accessor for RequesterInfoView() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  v7 = sub_1000C6224();
  v9 = *(v7 + 80);
  v8 = *(v7 + 88);

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a1;
  if (v10)
  {
    v11 = sub_1000C6604();
    LOBYTE(v57) = 1;
    sub_1000C302C(a1, &v45);
    *&v72[7] = v45;
    *&v72[23] = *v46;
    *&v72[39] = *&v46[16];
    *&v72[55] = *&v46[32];
    v12 = v57;
    v13 = sub_1000C67B4();
    sub_1000C6204();
    *&v58[17] = *&v72[16];
    *&v58[33] = *&v72[32];
    *&v58[49] = *&v72[48];
    v57 = v11;
    v58[0] = v12;
    *&v58[64] = *&v72[63];
    *&v58[1] = *v72;
    v58[72] = v13;
    *&v58[80] = v14;
    *&v58[88] = v15;
    *&v58[96] = v16;
    *&v58[104] = v17;
    v58[112] = 0;
    nullsub_2(&v57);
    v79 = *&v58[80];
    v80 = *&v58[96];
    v81 = v58[112];
    v75 = *&v58[16];
    v76 = *&v58[32];
    v78 = *&v58[64];
    v77 = *&v58[48];
    v74 = *v58;
    v73 = v57;
  }

  else
  {
    sub_100050DF0(&v73);
  }

  v18 = sub_1000C6224();
  v19 = *(v18 + 96);
  v20 = *(v18 + 104);

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = sub_1000C6604();
    LOBYTE(v57) = 1;
    sub_1000C3298(v30, &v45);
    *&v62[7] = v45;
    *&v62[23] = *v46;
    *&v62[39] = *&v46[16];
    *&v62[55] = *&v46[32];
    v23 = v57;
    v24 = sub_1000C67B4();
    sub_1000C6204();
    *&v58[17] = *&v62[16];
    *&v58[33] = *&v62[32];
    *&v58[49] = *&v62[48];
    v57 = v22;
    v58[0] = v23;
    *&v58[64] = *&v62[63];
    *&v58[1] = *v62;
    v58[72] = v24;
    *&v58[80] = v25;
    *&v58[88] = v26;
    *&v58[96] = v27;
    *&v58[104] = v28;
    v58[112] = 0;
    nullsub_2(&v57);
    v69 = *&v58[80];
    v70 = *&v58[96];
    v71 = v58[112];
    v65 = *&v58[16];
    v66 = *&v58[32];
    v68 = *&v58[64];
    v67 = *&v58[48];
    v64 = *v58;
    v63 = v57;
  }

  else
  {
    sub_100050DF0(&v63);
  }

  v42 = v79;
  v43 = v80;
  v44 = v81;
  v38 = v75;
  v39 = v76;
  v40 = v77;
  v41 = v78;
  v36 = v73;
  v37 = v74;
  v53[6] = v69;
  v53[7] = v70;
  v54 = v71;
  v53[2] = v65;
  v53[3] = v66;
  v53[5] = v68;
  v53[4] = v67;
  v53[1] = v64;
  v53[0] = v63;
  v45 = v34;
  v46[0] = v32;
  *&v46[65] = *&v82[64];
  *&v46[81] = *&v82[80];
  *&v46[97] = *&v82[96];
  *&v46[1] = *v82;
  *&v46[17] = *&v82[16];
  *&v46[33] = *&v82[32];
  *&v46[49] = *&v82[48];
  *&v46[112] = *&v82[111];
  *&v46[120] = v33;
  v47 = sub_1000C3024;
  v48 = 0;
  __src[6] = *&v46[80];
  __src[7] = *&v46[96];
  __src[2] = *&v46[16];
  __src[3] = *&v46[32];
  __src[4] = *&v46[48];
  __src[5] = *&v46[64];
  __src[0] = v34;
  __src[1] = *v46;
  __src[8] = *&v46[112];
  __src[9] = sub_1000C3024;
  v49[6] = v79;
  v49[7] = v80;
  v49[2] = v75;
  v49[3] = v76;
  v49[4] = v77;
  v49[5] = v78;
  v49[0] = v73;
  v49[1] = v74;
  __src[16] = v79;
  __src[17] = v80;
  __src[12] = v75;
  __src[13] = v76;
  __src[14] = v77;
  __src[15] = v78;
  __src[10] = v73;
  __src[11] = v74;
  v51[6] = v69;
  v51[7] = v70;
  v51[2] = v65;
  v51[3] = v66;
  v51[4] = v67;
  v51[5] = v68;
  v51[0] = v63;
  v51[1] = v64;
  *(&__src[24] + 8) = v69;
  *(&__src[25] + 8) = v70;
  *(&__src[20] + 8) = v65;
  *(&__src[21] + 8) = v66;
  *(&__src[22] + 8) = v67;
  *(&__src[23] + 8) = v68;
  v50 = v81;
  LOBYTE(__src[18]) = v81;
  v52 = v71;
  *(&__src[18] + 8) = v63;
  *(&__src[19] + 8) = v64;
  BYTE8(__src[26]) = v71;
  memcpy(a2, __src, 0x1A9uLL);
  sub_100017574(&v45, &v57, &qword_10011A3A8, &unk_1000D6510);
  sub_100017574(v49, &v57, &qword_100117CE8, &qword_1000CFCC0);
  sub_100017574(v51, &v57, &qword_100117CE8, &qword_1000CFCC0);
  sub_100010F24(v53, &qword_100117CE8, &qword_1000CFCC0);
  v55[6] = v42;
  v55[7] = v43;
  v56 = v44;
  v55[2] = v38;
  v55[3] = v39;
  v55[5] = v41;
  v55[4] = v40;
  v55[1] = v37;
  v55[0] = v36;
  sub_100010F24(v55, &qword_100117CE8, &qword_1000CFCC0);
  *&v58[65] = *&v82[64];
  *&v58[81] = *&v82[80];
  *&v58[97] = *&v82[96];
  *&v58[1] = *v82;
  *&v58[17] = *&v82[16];
  *&v58[33] = *&v82[32];
  v57 = v34;
  v58[0] = v32;
  *&v58[49] = *&v82[48];
  *&v58[112] = *&v82[111];
  v59 = v33;
  v60 = sub_1000C3024;
  v61 = 0;
  return sub_100010F24(&v57, &qword_10011A3A8, &unk_1000D6510);
}

uint64_t sub_1000C2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C6A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for RequesterInfoView() + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  v36 = v11;
  v37 = v10;
  v35 = v12;
  v34[1] = v13;
  v14 = *(sub_1000C6224() + 112);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    sub_1000C6C54();
    sub_1000C62C4();
    *(v45 + 6) = v47[4];
    *(&v45[1] + 6) = v47[5];
    *(&v45[2] + 6) = v48;
    v46 = v16;
    LOWORD(v47[0]) = 257;
    *(v47 + 2) = v45[0];
    *(&v47[1] + 2) = v45[1];
    *(&v47[2] + 2) = v45[2];
    *&v47[3] = *(&v48 + 1);
    v49 = v16;
    v50 = v47[0];
    v51 = v47[1];
    *v52 = v47[2];
    *&v52[16] = *(&v48 + 1);
    LOBYTE(v43[0]) = 0;
    v52[24] = 0;
    sub_100017574(&v46, v45, &qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_1000C4BD0();
    sub_1000C4C5C();
    sub_1000C6624();

    sub_100010F24(&v46, &qword_100117CF0, &unk_1000D6550);
    v50 = v45[1];
    v51 = v45[2];
    *v52 = v45[3];
    *&v52[9] = *(&v45[3] + 9);
    v49 = v45[0];
  }

  else
  {
    sub_1000C6A84();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v17 = sub_1000C6AB4();

    (*(v5 + 8))(v8, v4);
    v18 = sub_1000C6A54();
    KeyPath = swift_getKeyPath();
    sub_1000C6C54();
    sub_1000C62C4();
    LOBYTE(v46) = 1;
    *&v45[0] = v17;
    *(&v45[0] + 1) = KeyPath;
    *&v45[1] = v18;
    BYTE8(v45[4]) = 1;
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_1000C4BD0();
    sub_1000C4C5C();
    sub_1000C6624();
  }

  v20 = sub_1000C6224();
  v22 = *(v20 + 64);
  v21 = *(v20 + 72);

  *&v45[0] = v22;
  *(&v45[0] + 1) = v21;
  sub_1000383C8();
  v23 = sub_1000C68D4();
  v25 = v24;
  v26 = v50;
  v41 = v51;
  v42[0] = *v52;
  *(v42 + 9) = *&v52[9];
  *(v44 + 9) = *&v52[9];
  v44[0] = *v52;
  v39 = v49;
  v40 = v50;
  v43[0] = v49;
  v43[1] = v50;
  v43[2] = v51;
  *(&v45[3] + 9) = *&v52[9];
  v45[2] = v51;
  v45[3] = *v52;
  v45[0] = v49;
  v45[1] = v50;
  v28 = v27 & 1;
  v38 = v27 & 1;
  v29 = v49;
  v30 = v51;
  v31 = v45[4];
  *(a2 + 48) = *v52;
  *(a2 + 64) = v31;
  *(a2 + 16) = v26;
  *(a2 + 32) = v30;
  *a2 = v29;
  *(a2 + 80) = v23;
  *(a2 + 88) = v24;
  *(a2 + 96) = v27 & 1;
  *(a2 + 104) = v32;
  sub_100017574(v43, &v46, &qword_100117D40, &qword_1000CFD20);
  sub_100050DE0(v23, v25, v28);

  sub_1000500D8(v23, v25, v28);

  v47[1] = v41;
  v47[2] = v42[0];
  *(&v47[2] + 9) = *(v42 + 9);
  v46 = v39;
  v47[0] = v40;
  return sub_100010F24(&v46, &qword_100117D40, &qword_1000CFD20);
}

uint64_t sub_1000C302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  v20 = (a1 + *(type metadata accessor for RequesterInfoView() + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  v24 = sub_1000C6224();
  v26 = *(v24 + 80);
  v25 = *(v24 + 88);

  sub_1000383C8();
  v27 = sub_1000C68D4();
  v29 = v28;
  v30 = v17 & 1;
  v36 = v17 & 1;
  v32 = v31 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v30;
  *(a2 + 24) = v19;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_100050DE0(v13, v15, v30);

  sub_100050DE0(v27, v29, v32);

  sub_1000500D8(v27, v29, v32);

  sub_1000500D8(v13, v15, v36);
}

uint64_t sub_1000C3298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  v20 = (a1 + *(type metadata accessor for RequesterInfoView() + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  v24 = sub_1000C6224();
  v26 = *(v24 + 96);
  v25 = *(v24 + 104);

  sub_1000383C8();
  v27 = sub_1000C68D4();
  v29 = v28;
  v30 = v17 & 1;
  v36 = v17 & 1;
  v32 = v31 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v30;
  *(a2 + 24) = v19;
  *(a2 + 32) = v27;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_100050DE0(v13, v15, v30);

  sub_100050DE0(v27, v29, v32);

  sub_1000500D8(v27, v29, v32);

  sub_1000500D8(v13, v15, v36);
}

uint64_t sub_1000C3504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequesterInfoView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000C61C4();
  v8 = sub_1000C61F4();
  (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  sub_1000C45B4(a1, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1000C461C(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = sub_10000FEB8(&qword_100117CC0, &unk_1000CFC00);
  v12 = (a2 + v11[9]);
  *v12 = &unk_1000D6500;
  v12[1] = v10;
  v13 = (a2 + v11[10]);
  *v13 = sub_1000C3CF4;
  v13[1] = 0;
  v14 = a2 + v11[11];
  v24[15] = 0;
  sub_1000C6AD4();
  v15 = v26;
  *v14 = v25;
  *(v14 + 8) = v15;
  v16 = a1 + *(v5 + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v19) = v25;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  result = sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_1000B81D0;
  v23[2] = v21;
  return result;
}

uint64_t sub_1000C37D8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1000C63D4() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = sub_1000C6F14();
  v1[7] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_1000C38DC, v6, v5);
}

uint64_t sub_1000C38DC()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for RequesterInfoView();
  v0[10] = v3;
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  v0[11] = sub_1000C6224();
  v0[12] = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  v0[13] = v9;
  v0[14] = v8;

  return _swift_task_switch(sub_1000C39F4, v9, v8);
}

uint64_t sub_1000C39F4()
{
  v1 = *(v0 + 88);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1000C3A8C;

  return sub_10002B7C8(v2);
}

uint64_t sub_1000C3A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_1000C3BAC, v4, v3);
}

uint64_t sub_1000C3BAC()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[8];
  v4 = v0[9];

  return _swift_task_switch(sub_1000C3C18, v3, v4);
}

uint64_t sub_1000C3C18()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v7 = v6 + *(v1 + 32);
  sub_1000A36BC(v3);
  sub_1000C6B84();
  sub_1000C63C4();
  sub_1000C6B94();
  sub_100010F24(v3, &qword_100116A20, &qword_1000CCB90);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000C3D0C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  sub_1000C6A04();
  v7 = sub_1000C6884();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000500D8(v2, v4, v6 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11 & 1;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v7, v9, v11 & 1);

  sub_1000500D8(v7, v9, v11 & 1);
}

uint64_t sub_1000C3E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequesterInfoView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000C61C4();
  v8 = sub_1000C61F4();
  (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  sub_1000C45B4(a1, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1000C461C(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = sub_10000FEB8(&qword_100117CC0, &unk_1000CFC00);
  v12 = (a2 + v11[9]);
  *v12 = &unk_1000D6478;
  v12[1] = v10;
  v13 = (a2 + v11[10]);
  *v13 = sub_1000C43B8;
  v13[1] = 0;
  v14 = a2 + v11[11];
  v24[15] = 0;
  sub_1000C6AD4();
  v15 = v26;
  *v14 = v25;
  *(v14 + 8) = v15;
  v16 = a1 + *(v5 + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v19) = v25;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  result = sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  v23 = (a2 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_100050DD8;
  v23[2] = v21;
  return result;
}

uint64_t sub_1000C4128(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1000C63D4() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = sub_1000C6F14();
  v1[7] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v1[8] = v6;
  v1[9] = v5;

  return _swift_task_switch(sub_1000C422C, v6, v5);
}

uint64_t sub_1000C422C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for RequesterInfoView();
  v0[10] = v3;
  v4 = (v2 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  type metadata accessor for RequesterInfoViewModel();
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel);
  v0[11] = sub_1000C6224();
  v0[12] = sub_1000C6F04();
  v9 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000C4344, v9, v8);
}

uint64_t sub_1000C4344()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = *(v2 + 24);
  sub_10002D004(*(v2 + 32));

  v4 = v0[8];
  v5 = v0[9];

  return _swift_task_switch(sub_1000C4E4C, v4, v5);
}

__n128 sub_1000C43D0@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C65C4();
  a1(v7);
  *&v6[48] = *&v8[9];
  *&v6[39] = *v8;
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 17) = *v6;
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v6[48];
  return result;
}

uint64_t sub_1000C4468@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v2, v3, v5 & 1);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000C455C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C45B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequesterInfoView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C461C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequesterInfoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4680()
{
  v2 = *(type metadata accessor for RequesterInfoView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100017CBC;

  return sub_1000C4128(v0 + v3);
}

uint64_t sub_1000C474C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_1000C47D0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000C4860()
{
  v1 = type metadata accessor for RequesterInfoView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_100050264();
  v12 = *&v5[v1[6] + 8];

  v13 = v1[7];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000C6694();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v5[v13], 1, v14))
    {
      (*(v15 + 8))(&v5[v13], v14);
    }
  }

  else
  {
    v16 = *&v5[v13];
  }

  v17 = &v5[v1[8]];
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v17;

  if (EnumCaseMultiPayload == 1)
  {
    v20 = *(v17 + 1);

    v21 = *(sub_10000FEB8(&qword_100116A20, &qword_1000CCB90) + 32);
    v22 = sub_1000C63D4();
    (*(*(v22 - 8) + 8))(&v17[v21], v22);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C4AFC()
{
  v2 = *(type metadata accessor for RequesterInfoView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011080;

  return sub_1000C37D8(v0 + v3);
}

unint64_t sub_1000C4BD0()
{
  result = qword_100117D00;
  if (!qword_100117D00)
  {
    sub_100010624(&qword_100117CF0, &unk_1000D6550);
    sub_100050E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D00);
  }

  return result;
}

unint64_t sub_1000C4C5C()
{
  result = qword_100117D18;
  if (!qword_100117D18)
  {
    sub_100010624(&qword_100117CF8, &unk_1000CFD00);
    sub_100050F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D18);
  }

  return result;
}

unint64_t sub_1000C4CEC()
{
  result = qword_10011A3B0;
  if (!qword_10011A3B0)
  {
    sub_100010624(&qword_10011A3B8, &unk_1000D6570);
    sub_100010624(&qword_10011A350, &qword_1000D6410);
    sub_100010624(&qword_10011A360, &qword_1000D6428);
    sub_10001E490(&qword_10011A378, &qword_10011A360, &qword_1000D6428);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A3B0);
  }

  return result;
}

NSString sub_1000C4E50()
{
  result = sub_1000C6D44();
  qword_100120E98 = result;
  return result;
}

uint64_t sub_1000C50BC(uint64_t a1)
{
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v14 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    while (1)
    {
      sub_100038D8C(v8, v15);
      sub_100038D8C(v15, &v16);
      sub_1000C5878();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100010544(v15);
      v8 += 32;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    sub_1000C58C4(v15, &v16);
  }

  else
  {
LABEL_5:
    v16 = 0u;
    v17 = 0u;
  }

  v15[0] = v16;
  v15[1] = v17;
  if (*(&v17 + 1))
  {
    v9 = sub_1000C5D84();
    v10 = swift_dynamicCast();
    (*(*(v9 - 8) + 56))(v6, v10 ^ 1u, 1, v9);
  }

  else
  {
    sub_100010F24(v15, &qword_1001161F0, &unk_1000CB6A0);
    v11 = sub_1000C5D84();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity_urlToCopy;
  swift_beginAccess();
  sub_1000C58D4(v6, v1 + v12);
  return swift_endAccess();
}

id sub_1000C5320()
{
  v1 = v0;
  v2 = sub_1000C5F24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_1000C5D84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity_urlToCopy;
  swift_beginAccess();
  sub_10000FF70(v1 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100010F24(v10, &qword_100116260, &qword_1000CD940);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = [objc_opt_self() generalPasteboard];
    sub_1000C5D24(v18);
    v20 = v19;
    sub_1000C5EA4();
    sub_1000C5E44();
    (*(v3 + 8))(v6, v2);
    v21 = sub_1000C6D44();

    [v17 setValue:v20 forPasteboardType:v21];

    (*(v12 + 8))(v15, v11);
  }

  return [v1 activityDidFinish:1];
}

id sub_1000C56D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareCopyLinkActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShareCopyLinkActivity()
{
  result = qword_10011A3F0;
  if (!qword_10011A3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C5790()
{
  sub_1000C5820();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000C5820()
{
  if (!qword_10011A400)
  {
    sub_1000C5D84();
    v0 = sub_1000C71C4();
    if (!v1)
    {
      atomic_store(v0, &qword_10011A400);
    }
  }
}

unint64_t sub_1000C5878()
{
  result = qword_10011A408;
  if (!qword_10011A408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011A408);
  }

  return result;
}

_OWORD *sub_1000C58C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000C58D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100038D8C(i, v6);
    sub_1000C58C4(v6, &v5);
    sub_1000C5878();
    if (swift_dynamicCast())
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}