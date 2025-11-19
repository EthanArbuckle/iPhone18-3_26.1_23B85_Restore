uint64_t sub_1A8762308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  if (sub_1A88C8688())
  {
    sub_1A88C8DE8();
    v15 = sub_1A88C8DD8();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1A88C8688();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1A88C8668();
    sub_1A88C8628();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1A88C8E38();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1A88C8228();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1A88C8298();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A87626C4()
{
  sub_1A870CCE0(&qword_1EB304B08);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  qword_1EB338DB0 = result;
  return result;
}

uint64_t static IMTranslator.localDeviceSupportsTranslation.getter()
{
  if (qword_1EB300778 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB338DB0;

  os_unfair_lock_lock((v0 + 20));
  v1 = *(v0 + 16);
  os_unfair_lock_unlock((v0 + 20));

  return v1 & 1;
}

uint64_t static IMTranslator.setupGreymatterAvailabilityForTranslationIfNeeded()()
{
  v0 = sub_1A88C7908();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A88C7958();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A88C7938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A88C7978();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB300778 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB338DB0;

  os_unfair_lock_lock((v14 + 20));
  if (*(v14 + 16) == 2)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69A12A8], v2);
    sub_1A88C7928();
    sub_1A88C7968();
    (*(v7 + 8))(v9, v6);
    v15 = v22;
    sub_1A88C7948();
    (*(v11 + 8))(v13, v10);
    v17 = v23;
    v16 = v24;
    v18 = (*(v23 + 88))(v15, v24);
    v19 = v18 == *MEMORY[0x1E69A0EF0];
    if (v18 == *MEMORY[0x1E69A0EF0] || v18 == *MEMORY[0x1E69A0F08] || v18 != *MEMORY[0x1E69A1198])
    {
      (*(v17 + 8))(v15, v16);
    }

    else
    {
      v19 = 1;
    }

    *(v14 + 16) = v19;
    sub_1A8762B20();
  }

  os_unfair_lock_unlock((v14 + 20));
}

void sub_1A8762B20()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1A88C82A8();
  CFNotificationCenterAddObserver(v0, 0, sub_1A8762B1C, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  swift_arrayDestroy();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = sub_1A88C82A8();
  CFNotificationCenterAddObserver(v2, 0, sub_1A8762B1C, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_1A8762C38()
{
  v0 = sub_1A88C7908();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A88C7958();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A88C7938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A88C7978();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB300778 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB338DB0;

  os_unfair_lock_lock((v14 + 20));
  (*(v3 + 104))(v5, *MEMORY[0x1E69A12A8], v22);
  sub_1A88C7928();
  sub_1A88C7968();
  (*(v7 + 8))(v9, v6);
  sub_1A88C7948();
  (*(v11 + 8))(v13, v10);
  v16 = v23;
  v15 = v24;
  v17 = (*(v23 + 88))(v2, v24);
  v18 = v17 == *MEMORY[0x1E69A0EF0];
  if (v17 == *MEMORY[0x1E69A0EF0] || v17 == *MEMORY[0x1E69A0F08] || v17 != *MEMORY[0x1E69A1198])
  {
    (*(v16 + 8))(v2, v15);
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v14 + 16);
  *(v14 + 16) = v18;
  os_unfair_lock_unlock((v14 + 20));

  if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    v20 = [objc_opt_self() defaultCenter];
    [v20 postNotificationName:@"__kIMTranslationLanguageStatusChangedNotification" object:0];
  }
}

uint64_t sub_1A8763010()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB304B10);
  sub_1A85EF0E4(v0, qword_1EB304B10);
  return sub_1A88C7E48();
}

uint64_t sub_1A87631A4()
{
  *(v0 + 128) = sub_1A88C8768();
  *(v0 + 136) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A876323C, v2, v1);
}

uint64_t sub_1A876323C()
{

  if (qword_1EB300460 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1A87632D4, 0, 0);
}

uint64_t sub_1A87632D4()
{
  *(v0 + 144) = sub_1A88C8758();
  v2 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A8763360, v2, v1);
}

uint64_t sub_1A8763360()
{

  *(v0 + 152) = qword_1EB300468;

  return MEMORY[0x1EEE6DFA0](sub_1A87633D4, 0, 0);
}

uint64_t sub_1A87633D4()
{
  swift_beginAccess();
  v1 = off_1EB304B30;
  v0[20] = qword_1EB304B28;
  v0[21] = v1;

  v0[22] = sub_1A88C8758();
  v3 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A87426F0, v3, v2);
}

void RemoteIntentRequestAttachmentBroadcasts.route(response:auxiliaryOutput:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = *a1 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A87436C8(v6, &v23);
      sub_1A860D56C(&v23, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A8735320(0, v7[2] + 1, 1, v7);
      }

      v9 = v7[2];
      v8 = v7[3];
      if (v9 >= v8 >> 1)
      {
        v7 = sub_1A8735320((v8 > 1), v9 + 1, 1, v7);
      }

      v7[2] = v9 + 1;
      sub_1A860D56C(v22, &v7[5 * v9 + 4]);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (!v7[2])
  {

    if (qword_1EB302170 != -1)
    {
      swift_once();
    }

    v15 = sub_1A88C7E58();
    sub_1A85EF0E4(v15, qword_1EB304B10);
    v16 = sub_1A88C7E38();
    v17 = sub_1A88C89A8();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A8918270, &v23);
    v20 = "%s Remote request did not return any broadcasts to process.";
    goto LABEL_24;
  }

  v10 = sub_1A8763914(v7);

  if (!v10)
  {
    if (qword_1EB302170 != -1)
    {
      swift_once();
    }

    v21 = sub_1A88C7E58();
    sub_1A85EF0E4(v21, qword_1EB304B10);
    v16 = sub_1A88C7E38();
    v17 = sub_1A88C89C8();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A8918270, &v23);
    v20 = "%s broadcasts do not conform to RemoteIntentFileBroadcast. Bailing!";
LABEL_24:
    _os_log_impl(&dword_1A85E5000, v16, v17, v20, v18, 0xCu);
    sub_1A85F1084(v19);
    MEMORY[0x1AC571F20](v19, -1, -1);
    MEMORY[0x1AC571F20](v18, -1, -1);
LABEL_25:

    return;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    do
    {
      sub_1A86061B4(v12, &v23);
      v13 = v24;
      v14 = v25;
      sub_1A870C278(&v23, v24);
      *&v22[0] = a2;
      (*(*(v14 + 8) + 56))(a3, v22, v13);
      sub_1A85F1084(&v23);
      v12 += 40;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1A8763800(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A871CE50(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1A85F1028(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A871CE50((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1A8763914(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A871D690(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1A86061B4(i, v10);
      sub_1A870CCE0(&qword_1EB303E88);
      sub_1A870CCE0(&qword_1EB3034D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1A860D56C(v8, v11);
      sub_1A860D56C(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A871D690((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1A860D56C(v10, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1A876482C(v8);
    return 0;
  }

  return v3;
}

uint64_t sub_1A8763A88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1A871D5EC(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1A85F1028(i, v9);
      sub_1A870CCE0(&qword_1EB303320);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A871D5EC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1A8763BB0(uint64_t a1)
{
  v2 = sub_1A87647D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8763BEC(uint64_t a1)
{
  v2 = sub_1A87647D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRequestAttachmentBroadcasts.encode(to:)(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304B48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87647D8();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A8763DA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8714B6C;

  return RemoteIntentRequestAttachmentBroadcasts.perform(using:)(a1);
}

uint64_t sub_1A8763E38(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304B48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87647D8();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

void *RemoteIntentRequestAttachmentBroadcastsResponse.auxiliaryOutput()()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1A87436C8(v2, &v32);
      sub_1A860D56C(&v32, v31);
      sub_1A870CCE0(&qword_1EB303E88);
      sub_1A870CCE0(&qword_1EB3034D0);
      if (swift_dynamicCast())
      {
        if (*(&v29 + 1))
        {
          sub_1A860D56C(&v28, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A87354C0(0, v3[2] + 1, 1, v3);
          }

          v5 = v3[2];
          v4 = v3[3];
          if (v5 >= v4 >> 1)
          {
            v3 = sub_1A87354C0((v4 > 1), v5 + 1, 1, v3);
          }

          v3[2] = v5 + 1;
          sub_1A860D56C(v31, &v3[5 * v5 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
      }

      sub_1A876482C(&v28);
LABEL_5:
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v6 = v3[2];
  if (!v6)
  {

    if (qword_1EB302170 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v7 = (v3 + 4);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1A86061B4(v7, &v32);
    v9 = v33;
    v10 = v34;
    sub_1A870C278(&v32, v33);
    v11 = (*(v10 + 16))(v9, v10);
    v12 = *(v11 + 16);
    v13 = v8[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    v15 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v8[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v17 = v13 + v12;
      }

      else
      {
        v17 = v13;
      }

      v8 = sub_1A873562C(isUniquelyReferenced_nonNull_native, v17, 1, v8);
      if (*(v15 + 16))
      {
LABEL_27:
        v18 = (v8[3] >> 1) - v8[2];
        type metadata accessor for RemoteIntentMirrorFile(0);
        if (v18 < v12)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v19 = v8[2];
          v20 = __OFADD__(v19, v12);
          v21 = v19 + v12;
          if (v20)
          {
            goto LABEL_40;
          }

          v8[2] = v21;
        }

        goto LABEL_17;
      }
    }

    if (v12)
    {
      goto LABEL_38;
    }

LABEL_17:
    sub_1A85F1084(&v32);
    v7 += 40;
    if (!--v6)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_33:
  v22 = sub_1A88C7E58();
  sub_1A85EF0E4(v22, qword_1EB304B10);
  v23 = sub_1A88C7E38();
  v24 = sub_1A88C89C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v32 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1A85F0394(0xD000000000000011, 0x80000001A89182A0, &v32);
    _os_log_impl(&dword_1A85E5000, v23, v24, "%s Expected broadcasts to be of type RemoteIntentFileBroadcast to retrieve file data.", v25, 0xCu);
    sub_1A85F1084(v26);
    MEMORY[0x1AC571F20](v26, -1, -1);
    MEMORY[0x1AC571F20](v25, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t RemoteIntentRequestAttachmentBroadcastsResponse.broadcastEncodings.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A87643B4(uint64_t a1)
{
  v2 = sub_1A8764894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87643F0(uint64_t a1)
{
  v2 = sub_1A8764894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRequestAttachmentBroadcastsResponse.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304B60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_1A870C278(a1, a1[3]);
  sub_1A8764894();

  sub_1A88C95C8();
  v9[1] = v7;
  sub_1A870CCE0(&qword_1EB304340);
  sub_1A8743820(&qword_1EB304348, sub_1A87437CC);
  sub_1A88C92C8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t RemoteIntentRequestAttachmentBroadcastsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB304B70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8764894();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A870CCE0(&qword_1EB304340);
    sub_1A8743820(&qword_1EB304360, sub_1A8743898);
    sub_1A88C9158();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_1A85F1084(a1);
}

void *sub_1A8764780@<X0>(void *a1@<X8>)
{
  result = RemoteIntentRequestAttachmentBroadcastsResponse.auxiliaryOutput()();
  *a1 = result;
  return result;
}

unint64_t sub_1A87647D8()
{
  result = qword_1EB304B50;
  if (!qword_1EB304B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304B50);
  }

  return result;
}

uint64_t sub_1A876482C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A8764894()
{
  result = qword_1EB304B68;
  if (!qword_1EB304B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304B68);
  }

  return result;
}

unint64_t sub_1A87648E8()
{
  result = qword_1EB304B78;
  if (!qword_1EB304B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304B78);
  }

  return result;
}

unint64_t sub_1A8764940()
{
  result = qword_1EB304B80;
  if (!qword_1EB304B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304B80);
  }

  return result;
}

unint64_t sub_1A8764998()
{
  result = qword_1EB304B88;
  if (!qword_1EB304B88)
  {
    sub_1A870CD28(&qword_1EB304B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304B88);
  }

  return result;
}

unint64_t sub_1A8764A00()
{
  result = qword_1EB304B98;
  if (!qword_1EB304B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304B98);
  }

  return result;
}

unint64_t sub_1A8764A54(uint64_t a1)
{
  result = sub_1A8764A7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8764A7C()
{
  result = qword_1EB304BA0;
  if (!qword_1EB304BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BA0);
  }

  return result;
}

unint64_t sub_1A8764AD0(uint64_t a1)
{
  result = sub_1A8764AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8764AF8()
{
  result = qword_1EB304BA8;
  if (!qword_1EB304BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BA8);
  }

  return result;
}

unint64_t sub_1A8764B78()
{
  result = qword_1EB304BB0;
  if (!qword_1EB304BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BB0);
  }

  return result;
}

unint64_t sub_1A8764BCC()
{
  result = qword_1EB304BB8;
  if (!qword_1EB304BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BB8);
  }

  return result;
}

unint64_t sub_1A8764C20(uint64_t a1)
{
  result = sub_1A8764A00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8764C48(uint64_t a1)
{
  result = sub_1A8764C70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8764C70()
{
  result = qword_1EB304BC0;
  if (!qword_1EB304BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BC0);
  }

  return result;
}

unint64_t sub_1A8764CC4(uint64_t a1)
{
  result = sub_1A8764CEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8764CEC()
{
  result = qword_1EB304BC8;
  if (!qword_1EB304BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BC8);
  }

  return result;
}

uint64_t sub_1A8764D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8764DA8()
{
  result = qword_1EB304BD0;
  if (!qword_1EB304BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BD0);
  }

  return result;
}

unint64_t sub_1A8764DFC()
{
  result = qword_1EB304BD8;
  if (!qword_1EB304BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BD8);
  }

  return result;
}

unint64_t sub_1A8764E94()
{
  result = qword_1EB304BE0;
  if (!qword_1EB304BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BE0);
  }

  return result;
}

unint64_t sub_1A8764EEC()
{
  result = qword_1EB304BE8;
  if (!qword_1EB304BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BE8);
  }

  return result;
}

unint64_t sub_1A8764F44()
{
  result = qword_1EB304BF0;
  if (!qword_1EB304BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BF0);
  }

  return result;
}

unint64_t sub_1A8764F9C()
{
  result = qword_1EB304BF8;
  if (!qword_1EB304BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304BF8);
  }

  return result;
}

unint64_t sub_1A8764FF4()
{
  result = qword_1EB304C00;
  if (!qword_1EB304C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304C00);
  }

  return result;
}

uint64_t AttributeScopes.TranslationTextStyleAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A88C7038();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A87651B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A88C7E58();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8765274, 0, 0);
}

uint64_t sub_1A8765274()
{
  sub_1A88C7E48();
  v1 = sub_1A88C7E38();
  v2 = sub_1A88C89D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A85E5000, v1, v2, "translate - request text translation", v3, 2u);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }

  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v12 = *(v0 + 24);

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v12;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = sub_1A88C7098();
  *v8 = v0;
  v8[1] = sub_1A8765450;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0x74616C736E617274, 0xED0000293A5F2865, sub_1A876F7A8, v7, v9);
}

uint64_t sub_1A8765450()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8765598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A8765598()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A8765604(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1A870CCE0(&qword_1EB304C90);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1A876F7B0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8766114;
  aBlock[3] = &unk_1F1BAD458;
  v12 = _Block_copy(aBlock);

  [a2 setCompletionHandler_];
  _Block_release(v12);
  return [a3 translate_];
}

void sub_1A87657CC(void *a1, void *a2, uint64_t a3)
{
  v61 = sub_1A88C7E58();
  v6 = *(v61 - 8);
  v7 = MEMORY[0x1EEE9AC00](v61);
  v60 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v55 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v55 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v55 - v15;
  v17 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v55 - v18;
  if (sub_1A88C8858())
  {
    sub_1A88C7E48();
    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A85E5000, v20, v21, "translate - translation task is cancelled", v22, 2u);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    (*(v6 + 8))(v11, v61);
    sub_1A88C8708();
    sub_1A876E63C(&qword_1EB304C80, MEMORY[0x1E69E8550]);
    v23 = swift_allocError();
    sub_1A88C8178();
    v62 = v23;
LABEL_17:
    sub_1A870CCE0(&qword_1EB304C90);
    sub_1A88C86E8();
    return;
  }

  if (!a1)
  {
    sub_1A88C7E48();
    v39 = a2;
    v40 = sub_1A88C7E38();
    v41 = sub_1A88C89C8();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v61;
    v44 = v6;
    if (v42)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      if (a2)
      {
        v47 = a2;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        v49 = v48;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      *(v45 + 4) = v48;
      *v46 = v49;
      _os_log_impl(&dword_1A85E5000, v40, v41, "translate -  translation framework failed, error: %@", v45, 0xCu);
      sub_1A85EF638(v46, &qword_1EB306540);
      MEMORY[0x1AC571F20](v46, -1, -1);
      MEMORY[0x1AC571F20](v45, -1, -1);
    }

    (*(v44 + 8))(v14, v43);
    v50 = sub_1A88C87A8();
    (*(*(v50 - 8) + 56))(v19, 1, 1, v50);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    sub_1A885A178(0, 0, v19, &unk_1A88E83A0, v51);

    v52 = a2;
    if (!a2)
    {
      sub_1A876F010();
      v52 = swift_allocError();
      *v53 = 2;
    }

    v62 = v52;
    v54 = a2;
    goto LABEL_17;
  }

  v59 = a3;
  v24 = sub_1A88C87A8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v57 = v25 + 56;
  v58 = v26;
  v26(v19, 1, 1, v24);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 1;
  v28 = a1;
  sub_1A885A178(0, 0, v19, &unk_1A88E83A8, v27);

  v55[3] = "";
  sub_1A88C7E48();
  v29 = sub_1A88C7E38();
  v30 = sub_1A88C89D8();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v61;
  v33 = v6;
  if (v31)
  {
    v34 = v28;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1A85E5000, v29, v30, "translate - text translation succeeded", v35, 2u);
    v36 = v35;
    v28 = v34;
    MEMORY[0x1AC571F20](v36, -1, -1);
  }

  v56 = *(v33 + 8);
  v56(v16, v32);
  v37 = sub_1A88C7098();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v38 = [v28 translatedText];
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.TranslationTextStyleAttributes(0);
  sub_1A876E63C(&qword_1EB304C70, type metadata accessor for AttributeScopes.TranslationTextStyleAttributes);
  sub_1A88C70B8();
  sub_1A870CCE0(&qword_1EB304C90);
  sub_1A88C86F8();
}

void sub_1A8766114(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1A87661A0()
{
  v0 = sub_1A88C7E58();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7E48();
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89D8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A85E5000, v4, v5, "translate - translation call exceeded timeout", v6, 2u);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A8766308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1A870CCE0(&unk_1EB3090D0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A87663AC, 0, 0);
}

uint64_t sub_1A87663AC()
{
  v1 = v0[8];
  v15 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = sub_1A88C87A8();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v2;
  v8 = v4;
  v9 = v2;
  sub_1A8766C48(v1, &unk_1A88E8360, v7);
  sub_1A85EF638(v1, &unk_1EB3090D0);
  v6(v1, 1, 1, v5);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v15;
  sub_1A8766C48(v1, &unk_1A88E8370, v10);
  sub_1A85EF638(v1, &unk_1EB3090D0);
  sub_1A870CCE0(&qword_1EB304048);
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = sub_1A870CCE0(&qword_1EB304C88);
  *v12 = v0;
  v12[1] = sub_1A87665EC;

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v13);
}

uint64_t sub_1A87665EC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A87668E0;
  }

  else
  {
    v2 = sub_1A8766700;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A8766700()
{
  v1 = v0[9];
  v2 = sub_1A88C7098();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1A85EF638(v1, &qword_1EB304048);

    sub_1A876F010();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  sub_1A870CCE0(&unk_1EB3037B0);
  sub_1A88C8888();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A87668E0()
{

  sub_1A88C7098();
  sub_1A870CCE0(&unk_1EB3037B0);
  sub_1A88C8888();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A876698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A87669B0, 0, 0);
}

uint64_t sub_1A87669B0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1A88C7098();
  *v2 = v0;
  v2[1] = sub_1A8766AA8;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v4, &unk_1A88E8390, v1, sub_1A87661A0, 0, 0, 0, v3);
}

uint64_t sub_1A8766AA8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8766BE4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A8766BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8766C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1A8728D80(a1, v18 - v8, &unk_1EB3090D0);
  v10 = sub_1A88C87A8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A85EF638(v9, &unk_1EB3090D0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1A88C86D8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A88C8798();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  sub_1A88C7098();
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1A8766E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1A88C8F98();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1A88C8F88();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8766F60, 0, 0);
}

uint64_t sub_1A8766F60()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1A88C8F68();
  sub_1A88C8F78();
  v4 = *(v3 + 8);
  *(v0 + 112) = v4;
  *(v0 + 120) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_1A88C94B8();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = sub_1A876E63C(&qword_1EB303F58, MEMORY[0x1E69E8820]);
  *v5 = v0;
  v5[1] = sub_1A87670C0;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return MEMORY[0x1EEE6DA68](v7, v0 + 16, v8, v9, v6);
}

uint64_t sub_1A87670C0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[14];
  if (v0)
  {
    v4 = v2[13];
    v5 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v4, v5);
    v6 = sub_1A8767320;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[10];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3(v7, v8);
    v6 = sub_1A876723C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A876723C()
{
  sub_1A88C8708();
  sub_1A876E63C(&qword_1EB304C80, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_1A88C8178();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8767320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A87673A0()
{
  v1 = sub_1A88C82A8();
  v2 = sub_1A88C82A8();
  v3 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  *(v0 + 16) = v3 ^ 1;
  v4 = sub_1A8738BDC(&unk_1F1BA94C8);
  sub_1A870CCE0(&qword_1EB303B70);
  swift_arrayDestroy();
  *(v0 + 32) = v4;
  sub_1A88C6C38();
  if (MEMORY[0x1E6982C30])
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E6982C30]) init];
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 24) = v5;
  return v0;
}

uint64_t sub_1A87674AC()
{
  type metadata accessor for IMTranslator(0);
  v0 = swift_allocObject();
  result = sub_1A87673A0();
  qword_1EB300760 = v0;
  return result;
}

uint64_t static IMTranslator.shared.getter()
{
  if (qword_1EB300758 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A8767548()
{
  v1 = v0;
  v39 = sub_1A88C7E58();
  v2 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A88C74B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1A88C6C38();
  v9 = sub_1A88C7E48();
  MEMORY[0x1EEE9AC00](v9);
  v10 = v34 - v8;
  v42 = v6;
  v11 = *(v6 + 16);
  v40 = v34 - v8;
  v11(v34 - v8, v34 - v8, v5);

  v41 = v4;
  v12 = sub_1A88C7E38();
  LODWORD(v4) = sub_1A88C89A8();

  v38 = v4;
  v13 = os_log_type_enabled(v12, v4);
  v14 = &OBJC_IVAR___IMDirectoryContents__rootPath;
  if (v13)
  {
    v15 = swift_slowAlloc();
    v37 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    v34[1] = v34;
    v43[0] = v17;
    *v16 = 136315394;
    MEMORY[0x1EEE9AC00](v17);
    v18 = v34 - v8;
    v19 = OBJC_IVAR____TtC17IMSharedUtilities12IMTranslator_currentLogIdentifier;
    swift_beginAccess();
    v11(v34 - v8, (v1 + v19), v5);
    sub_1A876F978(&qword_1EB304C20, MEMORY[0x1EEE788B0]);
    v20 = sub_1A88C9348();
    v22 = v21;
    v35 = v12;
    v23 = v1;
    v24 = *(v42 + 8);
    v24(v18, v5);
    v25 = sub_1A85F0394(v20, v22, v43);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    v26 = sub_1A88C9348();
    v28 = v27;
    v24(v10, v5);
    v29 = sub_1A85F0394(v26, v28, v43);

    *(v16 + 14) = v29;
    v14 = &OBJC_IVAR___IMDirectoryContents__rootPath;
    v30 = v35;
    _os_log_impl(&dword_1A85E5000, v35, v38, "translation log identifier changing from %s to %s", v16, 0x16u);
    v31 = v36;
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v31, -1, -1);
    MEMORY[0x1AC571F20](v16, -1, -1);

    (*(v37 + 8))(v41, v39);
  }

  else
  {

    (*(v42 + 8))(v34 - v8, v5);
    (*(v2 + 8))(v41, v39);
    v23 = v1;
  }

  v32 = *(v14 + 237);
  swift_beginAccess();
  (*(v42 + 40))(v23 + v32, v40, v5);
  return swift_endAccess();
}

uint64_t sub_1A87679B8(void *a1)
{
  v1 = [a1 string];
  v2 = sub_1A88C82E8();
  v4 = v3;

  v18 = v2;
  v19 = v4;
  v5 = sub_1A88C6ED8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C6EB8();
  sub_1A8722620();
  v9 = sub_1A88C8C58();
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  v12 = v9;
  v18 = v9;
  v19 = v11;
  v13 = sub_1A88C82A8();
  v14 = sub_1A88C8C38();
  v16 = v15;

  if (!v16)
  {
    return v12;
  }

  return v14;
}

uint64_t sub_1A8767B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A8767B84, 0, 0);
}

uint64_t sub_1A8767B84()
{
  type metadata accessor for IMTranslator(0);
  if (static IMTranslator.isSupported()())
  {
    v1 = *(v0[11] + 24);
    v0[12] = v1;
    if (v1)
    {
      v2 = v1;
      sub_1A876DE5C();
      v19 = v0[6];
      v0[13] = *(*(sub_1A870CCE0(&qword_1EB304C28) - 8) + 64);
      v20 = swift_task_alloc();
      v0[14] = v20;
      sub_1A870CCE0(&unk_1EB306530);
      v21 = swift_allocObject();
      v0[15] = v21;
      *(v21 + 16) = xmmword_1A88E14F0;
      v22 = [v19 string];
      v23 = sub_1A88C82E8();
      v25 = v24;

      *(v21 + 32) = v23;
      *(v21 + 40) = v25;
      v26 = swift_task_alloc();
      v0[16] = v26;
      *v26 = v0;
      v26[1] = sub_1A8768010;

      return sub_1A87C6EB4(v20, v21);
    }

    v10 = sub_1A88C7E58();
    v11 = *(v10 - 8);
    v12 = swift_task_alloc();
    sub_1A88C7E48();
    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A85E5000, v13, v14, "translate - missing translator", v15, 2u);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }

    (*(v11 + 8))(v12, v10);

    sub_1A876F010();
    swift_allocError();
    *v16 = 0;
  }

  else
  {
    v3 = sub_1A88C7E58();
    v4 = *(v3 - 8);
    v5 = swift_task_alloc();
    sub_1A88C7E48();
    v6 = sub_1A88C7E38();
    v7 = sub_1A88C89C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A85E5000, v6, v7, "translate - not supported", v8, 2u);
      MEMORY[0x1AC571F20](v8, -1, -1);
    }

    (*(v4 + 8))(v5, v3);

    sub_1A876F010();
    swift_allocError();
    *v9 = 1;
  }

  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1A8768010()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8768128, 0, 0);
}

uint64_t sub_1A8768128()
{
  v1 = v0[14];
  v2 = sub_1A88C75E8();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v5 = swift_task_alloc();
  sub_1A8728D80(v1, v5, &qword_1EB304C28);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_1A85EF638(v5, &qword_1EB304C28);
  }

  else
  {
    (*(v3 + 32))(v4, v5, v2);

    v6 = sub_1A88C74D8();
    v8 = v7;
    if (v6 == sub_1A88C74D8() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_1A88C9398();

      if ((v11 & 1) == 0)
      {
        v12 = objc_allocWithZone(MEMORY[0x1E6982C18]);
        v13 = sub_1A88C7528();
        v14 = sub_1A88C7528();
        v15 = [v12 initWithSourceLocale:v13 targetLocale:v14];

        LOBYTE(v14) = [v15 isVariantPair];
        if ((v14 & 1) == 0)
        {
          v16 = sub_1A88C7E58();
          v17 = *(v16 - 8);
          v18 = swift_task_alloc();
          sub_1A88C7E48();
          v19 = sub_1A88C7E38();
          v20 = sub_1A88C89C8();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_1A85E5000, v19, v20, "translate - text detected as language other than sourceLocale", v21, 2u);
            MEMORY[0x1AC571F20](v21, -1, -1);
          }

          v22 = v0[14];
          v23 = v0[12];

          (*(v17 + 8))(v18, v16);

          sub_1A876F010();
          swift_allocError();
          *v24 = 0;
          swift_willThrow();

          (*(v3 + 8))(v4, v2);
          sub_1A85EF638(v22, &qword_1EB304C28);

          goto LABEL_23;
        }
      }
    }

    (*(v3 + 8))(v4, v2);
  }

  if (MEMORY[0x1E6982C28])
  {
    v25 = v0[11];
    v26 = v0[6];
    v27 = objc_allocWithZone(MEMORY[0x1E6982C28]);
    v28 = sub_1A88C7528();
    v29 = sub_1A88C7528();
    v30 = [v27 initWithSourceLocale:v28 targetLocale:v29];
    v0[17] = v30;

    v31 = v30;
    IMSetRequiresMultiParagraphPathway(v31, 1);
    [v31 setForcedOfflineTranslation_];
    [v31 setTaskHint_];
    [v31 setText_];
    if (IMIsRunningInMessages())
    {
      v32 = v0[11];
      v33 = sub_1A88C74B8();
      v34 = *(v33 - 8);
      v35 = swift_task_alloc();
      v36 = OBJC_IVAR____TtC17IMSharedUtilities12IMTranslator_currentLogIdentifier;
      swift_beginAccess();
      (*(v34 + 16))(v35, v32 + v36, v33);
      v37 = sub_1A88C7498();
      (*(v34 + 8))(v35, v33);

      [v31 setLogIdentifier_];
    }

    v38 = v0[12];
    v40 = v0[9];
    v39 = v0[10];
    v41 = sub_1A88C7098();
    v42 = swift_task_alloc();
    v0[18] = v42;
    v43 = swift_task_alloc();
    v0[19] = v43;
    v43[2] = v38;
    v43[3] = v31;
    v43[4] = v40;
    v43[5] = v39;
    v44 = swift_task_alloc();
    v0[20] = v44;
    *v44 = v0;
    v44[1] = sub_1A8768970;

    return MEMORY[0x1EEE6DD58](v42, v41, v41, 0, 0, &unk_1A88E8318, v43, v41);
  }

  v45 = sub_1A88C7E58();
  v46 = *(v45 - 8);
  v47 = swift_task_alloc();
  sub_1A88C7E48();
  v48 = sub_1A88C7E38();
  v49 = sub_1A88C89C8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1A85E5000, v48, v49, "translate - missing symbol _LTTextTranslationRequest", v50, 2u);
    MEMORY[0x1AC571F20](v50, -1, -1);
  }

  v51 = v0[14];
  v52 = v0[12];

  (*(v46 + 8))(v47, v45);

  sub_1A876F010();
  swift_allocError();
  *v53 = 1;
  swift_willThrow();

  sub_1A85EF638(v51, &qword_1EB304C28);
LABEL_23:

  v54 = v0[1];

  return v54();
}

uint64_t sub_1A8768970()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A876904C;
  }

  else
  {
    *(v2 + 176) = sub_1A876F12C();

    v3 = sub_1A8768A9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A8768A9C()
{
  v1 = *(v0 + 168);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.TranslationTextStyleAttributes(0);
  sub_1A876E63C(&qword_1EB304C70, type metadata accessor for AttributeScopes.TranslationTextStyleAttributes);
  v2 = sub_1A88C8A98();
  if (v1)
  {

    *(v0 + 40) = v1;
    v4 = sub_1A88C8708();
    v5 = *(v4 - 8);
    v6 = swift_task_alloc();
    v7 = v1;
    sub_1A870CCE0(&unk_1EB3037B0);
    if (swift_dynamicCast())
    {

      v8 = swift_task_alloc();
      (*(v5 + 32))(v8, v6, v4);
      v32 = sub_1A88C7E58();
      v33 = *(v32 - 8);
      v9 = swift_task_alloc();
      sub_1A88C7E48();
      v10 = swift_task_alloc();
      v11 = *(v5 + 16);
      v34 = v8;
      v11(v10, v8, v4);
      v12 = sub_1A88C7E38();
      v13 = sub_1A88C89C8();
      if (os_log_type_enabled(v12, v13))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        sub_1A876E63C(&qword_1EB304C80, MEMORY[0x1E69E8550]);
        swift_allocError();
        v11(v14, v10, v4);
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = *(v5 + 8);
        v16(v10, v4);

        *(v30 + 4) = v15;
        *v31 = v15;
        v17 = v13;
        v18 = v16;
        _os_log_impl(&dword_1A85E5000, v12, v17, "translate - result timed out with cancellation: %@", v30, 0xCu);
        sub_1A85EF638(v31, &qword_1EB306540);
        MEMORY[0x1AC571F20](v31, -1, -1);
        MEMORY[0x1AC571F20](v30, -1, -1);

        (*(v33 + 8))(v9, v32);
      }

      else
      {

        v18 = *(v5 + 8);
        v18(v10, v4);
        (*(v33 + 8))(v9, v32);
      }

      v21 = *(v0 + 136);
      v22 = *(v0 + 112);
      v23 = *(v0 + 96);

      sub_1A876F010();
      swift_allocError();
      *v24 = 5;
      swift_willThrow();

      v18(v34, v4);
      sub_1A85EF638(v22, &qword_1EB304C28);
    }

    else
    {
      v19 = *(v0 + 136);
      v20 = *(v0 + 96);
      sub_1A85EF638(*(v0 + 112), &qword_1EB304C28);
    }

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v3 = *(v0 + 48);

    sub_1A876F178(v2, v3);
    v27 = *(v0 + 136);
    v28 = *(v0 + 96);
    sub_1A85EF638(*(v0 + 112), &qword_1EB304C28);

    v29 = *(v0 + 8);

    return v29(v2);
  }
}

uint64_t sub_1A876904C()
{

  v1 = *(v0 + 168);
  *(v0 + 40) = v1;
  v2 = sub_1A88C8708();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  v5 = v1;
  sub_1A870CCE0(&unk_1EB3037B0);
  if (swift_dynamicCast())
  {

    v6 = swift_task_alloc();
    (*(v3 + 32))(v6, v4, v2);
    v7 = sub_1A88C7E58();
    v28 = *(v7 - 8);
    v29 = v7;
    v8 = swift_task_alloc();
    sub_1A88C7E48();
    v9 = swift_task_alloc();
    v10 = *(v3 + 16);
    v30 = v6;
    v10(v9, v6, v2);
    v11 = sub_1A88C7E38();
    v12 = sub_1A88C89C8();
    if (os_log_type_enabled(v11, v12))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      sub_1A876E63C(&qword_1EB304C80, MEMORY[0x1E69E8550]);
      swift_allocError();
      v10(v13, v9, v2);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = *(v3 + 8);
      v15(v9, v2);

      *(v26 + 4) = v14;
      *v27 = v14;
      v16 = v12;
      v17 = v15;
      _os_log_impl(&dword_1A85E5000, v11, v16, "translate - result timed out with cancellation: %@", v26, 0xCu);
      sub_1A85EF638(v27, &qword_1EB306540);
      MEMORY[0x1AC571F20](v27, -1, -1);
      MEMORY[0x1AC571F20](v26, -1, -1);

      (*(v28 + 8))(v8, v29);
    }

    else
    {

      v17 = *(v3 + 8);
      v17(v9, v2);
      (*(v28 + 8))(v8, v29);
    }

    v20 = *(v0 + 136);
    v21 = *(v0 + 112);
    v22 = *(v0 + 96);

    sub_1A876F010();
    swift_allocError();
    *v23 = 5;
    swift_willThrow();

    v17(v30, v2);
    sub_1A85EF638(v21, &qword_1EB304C28);
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(v0 + 96);
    sub_1A85EF638(*(v0 + 112), &qword_1EB304C28);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1A87694F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A8769518, 0, 0);
}

uint64_t sub_1A8769518()
{
  v1 = v0[12];
  v2 = sub_1A88C75E8();
  v0[14] = v2;
  v3 = *(v2 - 8);
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  sub_1A870CCE0(&qword_1EB304C28);
  v5 = swift_task_alloc();
  sub_1A8728D80(v1, v5, &qword_1EB304C28);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_1A85EF638(v5, &qword_1EB304C28);

    v6 = swift_task_alloc();
    v0[21] = v6;
    if (qword_1EB3005E8 != -1)
    {
      swift_once();
    }

    v7 = *(off_1EB3005F0 + 5);
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A88C8A58();

    v8 = *(v0[8] + 16);

    if (v8)
    {
      if (qword_1EB302180 != -1)
      {
        swift_once();
      }

      v9 = sub_1A85EF0E4(v2, qword_1EB304C08);
      (*(v3 + 16))(v6, v9, v2);
    }

    else
    {
      sub_1A88C7598();
    }

    v15 = swift_task_alloc();
    v0[22] = v15;
    *v15 = v0;
    v15[1] = sub_1A8769A30;
    v12 = v0[11];
    v13 = v0[10];
    v14 = v6;
  }

  else
  {
    v10 = *(v3 + 32);
    v0[17] = v10;
    v0[18] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v4, v5, v2);

    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_1A8769894;
    v12 = v0[11];
    v13 = v0[10];
    v14 = v4;
  }

  return sub_1A8767B5C(v13, v12, v14, 0x8AC7230489E80000, 0);
}

uint64_t sub_1A8769894(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_1A8769BD4;
  }

  else
  {
    v4 = sub_1A87699B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A87699B0()
{
  (*(v0 + 136))(*(v0 + 72), *(v0 + 128), *(v0 + 112));

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A8769A30(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[23] = v1;

  if (v1)
  {
    v4 = sub_1A8769C54;
  }

  else
  {
    v4 = sub_1A8769B4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A8769B4C()
{
  (*(v0[15] + 32))(v0[9], v0[21], v0[14]);

  v1 = v0[6];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A8769BD4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A8769C54()
{
  (*(v0[15] + 8))(v0[21], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t static IMTranslator.usersPreferredLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3005E8 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EB3005F0 + 5);
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A88C8A58();

  v3 = *(v7 + 16);

  if (!v3)
  {
    return sub_1A88C7598();
  }

  if (qword_1EB302180 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C75E8();
  v5 = sub_1A85EF0E4(v4, qword_1EB304C08);
  return (*(*(v4 - 8) + 16))(a1, v5, v4);
}

uint64_t sub_1A8769E24(uint64_t a1, uint64_t a2, char a3)
{
  v3[3] = a1;
  v6 = sub_1A88C7E58();
  v3[4] = v6;
  v3[5] = *(v6 - 8);
  v3[6] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB304C30);
  v3[7] = swift_task_alloc();
  v7 = sub_1A88C75E8();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB304C28);
  v8 = swift_task_alloc();
  v3[11] = v8;
  v9 = swift_task_alloc();
  v3[12] = v9;
  *v9 = v3;
  v9[1] = sub_1A876A000;

  return sub_1A876A568(v8, a2, a3);
}

uint64_t sub_1A876A000()
{

  return MEMORY[0x1EEE6DFA0](sub_1A876A0FC, 0, 0);
}

uint64_t sub_1A876A0FC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];
    sub_1A85EF638(v1, &qword_1EB304C28);

    (*(v3 + 56))(v4, 1, 1, v2);
    goto LABEL_13;
  }

  v5 = *(v3 + 32);
  v5(v0[10], v1, v2);

  if (qword_1EB3005E8 != -1)
  {
    swift_once();
  }

  v6 = *(off_1EB3005F0 + 4);
  sub_1A870CCE0(&qword_1EB304C38);
  sub_1A88C8A58();

  v7 = v0[2];
  v8 = sub_1A88C74D8();
  if (!*(v7 + 16))
  {

    goto LABEL_9;
  }

  v10 = sub_1A85F5F40(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_9:

    v18 = v0[7];
    v19 = type metadata accessor for TranslationLanguage();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    sub_1A85EF638(v18, &qword_1EB304C30);
    sub_1A88C7E48();
    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A85E5000, v20, v21, "detection - detected locale is not supported", v22, 2u);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];
    v27 = v0[5];
    v26 = v0[6];
    v29 = v0[3];
    v28 = v0[4];

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    (*(v24 + 56))(v29, 1, 1, v25);
    goto LABEL_12;
  }

  v13 = v0[9];
  v14 = v0[7];
  v33 = v0[8];
  v34 = v0[10];
  v32 = v0[3];
  v15 = *(v7 + 56);
  v16 = type metadata accessor for TranslationLanguage();
  v17 = *(v16 - 8);
  sub_1A876E4B4(v15 + *(v17 + 72) * v10, v14);

  (*(v17 + 56))(v14, 0, 1, v16);
  sub_1A85EF638(v14, &qword_1EB304C30);
  v5(v32, v34, v33);
  (*(v13 + 56))(v32, 0, 1, v33);
LABEL_12:

LABEL_13:

  v30 = v0[1];

  return v30();
}

uint64_t sub_1A876A568(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 264) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  v4 = sub_1A88C7E58();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A876A674, 0, 0);
}

void sub_1A876A674()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v9 = *(v6 - 1);
        v8 = *v6;

        if (sub_1A88C8398() >= 3)
        {
          break;
        }

        ++v7;
        v6 += 2;
        if (v3 == v2)
        {
          goto LABEL_16;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A871CE50(0, *(v5 + 16) + 1, 1);
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A871CE50((v10 > 1), v11 + 1, 1);
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v0[17] = v5;
  v13 = *(v5 + 16);
  v0[18] = v13;
  if (v13)
  {
    v0[19] = *(*(sub_1A870CCE0(&qword_1EB304C28) - 8) + 64);
    v14 = swift_task_alloc();
    v0[20] = v14;
    v15 = swift_task_alloc();
    v0[21] = v15;
    *v15 = v0;
    v15[1] = sub_1A876AA10;

    sub_1A87C6EB4(v14, v5);
  }

  else
  {

    sub_1A88C7E48();
    v16 = sub_1A88C7E38();
    v17 = sub_1A88C89D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A85E5000, v16, v17, "detection - no strings of minimum character count", v18, 2u);
      MEMORY[0x1AC571F20](v18, -1, -1);
    }

    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    v22 = v0[6];

    (*(v20 + 8))(v19, v21);
    v23 = sub_1A88C75E8();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);

    v24 = v0[1];

    v24();
  }
}

uint64_t sub_1A876AA10()
{

  return MEMORY[0x1EEE6DFA0](sub_1A876AB0C, 0, 0);
}

uint64_t sub_1A876AB0C()
{
  v1 = *(v0 + 160);
  v2 = sub_1A88C75E8();
  *(v0 + 176) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 184) = v3;
  *(v0 + 192) = *(v3 + 64);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  v6 = swift_task_alloc();
  sub_1A8728D80(v1, v6, &qword_1EB304C28);
  v7 = *(v4 + 48);
  *(v0 + 208) = v7;
  *(v0 + 216) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v6, 1, v2) == 1)
  {
    v8 = v4;

    sub_1A85EF638(v6, &qword_1EB304C28);

    sub_1A88C7E48();
    v9 = sub_1A88C7E38();
    v10 = sub_1A88C89D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A85E5000, v9, v10, "detection - no locale detected", v11, 2u);
      MEMORY[0x1AC571F20](v11, -1, -1);
    }

    v12 = *(v0 + 160);
    v13 = *(v0 + 88);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v16 = *(v0 + 48);

    (*(v15 + 8))(v13, v14);
    sub_1A85EF638(v12, &qword_1EB304C28);
    (*(v8 + 56))(v16, 1, 1, v2);
    goto LABEL_45;
  }

  v75 = v4;
  v76 = v2;
  v17 = *(v4 + 32);
  *(v0 + 224) = v17;
  *(v0 + 232) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v73 = v17;
  v17(v5, v6, v2);

  v74 = v5;
  *(v0 + 16) = sub_1A88C74D8();
  *(v0 + 24) = v18;
  v19 = swift_task_alloc();
  *(v19 + 16) = v0 + 16;
  v20 = 0;
  v21 = sub_1A85EF698(sub_1A876E518, v19, &unk_1F1BA9788);
  swift_arrayDestroy();

  result = *(v0 + 136);
  if (v21)
  {

    sub_1A88C7E48();
    v23 = sub_1A88C7E38();
    v24 = sub_1A88C89D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A85E5000, v23, v24, "detection - locale detected, short string accurate ", v25, 2u);
      MEMORY[0x1AC571F20](v25, -1, -1);
    }

    v26 = *(v0 + 160);
    v27 = *(v0 + 128);
LABEL_43:
    v68 = *(v0 + 64);
    v69 = *(v0 + 72);
    v70 = *(v0 + 48);

    (*(v69 + 8))(v27, v68);
    sub_1A85EF638(v26, &qword_1EB304C28);
    v73(v70, v74, v76);
    (*(v75 + 56))(v70, 0, 1, v76);
LABEL_44:

LABEL_45:

    v71 = *(v0 + 8);

    return v71();
  }

  v28 = MEMORY[0x1E69E7CC0];
  *(v0 + 240) = MEMORY[0x1E69E7CC0];
  if (*(v0 + 144))
  {
    v29 = 0;
    v78 = result + 32;
    v79 = v0 + 32;
    v30 = v28;
    do
    {
      v72 = v30;
      while (1)
      {
        if (v29 >= *(*(v0 + 136) + 16))
        {
          __break(1u);
          return result;
        }

        v31 = (v78 + 16 * v29);
        v32 = *v31;
        v33 = v31[1];
        *(v0 + 32) = 32;
        *(v0 + 40) = 0xE100000000000000;
        v34 = swift_task_alloc();
        *(v34 + 16) = v79;
        swift_bridgeObjectRetain_n();
        v77 = v32;
        v36 = sub_1A876DA44(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A876FA68, v34, v32, v33, v35);

        v37 = *(v36 + 16);
        if (v37)
        {
          v80 = v33;
          v81 = v20;
          v38 = v0;
          sub_1A871CE50(0, v37, 0);
          v39 = v28;
          v40 = v36 + 56;
          do
          {

            v41 = sub_1A88C8BF8();
            v43 = v42;

            v45 = *(v39 + 16);
            v44 = *(v39 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1A871CE50((v44 > 1), v45 + 1, 1);
            }

            *(v39 + 16) = v45 + 1;
            v46 = v39 + 16 * v45;
            *(v46 + 32) = v41;
            *(v46 + 40) = v43;
            v40 += 32;
            --v37;
          }

          while (v37);

          v0 = v38;
          v33 = v80;
          v20 = v81;
          v28 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v39 = v28;
        }

        ++v29;
        v47 = sub_1A8737F40(v39);

        v48 = *(v47 + 16);

        if (v48 >= 3)
        {
          break;
        }

        v49 = *(v0 + 144);

        if (v29 == v49)
        {
          v30 = v72;
          goto LABEL_30;
        }
      }

      v30 = v72;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A871CE50(0, *(v72 + 16) + 1, 1);
        v30 = v72;
      }

      v51 = *(v30 + 16);
      v50 = *(v30 + 24);
      if (v51 >= v50 >> 1)
      {
        result = sub_1A871CE50((v50 > 1), v51 + 1, 1);
        v30 = v72;
      }

      *(v30 + 16) = v51 + 1;
      v52 = v30 + 16 * v51;
      *(v52 + 32) = v77;
      *(v52 + 40) = v33;
      *(v0 + 240) = v30;
    }

    while (v29 != *(v0 + 144));
  }

  else
  {
    v30 = v28;
  }

LABEL_30:
  v53 = v30;
  v54 = *(v30 + 16);
  if (!v54)
  {

    sub_1A88C7E48();
    v58 = sub_1A88C7E38();
    v59 = sub_1A88C89D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1A85E5000, v58, v59, "detection - no strings of minimum word count", v60, 2u);
      MEMORY[0x1AC571F20](v60, -1, -1);
    }

    v61 = *(v0 + 160);
    v62 = *(v0 + 96);
    v63 = *(v0 + 64);
    v64 = *(v0 + 72);
    v65 = *(v0 + 48);

    (*(v64 + 8))(v62, v63);
    (*(v75 + 8))(v74, v76);
    sub_1A85EF638(v61, &qword_1EB304C28);
    (*(v75 + 56))(v65, 1, 1, v76);
    goto LABEL_44;
  }

  if (*(v0 + 264) != 1)
  {

    goto LABEL_40;
  }

  v55 = *(*(v0 + 136) + 16);

  if (v54 == v55)
  {
LABEL_40:

    sub_1A88C7E48();
    v23 = sub_1A88C7E38();
    v66 = sub_1A88C89D8();
    if (os_log_type_enabled(v23, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1A85E5000, v23, v66, "detection - locale detected", v67, 2u);
      MEMORY[0x1AC571F20](v67, -1, -1);
    }

    v26 = *(v0 + 160);
    v27 = *(v0 + 104);
    goto LABEL_43;
  }

  v56 = swift_task_alloc();
  *(v0 + 248) = v56;
  v57 = swift_task_alloc();
  *(v0 + 256) = v57;
  *v57 = v0;
  v57[1] = sub_1A876B524;

  return sub_1A87C6EB4(v56, v53);
}

uint64_t sub_1A876B524()
{

  return MEMORY[0x1EEE6DFA0](sub_1A876B63C, 0, 0);
}

uint64_t sub_1A876B63C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = swift_task_alloc();
  v5 = swift_task_alloc();
  sub_1A8728D80(v1, v5, &qword_1EB304C28);
  if (v2(v5, 1, v3) == 1)
  {
    sub_1A85EF638(v5, &qword_1EB304C28);

    sub_1A88C7E48();
    v6 = sub_1A88C7E38();
    v7 = sub_1A88C89D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A85E5000, v6, v7, "detection - no locale detected meeting word count", v8, 2u);
      MEMORY[0x1AC571F20](v8, -1, -1);
    }

    v9 = *(v0 + 248);
    v10 = *(v0 + 200);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 160);
    v14 = *(v0 + 112);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v33 = *(v0 + 48);

    (*(v16 + 8))(v14, v15);
    sub_1A85EF638(v9, &qword_1EB304C28);
    (*(v11 + 8))(v10, v12);
    sub_1A85EF638(v13, &qword_1EB304C28);
    (*(v11 + 56))(v33, 1, 1, v12);
  }

  else
  {
    v34 = v4;
    (*(v0 + 224))(v4, v5, *(v0 + 176));

    sub_1A88C7E48();
    v17 = sub_1A88C7E38();
    v18 = sub_1A88C89D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A85E5000, v17, v18, "detection - locale detected, after meeting word count", v19, 2u);
      MEMORY[0x1AC571F20](v19, -1, -1);
    }

    v20 = *(v0 + 248);
    v32 = *(v0 + 224);
    v21 = *(v0 + 200);
    v22 = v17;
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 160);
    v26 = *(v0 + 120);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 48);

    (*(v27 + 8))(v26, v28);
    sub_1A85EF638(v20, &qword_1EB304C28);
    (*(v23 + 8))(v21, v24);
    sub_1A85EF638(v25, &qword_1EB304C28);
    v32(v29, v34, v24);
    (*(v23 + 56))(v29, 0, 1, v24);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A876BA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A876BAB8, 0, 0);
}

uint64_t sub_1A876BAB8()
{
  v1 = v0[12];
  v2 = sub_1A88C75E8();
  v0[16] = v2;
  v3 = *(v2 - 8);
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  sub_1A870CCE0(&qword_1EB304C28);
  v5 = swift_task_alloc();
  sub_1A8728D80(v1, v5, &qword_1EB304C28);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_1A85EF638(v5, &qword_1EB304C28);

    v6 = swift_task_alloc();
    v0[23] = v6;
    if (qword_1EB3005E8 != -1)
    {
      swift_once();
    }

    v7 = *(off_1EB3005F0 + 5);
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A88C8A58();

    v8 = *(v0[8] + 16);

    if (v8)
    {
      if (qword_1EB302180 != -1)
      {
        swift_once();
      }

      v9 = sub_1A85EF0E4(v2, qword_1EB304C08);
      (*(v3 + 16))(v6, v9, v2);
    }

    else
    {
      sub_1A88C7598();
    }

    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_1A876BFC4;
    v12 = v0[14];
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[10];
    v16 = v6;
  }

  else
  {
    v10 = *(v3 + 32);
    v0[19] = v10;
    v0[20] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v4, v5, v2);

    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_1A876BE28;
    v12 = v0[14];
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[10];
    v16 = v4;
  }

  return sub_1A8767B5C(v15, v16, v14, v13, v12);
}

uint64_t sub_1A876BE28(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[22] = v1;

  if (v1)
  {
    v4 = sub_1A876C168;
  }

  else
  {
    v4 = sub_1A876BF44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A876BF44()
{
  (*(v0 + 152))(*(v0 + 72), *(v0 + 144), *(v0 + 128));

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A876BFC4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[25] = v1;

  if (v1)
  {
    v4 = sub_1A876C1E8;
  }

  else
  {
    v4 = sub_1A876C0E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A876C0E0()
{
  (*(v0[17] + 32))(v0[9], v0[23], v0[16]);

  v1 = v0[6];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A876C168()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A876C1E8()
{
  (*(v0[17] + 8))(v0[23], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A876C268()
{
  v0 = sub_1A88C75E8();
  sub_1A85EFC04(v0, qword_1EB304C08);
  v1 = sub_1A85EF0E4(v0, qword_1EB304C08);
  return sub_1A876C2B4(v1);
}

uint64_t sub_1A876C2B4@<X0>(char *a1@<X8>)
{
  if (MEMORY[0x1E6982C30])
  {
    if (qword_1EB3005E8 != -1)
    {
      swift_once();
    }

    v94 = a1;
    v2 = *(off_1EB3005F0 + 5);
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A88C8A58();

    v3 = v97;
    v4 = *(v97 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v97 = MEMORY[0x1E69E7CC0];
      sub_1A871D6B0(0, v4, 0);
      v6 = v97;
      v7 = sub_1A88C75E8();
      v96 = v7;
      v8 = *(v7 - 8);
      v9 = *(v8 + 64);
      v95 = v8 + 32;
      v93 = v3;
      v10 = v3 + 40;
      do
      {
        MEMORY[0x1EEE9AC00](v7);

        sub_1A88C74C8();
        v97 = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A871D6B0(v11 > 1, v12 + 1, 1);
          v6 = v97;
        }

        *(v6 + 16) = v12 + 1;
        v7 = (*(v8 + 32))(v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v96);
        v10 += 16;
        --v4;
      }

      while (v4);

      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v91 = v6;
    v21 = sub_1A88C7518();
    v22 = *(v21 + 16);
    if (v22)
    {
      v97 = v5;
      sub_1A871D6B0(0, v22, 0);
      v23 = v97;
      v24 = sub_1A88C75E8();
      v96 = v24;
      v25 = *(v24 - 8);
      v26 = *(v25 + 64);
      v95 = v25 + 32;
      v93 = v21;
      v27 = v21 + 40;
      do
      {
        MEMORY[0x1EEE9AC00](v24);

        sub_1A88C74C8();
        v97 = v23;
        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1A871D6B0(v28 > 1, v29 + 1, 1);
          v23 = v97;
        }

        *(v23 + 16) = v29 + 1;
        v24 = (*(v25 + 32))(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v29, v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v96);
        v27 += 16;
        --v22;
      }

      while (v22);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v30 = sub_1A88C7E58();
    v31 = *(v30 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x1EEE9AC00](v30);
    sub_1A88C7E48();

    v33 = sub_1A88C7E38();
    v34 = sub_1A88C89A8();

    v35 = os_log_type_enabled(v33, v34);
    v93 = v31;
    v88 = v32;
    v89 = "";
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v96 = v86;
      v38 = v31;
      v39 = v37;
      v97 = v37;
      *v36 = 136315138;
      v40 = sub_1A88C75E8();
      v41 = MEMORY[0x1AC56EED0](v23, v40);
      v43 = sub_1A85F0394(v41, v42, &v97);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_1A85E5000, v33, v34, "preferredLocales: %s", v36, 0xCu);
      sub_1A85F1084(v39);
      MEMORY[0x1AC571F20](v39, -1, -1);
      MEMORY[0x1AC571F20](v36, -1, -1);

      v90 = *(v38 + 8);
    }

    else
    {

      v90 = *(v31 + 8);
    }

    v90(v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
    v44 = sub_1A870CCE0(&qword_1EB304C28);
    v92 = v86;
    v45 = *(*(v44 - 8) + 64);
    MEMORY[0x1EEE9AC00](v44 - 8);
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
    v96 = (v86 - v46);
    v47 = objc_opt_self();
    v48 = sub_1A88C75E8();
    v49 = sub_1A88C85E8();

    v50 = sub_1A88C85E8();

    v51 = [v47 lt:v49 bestMatchForPreferredLocales:v50 fromSupportedLocales:?];

    MEMORY[0x1EEE9AC00](v52);
    v95 = v30;
    if (v51)
    {
      sub_1A88C7548();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = *(v48 - 8);
    (*(v54 + 56))(v86 - v46, v53, 1, v48);
    v55 = v96;
    v56 = sub_1A876F908(v86 - v46, v96);
    v57 = *(v54 + 64);
    v58 = MEMORY[0x1EEE9AC00](v56);
    v87 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
    v59 = v86 - v87;
    MEMORY[0x1EEE9AC00](v58);
    v60 = v86 - v46;
    sub_1A8728D80(v55, v86 - v46, &qword_1EB304C28);
    v91 = v54;
    v61 = v48;
    if ((*(v54 + 48))(v86 - v46, 1, v48) == 1)
    {
      v62 = sub_1A85EF638(v86 - v46, &qword_1EB304C28);
      MEMORY[0x1EEE9AC00](v62);
      v64 = v86 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C7E48();
      v65 = sub_1A88C7E38();
      v66 = sub_1A88C89C8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1A85E5000, v65, v66, "No usersPreferredLanguage was found, this should be impossible", v67, 2u);
        MEMORY[0x1AC571F20](v67, -1, -1);
      }

      v90(v64, v95);
      sub_1A88C7598();
      return sub_1A85EF638(v96, &qword_1EB304C28);
    }

    else
    {
      v86[1] = v86;
      v68 = v91;
      v69 = v91 + 32;
      v70 = *(v91 + 32);
      v71 = v70(v59, v60, v61);
      v86[0] = v86;
      MEMORY[0x1EEE9AC00](v71);
      v73 = v86 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      v74 = sub_1A88C7E48();
      v89 = v86;
      MEMORY[0x1EEE9AC00](v74);
      v75 = v86 - v87;
      (*(v68 + 16))(v86 - v87, v59, v61);
      v76 = sub_1A88C7E38();
      v77 = sub_1A88C89A8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v97 = v87;
        *v78 = 136315138;
        sub_1A876F978(&qword_1EB304C98, MEMORY[0x1EEE789D8]);
        v79 = sub_1A88C9348();
        v88 = v69;
        v80 = v59;
        v81 = v70;
        v83 = v82;
        (*(v91 + 8))(v75, v61);
        v84 = sub_1A85F0394(v79, v83, &v97);
        v70 = v81;
        v59 = v80;

        *(v78 + 4) = v84;
        _os_log_impl(&dword_1A85E5000, v76, v77, "preferredLocale: %s", v78, 0xCu);
        v85 = v87;
        sub_1A85F1084(v87);
        MEMORY[0x1AC571F20](v85, -1, -1);
        MEMORY[0x1AC571F20](v78, -1, -1);
      }

      else
      {

        (*(v91 + 8))(v75, v61);
      }

      v90(v73, v95);
      sub_1A85EF638(v96, &qword_1EB304C28);
      return v70(v94, v59, v61);
    }
  }

  else
  {
    v13 = sub_1A88C7E58();
    v14 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v16 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C7E48();
    v17 = sub_1A88C7E38();
    v18 = sub_1A88C89C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A85E5000, v17, v18, "Missing symbol _LTTranslator", v19, 2u);
      MEMORY[0x1AC571F20](v19, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    return sub_1A88C7598();
  }
}

uint64_t sub_1A876CFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1A85F5F40(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A876D070(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A876D094, 0, 0);
}

uint64_t sub_1A876D094()
{
  v1 = *(v0[37] + 24);
  v0[38] = v1;
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E6982C18]);
    v3 = v1;
    v4 = sub_1A88C7528();
    v5 = sub_1A88C7528();
    v6 = [v2 initWithSourceLocale:v4 targetLocale:v5];
    v0[39] = v6;

    v7 = [objc_allocWithZone(MEMORY[0x1E6982C20]) initWithLocalePair_];
    v0[40] = v7;
    [v7 setForcedOfflineTranslation_];
    v20 = objc_opt_self();
    v8 = [v6 sourceLocale];
    v9 = sub_1A88C75E8();
    v10 = *(v9 - 8);
    v11 = swift_task_alloc();
    sub_1A88C7548();

    v12 = sub_1A88C7528();
    v0[41] = v12;
    v13 = *(v10 + 8);
    v13(v11, v9);

    v14 = [v6 targetLocale];
    v15 = swift_task_alloc();
    sub_1A88C7548();

    v16 = sub_1A88C7528();
    v0[42] = v16;
    v13(v15, v9);

    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_1A876D3D4;
    v17 = swift_continuation_init();
    v0[25] = sub_1A870CCE0(&qword_1EB304C40);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A876D7F8;
    v0[21] = &unk_1F1BAD390;
    v0[22] = v17;
    [v20 configInfoForLocale:v12 otherLocale:v16 completion:?];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1A876D3D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A876D4B4, 0, 0);
}

uint64_t sub_1A876D4B4()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[38];

  v0[10] = v0;
  v0[11] = sub_1A876D5EC;
  v5 = swift_continuation_init();
  v0[33] = sub_1A870CCE0(&qword_1EB304C48);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1A876D87C;
  v0[29] = &unk_1F1BAD3B8;
  v0[30] = v5;
  [v4 preheatForRequest:v3 completion:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1A876D5EC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1A876D768;
  }

  else
  {
    v2 = sub_1A876D6FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A876D6FC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A876D768()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A876D7F8(uint64_t a1)
{
  v1 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_1A88C81A8();

  return swift_continuation_resume();
}

uint64_t sub_1A876D87C(uint64_t a1, void *a2)
{
  v3 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1A870CCE0(&unk_1EB3037B0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return MEMORY[0x1EEE6DEE8](v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t IMTranslator.deinit()
{

  v1 = OBJC_IVAR____TtC17IMSharedUtilities12IMTranslator_currentLogIdentifier;
  v2 = sub_1A88C74B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IMTranslator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17IMSharedUtilities12IMTranslator_currentLogIdentifier;
  v2 = sub_1A88C74B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A876DA44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1A88C84A8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1A8735654(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1A8735654((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1A88C8488();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1A88C83A8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1A88C83A8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1A88C84A8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1A8735654(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1A88C84A8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1A8735654(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1A8735654((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1A88C83A8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A876DE04(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A88C9398() & 1;
  }
}

uint64_t sub_1A876DE5C()
{
  v31 = sub_1A88C7E58();
  v30 = *(v31 - 8);
  v0 = MEMORY[0x1EEE9AC00](v31);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v29 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = sub_1A88C74D8();
  v10 = v9;
  if (v8 == sub_1A88C74D8() && v10 == v11)
  {

LABEL_5:
    sub_1A88C7E48();
    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89C8();
    if (!os_log_type_enabled(v13, v14))
    {
      v16 = 0;
      v7 = v2;
      goto LABEL_9;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A85E5000, v13, v14, "translate - no need to translate as source and destination are the same", v15, 2u);
    v16 = 0;
    v7 = v2;
LABEL_7:
    MEMORY[0x1AC571F20](v15, -1, -1);
LABEL_9:

    (*(v30 + 8))(v7, v31);
    sub_1A876F010();
    swift_allocError();
    *v17 = v16;
    return swift_willThrow();
  }

  v12 = sub_1A88C9398();

  if (v12)
  {
    goto LABEL_5;
  }

  v19 = sub_1A88C74D8();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    sub_1A88C7E48();
    v13 = sub_1A88C7E38();
    v28 = sub_1A88C89C8();
    if (!os_log_type_enabled(v13, v28))
    {
      v16 = 6;
      v7 = v5;
      goto LABEL_9;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A85E5000, v13, v28, "translate - empty source language, translation skipped", v15, 2u);
    v16 = 6;
    v7 = v5;
    goto LABEL_7;
  }

  v23 = sub_1A88C74D8();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    sub_1A88C7E48();
    v13 = sub_1A88C7E38();
    v27 = sub_1A88C89C8();
    if (!os_log_type_enabled(v13, v27))
    {
      v16 = 6;
      goto LABEL_9;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A85E5000, v13, v27, "translate - empty destination language, translation skipped", v15, 2u);
    v16 = 6;
    goto LABEL_7;
  }

  return result;
}

BOOL sub_1A876E290(uint64_t a1, unint64_t a2)
{
  v2 = 0xE000000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v19 = a1;
  v20 = a2;
  v21 = 0;
  v22 = v3;

  v4 = sub_1A88C83F8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      if ((v6 != 12369903 || v7 != 0xA300000000000000) && (sub_1A88C9398() & 1) == 0)
      {
        MEMORY[0x1AC56ECA0](v6, v7);
      }

      v6 = sub_1A88C83F8();
      v7 = v8;
    }

    while (v8);
    v9 = v23;
    v2 = v24;
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;
  v20 = v2;
  v10 = sub_1A88C6ED8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C6EB8();
  sub_1A8722620();
  v14 = sub_1A88C8C58();
  v16 = v15;
  (*(v11 + 8))(v13, v10);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  return v17 == 0;
}

uint64_t sub_1A876E4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationLanguage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A876E534(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A88C9398() & 1;
  }
}

uint64_t sub_1A876E63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A876E6AC()
{
  result = sub_1A88C7038();
  if (v1 <= 0x3F)
  {
    result = sub_1A88C7048();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A876E79C()
{
  result = sub_1A88C74B8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of IMTranslator.translate(_:from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 208) + **(*v4 + 208));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A876FA4C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IMTranslator.language(in:maximizeAccuracy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 216) + **(*v3 + 216));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A8716570;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of IMTranslator.evaluateLanguage(in:maximizeAccuracy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A8714B6C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of IMTranslator.translate(_:to:from:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 232) + **(*v6 + 232));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1A876EDC8;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1A876EDC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of IMTranslator.preheatTranslator(from:to:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 248) + **(*v2 + 248));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A8716570;

  return v8(a1, a2);
}

unint64_t sub_1A876F010()
{
  result = qword_1EB304C78;
  if (!qword_1EB304C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304C78);
  }

  return result;
}

uint64_t sub_1A876F064(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1A8716570;

  return sub_1A8766308(a1, a2, v6, v7, v9, v8);
}

unint64_t sub_1A876F12C()
{
  result = qword_1ED8C93A0;
  if (!qword_1ED8C93A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C93A0);
  }

  return result;
}

uint64_t sub_1A876F178(void *a1, void *a2)
{
  v29 = sub_1A88C7E58();
  v4 = *(v29 - 8);
  v5 = MEMORY[0x1EEE9AC00](v29);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  v10 = [a1 string];
  v11 = sub_1A88C82E8();
  v13 = v12;

  LOBYTE(v10) = sub_1A876E290(v11, v13);

  if (v10)
  {
    sub_1A88C7E48();
    v14 = sub_1A88C7E38();
    v15 = sub_1A88C89C8();
    if (!os_log_type_enabled(v14, v15))
    {
      v17 = 3;
      v9 = v7;
      goto LABEL_10;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A85E5000, v14, v15, "translate - result unexpectedly empty", v16, 2u);
    v17 = 3;
    v9 = v7;
  }

  else
  {
    v28[2] = sub_1A87679B8(a2);
    v28[3] = v18;
    v28[0] = sub_1A87679B8(a1);
    v28[1] = v19;
    v20 = sub_1A870CCE0(&qword_1EB304C28);
    MEMORY[0x1EEE9AC00](v20 - 8);
    v22 = v28 - v21;
    sub_1A88C7598();
    v23 = sub_1A88C75E8();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    sub_1A8722620();
    v24 = sub_1A88C8C88();
    sub_1A85EF638(v22, &qword_1EB304C28);

    if (v24)
    {
      return result;
    }

    sub_1A88C7E48();
    v14 = sub_1A88C7E38();
    v26 = sub_1A88C89D8();
    if (!os_log_type_enabled(v14, v26))
    {
      v17 = 4;
      goto LABEL_10;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A85E5000, v14, v26, "translate - result matches input text", v16, 2u);
    v17 = 4;
  }

  MEMORY[0x1AC571F20](v16, -1, -1);
LABEL_10:

  (*(v4 + 8))(v9, v29);
  sub_1A876F010();
  swift_allocError();
  *v27 = v17;
  return swift_willThrow();
}

uint64_t sub_1A876F57C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A876698C(a1, v4, v5, v7, v6);
}

uint64_t sub_1A876F63C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8714B6C;

  return sub_1A8766E38(a1, v4, v5, v7, v6);
}

uint64_t sub_1A876F6FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A8716570;

  return sub_1A87651B0(a1, v5, v4);
}

void sub_1A876F7B0(void *a1, void *a2)
{
  v5 = *(sub_1A870CCE0(&qword_1EB304C90) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A87657CC(a1, a2, v6);
}

uint64_t sub_1A876F83C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A876F854(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A8739F4C(a1, v4, v5, v6);
}

uint64_t sub_1A876F908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB304C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A876F978(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A876F9D4()
{
  result = qword_1EB304CA0;
  if (!qword_1EB304CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304CA0);
  }

  return result;
}

id IMActionDialVideo.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionDialVideo.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(0x6D754E656E6F6870, 0xEB00000000726562);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v12);
      if (swift_dynamicCast())
      {
        v6 = sub_1A88C82A8();

        if (*(a1 + 16) && (v7 = sub_1A85F5F40(0x6B6361626C6C6166, 0xEB000000006C7255), (v8 & 1) != 0))
        {
          sub_1A85F1028(*(a1 + 56) + 32 * v7, v12);

          if (swift_dynamicCast())
          {
            v9 = sub_1A88C82A8();

LABEL_12:
            v11 = [v2 initWithPhoneNumber:v6 fallbackUrl:v9];

            return v11;
          }
        }

        else
        {
        }

        v9 = 0;
        goto LABEL_12;
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A876FE58()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  v3 = [v1 phoneNumber];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x6B6361626C6C6166;
  *(inited + 88) = 0xEB000000006C7255;
  v8 = [v1 fallbackUrl];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A88C82E8();
    v12 = v11;

    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v12;
  *(inited + 120) = v13;
  v14 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v15 = sub_1A8895CC8(v14);

  return v15;
}

id IMActionDialVideo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionDialVideo()
{
  result = qword_1EB304CC0;
  if (!qword_1EB304CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB304CC0);
  }

  return result;
}

id IMActionShowLocation.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionShowLocation.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    v6 = 0;
    goto LABEL_16;
  }

  v4 = sub_1A85F5F40(0x656475746974616CLL, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v4, v22);
  sub_1A85E9718(0, &qword_1ED8C9450);
  if (swift_dynamicCast())
  {
    v6 = v21;
  }

  else
  {
    v6 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_10:
  v7 = sub_1A85F5F40(0x64757469676E6F6CLL, 0xE900000000000065);
  if (v8)
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v7, v22);
    sub_1A85E9718(0, &qword_1ED8C9450);
    if (swift_dynamicCast())
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  v14 = sub_1A85F5F40(0x7972657571, 0xE500000000000000);
  if (v15)
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v14, v22);
    if (swift_dynamicCast())
    {
      v10 = sub_1A88C82A8();

      if (!*(a1 + 16))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v10 = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_18:
  v11 = sub_1A85F5F40(0x6C6562616CLL, 0xE500000000000000);
  if (v12)
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v11, v22);
    if (swift_dynamicCast())
    {
      v13 = sub_1A88C82A8();

      if (!*(a1 + 16))
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v13 = 0;
  if (!*(a1 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

LABEL_27:
  v16 = sub_1A85F5F40(0x6B6361626C6C6166, 0xEB000000006C7255);
  if ((v17 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v16, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v18 = 0;
    goto LABEL_32;
  }

  v18 = sub_1A88C82A8();

LABEL_32:
  v19 = [v2 initWithLatitude:v6 longitude:v9 query:v10 label:v13 fallbackUrl:v18];

  return v19;
}

uint64_t sub_1A8770700()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F80;
  *(inited + 32) = 0x656475746974616CLL;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v1 latitude];
  v4 = v3;
  if (v3)
  {
    v3 = sub_1A85E9718(0, &qword_1ED8C9450);
  }

  else
  {
    *(inited + 56) = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0x64757469676E6F6CLL;
  *(inited + 88) = 0xE900000000000065;
  v5 = [v1 longitude];
  v6 = v5;
  if (v5)
  {
    v5 = sub_1A85E9718(0, &qword_1ED8C9450);
  }

  else
  {
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 0x7972657571;
  *(inited + 136) = 0xE500000000000000;
  v7 = [v1 query];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A88C82E8();
    v11 = v10;

    v12 = MEMORY[0x1E69E6158];
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v11;
  *(inited + 168) = v12;
  *(inited + 176) = 0x6C6562616CLL;
  *(inited + 184) = 0xE500000000000000;
  v13 = [v1 label];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A88C82E8();
    v17 = v16;

    v18 = MEMORY[0x1E69E6158];
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v15;
  *(inited + 200) = v17;
  *(inited + 216) = v18;
  *(inited + 224) = 0x6B6361626C6C6166;
  *(inited + 232) = 0xEB000000006C7255;
  v19 = [v1 fallbackUrl];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1A88C82E8();
    v23 = v22;

    v24 = MEMORY[0x1E69E6158];
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v24 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v21;
  *(inited + 248) = v23;
  *(inited + 264) = v24;
  v25 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v26 = sub_1A8895CC8(v25);

  return v26;
}

id IMActionShowLocation.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

__n128 sub_1A8770B78@<Q0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A870DF80();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v10[1];
    v8 = v11;
    result = v12;
    v9 = v13;
    *a1 = v10[0];
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = result;
    *(a1 + 40) = v9;
  }

  return result;
}

uint64_t static IntentCodable.decode(from:)()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A88C6E28();
}

uint64_t sub_1A8770E24()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v10[0] = *v0;
  v10[1] = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v5 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A870DFD4();
  v8 = sub_1A88C6E78();

  return v8;
}

uint64_t IntentCodable.data.getter()
{
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v0 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  v3 = sub_1A88C6E78();

  return v3;
}

uint64_t sub_1A87710A4()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A8713788();
  sub_1A88C6E28();
}

uint64_t sub_1A87711E8()
{
  v1 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v1;
  v10 = *(v0 + 96);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A87137DC();
  v7 = sub_1A88C6E78();

  return v7;
}

uint64_t sub_1A8771334()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A871476C();
  sub_1A88C6E28();
}

uint64_t sub_1A8771478()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v8[4] = *(v0 + 64);
  v9 = *(v0 + 80);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A87147C0();
  v6 = sub_1A88C6E78();

  return v6;
}

double sub_1A8771648@<D0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    v10 = v11[2];
    result = *&v11[3];
    *a2 = v11[1];
    *(a2 + 8) = v10;
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1A87717E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = v3[1];
  v6 = v3[2];
  v13[1] = *v3;
  v13[2] = v5;
  v13[3] = v6;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v7 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 104))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v10 = sub_1A88C6E68();
  a3(v10);
  v11 = sub_1A88C6E78();

  return v11;
}

double sub_1A877192C@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A872453C();
  sub_1A88C6E28();

  if (!v1)
  {
    result = *&v9;
    v7 = v10;
    *a1 = v9;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t sub_1A8771A88()
{
  v1 = *(v0 + 16);
  *&v7[8] = *v0;
  v8 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A8724590();
  v5 = sub_1A88C6E78();

  return v5;
}

__n128 sub_1A8771BC4@<Q0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A87299D0();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v11;
    v8 = v12;
    v9 = v14;
    result = v13;
    *a1 = v10;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = result;
    *(a1 + 40) = v9;
  }

  return result;
}

uint64_t sub_1A8771D38()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 40);
  v9 = *v0;
  v10 = v1;
  v11 = v2;
  v12 = *(v0 + 3);
  v13 = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A8729A24();
  v7 = sub_1A88C6E78();

  return v7;
}

__n128 sub_1A8771EE4@<Q0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A872A1F4();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v10;
    v8 = v11;
    result = v12;
    *a1 = v9[1];
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = result;
  }

  return result;
}

uint64_t sub_1A8772050()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v8[1] = *v0;
  v9 = v1;
  v10 = v2;
  v11 = *(v0 + 24);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A872A248();
  v6 = sub_1A88C6E78();

  return v6;
}

__n128 sub_1A87722D0@<Q0>(void (*a1)(uint64_t)@<X4>, __n128 *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    v10 = v12;
    result = v13;
    a2->n128_u64[0] = v11;
    a2->n128_u8[8] = v10;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_1A8772470(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 8);
  v12 = *v3;
  v13 = v5;
  v14 = *(v3 + 1);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v6 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v9 = sub_1A88C6E68();
  a3(v9);
  v10 = sub_1A88C6E78();

  return v10;
}

__n128 sub_1A877261C@<Q0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A8730BD8();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v10;
    result = v9;
    *a1 = v8;
    *(a1 + 8) = result;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1A8772780()
{
  v1 = v0[3];
  v7 = *v0;
  v8 = *(v0 + 1);
  v9 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A8730C2C();
  v5 = sub_1A88C6E78();

  return v5;
}

uint64_t sub_1A8772AD4()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A874B978();
  sub_1A88C6E28();
}

uint64_t sub_1A8772C18()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v9[5] = v1;
  v9[6] = v0[6];
  v2 = v0[1];
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v0[3];
  v9[2] = v0[2];
  v9[3] = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A874B9CC();
  v7 = sub_1A88C6E78();

  return v7;
}

uint64_t sub_1A8772E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v6 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v9 = sub_1A88C6E18();
  a5(v9);
  sub_1A88C6E28();
}

uint64_t sub_1A8772FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v6 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v9 = sub_1A88C6E18();
  a5(v9);
  sub_1A88C6E28();
}

void IntentCodableError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A88C7158();
  v5 = [v4 domain];
  v6 = sub_1A88C82E8();
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  a2[2] = [v4 code];
  v9 = [v4 localizedDescription];
  v10 = sub_1A88C82E8();
  v12 = v11;

  a2[3] = v10;
  a2[4] = v12;
}

uint64_t sub_1A8773254()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1A87732A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A877B0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87732D0(uint64_t a1)
{
  v2 = sub_1A877350C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A877330C(uint64_t a1)
{
  v2 = sub_1A877350C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentCodableError.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB304CF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A877350C();
  sub_1A88C95C8();
  v13 = 0;
  v8 = v10[3];
  sub_1A88C9278();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_1A88C92A8();
  v11 = 2;
  sub_1A88C9278();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A877350C()
{
  result = qword_1EB304D00;
  if (!qword_1EB304D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D00);
  }

  return result;
}

uint64_t IntentCodableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB304D08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A877350C();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v23 = 0;
  v9 = sub_1A88C9108();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_1A88C9138();
  v21 = 2;
  v13 = sub_1A88C9108();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;

  sub_1A85F1084(a1);
}

uint64_t sub_1A877378C()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A8773A44();
  sub_1A88C6E28();
}

uint64_t sub_1A87738D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v8[1] = *v0;
  v8[2] = v1;
  v9 = *(v0 + 16);
  v10 = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A8773A98();
  v6 = sub_1A88C6E78();

  return v6;
}

unint64_t sub_1A8773A14(uint64_t a1)
{
  *(a1 + 8) = sub_1A8773A44();
  result = sub_1A8773A98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A8773A44()
{
  result = qword_1EB304D10;
  if (!qword_1EB304D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D10);
  }

  return result;
}

unint64_t sub_1A8773A98()
{
  result = qword_1EB304D18;
  if (!qword_1EB304D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D18);
  }

  return result;
}

uint64_t sub_1A8773B6C(uint64_t a1, int a2)
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

uint64_t sub_1A8773BB4(uint64_t result, int a2, int a3)
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

unint64_t sub_1A8773C20()
{
  result = qword_1EB304D20;
  if (!qword_1EB304D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D20);
  }

  return result;
}

unint64_t sub_1A8773C78()
{
  result = qword_1EB304D28;
  if (!qword_1EB304D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D28);
  }

  return result;
}

unint64_t sub_1A8773CD0()
{
  result = qword_1EB304D30;
  if (!qword_1EB304D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D30);
  }

  return result;
}

double sub_1A8773D24@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877CD10();
  sub_1A88C6E28();

  if (!v1)
  {
    result = *&v9;
    v7 = v10;
    v8 = v11;
    *a1 = v9;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
  }

  return result;
}

uint64_t sub_1A8773E80()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v8 = *v0;
  v9 = v1;
  v10 = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877CCBC();
  v6 = sub_1A88C6E78();

  return v6;
}

uint64_t sub_1A8773FBC()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C1E8();
  sub_1A88C6E28();
}

uint64_t sub_1A8774100()
{
  v1 = v0[13];
  v14[12] = v0[12];
  v14[13] = v1;
  v2 = v0[15];
  v14[14] = v0[14];
  v14[15] = v2;
  v3 = v0[9];
  v14[8] = v0[8];
  v14[9] = v3;
  v4 = v0[11];
  v14[10] = v0[10];
  v14[11] = v4;
  v5 = v0[5];
  v14[4] = v0[4];
  v14[5] = v5;
  v6 = v0[7];
  v14[6] = v0[6];
  v14[7] = v6;
  v7 = v0[1];
  v14[0] = *v0;
  v14[1] = v7;
  v8 = v0[3];
  v14[2] = v0[2];
  v14[3] = v8;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v9 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 104))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C194();
  v12 = sub_1A88C6E78();

  return v12;
}

uint64_t sub_1A8774278()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877CBC0();
  sub_1A88C6E28();
}

uint64_t sub_1A87743BC()
{
  v1 = v0[3];
  v9[2] = v0[2];
  v9[3] = v1;
  v2 = v0[5];
  v9[4] = v0[4];
  v9[5] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877CB6C();
  v7 = sub_1A88C6E78();

  return v7;
}

__n128 sub_1A8774500@<Q0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D538();
  sub_1A88C6E28();

  if (!v1)
  {
    result = v10;
    v7 = v11;
    v8 = v12;
    *a1 = v9[8];
    *(a1 + 8) = result;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_1A8774664()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v9[8] = *v0;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D4E4();
  v7 = sub_1A88C6E78();

  return v7;
}

uint64_t sub_1A87747A8()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877BA08();
  sub_1A88C6E28();
}

uint64_t sub_1A87748EC()
{
  v7[8] = *v0;
  v1 = *(v0 + 24);
  v8 = *(v0 + 8);
  v9 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B9B4();
  v5 = sub_1A88C6E78();

  return v5;
}

__n128 sub_1A8774A2C@<Q0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D340();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v11;
    v8 = v12;
    result = v10;
    *a1 = v9[1];
    *(a1 + 8) = result;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_1A8774B98()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v8[1] = *v0;
  v9 = *(v0 + 8);
  v10 = v1;
  v11 = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D2EC();
  v6 = sub_1A88C6E78();

  return v6;
}

uint64_t sub_1A8774DEC()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A874BB6C();
  sub_1A88C6E28();
}

uint64_t sub_1A8774F5C()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877B8B8();
  sub_1A88C6E28();
}

uint64_t sub_1A87750A0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v8[1] = *v0;
  v8[2] = v1;
  v9 = *(v0 + 16);
  v10 = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B864();
  v6 = sub_1A88C6E78();

  return v6;
}

double sub_1A877523C@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C530();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v9;
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t sub_1A8775398()
{
  v1 = *(v0 + 2);
  v7 = *v0;
  v8 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C4DC();
  v5 = sub_1A88C6E78();

  return v5;
}

uint64_t sub_1A877552C()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D5E0();
  sub_1A88C6E28();
}

uint64_t sub_1A8775670()
{
  v1 = v0[3];
  v9[2] = v0[2];
  v9[3] = v1;
  v2 = v0[5];
  v9[4] = v0[4];
  v9[5] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D58C();
  v7 = sub_1A88C6E78();

  return v7;
}

double sub_1A87757B4@<D0>(_OWORD *a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877B960();
  sub_1A88C6E28();

  if (!v1)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1A8775908()
{
  v6 = *v0;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v1 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B90C();
  v4 = sub_1A88C6E78();

  return v4;
}

uint64_t sub_1A8775BD4()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D1A8();
  sub_1A88C6E28();
}

uint64_t sub_1A8775D18()
{
  v1 = *(v0 + 48);
  v8[2] = *(v0 + 32);
  v8[3] = v1;
  v8[4] = *(v0 + 64);
  v9 = *(v0 + 80);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D154();
  v6 = sub_1A88C6E78();

  return v6;
}

double sub_1A8775E64@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877BD50();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v10;
    v8 = v11;
    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v7;
    *(a1 + 17) = v8;
  }

  return result;
}

uint64_t sub_1A8775FC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v8 = *v0;
  v9 = v1;
  v10 = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877BCFC();
  v6 = sub_1A88C6E78();

  return v6;
}

__n128 sub_1A8776164@<Q0>(__n128 *a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877CB18();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v10[1];
    v8 = v12;
    v9 = v13;
    result = v11;
    a1->n128_u64[0] = v10[0];
    a1->n128_u64[1] = v7;
    a1[1] = result;
    a1[2].n128_u8[0] = v8;
    a1[2].n128_u64[1] = v9;
  }

  return result;
}

uint64_t sub_1A87762D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v9[0] = *v0;
  v9[1] = v1;
  v10 = *(v0 + 16);
  v11 = v2;
  v12 = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877CAC4();
  v7 = sub_1A88C6E78();

  return v7;
}

__n128 sub_1A8776448@<Q0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    result = v11;
    *a2 = v10[1];
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1A87765E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v11[1] = *v3;
  v12 = *(v3 + 8);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v5 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v8 = sub_1A88C6E68();
  a3(v8);
  v9 = sub_1A88C6E78();

  return v9;
}

uint64_t sub_1A877672C()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C878();
  sub_1A88C6E28();
}

uint64_t sub_1A8776870()
{
  v1 = v0[3];
  v9[2] = v0[2];
  v9[3] = v1;
  v2 = v0[5];
  v9[4] = v0[4];
  v9[5] = v2;
  v3 = v0[1];
  v9[0] = *v0;
  v9[1] = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C824();
  v7 = sub_1A88C6E78();

  return v7;
}

uint64_t sub_1A8776A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v6 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v9 = sub_1A88C6E18();
  a5(v9);
  sub_1A88C6E28();
}

uint64_t sub_1A8776BB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = v3[1];
  v12[0] = *v3;
  v12[1] = v5;
  v13[0] = v3[2];
  *(v13 + 9) = *(v3 + 41);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v6 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v9 = sub_1A88C6E68();
  a3(v9);
  v10 = sub_1A88C6E78();

  return v10;
}

__n128 sub_1A8776D90@<Q0>(void (*a1)(uint64_t)@<X4>, __n128 *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    v10 = v13[1];
    v11 = v15;
    v12 = v16;
    result = v14;
    a2->n128_u64[0] = v13[0];
    a2->n128_u64[1] = v10;
    a2[1] = result;
    a2[2].n128_u8[0] = v11;
    a2[2].n128_u64[1] = v12;
  }

  return result;
}

uint64_t sub_1A8776F38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v14[0] = *v3;
  v14[1] = v5;
  v15 = *(v3 + 16);
  v16 = v6;
  v17 = v7;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v8 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 104))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v11 = sub_1A88C6E68();
  a3(v11);
  v12 = sub_1A88C6E78();

  return v12;
}

__n128 sub_1A8777118@<Q0>(void (*a1)(uint64_t)@<X4>, __n128 *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    v10 = v13[1];
    v11 = v15;
    v12 = v16;
    result = v14;
    a2->n128_u64[0] = v13[0];
    a2->n128_u64[1] = v10;
    a2[1] = result;
    a2[2].n128_u8[0] = v11;
    a2[2].n128_u64[1] = v12;
  }

  return result;
}

uint64_t sub_1A87772C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v14[0] = *v3;
  v14[1] = v5;
  v15 = *(v3 + 16);
  v16 = v6;
  v17 = v7;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v8 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 104))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v11 = sub_1A88C6E68();
  a3(v11);
  v12 = sub_1A88C6E78();

  return v12;
}

uint64_t sub_1A877741C()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C728();
  sub_1A88C6E28();
}

uint64_t sub_1A8777560()
{
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C6D4();
  v6 = sub_1A88C6E78();

  return v6;
}

__n128 sub_1A877769C@<Q0>(__n128 *a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C680();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v10[1];
    v8 = v12;
    v9 = v13;
    result = v11;
    a1->n128_u64[0] = v10[0];
    a1->n128_u64[1] = v7;
    a1[1] = result;
    a1[2].n128_u64[0] = v8;
    a1[2].n128_u64[1] = v9;
  }

  return result;
}

uint64_t sub_1A8777800()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v9[0] = *v0;
  v9[1] = v1;
  v10 = *(v0 + 16);
  v11 = v2;
  v12 = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C62C();
  v7 = sub_1A88C6E78();

  return v7;
}

uint64_t sub_1A877798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v12[1] = a3;
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v8 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 104))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D2A4(a5, a6);
  sub_1A88C6E28();
}

uint64_t sub_1A8777B3C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v6 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D2A4(a3, a4);
  v9 = sub_1A88C6E78();

  return v9;
}

uint64_t sub_1A8777CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v6 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v9 = sub_1A88C6E18();
  a5(v9);
  sub_1A88C6E28();
}

uint64_t sub_1A8777E3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v7 = sub_1A88C6E68();
  a3(v7);
  v8 = sub_1A88C6E78();

  return v8;
}

uint64_t sub_1A8777F78()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877CC68();
  sub_1A88C6E28();
}

uint64_t sub_1A87780BC()
{
  v1 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = *(v0 + 32);
  v8 = *(v0 + 48);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877CC14();
  v5 = sub_1A88C6E78();

  return v5;
}

uint64_t sub_1A877822C@<X0>(void (*a1)(uint64_t)@<X4>, void *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    *a2 = v10[1];
  }

  return result;
}

uint64_t sub_1A87783B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v11[1] = *v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v5 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v8 = sub_1A88C6E68();
  a3(v8);
  v9 = sub_1A88C6E78();

  return v9;
}

double sub_1A87786A8@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C7D0();
  sub_1A88C6E28();

  if (!v1)
  {
    result = *&v9;
    v7 = v10;
    *a1 = v9;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t sub_1A8778804()
{
  v1 = *(v0 + 16);
  *&v7[8] = *v0;
  v8 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C77C();
  v5 = sub_1A88C6E78();

  return v5;
}

double sub_1A8778940@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D058();
  sub_1A88C6E28();

  if (!v1)
  {
    result = *&v9;
    v7 = v10;
    *a1 = v9;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t sub_1A8778A9C()
{
  v1 = *(v0 + 16);
  *&v7[8] = *v0;
  v8 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D004();
  v5 = sub_1A88C6E78();

  return v5;
}

uint64_t sub_1A8778C30@<X0>(void *a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877CFB0();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1A8778D84()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877CF5C();
  v5 = sub_1A88C6E78();

  return v5;
}

uint64_t sub_1A8778F3C@<X0>(void (*a1)(uint64_t)@<X4>, void *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    v10 = v11[1];
    *a2 = v11[0];
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_1A87790CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = v3[1];
  v12[0] = *v3;
  v12[1] = v5;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v6 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v9 = sub_1A88C6E68();
  a3(v9);
  v10 = sub_1A88C6E78();

  return v10;
}

uint64_t sub_1A8779324@<X0>(void (*a1)(uint64_t)@<X4>, void *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    *a2 = v10[1];
  }

  return result;
}

uint64_t sub_1A87794B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v11[1] = *v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v5 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v8 = sub_1A88C6E68();
  a3(v8);
  v9 = sub_1A88C6E78();

  return v9;
}

uint64_t sub_1A8779680()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877BF48();
  sub_1A88C6E28();
}

uint64_t sub_1A87797C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v2;
  v8[2] = *(v0 + 32);
  v9 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877BEF4();
  v6 = sub_1A88C6E78();

  return v6;
}

uint64_t sub_1A8779960()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877CDB8();
  sub_1A88C6E28();
}

uint64_t sub_1A8779AA4()
{
  v1 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v1;
  v9[6] = *(v0 + 96);
  v10 = *(v0 + 112);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877CD64();
  v7 = sub_1A88C6E78();

  return v7;
}

uint64_t sub_1A8779C50()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877D490();
  sub_1A88C6E28();
}

uint64_t sub_1A8779D94()
{
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v3 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877D43C();
  v6 = sub_1A88C6E78();

  return v6;
}

uint64_t sub_1A8779EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v6 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v9 = sub_1A88C6E18();
  a5(v9);
  sub_1A88C6E28();
}

uint64_t sub_1A877A06C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v4 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v7 = sub_1A88C6E68();
  a3(v7);
  v8 = sub_1A88C6E78();

  return v8;
}

uint64_t sub_1A877A1CC@<X0>(void (*a1)(uint64_t)@<X4>, void *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    *a2 = v10[1];
  }

  return result;
}

uint64_t sub_1A877A358(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v11[1] = *v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v5 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v8 = sub_1A88C6E68();
  a3(v8);
  v9 = sub_1A88C6E78();

  return v9;
}

double sub_1A877A4C4@<D0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    result = *&v12;
    v10 = v13;
    *a2 = v12;
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_1A877A65C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 16);
  *&v12[8] = *v3;
  v13 = v5;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v6 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 104))(&v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6967FC0]);
  v9 = sub_1A88C6E68();
  a3(v9);
  v10 = sub_1A88C6E78();

  return v10;
}

double sub_1A877A890@<D0>(uint64_t a1@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v3 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877B6C0();
  sub_1A88C6E28();

  if (!v1)
  {
    v7 = v9;
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v7;
  }

  return result;
}

uint64_t sub_1A877A9EC()
{
  v1 = *(v0 + 16);
  v7 = *v0;
  v8 = v1;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B66C();
  v5 = sub_1A88C6E78();

  return v5;
}

uint64_t sub_1A877AB28()
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v0 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  sub_1A88C6E18();
  sub_1A877C5D8();
  sub_1A88C6E28();
}

uint64_t sub_1A877AC6C()
{
  v1 = *(v0 + 16);
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v2 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877C584();
  v5 = sub_1A88C6E78();

  return v5;
}

double sub_1A877ADE4@<D0>(void (*a1)(uint64_t)@<X4>, _OWORD *a2@<X8>)
{
  sub_1A88C6E48();
  swift_allocObject();
  sub_1A88C6E38();
  v5 = sub_1A88C6E08();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967F28]);
  v8 = sub_1A88C6E18();
  a1(v8);
  sub_1A88C6E28();

  if (!v2)
  {
    result = *&v10;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1A877AF74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v11 = *v3;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v5 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  v8 = sub_1A88C6E68();
  a3(v8);
  v9 = sub_1A88C6E78();

  return v9;
}

uint64_t sub_1A877B0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8918500 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1A877B1D4()
{
  result = qword_1EB304D38;
  if (!qword_1EB304D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D38);
  }

  return result;
}

unint64_t sub_1A877B228()
{
  result = qword_1EB304D40;
  if (!qword_1EB304D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D40);
  }

  return result;
}

unint64_t sub_1A877B27C()
{
  result = qword_1EB304D48;
  if (!qword_1EB304D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D48);
  }

  return result;
}

unint64_t sub_1A877B2D0()
{
  result = qword_1EB304D50;
  if (!qword_1EB304D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D50);
  }

  return result;
}

unint64_t sub_1A877B324()
{
  result = qword_1EB304D58;
  if (!qword_1EB304D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D58);
  }

  return result;
}

unint64_t sub_1A877B378()
{
  result = qword_1EB304D60;
  if (!qword_1EB304D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D60);
  }

  return result;
}

unint64_t sub_1A877B3CC()
{
  result = qword_1EB304D68;
  if (!qword_1EB304D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D68);
  }

  return result;
}

unint64_t sub_1A877B420()
{
  result = qword_1EB304D70;
  if (!qword_1EB304D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D70);
  }

  return result;
}

unint64_t sub_1A877B474()
{
  result = qword_1EB304D78;
  if (!qword_1EB304D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D78);
  }

  return result;
}

unint64_t sub_1A877B4C8()
{
  result = qword_1EB304D80;
  if (!qword_1EB304D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D80);
  }

  return result;
}

unint64_t sub_1A877B51C()
{
  result = qword_1EB304D88;
  if (!qword_1EB304D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D88);
  }

  return result;
}

unint64_t sub_1A877B570()
{
  result = qword_1EB304D90;
  if (!qword_1EB304D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D90);
  }

  return result;
}

unint64_t sub_1A877B5C4()
{
  result = qword_1EB304D98;
  if (!qword_1EB304D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304D98);
  }

  return result;
}

unint64_t sub_1A877B618()
{
  result = qword_1EB304DA0;
  if (!qword_1EB304DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DA0);
  }

  return result;
}

unint64_t sub_1A877B66C()
{
  result = qword_1EB304DA8;
  if (!qword_1EB304DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DA8);
  }

  return result;
}

unint64_t sub_1A877B6C0()
{
  result = qword_1EB304DB0;
  if (!qword_1EB304DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DB0);
  }

  return result;
}

unint64_t sub_1A877B714()
{
  result = qword_1EB304DB8;
  if (!qword_1EB304DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DB8);
  }

  return result;
}

unint64_t sub_1A877B768()
{
  result = qword_1EB304DC0;
  if (!qword_1EB304DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DC0);
  }

  return result;
}

unint64_t sub_1A877B7BC()
{
  result = qword_1EB304DC8;
  if (!qword_1EB304DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DC8);
  }

  return result;
}

unint64_t sub_1A877B810()
{
  result = qword_1EB304DD0;
  if (!qword_1EB304DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DD0);
  }

  return result;
}

unint64_t sub_1A877B864()
{
  result = qword_1EB304DE8;
  if (!qword_1EB304DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DE8);
  }

  return result;
}

unint64_t sub_1A877B8B8()
{
  result = qword_1EB304DF0;
  if (!qword_1EB304DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DF0);
  }

  return result;
}

unint64_t sub_1A877B90C()
{
  result = qword_1EB304DF8;
  if (!qword_1EB304DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304DF8);
  }

  return result;
}

unint64_t sub_1A877B960()
{
  result = qword_1EB304E00;
  if (!qword_1EB304E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E00);
  }

  return result;
}

unint64_t sub_1A877B9B4()
{
  result = qword_1EB304E08;
  if (!qword_1EB304E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E08);
  }

  return result;
}

unint64_t sub_1A877BA08()
{
  result = qword_1EB304E10;
  if (!qword_1EB304E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E10);
  }

  return result;
}

unint64_t sub_1A877BA5C()
{
  result = qword_1EB304E18;
  if (!qword_1EB304E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E18);
  }

  return result;
}

unint64_t sub_1A877BAB0()
{
  result = qword_1EB304E20;
  if (!qword_1EB304E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E20);
  }

  return result;
}

unint64_t sub_1A877BB04()
{
  result = qword_1EB304E28;
  if (!qword_1EB304E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E28);
  }

  return result;
}

unint64_t sub_1A877BB58()
{
  result = qword_1EB304E30;
  if (!qword_1EB304E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E30);
  }

  return result;
}

unint64_t sub_1A877BBAC()
{
  result = qword_1EB304E38;
  if (!qword_1EB304E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E38);
  }

  return result;
}

unint64_t sub_1A877BC00()
{
  result = qword_1EB304E40;
  if (!qword_1EB304E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E40);
  }

  return result;
}

unint64_t sub_1A877BC54()
{
  result = qword_1EB304E48;
  if (!qword_1EB304E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E48);
  }

  return result;
}

unint64_t sub_1A877BCA8()
{
  result = qword_1EB304E50;
  if (!qword_1EB304E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E50);
  }

  return result;
}

unint64_t sub_1A877BCFC()
{
  result = qword_1EB304E58;
  if (!qword_1EB304E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E58);
  }

  return result;
}

unint64_t sub_1A877BD50()
{
  result = qword_1EB304E60;
  if (!qword_1EB304E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E60);
  }

  return result;
}

unint64_t sub_1A877BDA4()
{
  result = qword_1EB304E68;
  if (!qword_1EB304E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E68);
  }

  return result;
}

unint64_t sub_1A877BDF8()
{
  result = qword_1EB304E70;
  if (!qword_1EB304E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E70);
  }

  return result;
}

unint64_t sub_1A877BE4C()
{
  result = qword_1EB304E78;
  if (!qword_1EB304E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E78);
  }

  return result;
}

unint64_t sub_1A877BEA0()
{
  result = qword_1EB304E80;
  if (!qword_1EB304E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E80);
  }

  return result;
}

unint64_t sub_1A877BEF4()
{
  result = qword_1EB304E88;
  if (!qword_1EB304E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E88);
  }

  return result;
}

unint64_t sub_1A877BF48()
{
  result = qword_1EB304E90;
  if (!qword_1EB304E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E90);
  }

  return result;
}

unint64_t sub_1A877BF9C()
{
  result = qword_1EB304E98;
  if (!qword_1EB304E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304E98);
  }

  return result;
}

unint64_t sub_1A877BFF0()
{
  result = qword_1EB304EA0;
  if (!qword_1EB304EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EA0);
  }

  return result;
}

unint64_t sub_1A877C044()
{
  result = qword_1EB304EA8;
  if (!qword_1EB304EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EA8);
  }

  return result;
}

unint64_t sub_1A877C098()
{
  result = qword_1EB304EB0;
  if (!qword_1EB304EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EB0);
  }

  return result;
}

unint64_t sub_1A877C0EC()
{
  result = qword_1EB304EB8;
  if (!qword_1EB304EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EB8);
  }

  return result;
}

unint64_t sub_1A877C140()
{
  result = qword_1EB304EC0;
  if (!qword_1EB304EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EC0);
  }

  return result;
}

unint64_t sub_1A877C194()
{
  result = qword_1EB304EC8;
  if (!qword_1EB304EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EC8);
  }

  return result;
}

unint64_t sub_1A877C1E8()
{
  result = qword_1EB304ED0;
  if (!qword_1EB304ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304ED0);
  }

  return result;
}

unint64_t sub_1A877C23C()
{
  result = qword_1EB304ED8;
  if (!qword_1EB304ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304ED8);
  }

  return result;
}

unint64_t sub_1A877C290()
{
  result = qword_1EB304EE0;
  if (!qword_1EB304EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EE0);
  }

  return result;
}

unint64_t sub_1A877C2E4()
{
  result = qword_1EB304EE8;
  if (!qword_1EB304EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EE8);
  }

  return result;
}

unint64_t sub_1A877C338()
{
  result = qword_1EB304EF0;
  if (!qword_1EB304EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EF0);
  }

  return result;
}

unint64_t sub_1A877C38C()
{
  result = qword_1EB304EF8;
  if (!qword_1EB304EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304EF8);
  }

  return result;
}

unint64_t sub_1A877C3E0()
{
  result = qword_1EB304F00;
  if (!qword_1EB304F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F00);
  }

  return result;
}

unint64_t sub_1A877C434()
{
  result = qword_1EB304F08;
  if (!qword_1EB304F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F08);
  }

  return result;
}

unint64_t sub_1A877C488()
{
  result = qword_1EB304F10;
  if (!qword_1EB304F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F10);
  }

  return result;
}

unint64_t sub_1A877C4DC()
{
  result = qword_1EB304F20;
  if (!qword_1EB304F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F20);
  }

  return result;
}

unint64_t sub_1A877C530()
{
  result = qword_1EB304F28;
  if (!qword_1EB304F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F28);
  }

  return result;
}

unint64_t sub_1A877C584()
{
  result = qword_1EB304F30;
  if (!qword_1EB304F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F30);
  }

  return result;
}

unint64_t sub_1A877C5D8()
{
  result = qword_1EB304F38;
  if (!qword_1EB304F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F38);
  }

  return result;
}

unint64_t sub_1A877C62C()
{
  result = qword_1EB304F40;
  if (!qword_1EB304F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F40);
  }

  return result;
}

unint64_t sub_1A877C680()
{
  result = qword_1EB304F48;
  if (!qword_1EB304F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F48);
  }

  return result;
}

unint64_t sub_1A877C6D4()
{
  result = qword_1EB304F50;
  if (!qword_1EB304F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F50);
  }

  return result;
}

unint64_t sub_1A877C728()
{
  result = qword_1EB304F58;
  if (!qword_1EB304F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F58);
  }

  return result;
}

unint64_t sub_1A877C77C()
{
  result = qword_1EB304F80;
  if (!qword_1EB304F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F80);
  }

  return result;
}

unint64_t sub_1A877C7D0()
{
  result = qword_1EB304F88;
  if (!qword_1EB304F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F88);
  }

  return result;
}

unint64_t sub_1A877C824()
{
  result = qword_1EB304F90;
  if (!qword_1EB304F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F90);
  }

  return result;
}

unint64_t sub_1A877C878()
{
  result = qword_1EB304F98;
  if (!qword_1EB304F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304F98);
  }

  return result;
}

unint64_t sub_1A877C8CC()
{
  result = qword_1EB304FA0;
  if (!qword_1EB304FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FA0);
  }

  return result;
}

unint64_t sub_1A877C920()
{
  result = qword_1EB304FA8;
  if (!qword_1EB304FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FA8);
  }

  return result;
}

unint64_t sub_1A877C974()
{
  result = qword_1EB304FB0;
  if (!qword_1EB304FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FB0);
  }

  return result;
}

unint64_t sub_1A877C9C8()
{
  result = qword_1EB304FB8;
  if (!qword_1EB304FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FB8);
  }

  return result;
}

unint64_t sub_1A877CA1C()
{
  result = qword_1EB304FC0;
  if (!qword_1EB304FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FC0);
  }

  return result;
}

unint64_t sub_1A877CA70()
{
  result = qword_1EB304FC8;
  if (!qword_1EB304FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FC8);
  }

  return result;
}

unint64_t sub_1A877CAC4()
{
  result = qword_1EB304FD0;
  if (!qword_1EB304FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FD0);
  }

  return result;
}

unint64_t sub_1A877CB18()
{
  result = qword_1EB304FD8;
  if (!qword_1EB304FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FD8);
  }

  return result;
}

unint64_t sub_1A877CB6C()
{
  result = qword_1EB304FE0;
  if (!qword_1EB304FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FE0);
  }

  return result;
}

unint64_t sub_1A877CBC0()
{
  result = qword_1EB304FE8;
  if (!qword_1EB304FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FE8);
  }

  return result;
}

unint64_t sub_1A877CC14()
{
  result = qword_1EB304FF0;
  if (!qword_1EB304FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FF0);
  }

  return result;
}

unint64_t sub_1A877CC68()
{
  result = qword_1EB304FF8;
  if (!qword_1EB304FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB304FF8);
  }

  return result;
}

unint64_t sub_1A877CCBC()
{
  result = qword_1EB305000;
  if (!qword_1EB305000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305000);
  }

  return result;
}

unint64_t sub_1A877CD10()
{
  result = qword_1EB305008;
  if (!qword_1EB305008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305008);
  }

  return result;
}

unint64_t sub_1A877CD64()
{
  result = qword_1EB305010;
  if (!qword_1EB305010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305010);
  }

  return result;
}

unint64_t sub_1A877CDB8()
{
  result = qword_1EB305018;
  if (!qword_1EB305018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305018);
  }

  return result;
}

unint64_t sub_1A877CE0C()
{
  result = qword_1EB305020;
  if (!qword_1EB305020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305020);
  }

  return result;
}

unint64_t sub_1A877CE60()
{
  result = qword_1EB305028;
  if (!qword_1EB305028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305028);
  }

  return result;
}

unint64_t sub_1A877CEB4()
{
  result = qword_1EB305030;
  if (!qword_1EB305030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305030);
  }

  return result;
}

unint64_t sub_1A877CF08()
{
  result = qword_1EB305038;
  if (!qword_1EB305038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305038);
  }

  return result;
}

unint64_t sub_1A877CF5C()
{
  result = qword_1EB305040;
  if (!qword_1EB305040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305040);
  }

  return result;
}

unint64_t sub_1A877CFB0()
{
  result = qword_1EB305048;
  if (!qword_1EB305048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305048);
  }

  return result;
}

unint64_t sub_1A877D004()
{
  result = qword_1EB305050;
  if (!qword_1EB305050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305050);
  }

  return result;
}

unint64_t sub_1A877D058()
{
  result = qword_1EB305058;
  if (!qword_1EB305058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305058);
  }

  return result;
}

unint64_t sub_1A877D0AC()
{
  result = qword_1EB305060;
  if (!qword_1EB305060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305060);
  }

  return result;
}

unint64_t sub_1A877D100()
{
  result = qword_1EB305068;
  if (!qword_1EB305068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305068);
  }

  return result;
}

unint64_t sub_1A877D154()
{
  result = qword_1EB305090;
  if (!qword_1EB305090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305090);
  }

  return result;
}

unint64_t sub_1A877D1A8()
{
  result = qword_1EB305098;
  if (!qword_1EB305098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305098);
  }

  return result;
}

unint64_t sub_1A877D1FC()
{
  result = qword_1EB3050A0;
  if (!qword_1EB3050A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050A0);
  }

  return result;
}

unint64_t sub_1A877D250()
{
  result = qword_1EB3050A8;
  if (!qword_1EB3050A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050A8);
  }

  return result;
}

uint64_t sub_1A877D2A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A877D2EC()
{
  result = qword_1EB3050C0;
  if (!qword_1EB3050C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050C0);
  }

  return result;
}

unint64_t sub_1A877D340()
{
  result = qword_1EB3050C8;
  if (!qword_1EB3050C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050C8);
  }

  return result;
}

unint64_t sub_1A877D394()
{
  result = qword_1EB3050D0;
  if (!qword_1EB3050D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050D0);
  }

  return result;
}

unint64_t sub_1A877D3E8()
{
  result = qword_1EB3050D8;
  if (!qword_1EB3050D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050D8);
  }

  return result;
}

unint64_t sub_1A877D43C()
{
  result = qword_1EB3050E0;
  if (!qword_1EB3050E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050E0);
  }

  return result;
}

unint64_t sub_1A877D490()
{
  result = qword_1EB3050E8;
  if (!qword_1EB3050E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050E8);
  }

  return result;
}

unint64_t sub_1A877D4E4()
{
  result = qword_1EB3050F0;
  if (!qword_1EB3050F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050F0);
  }

  return result;
}

unint64_t sub_1A877D538()
{
  result = qword_1EB3050F8;
  if (!qword_1EB3050F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3050F8);
  }

  return result;
}

unint64_t sub_1A877D58C()
{
  result = qword_1EB305100;
  if (!qword_1EB305100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305100);
  }

  return result;
}

unint64_t sub_1A877D5E0()
{
  result = qword_1EB305108;
  if (!qword_1EB305108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305108);
  }

  return result;
}

uint64_t Locale.isVariantPair(of:)()
{
  v0 = sub_1A88C74D8();
  v2 = v1;
  if (v0 == sub_1A88C74D8() && v2 == v3)
  {

    return 1;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 1;
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x1E6982C18]);
      v7 = sub_1A88C7528();
      v8 = sub_1A88C7528();
      v9 = [v6 initWithSourceLocale:v7 targetLocale:v8];

      v10 = [v9 isVariantPair];
      return v10;
    }
  }
}

uint64_t sub_1A877D748()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305110);
  sub_1A85EF0E4(v0, qword_1EB305110);
  return sub_1A88C7E48();
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfer(_:highQualityDownloadSucceededWithPath:)(Swift::String _, Swift::String highQualityDownloadSucceededWithPath)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v3 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1A85F0394(0xD000000000000035, 0x80000001A8918520, &v7);
    _os_log_impl(&dword_1A85E5000, oslog, v3, "IntentClientBroadcaster stub called: %s.", v4, 0xCu);
    sub_1A85F1084(v5);
    MEMORY[0x1AC571F20](v5, -1, -1);
    MEMORY[0x1AC571F20](v4, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransfer(_:explicitDownloadSucceededWithPath:livePhotoBundlePath:)(Swift::String _, Swift::String explicitDownloadSucceededWithPath, Swift::String livePhotoBundlePath)
{
  object = livePhotoBundlePath._object;
  countAndFlagsBits = livePhotoBundlePath._countAndFlagsBits;
  v6 = explicitDownloadSucceededWithPath._object;
  v7 = explicitDownloadSucceededWithPath._countAndFlagsBits;
  v8 = _._object;
  v9 = _._countAndFlagsBits;
  v10 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_1A88C87A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = v9;
  v14[6] = v8;
  v14[7] = v7;
  v14[8] = v6;
  v14[9] = countAndFlagsBits;
  v14[10] = object;
  v15 = v3;

  sub_1A885A178(0, 0, v12, &unk_1A88E8670, v14);
}

uint64_t sub_1A877DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v11;
  v8[18] = v12;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  sub_1A870CCE0(&unk_1EB3090D0);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for FileTransferExplicitDownloadSucceeded();
  v8[21] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB305128);
  v8[22] = swift_task_alloc();
  v8[23] = sub_1A870CCE0(&qword_1EB305130);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A877DBE4, 0, 0);
}

uint64_t sub_1A877DBE4()
{
  v1 = (v0[12] + OBJC_IVAR____TtC17IMSharedUtilities23IntentClientBroadcaster_safeRenderProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_1A870C278(v1, v2);
  v9 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1A877DD28;
  v5 = v0[25];
  v6 = v0[13];
  v7 = v0[14];

  return v9(v5, v6, v7, 1, v2, v3);
}

uint64_t sub_1A877DD28()
{

  return MEMORY[0x1EEE6DFA0](sub_1A877DE24, 0, 0);
}

uint64_t sub_1A877DE24()
{
  v38 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = type metadata accessor for RemoteIntentMirrorFile(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  sub_1A8728D80(v1, v2, &qword_1EB305130);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 192);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v7;
    if (qword_1EB302188 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB305110);

    v10 = v8;
    v11 = sub_1A88C7E38();
    v12 = sub_1A88C89C8();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v15 = 136315650;
      *(v15 + 4) = sub_1A85F0394(0xD000000000000046, 0x80000001A8918650, &v37);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1A85F0394(v14, v13, &v37);
      *(v15 + 22) = 2112;
      v18 = v8;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v19;
      *v16 = v19;
      _os_log_impl(&dword_1A85E5000, v11, v12, "%s Failed to generate safe render: %s. Using original file URL which may be larger. Error: %@", v15, 0x20u);
      sub_1A85EF638(v16, &qword_1EB306540);
      MEMORY[0x1AC571F20](v16, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v17, -1, -1);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v20 = *(v0 + 176);
    sub_1A85EF638(v20, &qword_1EB305128);
    sub_1A877EF04(v7, v20);
    v5(v20, 0, 1, v4);
  }

  v36 = *(v0 + 200);
  v21 = *(v0 + 168);
  v35 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 144);
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 112);
  sub_1A8728D80(v35, v21 + *(v23 + 28), &qword_1EB305128);
  *v21 = v28;
  v21[1] = v29;
  v21[2] = v26;
  v21[3] = v27;
  v21[4] = v24;
  v21[5] = v25;
  *(v0 + 40) = v23;
  *(v0 + 48) = sub_1A877ED3C();
  v30 = sub_1A871E00C((v0 + 16));
  sub_1A877ED94(v21, v30);
  v31 = sub_1A88C87A8();
  (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
  sub_1A86061B4(v0 + 16, v0 + 56);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  sub_1A860D56C((v0 + 56), v32 + 32);

  sub_1A885A178(0, 0, v22, &unk_1A88E8688, v32);

  sub_1A877EEA8(v21);
  sub_1A85EF638(v35, &qword_1EB305128);
  sub_1A85EF638(v36, &qword_1EB305130);
  sub_1A85F1084(v0 + 16);

  v33 = *(v0 + 8);

  return v33();
}

void IntentClientBroadcaster.fileTransferExplicitDownloadFailed(_:suggestedRetryGUID:error:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000003FLL, 0x80000001A8918560, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

Swift::Void __swiftcall IntentClientBroadcaster.fileTransferHighQualityDownloadFailed(_:)(Swift::String a1)
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v1 = sub_1A88C7E58();
  sub_1A85EF0E4(v1, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v2 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1A85F0394(0xD000000000000029, 0x80000001A89185A0, &v6);
    _os_log_impl(&dword_1A85E5000, oslog, v2, "IntentClientBroadcaster stub called: %s.", v3, 0xCu);
    sub_1A85F1084(v4);
    MEMORY[0x1AC571F20](v4, -1, -1);
    MEMORY[0x1AC571F20](v3, -1, -1);
  }
}

void IntentClientBroadcaster.fileTransferDownloadedSucceeded(withLocalURL:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000002ELL, 0x80000001A89185D0, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

void IntentClientBroadcaster.fileTransferDownloadFailed(withLocalURL:error:)()
{
  if (qword_1EB302190 != -1)
  {
    swift_once();
  }

  v0 = sub_1A88C7E58();
  sub_1A85EF0E4(v0, qword_1EB338DF8);
  oslog = sub_1A88C7E38();
  v1 = sub_1A88C89B8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1A85F0394(0xD00000000000002FLL, 0x80000001A8918600, &v5);
    _os_log_impl(&dword_1A85E5000, oslog, v1, "IntentClientBroadcaster stub called: %s.", v2, 0xCu);
    sub_1A85F1084(v3);
    MEMORY[0x1AC571F20](v3, -1, -1);
    MEMORY[0x1AC571F20](v2, -1, -1);
  }
}

uint64_t sub_1A877EB54(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A8716570;

  return sub_1A877DA84(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1A877EC48(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A8714B6C;

  return sub_1A877DA84(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1A877ED3C()
{
  result = qword_1EB303220;
  if (!qword_1EB303220)
  {
    type metadata accessor for FileTransferExplicitDownloadSucceeded();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303220);
  }

  return result;
}

uint64_t sub_1A877ED94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileTransferExplicitDownloadSucceeded();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A877EDF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A8716570;

  return sub_1A878BC60(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A877EEA8(uint64_t a1)
{
  v2 = type metadata accessor for FileTransferExplicitDownloadSucceeded();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A877EF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentMirrorFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentClientBroadcaster.updateNicknameHandles(forSharing:blocked:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v11[3] = &type metadata for UpdateNicknameHandlesBroadcast;
  v11[4] = sub_1A8717794();
  v11[0] = a1;
  v11[1] = a2;
  v7 = sub_1A88C87A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A86061B4(v11, v10);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1A860D56C(v10, v8 + 32);

  sub_1A885A178(0, 0, v6, &unk_1A88E8688, v8);

  return sub_1A85F1084(v11);
}

uint64_t _s17IMSharedUtilities23IntentClientBroadcasterC28updatePendingNicknameUpdates_16handledNicknames08archivedK0ySDys11AnyHashableVypG_A2ItF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  v14[3] = &type metadata for UpdatePendingNicknameUpdatesBroadcast;
  v9 = sub_1A8717740();
  v14[0] = a1;
  v14[1] = a2;
  v14[4] = v9;
  v14[2] = a3;
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1A86061B4(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v13, v11 + 32);

  sub_1A885A178(0, 0, v8, &unk_1A88E8698, v11);

  return sub_1A85F1084(v14);
}

uint64_t sub_1A877F4B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A8714B6C;

  return sub_1A878BC60(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A877F578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[45] = a5;
  v6[46] = a6;
  v6[43] = a3;
  v6[44] = a4;
  v6[41] = a1;
  v6[42] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A877F5A0, 0, 0);
}

uint64_t sub_1A877F5A0()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = sub_1A88C82A8();
  v0[47] = v3;
  v4 = sub_1A88C8188();
  v0[48] = v4;
  v0[2] = v0;
  v0[7] = v0 + 39;
  v0[3] = sub_1A877F718;
  v5 = swift_continuation_init();
  v0[25] = sub_1A870CCE0(&qword_1EB3051D8);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1A877FD9C;
  v0[21] = &unk_1F1BAD8B0;
  v0[22] = v5;
  [v2 requestSetupWithClientID:v3 capabilities:v1 context:v4 reply:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A877F718()
{

  return MEMORY[0x1EEE6DFA0](sub_1A877F7F8, 0, 0);
}

uint64_t sub_1A877F7F8()
{
  v15 = v0;
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  *(v0 + 306) = *(v0 + 312);
  v3 = *(v0 + 320);
  *(v0 + 392) = v3;

  *(v0 + 400) = sub_1A8782724(v3);

  v5 = sub_1A87336F0(v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_1A87365FC(*(v5 + 16), 0);
    v9 = sub_1A85F1C3C(&v14, v8 + 4, v7, v6);
    sub_1A8739EC8();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v10 = *(v0 + 336);
  v11 = sub_1A88C85E8();
  *(v0 + 408) = v11;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 312;
  *(v0 + 88) = sub_1A877F9D8;
  v12 = swift_continuation_init();
  *(v0 + 200) = sub_1A870CCE0(&qword_1EB3051E0);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1A87B57AC;
  *(v0 + 168) = &unk_1F1BAD8D8;
  *(v0 + 176) = v12;
  [v10 requestContactsForIdentifiers:v11 reply:v0 + 144];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1A877F9D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A877FAB8, 0, 0);
}

uint64_t sub_1A877FAB8()
{
  v1 = v0[51];
  v0[52] = v0[39];

  sub_1A88C8768();
  v0[53] = sub_1A88C8758();
  v3 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A877FB5C, v3, v2);
}

uint64_t sub_1A877FB5C()
{

  v1 = [objc_opt_self() sharedList];
  v2 = [v1 mutedChatList];

  sub_1A85E9718(0, &qword_1ED8C9450);
  *(v0 + 432) = sub_1A88C81A8();

  return MEMORY[0x1EEE6DFA0](sub_1A877FC40, 0, 0);
}

uint64_t sub_1A877FC40()
{
  v26 = v0;
  v1 = *(v0 + 392);
  v20 = *(v0 + 400);
  v21 = *(v0 + 416);
  v2 = *(v0 + 306);
  v3 = *(v0 + 328);
  v4 = sub_1A87803D8(*(v0 + 432));

  sub_1A881C798(v5, v0 + 144);
  sub_1A877FE30(v1, &v22);

  v6 = v23;
  v7 = v22;
  v8 = v24;
  v9 = v25;
  *v3 = v2;
  v10 = *(v0 + 144);
  v11 = *(v0 + 160);
  *(v3 + 40) = *(v0 + 176);
  *(v3 + 24) = v11;
  *(v3 + 8) = v10;
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  v14 = *(v0 + 224);
  *(v3 + 104) = *(v0 + 240);
  *(v3 + 88) = v14;
  *(v3 + 72) = v13;
  *(v3 + 56) = v12;
  v15 = *(v0 + 256);
  v16 = *(v0 + 272);
  v17 = *(v0 + 288);
  *(v3 + 168) = *(v0 + 304);
  *(v3 + 152) = v17;
  *(v3 + 136) = v16;
  *(v3 + 120) = v15;
  *(v3 + 176) = v20;
  *(v3 + 184) = v21;
  *(v3 + 192) = v4;
  *(v3 + 200) = v7;
  *(v3 + 216) = v6;
  *(v3 + 224) = v8;
  *(v3 + 240) = v9;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A877FD9C(uint64_t a1, char a2)
{
  v3 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  v4 = sub_1A88C81A8();
  v5 = *(*(v3 + 64) + 40);
  *v5 = a2;
  *(v5 + 8) = v4;

  return swift_continuation_resume();
}

size_t sub_1A877FE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RemoteIntentUnreadCountReport();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v52 = sub_1A88C82E8();
  v53 = v11;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v12 = sub_1A8602F10(v51), (v13 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v12, &v52);
    sub_1A8717360(v51);
    sub_1A870CCE0(&qword_1EB3051D0);
    if (swift_dynamicCast())
    {
      v14 = v49;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1A8717360(v51);
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v45 = v10;
  v46 = v8;
  v47 = a2;
  v48 = v5;
  v15 = *(v14 + 16);
  if (!v15)
  {

    v19 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_11;
    }

LABEL_20:
    v20 = sub_1A88C8D38();
    v21 = v48;
    v22 = v46;
    if (v20)
    {
      goto LABEL_12;
    }

LABEL_21:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v44 = a1;
  v51[0] = MEMORY[0x1E69E7CC0];
  sub_1A88C8F08();
  v16 = 32;
  do
  {
    v17 = objc_allocWithZone(IMUnreadCountReport);

    v18 = sub_1A88C8188();

    [v17 initWithDictionary_];

    sub_1A88C8ED8();
    sub_1A88C8F18();
    sub_1A88C8F28();
    sub_1A88C8EE8();
    v16 += 8;
    --v15;
  }

  while (v15);

  v19 = v51[0];
  a2 = v47;
  a1 = v44;
  if (v51[0] >> 62)
  {
    goto LABEL_20;
  }

LABEL_11:
  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v48;
  v22 = v46;
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_12:
  v51[0] = MEMORY[0x1E69E7CC0];
  result = sub_1A871D64C(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
    return result;
  }

  v24 = v51[0];
  if ((v19 & 0xC000000000000001) != 0)
  {
    v25 = 0;
    v26 = v45;
    do
    {
      MEMORY[0x1AC56F710](v25, v19);
      IMUnreadCountReport.remoteIntentRepresentation.getter(v26);
      swift_unknownObjectRelease();
      v51[0] = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1A871D64C(v27 > 1, v28 + 1, 1);
        v24 = v51[0];
      }

      ++v25;
      *(v24 + 16) = v28 + 1;
      sub_1A8782820(v26, v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v28);
    }

    while (v20 != v25);

    a2 = v47;
  }

  else
  {
    v29 = 32;
    do
    {
      v30 = *(v19 + v29);
      IMUnreadCountReport.remoteIntentRepresentation.getter(v22);

      v51[0] = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1A871D64C(v31 > 1, v32 + 1, 1);
        v24 = v51[0];
      }

      *(v24 + 16) = v32 + 1;
      sub_1A8782820(v22, v24 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32);
      v29 += 8;
      --v20;
    }

    while (v20);
  }

LABEL_27:
  v52 = sub_1A88C82E8();
  v53 = v33;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v34 = sub_1A8602F10(v51), (v35 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v34, &v52);
    sub_1A8717360(v51);
    v36 = swift_dynamicCast();
    if (v36)
    {
      v37 = v49;
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v50;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    sub_1A8717360(v51);
    v37 = 0;
    v38 = 0;
  }

  v52 = sub_1A88C82E8();
  v53 = v39;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v40 = sub_1A8602F10(v51), (v41 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v40, &v52);
    sub_1A8717360(v51);
    result = swift_dynamicCast();
    v42 = v49;
    v43 = v50;
    if (!result)
    {
      v42 = 0;
      v43 = 0;
    }
  }

  else
  {
    result = sub_1A8717360(v51);
    v42 = 0;
    v43 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = v24;
  *(a2 + 16) = 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v38;
  *(a2 + 40) = v42;
  *(a2 + 48) = v43;
  return result;
}

uint64_t sub_1A87803D8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v29 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v9 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(*(a1 + 56) + 8 * v17);

    [v21 doubleValue];
    v23 = v22;
    v24 = *(v2 + 16);
    if (*(v2 + 24) <= v24)
    {
      sub_1A8879628(v24 + 1, 1);
      v2 = v29;
    }

    sub_1A88C9528();
    sub_1A88C8268();
    result = sub_1A88C9578();
    v10 = v2 + 64;
    v11 = -1 << *(v2 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v11) >> 6;
      while (++v13 != v26 || (v25 & 1) == 0)
      {
        v27 = v13 == v26;
        if (v13 == v26)
        {
          v13 = 0;
        }

        v25 |= v27;
        v28 = *(v10 + 8 * v13);
        if (v28 != -1)
        {
          v14 = __clz(__rbit64(~v28)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = (*(v2 + 48) + 16 * v14);
    *v15 = v20;
    v15[1] = v19;
    *(*(v2 + 56) + 8 * v14) = v23;
    ++*(v2 + 16);
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      v9 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A8780604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = sub_1A870CCE0(&qword_1EB305208);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A8782C04();
  sub_1A88C95C8();
  v19 = 0;
  sub_1A88C9278();
  if (!v5)
  {
    v12 = v14;
    v18 = 1;
    sub_1A88C9308();
    v16 = v12;
    v17 = 2;
    sub_1A870CCE0(&qword_1EB3051F8);
    sub_1A85FB520(&qword_1EB305210, &qword_1EB3051F8);
    sub_1A88C92C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A8780834()
{
  v1 = 0x696C696261706163;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1A8780898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8782884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87808C0(uint64_t a1)
{
  v2 = sub_1A8782C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87808FC(uint64_t a1)
{
  v2 = sub_1A8782C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8780938()
{
  v0 = qword_1EB305138;

  return v0;
}

uint64_t sub_1A8780970(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1A8714B6C;

  return sub_1A877F578(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1A8780A38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A87829A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1A8780AB4(uint64_t a1)
{
  result = sub_1A8780ADC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8780ADC()
{
  result = qword_1EB305148;
  if (!qword_1EB305148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305148);
  }

  return result;
}

unint64_t sub_1A8780B78()
{
  result = qword_1EB305160;
  if (!qword_1EB305160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305160);
  }

  return result;
}

unint64_t sub_1A8780BCC(uint64_t a1)
{
  result = sub_1A8780BF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8780BF4()
{
  result = qword_1EB305168;
  if (!qword_1EB305168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305168);
  }

  return result;
}

void *sub_1A8780C48()
{
  v1 = type metadata accessor for RemoteIntentUnreadCountReport();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v50 - v6;
  v8 = *v0;
  v9 = *(v0 + 120);
  v10 = *(v0 + 152);
  v59[8] = *(v0 + 136);
  v59[9] = v10;
  v60 = *(v0 + 84);
  v11 = *(v0 + 56);
  v12 = *(v0 + 88);
  v59[4] = *(v0 + 72);
  v59[5] = v12;
  v59[6] = *(v0 + 104);
  v59[7] = v9;
  v13 = *(v0 + 24);
  v59[0] = *(v0 + 8);
  v14 = *(v0 + 40);
  v59[3] = v11;
  v59[1] = v13;
  v59[2] = v14;
  v15 = *(v0 + 26);
  v16 = *(v0 + 29);
  v54 = *(v0 + 28);
  v18 = *(v0 + 30);
  v17 = *(v0 + 31);
  v61 = sub_1A881DC2C();
  *&v57 = sub_1A88C82E8();
  *(&v57 + 1) = v19;
  sub_1A88C8D88();
  if (v15)
  {
    v51 = v8;
    v20 = *(v15 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v53 = v18;
    v52 = v16;
    if (v20)
    {
      v22 = v17;
      *&v57 = MEMORY[0x1E69E7CC0];
      sub_1A88C8F08();
      sub_1A85E9718(0, &qword_1ED8C9210);
      v23 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v24 = *(v2 + 72);
      do
      {
        sub_1A8720FCC(v23, v7);
        sub_1A8720FCC(v7, v5);
        IMUnreadCountReport.init(remoteIntentRepresentation:)(v5);
        sub_1A8721030(v7);
        sub_1A88C8ED8();
        sub_1A88C8F18();
        sub_1A88C8F28();
        sub_1A88C8EE8();
        v23 += v24;
        --v20;
      }

      while (v20);
      v25 = v57;
      v17 = v22;
      v18 = v53;
      v16 = v52;
      v21 = MEMORY[0x1E69E7CC0];
      if (!(v57 >> 62))
      {
LABEL_6:
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
LABEL_7:
          *&v57 = v21;
          result = sub_1A871D5EC(0, v26 & ~(v26 >> 63), 0);
          if (v26 < 0)
          {
            __break(1u);
            return result;
          }

          v50 = v17;
          v28 = v57;
          if ((v25 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v26; ++i)
            {
              MEMORY[0x1AC56F710](i, v25);
              v30 = [swift_unknownObjectRetain() dictionary];
              v31 = sub_1A88C81A8();
              swift_unknownObjectRelease_n();

              *&v57 = v28;
              v33 = *(v28 + 16);
              v32 = *(v28 + 24);
              if (v33 >= v32 >> 1)
              {
                sub_1A871D5EC((v32 > 1), v33 + 1, 1);
                v28 = v57;
              }

              *(v28 + 16) = v33 + 1;
              *(v28 + 8 * v33 + 32) = v31;
            }
          }

          else
          {
            v34 = 32;
            do
            {
              v35 = *(v25 + v34);
              v36 = [v35 dictionary];
              v37 = sub_1A88C81A8();

              *&v57 = v28;
              v39 = *(v28 + 16);
              v38 = *(v28 + 24);
              if (v39 >= v38 >> 1)
              {
                sub_1A871D5EC((v38 > 1), v39 + 1, 1);
                v28 = v57;
              }

              *(v28 + 16) = v39 + 1;
              *(v28 + 8 * v39 + 32) = v37;
              v34 += 8;
              --v26;
            }

            while (v26);
          }

          v17 = v50;
          v18 = v53;
          v16 = v52;
          goto LABEL_23;
        }

LABEL_17:

        v28 = MEMORY[0x1E69E7CC0];
LABEL_23:
        v58 = sub_1A870CCE0(&qword_1EB3051D0);
        *&v57 = v28;
        sub_1A85E99B0(&v57, v56);
        v40 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v40;
        sub_1A87AC424(v56, v59, isUniquelyReferenced_nonNull_native);
        sub_1A8717360(v59);
        v61 = v55;
        v8 = v51;
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_6;
      }
    }

    v26 = sub_1A88C8D38();
    if (v26)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  sub_1A88BEFF8(v59, &v57);
  sub_1A860169C(&v57);
  sub_1A8717360(v59);
LABEL_24:
  *&v57 = sub_1A88C82E8();
  *(&v57 + 1) = v42;
  v43 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  if (v16)
  {
    v58 = v43;
    *&v57 = v54;
    *(&v57 + 1) = v16;
    sub_1A85E99B0(&v57, v56);

    v44 = v61;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v44;
    sub_1A87AC424(v56, v59, v45);
    sub_1A8717360(v59);
    v61 = v55;
  }

  else
  {
    sub_1A88BEFF8(v59, &v57);
    sub_1A860169C(&v57);
    sub_1A8717360(v59);
  }

  *&v57 = sub_1A88C82E8();
  *(&v57 + 1) = v46;
  v47 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  if (v17)
  {
    v58 = v47;
    *&v57 = v18;
    *(&v57 + 1) = v17;
    sub_1A85E99B0(&v57, v56);

    v48 = v61;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v48;
    sub_1A87AC424(v56, v59, v49);
  }

  else
  {
    sub_1A88BEFF8(v59, &v57);
    sub_1A860169C(&v57);
  }

  sub_1A8717360(v59);
  return v8;
}