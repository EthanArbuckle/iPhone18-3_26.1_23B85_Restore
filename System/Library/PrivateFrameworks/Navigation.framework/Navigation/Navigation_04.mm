unint64_t sub_1D3177870()
{
  result = qword_1EC75CBA0;
  if (!qword_1EC75CBA0)
  {
    type metadata accessor for ConnectedSearchNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CBA0);
  }

  return result;
}

uint64_t sub_1D31778D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D3152F1C;

  return sub_1D31731E0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1D31779B4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D3125778;

  return sub_1D3173BD8(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1D3177A84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3125778;

  return sub_1D3151B40(a1, v5);
}

uint64_t sub_1D3177B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D314B444(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D314B444((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D317F7E4(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D3177C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D314B444(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1D3166AC0(*v4, *(v4 + 8));
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D314B444((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D317F7E4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1D3177D44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D3277660();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D314B444(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1D38B45D0](i, a1);
        sub_1D3126084(0, &qword_1EC75CC88, 0x1E69A2700);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D314B444((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D317F7E4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1D3126084(0, &qword_1EC75CC88, 0x1E69A2700);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D314B444((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D317F7E4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1D3177F40()
{
  v1 = v0;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Starting timed updates.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___MNETAUpdateRequester__initialRequestDelay);

  sub_1D313489C(v6);
}

void sub_1D3178038()
{
  v1 = v0;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = sub_1D3276F60();
  v4 = sub_1D32773B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Stopping timed updates.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  sub_1D31781A0();
  v6 = OBJC_IVAR___MNETAUpdateRequester__requestTimer;
  v7 = *(v1 + OBJC_IVAR___MNETAUpdateRequester__requestTimer);
  if (v7 && v7[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
  {
    v7[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
    v8 = *&v7[OBJC_IVAR___MNDispatchTimer__internalTimer];
    v10 = v7;
    swift_getObjectType();
    v9 = v10;
    sub_1D3277440();

    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

void sub_1D31781A0()
{
  v1 = OBJC_IVAR___MNETAUpdateRequester__pendingRequest;
  v2 = *(v0 + OBJC_IVAR___MNETAUpdateRequester__pendingRequest);
  if (v2)
  {
    v3 = v2;
    if ([v3 hasXpcUuid])
    {
      v4 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *&v5[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken] = 0;
      v9.receiver = v5;
      v9.super_class = v4;
      v7 = objc_msgSendSuper2(&v9, sel_init);
      [v7 cancelRequest_];
    }

    else
    {
    }
  }

  v8 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1D3178268(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D317828C, 0, 0);
}

uint64_t sub_1D317828C()
{
  v16 = v0;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v1 = sub_1D3276F80();
  __swift_project_value_buffer(v1, qword_1EC760740);
  v2 = sub_1D3276F60();
  v3 = sub_1D32773B0();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_23;
  }

  v4 = v0[3];
  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 136315138;
  if (v4 <= 2)
  {
    switch(v4)
    {
      case 0:
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E55;
        goto LABEL_22;
      case 1:
        v7 = 0xED00006C61767265;
        v8 = 0x746E4964656D6954;
        goto LABEL_22;
      case 2:
        v8 = 0xD000000000000014;
        v7 = 0x80000001D32902E0;
LABEL_22:
        v10 = sub_1D312BA30(v8, v7, &v15);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_1D311E000, v2, v3, "Sending immediate update with reason: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x1D38B6000](v6, -1, -1);
        MEMORY[0x1D38B6000](v5, -1, -1);
LABEL_23:

        v11 = swift_task_alloc();
        v0[6] = v11;
        *v11 = v0;
        v11[1] = sub_1D31785B4;
        v12 = v0[4];
        v13 = v0[5];
        v14 = v0[3];

        return sub_1D31786B0(v14, v12, 0, 1);
    }
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v7 = 0x80000001D32902B0;
        v8 = 0xD000000000000020;
      }

      else
      {
        v7 = 0x80000001D3290280;
        v8 = 0xD000000000000027;
      }

      goto LABEL_22;
    }

    if (v4 == 5)
    {
      v7 = 0x80000001D3290260;
      v8 = 0xD000000000000017;
      goto LABEL_22;
    }

    if (v4 == 6)
    {
      v7 = 0xED00006B63616279;
      v8 = 0x616C506563617254;
      goto LABEL_22;
    }
  }

  v0[2] = v0[3];

  return sub_1D3277900();
}

uint64_t sub_1D31785B4(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D31786B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 600) = v4;
  *(v5 + 872) = a4;
  *(v5 + 592) = a3;
  *(v5 + 584) = a2;
  *(v5 + 576) = a1;
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  v8 = *(*(sub_1D3276A60() - 8) + 64) + 15;
  *(v5 + 608) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5C8, &unk_1D328B900) - 8) + 64) + 15;
  *(v5 + 616) = swift_task_alloc();
  *(v5 + 624) = swift_task_alloc();
  v10 = sub_1D3276D30();
  *(v5 + 632) = v10;
  v11 = *(v10 - 8);
  *(v5 + 640) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 648) = swift_task_alloc();
  v13 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  *(v5 + 656) = v13;
  v14 = *(v13 - 8);
  *(v5 + 664) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D312CEB4, 0, 0);
}

uint64_t sub_1D3178870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[65] = v4;
  v6[66] = a1;
  v6[67] = a2;
  v6[68] = a3;
  v6[69] = a4;
  v7 = v5[93];
  v9 = *v4;
  v6[94] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D3178984, 0, 0);
}

uint64_t sub_1D3178984()
{
  v1 = v0[94];
  if (v1)
  {
    v2 = v0[66];
    v3 = v0[68];
    v4 = v0[69];
    v0[95] = v4;
    v0[96] = v3;
    v0[97] = v2;
    v5 = v1;

    v6 = v4;
    v7 = swift_task_alloc();
    v0[98] = v7;
    *v7 = v0;
    v7[1] = sub_1D3178DF4;
    v8 = v0[86];
    v9 = v0[85];

    return sub_1D317CCB8(v9, v2, v5, v3, v6);
  }

  else
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v11 = sub_1D3276F80();
    __swift_project_value_buffer(v11, qword_1EC760740);
    v12 = sub_1D3276F60();
    v13 = sub_1D3277390();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D311E000, v12, v13, "Not sending ETA request because we were unable to create an ETA route.", v14, 2u);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }

    v15 = v0[89];
    v16 = v0[88];
    v17 = v0[87];
    v18 = v0[85];
    v19 = v0[82];
    v20 = v0[81];
    v21 = v0[72];

    sub_1D317EF40();
    v22 = swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 3;
    sub_1D3276D10();
    v24 = v18 + v19[5];
    sub_1D3276A30();

    *v18 = v21;
    v25 = (v18 + v19[6]);
    *v25 = 0u;
    v25[1] = 0u;
    *(v18 + v19[7]) = 0;
    *(v18 + v19[8]) = v22;
    v26 = v0[85];
    v27 = v0[82];
    v28 = *(v26 + *(v27 + 32));
    v0[99] = v28;
    if (v28 && (v29 = (v26 + *(v27 + 24)), v30 = v29[1], (v0[100] = v30) != 0))
    {
      v31 = v29[3];
      v0[101] = v31;
      v32 = v29[2];
      v0[102] = v32;
      v33 = *v29;
      v34 = v28;
      sub_1D3130A0C(v33, v30, v32, v31);
      v35 = swift_task_alloc();
      v0[103] = v35;
      *v35 = v0;
      v35[1] = sub_1D31336A0;
      v36 = v0[78];
      v37 = v0[75];

      return sub_1D317AEE8(v36, v33, v30, v32, v31, v28);
    }

    else
    {
      v38 = v0[75];
      v39 = sub_1D312F05C(v26);
      v0[104] = v39;
      v40 = swift_allocObject();
      v0[105] = v40;
      *(v40 + 16) = v38;
      *(v40 + 24) = v39;
      v41 = v39;
      v42 = v38;
      v43 = MNNavigationQueue();
      v0[106] = v43;
      if (v43)
      {
        v51 = v43;
        v52 = swift_task_alloc();
        v0[107] = v52;
        v52[2] = v51;
        v52[3] = sub_1D31311B0;
        v52[4] = v40;
        v53 = *(MEMORY[0x1E69E88D0] + 4);
        v43 = swift_task_alloc();
        v0[108] = v43;
        *v43 = v0;
        v43[1] = sub_1D317918C;
        v48 = sub_1D3130CE8;
        v47 = 0x80000001D32903A0;
        v50 = MEMORY[0x1E69E7CA8] + 8;
        v44 = 0;
        v45 = 0;
        v46 = 0xD000000000000010;
        v49 = v52;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DDE0](v43, v44, v45, v46, v47, v48, v49, v50);
    }
  }
}

uint64_t sub_1D3178DF4()
{
  v1 = *(*v0 + 784);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D3178EF0, 0, 0);
}

uint64_t sub_1D3178EF0()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];

  sub_1D312E1FC(v1, v4, v2, v3);

  v8 = v0[85];
  v9 = v0[82];
  v10 = *(v8 + *(v9 + 32));
  v0[99] = v10;
  if (v10 && (v11 = (v8 + *(v9 + 24)), v12 = v11[1], (v0[100] = v12) != 0))
  {
    v13 = v11[3];
    v0[101] = v13;
    v14 = v11[2];
    v0[102] = v14;
    v15 = *v11;
    v16 = v10;
    sub_1D3130A0C(v15, v12, v14, v13);
    v17 = swift_task_alloc();
    v0[103] = v17;
    *v17 = v0;
    v17[1] = sub_1D31336A0;
    v18 = v0[78];
    v19 = v0[75];

    return sub_1D317AEE8(v18, v15, v12, v14, v13, v10);
  }

  else
  {
    v21 = v0[75];
    v22 = sub_1D312F05C(v8);
    v0[104] = v22;
    v23 = swift_allocObject();
    v0[105] = v23;
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = v22;
    v25 = v21;
    v26 = MNNavigationQueue();
    v0[106] = v26;
    if (v26)
    {
      v34 = v26;
      v35 = swift_task_alloc();
      v0[107] = v35;
      v35[2] = v34;
      v35[3] = sub_1D31311B0;
      v35[4] = v23;
      v36 = *(MEMORY[0x1E69E88D0] + 4);
      v26 = swift_task_alloc();
      v0[108] = v26;
      *v26 = v0;
      v26[1] = sub_1D317918C;
      v31 = sub_1D3130CE8;
      v30 = 0x80000001D32903A0;
      v33 = MEMORY[0x1E69E7CA8] + 8;
      v27 = 0;
      v28 = 0;
      v29 = 0xD000000000000010;
      v32 = v35;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DDE0](v26, v27, v28, v29, v30, v31, v32, v33);
  }
}

uint64_t sub_1D317918C()
{
  v1 = *(*v0 + 864);
  v2 = *(*v0 + 856);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D31792A4, 0, 0);
}

uint64_t sub_1D31792A4()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[86];
  v5 = v0[85];

  sub_1D3125FBC((v0 + 20), &qword_1EC75C5D8, &qword_1D328B950);
  sub_1D312EB88(v5);
  v6 = v0[104];
  v7 = v0[85];
  v8 = v0[84];
  v9 = v0[81];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];

  v13 = v0[1];

  return v13(v6);
}

id ETAUpdateRequester.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___MNETAUpdateRequester__requestTimer];
  if (v2)
  {
    v3 = qword_1EC75BE50;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1D3276F80();
    __swift_project_value_buffer(v5, qword_1EC760740);
    v6 = sub_1D3276F60();
    v7 = sub_1D3277390();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      MEMORY[0x1D38B6000](v8, -1, -1);
    }

    if (v4[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
    {
      v4[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
      v9 = *&v4[OBJC_IVAR___MNDispatchTimer__internalTimer];
      swift_getObjectType();
      sub_1D3277440();
    }
  }

  sub_1D31781A0();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ETAUpdateRequester();
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

id ETAUpdateRequester.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D3179654()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v6 = sub_1D3276F80();
    __swift_project_value_buffer(v6, qword_1EC760740);
    v7 = sub_1D3276F60();
    v8 = sub_1D3277380();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v7, v8, "Timer fired.", v9, 2u);
      MEMORY[0x1D38B6000](v9, -1, -1);
    }

    v10 = sub_1D3277280();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v5;
    sub_1D314F750(0, 0, v3, &unk_1D328CCA0, v11);
  }

  else
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v12 = sub_1D3276F80();
    __swift_project_value_buffer(v12, qword_1EC760740);
    v13 = sub_1D3276F60();
    v14 = sub_1D32773B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D311E000, v13, v14, "Timer fired but ETAUpdateRequester was deinitialized already. Calling stopTimedUpdates() is recommended.", v15, 2u);
      MEMORY[0x1D38B6000](v15, -1, -1);
    }
  }
}

uint64_t sub_1D31798E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = a4;
  *(v4 + 16) = 0u;
  v5 = swift_task_alloc();
  *(v4 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_1D3133A3C;

  return sub_1D31786B0(1, v4 + 16, 0x4062C00000000000, 0);
}

uint64_t sub_1D31799A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 640) = a4;
  *(v4 + 632) = a3;
  *(v4 + 624) = a2;
  *(v4 + 616) = a1;
  *(v4 + 784) = *a3;
  *(v4 + 648) = *(a3 + 8);
  *(v4 + 664) = *(a3 + 24);
  *(v4 + 799) = *(a3 + 32);
  *(v4 + 792) = *(a3 + 33);
  *(v4 + 795) = *(a3 + 36);
  v5 = *(a3 + 56);
  *(v4 + 672) = *(a3 + 40);
  *(v4 + 688) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D3179A14, 0, 0);
}

uint64_t sub_1D3179A14()
{
  v39 = v0;
  v1 = *(v0 + 624);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 704) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 648);
    if (v3)
    {
      v5 = *(v0 + 672);
      v4 = *(v0 + 688);
      v6 = *(v0 + 664);
      v7 = *(v0 + 656);
      v8 = *(v0 + 799);
      v9 = *(v0 + 784);
      *(v0 + 88) = v9;
      *(v0 + 96) = v3;
      *(v0 + 104) = v7;
      *(v0 + 112) = v6;
      *(v0 + 120) = v8;
      *(v0 + 121) = *(v0 + 792);
      *(v0 + 124) = *(v0 + 795);
      v10 = v9;
      *(v0 + 128) = v5;
      *(v0 + 144) = v4;
LABEL_4:
      v11 = *(v0 + 632);
      *(v0 + 376) = v10;
      *(v0 + 384) = v3;
      *(v0 + 392) = v7;
      *(v0 + 400) = v6;
      *(v0 + 408) = v8 & 1;
      *(v0 + 416) = v5;
      *(v0 + 432) = v4;
      v12 = *(v0 + 392);
      *(v0 + 16) = *(v0 + 376);
      *(v0 + 32) = v12;
      v13 = *(v0 + 424);
      *(v0 + 48) = *(v0 + 408);
      *(v0 + 64) = v13;
      *(v0 + 80) = *(v0 + 440);
      sub_1D312601C(v11, v0 + 448, &qword_1EC75C5D8, &qword_1D328B950);
      sub_1D312601C(v11, v0 + 520, &qword_1EC75C5D8, &qword_1D328B950);
      v14 = swift_task_alloc();
      *(v0 + 712) = v14;
      *v14 = v0;
      v14[1] = sub_1D3179DCC;
      v15 = *(v0 + 640);
      v16 = *(v0 + 616);

      return sub_1D317A34C(v0 + 16, v15);
    }

    v18 = Strong;
    v19 = Strong + OBJC_IVAR___MNETAUpdateRequester_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v0 + 640);
      v21 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 8))(&v36, v18, v20, ObjectType, v21);
      swift_unknownObjectRelease();
      v3 = *(&v36 + 1);
      if (*(&v36 + 1))
      {
        v34 = *&v38[8];
        v35 = *&v38[24];
        v6 = *(&v37 + 1);
        v7 = v37;
        v10 = v36;
        v8 = v38[0];
        v23 = v37;
        v24 = *&v38[16];
        *(v0 + 264) = *v38;
        *(v0 + 280) = v24;
        *(v0 + 296) = *&v38[32];
        *(v0 + 232) = v36;
        *(v0 + 248) = v23;
        sub_1D317F4C4(v0 + 232, v0 + 304);
        v25 = v36;
        *(v0 + 104) = v37;
        v26 = *&v38[16];
        *(v0 + 120) = *v38;
        *(v0 + 136) = v26;
        *(v0 + 152) = *&v38[32];
        *(v0 + 88) = v25;
        v5 = v34;
        v4 = v35;
        goto LABEL_4;
      }

      v27 = *&v38[16];
      *(v0 + 192) = *v38;
      *(v0 + 208) = v27;
      *(v0 + 224) = *&v38[32];
      v28 = v37;
      *(v0 + 160) = v36;
      *(v0 + 176) = v28;
    }

    else
    {
      *(v0 + 224) = 0;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0u;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0u;
    }

    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v29 = sub_1D3276F80();
    __swift_project_value_buffer(v29, qword_1EC760740);
    v30 = sub_1D3276F60();
    v31 = sub_1D3277390();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D311E000, v30, v31, "Aborting ETA update request because we have no navigation info.", v32, 2u);
      MEMORY[0x1D38B6000](v32, -1, -1);
    }

    sub_1D3125FBC(v0 + 160, &qword_1EC75C5D8, &qword_1D328B950);
  }

  v33 = *(v0 + 8);

  return v33(0, 0, 0, 0);
}

uint64_t sub_1D3179DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 712);
  v8 = *v4;
  v5[90] = a1;
  v5[91] = a2;
  v5[92] = a3;
  v5[93] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D3179ED8, 0, 0);
}

uint64_t sub_1D3179ED8()
{
  if (*(v0 + 728))
  {
    v1 = *(v0 + 704);
    v2 = *(v0 + 616);
    v3 = swift_allocObject();
    *(v0 + 752) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = v2;
    v5 = v1;
    v6 = MNNavigationQueue();
    *(v0 + 760) = v6;
    if (v6)
    {
      v14 = v6;
      v15 = swift_task_alloc();
      *(v0 + 768) = v15;
      v15[2] = v14;
      v15[3] = sub_1D317F52C;
      v15[4] = v3;
      v16 = *(MEMORY[0x1E69E88D0] + 4);
      v6 = swift_task_alloc();
      *(v0 + 776) = v6;
      *v6 = v0;
      v6[1] = sub_1D317A194;
      v11 = sub_1D317F9EC;
      v10 = 0x80000001D32903A0;
      v13 = MEMORY[0x1E69E7CA8] + 8;
      v7 = 0;
      v8 = 0;
      v9 = 0xD000000000000010;
      v12 = v15;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    sub_1D3125FBC(v0 + 88, &qword_1EC75C5D8, &qword_1D328B950);
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v17 = sub_1D3276F80();
    __swift_project_value_buffer(v17, qword_1EC760740);
    v18 = sub_1D3276F60();
    v19 = sub_1D3277390();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 744);
      v21 = *(v0 + 736);
      v22 = *(v0 + 720);
      v23 = *(v0 + 704);
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D311E000, v18, v19, "Aborting ETA update request because we failed to create a valid request.", v24, 2u);
      MEMORY[0x1D38B6000](v24, -1, -1);

      sub_1D312E1FC(v22, 0, v21, v20);
    }

    else
    {
    }

    sub_1D317F4FC(v0 + 376);

    v25 = *(v0 + 8);

    return v25(0, 0, 0, 0);
  }
}

uint64_t sub_1D317A194()
{
  v1 = *(*v0 + 776);
  v2 = *(*v0 + 768);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D317A2AC, 0, 0);
}

uint64_t sub_1D317A2AC()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[88];

  sub_1D317F4FC((v0 + 47));
  sub_1D3125FBC((v0 + 11), &qword_1EC75C5D8, &qword_1D328B950);

  v4 = v0[93];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[1];

  return v8(v7, v6, v5, v4);
}

uint64_t sub_1D317A34C(uint64_t a1, uint64_t a2)
{
  v3[169] = v2;
  v3[168] = a2;
  v3[167] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D317A374, 0, 0);
}

uint64_t sub_1D317A374()
{
  v1 = *(v0 + 1336);
  v2 = [objc_allocWithZone(MEMORY[0x1E69A1C50]) init];
  *(v0 + 1360) = v2;
  v3 = [*(v1 + 1) route];
  *(v0 + 1368) = v3;
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = [v5 routeMatch];
  *(v0 + 1376) = v7;
  if (!v7)
  {
    if (qword_1EC75BE50 == -1)
    {
LABEL_8:
      v20 = sub_1D3276F80();
      __swift_project_value_buffer(v20, qword_1EC760740);
      v21 = sub_1D3276F60();
      v22 = sub_1D3277390();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D311E000, v21, v22, "No route match was found in navigation info. Unable to send ETA update request because we don't know where on the route we are.", v23, 2u);
        MEMORY[0x1D38B6000](v23, -1, -1);
      }

      v8 = v2;
      goto LABEL_16;
    }

LABEL_35:
    swift_once();
    goto LABEL_8;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v7;
  if (![v2 prepareForRequest:*(v0 + 1352) route:v3 routeMatch:v7 targetLegIndex:v6 state:v4])
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v24 = sub_1D3276F80();
    __swift_project_value_buffer(v24, qword_1EC760740);
    v21 = sub_1D3276F60();
    v25 = sub_1D3277390();
    if (os_log_type_enabled(v21, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D311E000, v21, v25, "Error creating GEOComposedETARoute from navigation info. Aborting ETA update request.", v26, 2u);
      MEMORY[0x1D38B6000](v26, -1, -1);
    }

    v3 = v2;
LABEL_16:

    v27 = *(v0 + 8);

    return v27(0, 0, 0, 0);
  }

  v9 = [v5 _navigation_geoLocation];
  *(v0 + 1384) = v9;
  if (!v9)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC0](v9, v10, v11, v12);
  }

  v13 = v9;
  [*(v0 + 1352) setCurrentUserLocation_];
  v14 = [v3 directionsResponseID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D3276C80();
    v18 = v17;

    v19 = sub_1D3276C70();
    sub_1D31422C8(v16, v18);
  }

  else
  {
    v19 = 0;
  }

  v29 = *(v0 + 1344);
  [*(v0 + 1352) setDirectionsResponseID_];

  if (v29 < 7)
  {
    v30 = dword_1D328CD84[v29];
    v31 = *(v0 + 1336);
    [*(v0 + 1352) setPurpose_];
    if (*(v31 + 48) >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v33 = *(*(v0 + 1336) + 40);
      v32 = sub_1D3276C70();
    }

    v34 = *(v0 + 1336);
    [*(v0 + 1352) setSessionState_];

    if (*(v34 + 56))
    {
      [*(v0 + 1352) setRecentLocationHistory_];
    }

    v35 = *(*(v0 + 1336) + 64);
    if (v35)
    {
      v36 = *(v0 + 1352);
      sub_1D3177D44(v35);
      v37 = objc_allocWithZone(MEMORY[0x1E695DF70]);
      v38 = sub_1D3277190();

      v39 = [v37 initWithArray_];

      [v36 setUserIncidentReports_];
    }

    v40 = *(v0 + 1352);
    v41 = sub_1D317B864(v3, v13, v6);
    *(v0 + 1392) = v41;
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v3;
    v42[4] = v41;
    v43 = swift_allocObject();
    *(v0 + 1400) = v43;
    *(v43 + 16) = &unk_1D328CC38;
    *(v43 + 24) = v42;
    v44 = v40;
    v45 = v3;

    swift_asyncLet_begin();
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v41;
    v47 = swift_allocObject();
    *(v0 + 1408) = v47;
    *(v47 + 16) = &unk_1D328CC58;
    *(v47 + 24) = v46;
    v48 = v44;

    swift_asyncLet_begin();
    v11 = sub_1D317A97C;
    v9 = (v0 + 16);
    v12 = v0 + 1296;

    return MEMORY[0x1EEE6DEC0](v9, v10, v11, v12);
  }

  *(v0 + 16) = *(v0 + 1344);

  return sub_1D3277900();
}

uint64_t sub_1D317A97C(uint64_t a1, uint64_t a2)
{
  *(v3 + 1416) = v2;
  if (v2)
  {
    v4 = *(v3 + 1392);

    return MEMORY[0x1EEE6DFA0](sub_1D317AB9C, 0, 0);
  }

  else
  {

    return MEMORY[0x1EEE6DEB8](v3 + 656, a2, sub_1D317AA24, v3 + 1296);
  }
}

uint64_t sub_1D317AA40()
{
  v1 = *(v0 + 1352);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v2, sub_1D317AAA8, v0 + 1296);
}

uint64_t sub_1D317AAFC()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);

  v5 = *(v0 + 1392);
  v6 = *(v0 + 1360);
  v7 = *(v0 + 1352);
  v8 = *(v0 + 1344);
  v9 = *(v0 + 8);

  return v9(v8, v6, v5, v7);
}

uint64_t sub_1D317AB9C()
{
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1416);
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D3277390();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1416);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v4, v5, "Aborting ETA update request because we failed to build route attributes. Error: %@", v8, 0xCu);
    sub_1D3125FBC(v9, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x1EEE6DEB0](v0 + 656, v12, sub_1D317AD48, v0 + 1296);
}

uint64_t sub_1D317AD9C()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);
  v5 = *(v0 + 1360);

  v6 = *(v0 + 8);

  return v6(0, 0, 0, 0);
}

uint64_t sub_1D317AE4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR___MNETAUpdateRequester_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D317AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = *(*(sub_1D3276D30() - 8) + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D317AF84, 0, 0);
}

uint64_t sub_1D317AF84()
{
  v1 = [v0[4].receiver routeAttributes];
  v0[6].receiver = v1;
  if (v1)
  {
    v2 = v1;
    super_class = v0[4].super_class;
    v4 = sub_1D3276BE0();
    v5 = [v2 shouldRetryForError_];

    if (v5)
    {
      v6 = v0[3].super_class;
      v7 = *(v0[5].receiver + OBJC_IVAR___MNETAUpdateRequester__auditToken);
      v8 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
      v9 = objc_allocWithZone(v8);
      v10 = &v9[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
      *v10 = 0u;
      *(v10 + 1) = 0u;
      *&v9[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken] = v7;
      v0[1].receiver = v9;
      v0[1].super_class = v8;
      v11 = v7;
      v0[6].super_class = objc_msgSendSuper2(v0 + 1, sel_init);

      v12 = swift_task_alloc();
      v0[7].receiver = v12;
      *v12 = v0;
      v12[1] = sub_1D317B1BC;
      receiver = v0[4].receiver;

      return sub_1D317EC0C(v2);
    }

    v17 = v0[2].receiver;
    v18 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  else
  {
    v15 = v0[2].receiver;
    v16 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v19 = v0[5].super_class;

  v20 = v0->super_class;

  return v20();
}

uint64_t sub_1D317B1BC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);

    v5 = sub_1D317B2D8;
  }

  else
  {
    v5 = sub_1D317B5B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D317B2D8()
{
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC760740);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D3277390();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v4, v5, "Not retrying ETA update request because we failed to build route attributes. Error: %@", v8, 0xCu);
    sub_1D3125FBC(v9, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  else
  {
  }

  v12 = sub_1D3276F60();
  v13 = sub_1D3277390();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D311E000, v12, v13, "Not sending ETA request because we were unable to create an ETA route.", v14, 2u);
    MEMORY[0x1D38B6000](v14, -1, -1);
  }

  v15 = *(v0 + 88);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);

  sub_1D317EF40();
  v18 = swift_allocError();
  *v19 = 0;
  *(v19 + 8) = 3;
  sub_1D3276D10();
  v20 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v21 = v17 + v20[5];
  sub_1D3276A30();
  *v17 = v16;
  v22 = (v17 + v20[6]);
  *v22 = 0u;
  v22[1] = 0u;
  *(v17 + v20[7]) = 0;
  *(v17 + v20[8]) = v18;
  v23 = *(v0 + 104);
  v24 = *(v0 + 32);

  (*(*(v20 - 1) + 56))(v24, 0, 1, v20);
  v25 = *(v0 + 88);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D317B5B8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = v2;
  v5 = v3;

  v6 = v4;
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1D317B68C;
  v8 = *(v0 + 104);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);

  return sub_1D317CCB8(v13, v11, v12, v9, v10);
}

uint64_t sub_1D317B68C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D317B788, 0, 0);
}

uint64_t sub_1D317B788()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  swift_bridgeObjectRelease_n();
  v4 = *(v0 + 104);
  v5 = *(v0 + 32);

  v6 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

id sub_1D317B864(void *a1, int64_t a2, uint64_t a3)
{
  [v3 clearWaypointTypeds];
  result = [a1 waypoints];
  if (result)
  {
    v9 = result;
    sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
    v10 = sub_1D32771A0();

    v11 = __OFADD__(a3, 1);
    v12 = a3 + 1;
    if (v11)
    {
      goto LABEL_30;
    }

    v4 = (v10 >> 62);
    if (v10 >> 62)
    {
      goto LABEL_31;
    }

    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result;
    if (result < v12)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      while ((v12 & 0x8000000000000000) == 0)
      {
        if (v4)
        {
          result = sub_1D3277660();
        }

        else
        {
          result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result < v13)
        {
          goto LABEL_36;
        }

        if (v13 < 0)
        {
          goto LABEL_37;
        }

        if ((v10 & 0xC000000000000001) == 0 || v12 == v13)
        {
        }

        else
        {
          if (v12 >= v13)
          {
            goto LABEL_38;
          }

          v14 = v12;
          do
          {
            v15 = v14 + 1;
            sub_1D3277700();
            v14 = v15;
          }

          while (v13 != v15);
        }

        v25 = a2;
        if (v4)
        {
          v16 = sub_1D32777E0();
          v17 = v19;
          v12 = v20;
          v18 = v21;
        }

        else
        {
          v16 = v10 & 0xFFFFFFFFFFFFFF8;
          v17 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
          v18 = (2 * v13) | 1;
        }

        a2 = v18 >> 1;
        swift_unknownObjectRetain();
        v26 = v12;
        if (v12 == v18 >> 1)
        {
LABEL_22:
          swift_unknownObjectRelease();
          result = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v25 isCurrentLocation:1];
          if (!result)
          {
            goto LABEL_40;
          }

          v22 = result;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1D328B8F0;
          *(v23 + 32) = v22;
          v27 = v23;
          sub_1D314263C(v16, v17, v26, v18);
          swift_unknownObjectRelease();
          return v27;
        }

        while (v12 < a2)
        {
          v10 = *(v17 + 8 * v12);
          v24 = [v10 geoWaypointTyped];
          if (v24)
          {
            v4 = v24;
            [v3 addWaypointTyped_];
          }

          ++v12;

          if (a2 == v12)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        result = sub_1D3277660();
        if (result < v12)
        {
          goto LABEL_41;
        }

        v13 = result;
        result = sub_1D3277660();
        if (result < v12)
        {
          __break(1u);
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1D317BB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D317BB90, 0, 0);
}

uint64_t sub_1D317BB90()
{
  v1 = *(v0 + 32);
  v2 = sub_1D317C684(*(v0 + 24));
  *(v0 + 40) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1D317BC34;
  v4 = *(v0 + 16);

  return sub_1D317EC0C(v2);
}

uint64_t sub_1D317BC34()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D317BDAC;
  }

  else
  {
    v3 = sub_1D317BD48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D317BD48()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D317BDAC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_1D317BE10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D3125778;

  return v6();
}

uint64_t sub_1D317BEF8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D3125778;

  return sub_1D317BF94(a2);
}

uint64_t sub_1D317BF94(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC90, &unk_1D328CC78);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D317C098, 0, 0);
}

uint64_t sub_1D317C098()
{
  v1 = v0[24];
  sub_1D3276D10();
  v2 = sub_1D3276D30();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = sub_1D32770B0();
  v5 = 0;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v6 = v0[24];
    v5 = sub_1D3276CD0();
    (*(v3 + 8))(v6, v2);
  }

  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v10 = v0[19];
  v11 = [objc_allocWithZone(MNFamiliarRouteProvider) initWithPurpose:0 reason:v4 date:v5];
  v0[25] = v11;

  sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
  v12 = sub_1D3277190();
  v0[26] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D317C388;
  swift_continuation_init();
  v0[17] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC98, &unk_1D328CC88);
  sub_1D3277210();
  (*(v8 + 32))(boxed_opaque_existential_1, v7, v9);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D317C624;
  v0[13] = &block_descriptor_128;
  [v11 fetchFamiliarRouteWithWaypoints:v12 handler:?];
  (*(v8 + 8))(boxed_opaque_existential_1, v9);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D317C388()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D317C468, 0, 0);
}

uint64_t sub_1D317C468()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = v1;
    v3 = [v2 geoFamiliarWaypointRoute];
    v4 = *(v0 + 200);
    if (v3)
    {
      v5 = v3;
      [*(v0 + 160) setFamiliarWaypointRoute_];
    }
  }

  else
  {
    v4 = *(v0 + 200);
  }

  v7 = *(v0 + 184);
  v6 = *(v0 + 192);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D317C53C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D312586C;

  return v6();
}

uint64_t sub_1D317C624(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC90, &unk_1D328CC78);
  return sub_1D3277230();
}

id sub_1D317C684(void *a1)
{
  v2 = [a1 routeAttributes];
  if (!v2)
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v3 = sub_1D3276F80();
    __swift_project_value_buffer(v3, qword_1EC760740);
    v4 = sub_1D3276F60();
    v5 = sub_1D32773A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D311E000, v4, v5, "Route is missing route attributes for some reason. Creating new route attributes so we can still continue with the ETA update request, but this is unexpected.", v6, 2u);
      MEMORY[0x1D38B6000](v6, -1, -1);
    }

    v2 = [objc_opt_self() defaultRouteAttributesForTransportType_];
    if (!v2)
    {
      v7 = 0;
LABEL_10:
      v9 = objc_allocWithZone(MNRouteAttributes);
      sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
      v10 = sub_1D3277190();
      v8 = [v9 initWithAttributes:v7 waypoints:v10];

      return v8;
    }
  }

  v7 = v2;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();

  if (!v8)
  {
    goto LABEL_10;
  }

  return v8;
}

void sub_1D317C854(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC80, &qword_1D328CC20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = MNNavigationQueue();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_1D317F438;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D312E254;
    aBlock[3] = &block_descriptor_95;
    v15 = _Block_copy(aBlock);

    [a2 buildRouteAttributesForETAUpdateRequest:a3 queue:v12 result:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D317CA34(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC80, &qword_1D328CC20);
    return sub_1D3277230();
  }

  else
  {
    sub_1D317EF40();
    swift_allocError();
    *v5 = a2;
    *(v5 + 8) = 0;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC80, &qword_1D328CC20);
    return sub_1D3277220();
  }
}

uint64_t sub_1D317CAE0(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E55;
      case 1:
        return 0x746E4964656D6954;
      case 2:
        return 0xD000000000000014;
    }

LABEL_16:
    result = sub_1D3277900();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000017;
    }

    if (a1 == 6)
    {
      return 0x616C506563617254;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000027;
  }
}

unint64_t sub_1D317CC34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D317EF30(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D317CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1D3276D30();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D317CD80, 0, 0);
}

uint64_t sub_1D317CD80()
{
  v20 = v0[10];
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_1D3276D10();
  v6 = OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest;
  v0[11] = OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest;
  v7 = (v2 + v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  *v7 = v5;
  v7[1] = v4;
  v7[2] = v3;
  v7[3] = v1;
  v12 = v4;

  v13 = v1;
  sub_1D312E1FC(v8, v9, v10, v11);
  v14 = swift_task_alloc();
  v0[12] = v14;
  v14[2] = v2;
  v14[3] = v5;
  v14[4] = v12;
  v14[5] = v3;
  v14[6] = v13;
  v14[7] = v20;
  v15 = *(MEMORY[0x1E69E88D0] + 4);
  v16 = swift_task_alloc();
  v0[13] = v16;
  v17 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  *v16 = v0;
  v16[1] = sub_1D317CF00;
  v18 = v0[2];

  return MEMORY[0x1EEE6DDE0](v18, 0, 0, 0xD000000000000018, 0x80000001D3290300, sub_1D317EFDC, v14, v17);
}

uint64_t sub_1D317CF00()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D317D018, 0, 0);
}

uint64_t sub_1D317D018()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = (v0[7] + v0[11]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  sub_1D312E1FC(v5, v6, v7, v8);
  (*(v3 + 8))(v1, v2);

  v9 = v0[1];

  return v9();
}

void sub_1D317D0BC(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v43 = a4;
  v44 = a6;
  v41 = a3;
  v42 = a5;
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v37[1] = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v37 - v11;
  v12 = sub_1D3276D30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v16 = sub_1D3276F80();
  __swift_project_value_buffer(v16, qword_1EC760740);
  v17 = sub_1D3276F60();
  v18 = sub_1D32773B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a1;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D311E000, v17, v18, "Starting immediate ETA update request.", v20, 2u);
    v21 = v20;
    a1 = v19;
    MEMORY[0x1D38B6000](v21, -1, -1);
  }

  v37[0] = *&v45[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = a7;
  v24 = v12;
  (*(v13 + 16))(v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v12);
  v26 = v39;
  v25 = v40;
  v27 = v38;
  (*(v39 + 16))(v40, a1, v38);
  v28 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v29 = (v14 + *(v26 + 80) + v28) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 2) = v22;
  *(v30 + 3) = v31;
  v32 = v42;
  *(v30 + 4) = v43;
  *(v30 + 5) = v32;
  *(v30 + 6) = v44;
  (*(v13 + 32))(&v30[v28], v15, v24);
  (*(v26 + 32))(&v30[v29], v25, v27);
  aBlock[4] = sub_1D317EFEC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D312E254;
  aBlock[3] = &block_descriptor_7;
  v33 = _Block_copy(aBlock);
  v34 = v43;

  v35 = v44;

  v36 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
  v46.receiver = v45;
  v46.super_class = v36;
  objc_msgSendSuper2(&v46, sel_sendETATrafficUpdateRequest_auditToken_throttleToken_finishedHandler_, v35, v37[0], 0, v33);
  _Block_release(v33);
}

void *sub_1D317D4A4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v39 = a2;
  v42 = sub_1D3276D30();
  v40 = *(v42 - 8);
  v13 = *(v40 + 64);
  v14 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v36 - v16;
  v17 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v44 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v36 - v21);
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v23 = sub_1D3276F80();
  __swift_project_value_buffer(v23, qword_1EC760740);
  v24 = sub_1D3276F60();
  v25 = sub_1D3277380();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v37 = a4;
    v27 = v26;
    *v26 = 0;
    _os_log_impl(&dword_1D311E000, v24, v25, "Immediate ETA update request finished handler.", v26, 2u);
    a4 = v37;
    MEMORY[0x1D38B6000](v27, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    (*(v40 + 16))(v38, v43, v42);
    sub_1D3276D10();
    v29 = v22 + v17[5];
    sub_1D3276A20();
    *v22 = a4;
    v30 = (v22 + v17[6]);
    *v30 = a4;
    v30[1] = a5;
    v30[2] = a6;
    v30[3] = a7;
    *(v22 + v17[7]) = a1;
    v31 = v39;
    *(v22 + v17[8]) = v39;
    sub_1D312E8CC(v22, v44);
    v32 = a5;

    v33 = a7;
    v34 = a1;
    v35 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
    sub_1D3277230();
    return sub_1D312EB88(v22);
  }

  return result;
}

void sub_1D317D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - v14;
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v16 = sub_1D3276F80();
  __swift_project_value_buffer(v16, qword_1EC760740);
  v17 = sub_1D3276F60();
  v18 = sub_1D3277380();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D311E000, v17, v18, "Opportunistic request willSendRequestHandler.", v19, 2u);
    MEMORY[0x1D38B6000](v19, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = sub_1D3277280();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v23;
    v24[5] = a5;
    v24[6] = a6;
    v24[7] = a7;
    v24[8] = a2;
    v24[9] = a3;

    v25 = a7;

    sub_1D314F750(0, 0, v15, &unk_1D328CC08, v24);
  }
}

uint64_t sub_1D317DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D317DA60, 0, 0);
}

uint64_t sub_1D317DA60()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v9 = (v0[6] + *v0[6]);
    v3 = *(v0[6] + 4);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_1D317DBA8;
    v6 = v0[7];
    v5 = v0[8];

    return v9(v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D317DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v8 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D317DCAC, 0, 0);
}

uint64_t sub_1D317DCAC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 104);
    v5 = (*(v0 + 88) + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    *v5 = v4;
    v5[1] = v1;
    v5[2] = v2;
    v5[3] = v3;
    sub_1D3130A0C(v4, v1, v2, v3);
    v31 = v1;

    v10 = v3;
    sub_1D312E1FC(v6, v7, v8, v9);
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v11 = sub_1D3276F80();
    __swift_project_value_buffer(v11, qword_1EC760740);
    v12 = sub_1D3276F60();
    v13 = sub_1D3277380();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D311E000, v12, v13, "Opportunistic request sending finalized request.", v14, 2u);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);

    v21 = v10;
    v20(v15);

    sub_1D312E1FC(v18, v17, v16, v15);
  }

  else
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v22 = sub_1D3276F80();
    __swift_project_value_buffer(v22, qword_1EC760740);
    v23 = sub_1D3276F60();
    v24 = sub_1D3277390();
    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      v27 = *(v0 + 104);
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D311E000, v23, v24, "Not sending opportunistic request because the handler didn't return a valid request info.", v28, 2u);
      MEMORY[0x1D38B6000](v28, -1, -1);
      sub_1D312E1FC(v27, 0, v26, v25);
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

void sub_1D317DF6C(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

id sub_1D317E06C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *MNETAUpdateResponseInfo.request.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_request);
  v2 = v1;
  return v1;
}

void *MNETAUpdateResponseInfo.response.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_response);
  v2 = v1;
  return v1;
}

void *MNETAUpdateResponseInfo.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_error);
  v2 = v1;
  return v1;
}

uint64_t MNETAUpdateResponseInfo.responseTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_responseTime;
  v4 = sub_1D3276A60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *MNETAUpdateResponseInfo.etaRoute.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_etaRoute);
  v2 = v1;
  return v1;
}

uint64_t sub_1D317E414()
{
  result = sub_1D3276A60();
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

uint64_t sub_1D317E4D0()
{
  result = sub_1D3276A60();
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

uint64_t get_enum_tag_for_layout_string_10Navigation18ETAUpdateRequesterC0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D317E5E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D317E62C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1D317E6C4()
{
  sub_1D3276A60();
  if (v0 <= 0x3F)
  {
    sub_1D317E788();
    if (v1 <= 0x3F)
    {
      sub_1D317E7D8();
      if (v2 <= 0x3F)
      {
        sub_1D317E840();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D317E788()
{
  if (!qword_1EC75BEF8)
  {
    v0 = sub_1D3277600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC75BEF8);
    }
  }
}

void sub_1D317E7D8()
{
  if (!qword_1EC75BD58)
  {
    sub_1D3126084(255, &qword_1EC75BD60, 0x1E69A1D58);
    v0 = sub_1D3277600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC75BD58);
    }
  }
}

void sub_1D317E840()
{
  if (!qword_1EC75BD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75C348, &qword_1D328ACD0);
    v0 = sub_1D3277600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC75BD40);
    }
  }
}

unint64_t sub_1D317E8A8()
{
  result = qword_1EC75CC70;
  if (!qword_1EC75CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CC70);
  }

  return result;
}

id sub_1D317E8FC(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  *&v5[OBJC_IVAR___MNETAUpdateRequester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___MNETAUpdateRequester__requestTimer] = 0;
  *&v5[OBJC_IVAR___MNETAUpdateRequester__pendingRequest] = 0;
  GEOConfigGetDouble();
  if (v11 <= 5.0)
  {
    v11 = 5.0;
  }

  v12 = OBJC_IVAR___MNETAUpdateRequester__etaRequestInterval;
  *&v5[OBJC_IVAR___MNETAUpdateRequester__etaRequestInterval] = v11;
  *&v5[OBJC_IVAR___MNETAUpdateRequester__opportunisticRequestTimeWindow] = 0x4062C00000000000;
  *&v5[OBJC_IVAR___MNETAUpdateRequester__maxAlternateRoutesCount] = 2;
  v13 = &v5[OBJC_IVAR___MNETAUpdateRequester__tripOrigin];
  *v13 = a4;
  v13[1] = a5;
  v14 = &v5[OBJC_IVAR___MNETAUpdateRequester__requestingAppIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v5[OBJC_IVAR___MNETAUpdateRequester__auditToken] = a3;
  v15 = a3;
  GEOConfigGetDouble();
  if (v16 < 2.22044605e-16)
  {
    v16 = *&v5[v12];
  }

  if (v16 <= 5.0)
  {
    v16 = 5.0;
  }

  *&v5[OBJC_IVAR___MNETAUpdateRequester__initialRequestDelay] = v16;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for ETAUpdateRequester();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_1D317EA60(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v21 = a2;
  v7 = sub_1D3276A60();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = v8[2];
  v13(v11, a4, v7);
  v14 = type metadata accessor for ETAUpdateRequester.ResponseInfo(0);
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_reason] = a1;
  v16 = &v15[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result];
  *v16 = v21;
  *(v16 + 1) = v12;
  v16[16] = 1;
  *&v15[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request] = 0;
  *&v15[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response] = 0;
  v13(&v15[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_responseTime], v11, v7);
  v22.receiver = v15;
  v22.super_class = v14;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = v8[1];
  v18(a4, v7);
  v18(v11, v7);
  return v17;
}

uint64_t sub_1D317EC0C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D317EC2C, 0, 0);
}

uint64_t sub_1D317EC2C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_1D3126084(0, &qword_1EC75BDA0, 0x1E69A2500);
  *v3 = v0;
  v3[1] = sub_1D317ED38;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000032, 0x80000001D32904C0, sub_1D317F430, v1, v4);
}

uint64_t sub_1D317ED38()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1D317EECC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1D317EE54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D317EE54()
{
  v1 = *(v0 + 16);
  [*(v0 + 32) setRouteAttributes_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D317EECC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

unint64_t sub_1D317EF30(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D317EF40()
{
  result = qword_1EC75CDD0;
  if (!qword_1EC75CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CDD0);
  }

  return result;
}

id sub_1D317EF94(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_1D317EFB8(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

void *sub_1D317EFEC(void *a1, void *a2)
{
  v5 = *(sub_1D3276D30() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0) - 8);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));
  return sub_1D317D4A4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6);
}

uint64_t sub_1D317F0E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 96);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D317F198;

  return sub_1D31799A4(a1, v4, v1 + 24, v5);
}

uint64_t sub_1D317F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  v12 = *v4;

  v10 = *(v12 + 8);

  return v10(a1, a2, a3, a4);
}

uint64_t sub_1D317F2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5C8, &unk_1D328B900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D317F344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D3152F1C;

  return sub_1D317DA30(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1D317F438(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC80, &qword_1D328CC20) - 8) + 80);

  return sub_1D317CA34(a1, a2);
}

uint64_t sub_1D317F534()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D3152F1C;

  return sub_1D317BB6C(v2, v3, v4);
}

uint64_t sub_1D317F5DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3152F1C;

  return sub_1D317BE10(a1, v5);
}

uint64_t sub_1D317F694()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D3152F1C;

  return sub_1D317BEF8(v2, v3);
}

uint64_t sub_1D317F72C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3125778;

  return sub_1D317C53C(a1, v5);
}

_OWORD *sub_1D317F7E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D317F814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D3125778;

  return sub_1D31798E8(a1, v4, v5, v6);
}

void sub_1D317F8C8(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_1D317EFB8(a1, a2);
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D317F924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D317F96C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D317F9B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D317FA00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC75C020 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  v3 = __swift_project_value_buffer(v2, qword_1EC7608B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_1D317FAA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapMatcher_Walking();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D317FB00(void *a1)
{
  v3 = sub_1D3276F80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___MNMapMatcher__matchedPathSegmentsOnRoute] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___MNMapMatcher__roadIdsOnRoute] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___MNMapMatcher__locationHistory] = v8;
  *&v1[OBJC_IVAR___MNMapMatcher__locationHistoryDistance] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher__routeRadiusPinnedCenter] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher__backwardsMovementDistance] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher__routeMatchedLocationHistory] = v8;
  v1[OBJC_IVAR___MNMapMatcher__hasBeenOnRouteOnce] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher____lazy_storage____routePartitionTree] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher____lazy_storage____mapFeatureAccess] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher____lazy_storage____pathMatcher] = 0;
  *&v1[OBJC_IVAR___MNMapMatcher__route] = a1;
  v9 = type metadata accessor for MapMatcher();
  v19.receiver = v1;
  v19.super_class = v9;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v19, sel_init);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x1C8);
  v13 = v11;
  v12();
  v14 = sub_1D3276F60();
  v15 = sub_1D32773B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D311E000, v14, v15, "Created MapMatcher.", v16, 2u);
    MEMORY[0x1D38B6000](v16, -1, -1);
    v17 = v10;
  }

  else
  {
    v17 = v14;
    v14 = v10;
  }

  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t sub_1D317FD78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4A8, &qword_1D328B508);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = OBJC_IVAR___MNMapMatcher____lazy_storage____routePartitionTree;
  if (*(v0 + OBJC_IVAR___MNMapMatcher____lazy_storage____routePartitionTree))
  {
    v10 = *(v0 + OBJC_IVAR___MNMapMatcher____lazy_storage____routePartitionTree);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR___MNMapMatcher__route);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 miles];
    sub_1D314843C();
    sub_1D32769E0();
    type metadata accessor for RoutePartitionTree();
    v10 = swift_allocObject();
    [v13 startRouteCoordinate];
    [v13 endRouteCoordinate];
    v15 = sub_1D32774D0();
    v30 = v16;
    v31 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v12 meters];
    v22 = v0;
    sub_1D3276A00();

    sub_1D32769F0();
    v24 = v23;
    v25 = *(v2 + 8);
    v25(v6, v1);
    type metadata accessor for RoutePartitionTree.Partition();
    swift_allocObject();
    v26 = sub_1D3146C80(v13, v31, v30, v18, v20, v24);
    v25(v8, v1);
    *(v10 + 16) = v26;
    v27 = *(v22 + v9);
    *(v22 + v9) = v10;
  }

  return v10;
}

uint64_t sub_1D3180018()
{
  v1 = OBJC_IVAR___MNMapMatcher____lazy_storage____mapFeatureAccess;
  v2 = *(v0 + OBJC_IVAR___MNMapMatcher____lazy_storage____mapFeatureAccess);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MNMapMatcher____lazy_storage____mapFeatureAccess);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = geo_dispatch_queue_create();
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x1E69A2198]) initWithQueue_];

    [v6 setAllowNetworkTileLoad_];
    [v6 setAllowStaleData_];
    [v6 setFlipNegativeTravelDirectionRoads_];
    [v6 setVisitDoubleTravelDirectionRoadsTwice_];
    [v6 setAllowOfflineData_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1D318011C()
{
  v1 = OBJC_IVAR___MNMapMatcher____lazy_storage____pathMatcher;
  v2 = *(v0 + OBJC_IVAR___MNMapMatcher____lazy_storage____pathMatcher);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MNMapMatcher____lazy_storage____pathMatcher);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A2330]) initWithRoute:*(v0 + OBJC_IVAR___MNMapMatcher__route) auditToken:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D31801A4()
{
  v3 = OBJC_IVAR___MNMapMatcher__locationHistoryDistance;
  v4 = *(v1 + OBJC_IVAR___MNMapMatcher__locationHistoryDistance) + -250.0;
  v5 = OBJC_IVAR___MNMapMatcher__locationHistory;
  v6 = OBJC_IVAR___MNMapMatcher__routeMatchedLocationHistory;
  swift_beginAccess();
  result = swift_beginAccess();
  if (v4 <= 0.0)
  {
    return result;
  }

  while (1)
  {
    v8 = *(v1 + v5);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v28 = *(v1 + v5);
      }

      result = sub_1D3277660();
      if (result < 5)
      {
        return result;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 5)
      {
        return result;
      }
    }

    v9 = *(v1 + v5);
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v29 = *(v1 + v5);
      }

      result = sub_1D3277660();
      if (result < 2)
      {
        return result;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 2)
      {
        return result;
      }
    }

    v10 = *(v1 + v5);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v30 = *(v1 + v5);
      }

      v11 = sub_1D3277660();
      if (!v11)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_89;
      }
    }

    v0 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
      goto LABEL_90;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {

      v0 = MEMORY[0x1D38B45D0](v0, v10);
    }

    else
    {
      if (v0 < 0)
      {
        goto LABEL_91;
      }

      if (v0 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v0 = *(v10 + 8 * v0 + 32);
    }

    v12 = *(v1 + v5);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v31 = *(v1 + v5);
      }

      v32 = sub_1D3277660();
      v14 = v32 - 2;
      if (__OFSUB__(v32, 2))
      {
        goto LABEL_92;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 - 2;
      if (__OFSUB__(v13, 2))
      {
        goto LABEL_92;
      }
    }

    v2 = *(v1 + v5);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v33 = *(v1 + v5);

      v15 = MEMORY[0x1D38B45D0](v14, v2);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v15 = *(v2 + 8 * v14 + 32);
    }

    Distance = GEOCoordinateGetDistance(*(v0 + 16), *(v0 + 24), v15[1].f64[0], v15[1].f64[1]);
    v17 = v4 / Distance;
    if (v4 / Distance < 1.0)
    {
      break;
    }

    v2 = *(v1 + v6);
    if (v2 >> 62)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        v34 = *(v1 + v6);
      }

      v18 = sub_1D3277660();
      if (!v18)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_37;
      }
    }

    v19 = v18 - 1;
    if (__OFSUB__(v18, 1))
    {
      goto LABEL_96;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {

      v36 = MEMORY[0x1D38B45D0](v19, v2);
      swift_unknownObjectRelease();

      if (v0 == v36)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v19 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_99;
      }

      if (v0 == *(v2 + 8 * v19 + 32))
      {
LABEL_29:
        swift_beginAccess();
        v2 = *(v1 + v6);
        if (v2 >> 62)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            v37 = *(v1 + v6);
          }

          if (sub_1D3277660())
          {
LABEL_31:
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v1 + v6) = v2;
            if (v2 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
            {
              v2 = sub_1D3180EE8(v2);
            }

            v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v21)
            {
              goto LABEL_100;
            }

            v22 = v21 - 1;
            v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20);
            *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v22;
            *(v1 + v6) = v2;
          }
        }

        else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        swift_endAccess();
      }
    }

LABEL_37:
    swift_beginAccess();
    v2 = *(v1 + v5);
    if (v2 >> 62)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        v35 = *(v1 + v5);
      }

      if (!sub_1D3277660())
      {
        goto LABEL_3;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    v24 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + v5) = v2;
    if (v2 >> 62 || (v24 & 1) == 0)
    {
      v2 = sub_1D3180EE8(v2);
    }

    v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_98;
    }

    v26 = v25 - 1;
    v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v26 + 0x20);
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v26;
    *(v1 + v5) = v2;

LABEL_3:
    swift_endAccess();

    *(v1 + v3) = *(v1 + v3) - Distance;
    v4 = v4 - Distance;
    if (v4 <= 0.0)
    {
      return result;
    }
  }

  v38 = *(v0 + 32) + v17 * (v15[2].f64[0] - *(v0 + 32));
  *(v0 + 16) = vaddq_f64(*(v0 + 16), vmulq_n_f64(vsubq_f64(v15[1], *(v0 + 16)), v17));
  *(v0 + 32) = v38;
  v39 = *(v0 + 88);
  v40 = v15[5].f64[1];
  if (v39 <= v40)
  {
    goto LABEL_80;
  }

  v41 = v15[5].f64[1];
  if (v40 > v39)
  {
    __break(1u);
LABEL_80:
    v41 = v39;
    v39 = v40;
  }

  *(v0 + 88) = v41 + v17 * (v39 - v41);
  v2 = *(v1 + v6);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_83;
    }

LABEL_88:

LABEL_106:

    *(v1 + v3) = *(v1 + v3) - v4;
    return result;
  }

LABEL_101:
  result = sub_1D3277660();
  if (!result)
  {
    goto LABEL_88;
  }

LABEL_83:
  v42 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_104:

    v43 = MEMORY[0x1D38B45D0](v42, v2);
    swift_unknownObjectRelease();

    if (v0 != v43)
    {
      goto LABEL_88;
    }

    goto LABEL_105;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_104;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v42 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (v0 != *(v2 + 8 * v42 + 32))
    {
      goto LABEL_88;
    }

LABEL_105:
    v44 = sub_1D314725C(v0);

    v45 = *(v0 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch);
    *(v0 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_classicRouteMatch) = v44;

    *(v0 + OBJC_IVAR____TtCC10Navigation10MapMatcher14RecentLocation_preferConnectedRouteMatch) = 0;
    goto LABEL_106;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3180950(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x1D0);
  v7 = a1;
  a3;
  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1D3180AC4;
  v10 = MEMORY[0x1E69E7CC0];

  return v12(v7, v10);
}

uint64_t sub_1D3180AC4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3180BC4, 0, 0);
}

uint64_t sub_1D3180BC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  (v2)[2](v2, v1);
  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

id MapMatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapMatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D3180EE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D3277660();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1D3277720();
}

void *_s10Navigation10MapMatcherC03mapC03forACSgSo16GEOComposedRouteC_tFZ_0(void *a1)
{
  v2 = [a1 transportType];
  switch(v2)
  {
    case 3u:
      v3 = type metadata accessor for MapMatcher_Cycling();
      goto LABEL_7;
    case 2u:
      v3 = type metadata accessor for MapMatcher_Walking();
      goto LABEL_7;
    case 0u:
      v3 = type metadata accessor for MapMatcher_Driving();
LABEL_7:
      v4 = objc_allocWithZone(v3);
      return sub_1D317FB00(a1);
  }

  return 0;
}

uint64_t sub_1D3181000()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D3125778;

  return sub_1D3180950(v2, v3, v4);
}

unint64_t MNTrace.initialRoute.getter()
{
  result = [v0 directions];
  if (result)
  {
    v2 = result;
    sub_1D3126084(0, &qword_1EC75CD00, off_1E8428ED8);
    v3 = sub_1D32771A0();

    if (v3 >> 62)
    {
      result = sub_1D3277660();
      if (result)
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1D38B45D0](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(v3 + 32);
        }

        v2 = v4;

        v5 = [v2 routes];
        if (!v5)
        {
LABEL_21:

          return 0;
        }

        v6 = v5;
        sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
        v3 = sub_1D32771A0();

        result = [v2 selectedRouteIndex];
        if (!(v3 >> 62))
        {
          v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 > 0)
          {
            goto LABEL_10;
          }

          goto LABEL_20;
        }

LABEL_19:
        v10 = result;
        v7 = sub_1D3277660();
        result = v10;
        if (v7 > 0)
        {
LABEL_10:
          if (result < v7)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x1D38B45D0]();
              goto LABEL_14;
            }

            if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v8 = *(v3 + 8 * result + 32);
LABEL_14:
              v9 = v8;

              return v9;
            }

            __break(1u);
            goto LABEL_25;
          }
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::tuple_routes_OpaquePointer_selectedRouteIndex_Int_optional __swiftcall MNTrace.routeSet(atRowIndex:)(Swift::Int atRowIndex)
{
  v3 = [v1 directions];
  if (!v3)
  {
    goto LABEL_25;
  }

  v6 = v3;
  v7 = sub_1D3126084(0, &qword_1EC75CD00, off_1E8428ED8);
  v8 = sub_1D32771A0();

  if (v8 >> 62)
  {
    v9 = sub_1D3277660();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 <= atRowIndex)
  {
LABEL_23:
    v3 = 0;
    v4 = 0;
    goto LABEL_27;
  }

  v3 = [v1 directions];
  if (!v3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = v3;
  v11 = sub_1D32771A0();

  if ((v11 & 0xC000000000000001) == 0)
  {
    if (atRowIndex < 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 > atRowIndex)
      {
        v13 = *(v11 + 8 * atRowIndex + 32);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v13 = MEMORY[0x1D38B45D0](atRowIndex, v11);
LABEL_10:
  atRowIndex = v13;

  v14 = [atRowIndex routes];
  if (!v14)
  {
LABEL_22:

    goto LABEL_23;
  }

  v15 = v14;
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v7 = sub_1D32771A0();

  v11 = &selRef_safeDelegate;
  v12 = [atRowIndex selectedRouteIndex];
  if (v7 >> 62)
  {
LABEL_20:
    v18 = v12;
    v16 = sub_1D3277660();
    v12 = v18;
    if (v16 < 1)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16 < 1)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_13:
  if (v12 >= v16)
  {
    goto LABEL_21;
  }

  v17 = [atRowIndex *(v11 + 248)];

  if (v17 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = v17;
  v3 = v7;
LABEL_27:
  result.value.selectedRouteIndex = v4;
  result.value.routes._rawValue = v3;
  result.is_nil = v5;
  return result;
}

void MNTrace.routeSet(directionsResponseID:)(uint64_t a1, unint64_t a2)
{
  v5 = [v2 directions];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_1D3126084(0, &qword_1EC75CD00, off_1E8428ED8);
  v7 = sub_1D32771A0();

  v35 = v2;
  if (v7 >> 62)
  {
    goto LABEL_70;
  }

  v39 = v7 & 0xFFFFFFFFFFFFFF8;
  v41 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v8 = 0;
  v40 = v7 & 0xC000000000000001;
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = !v9;
  v37 = v10;
  v38 = a2 >> 62;
  v11 = __OFSUB__(HIDWORD(a1), a1);
  v36 = v11;
  while (1)
  {
    if (v41 == v8)
    {

      return;
    }

    if (v40)
    {
      v12 = MEMORY[0x1D38B45D0](v8, v7);
    }

    else
    {
      if (v8 >= *(v39 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        v39 = v7 & 0xFFFFFFFFFFFFFF8;
        v41 = sub_1D3277660();
        goto LABEL_4;
      }

      v12 = *(v7 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = [v12 response];
    if (!v14)
    {
      goto LABEL_74;
    }

    v15 = v14;
    v16 = v7;
    v17 = [v14 directionsResponseID];

    if (!v17)
    {
      v18 = 0;
      v20 = 0xF000000000000000;
LABEL_35:
      if (a2 >> 60 != 15)
      {
LABEL_36:
        sub_1D3166AC0(a1, a2);
        sub_1D31427B8(v18, v20);
        v26 = a1;
        v27 = a2;
LABEL_37:
        sub_1D31427B8(v26, v27);

        goto LABEL_38;
      }

      sub_1D3166AC0(a1, a2);
      sub_1D31427B8(v18, v20);

LABEL_67:
      MNTrace.routeSet(atRowIndex:)(v8);
      return;
    }

    v18 = sub_1D3276C80();
    v20 = v19;

    if (v20 >> 60 == 15)
    {
      goto LABEL_35;
    }

    if (a2 >> 60 == 15)
    {
      goto LABEL_36;
    }

    v21 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v18)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v37) & 1) == 0)
      {
        sub_1D3166AC0(0, 0xC000000000000000);
        sub_1D31427B8(0, 0xC000000000000000);
        v18 = 0;
        goto LABEL_65;
      }

      v25 = 0;
    }

    else if (v21)
    {
      if (v21 == 1)
      {
        LODWORD(v25) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_73;
        }

        v25 = v25;
      }

      else
      {
        v30 = *(v18 + 16);
        v29 = *(v18 + 24);
        v28 = __OFSUB__(v29, v30);
        v25 = v29 - v30;
        if (v28)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v25 = BYTE6(v20);
    }

    if (v38 <= 1)
    {
      break;
    }

    if (v38 != 2)
    {
      if (v25)
      {
LABEL_58:
        sub_1D3166AC0(a1, a2);
        sub_1D31427B8(a1, a2);
        v26 = v18;
        v27 = v20;
        goto LABEL_37;
      }

LABEL_63:
      sub_1D3166AC0(a1, a2);
      sub_1D31427B8(a1, a2);
LABEL_65:
      sub_1D31427B8(v18, v20);

LABEL_66:

      goto LABEL_67;
    }

    v33 = *(a1 + 16);
    v32 = *(a1 + 24);
    v28 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (v28)
    {
      goto LABEL_71;
    }

LABEL_53:
    if (v25 != v31)
    {
      goto LABEL_58;
    }

    if (v25 < 1)
    {
      goto LABEL_63;
    }

    sub_1D3166AC0(a1, a2);
    sub_1D3182C10(a1, a2);
    sub_1D3182C10(v18, v20);
    v34 = sub_1D3182A80(v18, v20, a1, a2);
    sub_1D31427B8(a1, a2);
    sub_1D31427B8(v18, v20);
    sub_1D31427B8(v18, v20);

    if (v34)
    {
      goto LABEL_66;
    }

LABEL_38:
    v7 = v16;
    v28 = __OFADD__(v8++, 1);
    if (v28)
    {
      goto LABEL_69;
    }
  }

  v31 = BYTE6(a2);
  if (!v38)
  {
    goto LABEL_53;
  }

  v31 = HIDWORD(a1) - a1;
  if (!v36)
  {
    goto LABEL_53;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

unint64_t MNTrace.route(beforeTimestamp:)(double a1)
{
  v2 = v1;
  result = [v1 navigationUpdates];
  if (!result)
  {
    return result;
  }

  v5 = result;
  sub_1D3126084(0, &qword_1EC75CD08, off_1E8428F30);
  v6 = sub_1D32771A0();

  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (!__OFSUB__(v7--, 1))
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D38B45D0](v7, v6);
LABEL_12:
        v10 = v9;
        if ([v9 navigationUpdateType] == 1)
        {
          [v10 timestamp];
          v12 = v11;

          if (v12 < a1)
          {
            MEMORY[0x1EEE9AC00](v13);
            v19 = v7;
            sub_1D3182C90(&v19, &v20);
            v14 = v20;
            goto LABEL_21;
          }
        }

        else
        {
        }

        if (!v7)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v6 + 32 + 8 * v7);
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        v7 = sub_1D3277660();
        if (!v7)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  v14 = 0;
LABEL_21:

  if (!v14)
  {
    return 0;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15 || (result = sub_1D3181C78(v15, v2)) == 0)
  {

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D38B45D0](v16, result);
    goto LABEL_28;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 8 * v16 + 32);
LABEL_28:
    v18 = v17;

    return v18;
  }

  __break(1u);
  __break(1u);
  return result;
}

id sub_1D3181C78(void *a1, void *a2)
{
  v4 = [a1 directionsResponseID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D3276C80();
    v8 = v7;

    result = [a1 directionsResponseID];
    if (result)
    {
      v10 = result;
      v11 = sub_1D3276C80();
      v13 = v12;

      MNTrace.routeSet(directionsResponseID:)(v11, v13);
      v15 = v14;
      sub_1D31422C8(v11, v13);
      sub_1D31422C8(v6, v8);
      return v15;
    }

    __break(1u);
  }

  else
  {
    v16 = [a1 etauResponseID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1D3276C80();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xF000000000000000;
    }

    result = [a2 directions];
    if (result)
    {
      v21 = result;
      sub_1D3126084(0, &qword_1EC75CD00, off_1E8428ED8);
      v22 = sub_1D32771A0();

      if (v22 >> 62)
      {
        v23 = sub_1D3277660();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v23 < 1)
      {
        sub_1D31427B8(v18, v20);
        return 0;
      }

      else
      {
        v15 = MNTrace.routeSet(atRowIndex:)(0);
        sub_1D31427B8(v18, v20);
      }

      return v15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int_optional __swiftcall MNTrace.locationIndex(afterTimestamp:)(Swift::Double afterTimestamp)
{
  v3 = [v1 locations];
  if (v3)
  {
    v5 = v3;
    sub_1D3126084(0, &qword_1EC75CD10, off_1E8428F00);
    v6 = sub_1D32771A0();

    if (v6 >> 62)
    {
LABEL_19:
      v7 = sub_1D3277660();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
        v14 = 0;
        goto LABEL_16;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D38B45D0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      [v9 timestamp];
      v12 = v11;

      if (v12 >= afterTimestamp)
      {
        break;
      }

      if (__OFADD__(v8++, 1))
      {
        goto LABEL_18;
      }
    }

    v14 = v8;
LABEL_16:

    v3 = v14;
    v4 = v7 == v8;
  }

  else
  {
    __break(1u);
  }

  result.value = v3;
  result.is_nil = v4;
  return result;
}

Swift::Int __swiftcall MNTrace.locationIndexAfterTimestamp(_:)(Swift::Double a1)
{
  v3 = MNTrace.locationIndex(afterTimestamp:)(a1);
  if (v3.is_nil)
  {

    v3.value = sub_1D32769C0();
  }

  return v3.value;
}

void MNTraceDirectionsRow.routes.getter()
{
  v2 = [v1 error];
  if (v2)
  {

    return;
  }

  v3 = [v1 response];
  if (v3)
  {

    v4 = [v1 response];
    if (v4)
    {
      v0 = v4;
      v5 = [v4 waypointRoutes];

      if (v5)
      {
        v0 = [v5 count];

        if (v0 < 1)
        {
          return;
        }

        v6 = [v1 waypoints];
        if (v6)
        {
          v0 = v6;
          v7 = [v1 request];
          if (v7)
          {
            v8 = v7;
            v9 = [v7 routeAttributes];

            if (v9)
            {
              v10 = [v1 response];
              if (v10)
              {
                v11 = v10;
                v12 = [v1 request];
                if (v12)
                {
                  v13 = v12;
                  v14 = [objc_allocWithZone(MEMORY[0x1E69A2538]) initWithWaypoints:v0 routeAttributes:v9 directionsResponse:v11 directionsRequest:v12];

                  v15 = [v14 allRoutes];
                  if (v15)
                  {
                    v16 = v15;
                    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
                    sub_1D32771A0();
                  }

                  return;
                }

LABEL_23:

                __break(1u);
                return;
              }

LABEL_22:

              __break(1u);
              goto LABEL_23;
            }

LABEL_21:

            __break(1u);
            goto LABEL_22;
          }

LABEL_20:

          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1D3182850@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D3276A80();
    if (v10)
    {
      v11 = sub_1D3276AA0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D3276A90();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D3276A80();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D3276AA0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D3276A90();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D3182A80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D3182CB0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D31422C8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1D3182850(v14, a3, a4, &v13);
  v10 = v4;
  sub_1D31422C8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1D3182C10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D3166AC0(a1, a2);
  }

  return a1;
}

unint64_t sub_1D3182C24@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1D38B45D0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3182CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D3276A80();
  v11 = result;
  if (result)
  {
    result = sub_1D3276AA0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D3276A90();
  sub_1D3182850(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

char *sub_1D3182D68()
{
  *&v0[OBJC_IVAR___MNCommuteRouteServer____lazy_storage____xpcInterface] = 0;
  v1 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v2 = sub_1D32770B0();
  v3 = [v1 initWithMachServiceName_];

  *&v0[OBJC_IVAR___MNCommuteRouteServer__listener] = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E69A2338]);
  v5 = sub_1D32770B0();
  v6 = [v4 initWithClassName_];

  *&v0[OBJC_IVAR___MNCommuteRouteServer__performanceEventLogger] = v6;
  v16.receiver = v0;
  v16.super_class = MNCommuteRouteServer;
  v7 = objc_msgSendSuper2(&v16, sel_init);
  v8 = qword_1EC75BE18;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D3276F80();
  __swift_project_value_buffer(v10, qword_1EC75BE20);
  v11 = sub_1D3276F60();
  v12 = sub_1D32773B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D311E000, v11, v12, "Starting server.", v13, 2u);
    MEMORY[0x1D38B6000](v13, -1, -1);
  }

  v14 = OBJC_IVAR___MNCommuteRouteServer__listener;
  [*&v9[OBJC_IVAR___MNCommuteRouteServer__listener] setDelegate_];
  [*&v9[v14] activate];

  return v9;
}

id sub_1D3182F8C()
{
  v1 = OBJC_IVAR___MNCommuteRouteServer____lazy_storage____xpcInterface;
  v2 = *(v0 + OBJC_IVAR___MNCommuteRouteServer____lazy_storage____xpcInterface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MNCommuteRouteServer____lazy_storage____xpcInterface);
  }

  else
  {
    v4 = [objc_opt_self() interfaceWithProtocol_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D3183078(int a1)
{
  if (qword_1EC75BE18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75BE20);
  oslog = sub_1D3276F60();
  v3 = sub_1D32773B0();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1D311E000, oslog, v3, "Process %d disconnected.", v4, 8u);
    MEMORY[0x1D38B6000](v4, -1, -1);
  }
}

uint64_t sub_1D31831D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D31831F8, 0, 0);
}

uint64_t sub_1D31831F8()
{
  [*(v0[3] + OBJC_IVAR___MNCommuteRouteServer__performanceEventLogger) logPerformanceEvent_];
  if (qword_1EC75BE18 != -1)
  {
    swift_once();
  }

  v1 = sub_1D3276F80();
  v0[4] = __swift_project_value_buffer(v1, qword_1EC75BE20);
  v2 = sub_1D3276F60();
  v3 = sub_1D3277370();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v2, v3, "CommuteRouteServer.requestCommuteRoutes().", v4, 2u);
    MEMORY[0x1D38B6000](v4, -1, -1);
  }

  v0[5] = [objc_opt_self() shared];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D31833A8;
  v6 = v0[2];

  return sub_1D3165B64(v6);
}

uint64_t sub_1D31833A8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D31834C8, 0, 0);
}

uint64_t sub_1D31834C8()
{
  v1 = *(v0 + 32);
  v2 = sub_1D3276F60();
  v3 = sub_1D3277370();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v2, v3, "Finished getting commute routes.", v4, 2u);
    MEMORY[0x1D38B6000](v4, -1, -1);
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 56);

  if (v5)
  {
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 8);

    return v9(v6);
  }
}

uint64_t sub_1D3183774(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1D3183838;

  return sub_1D31831D8(v6);
}

uint64_t sub_1D3183838(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_1D3276BE0();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1D31839F0()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC75BE20);
  __swift_project_value_buffer(v0, qword_1EC75BE20);
  return sub_1D3276F70();
}

uint64_t sub_1D3183A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1D31528F4(a3, v25 - v11);
  v13 = sub_1D3277280();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D3123330(v12);
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

  sub_1D3277270();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1D3277200();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1D32770F0() + 32;
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

    sub_1D3123330(a3);

    return v23;
  }

LABEL_8:
  sub_1D3123330(a3);
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

uint64_t sub_1D3183D2C(void *a1)
{
  v2 = v1;
  v4 = [a1 processIdentifier];
  if (qword_1EC75BE18 != -1)
  {
    swift_once();
  }

  v5 = sub_1D3276F80();
  __swift_project_value_buffer(v5, qword_1EC75BE20);
  v6 = sub_1D3276F60();
  v7 = sub_1D32773B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_1D311E000, v6, v7, "Received connection from process %d.", v8, 8u);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v13[4] = sub_1D31840DC;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D3122E0C;
  v13[3] = &block_descriptor_8;
  v10 = _Block_copy(v13);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
  v11 = sub_1D3182F8C();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 activate];
  return 1;
}

unint64_t type metadata accessor for MNCommuteRouteServer()
{
  result = qword_1EC75CD38;
  if (!qword_1EC75CD38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75CD38);
  }

  return result;
}

uint64_t sub_1D3183F70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D3152F1C;

  return sub_1D3183774(v2, v3, v4);
}

uint64_t sub_1D3184024(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3125778;

  return sub_1D3123588(a1, v5);
}

unint64_t MNTrace.TraceUpgradeError.errorDescription.getter()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      return 0xD00000000000006CLL;
    }

    else
    {
      return 0xD000000000000030;
    }
  }

  else
  {
    v2 = *v0;
    sub_1D32776F0();
    MEMORY[0x1D38B3FE0](0xD00000000000001BLL, 0x80000001D3293F60);
    v3 = sub_1D3277890();
    MEMORY[0x1D38B3FE0](v3);

    MEMORY[0x1D38B3FE0](0xD000000000000036, 0x80000001D3293F80);
    return 0;
  }
}

unint64_t sub_1D318431C(unint64_t result)
{
  if (result > 0x3E)
  {
    __break(1u);
  }

  else
  {
    if (result == 62)
    {
      v1 = 0;
LABEL_16:
      if (sub_1D3277110() >= 1)
      {
        sub_1D32776F0();

        MEMORY[0x1D38B3FE0](0, 0xE000000000000000);

        MEMORY[0x1D38B3FE0](0x54494D4D4F430A0ALL, 0xE90000000000003BLL);
        return 0xD000000000000014;
      }
    }

    else
    {
      while (result > 0x37)
      {
        v2 = result + 1;
        v3 = 1 << result;
        v4 = 0xD0000000000000E8;
        if (result == 58)
        {
          v5 = 0x80000001D3294210;
        }

        else
        {
          v4 = 0xD000000000000205;
          v5 = 0x80000001D3294000;
        }

        if ((v3 & 0x3300000000000000) != 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = v4;
        }

        if ((v3 & 0x3300000000000000) != 0)
        {
          v1 = 0xE000000000000000;
        }

        else
        {
          v1 = v5;
        }

        MEMORY[0x1D38B3FE0](v6, v1);

        result = v2;
        if (v2 == 62)
        {
          v1 = 0;
          goto LABEL_16;
        }
      }

      v7 = result;
      sub_1D31844F4();
      swift_allocError();
      *v8 = v7;
      *(v8 + 8) = 0;
      swift_willThrow();
    }

    return v1;
  }

  return result;
}

unint64_t sub_1D31844F4()
{
  result = qword_1EC75CDA8;
  if (!qword_1EC75CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CDA8);
  }

  return result;
}

uint64_t _s17TraceUpgradeErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t _s17TraceUpgradeErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D31845D4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D31845EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id GEOComposedGuidanceEvent.supports(guidanceLevel:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v4 = 0;
  }

  else
  {
    result = 0;
    if (a1 != 1)
    {
      return result;
    }

    v4 = 1;
  }

  return [v1 supportsGuidancePreferenceType_];
}

Swift::Void __swiftcall MNNavigationSession.startArrivalInfoUpdates()()
{
  v1 = v0;
  if (GEOConfigGetBOOL())
  {
    v2 = [v0 navigationSessionState];
    v3 = type metadata accessor for DestinationArrivalInfoUpdater();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    [v2 copy];
    sub_1D3277610();
    swift_unknownObjectRelease();
    sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
    swift_dynamicCast();
    *&v4[OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState] = v10;
    objc_allocWithZone(type metadata accessor for MNRemainingTimeUpdater(0));
    v5 = v2;
    *&v4[OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater] = MNRemainingTimeUpdater.init(navigationSessionState:)(v5);
    v9.receiver = v4;
    v9.super_class = v3;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    v7 = *&v6[OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    *&v6[OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate + 8] = &off_1F4EB35E8;
    swift_unknownObjectWeakAssign();
    [v1 setDestinationArrivalInfoUpdater_];
    v8 = [v1 navigationSessionStateListeners];
    [v8 addObject_];
  }
}

Swift::Void __swiftcall MNNavigationSession.stopArrivalInfoUpdates()()
{
  v1 = [v0 destinationArrivalInfoUpdater];
  if (v1)
  {
    *&v1[OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate + 8] = 0;
    v2 = v1;
    swift_unknownObjectWeakAssign();
    v3 = [v0 navigationSessionStateListeners];
    [v3 removeObject_];
  }

  [v0 setDestinationArrivalInfoUpdater_];
}

Swift::Void __swiftcall MNNavigationSession.startTimedETAUpdates()()
{
  v1 = v0;
  if (GEOConfigGetBOOL())
  {
    if ([v0 navigationCapabilities])
    {
      v2 = [v0 navigationSessionState];
      v3 = [v2 currentRouteInfo];

      if (v3)
      {
        v4 = [v3 route];

        if (v4)
        {
          v5 = [v4 origin];
          if (v5)
          {
            v6 = v5;
            [v5 coordinate];

            v7 = [v1 navigationSessionState];
            v8 = [v7 requestingAppIdentifier];

            v9 = sub_1D32770C0();
            v11 = v10;

            v12 = [v1 navigationSessionState];
            v13 = [v12 auditToken];

            v14 = [v1 tracePlayer];
            v19 = [v14 etaUpdateRequester];

            if (v19)
            {
            }

            else
            {
              v15 = GEOLocationCoordinate2DMakeWithCoordinate3D(0);
              v17 = v16;
              objc_allocWithZone(type metadata accessor for ETAUpdateRequester());
              v18 = v13;
              v19 = sub_1D317E8FC(v9, v11, v13, v15, v17);
            }

            *(v19 + OBJC_IVAR___MNETAUpdateRequester_delegate + 8) = &off_1F4EB3600;
            swift_unknownObjectWeakAssign();
            [v1 setEtaUpdateRequester_];
            (*((*MEMORY[0x1E69E7D40] & *v19) + 0xA8))();
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall MNNavigationSession.stopTimedETAUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = [v0 etaUpdateRequester];
  if (v5)
  {
    v17 = v5;
    *(v5 + OBJC_IVAR___MNETAUpdateRequester_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    (*((*MEMORY[0x1E69E7D40] & *v17) + 0xB0))();
    [v0 setEtaUpdateRequester_];
    v6 = sub_1D3184F10();
    if ((v7 & 1) != 0 || (v8 = v6, sub_1D3130A60(&v18), (v9 = v19) == 0))
    {
      v16 = v17;
    }

    else
    {
      v10 = v18;
      v24 = v20;
      v25 = v21;
      v26 = v22;
      v27 = v23;
      v11 = sub_1D3277280();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v13 = v17;
      *(v12 + 32) = v17;
      *(v12 + 40) = v8;
      *(v12 + 48) = v10;
      *(v12 + 56) = v9;
      v14 = v25;
      *(v12 + 64) = v24;
      *(v12 + 80) = v14;
      *(v12 + 96) = v26;
      *(v12 + 112) = v27;
      v15 = v13;
      sub_1D314FD28(0, 0, v4, &unk_1D328CF10, v12);
    }
  }
}

uint64_t sub_1D3184F10()
{
  result = [v0 navigationSessionState];
  v2 = result;
  if (result)
  {
    if ([result arrivalState] - 2 > 2)
    {

      return 5;
    }

    else
    {
      v3 = [v2 isOnLastLeg];

      if (v3)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }

  return result;
}

uint64_t sub_1D3184FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = *(a6 + 64);
  *(v6 + 88) = a1;
  v8 = *(a6 + 48);
  *(v6 + 48) = *(a6 + 32);
  *(v6 + 64) = v8;
  v9 = *(a6 + 16);
  *(v6 + 16) = *a6;
  *(v6 + 32) = v9;
  v10 = *((*MEMORY[0x1E69E7D40] & *a4) + 0xB8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 96) = v12;
  *v12 = v6;
  v12[1] = sub_1D31850F0;

  return v14(a5, v6 + 16);
}

uint64_t sub_1D31850F0(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D31851F0, 0, 0);
}

void MNNavigationSession.update(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = [v1 navigationSessionState];
  [v7 addUserIncidentReport_];

  v8 = [v1 etaUpdateRequester];
  if (v8)
  {
    v15 = v8;
    sub_1D3130A60(&v16);
    v9 = v17;
    if (v17)
    {
      v10 = v16;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v11 = sub_1D3277280();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v15;
      *(v12 + 40) = v10;
      *(v12 + 48) = v9;
      v13 = v23;
      *(v12 + 56) = v22;
      *(v12 + 72) = v13;
      *(v12 + 88) = v24;
      *(v12 + 104) = v25;
      sub_1D314FD28(0, 0, v6, &unk_1D328CF20, v12);
    }

    else
    {
      v14 = v15;
    }
  }
}

uint64_t sub_1D3185428(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 80) = *(a5 + 64);
  *(v5 + 88) = a1;
  v6 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v6;
  v7 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v7;
  v8 = *((*MEMORY[0x1E69E7D40] & *a4) + 0xB8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 96) = v10;
  *v10 = v5;
  v10[1] = sub_1D318556C;

  return v12(2, v5 + 16);
}

uint64_t sub_1D318556C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3185AE8, 0, 0);
}

uint64_t sub_1D31856DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D3125778;

  return sub_1D3184FA0(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1D31857A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D3152F1C;

  return sub_1D3185428(a1, v4, v5, v6, (v1 + 5));
}

void sub_1D3185860(void *a1)
{
  v2 = v1;
  if (qword_1EC75C028 != -1)
  {
    swift_once();
  }

  v4 = sub_1D3276F80();
  __swift_project_value_buffer(v4, qword_1EC7608D0);
  v5 = sub_1D3276F60();
  v6 = sub_1D3277380();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v5, v6, "Received willSendETARequest callback.", v7, 2u);
    MEMORY[0x1D38B6000](v7, -1, -1);
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E69A26A8]) init];
  v9 = v8;
  v19 = v8;
  if (v8)
  {
    [v8 setHasVisitedFirstStop_];
    v9 = v19;
  }

  [a1 setTripInfo_];
  v10 = [v2 serverSessionStateInfo];
  v11 = [v10 displayedTrafficBanners];

  if (v11)
  {
    v12 = sub_1D3277050();

    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = sub_1D3187674(*(v12 + 16), 0);
      v15 = sub_1D318797C(&v21, v14 + 4, v13, v12);
      sub_1D31779AC();
      if (v15 == v13)
      {
LABEL_12:
        sub_1D3177B3C(v14);

        v16 = objc_allocWithZone(MEMORY[0x1E695DF70]);
        v17 = sub_1D3277190();

        v18 = [v16 initWithArray_];

        [a1 setDisplayedBannerIds_];
        goto LABEL_13;
      }

      __break(1u);
    }

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
}

Swift::Int_optional __swiftcall MNTrace.locationRowIndex(beforeOrEqualToTime:)(Swift::Double beforeOrEqualToTime)
{
  v3 = [v1 locations];
  if (!v3)
  {
    goto LABEL_31;
  }

  v5 = v3;
  v6 = sub_1D3126084(0, &qword_1EC75CD10, off_1E8428F00);
  v7 = sub_1D32771A0();

  if (v7 >> 62)
  {
LABEL_26:
    v8 = sub_1D3277660();
    if (v8 > 0)
    {
      goto LABEL_4;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 <= 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  v18 = v6;
  v19 = v1;
  v9 = 0;
  v1 = &selRef_setRouteIndex_;
  while (1)
  {
    v10 = v8 >> 1;
    v6 = v9 + (v8 >> 1);
    if (__OFADD__(v9, v8 >> 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B45D0](v9 + (v8 >> 1), v7);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v11 = *(v7 + 32 + 8 * v6);
    }

    v12 = v11;
    [v11 timestamp];
    v14 = v13;

    if (v14 <= beforeOrEqualToTime)
    {
      break;
    }

LABEL_5:
    v8 = v10;
    if (v10 <= 0)
    {
      goto LABEL_16;
    }
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    v10 = v8 + ~v10;
    goto LABEL_5;
  }

  __break(1u);
LABEL_16:

  if (!v9)
  {
    goto LABEL_28;
  }

  v3 = [v19 locations];
  if (!v3)
  {
    goto LABEL_32;
  }

  v15 = v3;
  v16 = sub_1D32771A0();

  if (v16 >> 62)
  {
    v17 = sub_1D3277660();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v17)
  {
LABEL_28:
    v3 = 0;
    v4 = 1;
    goto LABEL_33;
  }

  v3 = (v9 - 1);
  if (!__OFSUB__(v9, 1))
  {
    v4 = 0;
    goto LABEL_33;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result.value = v3;
  result.is_nil = v4;
  return result;
}

Swift::Int_optional __swiftcall MNTrace.locationRowIndex(afterOrEqualToTime:)(Swift::Double afterOrEqualToTime)
{
  v3 = [v1 locations];
  if (!v3)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v3;
  v18 = sub_1D3126084(0, &qword_1EC75CD10, off_1E8428F00);
  v6 = sub_1D32771A0();

  if (v6 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D3277660())
  {
    v19 = v1;
    if (i < 1)
    {
      break;
    }

    v8 = 0;
    v1 = &selRef_setRouteIndex_;
    while (1)
    {
      v9 = i >> 1;
      v10 = &v8[i >> 1];
      if (__OFADD__(v8, i >> 1))
      {
        break;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D38B45D0](&v8[i >> 1], v6);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v11 = *(v6 + 32 + 8 * v10);
      }

      v12 = v11;
      [v11 timestamp];
      v14 = v13;

      if (v14 < afterOrEqualToTime)
      {
        v8 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_17;
        }

        v9 = i + ~v9;
      }

      i = v9;
      if (v9 <= 0)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_17:
  v8 = 0;
LABEL_18:

  v3 = [v19 locations];
  if (!v3)
  {
    goto LABEL_30;
  }

  v15 = v3;
  v16 = sub_1D32771A0();

  if (v16 >> 62)
  {
    v17 = sub_1D3277660();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v8 == v17;
  if (v8 == v17)
  {
    v3 = 0;
  }

  else
  {
    v3 = v8;
  }

LABEL_31:
  result.value = v3;
  result.is_nil = v4;
  return result;
}

id MNTrace.locationRowsBetweenTime(range:)(Swift::Double a1, Swift::Double a2)
{
  v24 = MNTrace.locationRowIndex(afterOrEqualToTime:)(a1);
  if (v24.is_nil)
  {
    value = 0;
  }

  else
  {
    value = v24.value;
  }

  v25 = MNTrace.locationRowIndex(beforeOrEqualToTime:)(a2);
  v5 = &selRef_initWithPattern_options_error_;
  if (!v25.is_nil)
  {
    goto LABEL_11;
  }

  result = [v2 locations];
  if (!result)
  {
    goto LABEL_56;
  }

  v7 = result;
  sub_1D3126084(0, &qword_1EC75CD10, off_1E8428F00);
  v8 = sub_1D32771A0();

  if (v8 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D3277660())
  {

    v10 = __OFSUB__(i, 1);
    v11 = i - 1;
    if (v10)
    {
      __break(1u);
LABEL_11:
      v11 = v25.value;
    }

    result = [v2 v5[322]];
    if (!result)
    {
      goto LABEL_55;
    }

    v5 = result;
    sub_1D3126084(0, &qword_1EC75CD10, off_1E8428F00);
    v2 = sub_1D32771A0();

    if (v11 < value)
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v10 = __OFADD__(v11++, 1);
    if (v10)
    {
      goto LABEL_44;
    }

    v5 = (v2 >> 62);
    if (!(v2 >> 62))
    {
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < value)
      {
        goto LABEL_46;
      }

      goto LABEL_17;
    }

LABEL_45:
    if (sub_1D3277660() < value)
    {
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

LABEL_17:
    if (value < 0)
    {
      goto LABEL_47;
    }

    if (v5)
    {
      result = sub_1D3277660();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v11)
    {
      goto LABEL_48;
    }

    if (v11 < 0)
    {
      goto LABEL_49;
    }

    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_26;
    }

    if (v11 >= value)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  if (value == v11)
  {
LABEL_26:

    goto LABEL_30;
  }

  if (value < v11)
  {

    v12 = value;
    do
    {
      v13 = v12 + 1;
      sub_1D3277700();
      v12 = v13;
    }

    while (v11 != v13);
LABEL_30:

    if (v5)
    {
      v14 = sub_1D32777E0();
      v15 = v17;
      value = v18;
      v16 = v19;

      if (v16)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v14 = v2 & 0xFFFFFFFFFFFFFF8;
      v15 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v16 = (2 * v11) | 1;
      if (v16)
      {
LABEL_35:
        sub_1D32778E0();
        swift_unknownObjectRetain_n();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x1E69E7CC0];
        }

        v23 = *(v22 + 16);

        if (__OFSUB__(v16 >> 1, value))
        {
          __break(1u);
        }

        else if (v23 == (v16 >> 1) - value)
        {
          v21 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (!v21)
          {
            v21 = MEMORY[0x1E69E7CC0];
LABEL_41:
            swift_unknownObjectRelease();
          }

          return v21;
        }

        swift_unknownObjectRelease_n();
      }
    }

    sub_1D3187C68(v14, v15, value, v16);
    v21 = v20;
    goto LABEL_41;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t MNTrace.RouteInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t MNTrace.firstRoute.getter()
{
  result = sub_1D318634C();
  if (result >> 62)
  {
    v5 = result;
    v6 = sub_1D3277660();
    result = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1D38B45D0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    v3 = v2;
    v4 = sub_1D31865BC(v3);

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1D318634C()
{
  result = [v0 navigationUpdates];
  if (result)
  {
    v2 = result;
    sub_1D3126084(0, &qword_1EC75CD08, off_1E8428F30);
    v3 = sub_1D32771A0();

    v15 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D3277660())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38B45D0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v6 navigationUpdateType] == 1)
        {
          sub_1D3277750();
          v9 = *(v15 + 16);
          sub_1D3277780();
          sub_1D3277790();
          sub_1D3277760();
        }

        else
        {
        }

        ++v5;
        if (v8 == i)
        {
          v10 = v15;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_19:

    if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
    {
      sub_1D3126084(0, &unk_1EC75CDE0, off_1E8428F20);

      v14 = sub_1D32777C0();

      return v14;
    }

    else
    {

      sub_1D32778D0();
      sub_1D3126084(0, &unk_1EC75CDE0, off_1E8428F20);
      if (swift_dynamicCastMetatype() || (v11 = *(v10 + 16)) == 0)
      {
LABEL_22:
      }

      else
      {
        v12 = 32;
        while (1)
        {
          v13 = *(v10 + v12);
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v12 += 8;
          if (!--v11)
          {
            goto LABEL_22;
          }
        }

        return (v10 | 1);
      }

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D31865BC(void *a1)
{
  result = [a1 routeIndex];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [a1 directionsResponseID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D3276C80();
    v8 = v7;

    sub_1D31868A0(v6, v8, v3, [a1 reason]);
  }

  else
  {
    result = [a1 etauResponseID];
    if (!result)
    {
      return result;
    }

    v10 = result;
    v6 = sub_1D3276C80();
    v8 = v11;

    sub_1D3186EE8(v6, v8, v3, [a1 reason]);
  }

  v12 = v9;
  sub_1D31422C8(v6, v8);
  return v12;
}

uint64_t MNTrace.firstRoute(before:)(double a1)
{
  v2 = v1;
  v4 = sub_1D318634C();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  v7 = v4 >> 62;
  if (v4 >> 62)
  {
LABEL_30:
    v8 = v6;
    v20 = sub_1D3277660();
    if (v20 < 1)
    {
      goto LABEL_33;
    }

    v9 = v20;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_18;
    }
  }

  v21 = v7;
  v22 = v2;
  v10 = 0;
  while (1)
  {
    v7 = v9 >> 1;
    v2 = v10 + (v9 >> 1);
    if (__OFADD__(v10, v9 >> 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B45D0](v10 + (v9 >> 1), v5);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v6 = *(v8 + 16);
      if (v2 >= v6)
      {
        goto LABEL_29;
      }

      v11 = *(v5 + 32 + 8 * v2);
    }

    v12 = v11;
    [v11 timestamp];
    v14 = v13;

    if (v14 <= a1)
    {
      break;
    }

LABEL_4:
    v9 = v7;
    if (v7 <= 0)
    {
      goto LABEL_15;
    }
  }

  v10 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    v6 = ~v7;
    v7 = v9 + ~v7;
    goto LABEL_4;
  }

  __break(1u);
LABEL_15:
  if (!v21)
  {
LABEL_18:
    v15 = *(v8 + 16);
    goto LABEL_19;
  }

  while (1)
  {
    v15 = sub_1D3277660();
LABEL_19:
    if (v15 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_33:
    v10 = 0;
  }

  result = v10 - 1;
  if (v10 < 1 || v15 < v10)
  {

    return 0;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D38B45D0](result, v5);
LABEL_26:
    v18 = v17;

    v19 = sub_1D31865BC(v18);

    return v19;
  }

  else
  {
    if (v10 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v5 + 8 * result + 32);
      goto LABEL_26;
    }

    __break(1u);
  }

  return result;
}

void sub_1D31868A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [v4 directions];
  if (!v7)
  {
    goto LABEL_91;
  }

  v8 = v7;
  sub_1D3126084(0, &qword_1EC75CD00, off_1E8428ED8);
  v9 = sub_1D32771A0();

  v53 = a4;
  if (v9 >> 62)
  {
LABEL_80:
    v10 = sub_1D3277660();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_81:

    return;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_81;
  }

LABEL_4:
  v11 = 0;
  a4 = 0;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v56 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v52 = v14;
  v57 = a2 >> 62;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1D38B45D0](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v17 = *(v9 + 8 * v11 + 32);
    }

    v18 = v17;
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v20 = [v17 response];
    if (!v20)
    {
      goto LABEL_90;
    }

    v21 = v20;
    v22 = v10;
    v23 = [v20 directionsResponseID];

    if (!v23)
    {
      v15 = 0;
      v16 = 0xF000000000000000;
LABEL_15:
      if (a2 >> 60 == 15)
      {
        sub_1D3166AC0(a1, a2);

        sub_1D31427B8(v15, v16);
        goto LABEL_62;
      }

LABEL_16:
      sub_1D3166AC0(a1, a2);

      sub_1D31427B8(v15, v16);
      sub_1D31427B8(a1, a2);
      goto LABEL_17;
    }

    v15 = sub_1D3276C80();
    v16 = v24;

    if (v16 >> 60 == 15)
    {
      goto LABEL_15;
    }

    if (a2 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v25 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v15)
      {
        v26 = 0;
      }

      else
      {
        v26 = v16 == 0xC000000000000000;
      }

      v28 = !v26 || a2 >> 62 != 3;
      if (((v28 | v56) & 1) == 0)
      {
        sub_1D3166AC0(0, 0xC000000000000000);
        sub_1D31427B8(0, 0xC000000000000000);
        v15 = 0;
        goto LABEL_60;
      }

      v29 = 0;
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        LODWORD(v29) = HIDWORD(v15) - v15;
        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_85;
        }

        v29 = v29;
      }

      else
      {
        v31 = v15[2];
        v30 = v15[3];
        v32 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v32)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v29 = BYTE6(v16);
    }

    if (v57 > 1)
    {
      break;
    }

    v33 = BYTE6(a2);
    if (v57)
    {
      v33 = HIDWORD(a1) - a1;
      if (v52)
      {
        goto LABEL_83;
      }
    }

LABEL_50:
    if (v29 != v33)
    {
      goto LABEL_55;
    }

    if (v29 < 1)
    {
      goto LABEL_58;
    }

    sub_1D3166AC0(a1, a2);
    sub_1D3182C10(a1, a2);
    sub_1D3182C10(v15, v16);
    v54 = sub_1D3182A80(v15, v16, a1, a2);
    sub_1D31427B8(v15, v16);
    sub_1D31427B8(a1, a2);
    sub_1D31427B8(v15, v16);
    if (v54)
    {
      goto LABEL_61;
    }

LABEL_17:
    v10 = v22;
    ++v11;
    if (v19 == v22)
    {
      goto LABEL_81;
    }
  }

  if (v57 == 2)
  {
    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    v32 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v32)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    goto LABEL_50;
  }

  if (v29)
  {
LABEL_55:
    sub_1D3166AC0(a1, a2);
    sub_1D31427B8(a1, a2);
    sub_1D31427B8(v15, v16);

    goto LABEL_17;
  }

LABEL_58:
  sub_1D3166AC0(a1, a2);
  sub_1D31427B8(a1, a2);
LABEL_60:
  sub_1D31427B8(v15, v16);
LABEL_61:

LABEL_62:
  v9 = v18;
  v36 = [v18 waypoints];
  if (!v36)
  {
    goto LABEL_92;
  }

  a4 = v36;
  v37 = [v18 request];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 routeAttributes];

    if (!v39)
    {
      goto LABEL_94;
    }

    v40 = [v18 response];
    if (!v40)
    {
      goto LABEL_95;
    }

    v41 = v40;
    v42 = [v9 request];
    if (!v42)
    {
      goto LABEL_96;
    }

    v43 = v42;
    v15 = [objc_allocWithZone(MEMORY[0x1E69A2538]) initWithWaypoints:a4 routeAttributes:v39 directionsResponse:v41 directionsRequest:v42];

    v44 = [v15 allRoutes];
    if (!v44)
    {

      return;
    }

    v45 = v44;
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    a4 = sub_1D32771A0();

    if (!(a4 >> 62))
    {
      v46 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_70;
    }

LABEL_86:
    v46 = sub_1D3277660();
LABEL_70:
    if (v46 <= a3)
    {

      goto LABEL_81;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x1D38B45D0](a3, a4);
      goto LABEL_75;
    }

    if (a3 < 0)
    {
      __break(1u);
    }

    else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v47 = *(a4 + 8 * a3 + 32);
LABEL_75:
      v48 = v47;

      [v9 responseTimestamp];
      v50 = v49;

      type metadata accessor for MNTrace.RouteInfo();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = v48;
      v51[4] = v53;
      return;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  __break(1u);
LABEL_94:

  __break(1u);
LABEL_95:

  __break(1u);
LABEL_96:

  __break(1u);
}

void sub_1D3186EE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  v11 = [v8 etaUpdates];
  if (!v11)
  {
    goto LABEL_107;
  }

  v12 = v11;
  sub_1D3126084(0, &qword_1EC75CDD8, off_1E8428EE0);
  v13 = sub_1D32771A0();

  v60 = a4;
  if (v13 >> 62)
  {
LABEL_82:
    v6 = sub_1D3277660();
    if (!v6)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v6 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_83;
    }
  }

  v14 = 0;
  if (a1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v63 = v16;
  v17 = __OFSUB__(HIDWORD(a1), a1);
  v59 = v17;
  v58 = HIDWORD(a1) - a1;
  v64 = a2 >> 62;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1D38B45D0](v14, v13);
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_82;
      }

      v18 = *(v13 + 8 * v14 + 32);
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_61:
        __break(1u);
LABEL_62:
        sub_1D3166AC0(a1, a2);

        sub_1D31427B8(v5, v12);
        goto LABEL_67;
      }
    }

    v7 = v18;
    v20 = [v18 response];
    if (!v20)
    {
      goto LABEL_106;
    }

    v21 = v20;
    v22 = [v20 responseId];

    if (!v22)
    {
      v5 = 0;
      v12 = 0xF000000000000000;
LABEL_15:
      if (a2 >> 60 == 15)
      {
        goto LABEL_62;
      }

      goto LABEL_16;
    }

    v5 = sub_1D3276C80();
    v12 = v23;

    if (v12 >> 60 == 15)
    {
      goto LABEL_15;
    }

    v24 = a2 >> 62;
    if (a2 >> 60 != 15)
    {
      break;
    }

LABEL_16:
    sub_1D3166AC0(a1, a2);

    sub_1D31427B8(v5, v12);
    sub_1D31427B8(a1, a2);
LABEL_17:
    ++v14;
    if (v19 == v6)
    {
      goto LABEL_83;
    }
  }

  v25 = v12 >> 62;
  if (v12 >> 62 != 3)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        LODWORD(v29) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_86;
        }

        v29 = v29;
        if (v64 <= 1)
        {
LABEL_51:
          v36 = v24;
          v33 = BYTE6(a2);
          if (v36)
          {
            v33 = v58;
            if (v59)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_53;
        }
      }

      else
      {
        v35 = v5[2];
        v34 = v5[3];
        v32 = __OFSUB__(v34, v35);
        v29 = v34 - v35;
        if (v32)
        {
          goto LABEL_85;
        }

LABEL_50:
        v24 = a2 >> 62;
        if (v64 <= 1)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v29 = BYTE6(v12);
      if (v64 <= 1)
      {
        goto LABEL_51;
      }
    }

    if (v24 != 2)
    {
      if (!v29)
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (v32)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_53:
    if (v29 == v33)
    {
      if (v29 < 1)
      {
LABEL_63:
        sub_1D3166AC0(a1, a2);
        sub_1D31427B8(a1, a2);
        goto LABEL_65;
      }

      sub_1D3166AC0(a1, a2);
      sub_1D3182C10(a1, a2);
      sub_1D3182C10(v5, v12);
      v62 = sub_1D3182A80(v5, v12, a1, a2);
      sub_1D31427B8(v5, v12);
      sub_1D31427B8(a1, a2);
      sub_1D31427B8(v5, v12);
      if (v62)
      {
        goto LABEL_66;
      }

      goto LABEL_58;
    }

LABEL_57:
    sub_1D3166AC0(a1, a2);
    sub_1D31427B8(a1, a2);
    sub_1D31427B8(v5, v12);
LABEL_58:

    goto LABEL_17;
  }

  if (v5)
  {
    v26 = 0;
  }

  else
  {
    v26 = v12 == 0xC000000000000000;
  }

  v28 = !v26 || a2 >> 62 != 3;
  if ((v28 | v63))
  {
    v29 = 0;
    goto LABEL_50;
  }

  sub_1D3166AC0(0, 0xC000000000000000);
  sub_1D31427B8(0, 0xC000000000000000);
  v5 = 0;
LABEL_65:
  sub_1D31427B8(v5, v12);
LABEL_66:

LABEL_67:
  [v7 requestTimestamp];
  v38 = MNTrace.firstRoute(before:)(v37);
  if (!v38)
  {

    return;
  }

  v39 = [*(v38 + 24) waypoints];
  if (!v39)
  {
    goto LABEL_108;
  }

  v6 = v39;
  v40 = [v7 request];
  if (!v40)
  {
    goto LABEL_109;
  }

  v41 = v40;
  v12 = [v40 routeAttributes];

  if (!v12)
  {
    goto LABEL_110;
  }

  v42 = [v7 response];
  if (!v42)
  {
LABEL_111:

    __break(1u);
LABEL_112:

    __break(1u);
LABEL_113:

    __break(1u);
    return;
  }

  v5 = v42;
  v43 = [v8 directions];
  if (!v43)
  {
    goto LABEL_112;
  }

  v44 = v43;
  sub_1D3126084(0, &qword_1EC75CD00, off_1E8428ED8);
  v19 = sub_1D32771A0();

  if (v19 >> 62)
  {
LABEL_87:
    if (!sub_1D3277660())
    {
      goto LABEL_88;
    }

LABEL_75:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1D38B45D0](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_103;
      }

      v46 = *(v19 + 32);
    }

    v47 = v46;

    v48 = [v47 response];

    if (!v48)
    {
      goto LABEL_113;
    }

    v49 = [v48 styleAttributes];

    goto LABEL_89;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_75;
  }

LABEL_88:

  v49 = 0;
LABEL_89:
  v19 = [objc_allocWithZone(MEMORY[0x1E69A2538]) initWithWaypoints:v6 routeAttributes:v12 etauResponse:v5 styleAttributes:v49];

  v50 = [v19 allETAUAlternateRoutes];
  if (v50)
  {
    v51 = v50;
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    v12 = sub_1D32771A0();

    if (v12 >> 62)
    {
      v52 = sub_1D3277660();
    }

    else
    {
      v52 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = a3;
    if (v52 > a3)
    {
      if ((v12 & 0xC000000000000001) == 0)
      {
        if (a3 < 0)
        {
          __break(1u);
        }

        else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
        {
          v53 = *(v12 + 8 * a3 + 32);
LABEL_97:
          v54 = v53;

          [v7 responseTimestamp];
          v56 = v55;

          type metadata accessor for MNTrace.RouteInfo();
          v57 = swift_allocObject();
          v57[2] = v56;
          v57[3] = v54;
          v57[4] = v60;
          return;
        }

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
        goto LABEL_111;
      }

LABEL_103:
      v53 = MEMORY[0x1D38B45D0](v45, v12);
      goto LABEL_97;
    }

LABEL_83:
  }

  else
  {
  }
}

void *sub_1D3187674(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3D0, &qword_1D328AEB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D31876F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
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

uint64_t sub_1D3187780(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1D3277650();
  type metadata accessor for ConnectedSearchNode();
  sub_1D3177870();
  result = sub_1D3277330();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
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

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D3277680())
      {
        goto LABEL_30;
      }

      type metadata accessor for ConnectedSearchNode();
      swift_dynamicCast();
      result = v25;
      if (!v25)
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
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

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
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1D318797C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D3187AD4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D3277660();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D31876F8(v2, 0);

    v1 = sub_1D3187780(&v5, v3 + 4, v2, v1);
    sub_1D31779AC();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D3187B84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        _s14RecentLocationCMa();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D3187C68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1D3126084(0, &qword_1EC75CD10, off_1E8428F00);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

Swift::Void __swiftcall MNNavigationSession.startLocationUpdates()()
{
  v1 = v0;
  if (qword_1EC75BF68 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC75BF70;
  if (([v1 navigationCapabilities] & 0x10000) != 0)
  {
    v5[3] = sub_1D3188610();
    v5[4] = &off_1F4EB3670;
    v5[0] = v1;
    v3 = OBJC_IVAR___MNLocationManager_mapMatchingProvider;
    swift_beginAccess();
    v4 = v1;
    sub_1D318865C(v5, v2 + v3);
    swift_endAccess();
  }

  [*(v2 + OBJC_IVAR___MNLocationManager__observers) registerObserver_];
  NavigationLocationManager.startUpdatingLocation()();
  if ([objc_opt_self() headingAvailable])
  {
    NavigationLocationManager.startUpdatingHeading()();
  }
}

Swift::Void __swiftcall MNNavigationSession.stopLocationUpdates()()
{
  v1 = v0;
  if (qword_1EC75BF68 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC75BF70;
  NavigationLocationManager.stopUpdatingLocation()();
  NavigationLocationManager.stopUpdatingHeading()();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = OBJC_IVAR___MNLocationManager_mapMatchingProvider;
  swift_beginAccess();
  sub_1D318865C(v4, v2 + v3);
  swift_endAccess();
  [*(v2 + OBJC_IVAR___MNLocationManager__observers) unregisterObserver_];
}

void MNNavigationSession.locationManager(_:didUpdateLocation:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  v8[4] = sub_1D31886CC;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D3122E0C;
  v8[3] = &block_descriptor_9;
  v5 = _Block_copy(v8);
  v6 = v2;
  v7 = a2;

  MNRunAsyncOnNavigationQueue(v5);
  _Block_release(v5);
}

uint64_t sub_1D31882CC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D31882F0, 0, 0);
}

uint64_t sub_1D31882F0()
{
  v1 = [*(v0 + 24) mapMatcher];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1D318848C;
    v5 = *(v0 + 16);
    v6 = MEMORY[0x1E69E7CC0];

    return v9(v5, v6);
  }

  else
  {
    v10 = *(v0 + 8);
    v8 = *(v0 + 16);

    return v10(v8);
  }
}

uint64_t sub_1D318848C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D318858C, 0, 0);
}

uint64_t sub_1D318858C()
{
  v1 = *(v0 + 48);

  v2 = *&v1[OBJC_IVAR___MNMapMatchingResult_location];
  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_1D3188610()
{
  result = qword_1EC75CDF0;
  if (!qword_1EC75CDF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75CDF0);
  }

  return result;
}

uint64_t sub_1D318865C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB28, &qword_1D328CFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D31886DC(void *a1)
{
  v3 = [v1 observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
  v4 = sub_1D32771A0();

  if (v4 >> 62)
  {
    v5 = sub_1D3277660();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D38B45D0](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v7 respondsToSelector_])
    {
      [a1 trueHeading];
      v9 = v8;
      [a1 headingAccuracy];
      [v7 navigationSession:v1 didUpdateHeading:v9 accuracy:v10];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
}

id MNNavTrayGuidanceEvent.init(guidanceEvent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGuidanceEvent_];

  return v2;
}

id MNNavTrayGuidanceEvent.init(guidanceEvent:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___MNNavTrayGuidanceEvent__guidanceEvent) = a1;
  v3.super_class = MNNavTrayGuidanceEvent;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1D3188978(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 _guidanceEvent];
  v6 = [v5 *a3];

  return v6;
}

id sub_1D31889FC(SEL *a1)
{
  v3 = [v1 _guidanceEvent];
  v4 = [v3 *a1];

  return v4;
}

uint64_t MNNavTrayGuidanceEvent.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F4E28;
  sub_1D32776F0();
  MEMORY[0x1D38B3FE0](0xD000000000000023, 0x80000001D3294380);
  v3 = [v0 title];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 stringWithDefaultOptions];

    v6 = sub_1D32770C0();
    v8 = v7;
  }

  else
  {
    v8 = 0xE600000000000000;
    v6 = 0x29656E6F4E28;
  }

  MEMORY[0x1D38B3FE0](v6, v8);

  MEMORY[0x1D38B3FE0](0x746544202020200ALL, 0xED0000203A6C6961);
  v9 = [v1 detail];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringWithDefaultOptions];

    v2 = sub_1D32770C0();
    v13 = v12;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  MEMORY[0x1D38B3FE0](v2, v13);

  return 0;
}

Swift::Void __swiftcall MNNavTrayGuidanceEvent.encode(with:)(NSCoder with)
{
  v3 = [v1 _guidanceEvent];
  v4 = sub_1D32770B0();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

MNNavTrayGuidanceEvent_optional __swiftcall MNNavTrayGuidanceEvent.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v5 = v2;
  result.value._guidanceEvent = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id MNNavTrayGuidanceEvent.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1D3126084(0, &qword_1EC75CE08, 0x1E69A1C60);
  *&v2[OBJC_IVAR___MNNavTrayGuidanceEvent__guidanceEvent] = sub_1D32775C0();
  v6.receiver = v2;
  v6.super_class = MNNavTrayGuidanceEvent;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

MNNavTrayGuidanceEvent __swiftcall MNNavTrayGuidanceEvent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result._guidanceEvent = v2;
  result.super.isa = v1;
  return result;
}

uint64_t _nlc_connect(_DWORD *a1)
{
  *sp = 0;
  v2 = MEMORY[0x1E69E99F8];
  bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.NetworkLinkConditioner", sp);
  if (bootstrap_look_up(*v2, "com.apple.NetworkLinkConditioner", sp))
  {
    puts("NLCd : Bootstrap failure");
    return 100;
  }

  else
  {
    v4 = nlc_connect(sp[0], a1, a1 + 1, &sp[1]);
    if (v4)
    {
      mach_error("nlc_connect:", v4);
    }

    return sp[1];
  }
}

uint64_t _nlc_disconnect(int *a1)
{
  v4 = 0;
  v2 = nlc_disconnect(*a1, a1[1], &v4);
  if (v2)
  {
    mach_error("nlc_disconnect:", v2);
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], *a1);
  return v4;
}

uint64_t _nlc_start_simulation(mach_port_t *a1, __int128 *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = 0;
  *(a2 + 1) = 0;
  v3 = a2[11];
  v29 = a2[10];
  v30 = v3;
  v31 = a2[12];
  v4 = a2[7];
  v25 = a2[6];
  v26 = v4;
  v5 = a2[9];
  v27 = a2[8];
  v28 = v5;
  v6 = a2[3];
  v21 = a2[2];
  v22 = v6;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = nlc_simulate(*a1, &v19, 0xD0u, a1[1], &v18);
  if (v9)
  {
    mach_error("_nlc_start_simulation:", v9);
  }

  v10 = v30;
  a2[10] = v29;
  a2[11] = v10;
  a2[12] = v31;
  v11 = v26;
  a2[6] = v25;
  a2[7] = v11;
  v12 = v28;
  a2[8] = v27;
  a2[9] = v12;
  v13 = v22;
  a2[2] = v21;
  a2[3] = v13;
  v14 = v24;
  a2[4] = v23;
  a2[5] = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  result = v18;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _nlc_stop_simulation(mach_port_t *a1, __int128 *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = 0;
  *(a2 + 1) = 1;
  v3 = a2[11];
  v29 = a2[10];
  v30 = v3;
  v31 = a2[12];
  v4 = a2[7];
  v25 = a2[6];
  v26 = v4;
  v5 = a2[9];
  v27 = a2[8];
  v28 = v5;
  v6 = a2[3];
  v21 = a2[2];
  v22 = v6;
  v7 = a2[5];
  v23 = a2[4];
  v24 = v7;
  v8 = a2[1];
  v19 = *a2;
  v20 = v8;
  v9 = nlc_stop_simulation(*a1, &v19, 0xD0u, a1[1], &v18);
  if (v9)
  {
    mach_error("_nlc_stop_simulation:", v9);
  }

  v10 = v30;
  a2[10] = v29;
  a2[11] = v10;
  a2[12] = v31;
  v11 = v26;
  a2[6] = v25;
  a2[7] = v11;
  v12 = v28;
  a2[8] = v27;
  a2[9] = v12;
  v13 = v22;
  a2[2] = v21;
  a2[3] = v13;
  v14 = v24;
  a2[4] = v23;
  a2[5] = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  result = v18;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _nlc_get_status(mach_port_t *a1, _DWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  a2[1] = 2;
  __n = 208;
  v4 = *(a2 + 11);
  v15[10] = *(a2 + 10);
  v15[11] = v4;
  v15[12] = *(a2 + 12);
  v5 = *(a2 + 7);
  v15[6] = *(a2 + 6);
  v15[7] = v5;
  v6 = *(a2 + 9);
  v15[8] = *(a2 + 8);
  v15[9] = v6;
  v7 = *(a2 + 3);
  v15[2] = *(a2 + 2);
  v15[3] = v7;
  v8 = *(a2 + 5);
  v15[4] = *(a2 + 4);
  v15[5] = v8;
  v9 = *(a2 + 1);
  v15[0] = *a2;
  v15[1] = v9;
  bzero(__src, 0x400uLL);
  status = nlc_get_status(*a1, v15, 0xD0u, __src, &__n, a1[1], &__n + 1);
  if (status)
  {
    mach_error("_nlc_get_status:", status);
  }

  memcpy(a2, __src, __n);
  result = HIDWORD(__n);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlc_connect(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v19, 0, sizeof(v19));
  *&reply_port_12[4] = 0u;
  reply_port = 0;
  v8 = mig_get_reply_port();
  reply_port_4 = a1;
  reply_port_8 = v8;
  v14 = 5395;
  *reply_port_12 = 0x9D4C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v14);
    v9 = reply_port_8;
  }

  else
  {
    v9 = v8;
  }

  v10 = mach_msg(&v14, 3, 0x18u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port_8);
  }

  else
  {
    if (!v10)
    {
      if (*&reply_port_12[4] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&reply_port_12[4] == 40368)
      {
        if (v14 < 0)
        {
          v11 = 4294966996;
          if (*&reply_port_12[8] == 1 && reply_port == 56 && !reply_port_4 && HIWORD(v19[0]) << 16 == 1114112)
          {
            v11 = 0;
            v12 = v19[3];
            *a2 = *&reply_port_12[12];
            *a3 = v12;
            *a4 = v19[4];
            return v11;
          }
        }

        else if (reply_port == 36)
        {
          v11 = 4294966996;
          if (*&reply_port_12[16])
          {
            if (reply_port_4)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&reply_port_12[16];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(&v14);
      return v11;
    }

    mig_dealloc_reply_port(reply_port_8);
  }

  return v11;
}

uint64_t nlc_disconnect(int a1, int a2, _DWORD *a3)
{
  memset(&reply_port[16], 0, 28);
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x1E69E99E0];
  *&reply_port[28] = a2;
  v5 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v5;
  v11 = 5395;
  *&reply_port[12] = 0x9D4D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&reply_port[8];
  }

  else
  {
    v6 = v5;
  }

  v7 = mach_msg(&v11, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&reply_port[8]);
      return v8;
    }

    if (*&reply_port[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&reply_port[16] == 40369)
    {
      if ((v11 & 0x80000000) == 0)
      {
        if (*reply_port == 40)
        {
          if (!*&reply_port[4])
          {
            v8 = *&reply_port[28];
            if (!*&reply_port[28])
            {
              *a3 = *&reply_port[32];
              return v8;
            }

            goto LABEL_24;
          }
        }

        else if (*reply_port == 36)
        {
          if (*&reply_port[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&reply_port[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&reply_port[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v11);
    return v8;
  }

  mig_put_reply_port(*&reply_port[8]);
  return v8;
}

uint64_t nlc_simulate(mach_port_t a1, uint64_t a2, unsigned int a3, mach_port_t a4, _DWORD *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *reply_port = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x1E69E99E0];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v19) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v10) = a4;
    v11 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v11;
    reply_port[0] = 5395;
    *&v18 = 0x9D4E00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(reply_port);
      v12 = reply_port[3];
    }

    else
    {
      v12 = v11;
    }

    v13 = mach_msg(reply_port, 3, v10 + 40, 0x30u, v12, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (DWORD1(v18) == 71)
    {
      v5 = 4294966988;
    }

    else if (DWORD1(v18) == 40370)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v5 = v19;
            if (!v19)
            {
              *a5 = DWORD1(v19);
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v19;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(reply_port);
    goto LABEL_27;
  }

  v5 = 4294966989;
LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t nlc_stop_simulation(mach_port_t a1, uint64_t a2, unsigned int a3, mach_port_t a4, _DWORD *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *reply_port = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x1E69E99E0];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(v19) = a3;
    v10 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v10) = a4;
    v11 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v11;
    reply_port[0] = 5395;
    *&v18 = 0x9D4F00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(reply_port);
      v12 = reply_port[3];
    }

    else
    {
      v12 = v11;
    }

    v13 = mach_msg(reply_port, 3, v10 + 40, 0x30u, v12, 0, 0);
    v5 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (v13)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_27;
    }

    if (DWORD1(v18) == 71)
    {
      v5 = 4294966988;
    }

    else if (DWORD1(v18) == 40371)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v5 = v19;
            if (!v19)
            {
              *a5 = DWORD1(v19);
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v19;
          }

          goto LABEL_26;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(reply_port);
    goto LABEL_27;
  }

  v5 = 4294966989;
LABEL_27:
  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t nlc_get_status(mach_port_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5, mach_port_t a6, _DWORD *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *__n = 0u;
  v28 = 0u;
  *reply_port = 0u;
  v26 = 0u;
  *(&v26 + 1) = *MEMORY[0x1E69E99E0];
  if (a3 <= 0x400)
  {
    __memcpy_chk();
    LODWORD(__n[0]) = a3;
    v14 = (a3 + 3) & 0xFFC;
    *(&reply_port[9] + v14) = a6;
    v15 = mig_get_reply_port();
    reply_port[2] = a1;
    reply_port[3] = v15;
    reply_port[0] = 5395;
    *&v26 = 0x9D5000000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(reply_port);
      v16 = reply_port[3];
    }

    else
    {
      v16 = v15;
    }

    v17 = mach_msg(reply_port, 3, v14 + 40, 0x434u, v16, 0, 0);
    v7 = v17;
    if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
      goto LABEL_29;
    }

    if (v17)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_29;
    }

    if (DWORD1(v26) == 71)
    {
      v7 = 4294966988;
    }

    else if (DWORD1(v26) == 40372)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] - 1069 <= 0xFFFFFBFE)
        {
          if (LODWORD(__n[0]))
          {
            v18 = reply_port[2] == 0;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && reply_port[1] == 36)
          {
            v7 = LODWORD(__n[0]);
          }

          else
          {
            v7 = 4294966996;
          }

          goto LABEL_28;
        }

        if (!reply_port[2])
        {
          v7 = LODWORD(__n[0]);
          if (LODWORD(__n[0]))
          {
            goto LABEL_28;
          }

          v22 = HIDWORD(__n[0]);
          if (HIDWORD(__n[0]) <= 0x400)
          {
            v7 = 4294966996;
            if (reply_port[1] - 44 >= HIDWORD(__n[0]))
            {
              v23 = (HIDWORD(__n[0]) + 3) & 0xFFFFFFFC;
              if (reply_port[1] == v23 + 44)
              {
                v24 = &reply_port[-256] + v23;
                memcpy(a4, &__n[1], HIDWORD(__n[0]));
                v7 = 0;
                *a5 = v22;
                *a7 = *(v24 + 266);
                goto LABEL_29;
              }
            }

            goto LABEL_28;
          }
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_28:
    mach_msg_destroy(reply_port);
    goto LABEL_29;
  }

  v7 = 4294966989;
LABEL_29:
  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1D318A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D318B8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D318CF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 240), 8);
  _Block_object_dispose((v41 - 192), 8);
  _Block_object_dispose((v41 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1D318D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Block_object_dispose((v43 - 160), 8);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNSoundEffectResourceControllerCategory()
{
  if (GetAudioLogForMNSoundEffectResourceControllerCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNSoundEffectResourceControllerCategory_onceToken, &__block_literal_global);
  }

  v1 = GetAudioLogForMNSoundEffectResourceControllerCategory_log;

  return v1;
}

void __GetAudioLogForMNSoundEffectResourceControllerCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNSoundEffectResourceController");
  v1 = GetAudioLogForMNSoundEffectResourceControllerCategory_log;
  GetAudioLogForMNSoundEffectResourceControllerCategory_log = v0;
}

void sub_1D3194D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAnnouncementEngineCategory()
{
  if (GetAudioLogForMNAnnouncementEngineCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAnnouncementEngineCategory_onceToken, &__block_literal_global_36);
  }

  v1 = GetAudioLogForMNAnnouncementEngineCategory_log;

  return v1;
}

void __GetAudioLogForMNAnnouncementEngineCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAnnouncementEngine");
  v1 = GetAudioLogForMNAnnouncementEngineCategory_log;
  GetAudioLogForMNAnnouncementEngineCategory_log = v0;
}

void sub_1D3197DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__895(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D319A804(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void _MNNavigationServerExceptionHandler(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "***** navd exception, call stack: *****", &v6, 2u);
  }

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v1 callStackSymbols];
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "%{private}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id MNGetErrorsLog()
{
  if (MNGetErrorsLog_onceToken != -1)
  {
    dispatch_once(&MNGetErrorsLog_onceToken, &__block_literal_global_1178);
  }

  v1 = MNGetErrorsLog_log;

  return v1;
}

void __MNGetErrorsLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "Errors");
  v1 = MNGetErrorsLog_log;
  MNGetErrorsLog_log = v0;
}

id MNGetMNCarPlayConnectionMonitorLog()
{
  if (MNGetMNCarPlayConnectionMonitorLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNCarPlayConnectionMonitorLog_onceToken, &__block_literal_global_33);
  }

  v1 = MNGetMNCarPlayConnectionMonitorLog_log;

  return v1;
}

void __MNGetMNCarPlayConnectionMonitorLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNCarPlayConnectionMonitor");
  v1 = MNGetMNCarPlayConnectionMonitorLog_log;
  MNGetMNCarPlayConnectionMonitorLog_log = v0;
}

id MNGetMNDepartureUpdaterLog()
{
  if (MNGetMNDepartureUpdaterLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNDepartureUpdaterLog_onceToken, &__block_literal_global_36_1182);
  }

  v1 = MNGetMNDepartureUpdaterLog_log;

  return v1;
}

void __MNGetMNDepartureUpdaterLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNDepartureUpdater");
  v1 = MNGetMNDepartureUpdaterLog_log;
  MNGetMNDepartureUpdaterLog_log = v0;
}

id MNGetMNDirectionsRequestLog()
{
  if (MNGetMNDirectionsRequestLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNDirectionsRequestLog_onceToken, &__block_literal_global_39);
  }

  v1 = MNGetMNDirectionsRequestLog_log;

  return v1;
}

void __MNGetMNDirectionsRequestLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNDirectionsRequest");
  v1 = MNGetMNDirectionsRequestLog_log;
  MNGetMNDirectionsRequestLog_log = v0;
}

id MNGetMNFamiliarRouteProviderLog()
{
  if (MNGetMNFamiliarRouteProviderLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNFamiliarRouteProviderLog_onceToken, &__block_literal_global_41);
  }

  v1 = MNGetMNFamiliarRouteProviderLog_log;

  return v1;
}

void __MNGetMNFamiliarRouteProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNFamiliarRouteProvider");
  v1 = MNGetMNFamiliarRouteProviderLog_log;
  MNGetMNFamiliarRouteProviderLog_log = v0;
}

void __MNGetMNGuidanceManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNGuidanceManager");
  v1 = MNGetMNGuidanceManagerLog_log;
  MNGetMNGuidanceManagerLog_log = v0;
}

id MNGetMNIdleTimerUpdaterLog()
{
  if (MNGetMNIdleTimerUpdaterLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNIdleTimerUpdaterLog_onceToken, &__block_literal_global_46_1187);
  }

  v1 = MNGetMNIdleTimerUpdaterLog_log;

  return v1;
}

void __MNGetMNIdleTimerUpdaterLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNIdleTimerUpdater");
  v1 = MNGetMNIdleTimerUpdaterLog_log;
  MNGetMNIdleTimerUpdaterLog_log = v0;
}

void __MNGetMNLocationProviderLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNLocationProvider");
  v1 = MNGetMNLocationProviderLog_log;
  MNGetMNLocationProviderLog_log = v0;
}

void __MNGetMNLocationTrackerLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNLocationTracker");
  v1 = MNGetMNLocationTrackerLog_log;
  MNGetMNLocationTrackerLog_log = v0;
}

id MNGetMNNavigationSessionLog()
{
  if (MNGetMNNavigationSessionLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationSessionLog_onceToken, &__block_literal_global_58);
  }

  v1 = MNGetMNNavigationSessionLog_log;

  return v1;
}

void __MNGetMNNavigationSessionLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationSession");
  v1 = MNGetMNNavigationSessionLog_log;
  MNGetMNNavigationSessionLog_log = v0;
}

id MNGetMNNavigationSimulationLog()
{
  if (MNGetMNNavigationSimulationLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationSimulationLog_onceToken, &__block_literal_global_60);
  }

  v1 = MNGetMNNavigationSimulationLog_log;

  return v1;
}

void __MNGetMNNavigationSimulationLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationSimulation");
  v1 = MNGetMNNavigationSimulationLog_log;
  MNGetMNNavigationSimulationLog_log = v0;
}

id MNGetMNNavigationStateManagerLog()
{
  if (MNGetMNNavigationStateManagerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationStateManagerLog_onceToken, &__block_literal_global_63);
  }

  v1 = MNGetMNNavigationStateManagerLog_log;

  return v1;
}

void __MNGetMNNavigationStateManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationStateManager");
  v1 = MNGetMNNavigationStateManagerLog_log;
  MNGetMNNavigationStateManagerLog_log = v0;
}

id MNGetMNNavigationXPCLog()
{
  if (MNGetMNNavigationXPCLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationXPCLog_onceToken, &__block_literal_global_65);
  }

  v1 = MNGetMNNavigationXPCLog_log;

  return v1;
}

void __MNGetMNNavigationXPCLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationXPC");
  v1 = MNGetMNNavigationXPCLog_log;
  MNGetMNNavigationXPCLog_log = v0;
}

id MNGetMNParkedVehicleDetectorLog()
{
  if (MNGetMNParkedVehicleDetectorLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNParkedVehicleDetectorLog_onceToken, &__block_literal_global_67);
  }

  v1 = MNGetMNParkedVehicleDetectorLog_log;

  return v1;
}

void __MNGetMNParkedVehicleDetectorLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNParkedVehicleDetector");
  v1 = MNGetMNParkedVehicleDetectorLog_log;
  MNGetMNParkedVehicleDetectorLog_log = v0;
}

id MNGetMNRouteAttributesLog()
{
  if (MNGetMNRouteAttributesLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteAttributesLog_onceToken, &__block_literal_global_70);
  }

  v1 = MNGetMNRouteAttributesLog_log;

  return v1;
}