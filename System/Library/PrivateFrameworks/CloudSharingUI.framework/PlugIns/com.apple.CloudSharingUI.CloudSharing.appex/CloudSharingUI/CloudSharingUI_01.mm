uint64_t sub_1000216A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000216EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100021748()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000217A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100011080;

  return sub_100021164(v2, v3, v4, v5, v6);
}

id sub_100021868()
{
  v1 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  sub_100020D74(&v21 - v3);
  v5 = type metadata accessor for ComposeMailView(0);
  v6 = (v0 + *(v5 + 20));
  v7 = v6[1];
  v22 = *v6;
  v23 = v7;
  v8 = v6[3];
  v24 = v6[2];
  v25 = v8;
  sub_10000FEB8(&qword_100116A18, &qword_1000CCB88);
  sub_1000C6BB4();
  v9 = (v0 + *(v5 + 24));
  v10 = *v9;
  v11 = v9[1];
  v12 = type metadata accessor for ComposeMailView.Coordinator(0);
  v13 = objc_allocWithZone(v12);
  sub_100017574(v4, &v13[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator__presentation], &qword_100116A20, &qword_1000CCB90);
  v14 = &v13[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator__data];
  v15 = v29;
  v17 = v26;
  v16 = v27;
  *(v14 + 2) = v28;
  *(v14 + 3) = v15;
  *v14 = v17;
  *(v14 + 1) = v16;
  v18 = &v13[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator_callback];
  *v18 = v10;
  v18[1] = v11;
  sub_1000229B4(v10);
  v21.receiver = v13;
  v21.super_class = v12;
  v19 = objc_msgSendSuper2(&v21, "init");
  sub_100010F24(v4, &qword_100116A20, &qword_1000CCB90);
  return v19;
}

uint64_t sub_1000219E8()
{
  v1 = [objc_allocWithZone(MFMailComposeViewController) init];
  sub_10000FEB8(&unk_100116B00, &unk_1000CCD20);
  sub_1000C6754();
  [v1 setMailComposeDelegate:v22];

  v2 = (v0 + *(type metadata accessor for ComposeMailView(0) + 20));
  v23 = *v2;
  v27 = v2[1];
  v31 = v2[2];
  v35 = v2[3];
  sub_10000FEB8(&qword_100116A18, &qword_1000CCB88);
  sub_1000C6B84();

  v3 = sub_1000C6D44();

  v19 = v1;
  [v1 setSubject:v3];

  v24 = *v2;
  v28 = v2[1];
  v32 = v2[2];
  v36 = v2[3];
  sub_1000C6B84();

  if (v20)
  {
    v4.super.isa = sub_1000C6E84().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  [v1 setToRecipients:v4.super.isa];

  v25 = *v2;
  v29 = v2[1];
  v33 = v2[2];
  v37 = v2[3];
  sub_1000C6B84();

  v5 = sub_1000C6D44();

  [v1 setMessageBody:v5 isHTML:0];

  v26 = *v2;
  v30 = v2[1];
  v34 = v2[2];
  v38 = v2[3];
  sub_1000C6B84();

  if (!v21)
  {
    goto LABEL_10;
  }

  v18 = *(v21 + 16);
  if (!v18)
  {
LABEL_9:

LABEL_10:
    [v19 accessibilityElementDidLoseFocus];
    return v19;
  }

  v7 = 0;
  v8 = (v21 + 72);
  while (v7 < *(v21 + 16))
  {
    ++v7;
    v10 = *(v8 - 1);
    v9 = *v8;
    v12 = *(v8 - 3);
    v11 = *(v8 - 2);
    v14 = *(v8 - 5);
    v13 = *(v8 - 4);
    sub_100010190(v14, v13);

    isa = sub_1000C5D94().super.isa;
    v16 = sub_1000C6D44();
    v17 = sub_1000C6D44();
    [v19 addAttachmentData:isa mimeType:v16 fileName:v17];

    sub_100010128(v14, v13);

    v8 += 6;
    if (v18 == v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_100021D54@<X0>(void *a1@<X8>)
{
  result = sub_100021868();
  *a1 = result;
  return result;
}

uint64_t sub_100021DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100022970(&qword_100116AF0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100021E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100022970(&qword_100116AF0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100021ED4()
{
  sub_100022970(&qword_100116AF0);
  sub_1000C6724();
  __break(1u);
}

uint64_t sub_100021F1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100017CBC;

  return sub_1000BF198(v2, v3, v5);
}

uint64_t sub_100021FDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002201C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_1000BF280(a1, v4, v5, v7);
}

uint64_t sub_1000220E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000C63D4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = v2 + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator_callback;
  v16 = *(v2 + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator_callback);
  if (a2)
  {
    if (v16)
    {
      v17 = *(v15 + 8);
      swift_errorRetain();
      v16(a2, 1);
    }
  }

  else if (v16)
  {
    v18 = *(v15 + 8);
    v16(a1, 0);
  }

  sub_100017574(v3 + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator__presentation, v12, &qword_100116A20, &qword_1000CCB90);
  sub_1000C6BB4();
  sub_100010F24(v12, &qword_100116A20, &qword_1000CCB90);
  sub_1000C6B84();
  sub_1000C63C4();
  sub_1000C6B94();
  return sub_100010F24(v14, &qword_100116A20, &qword_1000CCB90);
}

uint64_t sub_1000222CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return _swift_task_switch(sub_1000222F0, 0, 0);
}

uint64_t sub_1000222F0()
{
  v1 = *(v0 + 328);
  v2 = (*(v0 + 344) + OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing15ComposeMailView11Coordinator__data);
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  sub_10000FEB8(&qword_100116A18, &qword_1000CCB88);
  sub_1000C6B84();
  v6 = *(v0 + 88);
  v30 = *(v0 + 80);
  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  if (v1)
  {
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v13 = *(v0 + 320);
    v14 = v2[3];
    v16 = *v2;
    v15 = v2[1];
    *(v0 + 176) = v2[2];
    *(v0 + 192) = v14;
    *(v0 + 144) = v16;
    *(v0 + 160) = v15;

    sub_1000C6B84();
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);

    v21 = *v2;
    v22 = v2[1];
    v23 = v2[3];
    *(v0 + 112) = v2[2];
    *(v0 + 128) = v23;
    *(v0 + 80) = v21;
    *(v0 + 96) = v22;
    v24 = *v2;
    v25 = v2[1];
    v26 = v2[3];
    *(v0 + 176) = v2[2];
    *(v0 + 192) = v26;
    *(v0 + 144) = v24;
    *(v0 + 160) = v25;
    *(v0 + 272) = v30;
    *(v0 + 280) = v6;
    *(v0 + 288) = v11;
    *(v0 + 296) = v13;
    *(v0 + 304) = v12;
    *(v0 + 312) = v20;

    sub_100017574(v0 + 80, v0 + 208, &qword_100116A18, &qword_1000CCB88);
    sub_1000C6B94();
    v27 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v27;
    v28 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v28;
    sub_100010F24(v0 + 16, &qword_100116A18, &qword_1000CCB88);
    v29 = *(v0 + 8);

    return v29(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000224B4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000224D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100022518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100022588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100022668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100022750(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022788()
{
  sub_1000228CC(319, &qword_100116A98, &qword_100116A20, &qword_1000CCB90, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10002287C();
    if (v1 <= 0x3F)
    {
      sub_1000228CC(319, &qword_100116AA8, &unk_100116AB0, &qword_1000CCC48, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002287C()
{
  if (!qword_100116AA0)
  {
    v0 = sub_1000C6BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_100116AA0);
    }
  }
}

void sub_1000228CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100010624(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100022970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeMailView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000229B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000229C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100022A44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100022A58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100022AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100022B08(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  switch(*(v1 + 40))
  {
    case 1:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v24 = swift_allocObject();
      *a1 = v24;
      v24[2] = v3;
      v24[3] = v2;
      v24[4] = v4;
      v24[5] = v5;
      v24[6] = v6;

      v25 = v4;
      result = 1;
      break;
    case 2:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v18 = swift_allocObject();
      *a1 = v18;
      v18[2] = v3;
      v18[3] = v2;
      v18[4] = v4;
      v18[5] = v5;
      v18[6] = v6;

      v19 = v4;
      result = 2;
      break;
    case 3:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v20 = swift_allocObject();
      *a1 = v20;
      v20[2] = v3;
      v20[3] = v2;
      v20[4] = v4;
      v20[5] = v5;
      v20[6] = v6;

      v21 = v4;
      result = 3;
      break;
    case 4:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v12 = swift_allocObject();
      *a1 = v12;
      v12[2] = v3;
      v12[3] = v2;
      v12[4] = v4;
      v12[5] = v5;
      v12[6] = v6;

      v13 = v4;
      result = 4;
      break;
    case 5:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v26 = swift_allocObject();
      *a1 = v26;
      v26[2] = v3;
      v26[3] = v2;
      v26[4] = v4;
      v26[5] = v5;
      v26[6] = v6;

      v27 = v4;
      result = 5;
      break;
    case 6:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v30 = swift_allocObject();
      *a1 = v30;
      v30[2] = v3;
      v30[3] = v2;
      v30[4] = v4;
      v30[5] = v5;
      v30[6] = v6;

      v31 = v4;
      result = 6;
      break;
    case 7:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v22 = swift_allocObject();
      *a1 = v22;
      v22[2] = v3;
      v22[3] = v2;
      v22[4] = v4;
      v22[5] = v5;
      v22[6] = v6;

      v23 = v4;
      result = 7;
      break;
    case 8:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v34 = swift_allocObject();
      *a1 = v34;
      v34[2] = v3;
      v34[3] = v2;
      v34[4] = v4;
      v34[5] = v5;
      v34[6] = v6;

      v35 = v4;
      result = 8;
      break;
    case 9:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v16 = swift_allocObject();
      *a1 = v16;
      v16[2] = v3;
      v16[3] = v2;
      v16[4] = v4;
      v16[5] = v5;
      v16[6] = v6;

      v17 = v4;
      result = 9;
      break;
    case 0xA:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1001083D0;
      v32 = swift_allocObject();
      *a1 = v32;
      v32[2] = v3;
      v32[3] = v2;
      v32[4] = v4;
      v32[5] = v5;
      v32[6] = v6;

      v33 = v4;
      result = 10;
      break;
    case 0xB:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v10 = swift_allocObject();
      *a1 = v10;
      v10[2] = v3;
      v10[3] = v2;
      v10[4] = v4;
      v10[5] = v5;
      v10[6] = v6;

      v11 = v4;
      result = 11;
      break;
    case 0xC:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v14 = swift_allocObject();
      *a1 = v14;
      v14[2] = v3;
      v14[3] = v2;
      v14[4] = v4;
      v14[5] = v5;
      v14[6] = v6;

      v15 = v4;
      result = 12;
      break;
    case 0xD:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v28 = swift_allocObject();
      *a1 = v28;
      v28[2] = v3;
      v28[3] = v2;
      v28[4] = v4;
      v28[5] = v5;
      v28[6] = v6;

      v29 = v4;
      result = 13;
      break;
    default:
      v37[0] = *v1;
      v37[1] = v2;
      v38 = v4;
      v39[0] = v5;
      v39[1] = v6;
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1001083A8;
      v8 = swift_allocObject();
      *a1 = v8;
      v8[2] = v3;
      v8[3] = v2;
      v8[4] = v4;
      v8[5] = v5;
      v8[6] = v6;
      sub_10002388C(v37, v36);
      sub_100017574(&v38, v36, &unk_100116B10, &unk_1000CD080);
      sub_100017574(v39, v36, &qword_100116310, &qword_1000CBBC0);
      result = 0;
      break;
  }

  return result;
}

void *sub_10002308C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1000230B4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1000230E4(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    type metadata accessor for CKError(0);
    v14 = v3;
    if (swift_dynamicCast())
    {
      sub_10002372C(&qword_100116450, type metadata accessor for CKError);
      sub_1000C5CA4();
    }

    return;
  }

  sub_10002372C(&qword_100116418, type metadata accessor for BRError);
  sub_1000C5CA4();
  if (v15 != 17)
  {

    goto LABEL_9;
  }

  v4 = v16;
  v5 = sub_1000C5CD4();

  v6 = [v5 underlyingErrors];
  v7 = sub_1000C6E94();

  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
LABEL_7:

      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v8 + 1;
    v11 = *(v7 + 8 * v8 + 32);
    swift_errorRetain();
    v12 = sub_1000C5CD4();
    v13 = sub_1000230E4(a1);

    v8 = v10;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10002335C(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  type metadata accessor for BRError(0);
  if (swift_dynamicCast())
  {
    sub_10002372C(&qword_100116418, type metadata accessor for BRError);
    sub_1000C5CA4();
    if (v30 == 17)
    {
      v4 = v31;
      v5 = sub_1000C5CD4();

      v6 = [v5 underlyingErrors];
      v7 = sub_1000C6E94();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v8 + 1;
        v11 = *(v7 + 8 * v8 + 32);
        swift_errorRetain();
        v12 = sub_1000C5CD4();
        v13 = sub_10002335C(a1);

        v8 = v10;
        if (v13)
        {
          break;
        }
      }

LABEL_15:

      return;
    }
  }

  type metadata accessor for CKError(0);
  v14 = v3;
  if (swift_dynamicCast())
  {
    sub_10002372C(&qword_100116450, type metadata accessor for CKError);
    sub_1000C5CA4();
    if (v30 == CKErrorCodeForUnderlyingErrorCode())
    {
      v4 = v31;
      v15 = sub_1000C5CD4();

      v16 = [v15 underlyingErrors];
      v17 = sub_1000C6E94();

      v18 = 0;
      v19 = *(v17 + 16);
      while (v19 != v18)
      {
        if (v18 >= *(v17 + 16))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v20 = v18 + 1;
        v21 = *(v17 + 8 * v18 + 32);
        swift_errorRetain();
        v22 = sub_1000C5CD4();
        v23 = sub_10002335C(a1);

        v18 = v20;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }
  }

  v24 = [v14 domain];
  v25 = sub_1000C6D84();
  v27 = v26;

  if (v25 == sub_1000C6D84() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1000C73A4();

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  [v14 code];
}

uint64_t sub_10002372C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100023774(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002379C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000237E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023844()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

Class sub_1000238FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100010778(0, &qword_100116760, NSObject_ptr);
    v5.super.isa = sub_1000C6CD4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100023998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1000305A8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_100117090, &qword_1000CD970);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100071DEC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100030120(&qword_100117090, &qword_1000CD970);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1000303E4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100023AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100023B60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_100023CB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100023D3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100023DBC(unsigned __int8 *a1, uint64_t a2, SEL *a3, const char *a4)
{
  v7 = sub_1000C5F74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = sub_1000077D8();
    if (v13)
    {
      [v13 *a3];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1000C5F54();
    v15 = sub_1000C5F64();
    v16 = sub_1000C6FD4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, a4, v17, 2u);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

void sub_100023F84(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if (!v1)
  {

    return;
  }

  v4 = v1;
  v5 = [v4 participants];
  sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
  v6 = sub_1000C6E94();

  v7 = sub_10003586C(v6);
  v8 = *(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);
  *(v3 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts) = v7;

  v9 = v4;
  v10 = sub_1000367BC(v6, v9);

  v41 = v9;

  if (v10[2])
  {
    v11 = sub_100071F58(0);
    if (v12)
    {
      v13 = *(v10[7] + 8 * v11);
    }
  }

  v44[0] = sub_100030F28(v14);
  sub_100037F18(v44, v3);

  v15 = v44[0];
  v16 = _swiftEmptyArrayStorage;
  if (v10[2])
  {
    v17 = sub_100071F58(1);
    if (v18)
    {
      v19 = *(v10[7] + 8 * v17);
    }
  }

  v44[0] = sub_100030F28(v20);
  sub_100037F18(v44, v3);

  v21 = v44[0];
  if (v44[0] < 0 || (v44[0] & 0x4000000000000000) != 0)
  {
    v22 = sub_1000C72F4();
    if (v22)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *(v44[0] + 16);
    if (v22)
    {
LABEL_13:
      v44[0] = _swiftEmptyArrayStorage;
      sub_1000C72A4();
      if (v22 < 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);

        __break(1u);
        return;
      }

      v23 = objc_opt_self();
      v24 = 0;
      v25 = v15;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = sub_1000C7254();
        }

        else
        {
          v26 = *(v21 + 8 * v24 + 32);
        }

        v27 = v26;
        ++v24;
        v28 = type metadata accessor for OneTimeLinkRowViewModel(0);
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        v31 = swift_allocObject();
        sub_1000C5E04();
        *(v31 + 16) = v27;
        *(v31 + 32) = 0;
        *(v31 + 24) = [v23 clearColor];
        sub_1000C7284();
        v32 = *(v44[0] + 16);
        sub_1000C72B4();
        sub_1000C72C4();
        sub_1000C7294();
      }

      while (v22 != v24);
      v15 = v25;

      v33 = v44[0];
      v16 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();
  v44[0] = v33;

  sub_1000C60A4();
  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  for (i = *(v15 + 16); i; i = sub_1000C72F4())
  {
    v44[0] = v16;
    sub_1000C72A4();
    if (i < 0)
    {
      goto LABEL_41;
    }

    v35 = 0;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v37 = sub_1000C7254();
      }

      else
      {
        if (v35 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v37 = *(v15 + 8 * v35 + 32);
      }

      v38 = v37;
      v42 = v37;
      sub_100024464(&v42, v41, &v43);

      v16 = v43;
      sub_1000C7284();
      v39 = *(v44[0] + 16);
      sub_1000C72B4();
      sub_1000C72C4();
      sub_1000C7294();
      ++v35;
      if (v36 == i)
      {

        v40 = v44[0];
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_38:
  swift_getKeyPath();
  swift_getKeyPath();
  v44[0] = v40;
  sub_1000C60A4();
}

void sub_100024464(id *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 permission] >= 4)
  {
    sub_1000C72E4();
    __break(1u);
  }

  else
  {
    v6 = [v5 userIdentity];
    v7 = [v6 lookupInfo];

    v49 = a2;
    if (v7 && (v8 = [v7 emailAddress], v7, v8))
    {
      v51 = sub_1000C6D84();
      v48 = v9;
    }

    else
    {
      v51 = 0;
      v48 = 0xE000000000000000;
    }

    v10 = [v5 userIdentity];
    v11 = [v10 lookupInfo];

    if (v11 && (v12 = [v11 phoneNumber], v11, v12))
    {
      v13 = sub_1000C6D84();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = [v5 userIdentity];
    v17 = [v16 userRecordID];

    if (v17)
    {
      v18 = [v17 recordName];

      v17 = sub_1000C6D84();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = sub_100024A04(v17, v20);

    v22 = sub_100024B78(v5, 1);
    v46 = sub_100024C5C();
    v23 = v13;
    v47 = sub_100024D0C(v5, v51, v48, v13, v15);
    v42 = v24;
    v25 = sub_100038064(v5, [v49 publicPermission], 0);
    v40 = v26;
    v41 = v25;
    v27 = sub_1000C7064();
    v38 = v28;
    v39 = v27;
    v29 = v21;
    [v5 role];
    v50 = v46;
    v30 = v22;
    v45 = sub_10003C6B8([v5 role]);
    v44 = [v5 isCurrentUser];
    v43 = [v5 isOrgAdminUser];
    v31 = type metadata accessor for PersonRowViewModel(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    v35 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel__selectedPermission;
    sub_10000FEB8(&qword_100117018, &qword_1000CD830);
    sub_1000C6054();
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_requesterApprovedOrDenied) = 0;
    v34[2] = v39;
    v34[3] = v38;
    v34[4] = v47;
    v34[5] = v42;
    v34[6] = v41;
    v34[7] = v40;
    v34[8] = 0;
    v34[9] = 0xE000000000000000;
    v34[10] = v29;
    v34[11] = v23;
    v34[12] = v15;
    v34[13] = v51;
    v34[14] = v48;
    swift_beginAccess();
    v36 = sub_10000FEB8(&unk_100117020, &qword_1000CD838);
    (*(*(v36 - 8) + 8))(v34 + v35, v36);
    sub_1000C6054();
    swift_endAccess();
    swift_beginAccess();
    sub_1000C6054();
    swift_endAccess();
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact) = v30;
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_existingContact) = v46;
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role) = v45;
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe) = v44;
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isOrgAdmin) = v43;
    *(v34 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isRequester) = 0;
    if ([v5 isCurrentUser])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();

      sub_1000C60A4();

      v37 = v50;
    }

    else
    {

      v37 = v29;
    }

    *a3 = v34;
  }
}

id sub_100024A04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (*(v13 + 16) && (v6 = sub_100071DEC(a1, a2), (v7 & 1) != 0))
    {
      v8 = *(*(v13 + 56) + 8 * v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 participantColor];
    if (!v9)
    {
      v9 = [objc_opt_self() clearColor];
    }

    v10 = v9;

    return v10;
  }

  else
  {
    v12 = [objc_opt_self() clearColor];

    return v12;
  }
}

id sub_100024B78(id a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);

  v7 = sub_1000C7064();
  if (!*(v5 + 16))
  {

    goto LABEL_6;
  }

  v9 = sub_100071DEC(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v13 = [a1 userIdentity];
    v12 = sub_100036B00(v13, a2 & 1);

    return v12;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  return v12;
}

id sub_100024C5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);

    v3 = sub_1000C7064();
    if (*(v1 + 16))
    {
      v5 = sub_100071DEC(v3, v4);
      v7 = v6;

      if (v7)
      {
        v8 = *(*(v1 + 56) + 8 * v5);

        return v8;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100024D0C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v42 = a4;
  v41 = a5;
  v43 = a2;
  v7 = sub_1000C5C54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  v16 = [a1 userIdentity];
  v17 = [v16 nameComponents];

  if (v17)
  {
    sub_1000C5C34();

    (*(v8 + 32))(v14, v12, v7);
    v18 = sub_1000C5C24();
    v19 = v15;
    v20 = [v15 stringFromPersonNameComponents:v18];

    v21 = sub_1000C6D84();
    v23 = v22;

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v19 = v15;
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    v25 = sub_100024B78(a1, 0);
    v26 = [objc_opt_self() stringFromContact:v25 style:0];
    if (v26)
    {
      v27 = v26;
      v21 = sub_1000C6D84();
      v23 = v28;
    }

    else
    {

      v21 = 0;
      v23 = 0xE000000000000000;
    }
  }

  v29 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v29 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    v30 = HIBYTE(a3) & 0xF;
    v31 = v43;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v30 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      goto LABEL_19;
    }

    a3 = v41;
    v31 = v42;
    v32 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v32 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
LABEL_19:

      v21 = v31;
      v23 = a3;
    }
  }

  if (![a1 isOrgAdminUser])
  {
    if ([a1 role] == 1)
    {
      v33 = [objc_opt_self() mainBundle];
      v40._countAndFlagsBits = 0x80000001000D8010;
      v34._countAndFlagsBits = 0x656E774F28204025;
      v34._object = 0xEA00000000002972;
      v35.value._countAndFlagsBits = 0;
      v35.value._object = 0;
      v36.super.isa = v33;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
LABEL_25:
      sub_1000C5B74(v34, v35, v36, v37, v40);

      sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000CB170;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_1000382F4();
      *(v38 + 32) = v21;
      *(v38 + 40) = v23;
      v21 = sub_1000C6D54();

      goto LABEL_26;
    }

    if ([a1 isCurrentUser])
    {
      v33 = [objc_opt_self() mainBundle];
      v40._countAndFlagsBits = 0x80000001000D7FF0;
      v34._countAndFlagsBits = 0x29654D28204025;
      v34._object = 0xE700000000000000;
      v35.value._countAndFlagsBits = 0;
      v35.value._object = 0;
      v36.super.isa = v33;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      goto LABEL_25;
    }
  }

LABEL_26:

  return v21;
}

uint64_t sub_10002517C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = a1;
    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1000C60A4();
  }

  return result;
}

void sub_10002527C(char a1, int a2, int a3, void *a4)
{
  LODWORD(v6) = a2;
  v8 = sub_1000C5F74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v39 = v8;
    sub_1000C5F54();
    v13 = a4;
    v14 = sub_1000C5F64();
    v15 = sub_1000C6FF4();
    v38 = v13;

    v37 = v15;
    v16 = os_log_type_enabled(v14, v15);
    v41 = a4;
    v40 = a3;
    if (v16)
    {
      v17 = v6;
      v6 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v6 = 136315906;
      v36 = v17;
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = 0x4D63696C6275702ELL;
        }

        else
        {
          v18 = 0x657461766972702ELL;
        }

        if (v17 == 1)
        {
          v19 = 0xEB0000000065646FLL;
        }

        else
        {
          v19 = 0xEC00000065646F4DLL;
        }
      }

      else
      {
        v19 = 0xE500000000000000;
        v18 = 0x656E6F6E2ELL;
      }

      v20 = sub_100071844(v18, v19, &v42);

      *(v6 + 4) = v20;
      *(v6 + 12) = 1024;
      v21 = a1 != 2 && (a1 & 1) != 0;
      v22 = v41;
      *(v6 + 14) = v21;
      *(v6 + 18) = 2080;
      if (v22)
      {
        v23 = [v38 allowsAccessRequests];
        v24 = v23 == 0;
        if (v23)
        {
          v25 = 1702195828;
        }

        else
        {
          v25 = 0x65736C6166;
        }

        if (v24)
        {
          v26 = 0xE500000000000000;
        }

        else
        {
          v26 = 0xE400000000000000;
        }
      }

      else
      {
        v26 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E75;
      }

      v27 = sub_100071844(v25, v26, &v42);

      *(v6 + 20) = v27;
      *(v6 + 28) = 1024;
      *(v6 + 30) = v40 & 1;
      _os_log_impl(&_mh_execute_header, v14, v37, "PeopleViewModel Combine3: sharingMode: %s, currentUserCanInvite: %{BOOL}d, ckShare.allowsAccessRequests: %s, isFolderSubshare: %{BOOL}d", v6, 0x22u);
      swift_arrayDestroy();

      (*(v9 + 8))(v12, v39);
      LOBYTE(v6) = v36;
    }

    else
    {

      (*(v9 + 8))(v12, v39);
    }

    v28 = 0;
    if (a1 != 2 && v6 == 2)
    {
      v28 = a1 & (v40 ^ 1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v42) = v28 & 1;

    sub_1000C60A4();
    if (v41)
    {
      v29 = v38;
      v30 = v29;
      if (v6 == 1)
      {
        v31 = 1;
      }

      else
      {
        v32 = [v29 participants];
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
        v33 = sub_1000C6E94();

        if (v33 >> 62)
        {
          v34 = sub_1000C72F4();
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = v34 > 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v42) = v31;
      sub_1000C60A4();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v42) = 0;
      sub_1000C60A4();
    }
  }
}

uint64_t sub_10002574C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_1000257E4(void **a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  sub_100010778(0, &qword_100116760, NSObject_ptr);
  if (sub_1000C7184())
  {
    goto LABEL_2;
  }

  v7 = [v4 isOrgAdminUser];
  if (v7 != [v5 isOrgAdminUser])
  {
    LOBYTE(v6) = [v4 isOrgAdminUser];
    return v6 & 1;
  }

  swift_beginAccess();
  v8 = *(*(a3 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v52)
  {
    v9 = a3;
    v10 = [v52 currentUserParticipant];
    if (v10)
    {
      v11 = v10;
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v12 = v4;
      v6 = sub_1000C7184();
    }

    else
    {

      v6 = 0;
    }

    a3 = v9;
  }

  else
  {

    v6 = 0;
  }

  v13 = *(*(a3 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v52)
  {
    v14 = [v52 currentUserParticipant];
    if (v14)
    {
      v15 = v14;
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v16 = v5;
      v17 = sub_1000C7184();

      if ((v6 ^ v17))
      {
        return v6 & 1;
      }
    }

    else
    {

      if (v6)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {

    if (v6)
    {
      goto LABEL_18;
    }
  }

  v6 = [v4 role] == 1;
  if (v6 == ([v5 role] != 1))
  {
    return v6 & 1;
  }

  v6 = [v4 acceptanceStatus] != 1;
  if (v6 == ([v5 acceptanceStatus] == 1))
  {
    return v6 & 1;
  }

  v18 = [v4 userIdentity];
  v19 = [v18 lookupInfo];

  if (v19)
  {
    v20 = [v19 phoneNumber];

    if (v20)
    {

      v21 = sub_100024C5C();
      if (!v21)
      {
        v22 = 1;
        goto LABEL_28;
      }
    }

    v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_28:
  v23 = [v5 userIdentity];
  v24 = [v23 lookupInfo];

  if (v24)
  {
    v25 = [v24 phoneNumber];

    if (v25)
    {

      v26 = sub_100024C5C();
      if (v26)
      {

        goto LABEL_32;
      }

      if (v22)
      {
        goto LABEL_33;
      }

LABEL_18:
      LOBYTE(v6) = 1;
      return v6 & 1;
    }
  }

LABEL_32:
  if (v22)
  {
LABEL_2:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

LABEL_33:
  v27 = [v4 userIdentity];
  v28 = [v27 lookupInfo];

  if (v28)
  {
    v29 = [v28 emailAddress];

    if (v29)
    {
      v28 = sub_1000C6D84();
      v31 = v30;

      goto LABEL_40;
    }

    v28 = 0;
  }

  v31 = 0xE000000000000000;
LABEL_40:
  v32 = [v4 userIdentity];
  v33 = [v32 lookupInfo];

  if (!v33)
  {
LABEL_44:
    v36 = 0xE000000000000000;
    goto LABEL_45;
  }

  v34 = [v33 phoneNumber];

  if (!v34)
  {
    v33 = 0;
    goto LABEL_44;
  }

  v33 = sub_1000C6D84();
  v36 = v35;

LABEL_45:
  v51 = sub_100024D0C(v4, v28, v31, v33, v36);

  v37 = [v5 userIdentity];
  v38 = [v37 lookupInfo];

  if (v38)
  {
    v39 = [v38 emailAddress];

    if (v39)
    {
      v38 = sub_1000C6D84();
      v41 = v40;
    }

    else
    {
      v38 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = &unk_100113000;
  }

  else
  {
    v41 = 0xE000000000000000;
    v42 = &unk_100113000;
  }

  v43 = [v5 userIdentity];
  v44 = [v43 lookupInfo];

  if (v44 && (v45 = [v44 v42[355]], v44, v45))
  {
    v46 = sub_1000C6D84();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  sub_100024D0C(v5, v38, v41, v46, v48);

  sub_1000383C8();
  v49 = sub_1000C71D4();

  LOBYTE(v6) = v49 == -1;
  return v6 & 1;
}

void *sub_100025EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(*(v2 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v16)
  {
    v5 = [v16 participants];
    sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
    v6 = sub_1000C6E94();

    if (v6 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C72F4())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_1000C7254();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (sub_1000C7064() == a1 && v12 == a2)
        {

          return v10;
        }

        v13 = sub_1000C73A4();

        if (v13)
        {

          return v10;
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return 0;
}

void sub_100026100(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(*(v2 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v21)
  {
    return;
  }

  v6 = [v21 requesters];
  sub_100010778(0, &unk_100118660, CKShareAccessRequester_ptr);
  v7 = sub_1000C6E94();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_23:

    return;
  }

LABEL_22:
  v8 = sub_1000C72F4();
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_1000C7254();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = [v10 userIdentity];
    v14 = [v13 userRecordID];

    if (!v14)
    {
      break;
    }

    v15 = [v14 recordName];

    v16 = sub_1000C6D84();
    v18 = v17;

    if (v16 == a1 && v18 == a2)
    {

      return;
    }

    v20 = sub_1000C73A4();

    if (v20)
    {

      return;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_100026394(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000C6F14();
  v2[8] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10002642C, v4, v3);
}

uint64_t sub_10002642C()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(*(v1 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v3 = v0[5];
  v0[11] = v3;
  if (v3)
  {
    v4 = *(v0[6] + 16);
    v5 = [objc_opt_self() mainBundle];
    v15._countAndFlagsBits = 0x80000001000D8050;
    v17._object = 0x80000001000D8030;
    v17._countAndFlagsBits = 0xD00000000000001BLL;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v6.super.isa = v5;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v7 = sub_1000C5B74(v17, v18, v6, v19, v15);
    v9 = v8;

    v0[12] = v9;
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_100026634;
    v11 = v0[7];

    return sub_1000267E0(v4, v3, 0, v7, v9);
  }

  else
  {
    v13 = v0[8];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100026634()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return _swift_task_switch(sub_100026778, v5, v4);
}

uint64_t sub_100026778()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000267E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 520) = v5;
  *(v6 + 504) = a4;
  *(v6 + 512) = a5;
  *(v6 + 188) = a3;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_1000C5C54();
  *(v6 + 528) = v7;
  v8 = *(v7 - 8);
  *(v6 + 536) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 544) = swift_task_alloc();
  v10 = sub_1000C5D84();
  *(v6 + 552) = v10;
  v11 = *(v10 - 8);
  *(v6 + 560) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  v13 = sub_1000C5F74();
  *(v6 + 584) = v13;
  v14 = *(v13 - 8);
  *(v6 + 592) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  v16 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  *(v6 + 680) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  v18 = *(*(sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50) - 8) + 64) + 15;
  *(v6 + 720) = swift_task_alloc();
  v19 = *(*(sub_10000FEB8(&qword_100116C80, &unk_1000CE870) - 8) + 64) + 15;
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  v20 = type metadata accessor for AlertViewModelButton(0);
  *(v6 + 744) = v20;
  v21 = *(v20 - 8);
  *(v6 + 752) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = sub_1000C6F14();
  *(v6 + 784) = sub_1000C6F04();
  v24 = sub_1000C6ED4();
  *(v6 + 792) = v24;
  *(v6 + 800) = v23;

  return _swift_task_switch(sub_100026B5C, v24, v23);
}

uint64_t sub_100026B5C()
{
  v156 = v0;
  v1 = [*(v0 + 496) participants];
  sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
  v2 = sub_1000C6E94();

  if (v2 >> 62)
  {
    v3 = sub_1000C72F4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 188);

  if (v4 == 1)
  {
    v5 = *(v0 + 784);
    v6 = *(v0 + 768);
    v7 = *(v0 + 760);
    v8 = *(v0 + 744);
    v139 = *(v0 + 752);
    v143 = *(v0 + 736);
    v147 = *(v0 + 728);
    v151 = *(v0 + 520);

    sub_1000C65D4();
    v128 = sub_1000C68C4();
    v10 = v9;
    v126 = v11;
    v13 = v12;
    v14 = v8[6];
    sub_1000C61C4();
    v15 = sub_1000C61F4();
    v132 = *(*(v15 - 8) + 56);
    v132(v6 + v14, 0, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v136 = v6;
    v17 = v6 + v8[5];
    *v17 = v128;
    *(v17 + 8) = v10;
    *(v17 + 16) = v126 & 1;
    *(v17 + 24) = v13;
    v18 = (v6 + v8[7]);
    *v18 = sub_100038EB8;
    v18[1] = v16;
    sub_1000C65D4();
    v19 = sub_1000C68C4();
    v21 = v20;
    LOBYTE(v13) = v22;
    v24 = v23;
    v25 = v8[6];
    sub_1000C61D4();
    v132(v7 + v25, 0, 1, v15);
    sub_1000C5DB4();
    v26 = v7 + v8[5];
    *v26 = v19;
    *(v26 + 8) = v21;
    *(v26 + 16) = v13 & 1;
    *(v26 + 24) = v24;
    v27 = (v7 + v8[7]);
    *v27 = 0;
    v27[1] = 0;
    v28 = sub_100029F5C();
    v129 = v29;
    v133 = v28;
    v30 = sub_10002A4F0();
    v32 = v31;
    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v33 = *(v139 + 72);
    v34 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000CC5C0;
    sub_100039C64(v136, v35 + v34, type metadata accessor for AlertViewModelButton);
    sub_100039C64(v7, v35 + v34 + v33, type metadata accessor for AlertViewModelButton);
    sub_1000C5DB4();
    v36 = type metadata accessor for AlertViewModel(0);
    v37 = (v143 + v36[5]);
    *v37 = v133;
    v37[1] = v129;
    v38 = (v143 + v36[6]);
    *v38 = v30;
    v38[1] = v32;
    *(v143 + v36[7]) = v35;
    (*(*(v36 - 1) + 56))(v143, 0, 1, v36);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100017574(v143, v147, &qword_100116C80, &unk_1000CE870);

    sub_1000C60A4();
    v39 = v136;
    sub_100010F24(v143, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 187) = 1;

LABEL_5:
    sub_1000C60A4();
    sub_100039644(v7, type metadata accessor for AlertViewModelButton);
    sub_100039644(v39, type metadata accessor for AlertViewModelButton);
    v40 = *(v0 + 768);
    v41 = *(v0 + 760);
    v42 = *(v0 + 736);
    v43 = *(v0 + 728);
    v44 = *(v0 + 720);
    v45 = *(v0 + 712);
    v46 = *(v0 + 704);
    v47 = *(v0 + 696);
    v48 = *(v0 + 688);
    v49 = *(v0 + 672);
    v121 = *(v0 + 664);
    v122 = *(v0 + 656);
    v123 = *(v0 + 648);
    v124 = *(v0 + 640);
    v127 = *(v0 + 632);
    v130 = *(v0 + 624);
    v134 = *(v0 + 616);
    v137 = *(v0 + 608);
    v140 = *(v0 + 600);
    v144 = *(v0 + 576);
    v148 = *(v0 + 568);
    v152 = *(v0 + 544);

    v50 = *(v0 + 8);

    return v50();
  }

  if (v3 <= 2 && ([*(v0 + 496) allowsAccessRequests] & 1) == 0)
  {
    v55 = *(v0 + 784);
    v39 = *(v0 + 768);
    v56 = *(v0 + 744);
    v153 = *(v0 + 728);
    v138 = *(v0 + 752);
    v141 = *(v0 + 520);
    v131 = *(v0 + 760);
    v135 = *(v0 + 512);
    v145 = *(v0 + 736);
    v149 = *(v0 + 504);

    sub_1000C65D4();
    v57 = sub_1000C68C4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = v56[6];
    sub_1000C61C4();
    v65 = sub_1000C61F4();
    v125 = *(*(v65 - 8) + 56);
    v125(v39 + v64, 0, 1, v65);
    v66 = swift_allocObject();
    swift_weakInit();
    sub_1000C5DB4();
    v67 = v39 + v56[5];
    *v67 = v57;
    *(v67 + 8) = v59;
    *(v67 + 16) = v61 & 1;
    *(v67 + 24) = v63;
    v68 = (v39 + v56[7]);
    *v68 = sub_100038CB4;
    v68[1] = v66;
    sub_1000C65D4();
    LOWORD(v120._object) = 256;
    v69 = sub_1000C68C4();
    v71 = v70;
    LOBYTE(v66) = v72;
    v74 = v73;
    v75 = v56[6];
    sub_1000C61D4();
    v76 = v131 + v75;
    v7 = v131;
    v125(v76, 0, 1, v65);
    sub_1000C5DB4();
    v77 = v131 + v56[5];
    *v77 = v69;
    *(v77 + 8) = v71;
    *(v77 + 16) = v66 & 1;
    *(v77 + 24) = v74;
    v78 = (v131 + v56[7]);
    *v78 = 0;
    v78[1] = 0;
    v79 = objc_opt_self();

    v80 = [v79 mainBundle];
    v120._countAndFlagsBits = 0xED00006567617373;
    v158._countAndFlagsBits = 0xD000000000000038;
    v158._object = 0x80000001000D8080;
    v159.value._countAndFlagsBits = 0;
    v159.value._object = 0;
    v81.super.isa = v80;
    v160._countAndFlagsBits = 0;
    v160._object = 0xE000000000000000;
    v82 = sub_1000C5B74(v158, v159, v81, v160, v120);
    v84 = v83;

    sub_10000FEB8(&qword_1001170B0, &qword_1000CF710);
    v85 = *(v138 + 72);
    v86 = (*(v138 + 80) + 32) & ~*(v138 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1000CC5C0;
    v88 = v87 + v86;
    sub_100039C64(v39, v88, type metadata accessor for AlertViewModelButton);
    sub_100039C64(v131, v88 + v85, type metadata accessor for AlertViewModelButton);
    sub_1000C5DB4();
    v89 = type metadata accessor for AlertViewModel(0);
    v90 = (v145 + v89[5]);
    *v90 = v149;
    v90[1] = v135;
    v91 = (v145 + v89[6]);
    *v91 = v82;
    v91[1] = v84;
    *(v145 + v89[7]) = v87;
    (*(*(v89 - 1) + 56))(v145, 0, 1, v89);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100017574(v145, v153, &qword_100116C80, &unk_1000CE870);

    sub_1000C60A4();
    sub_100010F24(v145, &qword_100116C80, &unk_1000CE870);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 185) = 1;

    goto LABEL_5;
  }

  v52 = *(v0 + 520);
  v53 = *(v0 + 488);
  swift_beginAccess();
  v54 = *(v52 + 16);

  sub_10005539C(v53);

  v92 = *(v0 + 776);
  v93 = *(v0 + 720);
  v94 = *(v0 + 712);
  v95 = *(v0 + 704);
  v96 = *(v0 + 672);
  v97 = *(v0 + 520);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 186) = 1;

  sub_1000C60A4();
  v98 = sub_1000C6F44();
  (*(*(v98 - 8) + 56))(v93, 1, 1, v98);

  v99 = sub_1000C6F04();
  v100 = swift_allocObject();
  v100[2] = v99;
  v100[3] = &protocol witness table for MainActor;
  v100[4] = v97;
  sub_1000B82F8(0, 0, v93, &unk_1000CDD68, v100);

  v101 = *(v52 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  sub_1000C5F54();
  sub_100017574(v94, v95, &qword_100116260, &qword_1000CD940);
  v102 = sub_1000C5F64();
  v103 = sub_1000C6FF4();
  v104 = os_log_type_enabled(v102, v103);
  v105 = *(v0 + 704);
  if (v104)
  {
    v106 = *(v0 + 696);
    v154 = v52;
    v107 = *(v0 + 680);
    v142 = *(v0 + 592);
    v146 = *(v0 + 584);
    v150 = *(v0 + 672);
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v155 = v109;
    *v108 = 136315138;
    sub_100017574(v105, v106, &qword_100116260, &qword_1000CD940);
    v110 = sub_1000C6D94();
    v112 = v111;
    sub_100010F24(v105, &qword_100116260, &qword_1000CD940);
    v113 = sub_100071844(v110, v112, &v155);
    v52 = v154;

    *(v108 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v102, v103, "askToRemoveFromMessagesConversation: Fetching sharing URL for file URL: %s", v108, 0xCu);
    sub_100010544(v109);

    v114 = *(v142 + 8);
    v114(v150, v146);
  }

  else
  {
    v115 = *(v0 + 672);
    v116 = *(v0 + 592);
    v117 = *(v0 + 584);

    sub_100010F24(v105, &qword_100116260, &qword_1000CD940);
    v114 = *(v116 + 8);
    v114(v115, v117);
  }

  *(v0 + 808) = v114;
  *(v0 + 816) = *(v52 + 16);

  v118 = swift_task_alloc();
  *(v0 + 824) = v118;
  *v118 = v0;
  v118[1] = sub_100027CB0;
  v119 = *(v0 + 712);

  return sub_100055638(v119);
}

uint64_t sub_100027CB0()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = v2[102];

  v6 = v2[100];
  v7 = v2[99];
  if (v0)
  {
    v8 = sub_1000291D0;
  }

  else
  {
    v8 = sub_100027E04;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100027E04()
{
  v135 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(*(*(v0 + 520) + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 784);
    v6 = *(v0 + 688);
    v7 = *(v0 + 624);

    sub_100010F24(v6, &qword_100116260, &qword_1000CD940);
    sub_1000C5F54();
    v8 = sub_1000C5F64();
    v9 = sub_1000C6FD4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 808);
    v12 = *(v0 + 712);
    v13 = *(v0 + 624);
    v14 = *(v0 + 592);
    v15 = *(v0 + 584);
    if (v10)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "askToRemoveFromMessagesConversation: model missing share url", v16, 2u);
    }

    v11(v13, v15);
LABEL_30:
    sub_100010F24(v12, &qword_100116260, &qword_1000CD940);
    v96 = *(v0 + 768);
    v97 = *(v0 + 760);
    v98 = *(v0 + 736);
    v99 = *(v0 + 728);
    v100 = *(v0 + 720);
    v101 = *(v0 + 712);
    v102 = *(v0 + 704);
    v103 = *(v0 + 696);
    v104 = *(v0 + 688);
    v105 = *(v0 + 672);
    v108 = *(v0 + 664);
    v109 = *(v0 + 656);
    v110 = *(v0 + 648);
    v111 = *(v0 + 640);
    v112 = *(v0 + 632);
    v113 = *(v0 + 624);
    v114 = *(v0 + 616);
    v117 = *(v0 + 608);
    v120 = *(v0 + 600);
    v124 = *(v0 + 576);
    v128 = *(v0 + 568);
    v133 = *(v0 + 544);

    v106 = *(v0 + 8);

    return v106();
  }

  v17 = *(v0 + 488);
  (*(*(v0 + 560) + 32))(*(v0 + 576), *(v0 + 688), *(v0 + 552));
  v18 = [v17 userIdentity];
  v19 = [v18 nameComponents];

  if (!v19)
  {
    v53 = *(v0 + 784);
    v54 = *(v0 + 632);

    sub_1000C5F54();
    v55 = sub_1000C5F64();
    v56 = sub_1000C6FD4();
    v57 = os_log_type_enabled(v55, v56);
    v130 = *(v0 + 808);
    v12 = *(v0 + 712);
    v58 = *(v0 + 632);
    v59 = *(v0 + 592);
    v60 = *(v0 + 584);
    v61 = *(v0 + 576);
    v62 = *(v0 + 560);
    v63 = *(v0 + 552);
    if (v57)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "askToRemoveFromMessagesConversation: participant missing name components", v64, 2u);
    }

    v130(v58, v60);
    (*(v62 + 8))(v61, v63);
    goto LABEL_30;
  }

  v20 = *(v0 + 544);
  sub_1000C5C34();

  v21 = objc_opt_self();
  v22 = sub_1000C5C24();
  v23 = [v21 localizedStringFromPersonNameComponents:v22 style:0 options:0];

  if (!v23)
  {
    sub_1000C6D84();
    v23 = sub_1000C6D44();
  }

  v24 = [*(v0 + 488) userIdentity];
  v25 = [v24 lookupInfo];
  *(v0 + 840) = v25;

  if (!v25)
  {
    v65 = *(v0 + 784);
    v66 = *(v0 + 640);

    sub_1000C5F54();
    v67 = sub_1000C5F64();
    v68 = sub_1000C6FD4();
    v69 = os_log_type_enabled(v67, v68);
    v12 = *(v0 + 712);
    v70 = *(v0 + 640);
    v71 = *(v0 + 592);
    v72 = *(v0 + 584);
    v73 = *(v0 + 576);
    v74 = *(v0 + 560);
    v126 = *(v0 + 808);
    v131 = *(v0 + 552);
    v75 = *(v0 + 536);
    v76 = *(v0 + 528);
    v118 = v76;
    v122 = *(v0 + 544);
    if (v69)
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "askToRemoveFromMessagesConversation: user identity missing lookup info", v77, 2u);
    }

    v126(v70, v72);
    (*(v75 + 8))(v122, v118);
    (*(v74 + 8))(v73, v131);
    goto LABEL_30;
  }

  v26 = [v25 emailAddress];
  if (!v26)
  {
    v27 = [v25 phoneNumber];
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_21:
    v78 = *(v0 + 784);
    v79 = *(v0 + 648);

    sub_1000C5F54();
    v80 = sub_1000C5F64();
    v81 = sub_1000C6FD4();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 808);
    v12 = *(v0 + 712);
    v84 = *(v0 + 592);
    v85 = *(v0 + 584);
    v86 = *(v0 + 576);
    v87 = *(v0 + 560);
    v127 = v83;
    v132 = *(v0 + 552);
    v123 = *(v0 + 544);
    v88 = *(v0 + 536);
    v116 = *(v0 + 648);
    v119 = *(v0 + 528);
    if (v82)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "askToRemoveFromMessagesConversation: lookup info missing email and phone number", v89, 2u);
    }

    v127(v116, v85);
    (*(v88 + 8))(v123, v119);
    (*(v87 + 8))(v86, v132);
    goto LABEL_30;
  }

  v27 = [v25 emailAddress];
  if (!v27)
  {
    goto LABEL_21;
  }

LABEL_11:
  v28 = *(v0 + 664);
  v29 = *(v0 + 576);
  v30 = *(v0 + 568);
  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v33 = v27;
  sub_1000C6D84();

  v34 = objc_allocWithZone(_SWPerson);
  v35 = sub_1000C6D44();

  *(v0 + 848) = [v34 initWithHandle:v35 identity:0 displayName:v23 thumbnailImageData:0];

  sub_1000C5F54();
  (*(v31 + 16))(v30, v29, v32);
  v36 = sub_1000C5F64();
  v37 = sub_1000C6FF4();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 808);
  v40 = *(v0 + 664);
  v41 = *(v0 + 592);
  v42 = *(v0 + 584);
  v43 = *(v0 + 568);
  v44 = *(v0 + 560);
  v45 = *(v0 + 552);
  if (v38)
  {
    v129 = *(v0 + 664);
    v46 = swift_slowAlloc();
    v125 = v42;
    v47 = swift_slowAlloc();
    v134 = v47;
    *v46 = 136315138;
    sub_100038E04();
    v121 = v39;
    v48 = sub_1000C7374();
    v50 = v49;
    v115 = v37;
    v51 = *(v44 + 8);
    v51(v43, v45);
    v52 = sub_100071844(v48, v50, &v134);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v36, v115, "askToRemoveFromMessagesConversation: Fetching highlight for %s", v46, 0xCu);
    sub_100010544(v47);

    v121(v129, v125);
  }

  else
  {

    v51 = *(v44 + 8);
    v51(v43, v45);
    v39(v40, v42);
  }

  *(v0 + 856) = v51;
  v90 = *(v0 + 576);
  v91 = *(v0 + 520);
  v92 = *(&v91->super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_highlightCenter);
  sub_1000C5D24(v91);
  v94 = v93;
  *(v0 + 864) = v93;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 472;
  *(v0 + 24) = sub_10002895C;
  v95 = swift_continuation_init();
  *(v0 + 136) = sub_10000FEB8(&unk_1001170B8, &qword_1000CDDB8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10002AE38;
  *(v0 + 104) = &unk_100108588;
  *(v0 + 112) = v95;
  [v92 getCollaborationHighlightForURL:v94 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10002895C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 872) = v3;
  v4 = *(v1 + 800);
  v5 = *(v1 + 792);
  if (v3)
  {
    v6 = sub_1000294FC;
  }

  else
  {
    v6 = sub_100028A8C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100028A8C()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[82];
  v4 = v0[59];
  v0[110] = v4;

  sub_1000C5F54();
  v5 = v2;
  v6 = v4;
  v7 = sub_1000C5F64();
  v8 = sub_1000C6FF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[106];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v6;
    *v11 = v9;
    v11[1] = v6;
    v12 = v9;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "askToRemoveFromMessagesConversation: Person: %@ Highlight: %@", v10, 0x16u);
    sub_10000FEB8(&qword_100117080, &unk_1000CC350);
    swift_arrayDestroy();
  }

  v14 = v0[101];
  v15 = v0[82];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[65];

  v14(v15, v17);
  v19 = *(v18 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[111] = Strong;
  if (Strong)
  {
    v21 = swift_task_alloc();
    v0[112] = v21;
    *v21 = v0;
    v21[1] = sub_100028E74;
    v22 = v0[106];

    return sub_10000D5C4(v22, v6);
  }

  else
  {
    v24 = v0[106];
    v25 = v0[105];
    v26 = v0[98];

    v27 = v0[107];
    v28 = v0[89];
    v29 = v0[72];
    v30 = v0[70];
    v31 = v0[69];
    (*(v0[67] + 8))(v0[68], v0[66]);
    v27(v29, v31);
    sub_100010F24(v28, &qword_100116260, &qword_1000CD940);
    v32 = v0[96];
    v33 = v0[95];
    v34 = v0[92];
    v35 = v0[91];
    v36 = v0[90];
    v37 = v0[89];
    v38 = v0[88];
    v39 = v0[87];
    v40 = v0[86];
    v41 = v0[84];
    v43 = v0[83];
    v44 = v0[82];
    v45 = v0[81];
    v46 = v0[80];
    v47 = v0[79];
    v48 = v0[78];
    v49 = v0[77];
    v50 = v0[76];
    v51 = v0[75];
    v52 = v0[72];
    v53 = v0[71];
    v54 = v0[68];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_100028E74()
{
  v1 = *v0;
  v2 = *(*v0 + 896);
  v3 = *(*v0 + 888);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 800);
  v5 = *(v1 + 792);

  return _swift_task_switch(sub_100028FB8, v5, v4);
}

uint64_t sub_100028FB8()
{
  v1 = v0[110];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[98];

  v5 = v0[107];
  v6 = v0[89];
  v7 = v0[72];
  v8 = v0[70];
  v9 = v0[69];
  (*(v0[67] + 8))(v0[68], v0[66]);
  v5(v7, v9);
  sub_100010F24(v6, &qword_100116260, &qword_1000CD940);
  v10 = v0[96];
  v11 = v0[95];
  v12 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[87];
  v18 = v0[86];
  v19 = v0[84];
  v22 = v0[83];
  v23 = v0[82];
  v24 = v0[81];
  v25 = v0[80];
  v26 = v0[79];
  v27 = v0[78];
  v28 = v0[77];
  v29 = v0[76];
  v30 = v0[75];
  v31 = v0[72];
  v32 = v0[71];
  v33 = v0[68];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000291D0()
{
  v45 = v0;
  v1 = v0[98];
  v2 = v0[89];

  sub_100010F24(v2, &qword_100116260, &qword_1000CD940);
  v3 = v0[104];
  v4 = v0[75];
  sub_1000C5F54();
  swift_errorRetain();
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FD4();

  if (os_log_type_enabled(v5, v6))
  {
    v40 = v0[75];
    v42 = v0[101];
    v7 = v0[74];
    v8 = v0[73];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136315138;
    v0[58] = v3;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v11 = sub_1000C6D94();
    v13 = sub_100071844(v11, v12, &v44);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "askToRemoveFromMessagesConversation: Unexpected error: %s", v9, 0xCu);
    sub_100010544(v10);

    v42(v40, v8);
  }

  else
  {
    v14 = v0[101];
    v15 = v0[75];
    v16 = v0[74];
    v17 = v0[73];

    v14(v15, v17);
  }

  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[88];
  v25 = v0[87];
  v26 = v0[86];
  v27 = v0[84];
  v30 = v0[83];
  v31 = v0[82];
  v32 = v0[81];
  v33 = v0[80];
  v34 = v0[79];
  v35 = v0[78];
  v36 = v0[77];
  v37 = v0[76];
  v38 = v0[75];
  v39 = v0[72];
  v41 = v0[71];
  v43 = v0[68];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000294FC()
{
  v56 = v0;
  v1 = v0[109];
  v47 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[98];
  v49 = v0[89];
  v52 = v0[108];
  v5 = v0[72];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[66];

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  v47(v5, v7);
  sub_100010F24(v49, &qword_100116260, &qword_1000CD940);

  v11 = v0[109];
  v12 = v0[75];
  sub_1000C5F54();
  swift_errorRetain();
  v13 = sub_1000C5F64();
  v14 = sub_1000C6FD4();

  if (os_log_type_enabled(v13, v14))
  {
    v50 = v0[75];
    v53 = v0[101];
    v15 = v0[74];
    v16 = v0[73];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v55 = v18;
    *v17 = 136315138;
    v0[58] = v11;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v19 = sub_1000C6D94();
    v21 = sub_100071844(v19, v20, &v55);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "askToRemoveFromMessagesConversation: Unexpected error: %s", v17, 0xCu);
    sub_100010544(v18);

    v53(v50, v16);
  }

  else
  {
    v22 = v0[101];
    v23 = v0[75];
    v24 = v0[74];
    v25 = v0[73];

    v22(v23, v25);
  }

  v26 = v0[96];
  v27 = v0[95];
  v28 = v0[92];
  v29 = v0[91];
  v30 = v0[90];
  v31 = v0[89];
  v32 = v0[88];
  v33 = v0[87];
  v34 = v0[86];
  v35 = v0[84];
  v38 = v0[83];
  v39 = v0[82];
  v40 = v0[81];
  v41 = v0[80];
  v42 = v0[79];
  v43 = v0[78];
  v44 = v0[77];
  v45 = v0[76];
  v46 = v0[75];
  v48 = v0[72];
  v51 = v0[71];
  v54 = v0[68];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1000298A4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_1000C6F14();
  v2[8] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v2[9] = v4;
  v2[10] = v3;

  return _swift_task_switch(sub_10002993C, v4, v3);
}

uint64_t sub_10002993C()
{
  v1 = v0[7];
  v2 = sub_100025EE0(*(v0[6] + 16), *(v0[6] + 24));
  v0[11] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[7];
    swift_beginAccess();
    v5 = *(*(v4 + 16) + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v6 = v0[5];
    v0[12] = v6;
    if (v6)
    {
      v7 = v0[6];
      v8 = v0[7];
      v9 = *(v7 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
      v10 = sub_100029CA8(v7);
      v12 = v11;
      v0[13] = v11;
      v13 = swift_task_alloc();
      v0[14] = v13;
      *v13 = v0;
      v13[1] = sub_100029AF8;
      v14 = v0[7];

      return sub_1000267E0(v3, v6, v9, v10, v12);
    }

    v17 = v0[8];
  }

  else
  {
    v16 = v0[8];
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100029AF8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return _swift_task_switch(sub_100029C3C, v5, v4);
}

uint64_t sub_100029C3C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100029CA8(void *a1)
{
  v1 = sub_10002D6D8(a1);
  v3 = v2;
  v4 = [objc_opt_self() mainBundle];
  v9._countAndFlagsBits = 0x80000001000D8050;
  v10._object = 0x80000001000D8E10;
  v10._countAndFlagsBits = 0x1000000000000010;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v5.super.isa = v4;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000C5B74(v10, v11, v5, v12, v9);

  sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000CB170;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000382F4();
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  v7 = sub_1000C6D54();

  return v7;
}

uint64_t sub_100029DDC()
{
  v0 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 16);
    v7 = sub_1000C6F44();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1000C6F14();
    swift_retain_n();

    v8 = sub_1000C6F04();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;
    v9[5] = v5;
    sub_1000B82F8(0, 0, v3, &unk_1000CDDE8, v9);
  }

  return result;
}

uint64_t sub_100029F5C()
{
  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CD0A0;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v56._countAndFlagsBits = 0x80000001000D8890;
  v67._countAndFlagsBits = 0xD00000000000003ELL;
  v67._object = 0x80000001000D8850;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v3.super.isa = v2;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v4 = sub_1000C5B74(v67, v77, v3, v87, v56);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v57._countAndFlagsBits = 0x80000001000D8900;
  v68._countAndFlagsBits = 0xD00000000000003ALL;
  v68._object = 0x80000001000D88C0;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v8.super.isa = v7;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v68, v78, v8, v88, v57);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v58._countAndFlagsBits = 0x80000001000D8980;
  v69._countAndFlagsBits = 0xD00000000000003FLL;
  v69._object = 0x80000001000D8940;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v13.super.isa = v12;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v69, v79, v13, v89, v58);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v59._countAndFlagsBits = 0x80000001000D8A10;
  v70._countAndFlagsBits = 0xD000000000000044;
  v70._object = 0x80000001000D89C0;
  v80.value._countAndFlagsBits = 0;
  v80.value._object = 0;
  v18.super.isa = v17;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v70, v80, v18, v90, v59);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v60._countAndFlagsBits = 0x80000001000D8AA0;
  v71._countAndFlagsBits = 0xD000000000000040;
  v71._object = 0x80000001000D8A50;
  v81.value._countAndFlagsBits = 0;
  v81.value._object = 0;
  v23.super.isa = v22;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v71, v81, v23, v91, v60);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v61._countAndFlagsBits = 0x80000001000D8900;
  v72._countAndFlagsBits = 0xD00000000000003ALL;
  v72._object = 0x80000001000D88C0;
  v82.value._countAndFlagsBits = 0;
  v82.value._object = 0;
  v28.super.isa = v27;
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v72, v82, v28, v92, v61);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v62._countAndFlagsBits = 0x80000001000D8B20;
  v73._countAndFlagsBits = 0xD00000000000003CLL;
  v73._object = 0x80000001000D8AE0;
  v83.value._countAndFlagsBits = 0;
  v83.value._object = 0;
  v33.super.isa = v32;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v73, v83, v33, v93, v62);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v63._countAndFlagsBits = 0x80000001000D8BA0;
  v74._countAndFlagsBits = 0xD00000000000003FLL;
  v74._object = 0x80000001000D8B60;
  v84.value._countAndFlagsBits = 0;
  v84.value._object = 0;
  v38.super.isa = v37;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v74, v84, v38, v94, v63);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v64._countAndFlagsBits = 0x80000001000D8C30;
  v75._countAndFlagsBits = 0xD000000000000040;
  v75._object = 0x80000001000D8BE0;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v43.super.isa = v42;
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v75, v85, v43, v95, v64);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 13;
  v47 = [v1 mainBundle];
  v76._countAndFlagsBits = 0xD000000000000029;
  v65._countAndFlagsBits = 0x80000001000D8CA0;
  v76._object = 0x80000001000D8C70;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v48.super.isa = v47;
  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v76, v86, v48, v96, v65);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  v52 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  swift_beginAccess();
  v53 = *(v66 + 16);

  v54 = sub_10003CC40(v52);

  return v54;
}

uint64_t sub_10002A4F0()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v82._countAndFlagsBits = 0xD00000000000001FLL;
  v66._countAndFlagsBits = 0x80000001000D8180;
  v82._object = 0x80000001000D8160;
  v93.value._countAndFlagsBits = 0;
  v93.value._object = 0;
  v4.super.isa = v3;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v5 = sub_1000C5B74(v82, v93, v4, v104, v66);
  v7 = v6;

  swift_beginAccess();
  v8 = *(*(v1 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v80)
  {
    v9 = v80;
    sub_1000C7154();
    v10 = sub_1000C7174();

    v79 = v1;
    if (v10 && (sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70), (swift_dynamicCast() & 1) != 0))
    {
      v11 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v11 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {

        v12 = [v2 mainBundle];
        v67._countAndFlagsBits = 0x80000001000D8810;
        v83._object = 0x80000001000D87E0;
        v83._countAndFlagsBits = 0x1000000000000023;
        v94.value._countAndFlagsBits = 0;
        v94.value._object = 0;
        v13.super.isa = v12;
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        sub_1000C5B74(v83, v94, v13, v105, v67);

        sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1000CB170;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_1000382F4();
        *(v14 + 32) = v80;
        *(v14 + 40) = v81;
        v68._object = sub_1000C6D54();
        v78 = v15;
      }

      else
      {
        v68._object = v5;
        v78 = v7;
      }
    }

    else
    {
      v68._object = v5;
      v78 = v7;
    }

    sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000CD0A0;
    *(inited + 32) = 7;
    v18 = [v2 mainBundle];
    v68._countAndFlagsBits = 0x80000001000D8240;
    v84._object = 0x80000001000D81E0;
    v84._countAndFlagsBits = 0xD000000000000056;
    v95.value._countAndFlagsBits = 0;
    v95.value._object = 0;
    v19.super.isa = v18;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v20 = sub_1000C5B74(v84, v95, v19, v106, v68);
    v22 = v21;

    *(inited + 40) = v20;
    *(inited + 48) = v22;
    *(inited + 56) = 8;
    v23 = [v2 mainBundle];
    v69._countAndFlagsBits = 0x80000001000D82F0;
    v85._countAndFlagsBits = 0xD00000000000006FLL;
    v85._object = 0x80000001000D8280;
    v96.value._countAndFlagsBits = 0;
    v96.value._object = 0;
    v24.super.isa = v23;
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    v25 = sub_1000C5B74(v85, v96, v24, v107, v69);
    v27 = v26;

    *(inited + 64) = v25;
    *(inited + 72) = v27;
    *(inited + 80) = 9;
    v28 = [v2 mainBundle];
    v70._countAndFlagsBits = 0x80000001000D8390;
    v86._object = 0x80000001000D8330;
    v86._countAndFlagsBits = 0xD000000000000056;
    v97.value._countAndFlagsBits = 0;
    v97.value._object = 0;
    v29.super.isa = v28;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v30 = sub_1000C5B74(v86, v97, v29, v108, v70);
    v32 = v31;

    *(inited + 88) = v30;
    *(inited + 96) = v32;
    *(inited + 104) = 10;
    v33 = [v2 mainBundle];
    v87._countAndFlagsBits = 0xD000000000000055;
    v71._countAndFlagsBits = 0x80000001000D8430;
    v87._object = 0x80000001000D83D0;
    v98.value._countAndFlagsBits = 0;
    v98.value._object = 0;
    v34.super.isa = v33;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    v35 = sub_1000C5B74(v87, v98, v34, v109, v71);
    v37 = v36;

    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 128) = 11;
    v38 = [v2 mainBundle];
    v72._countAndFlagsBits = 0x80000001000D84D0;
    v88._countAndFlagsBits = 0xD000000000000058;
    v88._object = 0x80000001000D8470;
    v99.value._countAndFlagsBits = 0;
    v99.value._object = 0;
    v39.super.isa = v38;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v40 = sub_1000C5B74(v88, v99, v39, v110, v72);
    v42 = v41;

    *(inited + 136) = v40;
    *(inited + 144) = v42;
    *(inited + 152) = 0;
    v43 = [v2 mainBundle];
    v73._countAndFlagsBits = 0x80000001000D8580;
    v89._countAndFlagsBits = 0xD00000000000006ALL;
    v89._object = 0x80000001000D8510;
    v100.value._countAndFlagsBits = 0;
    v100.value._object = 0;
    v44.super.isa = v43;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v45 = sub_1000C5B74(v89, v100, v44, v111, v73);
    v47 = v46;

    *(inited + 160) = v45;
    *(inited + 168) = v47;
    *(inited + 176) = 1;
    v48 = [v2 mainBundle];
    v74._countAndFlagsBits = 0x80000001000D8630;
    v90._countAndFlagsBits = 0xD00000000000006ELL;
    v90._object = 0x80000001000D85C0;
    v101.value._countAndFlagsBits = 0;
    v101.value._object = 0;
    v49.super.isa = v48;
    v112._countAndFlagsBits = 0;
    v112._object = 0xE000000000000000;
    v50 = sub_1000C5B74(v90, v101, v49, v112, v74);
    v52 = v51;

    *(inited + 184) = v50;
    *(inited + 192) = v52;
    *(inited + 200) = 2;
    v53 = [v2 mainBundle];
    v75._countAndFlagsBits = 0x80000001000D86E0;
    v91._countAndFlagsBits = 0xD000000000000074;
    v91._object = 0x80000001000D8660;
    v102.value._countAndFlagsBits = 0;
    v102.value._object = 0;
    v54.super.isa = v53;
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    v55 = sub_1000C5B74(v91, v102, v54, v113, v75);
    v57 = v56;

    *(inited + 208) = v55;
    *(inited + 216) = v57;
    *(inited + 224) = 3;
    v58 = [v2 mainBundle];
    v76._countAndFlagsBits = 0x80000001000D87A0;
    v92._countAndFlagsBits = 0xD000000000000076;
    v92._object = 0x80000001000D8720;
    v103.value._countAndFlagsBits = 0;
    v103.value._object = 0;
    v59.super.isa = v58;
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    v60 = sub_1000C5B74(v92, v103, v59, v114, v76);
    v62 = v61;

    *(inited + 232) = v60;
    *(inited + 240) = v62;
    *(inited + 248) = 13;
    *(inited + 256) = v77;
    *(inited + 264) = v78;
    v63 = sub_100078E3C(inited);
    swift_setDeallocating();
    sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
    swift_arrayDestroy();
    v64 = *(v79 + 16);

    v16 = sub_10003CC40(v63);
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t sub_10002ACA0()
{
  v0 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9[-v2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    v9[7] = 1;

    sub_1000C60A4();
    v6 = sub_1000C6F44();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1000C6F14();

    v7 = sub_1000C6F04();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_1000B82F8(0, 0, v3, &unk_1000CDDF0, v8);
  }

  return result;
}

uint64_t sub_10002AE38(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100011818((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void sub_10002AF10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  swift_beginAccess();
  v11 = *(*(v3 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v12 = v20;
  if (v20)
  {
    if ([v20 publicPermission] == 1)
    {
      v13 = v3;
      v14 = sub_100025EE0(a1, a2);
      if (v14)
      {
        v15 = v14;
        if ((3 - a3) == [v14 permission])
        {
          v16 = v15;
          v15 = v12;
          v12 = v16;
        }

        else
        {
          [v15 setPermission:?];
          if (a3 == 1)
          {
            [v15 setRole:3];
          }

          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v20) = 1;

          sub_1000C60A4();
          v17 = sub_1000C6F44();
          (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
          sub_1000C6F14();

          v18 = sub_1000C6F04();
          v19 = swift_allocObject();
          v19[2] = v18;
          v19[3] = &protocol witness table for MainActor;
          v19[4] = v13;
          sub_1000B82F8(0, 0, v10, &unk_1000CDE70, v19);
        }
      }
    }
  }
}

void sub_10002B19C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  swift_beginAccess();
  v11 = *(*(v3 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v12 = v21;
  if (v21)
  {
    if ([v21 publicPermission] != 1)
    {
      goto LABEL_13;
    }

    v13 = sub_100025EE0(a1, a2);
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = v13;
    if ([v13 role] == 1)
    {
      v15 = v14;
      v14 = v12;
      v12 = v15;
    }

    else if (((([v14 role] != 2) ^ a3) & 1) == 0)
    {
      if (a3)
      {
        if ([v14 permission] != 3)
        {
          goto LABEL_12;
        }

        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      [v14 setRole:v16];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v21) = 1;

      sub_1000C60A4();
      v17 = sub_1000C6F44();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      sub_1000C6F14();

      v18 = v3;
      v19 = sub_1000C6F04();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v18;
      sub_1000B82F8(0, 0, v10, &unk_1000CDE68, v20);
    }

LABEL_12:

LABEL_13:
  }
}

uint64_t sub_10002B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  v5[16] = sub_1000C6F14();
  v5[17] = sub_1000C6F04();
  v6 = swift_task_alloc();
  v5[18] = v6;
  *v6 = v5;
  v6[1] = sub_10002B504;

  return sub_100056B08();
}

uint64_t sub_10002B504()
{
  v2 = v0;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 152) = v2;

  v7 = sub_1000C6ED4();
  if (v2)
  {
    v8 = sub_10002B6C4;
  }

  else
  {
    v8 = sub_10002B660;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10002B660()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002B6C4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  *(v0 + 112) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);

    v5 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    *(v0 + 41) = *(v0 + 89);
    sub_100038450(v0 + 16);
    sub_100038C28(v0 + 16);
    v6 = *(v0 + 112);

    v7 = *(v0 + 8);
  }

  else
  {
    v8 = *(v0 + 112);

    v7 = *(v0 + 8);
    v9 = *(v0 + 152);
  }

  return v7();
}

uint64_t sub_10002B7C8(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = *(*(sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v4 = type metadata accessor for SPIAnalyticsEvent();
  v2[52] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = sub_1000C5F74();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = sub_1000C6F14();
  v2[63] = sub_1000C6F04();
  v10 = sub_1000C6ED4();
  v2[64] = v10;
  v2[65] = v9;

  return _swift_task_switch(sub_10002B968, v10, v9);
}

uint64_t sub_10002B968()
{
  v66 = v0;
  v1 = *(v0 + 488);
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 488);
  v6 = *(v0 + 432);
  v7 = *(v0 + 440);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v64);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_100010544(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 528) = v10;
  v11 = *(v0 + 392);
  v12 = *(v0 + 400);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  sub_100026100(v13, v14);
  *(v0 + 536) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 392);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v19 = 3;
    if (*(v0 + 57) > 1u)
    {
      if (*(v0 + 57) != 2)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else if (*(v0 + 57))
    {
      v19 = 2;
    }

    v30 = *(v0 + 480);
    sub_1000C5F54();
    v31 = v16;
    v32 = sub_1000C5F64();
    v33 = sub_1000C6FB4();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 480);
    v37 = *(v0 + 432);
    v36 = *(v0 + 440);
    if (v34)
    {
      v63 = *(v0 + 480);
      v38 = swift_slowAlloc();
      v39 = v19;
      v40 = swift_slowAlloc();
      v62 = v37;
      v41 = swift_slowAlloc();
      v64 = v41;
      *v38 = 136446722;
      *(v38 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v64);
      *(v38 + 12) = 2112;
      *(v38 + 14) = v31;
      *v40 = v16;
      *(v38 + 22) = 2050;
      *(v38 + 24) = v39;
      v42 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s Approving requester %@ with permission: %{public}ld", v38, 0x20u);
      sub_100010F24(v40, &qword_100117080, &unk_1000CC350);

      sub_100010544(v41);

      v43 = v63;
      v44 = v62;
    }

    else
    {

      v43 = v35;
      v44 = v37;
    }

    v10(v43, v44);
    v46 = *(v0 + 392);
    v45 = *(v0 + 400);
    swift_beginAccess();
    *(v0 + 544) = *(v45 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v47 = 3;
    if (*(v0 + 58) <= 1u)
    {
      if (*(v0 + 58))
      {
        v47 = 2;
      }

      goto LABEL_17;
    }

    if (*(v0 + 58) == 2)
    {
LABEL_17:
      v48 = swift_task_alloc();
      *(v0 + 552) = v48;
      *v48 = v0;
      v48[1] = sub_10002C078;

      return sub_1000579C0(v31, v47);
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 504);
  v21 = *(v0 + 464);
  v22 = *(v0 + 392);

  sub_1000C5F54();

  v23 = sub_1000C5F64();
  v24 = sub_1000C6FD4();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 464);
  v28 = *(v0 + 432);
  v27 = *(v0 + 440);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v29 = 136446466;
    *(v29 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v64);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_100071844(v13, v14, &v64);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s No CKRequester for rowViewModel.id %s, will do nothing.", v29, 0x16u);
    swift_arrayDestroy();
  }

  v10(v26, v28);
  v50 = *(v0 + 416);
  v49 = *(v0 + 424);
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1000C7244(55);
  v68._countAndFlagsBits = 0xD000000000000023;
  v68._object = 0x80000001000D8D90;
  sub_1000C6E04(v68);
  v69._countAndFlagsBits = v13;
  v69._object = v14;
  sub_1000C6E04(v69);
  v70._countAndFlagsBits = 0xD000000000000012;
  v70._object = 0x80000001000D8DC0;
  sub_1000C6E04(v70);
  v51 = v64;
  v52 = v65;
  *v49 = xmmword_1000CD0B0;
  *(v49 + 16) = 0x80000001000D8D70;
  *(v49 + 24) = 0;
  *(v49 + 32) = v51;
  *(v49 + 40) = v52;
  *(v49 + 48) = 11;
  swift_storeEnumTagMultiPayload();
  sub_1000391B4(v49);
  sub_100039644(v49, type metadata accessor for SPIAnalyticsEvent);
  sub_10002CE6C();
  v54 = *(v0 + 480);
  v53 = *(v0 + 488);
  v56 = *(v0 + 464);
  v55 = *(v0 + 472);
  v58 = *(v0 + 448);
  v57 = *(v0 + 456);
  v59 = *(v0 + 424);
  v60 = *(v0 + 408);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_10002C078()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v9 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = v2[65];
    v5 = v2[64];
    v6 = sub_10002C5DC;
  }

  else
  {
    v7 = v2[68];

    v4 = v2[65];
    v5 = v2[64];
    v6 = sub_10002C19C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10002C19C()
{
  v42 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 472);

  sub_1000C5F54();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FB4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 528);
  v7 = *(v0 + 472);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v41);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Successfully approved requester.", v10, 0xCu);
    sub_100010544(v11);
  }

  v6(v7, v8);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  v14 = *(*(*(v0 + 400) + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  *v12 = *(v0 + 384);
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0;
  *(v12 + 48) = -1;
  swift_storeEnumTagMultiPayload();
  sub_1000391B4(v12);
  sub_100039644(v12, type metadata accessor for SPIAnalyticsEvent);
  v15 = *(v0 + 560);
  v16 = *(v0 + 496);
  v17 = *(v0 + 400);
  v18 = *(v0 + 408);
  v19 = *(v0 + 392);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  v20 = sub_1000C6F44();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);

  v21 = sub_1000C6F04();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v17;
  sub_1000B82F8(0, 0, v18, &unk_1000CDE58, v22);

  swift_getKeyPath();
  swift_getKeyPath();

  v23 = sub_1000C6084();
  v25 = v24;
  v26 = sub_100039990(v24, v19);

  v28 = *v25;
  if (*v25 >> 62)
  {
    if (v28 < 0)
    {
      v40 = *v25;
    }

    result = sub_1000C72F4();
    v29 = result;
    if (result >= v26)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 < v26)
  {
    goto LABEL_11;
  }

LABEL_5:
  v30 = *(v0 + 536);
  sub_1000397A4(v26, v29);
  v23(v0 + 304, 0);

  sub_10002CE6C();
  v32 = *(v0 + 480);
  v31 = *(v0 + 488);
  v34 = *(v0 + 464);
  v33 = *(v0 + 472);
  v36 = *(v0 + 448);
  v35 = *(v0 + 456);
  v37 = *(v0 + 424);
  v38 = *(v0 + 408);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10002C5DC()
{
  v80 = v0;
  v1 = v0 + 304;
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 504);

  *(v0 + 360) = v2;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 560);
    v6 = *(v0 + 456);

    v7 = *(v0 + 128);
    v76 = *(v0 + 112);
    *(v0 + 64) = v76;
    *(v0 + 80) = v7;
    *(v0 + 89) = *(v0 + 137);
    v73 = *(v0 + 128);
    v8 = *(v0 + 144);
    v74 = *(v0 + 152);
    sub_1000C5F54();
    sub_100038E5C(v0 + 64, v0 + 160);
    v9 = sub_1000C5F64();
    v10 = sub_1000C6FD4();
    sub_100038C28(v0 + 64);
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 528);
    v13 = *(v0 + 456);
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    if (v11)
    {
      v72 = *(v0 + 456);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v79[0] = v18;
      *v16 = 136446466;
      *(v16 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, v79);
      *(v16 + 12) = 2112;
      sub_1000100B0();
      swift_allocError();
      v19 = *(v0 + 89);
      v20 = *(v0 + 80);
      *v21 = *(v0 + 64);
      v21[1] = v20;
      *(v21 + 25) = v19;
      sub_100038E5C(v0 + 64, v0 + 256);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s SharingError occurred while approving share: %@", v16, 0x16u);
      sub_100010F24(v17, &qword_100117080, &unk_1000CC350);
      v1 = v0 + 304;

      sub_100010544(v18);

      v12(v72, v15);
    }

    else
    {

      v12(v13, v15);
    }

    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(*(*(v0 + 400) + 16) + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    *v35 = *(v0 + 376);
    *(v35 + 24) = v73;
    *(v35 + 8) = v76;
    *(v35 + 40) = v8;
    *(v35 + 48) = v74;
    swift_storeEnumTagMultiPayload();
    sub_100038E5C(v0 + 64, v0 + 208);
    sub_1000391B4(v35);
    sub_100039644(v35, type metadata accessor for SPIAnalyticsEvent);
    sub_100038450(v0 + 64);
    sub_100038C28(v0 + 64);
    v38 = *(v0 + 360);
  }

  else
  {
    v23 = *(v0 + 560);
    v24 = *(v0 + 448);
    v25 = *(v0 + 360);

    sub_1000C5F54();
    swift_errorRetain();
    v26 = sub_1000C5F64();
    v27 = sub_1000C6FD4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 560);
      v77 = *(v0 + 528);
      v29 = *(v0 + 440);
      v75 = *(v0 + 448);
      v30 = *(v0 + 432);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v79[0] = v33;
      *v31 = 136446466;
      *(v31 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, v79);
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s Unexpected error occurred approving share: %@", v31, 0x16u);
      sub_100010F24(v32, &qword_100117080, &unk_1000CC350);

      sub_100010544(v33);

      v77(v75, v30);
    }

    else
    {
      v39 = *(v0 + 528);
      v41 = *(v0 + 440);
      v40 = *(v0 + 448);
      v42 = *(v0 + 432);

      v39(v40, v42);
    }

    v78 = *(v0 + 560);
    v44 = *(v0 + 416);
    v43 = *(v0 + 424);
    v45 = *(v0 + 400);
    *(v0 + 16) = 0xD00000000000001BLL;
    *(v0 + 24) = 0x80000001000D8D70;
    *(v0 + 32) = xmmword_1000CD090;
    *(v0 + 48) = 0x80000001000D8DE0;
    *(v0 + 56) = 11;
    v46 = *(*(v45 + 16) + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    *v43 = *(v0 + 368);
    *(v43 + 8) = 0xD00000000000001BLL;
    *(v43 + 16) = 0x80000001000D8D70;
    *(v43 + 24) = xmmword_1000CD090;
    *(v43 + 40) = 0x80000001000D8DE0;
    *(v43 + 48) = 11;
    swift_storeEnumTagMultiPayload();
    sub_1000391B4(v43);
    sub_100039644(v43, type metadata accessor for SPIAnalyticsEvent);
    sub_100038450(v0 + 16);

    v1 = v0 + 304;
  }

  v47 = *(v0 + 496);
  v48 = *(v0 + 400);
  v49 = *(v0 + 408);
  v50 = *(v0 + 392);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  v51 = sub_1000C6F44();
  (*(*(v51 - 8) + 56))(v49, 1, 1, v51);

  v52 = sub_1000C6F04();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = &protocol witness table for MainActor;
  v53[4] = v48;
  sub_1000B82F8(0, 0, v49, &unk_1000CDE58, v53);

  swift_getKeyPath();
  swift_getKeyPath();

  v54 = sub_1000C6084();
  v56 = v55;
  v57 = sub_100039990(v55, v50);

  v59 = *v56;
  if (*v56 >> 62)
  {
    if (v59 < 0)
    {
      v71 = *v56;
    }

    result = sub_1000C72F4();
    v60 = result;
    if (result >= v57)
    {
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v60 < v57)
  {
    goto LABEL_18;
  }

LABEL_12:
  v61 = *(v0 + 536);
  sub_1000397A4(v57, v60);
  v54(v1, 0);

  sub_10002CE6C();
  v63 = *(v0 + 480);
  v62 = *(v0 + 488);
  v65 = *(v0 + 464);
  v64 = *(v0 + 472);
  v67 = *(v0 + 448);
  v66 = *(v0 + 456);
  v68 = *(v0 + 424);
  v69 = *(v0 + 408);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_10002CE6C()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FB4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100071844(0xD00000000000001BLL, 0x80000001000D8D70, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Finish", v7, 0xCu);
    sub_100010544(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10002D004(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28[-v6];
  v8 = type metadata accessor for SPIAnalyticsEvent();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100026100(*(a1 + 16), *(a1 + 24));
  if (!v12)
  {
    *v11 = xmmword_1000CD0D0;
    *(v11 + 2) = 0x80000001000D8CD0;
    *(v11 + 24) = xmmword_1000CD0C0;
    *(v11 + 5) = 0x80000001000D8CF0;
    v11[48] = 11;
    swift_storeEnumTagMultiPayload();
    sub_1000391B4(v11);
    return sub_100039644(v11, type metadata accessor for SPIAnalyticsEvent);
  }

  v13 = v12;
  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = *(v2 + 16);

  sub_100058580(v13);

  v16 = *(*(v2 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  *v11 = v30;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 5) = 0;
  v11[48] = -1;
  swift_storeEnumTagMultiPayload();
  sub_1000391B4(v11);
  sub_100039644(v11, type metadata accessor for SPIAnalyticsEvent);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v29) = 1;

  sub_1000C60A4();
  v17 = sub_1000C6F44();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_1000C6F14();

  v18 = sub_1000C6F04();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v2;
  sub_1000B82F8(0, 0, v7, &unk_1000CDDF8, v19);

  swift_getKeyPath();
  swift_getKeyPath();

  v20 = sub_1000C6084();
  v22 = v21;
  v23 = sub_100039990(v21, a1);

  v25 = *v22;
  if (*v22 >> 62)
  {
    if (v25 < 0)
    {
      v27 = *v22;
    }

    result = sub_1000C72F4();
    v26 = result;
    if (result >= v23)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= v23)
    {
LABEL_6:
      sub_1000397A4(v23, v26);
      v20(&v29, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D6D8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(*(v1 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v19)
  {
    return 0;
  }

  v5 = sub_10003907C(a1);
  v6 = [v19 currentUserParticipant];
  if (v6)
  {
    v7 = sub_1000C7064();
    v9 = v8;

    if (v7 == a1[2] && v9 == a1[3])
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = sub_1000C73A4();
    }
  }

  v11 = *(*(v2 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v19 == 1 && (v6 & 1) == 0)
  {
    v12 = [objc_allocWithZone(CNContactFormatter) init];
    v13 = [v12 stringFromContact:*(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact)];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1000C6D84();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        return v15;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_10002D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_1000C6F14();
  v4[19] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_10002D9C0, v6, v5);
}

uint64_t sub_10002D9C0()
{
  v1 = v0[18];
  swift_beginAccess();
  v0[22] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10002DA7C;

  return sub_100052EEC(1);
}

uint64_t sub_10002DA7C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_100039E0C;
  }

  else
  {
    v7 = v2[22];

    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_100039DF4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10002DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_1000C6F14();
  v4[19] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_10002DC30, v6, v5);
}

uint64_t sub_10002DC30()
{
  v1 = v0[18];
  swift_beginAccess();
  v0[22] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10002DCE8;

  return sub_100056B08();
}

uint64_t sub_10002DCE8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_10002DEB4;
  }

  else
  {
    v7 = v2[22];

    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_10002DE04;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10002DE04()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 58) = 0;

  sub_1000C60A4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002DEB4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);

  *(v0 + 136) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 144);

    v6 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v6;
    *(v0 + 41) = *(v0 + 89);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 0;

    sub_1000C60A4();
    sub_100038450(v0 + 16);
    sub_100038C28(v0 + 16);
    v7 = *(v0 + 136);

    v8 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 136);

    v8 = *(v0 + 8);
    v10 = *(v0 + 192);
  }

  return v8();
}

void *sub_10002E018()
{
  v1 = sub_1000C5F74();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  v3 = __chkstk_darwin(v1);
  v4 = __chkstk_darwin(v3);
  v6 = &v51 - v5;
  __chkstk_darwin(v4);
  v52 = &v51 - v7;
  v8 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v12 = sub_1000C5D84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v20 = *(v13 + 32);
    v20(v16, v11, v12);
    sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000CB170;
    *(v21 + 56) = v12;
    v22 = sub_100039C00((v21 + 32));
    v20(v22, v16, v12);
    return v21;
  }

  sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
  v18 = v0;
  v19 = *(v0 + 16);

  v23 = sub_10003AB60();

  v24 = [objc_allocWithZone(NSItemProvider) init];
  v25 = *(*(v18 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v26 = v55[0];
  if (v55[0])
  {
    v27 = *(v18 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v55[0])
    {
      v28 = v52;
      if ((v55[0] & 2) == 0)
      {
        v33 = v55[0] & 4;
        if ((v55[0] & 4) != 0)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v29 = 1;
        if ((v55[0] & 8) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v29 = 3;
    }

    else
    {
      v28 = v52;
      if ((v55[0] & 2) != 0)
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }
    }

    v33 = v55[0] & 4;
    if ((v55[0] & 4) != 0)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    if ((v55[0] & 8) == 0)
    {
LABEL_23:
      v34 = v33 >> 2;
    }

LABEL_24:
    v35 = [objc_allocWithZone(CKAllowedSharingOptions) initWithAllowedParticipantPermissionOptions:v34 allowedParticipantAccessOptions:v29];
    sub_1000C5F54();
    v36 = v35;
    v37 = sub_1000C5F64();
    v38 = sub_1000C6FF4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = v24;
      v40 = v39;
      v55[0] = swift_slowAlloc();
      *v40 = 136315394;
      v41 = sub_10008BAB0();
      v43 = sub_100071844(v41, v42, v55);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = sub_10008BBE8();
      v46 = sub_100071844(v44, v45, v55);

      *(v40 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "itemsToShareForAddPeople creating item provider options-- access: %s, permission: %s", v40, 0x16u);
      swift_arrayDestroy();

      v24 = v52;
    }

    (*(v53 + 8))(v28, v54);
    v47.super.super.isa = v26;
    v48.super.isa = v23;
    v49.super.isa = v36;
    sub_1000C7004(v47, v48, v49);
    sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000CB170;
    *(v21 + 56) = sub_100010778(0, &qword_100117098, NSItemProvider_ptr);
    *(v21 + 32) = v24;

    return v21;
  }

  sub_1000C5F54();
  v30 = sub_1000C5F64();
  v31 = sub_1000C6FD4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "itemsToShareForAddPeople: ckShare is nil for CloudKit share", v32, 2u);
  }

  (*(v53 + 8))(v6, v54);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10002E7F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__requesters;
  v4 = sub_10000FEB8(&qword_100116E10, &qword_1000CD1E0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__participants, v4);
  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__oneTimeLinkParticipants;
  v7 = sub_10000FEB8(&qword_100116E18, &qword_1000CD1E8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__currentUser;
  v9 = sub_10000FEB8(&unk_100116E20, &unk_1000CD1F0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChanges;
  v11 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlerts, v11);
  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlertsOptions;
  v14 = sub_10000FEB8(&unk_100116E30, &unk_1000CD200);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v15(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChangesOptions, v14);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlert;
  v17 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlertBool, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowLoading, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowFolderShareHeader, v11);
  v18 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__sectionTitleForAuxiliaryToggles;
  v19 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v20 = *(*(v19 - 8) + 8);
  v20(v0 + v18, v19);
  v20(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleTitle, v19);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleState, v11);
  v20(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleTitle, v19);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleState, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowAddPeople, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowOpenRootSharedFolder, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowCopyLink, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowStopSharing, v11);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowPermissionAndRemovalSectionInMenu, v11);
  v21 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__itemThumbnail;
  v22 = sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v20(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__itemTitle, v19);
  v12(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__savingInProgress, v11);
  v23 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_permissionLocalizedStrings);

  v24 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts);

  v25 = *(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContactsForUserIdentity);

  return v0;
}

uint64_t sub_10002ECC4()
{
  sub_10002E7F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleViewModel()
{
  result = qword_100116C28;
  if (!qword_100116C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002ED70()
{
  sub_10002F0A0(319, &qword_100116C38, &qword_100116C40, &qword_1000CD170);
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_10002F0A0(319, &qword_100116C48, &qword_100116C50, &qword_1000CD178);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_10002F0A0(319, &qword_100116C58, &unk_100116C60, &unk_1000CD180);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_10001D1A8(319, &qword_100117460);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_10001D1A8(319, &unk_100116C70);
          if (v10 <= 0x3F)
          {
            v21 = *(v9 - 8) + 64;
            sub_10002F0A0(319, &unk_100117450, &qword_100116C80, &unk_1000CE870);
            if (v12 <= 0x3F)
            {
              v22 = *(v11 - 8) + 64;
              sub_10001D1A8(319, &qword_100116C88);
              if (v14 <= 0x3F)
              {
                v15 = *(v13 - 8) + 64;
                sub_10002F0F4();
                if (v17 <= 0x3F)
                {
                  v23 = *(v16 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10002F0A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100010624(a3, a4);
    v5 = sub_1000C60B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002F0F4()
{
  if (!qword_100116C90[0])
  {
    sub_100010778(255, &qword_100118020, UIImage_ptr);
    v0 = sub_1000C60B4();
    if (!v1)
    {
      atomic_store(v0, qword_100116C90);
    }
  }
}

id sub_10002F15C()
{
  result = TCPContactStore();
  qword_100120E30 = result;
  return result;
}

uint64_t sub_10002F184()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v5 = sub_1000C5F64();
  v6 = sub_1000C6FF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "fetchContactsForParticipants: finished", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10002F2B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10002F338(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1000C60A4();
}

uint64_t sub_10002F3B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10002F430(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10002F52C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v5;
  return result;
}

uint64_t sub_10002F5AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_10002F650(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

void *sub_10002F6F0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_10002F78C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000FEB8(a3, a4);
  v41 = a2;
  result = sub_1000C7314();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1000C7464();
      sub_1000C6DD4();
      result = sub_1000C7494();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10002FA28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FEB8(&qword_100117068, &qword_1000CD948);
  v33 = a2;
  result = sub_1000C7314();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1000C7464();
      sub_1000C7484(v21);
      result = sub_1000C7494();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002FCB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000FEB8(&unk_1001170A0, &qword_1000CDD38);
  v37 = a2;
  v7 = sub_1000C7314();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_35;
  }

  v36 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 64;
  while (v13)
  {
    v22 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_18:
    v25 = v22 | (v9 << 6);
    v26 = *(*(v5 + 48) + v25);
    v27 = (*(v5 + 56) + 16 * v25);
    v28 = v27[1];
    v38 = *v27;
    if ((v37 & 1) == 0)
    {
    }

    v29 = *(v8 + 40);
    sub_1000C7464();
    sub_1000C6DD4();

    v16 = sub_1000C7494();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = 0;
      v31 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v31 && (v30 & 1) != 0)
        {
          goto LABEL_38;
        }

        v32 = v19 == v31;
        if (v19 == v31)
        {
          v19 = 0;
        }

        v30 |= v32;
        v33 = *(v15 + 8 * v19);
      }

      while (v33 == -1);
      v20 = __clz(__rbit64(~v33)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + v20) = v26;
    v21 = (*(v8 + 56) + 16 * v20);
    *v21 = v38;
    v21[1] = v28;
    ++*(v8 + 16);
  }

  v23 = v9;
  while (1)
  {
    v9 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      JUMPOUT(0x1000300D4);
    }

    if (v9 >= v14)
    {
      break;
    }

    v24 = v10[v9];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v13 = (v24 - 1) & v24;
      goto LABEL_18;
    }
  }

  if (v37)
  {
    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
LABEL_35:

    goto LABEL_36;
  }

  v3 = v36;
LABEL_36:
  *v3 = v8;
  return result;
}

id sub_100030120(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000FEB8(a1, a2);
  v4 = *v2;
  v5 = sub_1000C7304();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10003027C()
{
  v1 = v0;
  sub_10000FEB8(&unk_1001170A0, &qword_1000CDD38);
  v2 = *v0;
  v3 = sub_1000C7304();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1000303E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000C7214() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1000C7464();

      sub_1000C6DD4();
      v13 = sub_1000C7494();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000305A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100071DEC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10002F78C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_100071DEC(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1000C73D4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100030120(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_100030744(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100071E64(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10002FCB8(v16, a4 & 1);
      v20 = *v5;
      result = sub_100071E64(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1000C73D4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10003027C();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_1000308A4(void **__src, void **a2, void **a3, uint64_t __dst, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_1000257E4(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_1000257E4(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_100030C64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100030CF0(v3);
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

char *sub_100030D04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FEB8(&qword_100117048, &qword_1000CD930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100030E08(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000C72F4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1000C7264();
}

uint64_t sub_100030E6C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1000C72F4();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1000C7264();
    *v1 = result;
  }

  return result;
}

void *sub_100030F28(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000C72F4();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10002F6F0(v3, 0);
  sub_100030FBC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100030FBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000C72F4();
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
      result = sub_1000C72F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001E490(&unk_100117058, &qword_100117050, &qword_1000CD938);
          for (i = 0; i != v6; ++i)
          {
            sub_10000FEB8(&qword_100117050, &qword_1000CD938);
            v9 = sub_1000725E8(v13, i, a3);
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
        sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
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

uint64_t *sub_100031184(uint64_t a1)
{
  v2 = v1;
  v336 = a1;
  v308 = *v1;
  v296 = sub_10000FEB8(&qword_100116E50, &qword_1000CD220);
  v295 = *(v296 - 8);
  v3 = *(v295 + 64);
  __chkstk_darwin(v296);
  v294 = v250 - v4;
  v299 = sub_10000FEB8(&qword_100116E58, &qword_1000CD228);
  v298 = *(v299 - 8);
  v5 = *(v298 + 64);
  __chkstk_darwin(v299);
  v297 = v250 - v6;
  v283 = sub_10000FEB8(&qword_100116E60, &qword_1000CD230);
  v282 = *(v283 - 8);
  v7 = *(v282 + 64);
  __chkstk_darwin(v283);
  v281 = v250 - v8;
  v290 = sub_10000FEB8(&qword_100116E68, &qword_1000CD238);
  v9 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  v287 = v250 - v10;
  v280 = sub_10000FEB8(&unk_100116E70, &unk_1000CD240);
  v279 = *(v280 - 8);
  v11 = *(v279 + 64);
  __chkstk_darwin(v280);
  v278 = v250 - v12;
  v285 = sub_10000FEB8(&qword_100117780, &qword_1000CEF20);
  v13 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v284 = v250 - v14;
  v289 = sub_10000FEB8(&qword_100116E80, &qword_1000CD250);
  v288 = *(v289 - 8);
  v15 = *(v288 + 64);
  __chkstk_darwin(v289);
  v286 = v250 - v16;
  v293 = sub_10000FEB8(&qword_100116E88, &qword_1000CD258);
  v292 = *(v293 - 8);
  v17 = *(v292 + 64);
  __chkstk_darwin(v293);
  v291 = v250 - v18;
  v276 = sub_10000FEB8(&unk_100116E90, &unk_1000CD260);
  v275 = *(v276 - 8);
  v19 = *(v275 + 64);
  __chkstk_darwin(v276);
  v274 = v250 - v20;
  v21 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v320 = v250 - v23;
  v264 = sub_10000FEB8(&qword_100116EA0, &qword_1000CD270);
  v263 = *(v264 - 8);
  v24 = *(v263 + 64);
  __chkstk_darwin(v264);
  v262 = v250 - v25;
  v266 = sub_10000FEB8(&qword_100116EA8, &qword_1000CD278);
  v26 = *(*(v266 - 8) + 64);
  __chkstk_darwin(v266);
  v265 = v250 - v27;
  v269 = sub_10000FEB8(&qword_100116EB0, &qword_1000CD280);
  v268 = *(v269 - 8);
  v28 = *(v268 + 64);
  __chkstk_darwin(v269);
  v267 = v250 - v29;
  v272 = sub_10000FEB8(&qword_100116EB8, &qword_1000CD288);
  v271 = *(v272 - 8);
  v30 = *(v271 + 64);
  __chkstk_darwin(v272);
  v270 = v250 - v31;
  v307 = sub_10000FEB8(&qword_100116EC0, &unk_1000CC930);
  v261 = *(v307 - 8);
  v32 = *(v261 + 64);
  __chkstk_darwin(v307);
  v306 = v250 - v33;
  v255 = sub_10000FEB8(&qword_100116EC8, &qword_1000D0AB0);
  v253 = *(v255 - 8);
  v34 = *(v253 + 64);
  __chkstk_darwin(v255);
  v251 = v250 - v35;
  v257 = sub_10000FEB8(&qword_100116ED0, &qword_1000CD290);
  v254 = *(v257 - 8);
  v36 = *(v254 + 64);
  __chkstk_darwin(v257);
  v252 = v250 - v37;
  v259 = sub_10000FEB8(&qword_100116ED8, &qword_1000CD298);
  v258 = *(v259 - 8);
  v38 = *(v258 + 64);
  __chkstk_darwin(v259);
  v256 = v250 - v39;
  v335 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v334 = *(v335 - 8);
  v40 = *(v334 + 64);
  v41 = __chkstk_darwin(v335);
  v273 = v250 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v329 = v250 - v44;
  __chkstk_darwin(v43);
  v327 = v250 - v45;
  v330 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v325 = *(v330 - 8);
  v46 = *(v325 + 64);
  v47 = __chkstk_darwin(v330);
  v277 = v250 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v319 = v250 - v49;
  v318 = sub_10000FEB8(&qword_100116EF0, &qword_1000CD2B0);
  v324 = *(v318 - 8);
  v50 = v324[8];
  v51 = __chkstk_darwin(v318);
  v315 = v250 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v305 = v250 - v53;
  v317 = sub_10000FEB8(&qword_100116EF8, &qword_1000CD2B8);
  v323 = *(v317 - 1);
  v54 = *(v323 + 64);
  __chkstk_darwin(v317);
  v316 = v250 - v55;
  v333 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  v332 = *(v333 - 8);
  v56 = *(v332 + 64);
  __chkstk_darwin(v333);
  v331 = v250 - v57;
  v328 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v58 = *(*(v328 - 1) + 64);
  v59 = __chkstk_darwin(v328);
  v321 = v250 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v314 = v250 - v61;
  v313 = sub_10000FEB8(&unk_100116E30, &unk_1000CD200);
  v312 = *(v313 - 8);
  v62 = v312[8];
  __chkstk_darwin(v313);
  v311 = v250 - v63;
  v337 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v310 = *(v337 - 8);
  v64 = v310[8];
  __chkstk_darwin(v337);
  v66 = v250 - v65;
  v309 = sub_10000FEB8(&unk_100116E20, &unk_1000CD1F0);
  v304 = *(v309 - 1);
  v67 = *(v304 + 64);
  __chkstk_darwin(v309);
  v303 = v250 - v68;
  v302 = sub_10000FEB8(&qword_100116E18, &qword_1000CD1E8);
  v301 = *(v302 - 8);
  v69 = v301[8];
  __chkstk_darwin(v302);
  v71 = v250 - v70;
  v72 = sub_10000FEB8(&qword_100116E10, &qword_1000CD1E0);
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72);
  v76 = v250 - v75;
  v1[3] = &_swiftEmptySetSingleton;
  v326 = v1 + 3;
  *(v1 + 32) = 0;
  v77 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__requesters;
  v340 = _swiftEmptyArrayStorage;
  sub_10000FEB8(&qword_100116C40, &qword_1000CD170);
  sub_1000C6054();
  v78 = *(v73 + 32);
  v78(v1 + v77, v76, v72);
  v79 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__participants;
  v340 = _swiftEmptyArrayStorage;
  sub_1000C6054();
  v78(v1 + v79, v76, v72);
  v80 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__oneTimeLinkParticipants;
  v340 = _swiftEmptyArrayStorage;
  sub_10000FEB8(&qword_100116C50, &qword_1000CD178);
  sub_1000C6054();
  (v301[4])(v1 + v80, v71, v302);
  v81 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__currentUser;
  v340 = 0;
  sub_10000FEB8(&unk_100116C60, &unk_1000CD180);
  v82 = v303;
  sub_1000C6054();
  (*(v304 + 32))(v2 + v81, v82, v309);
  v83 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChanges;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84 = v310[4];
  v85 = v337;
  v84(v2 + v83, v66, v337);
  v86 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlerts;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v86, v66, v85);
  v87 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__hideAlertsOptions;
  LOBYTE(v340) = 1;
  v88 = v311;
  sub_1000C6054();
  v89 = v312[4];
  v90 = v313;
  v89(v2 + v87, v88, v313);
  v91 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__highlightChangesOptions;
  LOBYTE(v340) = 1;
  sub_1000C6054();
  v89(v2 + v91, v88, v90);
  v313 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlert;
  v92 = type metadata accessor for AlertViewModel(0);
  v93 = v314;
  (*(*(v92 - 8) + 56))(v314, 1, 1, v92);
  sub_100017574(v93, v321, &qword_100116C80, &unk_1000CE870);
  v94 = v331;
  sub_1000C6054();
  sub_100010F24(v93, &qword_100116C80, &unk_1000CE870);
  (*(v332 + 32))(v2 + v313, v94, v333);
  v95 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__showingAlertBool;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v95, v66, v85);
  v96 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowLoading;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v96, v66, v85);
  v97 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowFolderShareHeader;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v97, v66, v85);
  v98 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowOpenRootSharedFolder;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v98, v66, v85);
  v99 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowCopyLink;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v99, v66, v85);
  v100 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__shouldShowPermissionAndRemovalSectionInMenu;
  LOBYTE(v340) = 0;
  sub_1000C6054();
  v84(v2 + v100, v66, v85);
  v101 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_highlightCenter;
  *(v2 + v101) = [objc_allocWithZone(SWHighlightCenter) init];
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContacts) = 0;
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_fetchedContactsForUserIdentity) = 0;
  v102 = v336;
  v2[2] = v336;
  v260 = v2 + 2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v103 = v340;
  swift_beginAccess();
  v338 = v103;
  sub_100010778(0, &qword_100118020, UIImage_ptr);
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v104 = v340;
  v105 = v341;
  swift_beginAccess();
  v338 = v104;
  v339 = v105;
  sub_1000C6054();
  swift_endAccess();
  sub_10000FEB8(&qword_100116F00, &qword_1000CD350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CB180;
  *(inited + 32) = 0;
  v107 = objc_opt_self();
  v108 = [v107 mainBundle];
  v247._countAndFlagsBits = 0x80000001000D7E70;
  v342._object = 0x80000001000D7E50;
  v342._countAndFlagsBits = 0xD000000000000010;
  v345.value._countAndFlagsBits = 0;
  v345.value._object = 0;
  v109.super.isa = v108;
  v348._countAndFlagsBits = 0;
  v348._object = 0xE000000000000000;
  v110 = sub_1000C5B74(v342, v345, v109, v348, v247);
  v112 = v111;

  *(inited + 40) = v110;
  *(inited + 48) = v112;
  *(inited + 56) = 1;
  v113 = [v107 mainBundle];
  v248._countAndFlagsBits = 0x80000001000D7E90;
  v343._countAndFlagsBits = 0x6C6E6F2077656956;
  v343._object = 0xE900000000000079;
  v346.value._countAndFlagsBits = 0;
  v346.value._object = 0;
  v114.super.isa = v113;
  v349._countAndFlagsBits = 0;
  v349._object = 0xE000000000000000;
  v115 = sub_1000C5B74(v343, v346, v114, v349, v248);
  v117 = v116;

  *(inited + 64) = v115;
  *(inited + 72) = v117;
  *(inited + 80) = 2;
  v118 = [v107 mainBundle];
  v249._countAndFlagsBits = 0x80000001000D7EB0;
  v344._countAndFlagsBits = 0x61635F646578694DLL;
  v344._object = 0xEF657469766E496ELL;
  v350._countAndFlagsBits = 0x646578694DLL;
  v347.value._countAndFlagsBits = 0;
  v347.value._object = 0;
  v119.super.isa = v118;
  v350._object = 0xE500000000000000;
  v120 = sub_1000C5B74(v344, v347, v119, v350, v249);
  v122 = v121;

  *(inited + 88) = v120;
  *(inited + 96) = v122;
  v123 = sub_100078F34(inited);
  swift_setDeallocating();
  sub_10000FEB8(&qword_100116F08, &qword_1000CD358);
  swift_arrayDestroy();
  *(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel_permissionLocalizedStrings) = v123;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v124 = v340;
  v125 = v341;
  v126 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__sectionTitleForAuxiliaryToggles;
  swift_beginAccess();
  v338 = v124;
  v339 = v125;
  v332 = v126;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v127 = v340;
  v128 = v341;
  v129 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleTitle;
  swift_beginAccess();
  v338 = v127;
  v339 = v128;
  v333 = v129;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v127) = v340;
  v130 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__primaryToggleState;
  swift_beginAccess();
  LOBYTE(v338) = v127;
  v304 = v130;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v131 = v340;
  v132 = v341;
  v133 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleTitle;
  swift_beginAccess();
  v338 = v131;
  v339 = v132;
  v250[1] = v133;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v131) = v340;
  v134 = v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__secondaryToggleState;
  swift_beginAccess();
  LOBYTE(v338) = v131;
  v250[2] = v134;
  sub_1000C6054();
  swift_endAccess();
  v135 = *(v102 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v136 = v340;
  v137 = *(v102 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  LODWORD(v120) = v340;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v138 = 0;
  if (v120 == 2)
  {
    v138 = v136 & (v340 ^ 1);
  }

  swift_beginAccess();
  LOBYTE(v338) = v138 & 1;
  sub_1000C6054();
  swift_endAccess();
  v139 = *(v102 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v140 = v340;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v141 = v140 & ~v340;
  swift_beginAccess();
  LOBYTE(v338) = v141 & 1;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v142 = v340 - 6 < 0xFFFFFFFC;
  v322 = v2;
  v250[0] = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing15PeopleViewModel__savingInProgress;
  swift_beginAccess();
  LOBYTE(v338) = v142;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  v143 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v144 = v305;
  v145 = v143;
  sub_1000C6064();
  swift_endAccess();
  v310 = &protocol conformance descriptor for Published<A>.Publisher;
  v312 = sub_10001E490(&qword_100116F10, &qword_100116EF0, &qword_1000CD2B0);
  v146 = v316;
  v147 = v318;
  sub_1000C6114();
  v148 = v324;
  v149 = v324[1];
  v311 = (v324 + 1);
  v149(v144, v147);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v321 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v313 = sub_10001E490(&qword_100116F18, &qword_100116EF8, &qword_1000CD2B8);
  v150 = v317;
  sub_1000C6134();
  v151 = *(v323 + 8);
  v323 += 8;
  v301 = v151;
  (v151)(v146, v150);
  v152 = v148[2];
  v324 = v148 + 2;
  v300 = v152;
  v152(v315, v144, v147);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v149(v144, v147);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v303 = v149;
  v149(v144, v147);
  swift_beginAccess();
  v302 = v145;
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6134();
  (v301)(v146, v150);
  v300(v315, v144, v147);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v149(v144, v147);
  swift_beginAccess();
  v153 = v327;
  sub_1000C6064();
  swift_endAccess();
  v333 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0);
  v154 = v319;
  v155 = v335;
  sub_1000C6114();
  v156 = v334;
  v157 = v334 + 8;
  v158 = *(v334 + 8);
  v158(v153, v155);
  v331 = v158;
  v332 = v157;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v314 = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00);
  v159 = v330;
  sub_1000C6134();
  v309 = *(v325 + 8);
  v325 += 8;
  v309(v154, v159);
  v160 = *(v156 + 16);
  v334 = v156 + 16;
  v328 = v160;
  v161 = v335;
  v160(v329, v153, v335);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v158(v153, v161);
  swift_beginAccess();
  v162 = v144;
  sub_1000C6064();
  swift_endAccess();
  v163 = v316;
  v164 = v318;
  sub_1000C6114();
  v165 = v303;
  (v303)(v162, v164);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v166 = v317;
  sub_1000C6134();
  (v301)(v163, v166);
  v300(v315, v162, v164);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v165(v162, v164);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v167 = v319;
  v168 = v335;
  sub_1000C6114();
  v169 = v331;
  (v331)(v153, v168);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v170 = v330;
  sub_1000C6134();
  v309(v167, v170);
  v328(v329, v153, v168);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v169(v153, v168);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v169(v153, v168);

  v171 = v330;
  sub_1000C6124();

  v309(v167, v171);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v172 = v327;
  sub_1000C6064();
  swift_endAccess();
  v173 = v335;
  sub_1000C6114();
  v169(v172, v173);
  v174 = v336;

  sub_1000C6124();

  v309(v167, v171);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  v175 = v251;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100116F38, &qword_100116EC8, &qword_1000D0AB0);
  sub_100035088();
  v176 = v252;
  v177 = v255;
  sub_1000C6114();
  (*(v253 + 8))(v175, v177);
  sub_10001E490(&qword_100116F48, &qword_100116ED0, &qword_1000CD290);
  v178 = v256;
  v179 = v257;
  sub_1000C60D4();
  (*(v254 + 8))(v176, v179);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116F50, &qword_100116ED8, &qword_1000CD298);
  v180 = v259;
  sub_1000C6134();
  (*(v258 + 8))(v178, v180);
  v181 = v335;
  v328(v329, v172, v335);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (v331)(v172, v181);
  v182 = *(v174 + 24);
  swift_beginAccess();

  v309 = sub_10000FEB8(&unk_100118450, &qword_1000CC940);
  v183 = v306;
  sub_1000C6064();
  swift_endAccess();

  v184 = swift_allocObject();
  swift_weakInit();
  v185 = swift_allocObject();
  *(v185 + 16) = v184;
  *(v185 + 24) = v174;
  v304 = sub_10001E490(&qword_100116F60, &qword_100116EC0, &unk_1000CC930);

  v186 = v307;
  sub_1000C6124();

  (*(v261 + 8))(v183, v186);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  v187 = v262;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100116F68, &qword_100116EA0, &qword_1000CD270);
  sub_10003515C(&qword_100116F70, &qword_100118020, UIImage_ptr);
  v188 = v264;
  sub_1000C6114();
  (*(v263 + 8))(v187, v188);
  swift_beginAccess();
  v189 = v305;
  sub_1000C6064();
  swift_endAccess();
  v190 = v318;
  sub_1000C6114();
  (v303)(v189, v190);
  sub_10001E490(&qword_100116F78, &qword_100116EA8, &qword_1000CD278);
  v191 = v267;
  sub_1000C5F84();
  v324 = objc_opt_self();
  v192 = [v324 mainRunLoop];
  v340 = v192;
  v318 = sub_1000C71A4();
  v193 = *(v318 - 8);
  v317 = *(v193 + 56);
  v323 = v193 + 56;
  v194 = v320;
  (v317)(v320, 1, 1, v318);
  v315 = sub_100010778(0, &qword_100116F80, NSRunLoop_ptr);
  v312 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_10001E490(&qword_100116F88, &qword_100116EB0, &qword_1000CD280);
  v313 = sub_10003515C(&qword_100116F90, &qword_100116F80, NSRunLoop_ptr);
  v195 = v270;
  v196 = v269;
  sub_1000C6104();
  sub_100010F24(v194, &unk_100117770, &unk_1000CEF10);

  (*(v268 + 8))(v191, v196);
  v197 = swift_allocObject();
  swift_weakInit();
  v198 = swift_allocObject();
  *(v198 + 16) = sub_1000351A0;
  *(v198 + 24) = v197;
  v316 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001E490(&qword_100116F98, &qword_100116EB8, &qword_1000CD288);
  v199 = v272;
  sub_1000C6124();

  (*(v271 + 8))(v195, v199);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  v200 = v327;
  sub_1000C6064();
  swift_endAccess();
  swift_beginAccess();
  v201 = v329;
  sub_1000C6064();
  swift_endAccess();
  v202 = v335;
  sub_1000C6134();
  v203 = v200;
  v204 = v331;
  (v331)(v200, v202);
  v205 = v273;
  v328(v273, v201, v202);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v204(v201, v202);
  v325 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderSubshare;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v206 = v335;
  sub_1000C6134();
  v207 = v203;
  v208 = v331;
  (v331)(v207, v206);
  v328(v205, v201, v206);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v209 = v208;
  v208(v201, v206);
  swift_beginAccess();
  v210 = v327;
  sub_1000C6064();
  swift_endAccess();
  v211 = v274;
  sub_1000C60E4();
  v209(v210, v206);
  v212 = v322;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&unk_100116FA0, &unk_100116E90, &unk_1000CD260);
  v213 = v276;
  sub_1000C6134();
  (*(v275 + 8))(v211, v213);
  v328(v329, v210, v206);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  v209(v210, v206);
  swift_beginAccess();
  v214 = *(v212[2] + 16);
  swift_beginAccess();

  sub_10000FEB8(&unk_100117850, &qword_1000CC8C0);
  v215 = v278;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_100116FB0, &unk_100116E70, &unk_1000CD240);
  sub_100035214();
  v216 = v280;
  sub_1000C6114();
  (*(v279 + 8))(v215, v216);
  v217 = *(v212[2] + 16);
  swift_beginAccess();

  sub_10000FEB8(&unk_1001184A0, &qword_1000CC8A0);
  v218 = v281;
  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_100116FD0, &qword_100116E60, &qword_1000CD230);
  sub_100035290();
  v219 = v283;
  sub_1000C6114();
  (*(v282 + 8))(v218, v219);
  v220 = v336;
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v221 = v335;
  sub_1000C6114();
  (v331)(v210, v221);
  v222 = *(v220 + 24);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_10001E490(&unk_100116FE0, &qword_100117780, &qword_1000CEF20);
  sub_10001E490(&qword_1001177F0, &qword_100116E68, &qword_1000CD238);
  v223 = v286;
  sub_1000C5FC4();
  v224 = [v324 mainRunLoop];
  v338 = v224;
  v225 = v320;
  (v317)(v320, 1, 1, v318);
  sub_10001E490(&qword_100116FF0, &qword_100116E80, &qword_1000CD250);
  v226 = v291;
  v227 = v289;
  sub_1000C6104();
  sub_100010F24(v225, &unk_100117770, &unk_1000CEF10);

  (*(v288 + 8))(v223, v227);
  v228 = swift_allocObject();
  swift_weakInit();
  v229 = swift_allocObject();
  v230 = v308;
  *(v229 + 16) = v228;
  *(v229 + 24) = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = sub_10003531C;
  *(v231 + 24) = v229;
  sub_10001E490(&qword_100116FF8, &qword_100116E88, &qword_1000CD258);
  v232 = v293;
  sub_1000C6124();

  (*(v292 + 8))(v226, v232);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  v233 = *(v220 + 24);
  swift_beginAccess();

  sub_1000C6064();
  swift_endAccess();

  sub_1000C6114();
  v234 = v331;
  (v331)(v210, v221);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  sub_1000C6114();
  v234(v210, v221);
  v235 = v294;
  sub_1000C5F84();
  v236 = [v324 mainRunLoop];
  v338 = v236;
  v237 = v320;
  (v317)(v320, 1, 1, v318);
  sub_10001E490(&qword_100117000, &qword_100116E50, &qword_1000CD220);
  v238 = v297;
  v239 = v296;
  sub_1000C6104();
  sub_100010F24(v237, &unk_100117770, &unk_1000CEF10);

  (*(v295 + 8))(v235, v239);
  v240 = swift_allocObject();
  v241 = v322;
  swift_weakInit();

  v242 = swift_allocObject();
  v243 = v308;
  *(v242 + 16) = v240;
  *(v242 + 24) = v243;
  v244 = swift_allocObject();
  *(v244 + 16) = sub_10003535C;
  *(v244 + 24) = v242;
  sub_10001E490(&qword_100117008, &qword_100116E58, &qword_1000CD228);
  v245 = v299;
  sub_1000C6124();

  (*(v298 + 8))(v238, v245);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  return v241;
}

unint64_t sub_100035088()
{
  result = qword_100116F40;
  if (!qword_100116F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116F40);
  }

  return result;
}

uint64_t sub_1000350DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035114()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100035154(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100023F84(a1);
}

uint64_t sub_10003515C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010778(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000351A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000351E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

unint64_t sub_100035214()
{
  result = qword_100117860;
  if (!qword_100117860)
  {
    sub_100010624(&unk_100116FC0, &unk_1000CF2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117860);
  }

  return result;
}

unint64_t sub_100035290()
{
  result = qword_1001184B0;
  if (!qword_1001184B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001184B0);
  }

  return result;
}

uint64_t sub_1000352E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10003531C(char a1, int a2, int a3, void *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_10002527C(a1, a2, a3, a4);
}

uint64_t sub_100035324(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], *(a1 + 1));
}

uint64_t sub_10003535C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10002574C();
}

uint64_t sub_100035364(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_100035498(void *a1)
{
  v2 = sub_1000C5F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = [a1 lookupInfo];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v10 emailAddress];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000C6D84();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v11 phoneNumber];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1000C6D84();
    v21 = v20;

    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (!v16)
    {
LABEL_7:
      if (!v21)
      {
        goto LABEL_24;
      }

LABEL_16:
      v27 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v27 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        sub_1000C5F54();

        v28 = sub_1000C5F64();
        v29 = sub_1000C6FF4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v34 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_100071844(v19, v21, &v34);
          _os_log_impl(&_mh_execute_header, v28, v29, "handleForUserIdentity: user phone number: %s", v30, 0xCu);
          sub_100010544(v31);
        }

        else
        {
        }

        (*(v3 + 8))(v7, v2);
        return v19;
      }

LABEL_24:

      return 0;
    }
  }

  v22 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v22 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  sub_1000C5F54();

  v23 = sub_1000C5F64();
  v24 = sub_1000C6FF4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100071844(v14, v16, &v34);
    _os_log_impl(&_mh_execute_header, v23, v24, "handleForUserIdentity: user email: %s", v25, 0xCu);
    sub_100010544(v26);
  }

  else
  {
  }

  (*(v3 + 8))(v9, v2);
  return v14;
}

void *sub_10003586C(unint64_t a1)
{
  v130 = a1;
  v116 = sub_1000C5F74();
  v1 = *(v116 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v116);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v112 = &v109 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v109 - v9;
  __chkstk_darwin(v8);
  v12 = &v109 - v11;
  sub_1000C5F54();
  v13 = sub_1000C5F64();
  v14 = sub_1000C6FF4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "fetchContactsForParticipants: started", v15, 2u);
  }

  v16 = *(v1 + 8);
  v114 = v1 + 8;
  v113 = v16;
  v16(v12, v116);
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000CD0E0;
  v18 = [objc_allocWithZone(CNAvatarViewController) init];
  v19 = [v18 descriptorForRequiredKeys];

  *(v17 + 32) = v19;
  v135 = &_swiftEmptyDictionarySingleton;
  v20 = (v130 >> 62);
  if (v130 >> 62)
  {
LABEL_129:
    v21 = sub_1000C72F4();
  }

  else
  {
    v21 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_10000FEB8(&qword_100117070, &unk_1000CD950);
  sub_1000C6D04(v21);
  v111 = v20;
  if (v20)
  {
    v23 = v130;
    v128 = v130 & 0xFFFFFFFFFFFFFF8;
    v131 = sub_1000C72F4();
    v22 = v23;
  }

  else
  {
    v22 = v130;
    v128 = v130 & 0xFFFFFFFFFFFFFF8;
    v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  v110 = 0;
  v129 = v22 & 0xC000000000000001;
  v117 = v22 + 32;
  v25 = _swiftEmptyArrayStorage;
  while (v131 != v24)
  {
    if (v129)
    {
      v26 = sub_1000C7254();
    }

    else
    {
      if (v24 >= *(v128 + 16))
      {
        goto LABEL_120;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
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
      goto LABEL_129;
    }

    v29 = [v26 userIdentity];
    v20 = sub_100035498(v29);
    v31 = v30;

    ++v24;
    v22 = v130;
    if (v31)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1000B1AD8(0, *(v25 + 2) + 1, 1, v25);
      }

      v33 = *(v25 + 2);
      v32 = *(v25 + 3);
      v22 = v130;
      if (v33 >= v32 >> 1)
      {
        v25 = sub_1000B1AD8((v32 > 1), v33 + 1, 1, v25);
        v22 = v130;
      }

      *(v25 + 2) = v33 + 1;
      v34 = &v25[16 * v33];
      *(v34 + 4) = v20;
      *(v34 + 5) = v31;
      v24 = v28;
    }
  }

  v35 = objc_opt_self();
  isa = sub_1000C6E84().super.isa;

  v115 = [v35 predicateForContactsMatchingHandleStrings:isa];

  Current = CFAbsoluteTimeGetCurrent();
  if (qword_100115F78 != -1)
  {
    swift_once();
  }

  v38 = qword_100120E30;
  if (!qword_100120E30)
  {
    __break(1u);
  }

  sub_10000FEB8(&qword_100117078, &unk_1000CD960);
  v39 = sub_1000C6E84().super.isa;

  v134 = 0;
  v40 = [v38 unifiedContactsMatchingPredicate:v115 keysToFetch:v39 error:&v134];

  v41 = v134;
  if (v40)
  {
    sub_100010778(0, &qword_100117088, CNContact_ptr);
    v5 = sub_1000C6E94();
    v42 = v41;

    v43 = CFAbsoluteTimeGetCurrent();
    sub_1000C5F54();

    v44 = sub_1000C5F64();
    v45 = sub_1000C6FF4();
    v46 = os_log_type_enabled(v44, v45);
    v20 = (v5 >> 62);
    v118 = v5 >> 62;
    if (v46)
    {
      v47 = swift_slowAlloc();
      *v47 = 134218240;
      *(v47 + 4) = v43 - Current;
      *(v47 + 12) = 2048;
      if (v20)
      {
        v108 = v47;
        v48 = sub_1000C72F4();
        v47 = v108;
      }

      else
      {
        v48 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v47 + 14) = v48;
      v20 = v47;

      _os_log_impl(&_mh_execute_header, v44, v45, "fetchContactsForParticipants: unifiedContacts(matching:...) took: %f, total contacts found: %ld", v20, 0x16u);
    }

    else
    {
    }

    v113(v10, v116);
    if (v131)
    {
      v55 = 0;
      v56 = v5 & 0xFFFFFFFFFFFFFF8;
      v126 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((v5 & 0x8000000000000000) != 0)
      {
        v56 = v5;
      }

      v109 = v56;
      v120 = v5 + 32;
      v121 = v5 & 0xC000000000000001;
      v119 = v5;
      do
      {
        if (v129)
        {
          v60 = sub_1000C7254();
          v61 = __OFADD__(v55, 1);
          v62 = v55 + 1;
          if (v61)
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v55 >= *(v128 + 16))
          {
            goto LABEL_126;
          }

          v60 = *(v117 + 8 * v55);
          v61 = __OFADD__(v55, 1);
          v62 = v55 + 1;
          if (v61)
          {
            goto LABEL_123;
          }
        }

        v127 = v62;
        v57 = v60;
        v63 = [(uint8_t *)v60 userIdentity:v109];
        v133 = sub_100035498(v63);
        v10 = v64;

        if (v10)
        {
          v132 = v10;
          v122 = v57;
          if (v118)
          {
            v20 = sub_1000C72F4();
            v123 = v20;
            if (v20)
            {
LABEL_49:
              v10 = 0;
              do
              {
                if (v121)
                {
                  v65 = sub_1000C7254();
                }

                else
                {
                  if (v10 >= *(v126 + 16))
                  {
                    goto LABEL_125;
                  }

                  v65 = *(v120 + 8 * v10);
                }

                v66 = v65;
                v61 = __OFADD__(v10++, 1);
                if (v61)
                {
                  goto LABEL_124;
                }

                v67 = [v65 emailAddresses];
                sub_10000FEB8(&qword_100117038, &unk_1000CD890);
                v5 = sub_1000C6E94();

                if (v5 >> 62)
                {
                  v20 = sub_1000C72F4();
                  v124 = v10;
                  v125 = v66;
                  if (v20)
                  {
LABEL_57:
                    v68 = 0;
                    while (1)
                    {
                      if ((v5 & 0xC000000000000001) != 0)
                      {
                        v69 = sub_1000C7254();
                      }

                      else
                      {
                        if (v68 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_118;
                        }

                        v69 = *(v5 + 8 * v68 + 32);
                      }

                      v70 = v69;
                      v10 = v68 + 1;
                      if (__OFADD__(v68, 1))
                      {
                        break;
                      }

                      v71 = [v69 value];
                      v72 = sub_1000C6D84();
                      v74 = v73;

                      if (v72 == v133 && v132 == v74)
                      {

LABEL_74:

                        v20 = v122;
                        v77 = sub_1000C7064();
                        v10 = v78;
                        v79 = v135;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v134 = v79;
                        sub_1000305A8(v125, v77, v10, isUniquelyReferenced_nonNull_native, &qword_100117090, &qword_1000CD970);

                        v135 = v134;
                        v5 = v119;
                        goto LABEL_39;
                      }

                      v76 = sub_1000C73A4();

                      if (v76)
                      {
                        goto LABEL_74;
                      }

                      ++v68;
                      if (v10 == v20)
                      {
                        goto LABEL_50;
                      }
                    }

                    __break(1u);
LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }
                }

                else
                {
                  v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v124 = v10;
                  v125 = v66;
                  if (v20)
                  {
                    goto LABEL_57;
                  }
                }

LABEL_50:

                v20 = v123;
                v10 = v124;
                v5 = v119;
              }

              while (v124 != v123);
            }
          }

          else
          {
            v20 = *(v126 + 16);
            v123 = v20;
            if (v20)
            {
              goto LABEL_49;
            }
          }

          v81 = objc_allocWithZone(CNPhoneNumber);
          v82 = sub_1000C6D44();

          v10 = [v81 initWithStringValue:v82];

          v83 = [v10 formattedInternationalStringValue];
          if (!v83)
          {

            goto LABEL_39;
          }

          v10 = sub_1000C6D84();
          v85 = v84;

          if (v20)
          {
            v86 = 0;
            do
            {
              if (v121)
              {
                v87 = sub_1000C7254();
                v61 = __OFADD__(v86, 1);
                v88 = v86 + 1;
                if (v61)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                if (v86 >= *(v126 + 16))
                {
                  goto LABEL_128;
                }

                v87 = *(v120 + 8 * v86);
                v61 = __OFADD__(v86, 1);
                v88 = v86 + 1;
                if (v61)
                {
                  goto LABEL_127;
                }
              }

              v124 = v88;
              v125 = v87;
              v89 = [v87 phoneNumbers];
              sub_10000FEB8(&qword_100117038, &unk_1000CD890);
              v90 = sub_1000C6E94();

              if (v90 >> 62)
              {
                v20 = sub_1000C72F4();
                if (v20)
                {
LABEL_85:
                  v91 = 0;
                  v132 = v90 & 0xFFFFFFFFFFFFFF8;
                  v133 = v90 & 0xC000000000000001;
                  do
                  {
                    if (v133)
                    {
                      v92 = sub_1000C7254();
                    }

                    else
                    {
                      if (v91 >= *(v132 + 16))
                      {
                        goto LABEL_122;
                      }

                      v92 = *(v90 + 8 * v91 + 32);
                    }

                    v93 = v92;
                    v94 = (v91 + 1);
                    if (__OFADD__(v91, 1))
                    {
                      goto LABEL_121;
                    }

                    v95 = [v92 value];
                    v5 = [v95 formattedInternationalStringValue];

                    if (v5)
                    {
                      v96 = v85;
                      v97 = sub_1000C6D84();
                      v99 = v98;

                      v100 = v97;
                      v85 = v96;
                      if (v100 == v10 && v99 == v96)
                      {

                        goto LABEL_106;
                      }

                      v5 = sub_1000C73A4();

                      if (v5)
                      {

LABEL_106:

                        v5 = v119;
                        v10 = v125;
                        goto LABEL_37;
                      }
                    }

                    ++v91;
                  }

                  while (v94 != v20);
                }
              }

              else
              {
                v20 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v20)
                {
                  goto LABEL_85;
                }
              }

              v86 = v124;
              v5 = v119;
            }

            while (v124 != v123);
          }

          v10 = 0;
LABEL_37:
          v57 = v122;
          v58 = sub_1000C7064();
          sub_100023998(v10, v58, v59);
        }

LABEL_39:
        v55 = v127;
      }

      while (v127 != v131);
    }

    sub_1000C5F54();
    v102 = v135;

    v103 = sub_1000C5F64();
    v104 = sub_1000C6FF4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 134218240;
      *(v105 + 4) = v102[2];

      *(v105 + 12) = 2048;
      if (v111)
      {
        v106 = sub_1000C72F4();
      }

      else
      {
        v106 = *(v128 + 16);
      }

      *(v105 + 14) = v106;

      _os_log_impl(&_mh_execute_header, v103, v104, "fetchContactsForParticipants: new contacts fetched: %ld for %ld participants", v105, 0x16u);
    }

    else
    {
    }

    v113(v112, v116);
  }

  else
  {
    v49 = v134;
    sub_1000C5CE4();

    swift_willThrow();
    sub_1000C5F54();
    swift_errorRetain();
    v50 = sub_1000C5F64();
    v51 = sub_1000C6FD4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "fetchContactsForParticipants: Unexpected error: %@", v52, 0xCu);
      sub_100010F24(v53, &qword_100117080, &unk_1000CC350);
    }

    else
    {
    }

    v113(v5, v116);
    v102 = v135;
  }

  sub_10002F184();
  return v102;
}

void *sub_1000367BC(unint64_t a1, void *a2)
{
  v31 = a2;
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v35 = &_swiftEmptyDictionarySingleton;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyDictionarySingleton;
  }

LABEL_26:
  v7 = sub_1000C72F4();
  if (!v7)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v8 = 0;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v9 = &_swiftEmptyDictionarySingleton;
  v30 = xmmword_1000CD0E0;
  v32 = a1;
  while (1)
  {
    if (v34)
    {
      v11 = sub_1000C7254();
    }

    else
    {
      if (v8 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(a1 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
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

    if ([v11 acceptanceStatus] == 1)
    {
      sub_1000C7064();
      sub_1000C7134();

      v14 = sub_1000C5D84();
      a1 = (*(*(v14 - 8) + 48))(v6, 1, v14) != 1;
      sub_100010F24(v6, &qword_100116260, &qword_1000CD940);
    }

    else
    {
      a1 = 0;
    }

    v15 = sub_100071F58(a1);
    v17 = v9[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_24;
    }

    v21 = v16;
    if (v9[3] < v20)
    {
      sub_10002FA28(v20, 1);
      v9 = v35;
      v15 = sub_100071F58(a1);
      if ((v21 & 1) != (v22 & 1))
      {
        break;
      }
    }

    if (v21)
    {
      v10 = (v9[7] + 8 * v15);
      sub_1000C6E74();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000C6EA4();
      }

      sub_1000C6EC4();
    }

    else
    {
      v23 = v15;
      sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
      v24 = swift_allocObject();
      *(v24 + 16) = v30;
      *(v24 + 32) = v12;
      v9[(v23 >> 6) + 8] |= 1 << v23;
      *(v9[6] + v23) = a1;
      *(v9[7] + 8 * v23) = v24;
      v25 = v9[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      v9[2] = v26;
    }

    a1 = v32;
    ++v8;
    if (v13 == v7)
    {
      return v9;
    }
  }

  result = sub_1000C73D4();
  __break(1u);
  return result;
}

id sub_100036B00(void *a1, int a2)
{
  v102 = a2;
  v101 = sub_1000C5C54();
  v3 = *(v101 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v101);
  v95 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_1001167C8, &qword_1000CC560);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v97 = &v92 - v12;
  __chkstk_darwin(v11);
  v14 = &v92 - v13;
  v15 = sub_1000C5F74();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  v20 = [a1 lookupInfo];
  v21 = v20;
  v99 = v10;
  v100 = v3;
  if (v20)
  {
    v22 = [v20 emailAddress];
    if (v22)
    {
      v23 = v22;
      v103 = sub_1000C6D84();
      v25 = v24;
    }

    else
    {
      v103 = 0;
      v25 = 0;
    }

    v27 = [v21 phoneNumber];
    if (v27)
    {
      v28 = v27;
      v96 = sub_1000C6D84();
      v26 = v29;
    }

    else
    {
      v96 = 0;
      v26 = 0;
    }
  }

  else
  {
    v96 = 0;
    v26 = 0;
    v103 = 0;
    v25 = 0;
  }

  sub_1000C5F54();

  v30 = sub_1000C5F64();
  v31 = sub_1000C6FF4();

  v32 = os_log_type_enabled(v30, v31);
  v104 = v25;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v93 = v15;
    v34 = v33;
    v35 = swift_slowAlloc();
    v94 = v26;
    v36 = v14;
    v37 = v35;
    v106 = v25;
    v107 = v35;
    *v34 = 136315138;
    v105 = v103;

    sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    v38 = sub_1000C6D94();
    v40 = v21;
    v41 = sub_100071844(v38, v39, &v107);
    v25 = v104;

    *(v34 + 4) = v41;
    v21 = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "createContactFromParticipant: Creating contact for participant email: %s", v34, 0xCu);
    sub_100010544(v37);
    v14 = v36;
    v26 = v94;

    (*(v16 + 8))(v19, v93);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v42 = [objc_allocWithZone(CNMutableContact) init];
  if (v25)
  {

    v43 = CNLabelOther;
    v44 = sub_1000C6D44();

    v45 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v43 value:v44];

    sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000CD0E0;
    *(v46 + 32) = v45;
    v47 = v45;
    sub_10000FEB8(&qword_100117038, &unk_1000CD890);
    isa = sub_1000C6E84().super.isa;

    [v42 setEmailAddresses:isa];

    v25 = v104;
  }

  if (v26)
  {
    v49 = objc_allocWithZone(CNPhoneNumber);
    v50 = sub_1000C6D44();

    v51 = [v49 initWithStringValue:v50];

    v52 = [objc_allocWithZone(CNLabeledValue) initWithLabel:CNLabelPhoneNumberMain value:v51];
    sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000CD0E0;
    *(v53 + 32) = v52;
    v54 = v52;
    sub_10000FEB8(&qword_100117038, &unk_1000CD890);
    v55 = sub_1000C6E84().super.isa;

    [v42 setPhoneNumbers:v55];

    v25 = v104;
  }

  v56 = [v98 nameComponents];
  if (v56)
  {
    v57 = v97;
    v58 = v56;
    sub_1000C5C34();

    v59 = 0;
    v61 = v100;
    v60 = v101;
  }

  else
  {
    v59 = 1;
    v61 = v100;
    v60 = v101;
    v57 = v97;
  }

  (*(v61 + 56))(v57, v59, 1, v60);
  sub_100038348(v57, v14);
  v62 = v99;
  sub_100017574(v14, v99, &qword_1001167C8, &qword_1000CC560);
  if ((*(v61 + 48))(v62, 1, v60) == 1)
  {
    sub_100010F24(v62, &qword_1001167C8, &qword_1000CC560);
    if ((v102 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v63 = v95;
    (*(v61 + 32))(v95, v62, v60);
    sub_1000C5C04();
    v64 = sub_1000C6D44();

    [v42 setNamePrefix:v64];

    sub_1000C5BD4();
    v65 = sub_1000C6D44();

    [v42 setGivenName:v65];

    sub_1000C5BF4();
    v66 = sub_1000C6D44();

    [v42 setMiddleName:v66];

    sub_1000C5BE4();
    v67 = sub_1000C6D44();

    [v42 setFamilyName:v67];

    sub_1000C5C14();
    v68 = sub_1000C6D44();

    [v42 setNameSuffix:v68];

    sub_1000C5C44();
    v69 = sub_1000C6D44();

    [v42 setNickname:v69];

    (*(v61 + 8))(v63, v60);
    if ((v102 & 1) == 0)
    {
LABEL_32:
      sub_100010F24(v14, &qword_1001167C8, &qword_1000CC560);

      return v42;
    }
  }

  v70 = [v42 givenName];
  v71 = sub_1000C6D84();
  v73 = v72;

  v74 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v74 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (v74)
  {
    goto LABEL_32;
  }

  v75 = [v42 middleName];
  v76 = sub_1000C6D84();
  v78 = v77;

  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {
    goto LABEL_32;
  }

  v80 = [v42 familyName];
  v81 = sub_1000C6D84();
  v83 = v82;

  v84 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v84 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (v84)
  {
    goto LABEL_32;
  }

  if (v25)
  {
    v86 = sub_1000C6D44();
    v87 = [v86 rangeOfComposedCharacterSequenceAtIndex:0];
    v89 = v88;

    v90 = sub_1000C6D44();

    v91 = [v90 substringWithRange:{v87, v89}];

    if (!v91)
    {
      sub_1000C6D84();
      v91 = sub_1000C6D44();
    }

    [v42 setGivenName:v91];

    sub_100010F24(v14, &qword_1001167C8, &qword_1000CC560);
  }

  else
  {
    sub_100010F24(v14, &qword_1001167C8, &qword_1000CC560);
  }

  return v42;
}

void sub_10003755C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_retain_n();
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_89:
    __dst = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_130;
  }

  v104 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_20;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    v113 = *(*a3 + 8 * v11);
    v15 = v113;
    v114 = v14;
    v16 = v14;
    v17 = v15;
    LODWORD(__dst) = sub_1000257E4(&v114, &v113, a5);
    if (v6)
    {

      return;
    }

    v18 = v11 + 2;
    v105 = v11;
    v19 = 8 * v11;
    v20 = (v13 + v19 + 16);
    while (v8 != v18)
    {
      v21 = *v20;
      v113 = *(v20 - 1);
      v22 = v113;
      v114 = v21;
      v23 = v21;
      v24 = v22;
      LODWORD(v22) = sub_1000257E4(&v114, &v113, a5);

      ++v18;
      ++v20;
      if ((__dst ^ v22))
      {
        v8 = v18 - 1;
        break;
      }
    }

    if ((__dst & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = v105;
    if (v8 < v105)
    {
      goto LABEL_124;
    }

    if (v105 < v8)
    {
      v26 = 8 * v8 - 8;
      v27 = v8;
      do
      {
        if (v25 != --v27)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v29 = *(v28 + v19);
          *(v28 + v19) = *(v28 + v26);
          *(v28 + v26) = v29;
        }

        ++v25;
        v26 -= 8;
        v19 += 8;
      }

      while (v25 < v27);
LABEL_18:
      v12 = v8;
      v11 = v105;
      goto LABEL_20;
    }

    v12 = v8;
    v11 = v105;
LABEL_20:
    v30 = a3[1];
    if (v12 >= v30)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_120;
    }

    if (v12 - v11 >= v104)
    {
      goto LABEL_133;
    }

    v31 = v11 + v104;
    if (__OFADD__(v11, v104))
    {
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

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v11)
    {
      goto LABEL_123;
    }

    if (v12 == v31)
    {
LABEL_133:
      if (v12 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v82 = *a3;
      v83 = *a3 + 8 * v12 - 8;
      v106 = v11;
      v84 = v11 - v12;
      v102 = v31;
      do
      {
        v109 = v12;
        __dst = v83;
        v85 = *(v82 + 8 * v12);
        v103 = v84;
        v86 = v84;
        do
        {
          v113 = *v83;
          v87 = v113;
          v114 = v85;
          v88 = v85;
          v89 = v87;
          v90 = sub_1000257E4(&v114, &v113, a5);
          if (v6)
          {

            return;
          }

          v91 = v90;

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_126;
          }

          v92 = *v83;
          v85 = *(v83 + 8);
          *v83 = v85;
          *(v83 + 8) = v92;
          v83 -= 8;
        }

        while (!__CFADD__(v86++, 1));
        v12 = v109 + 1;
        v83 = __dst + 8;
        v84 = v103 - 1;
      }

      while (v109 + 1 != v102);
      v12 = v102;
      v11 = v106;
      if (v102 < v106)
      {
        goto LABEL_119;
      }
    }

    v108 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100030D04(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v10 = sub_100030D04((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v11;
    *(v35 + 5) = v108;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v33)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v108;
    if (v108 >= v8)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v36 = v34 - 1;
    if (v34 >= 4)
    {
      v41 = &v10[16 * v34 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v10[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v34 == 3)
    {
      v37 = *(v10 + 4);
      v38 = *(v10 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_48:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v10[16 * v34];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v10[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v34 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v63 = &v10[16 * v34];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_62:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v10[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_69:
    v74 = v36 - 1;
    if (v36 - 1 >= v34)
    {
      break;
    }

    v75 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v76 = *&v10[16 * v74 + 32];
    v77 = *&v10[16 * v36 + 40];
    v78 = (v75 + 8 * v76);
    v79 = (v75 + 8 * *&v10[16 * v36 + 32]);
    v80 = (v75 + 8 * v77);

    sub_1000308A4(v78, v79, v80, __dst, a5);
    if (v6)
    {

      return;
    }

    if (v77 < v76)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100030CF0(v10);
    }

    if (v74 >= *(v10 + 2))
    {
      goto LABEL_105;
    }

    v81 = &v10[16 * v74];
    *(v81 + 4) = v76;
    *(v81 + 5) = v77;
    v115 = v10;
    sub_100030C64(v36);
    v10 = v115;
    v34 = *(v115 + 2);
    if (v34 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v10 = sub_100030CF0(v10);
LABEL_91:
  v115 = v10;
  v94 = *(v10 + 2);
  if (v94 < 2)
  {
LABEL_99:
  }

  else
  {
    while (1)
    {
      v95 = *a3;
      if (!*a3)
      {
        break;
      }

      v96 = *&v10[16 * v94];
      v97 = *&v10[16 * v94 + 24];
      v98 = (v95 + 8 * v96);
      v99 = (v95 + 8 * *&v10[16 * v94 + 16]);
      v100 = (v95 + 8 * v97);

      sub_1000308A4(v98, v99, v100, __dst, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100030CF0(v10);
      }

      if (v94 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v10[16 * v94];
      *v101 = v96;
      *(v101 + 1) = v97;
      v115 = v10;
      sub_100030C64(v94 - 1);
      v10 = v115;
      v94 = *(v115 + 2);
      if (v94 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:

    __break(1u);
LABEL_129:

    __break(1u);
LABEL_130:

    __break(1u);
  }
}