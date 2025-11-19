id sub_1C5CD616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  OUTLINED_FUNCTION_1_6(a1, &unk_1ED7DCB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  v7 = *a5;
  *(inited + 32) = *a5;
  v8 = v7;
  *(inited + 40) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  OUTLINED_FUNCTION_18_2();
  sub_1C5CC547C();
  OUTLINED_FUNCTION_0_10();
  sub_1C5C661D0(v9, v10);
  OUTLINED_FUNCTION_9_7();
  sub_1C6016880();
  OUTLINED_FUNCTION_9_7();
  v11 = sub_1C6016840();

  v12 = OUTLINED_FUNCTION_319();
  v14 = [v12 v13];

  return v14;
}

id sub_1C5CD6278()
{
  v1 = [v0 findPreviousEventWithType:@"device-changed" matchingPayload:0];

  return v1;
}

uint64_t sub_1C5CD62C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_5_5();
  v10[2] = v6;
  v10[3] = &block_descriptor_6;
  v7 = _Block_copy(v10);

  [v2 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CD63C4(uint64_t a1)
{
  v3 = 0;
  v2[2] = a1;
  v2[3] = &v3;
  sub_1C5CD62C0(sub_1C5CD6578, v2);
  return v3;
}

void sub_1C5CD640C(void *a1, _BYTE *a2, uint64_t a3, void **a4)
{
  v8 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5C661D0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v9 = sub_1C6016860();

  sub_1C5CFF1CC(v9, &v13);

  if (v14)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    if (swift_dynamicCast())
    {
      if (sub_1C5D13798([v12 integerValue], a3))
      {
        v10 = *a4;
        *a4 = a1;
        v11 = a1;

        *a2 = 1;
      }
    }
  }

  else
  {
    sub_1C5CBCF4C(&v13);
  }
}

void sub_1C5CD6910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C5CD6728(a2);
  if (v4)
  {
    v19 = v4;
    v5 = [v4 library];
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = *(a3 + 8);
      *(a3 + 8) = v19;
      v8 = v19;

      swift_beginAccess();
      v9 = *a3;
      if (*a3)
      {
        v10 = *a3;
      }

      else
      {
        v11 = [v6 databaseID];
        if (!v11)
        {
          sub_1C6016940();
          v11 = sub_1C6016900();
        }

        v10 = MPCMediaLibraryForUniqueID(v11);

        if (!v10)
        {

          goto LABEL_20;
        }

        v9 = 0;
      }

      swift_beginAccess();
      v12 = *a3;
      *a3 = v10;
      v13 = v10;
      v14 = v9;

      v15 = sub_1C5CD5C18();
      if (v15 == 2)
      {

LABEL_20:
        swift_unknownObjectRelease();
        return;
      }

      if (v15)
      {
        v16 = 6;
      }

      else
      {
        v16 = 1;
      }

      v17 = [v13 collectionWithPersistentID:objc_msgSend(v6 groupingType:{sel_persistentID), v16}];
      swift_unknownObjectRelease();

      if (v17)
      {
        swift_beginAccess();
        v18 = *(a3 + 16);
        *(a3 + 16) = v17;
      }
    }

    else
    {
    }
  }
}

void sub_1C5CD6B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C5CD4A44();
  if (v4)
  {
    v19 = v4;
    v5 = [v4 library];
    if (v5)
    {
      v6 = v5;
      swift_beginAccess();
      v7 = *(a3 + 24);
      *(a3 + 24) = v19;
      v8 = v19;

      swift_beginAccess();
      v9 = *a3;
      if (*a3)
      {
        v10 = *a3;
      }

      else
      {
        v11 = [v6 databaseID];
        if (!v11)
        {
          sub_1C6016940();
          v11 = sub_1C6016900();
        }

        v10 = MPCMediaLibraryForUniqueID(v11);

        if (!v10)
        {

          swift_unknownObjectRelease();
          return;
        }

        v9 = 0;
      }

      swift_beginAccess();
      v12 = *a3;
      *a3 = v10;
      v13 = v10;
      v14 = v9;

      v15 = [v13 entityWithPersistentID:objc_msgSend(v6 entityType:{sel_persistentID), 0}];
      swift_unknownObjectRelease();

      if (v15)
      {
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          v17 = v16;
          swift_beginAccess();
          v18 = *(a3 + 32);
          *(a3 + 32) = v17;
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

void sub_1C5CD6D2C()
{
  if (!qword_1EC1AA838)
  {
    type metadata accessor for MPCPlaybackEngineEventDeviceMetadataKey();
    sub_1C5C661D0(&unk_1EC1AA840, type metadata accessor for MPCPlaybackEngineEventDeviceMetadataKey);
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AA838);
    }
  }
}

void sub_1C5CD6DCC()
{
  if (!qword_1ED7DBB78[0])
  {
    type metadata accessor for MPCPlaybackEngineEventAccountMetadataKey();
    sub_1C5C661D0(&unk_1ED7DBB50, type metadata accessor for MPCPlaybackEngineEventAccountMetadataKey);
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7DBB78);
    }
  }
}

void sub_1C5CD6E6C()
{
  if (!qword_1EC1A8DE8)
  {
    type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey();
    sub_1C5C661D0(qword_1EC1A9300, type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey);
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8DE8);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5CD6F20(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5CD6F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So22MPCPlaybackEngineEventC17MediaPlaybackCoreE20PrivateListeningModeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C5CD6FFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 17))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C5CD7048(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C5CD70AC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_1C6017860();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_1C6017860();
}

uint64_t sub_1C5CD71B4()
{
  sub_1C5CEC70C();
  v0 = sub_1C5CD71EC();

  return v0 & 1;
}

id sub_1C5CD71EC()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  result = [objc_opt_self() mpc:v1 currentRouteSupportsEnhanceDialogue:?];
  if (v1[0])
  {
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_1C5CD72A0()
{
  sub_1C5CEC70C();
  v0 = sub_1C5CD72D8();

  return v0 & 1;
}

uint64_t sub_1C5CD72D8()
{
  if (byte_1EC1AA869 == 1)
  {
    return byte_1EC1AA868 & 1 | (qword_1EC1AA860 != 0);
  }

  else
  {
    return sub_1C5CD74F8();
  }
}

uint64_t sub_1C5CD7310()
{
  sub_1C60159B0();
  sub_1C5D29660(v0);
  sub_1C6015F40();
  v1 = sub_1C6015F30();
  sub_1C60159A0();

  sub_1C5CEC70C();
  sub_1C5CD7410();
}

void sub_1C5CD7410()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C5CD7B04(1);
    v2 = sub_1C5CD74F8();
    sub_1C5CD7B18(v2 & 1);
  }
}

uint64_t sub_1C5CD74F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1C5CD85BC(Strong);
  }

  sub_1C60159B0();
  sub_1C6015F40();
  v1 = sub_1C6015F30();
  v2 = sub_1C6015990();

  return v2 & 1;
}

uint64_t *sub_1C5CD7590(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1C6017080();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  *(v1 + 5) = 0u;
  *(v1 + 3) = 0u;
  v9 = (v1 + 3);
  swift_unknownObjectWeakAssign();
  v10 = [objc_opt_self() defaultCenter];
  sub_1C6017090();

  *(swift_allocObject() + 16) = v4;
  sub_1C5CD8574(&qword_1ED7DCDF8, MEMORY[0x1E6969F20]);
  v11 = sub_1C6016600();

  (*(v6 + 8))(v8, v5);
  v14[3] = sub_1C60164A0();

  v14[0] = v11;
  swift_beginAccess();
  sub_1C5CD8498(v14, v9);
  swift_endAccess();
  return v2;
}

void sub_1C5CD77C0()
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ((byte_1EC1AA858 & 1) == 0)
  {
    v0 = qword_1EC1AA850;
    if ((byte_1EC1AA868 & 1) != 0 || qword_1EC1AA860 != qword_1EC1AA850)
    {
      if (qword_1EC1A8EB8 != -1)
      {
        swift_once();
      }

      v1 = sub_1C60162D0();
      __swift_project_value_buffer(v1, qword_1EC1BE3A0);
      v2 = sub_1C60162B0();
      v3 = sub_1C6016F30();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v23[0] = v5;
        *v4 = 136315138;
        v22[0] = sub_1C5CD80AC(v0);
        v22[1] = v6;
        sub_1C5C67444(0, &qword_1EC1A9480);
        v7 = sub_1C60169A0();
        v9 = sub_1C5C6AB10(v7, v8, v23);

        *(v4 + 4) = v9;
        _os_log_impl(&dword_1C5C61000, v2, v3, "EnhanceDialogueSession: Restoring enhance dialogue level: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x1C6956920](v5, -1, -1);
        MEMORY[0x1C6956920](v4, -1, -1);
      }

      v22[0] = 0;
      v10 = [objc_opt_self() setEnhanceDialogueLevel:v0 error:v22];
      v11 = v22[0];
      if (v10)
      {

        v12 = v11;
      }

      else
      {
        v13 = v22[0];
        v14 = sub_1C6014D40();

        swift_willThrow();
        v15 = v14;
        v16 = sub_1C60162B0();
        v17 = sub_1C6016F20();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          v20 = v14;
          v21 = _swift_stdlib_bridgeErrorToNSError();
          *(v18 + 4) = v21;
          *v19 = v21;
          _os_log_impl(&dword_1C5C61000, v16, v17, "EnhanceDialogueSession: Error restoring previous enhance dialogue level: %@", v18, 0xCu);
          sub_1C5CB5700(v19);
          MEMORY[0x1C6956920](v19, -1, -1);
          MEMORY[0x1C6956920](v18, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1C5CD7B04(char a1)
{
  v1 = byte_1EC1AA869;
  byte_1EC1AA869 = a1;
  sub_1C5CD7EF0(v1);
}

void sub_1C5CD7B18(char a1)
{
  v21[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if ((byte_1EC1AA868 & 1) != 0 || qword_1EC1AA860 != v1)
  {
    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v2 = sub_1C60162D0();
    __swift_project_value_buffer(v2, qword_1EC1BE3A0);
    v3 = sub_1C60162B0();
    v4 = sub_1C6016F30();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21[0] = v6;
      *v5 = 136315138;
      v20[0] = sub_1C5CD80AC(v1);
      v20[1] = v7;
      sub_1C5C67444(0, &qword_1EC1A9480);
      v8 = sub_1C60169A0();
      v10 = sub_1C5C6AB10(v8, v9, v21);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1C5C61000, v3, v4, "EnhanceDialogueSession: Setting enhance dialogue level to: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1C6956920](v6, -1, -1);
      MEMORY[0x1C6956920](v5, -1, -1);
    }

    v20[0] = 0;
    if ([objc_opt_self() setEnhanceDialogueLevel:v1 error:v20])
    {
      qword_1EC1AA860 = v1;
      byte_1EC1AA868 = 0;
      v11 = v20[0];
      sub_1C5CD80AC(v1);
      if (v12)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v14 = Strong, v15 = [Strong eventStream], v14, v15))
        {
          sub_1C5CD8510(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C60311E0;
          *(inited + 32) = @"enhance-dialogue";
          v17 = @"enhance-dialogue";
          v18 = sub_1C6016900();

          *(inited + 40) = v18;
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          sub_1C5CC547C();
          sub_1C5CD8574(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
          sub_1C6016880();
          sub_1C5E372B8();
        }

        else
        {
        }
      }
    }

    else
    {
      v19 = v20[0];
      sub_1C6014D40();

      swift_willThrow();
    }
  }
}

void sub_1C5CD7EF0(char a1)
{
  if (byte_1EC1AA869 != (a1 & 1))
  {
    if (byte_1EC1AA869)
    {
      sub_1C5CD7F14();
    }

    else
    {
      sub_1C5CD77C0();
    }
  }
}

void sub_1C5CD7F14()
{
  v0 = sub_1C5CD8228();
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C60162D0();
  __swift_project_value_buffer(v1, qword_1EC1BE3A0);
  v2 = sub_1C60162B0();
  v3 = sub_1C6016F30();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    sub_1C5CD80AC(v0);
    sub_1C5C67444(0, &qword_1EC1A9480);
    v6 = sub_1C60169A0();
    v8 = sub_1C5C6AB10(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C5C61000, v2, v3, "EnhanceDialogueSession: Snapshotting enhance dialogue level for restoration later: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1C6956920](v5, -1, -1);
    MEMORY[0x1C6956920](v4, -1, -1);
  }

  qword_1EC1AA860 = v0;
  byte_1EC1AA868 = 0;
  qword_1EC1AA850 = v0;
  byte_1EC1AA858 = 0;
}

uint64_t sub_1C5CD80AC(unint64_t a1)
{
  if (a1 < 4)
  {
    return *&aOff_3[8 * a1];
  }

  if (qword_1EC1A9580 != -1)
  {
    swift_once();
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1BE420);
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F20();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    type metadata accessor for AVAudioApplicationEnhanceDialogueLevel();
    v7 = sub_1C60169A0();
    v9 = sub_1C5C6AB10(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C5C61000, v3, v4, "EnhanceDialogueSession: Unexpected enhance dialogue level: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1C6956920](v6, -1, -1);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_1C5CD8228()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v13 = 0;
  if ([objc_opt_self() getEnhanceDialogueLevel:v14 error:&v13])
  {
    v0 = v14[0];
    v1 = v13;
  }

  else
  {
    v2 = v13;
    v3 = sub_1C6014D40();

    swift_willThrow();
    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1C60162D0();
    __swift_project_value_buffer(v4, qword_1EC1BE3A0);
    v5 = v3;
    v6 = sub_1C60162B0();
    v7 = sub_1C6016F20();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C5C61000, v6, v7, "EnhanceDialogueSession: Error getting enhance dialogue level: %@", v8, 0xCu);
      sub_1C5CB5700(v9);
      MEMORY[0x1C6956920](v9, -1, -1);
      MEMORY[0x1C6956920](v8, -1, -1);
    }

    else
    {
    }

    return v14[0];
  }

  return v0;
}

uint64_t sub_1C5CD8410()
{
  MEMORY[0x1C6956A70](v0 + 16);
  sub_1C5CBCF4C(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C5CD8498(uint64_t a1, uint64_t a2)
{
  sub_1C5C67444(0, &qword_1ED7E0200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5CD8510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5CD8574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5CD85BC(void *a1)
{
  v2 = [a1 podcastUUID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016940();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore18AlignmentTaskStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C5CD8644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5CD8698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C5CD86F4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5CD8724(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_1C6017860();
  }

  return 1;
}

uint64_t sub_1C5CD87A8(unsigned __int8 a1)
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](a1);
  return sub_1C6017A20();
}

uint64_t getEnumTagSinglePayload for AlignmentTaskError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AlignmentTaskError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5CD8978()
{
  result = qword_1EC1AA8D8;
  if (!qword_1EC1AA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AA8D8);
  }

  return result;
}

uint64_t sub_1C5CD89D4()
{
  v1 = *v0;
  sub_1C60179F0();
  MEMORY[0x1C69544E0](v1);
  return sub_1C6017A20();
}

uint64_t sub_1C5CD8A24(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1C60162D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6016270();
  sub_1C5CDAFC8(a1, a2);

  v10 = sub_1C60162B0();
  v11 = sub_1C6016F30();
  sub_1C5CDABE4(a1, a2);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a2;
    v26 = v14;
    *v13 = 136315394;
    v24 = a1;
    sub_1C5CDAFC8(a1, a2);
    v15 = sub_1C60169A0();
    v17 = sub_1C5C6AB10(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = *(v3 + 232);
    v24 = *(v3 + 224);
    v25 = v18;
    sub_1C5CDAFC8(v24, v18);
    v19 = sub_1C60169A0();
    v21 = sub_1C5C6AB10(v19, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1C5C61000, v10, v11, "[FullAlignmentTask]: State changed from %s to %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v14, -1, -1);
    MEMORY[0x1C6956920](v13, -1, -1);

    return (*(v7 + 8))(v9, v23);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1C5CD8C78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 224);
  v4 = *(v2 + 232);
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  sub_1C5CD8A24(v3, v4);

  return sub_1C5CDABE4(v3, v4);
}

uint64_t sub_1C5CD8CC8(void *a1)
{
  v2 = v1;
  v4 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v45 - v12;
  OUTLINED_FUNCTION_5_6(v11, &qword_1ED7DCEC0);
  v15 = OUTLINED_FUNCTION_13_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  if (v2[29])
  {
    sub_1C6016270();
    v18 = a1;

    v19 = sub_1C60162B0();
    v20 = sub_1C6016F30();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v21 = 136315651;
      v22 = v2[29];
      v46 = v2[28];
      v47 = v22;
      sub_1C5CDAFC8(v46, v22);
      v23 = sub_1C60169A0();
      v25 = sub_1C5C6AB10(v23, v24, &v48);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2160;
      OUTLINED_FUNCTION_15_5();
      *(v21 + 14) = v26;
      *(v21 + 22) = 2081;
      v46 = a1;
      OUTLINED_FUNCTION_6_6(v27, &qword_1EC1AA938);
      v28 = sub_1C6017330();
      v30 = sub_1C5C6AB10(v28, v29, &v48);

      *(v21 + 24) = v30;
      _os_log_impl(&dword_1C5C61000, v19, v20, "[FullAlignmentTask]: Ignoring start processing request. State: %s, Episode: %{private,mask.hash}s", v21, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    return (*(v6 + 8))(v10, v4);
  }

  else if (a1 && (v32 = sub_1C5D2966C(a1), v33))
  {
    sub_1C5CD8C78(v32, v33);
    v34 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v34);
    OUTLINED_FUNCTION_4_6();
    v38 = sub_1C5CDADA0(v35, v36, v37);
    v39 = swift_allocObject();
    v39[2] = v2;
    v39[3] = v38;
    v39[4] = a1;
    v39[5] = v2;
    swift_retain_n();
    v40 = a1;
    sub_1C5E1161C();
    v2[27] = v41;
  }

  else
  {
    sub_1C6016270();
    v42 = sub_1C60162B0();
    v43 = sub_1C6016F30();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1C5C61000, v42, v43, "[FullAlignmentTask]: Ignoring start processing request. Content item ID is not valid.", v44, 2u);
      OUTLINED_FUNCTION_4();
    }

    return (*(v6 + 8))(v13, v4);
  }
}

uint64_t sub_1C5CD908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = sub_1C60162D0();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CD915C, a5, 0);
}

void sub_1C5CD915C()
{
  v1 = v0[3];
  sub_1C6016270();
  v2 = v1;
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 141558275;
    OUTLINED_FUNCTION_15_5();
    *(v9 + 4) = v11;
    *(v9 + 12) = 2081;
    v0[2] = v8;
    OUTLINED_FUNCTION_6_6(v12, &qword_1EC1AA938);
    v13 = sub_1C6017330();
    v15 = sub_1C5C6AB10(v13, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1C5C61000, v3, v4, "[FullAlignmentTask]: Begin processing full alignment for episode: %{private,mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    v16 = *(v7 + 8);
    v16(v5, v6);
  }

  else
  {
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  v0[9] = v16;
  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = sub_1C5CD9354;
  OUTLINED_FUNCTION_19_3();

  __asm { BR              X0 }
}

uint64_t sub_1C5CD9354()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1C5CD94E4;
  }

  else
  {
    v4 = sub_1C5CD9480;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C5CD9480()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CD94E4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 88);
  sub_1C6016270();
  v2 = v1;
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F20();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558275;
    OUTLINED_FUNCTION_15_5();
    *(v7 + 4) = v9;
    *(v7 + 12) = 2113;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1C5C61000, v3, v4, "[FullAlignmentTask]: Error processing full alignment: %{private,mask.hash}@", v7, 0x16u);
    sub_1C5CDB0C4(v8, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0, sub_1C5C64D74);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  (*(v0 + 72))(*(v0 + 56), *(v0 + 40));

  OUTLINED_FUNCTION_172();

  return v12();
}

uint64_t sub_1C5CD9690()
{
  swift_beginAccess();
  sub_1C5CDAED4(v0 + 176, v11);
  if (v12)
  {
    sub_1C5CDAF64(v11, v10);
    OUTLINED_FUNCTION_0_11();
    sub_1C5CDB0C4(v11, v1, v2, v3, v4);
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_1C6015C10();
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    return sub_1C5CDB0C4(v11, v6, v7, v8, v9);
  }
}

uint64_t sub_1C5CD9764()
{
  v1 = v0;
  v2 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6016270();
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C5C61000, v8, v9, "[FullAlignmentTask]: Reset request. Cleaning up.", v10, 2u);
    OUTLINED_FUNCTION_4();
  }

  (*(v4 + 8))(v7, v2);
  swift_beginAccess();
  sub_1C5CDAED4(v1 + 176, &v21);
  if (*(&v22 + 1))
  {
    sub_1C5CDAF64(&v21, v20);
    OUTLINED_FUNCTION_0_11();
    sub_1C5CDB0C4(&v21, v11, v12, v13, v14);
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    sub_1C6015C00();
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C5CDB0C4(&v21, v15, v16, v17, v18);
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  swift_beginAccess();
  sub_1C5CDADE8(&v21, v1 + 176);
  swift_endAccess();
  if (*(v1 + 216))
  {
    sub_1C5C74680(0, &qword_1ED7DCAE0);

    sub_1C6016C70();
  }

  *(v1 + 216) = 0;

  return sub_1C5CD8C78(0, 0);
}

uint64_t sub_1C5CD99E4()
{
  OUTLINED_FUNCTION_248();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  sub_1C5CDACA8(0, &qword_1EC1AA8E8, MEMORY[0x1E695BFD0]);
  v1[27] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[28] = v6;
  v1[29] = OUTLINED_FUNCTION_21_0();
  sub_1C5CDAC88(0);
  v1[30] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_21_0();
  v9 = sub_1C6016220();
  OUTLINED_FUNCTION_13_3(v9);
  v1[33] = OUTLINED_FUNCTION_21_0();
  v10 = sub_1C60162D0();
  v1[34] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[35] = v11;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_1C5CDAD38();
  OUTLINED_FUNCTION_13_3(v12);
  v1[38] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6DFA0](sub_1C5CD9B9C, v0, 0);
}

uint64_t sub_1C5CD9B9C()
{
  if (sub_1C5CDA508(*(v0 + 184)))
  {
    v25 = *(v0 + 224);
    v1 = *(v0 + 208);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    v22 = *(v0 + 192);
    v2 = *(v0 + 184);
    *(v0 + 160) = *(v1 + 168);
    sub_1C5C761DC();
    sub_1C5CDADA0(&qword_1EC1AA910, 255, sub_1C5C761DC);
    sub_1C60159C0();
    [v2 storeItemInt64ID];
    sub_1C6016110();
    swift_unknownObjectRetain();
    sub_1C6016290();
    sub_1C6016210();
    sub_1C5C64D74(0, &qword_1ED7DCE50);
    sub_1C6016F80();
    [objc_allocWithZone(MEMORY[0x1E69C4E68]) init];
    v3 = sub_1C6015FB0();
    swift_allocObject();
    v4 = v22;
    v5 = sub_1C6015FA0();
    v6 = MEMORY[0x1E69C4DA8];
    *(v0 + 312) = v5;
    *(v0 + 40) = v3;
    *(v0 + 48) = v6;
    *(v0 + 16) = v5;
    swift_beginAccess();

    sub_1C5CDADE8(v0 + 16, v1 + 176);
    swift_endAccess();
    *(v0 + 168) = sub_1C6015F90();
    sub_1C5CDABF8();
    v8 = v7;
    OUTLINED_FUNCTION_3_7();
    v11 = sub_1C5CDADA0(v9, 255, v10);
    MEMORY[0x1C6953090](v8, v11);

    sub_1C60164E0();
    (*(v25 + 8))(v23, v24);
    OUTLINED_FUNCTION_4_6();
    *(v0 + 320) = sub_1C5CDADA0(v12, v13, v14);
    OUTLINED_FUNCTION_2_8();
    sub_1C5CDADA0(v15, 255, v16);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    *(v0 + 328) = v17;
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_1_7(v17);

    return MEMORY[0x1EEE6D8C8](v19);
  }

  else
  {
    OUTLINED_FUNCTION_20_3();

    OUTLINED_FUNCTION_172();

    return v20();
  }
}

uint64_t sub_1C5CD9F28()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1C6016BA0();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1C5CDA3AC;
    v10 = v6;
  }

  else
  {
    v9 = sub_1C5CDA08C;
    v10 = v5;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v8);
}

uint64_t sub_1C5CDA08C()
{
  v31 = v0;
  if (!*(v0 + 80))
  {
    v7 = *(v0 + 184);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    if (sub_1C5CDA508(v7))
    {
      v8 = *(v0 + 336);
      sub_1C6016CB0();
      if (v8)
      {

        OUTLINED_FUNCTION_172();
        goto LABEL_13;
      }

      v9 = *(v0 + 184);
      sub_1C6016270();
      v10 = v9;
      v11 = sub_1C60162B0();
      v12 = sub_1C6016F30();

      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 280);
      v15 = *(v0 + 288);
      v16 = *(v0 + 272);
      if (v13)
      {
        v17 = *(v0 + 184);
        v29 = *(v0 + 288);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = v19;
        *v18 = 141558275;
        OUTLINED_FUNCTION_15_5();
        *(v18 + 4) = v20;
        *(v18 + 12) = 2081;
        v21 = [v17 debugDescription];
        v22 = sub_1C6016940();
        v24 = v23;

        v25 = sub_1C5C6AB10(v22, v24, &v30);

        *(v18 + 14) = v25;
        _os_log_impl(&dword_1C5C61000, v11, v12, "[FullAlignmentTask]: Completed transcripts processing for episode: %{private,mask.hash}s", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();

        (*(v14 + 8))(v29, v16);
      }

      else
      {

        (*(v14 + 8))(v15, v16);
      }

      sub_1C5CD8C78(0, 1);
    }

    OUTLINED_FUNCTION_20_3();

    OUTLINED_FUNCTION_172();
LABEL_13:
    OUTLINED_FUNCTION_19_3();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 184);
  sub_1C5C6BEFC((v0 + 56), v0 + 96);
  sub_1C5CDA5B8(v0 + 96, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  OUTLINED_FUNCTION_2_8();
  sub_1C5CDADA0(v2, 255, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 328) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6D8C8]();
}

uint64_t sub_1C5CDA3AC()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[26];
  v0[22] = v0[42];
  sub_1C5C74680(0, &qword_1ED7DCAE0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1C5CDA444, v1, 0);
}

uint64_t sub_1C5CDA444()
{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_108();
  v1(v0);

  OUTLINED_FUNCTION_172();

  return v2();
}

BOOL sub_1C5CDA508(void *a1)
{
  v2 = *(v1 + 232);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = *(v1 + 224);

  v5 = sub_1C5D2966C(a1);
  if (!v6)
  {
    v11 = OUTLINED_FUNCTION_108();
    sub_1C5CDABE4(v11, v12);
    return 0;
  }

  if (v5 != v4 || v6 != v2)
  {
    v8 = sub_1C6017860();
    v9 = OUTLINED_FUNCTION_108();
    sub_1C5CDABE4(v9, v10);

    return (v8 & 1) != 0;
  }

  v14 = OUTLINED_FUNCTION_108();
  sub_1C5CDABE4(v14, v15);

  return 1;
}

uint64_t sub_1C5CDA5B8(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_5_6(a1, &qword_1ED7DCEC0);
  v5 = OUTLINED_FUNCTION_13_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-v6 - 8];
  sub_1C5CDAF64(a1, v16);
  sub_1C5C74680(0, &qword_1EC1AA8E0);
  sub_1C60160A0();
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v15;
    v10 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
    sub_1C6016C10();
    v11 = a2;

    v12 = sub_1C6016C00();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    v13[5] = v9;
    sub_1C5CDC270();
  }

  return result;
}

uint64_t sub_1C5CDA720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C6016C10();
  v5[4] = sub_1C6016C00();
  v7 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5CDA7B8, v7, v6);
}

uint64_t sub_1C5CDA7B8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____MPCPodcastAVItem_transcriptAlignments) = sub_1C5CDA83C();

  sub_1C5CED108();
  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5CDA83C()
{
  v0 = sub_1C6016060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C6016090();
  v5 = sub_1C6016080();
  v6 = sub_1C6016070();
  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C60175F0();
    v8 = *(v1 + 16);
    v9 = *(v1 + 80);
    v19[1] = v6;
    v10 = v6 + ((v9 + 32) & ~v9);
    v20 = *(v1 + 72);
    v21 = v8;
    v22 = v1 + 16;
    do
    {
      v21(v3, v10, v0);
      sub_1C6016040();
      v12 = v11;
      sub_1C6016040();
      v14 = v13;
      sub_1C6016050();
      v16 = v15;
      sub_1C6016050();
      [objc_allocWithZone(MEMORY[0x1E6970868]) initWithPlayerStartTime:v4 & 1 playerEndTime:v5 & 1 referenceStartTime:v12 referenceEndTime:v14 matchedBeginning:v16 matchedEnd:v17];
      (*(v1 + 8))(v3, v0);
      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
      v10 += v20;
      --v7;
    }

    while (v7);

    return v23;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C5CDAA60()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_11();
  sub_1C5CDB0C4(v0 + 176, v1, v2, v3, v4);

  sub_1C5CDABE4(*(v0 + 224), *(v0 + 232));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C5CDAACC()
{
  sub_1C5CDAA60();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C5CDAB44()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_6(v1);

  return sub_1C5CDA720(v3, v4, v5, v6, v7);
}

uint64_t sub_1C5CDABE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1C5CDABF8()
{
  if (!qword_1EC1AA8F0)
  {
    sub_1C5C74680(255, &qword_1EC1AA8E0);
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6016470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AA8F0);
    }
  }
}

void sub_1C5CDACA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1C5CDABF8();
    v7 = v6;
    OUTLINED_FUNCTION_3_7();
    v10 = sub_1C5CDADA0(v8, 255, v9);
    v11 = a3(a1, v7, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1C5CDAD38()
{
  if (!qword_1EC1AA908)
  {
    sub_1C6015C20();
    sub_1C60160A0();
    v0 = sub_1C6015A50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AA908);
    }
  }
}

uint64_t sub_1C5CDADA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C5CDADE8(uint64_t a1, uint64_t a2)
{
  sub_1C5CDAE78(0, &qword_1EC1AA918, &unk_1EC1AA920, MEMORY[0x1E69C4CE0], sub_1C5C74680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5CDAE78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C6017350();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C5CDAED4(uint64_t a1, uint64_t a2)
{
  sub_1C5CDAE78(0, &qword_1EC1AA918, &unk_1EC1AA920, MEMORY[0x1E69C4CE0], sub_1C5C74680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5CDAF64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C5CDAFC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5CDB024()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_6(v1);

  return sub_1C5CD908C(v3, v4, v5, v6, v7);
}

uint64_t sub_1C5CDB0C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1C5CDAE78(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_3()
{
}

uint64_t sub_1C5CDB160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1C60162D0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CDB23C, v3, 0);
}

uint64_t sub_1C5CDB23C()
{
  v1 = *(*(v0 + 5) + 152);
  v0[11] = v1;
  sub_1C5CDBA38(v1);
  if (v3)
  {
    sub_1C6016270();
    v4 = sub_1C60162B0();
    v5 = sub_1C6016F30();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C5C61000, v4, v5, "[ScoutingAlignmentTask]: Beginning to resolve player time using scouting.", v6, 2u);
      MEMORY[0x1C6956920](v6, -1, -1);
    }

    v7 = *(v0 + 10);
    v8 = *(v0 + 6);
    v9 = *(v0 + 7);
    v10 = *(v0 + 5);

    v11 = *(v9 + 8);
    *(v0 + 12) = v11;
    v11(v7, v8);
    sub_1C5CDC0F0();
    v12 = sub_1C6015280();
    *(v0 + 13) = v12;
    v13 = sub_1C5CDC19C();
    v14 = swift_task_alloc();
    *(v0 + 14) = v14;
    *v14 = v0;
    v14[1] = sub_1C5CDB428;

    return MEMORY[0x1EEE68140](v0 + 20, v12, v10, v13);
  }

  else
  {
    v15 = v2;

    OUTLINED_FUNCTION_172();
    v17.n128_u64[0] = v15;

    return v16(v17);
  }
}

uint64_t sub_1C5CDB428()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1C5CDB930;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1C5CDB550;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C5CDB550()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1C6016290();
  sub_1C6015F80();
  swift_allocObject();
  v3 = v1;
  v4 = v2;
  v0[16] = sub_1C6015F70();
  result = sub_1C6017220();
  if (v6 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = v6;
    v12 = (*MEMORY[0x1E69C4DA0] + MEMORY[0x1E69C4DA0]);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1C5CDB694;
    v9.n128_u64[0] = v0[11];
    v10.n128_u64[0] = 0;
    v11.n128_f64[0] = v7;

    return v12(v9, v10, v11);
  }

  return result;
}

uint64_t sub_1C5CDB694(double a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_1C5CDB9B4;
  }

  else
  {
    v6 = sub_1C5CDB7C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C5CDB7C4()
{
  sub_1C6016270();

  v1 = sub_1C60162B0();
  v2 = sub_1C6016F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = v0[11];
    v5 = swift_slowAlloc();
    *v5 = 134349312;
    *(v5 + 4) = v3;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_1C5C61000, v1, v2, "[ScoutingAlignmentTask]: Resolved timestamp (player: %{public}f, reference: %{public}f)", v5, 0x16u);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[6];

  v6(v7, v8);
  v9 = v0[18];

  OUTLINED_FUNCTION_172();
  v11.n128_u64[0] = v9;

  return v10(v11);
}

uint64_t sub_1C5CDB930()
{

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CDB9B4()
{

  OUTLINED_FUNCTION_172();

  return v0();
}

void sub_1C5CDBA38(double a1)
{
  v58 = sub_1C6015EB0();
  v3 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6015EE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C60162D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v17 = *(v1 + OBJC_IVAR____MPCPodcastAVItem_transcriptAlignments);
  if (!v17)
  {
    return;
  }

  v57 = v10;

  sub_1C6016270();
  v18 = sub_1C60162B0();
  v19 = sub_1C6016F30();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v7;
    v21 = v6;
    v22 = v9;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C5C61000, v18, v19, "[ScoutingAlignmentTask]: Player item contains existing alignments, checking...", v23, 2u);
    v24 = v23;
    v9 = v22;
    v6 = v21;
    v7 = v20;
    MEMORY[0x1C6956920](v24, -1, -1);
  }

  v25 = *(v57 + 8);
  v57 += 8;
  v52 = v25;
  v25(v16, v9);
  v26 = sub_1C5C6AA20(v17);
  v53 = v9;
  if (!v26)
  {

LABEL_18:
    v40 = v56;
    sub_1C6015EC0();
    v41 = sub_1C6015ED0();
    v42 = v55;
    if (v43)
    {
      v42 = v54;
      sub_1C6016270();
      v44 = sub_1C60162B0();
      v45 = sub_1C6016F30();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_26;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C5C61000, v44, v45, "[ScoutingAlignmentTask]: Didn't find matching alignment.", v46, 2u);
    }

    else
    {
      v47 = v41;
      v48 = v6;
      sub_1C6016270();
      v44 = sub_1C60162B0();
      v49 = sub_1C6016F30();
      if (!os_log_type_enabled(v44, v49))
      {
        v6 = v48;
        goto LABEL_26;
      }

      v46 = swift_slowAlloc();
      *v46 = 134349312;
      *(v46 + 4) = v47;
      *(v46 + 12) = 2050;
      *(v46 + 14) = a1;
      _os_log_impl(&dword_1C5C61000, v44, v49, "[ScoutingAlignmentTask]: Resolved timestamp from cache (player: %{public}f, reference: %{public}f)", v46, 0x16u);
      v6 = v48;
    }

    MEMORY[0x1C6956920](v46, -1, -1);
LABEL_26:

    v52(v42, v53);
    (*(v7 + 8))(v40, v6);
    return;
  }

  v27 = v26;
  v59 = MEMORY[0x1E69E7CC0];
  sub_1C5D0F0BC(0, v26 & ~(v26 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v50 = v7;
    v51 = v6;
    v28 = 0;
    v29 = v59;
    while (1)
    {
      v30 = (v17 & 0xC000000000000001) != 0 ? MEMORY[0x1C6954040](v28, v17) : *(v17 + 8 * v28 + 32);
      v31 = v30;
      [v30 playerStartTime];
      v33 = v32;
      [v31 playerEndTime];
      if (v33 > v34)
      {
        break;
      }

      [v31 referenceStartTime];
      v36 = v35;
      [v31 referenceEndTime];
      if (v36 > v37)
      {
        goto LABEL_28;
      }

      [v31 matchedBeginning];
      [v31 matchedEnd];
      sub_1C6015EA0();

      v59 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1C5D0F0BC(v38 > 1, v39 + 1, 1);
        v29 = v59;
      }

      ++v28;
      *(v29 + 16) = v39 + 1;
      (*(v3 + 32))(v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, v5, v58);
      if (v27 == v28)
      {

        v7 = v50;
        v6 = v51;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C5CDC070()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  sub_1C5CDABE4(*(v0 + 160), *(v0 + 168));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C5CDC0A0()
{
  sub_1C5CDC070();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1C5CDC0F0()
{
  if (!qword_1EC1AA940)
  {
    sub_1C5CDC158();
    type metadata accessor for CMTime();
    v0 = sub_1C6015200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AA940);
    }
  }
}

unint64_t sub_1C5CDC158()
{
  result = qword_1EC1A8CE8;
  if (!qword_1EC1A8CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1A8CE8);
  }

  return result;
}

unint64_t sub_1C5CDC19C()
{
  result = qword_1EC1AA948;
  if (!qword_1EC1AA948)
  {
    type metadata accessor for ScoutingAlignmentTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AA948);
  }

  return result;
}

uint64_t sub_1C5CDC1F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  LOBYTE(a2) = v5(v6, a3);

  swift_unknownObjectRelease();
  return a2 & 1;
}

void sub_1C5CDC270()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_1_8(v5, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_47_0(v7, v16);
  v8 = sub_1C6016C30();
  v9 = OUTLINED_FUNCTION_38();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, v10, v8);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C5C7ACE0(v1);
  }

  else
  {
    sub_1C6016C20();
    OUTLINED_FUNCTION_50_0();
    (*(v12 + 8))(v1, v8);
  }

  v13 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C5C7ACE0(v3);
    OUTLINED_FUNCTION_58();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C6016BA0();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C60169C0();
  OUTLINED_FUNCTION_58();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v0;

  swift_task_create();

  sub_1C5C7ACE0(v3);

LABEL_9:
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CDC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5C67DB0(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C5CE2ACC(a3, v24 - v10);
  v12 = sub_1C6016C30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C5C7ACE0(v11);
  }

  else
  {
    sub_1C6016C20();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C6016BA0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C60169C0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1C5C7ACE0(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5C7ACE0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1C5CDC76C()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_1_8(v5, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_47_0(v8, v17);
  v9 = sub_1C6016C30();
  v10 = OUTLINED_FUNCTION_38();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C5C7ACE0(v1);
  }

  else
  {
    sub_1C6016C20();
    OUTLINED_FUNCTION_50_0();
    (*(v13 + 8))(v1, v9);
  }

  v14 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C5C7ACE0(v3);
    OUTLINED_FUNCTION_58();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v0;
    sub_1C5CE3454();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C6016BA0();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C60169C0();
  OUTLINED_FUNCTION_58();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v0;
  sub_1C5CE3454();

  swift_task_create();

  sub_1C5C7ACE0(v3);

LABEL_9:
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CDC9C8()
{
  OUTLINED_FUNCTION_248();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C60162D0();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CDCA80()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAssetLoaded])
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_14_2();
      v0[8] = v3;
      *v3 = v4;
      v5 = OUTLINED_FUNCTION_39_0(v3);

      return sub_1C5CDDE84(v5, v6);
    }
  }

  sub_1C6016270();
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F20();
  if (os_log_type_enabled(v8, v9))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_60_0(&dword_1C5C61000, v10, v11, "[AlignmentTask]: Asset is not loaded. Attempting to load asset...");
    OUTLINED_FUNCTION_4();
  }

  v12 = OUTLINED_FUNCTION_252();
  v13(v12);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  v0[10] = v14;
  *v14 = v15;
  v14[1] = sub_1C5CDCDDC;
  v16 = v0[3];
  v17 = v0[2];

  return sub_1C5CDD438(v17, v16);
}

uint64_t sub_1C5CDCC1C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CDCD14()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDCD78()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDCDDC()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C5CDCEE8()
{
  OUTLINED_FUNCTION_248();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1C60162D0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CDCF9C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[5];
  if (v1)
  {
    v2 = v1;
    if ([v2 isAssetLoaded])
    {
      v3 = swift_task_alloc();
      v0[10] = v3;
      *v3 = v0;
      v3[1] = sub_1C5CDD144;

      return sub_1C5CDEB34(v2);
    }
  }

  sub_1C6016270();
  v5 = sub_1C60162B0();
  v6 = sub_1C6016F20();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_60_0(&dword_1C5C61000, v7, v8, "[AlignmentTask]: Asset is not loaded. Attempting to load asset...");
    OUTLINED_FUNCTION_4();
  }

  v9 = OUTLINED_FUNCTION_252();
  v10(v9);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_1C5CDD318;
  v12 = v0[5];

  return sub_1C5CDD950(v12);
}

uint64_t sub_1C5CDD144()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5CDD248()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_172();
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_1C5CDD2B4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDD318()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6.n128_u64[0] = v3;
  }

  return v7(v6);
}

uint64_t sub_1C5CDD438(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C5CDD45C, 0, 0);
}

uint64_t sub_1C5CDD45C()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 24);
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_1C5CDD558;

    return sub_1C5CEB2C8();
  }

  else
  {
    sub_1C5CE30E4();
    OUTLINED_FUNCTION_35_2();
    *v4 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v5();
  }
}

uint64_t sub_1C5CDD558()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CDD658()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[6];
  if (v1)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    v0[8] = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_39_0(v2);

    return sub_1C5CDDE84(v4, v5);
  }

  else
  {
    v7 = v0[3];
    sub_1C5CE30E4();
    v8 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_58_0(v8, v9);

    OUTLINED_FUNCTION_172();

    return v10();
  }
}

uint64_t sub_1C5CDD744()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDD7A0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CDD898()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDD8F4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDD950(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5CDD970, 0, 0);
}

uint64_t sub_1C5CDD970()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 16);
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_1C5CDDA6C;

    return sub_1C5CEB2C8();
  }

  else
  {
    sub_1C5CE30E4();
    OUTLINED_FUNCTION_35_2();
    *v4 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v5();
  }
}

uint64_t sub_1C5CDDA6C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CDDB6C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1C5CDDCBC;

    return sub_1C5CDEB34(v2);
  }

  else
  {
    sub_1C5CE30E4();
    v5 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_58_0(v5, v6);

    OUTLINED_FUNCTION_172();

    return v7();
  }
}

uint64_t sub_1C5CDDC60()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDDCBC()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5CDDDC8()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();
  v2.n128_u64[0] = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1C5CDDE28()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CDDE84(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v4 = sub_1C6015B60();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1C5C67DB0(0, &qword_1EC1AAA10, MEMORY[0x1E69C4C98]);
  v3[9] = swift_task_alloc();
  sub_1C5CE305C(0, &qword_1EC1AAA18, MEMORY[0x1E695BFD0]);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_1C5CE303C(0);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = sub_1C6015A70();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_1C6015DF0();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = sub_1C6015D00();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CDE174, 0, 0);
}

uint64_t sub_1C5CDE174()
{
  sub_1C5CED1D0();
  if (!v6)
  {
    v29 = 1;
    goto LABEL_10;
  }

  v7 = [*(v0 + 32) asset];
  *(v0 + 200) = v7;
  if (!v7)
  {
LABEL_9:

    v29 = 2;
LABEL_10:
    sub_1C5CE30E4();
    OUTLINED_FUNCTION_35_2();
    *v30 = v29;
    swift_willThrow();
    OUTLINED_FUNCTION_4_7();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36_0();

    __asm { BRAA            X1, X16 }
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  *(v0 + 208) = v9;
  if (!v9)
  {

    goto LABEL_9;
  }

  [OUTLINED_FUNCTION_19_4() storeItemInt64ID];
  sub_1C6016110();
  (*(v2 + 104))(v3, *MEMORY[0x1E69C4D60], v5);
  v10 = (*(v1 + 104))(v4, *MEMORY[0x1E69C4C70]);
  OUTLINED_FUNCTION_22_4(v10, v11, v12, v13, v14, v15, v16, v17, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v18 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_66_1(v18);
  OUTLINED_FUNCTION_5_7();
  sub_1C5C7626C(v19, 255, v20);
  OUTLINED_FUNCTION_64_2();

  sub_1C60164E0();
  v21 = OUTLINED_FUNCTION_252();
  v22(v21);
  OUTLINED_FUNCTION_2_9();
  sub_1C5C7626C(v23, 255, v24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 216) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_7_7(v25);
  OUTLINED_FUNCTION_36_0();

  return MEMORY[0x1EEE6D8C8](v27);
}

uint64_t sub_1C5CDE408()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CDE500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v14 = v10[6];
  v15 = OUTLINED_FUNCTION_38();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    v17 = OUTLINED_FUNCTION_44_0();
    v18(v17);
    sub_1C5CE30E4();
    v19 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_59_1(v19, v20);

    (*(v13 + 8))(v14, v11);
    OUTLINED_FUNCTION_4_7();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_31();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_42_1();
    v31(v30);
    v32 = sub_1C6015B50();
    v10[29] = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      v10[30] = v33;
      *v33 = v10;
      OUTLINED_FUNCTION_29_1(v33);
      OUTLINED_FUNCTION_31();

      return sub_1C5CD99E4();
    }

    else
    {
      (*(v10[7] + 8))(v10[8], v10[6]);
      OUTLINED_FUNCTION_2_9();
      sub_1C5C7626C(v35, 255, v36);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_2();
      v10[27] = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_7_7(v37);
      OUTLINED_FUNCTION_31();

      return MEMORY[0x1EEE6D8C8](v39);
    }
  }
}

uint64_t sub_1C5CDE720()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_62_1();
  swift_willThrowTypedImpl();
  v0 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1C5CDE78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_61_0();
  v13 = OUTLINED_FUNCTION_45_0();
  v14(v13);
  (*(v12 + 8))(v11, v10);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C5CDE84C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CDE944()
{
  OUTLINED_FUNCTION_20_4();

  (*(v0 + 8))(v5, v4);
  v6 = OUTLINED_FUNCTION_56_0();
  v7(v6);
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_172();

  return v8();
}

uint64_t sub_1C5CDEA40()
{
  OUTLINED_FUNCTION_24_4();

  v3 = OUTLINED_FUNCTION_56_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_45_0();
  v6(v5);
  (*(v2 + 8))(v9, v0);
  OUTLINED_FUNCTION_4_7();

  OUTLINED_FUNCTION_172();

  return v7();
}

uint64_t sub_1C5CDEB34(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1C6015B60();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1C5C67DB0(0, &qword_1EC1AAA10, MEMORY[0x1E69C4C98]);
  v2[9] = swift_task_alloc();
  sub_1C5CE305C(0, &qword_1EC1AAA18, MEMORY[0x1E695BFD0]);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_1C5CE303C(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_1C6015A70();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_1C6015DF0();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v8 = sub_1C6015D00();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CDEE24, 0, 0);
}

uint64_t sub_1C5CDEE24()
{
  sub_1C5CED1D0();
  if (!v6)
  {
    v29 = 1;
    goto LABEL_10;
  }

  v7 = [*(v0 + 32) asset];
  *(v0 + 200) = v7;
  if (!v7)
  {
LABEL_9:

    v29 = 2;
LABEL_10:
    sub_1C5CE30E4();
    OUTLINED_FUNCTION_35_2();
    *v30 = v29;
    swift_willThrow();
    OUTLINED_FUNCTION_4_7();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36_0();

    __asm { BRAA            X1, X16 }
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  *(v0 + 208) = v9;
  if (!v9)
  {

    goto LABEL_9;
  }

  [OUTLINED_FUNCTION_19_4() storeItemInt64ID];
  sub_1C6016110();
  (*(v2 + 104))(v3, *MEMORY[0x1E69C4D60], v5);
  v10 = (*(v1 + 104))(v4, *MEMORY[0x1E69C4C70]);
  OUTLINED_FUNCTION_22_4(v10, v11, v12, v13, v14, v15, v16, v17, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  v18 = OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_66_1(v18);
  OUTLINED_FUNCTION_5_7();
  sub_1C5C7626C(v19, 255, v20);
  OUTLINED_FUNCTION_64_2();

  sub_1C60164E0();
  v21 = OUTLINED_FUNCTION_252();
  v22(v21);
  OUTLINED_FUNCTION_2_9();
  sub_1C5C7626C(v23, 255, v24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 216) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_7_7(v25);
  OUTLINED_FUNCTION_36_0();

  return MEMORY[0x1EEE6D8C8](v27);
}

uint64_t sub_1C5CDF0B8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CDF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v14 = v10[6];
  v15 = OUTLINED_FUNCTION_38();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    v17 = OUTLINED_FUNCTION_44_0();
    v18(v17);
    sub_1C5CE30E4();
    v19 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_59_1(v19, v20);

    (*(v13 + 8))(v14, v11);
    OUTLINED_FUNCTION_4_7();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_31();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_42_1();
    v31(v30);
    v32 = sub_1C6015B50();
    v10[29] = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      v10[30] = v33;
      *v33 = v10;
      OUTLINED_FUNCTION_29_1(v33);
      OUTLINED_FUNCTION_31();

      return sub_1C5CDB160(v34, v35, v36);
    }

    else
    {
      (*(v10[7] + 8))(v10[8], v10[6]);
      OUTLINED_FUNCTION_2_9();
      sub_1C5C7626C(v38, 255, v39);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_2();
      v10[27] = v40;
      *v40 = v41;
      OUTLINED_FUNCTION_7_7(v40);
      OUTLINED_FUNCTION_31();

      return MEMORY[0x1EEE6D8C8](v42);
    }
  }
}

uint64_t sub_1C5CDF3D0()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5CDF4DC()
{
  OUTLINED_FUNCTION_20_4();

  (*(v0 + 8))(v6, v5);
  v7 = OUTLINED_FUNCTION_56_0();
  v8(v7);
  (*(v3 + 8))(v1);

  OUTLINED_FUNCTION_172();
  v10.n128_u64[0] = *(v2 + 256);

  return v9(v10);
}

uint64_t sub_1C5CDF5DC()
{
  v1 = v0;
  v2 = sub_1C60160C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation____lazy_storage___fullAlignmentTask;
  if (*(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation____lazy_storage___fullAlignmentTask))
  {
    v10 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation____lazy_storage___fullAlignmentTask);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_alignmentCache);
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for _MPCPlaybackEngineElapsedTimeProviding();
    v13 = swift_allocObject();

    sub_1C5CE1E80(Strong);
    v15 = sub_1C5C7626C(&qword_1EC1A8FE0, v14, type metadata accessor for _MPCPlaybackEngineElapsedTimeProviding);
    sub_1C60160B0();
    type metadata accessor for FullAlignmentTask();
    v16 = swift_allocObject();
    (*(v3 + 16))(v6, v8, v2);
    v10 = sub_1C5CE2B4C(v6, v11, v13, v15, v16);
    (*(v3 + 8))(v8, v2);
    *(v1 + v9) = v10;
  }

  return v10;
}

void *sub_1C5CDF7E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem);
  v2 = v1;
  return v1;
}

uint64_t sub_1C5CDF818(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8(a1, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v2);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C6016C30();
  OUTLINED_FUNCTION_69_0(v4);
  v5 = v1;
  v6 = sub_1C6016C00();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  OUTLINED_FUNCTION_34();
  sub_1C5CDC270();
}

uint64_t sub_1C5CDF8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C6016C10();
  v4[3] = sub_1C6016C00();
  v6 = sub_1C6016BA0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5CDF980, v6, v5);
}

uint64_t sub_1C5CDF980()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[2];
  v2 = sub_1C5CDF5DC();
  v0[6] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem);
  v0[7] = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5CDFA04, v2, 0);
}

uint64_t sub_1C5CDFA04()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[7];
  sub_1C5CD8CC8(v1);

  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1C5CDFA74, v2, v3);
}

uint64_t sub_1C5CDFA74()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CDFACC()
{
  OUTLINED_FUNCTION_248();
  v1[6] = v0;
  v1[4] = v2;
  v1[5] = v3;
  OUTLINED_FUNCTION_1_8(v4, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v5);
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5CDFB54()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_scoutingTasks;
  *(v0 + 64) = OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_scoutingTasks;
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (*(v4 + 16) && (v5 = sub_1C5CE2140(*(v0 + 40)), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 72) = v7;
  os_unfair_lock_unlock((v3 + 24));

  if (v7)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    *(v0 + 80) = v8;
    *v8 = v9;
    v8[1] = sub_1C5CDFCA0;
    v10 = MEMORY[0x1E69E63B0];

    return MEMORY[0x1EEE6DA40](v0 + 24, v7, v10);
  }

  else
  {
    v11 = sub_1C5CDF5DC();
    *(v0 + 88) = v11;

    return MEMORY[0x1EEE6DFA0](sub_1C5CDFDEC, v11, 0);
  }
}

uint64_t sub_1C5CDFCA0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5CDFD84()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_172();
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_1C5CDFDEC()
{
  OUTLINED_FUNCTION_248();
  sub_1C5CD9690();

  v0 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1C5CDFE50()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 7);
  v2 = *(v0 + 8);
  v3 = *(v0 + 6);
  v5 = *(v0 + 4);
  v4 = v0[5];
  sub_1C6016C30();
  v6 = OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  OUTLINED_FUNCTION_52_1();
  v9 = swift_allocObject();
  v9[2] = 0.0;
  v9[3] = 0.0;
  v9[4] = v4;
  *(v9 + 5) = v3;
  *(v9 + 6) = v5;
  v10 = v3;
  v11 = OUTLINED_FUNCTION_34();
  v14 = sub_1C5CDC4C0(v11, v12, v1, v13, v9);
  *(v0 + 12) = v14;
  v15 = *&v3[v2];

  os_unfair_lock_lock((v15 + 24));

  swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v15 + 16);
  sub_1C5E3628C(v4);
  *(v15 + 16) = v20;
  os_unfair_lock_unlock((v15 + 24));

  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 13) = v16;
  *v16 = v17;
  v16[1] = sub_1C5CDFFD0;
  v18 = MEMORY[0x1E69E63B0];

  return MEMORY[0x1EEE6DA40](v0 + 2, v14, v18);
}

uint64_t sub_1C5CDFFD0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5CE00B4()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_172();
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_1C5CE011C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a3;
  *(v6 + 64) = a6;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v7 = sub_1C60162D0();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_1C60160C0();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CE025C, 0, 0);
}

uint64_t sub_1C5CE025C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 14);
  v4 = *(v0 + 15);
  v5 = *(v0 + 8);
  v6 = v0[7];
  sub_1C60160B0();
  type metadata accessor for ScoutingAlignmentTask();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_255();
  v9(v8);
  *(v0 + 18) = sub_1C5CE2F20(v6, v1, v7);
  (*(v4 + 8))(v2, v3);
  v10 = *(v5 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem);
  *(v0 + 19) = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  *(v0 + 20) = v12;
  *v12 = v0;
  v12[1] = sub_1C5CE03A8;

  return (sub_1C5CDCEE8)(v10);
}

uint64_t sub_1C5CE03A8(double a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v7 = *v2;
  *v6 = *v2;
  *(v5 + 168) = v1;

  v8 = *(v4 + 152);

  if (v1)
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    **(v5 + 48) = a1;

    v12 = *(v7 + 8);

    return v12();
  }
}

uint64_t sub_1C5CE054C()
{
  OUTLINED_FUNCTION_49_1();
  v25 = v0;
  v1 = *(v0 + 168);
  sub_1C6016270();
  v2 = v1;
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = OUTLINED_FUNCTION_68_0();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    swift_getErrorValue();
    v8 = sub_1C6017930();
    v10 = sub_1C5C6AB10(v8, v9, &v24);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1C5C61000, v3, v4, "[AssetReaderImplementation]: Unable to resolve player timestamp from scouting, error: %{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_28();

    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_45_0();
    v11(v12);
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);

    v11 = *(v15 + 8);
    (v11)(v13, v14);
  }

  sub_1C6016270();
  v16 = sub_1C60162B0();
  v17 = sub_1C6016F30();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 168);
  if (v18)
  {
    v20 = *(v0 + 72);
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    *(v21 + 4) = v20;
    _os_log_impl(&dword_1C5C61000, v16, v17, "[AssetReaderImplementation]: Returning player timestamp: %{public}f", v21, 0xCu);
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  (v11)(*(v0 + 96), *(v0 + 80));
  **(v0 + 48) = *(v0 + 72);

  OUTLINED_FUNCTION_172();

  return v22();
}

uint64_t sub_1C5CE07E0(uint64_t a1, void *a2)
{
  qword_1EC1AA950 = a1;
  off_1EC1AA958 = a2;
}

uint64_t sub_1C5CE0818()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE3D8 = v4;
  return result;
}

uint64_t sub_1C5CE0908()
{
  if (qword_1EC1A9058 != -1)
  {
    swift_once();
  }

  return dword_1EC1BE3D8;
}

uint64_t sub_1C5CE0970()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C5CE09C8();
  }

  return 1;
}

void sub_1C5CE09C8()
{
  sub_1C5C67DB0(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = *&v0[OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem];
  if (v4)
  {
    v5 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    sub_1C6016C10();
    v6 = v4;
    v7 = v0;
    v8 = sub_1C6016C00();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v9[5] = v6;
    sub_1C5CDC270();
  }
}

void sub_1C5CE0B74(void *a1, void *a2)
{
  OUTLINED_FUNCTION_1_8(a1, &qword_1ED7DCEC0);
  OUTLINED_FUNCTION_13_3(v5);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v6);
  if (a2)
  {
    type metadata accessor for PodcastAVItem();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1C6016C30();
      OUTLINED_FUNCTION_69_0(v9);
      v10 = a2;
      v11 = v2;
      v12 = a1;
      v13 = sub_1C6016C00();
      OUTLINED_FUNCTION_52_1();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      v14[5] = v8;
      v14[6] = v12;
      OUTLINED_FUNCTION_34();
      sub_1C5CDC270();
    }
  }
}

uint64_t sub_1C5CE0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1C6016C10();
  v6[5] = sub_1C6016C00();
  v8 = sub_1C6016BA0();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C5CE0D30, v8, v7);
}

uint64_t sub_1C5CE0D30()
{
  OUTLINED_FUNCTION_13();
  v1 = [*(v0 + 32) queueController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 sessionID];

    v4 = sub_1C6016940();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v0 + 64) = v6;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1C5CE0E30;
  v8 = *(v0 + 24);

  return sub_1C5CE0FC0(v8, v4, v6);
}

uint64_t sub_1C5CE0E30()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_101();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C5CE0F68, v5, v4);
}

uint64_t sub_1C5CE0F68()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CE0FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1C60162D0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1C6016C10();
  v4[9] = sub_1C6016C00();
  v7 = sub_1C6016BA0();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C5CE10B8, v7, v6);
}

uint64_t sub_1C5CE10B8()
{
  OUTLINED_FUNCTION_248();
  v1 = sub_1C5CDF5DC();
  *(v0 + 96) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5CE1120, v1, 0);
}

uint64_t sub_1C5CE1120()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[12];
  v2 = *(v1 + 224);
  v0[13] = v2;
  v3 = *(v1 + 232);
  v0[14] = v3;
  sub_1C5CDAFC8(v2, v3);

  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1C5CE1198, v4, v5);
}

uint64_t sub_1C5CE1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49_1();
  v15 = *(v14 + 112);
  sub_1C5CDABE4(*(v14 + 104), v15);
  v16 = OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_sessionID;
  if (v15)
  {
    v17 = *(v14 + 32);
    v18 = (*(v14 + 40) + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_sessionID);
    v19 = v18[1];
    v20 = (v19 | v17) == 0;
    if (v19 && v17)
    {
      if (*v18 == *(v14 + 24) && v19 == v17)
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_1C6017860();
        v16 = OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_sessionID;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  *(v14 + 128) = v20 & 1;
  v22 = *(v14 + 32);
  v23 = *(v14 + 40);
  v24 = *(v14 + 16);
  v25 = (v23 + v16);
  *v25 = *(v14 + 24);
  v25[1] = v22;

  v26 = *(v23 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem);
  *(v23 + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_currentItem) = v24;

  if (v15)
  {
    v27 = *(v14 + 16);
    *(v14 + 120) = *(*(v14 + 40) + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation____lazy_storage___fullAlignmentTask);
    v28 = v27;

    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_19_3();

    return MEMORY[0x1EEE6DFA0](v29, v30, v31);
  }

  else
  {
    v33 = *(v14 + 16);
    v34 = *(*(v14 + 40) + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_scoutingTasks);

    v35 = v33;
    os_unfair_lock_lock(v34 + 6);
    OUTLINED_FUNCTION_21_4(v36, &qword_1EC1A8E10);
    sub_1C6016890();
    os_unfair_lock_unlock(v34 + 6);

    sub_1C6016270();
    v37 = v35;
    v38 = sub_1C60162B0();
    LOBYTE(v34) = sub_1C6016F30();

    v39 = os_log_type_enabled(v38, v34);
    v40 = *(v14 + 56);
    v41 = *(v14 + 64);
    v42 = *(v14 + 48);
    if (v39)
    {
      v43 = *(v14 + 16);
      OUTLINED_FUNCTION_68_0();
      a11 = OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_14_1(7.2225e-34);
      v44 = [v43 debugDescription];
      sub_1C6016940();

      v47 = OUTLINED_FUNCTION_48_0(v45, v46);

      *(v41 + 14) = v47;
      OUTLINED_FUNCTION_25_2(&dword_1C5C61000, v48, v49, "[AssetReaderImplementation]: Configured with current item: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_0(a11);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_4();

      v50 = (*(v40 + 8))(a10, v42);
    }

    else
    {

      v50 = (*(v40 + 8))(v41, v42);
    }

    if (*(v14 + 128) == 1)
    {
      sub_1C5CDF818(v50);
    }

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_19_3();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1C5CE146C()
{
  OUTLINED_FUNCTION_248();
  sub_1C5CD9764();

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1C5CE14D4, v1, v2);
}

uint64_t sub_1C5CE14D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49_1();
  v15 = *(v14 + 16);
  v16 = *(*(v14 + 40) + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation_scoutingTasks);

  os_unfair_lock_lock(v16 + 6);
  OUTLINED_FUNCTION_21_4(v17, &qword_1EC1A8E10);
  sub_1C6016890();
  os_unfair_lock_unlock(v16 + 6);

  sub_1C6016270();
  v18 = v15;
  v19 = sub_1C60162B0();
  LOBYTE(v16) = sub_1C6016F30();

  v20 = os_log_type_enabled(v19, v16);
  v21 = *(v14 + 56);
  v22 = *(v14 + 64);
  v23 = *(v14 + 48);
  if (v20)
  {
    v24 = *(v14 + 16);
    OUTLINED_FUNCTION_68_0();
    a11 = OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_14_1(7.2225e-34);
    v25 = [v24 debugDescription];
    sub_1C6016940();

    v28 = OUTLINED_FUNCTION_48_0(v26, v27);

    *(v22 + 14) = v28;
    OUTLINED_FUNCTION_25_2(&dword_1C5C61000, v29, v30, "[AssetReaderImplementation]: Configured with current item: %{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_4();

    v31 = (*(v21 + 8))(a10, v23);
  }

  else
  {

    v31 = (*(v21 + 8))(v22, v23);
  }

  if (*(v14 + 128) == 1)
  {
    sub_1C5CDF818(v31);
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_19_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C5CE1714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C60162D0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1C6016C10();
  v5[7] = sub_1C6016C00();
  v8 = sub_1C6016BA0();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C5CE1808, v8, v7);
}

uint64_t sub_1C5CE1808()
{
  OUTLINED_FUNCTION_248();
  v1 = sub_1C5CDF5DC();
  *(v0 + 80) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5CE1870, v1, 0);
}

uint64_t sub_1C5CE1870()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[10];
  v2 = *(v1 + 224);
  v0[11] = v2;
  v3 = *(v1 + 232);
  v0[12] = v3;
  sub_1C5CDAFC8(v2, v3);

  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x1EEE6DFA0](sub_1C5CE18E8, v4, v5);
}

uint64_t sub_1C5CE18E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_49_1();
  if (*(v14 + 96) < 2uLL)
  {
    sub_1C5CDABE4(*(v14 + 88), *(v14 + 96));
LABEL_3:

LABEL_12:

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_19_3();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
  }

  v15 = sub_1C5D2966C(*(v14 + 24));
  v18 = *(v14 + 88);
  v17 = *(v14 + 96);
  if (!v16)
  {

    sub_1C5CDABE4(v18, v17);
    goto LABEL_12;
  }

  if (v15 == v18 && v16 == v17)
  {
    sub_1C5CDABE4(v15, v16);
  }

  else
  {
    v20 = sub_1C6017860();
    sub_1C5CDABE4(v18, v17);

    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v30 = *(v14 + 24);
  sub_1C6016270();
  v31 = v30;
  v32 = sub_1C60162B0();
  v33 = sub_1C6016F30();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v14 + 40);
  v36 = *(v14 + 48);
  v37 = *(v14 + 32);
  if (v34)
  {
    v38 = *(v14 + 24);
    OUTLINED_FUNCTION_68_0();
    v49 = OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_14_1(7.2225e-34);
    v39 = [v38 debugDescription];
    sub_1C6016940();

    v42 = OUTLINED_FUNCTION_48_0(v40, v41);

    *(v36 + 14) = v42;
    OUTLINED_FUNCTION_25_2(&dword_1C5C61000, v43, v44, "[AssetReaderImplementation]: Item position jump detected for: %{private,mask.hash}s. Restarting alignment...");
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_4();

    (*(v35 + 8))(a10, v37);
  }

  else
  {

    (*(v35 + 8))(v36, v37);
  }

  *(v14 + 104) = *(*(v14 + 16) + OBJC_IVAR____TtC17MediaPlaybackCore25AssetReaderImplementation____lazy_storage___fullAlignmentTask);

  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6DFA0](v45, v46, v47);
}

uint64_t sub_1C5CE1B34()
{
  OUTLINED_FUNCTION_248();
  sub_1C5CD9764();

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C5CE1B9C, v1, v2);
}

uint64_t sub_1C5CE1B9C()
{
  OUTLINED_FUNCTION_248();

  sub_1C5CDF818(v0);

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5CE1CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CE1D98;

  return sub_1C5CDFACC();
}

uint64_t sub_1C5CE1D98()
{
  OUTLINED_FUNCTION_248();
  v2 = v1;
  OUTLINED_FUNCTION_8_0();
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  OUTLINED_FUNCTION_172();
  v6.n128_u64[0] = v2;

  return v5(v6);
}

uint64_t sub_1C5CE1E80(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

void *sub_1C5CE1EC0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result player];

    if (v2)
    {
      [v2 currentTime];
      v4 = v3;
      v5 = [v2 currentItem];
      [v5 durationInSeconds];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5CE1F78()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C5CE1FF4()
{
  sub_1C6016940();
  sub_1C60179F0();
  sub_1C60169F0();
  sub_1C6017A20();

  sub_1C5CE26E0();
}

unint64_t sub_1C5CE2084(uint64_t a1, uint64_t a2)
{
  sub_1C60179F0();
  sub_1C60169F0();
  v4 = sub_1C6017A20();

  return sub_1C5CE250C(a1, a2, v4);
}

unint64_t sub_1C5CE20FC(uint64_t a1)
{
  v2 = sub_1C60174A0();

  return sub_1C5CE25C0(a1, v2);
}

unint64_t sub_1C5CE2140(double a1)
{
  v2 = sub_1C60179E0();

  return sub_1C5CE2684(v2, a1);
}

uint64_t sub_1C5CE218C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[4];
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  *v6 = v7;
  v6[1] = sub_1C5CBD218;
  v8 = OUTLINED_FUNCTION_8();

  return sub_1C5CE011C(v8, v2, v4, v9, v1, v3);
}

void sub_1C5CE2248()
{
  OUTLINED_FUNCTION_55_0();
  sub_1C6015D90();
  sub_1C5C7626C(&unk_1EC1A8F20, 255, MEMORY[0x1E69C4D38]);
  OUTLINED_FUNCTION_33_0();
  sub_1C60168B0();
  sub_1C5CE2944();
}

unint64_t sub_1C5CE230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C60179F0();
  sub_1C60171F0();
  v6 = sub_1C6017A20();

  return sub_1C5CE27C8(a1, a2, a3, v6);
}

unint64_t sub_1C5CE2398(unsigned __int8 a1)
{
  sub_1C60179F0();
  MEMORY[0x1C69544E0](a1);
  v2 = sub_1C6017A20();

  return sub_1C5CE2884(a1, v2);
}

unint64_t sub_1C5CE2404(uint64_t a1)
{
  v2 = sub_1C60179E0();

  return sub_1C5CE28E4(a1, v2);
}

void sub_1C5CE2448()
{
  OUTLINED_FUNCTION_55_0();
  sub_1C60151D0();
  sub_1C5C7626C(&qword_1EC1AAA50, 255, MEMORY[0x1E69C6758]);
  OUTLINED_FUNCTION_33_0();
  sub_1C60168B0();
  sub_1C5CE2944();
}

unint64_t sub_1C5CE250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C6017860() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C5CE25C0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C5CE34A8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C6953F90](v8, a1);
    sub_1C5CE3504(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C5CE2684(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_1C5CE26E0()
{
  OUTLINED_FUNCTION_247();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_1C6016940();
    v6 = v5;
    if (v4 == sub_1C6016940() && v6 == v7)
    {

      break;
    }

    v9 = sub_1C6017860();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_237();
}

unint64_t sub_1C5CE27C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ~(-1 << *(v4 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C5CE2884(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C5CE28E4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1C5CE2944()
{
  OUTLINED_FUNCTION_247();
  v19 = v1;
  v20 = v2;
  v18 = v3;
  v5 = v4;
  v16 = v6;
  v8 = v7(0);
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v21 = v0 + 64;
  v17 = v0;
  v13 = ~(-1 << *(v0 + 32));
  for (i = v5 & v13; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v17 + 48) + *(v9 + 72) * i, v8);
    sub_1C5C7626C(v18, 255, v19);
    v15 = sub_1C60168F0();
    (*(v9 + 8))(v12, v8);
    if (v15)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CE2ACC(uint64_t a1, uint64_t a2)
{
  sub_1C5C67DB0(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5CE2B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C60160C0();
  v14 = v10;
  v15 = MEMORY[0x1E69C4DD0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, a1, v10);
  swift_defaultActor_initialize();
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  sub_1C5C6BEFC(&v13, a5 + 112);
  *(a5 + 160) = a4;
  *(a5 + 168) = a2;
  *(a5 + 152) = a3;
  return a5;
}

uint64_t sub_1C5CE2C10(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C5CE2D04;

  return v5(v2 + 16);
}

uint64_t sub_1C5CE2D04()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_101();
  *v7 = v6;

  *v5 = *(v2 + 16);
  OUTLINED_FUNCTION_172();

  return v8();
}

uint64_t sub_1C5CE2E00()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5CE2E90()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5CE2F20(double a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1C60160C0();
  v9 = MEMORY[0x1E69C4DD0];
  __swift_allocate_boxed_opaque_existential_0(&v7);
  OUTLINED_FUNCTION_50_0();
  (*(v5 + 32))();
  swift_defaultActor_initialize();
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  sub_1C5C6BEFC(&v7, a3 + 112);
  *(a3 + 152) = a1;
  return a3;
}

void sub_1C5CE2FCC()
{
  if (!qword_1EC1AAA20)
  {
    sub_1C6015B60();
    sub_1C5CB5808();
    v0 = sub_1C6016470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAA20);
    }
  }
}

void sub_1C5CE305C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1C5CE2FCC();
    OUTLINED_FUNCTION_5_7();
    sub_1C5C7626C(v5, 255, v6);
    v7 = OUTLINED_FUNCTION_33_0();
    v8 = a3(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C5CE30E4()
{
  result = qword_1EC1AAA40;
  if (!qword_1EC1AAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAA40);
  }

  return result;
}

uint64_t sub_1C5CE3138()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  *v4 = v5;
  v4[1] = sub_1C5CBCD24;
  v6 = OUTLINED_FUNCTION_8();

  return sub_1C5CDF8E8(v6, v7, v1, v2);
}

uint64_t sub_1C5CE31D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C5CE32C8;

  return v5(v2 + 32);
}

uint64_t sub_1C5CE32C8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_101();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_172();

  return v8();
}

uint64_t sub_1C5CE33C4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

void sub_1C5CE3454()
{
  if (!qword_1EC1A9208)
  {
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9208);
    }
  }
}

uint64_t sub_1C5CE3558()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  *v6 = v7;
  v6[1] = sub_1C5CBD218;
  v8 = OUTLINED_FUNCTION_8();

  return sub_1C5CE0C94(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1C5CE361C()
{
  OUTLINED_FUNCTION_51_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  *v5 = v6;
  v5[1] = sub_1C5CBD218;
  v7 = OUTLINED_FUNCTION_8();

  return sub_1C5CE1714(v7, v8, v1, v3, v2);
}

void OUTLINED_FUNCTION_20_4()
{
  v2 = *(v0 + 200);
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_0()
{
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v2);

  return MEMORY[0x1EEE2E550](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_60_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_64_2()
{

  JUMPOUT(0x1C6953090);
}

void OUTLINED_FUNCTION_66_1(uint64_t a1)
{
  *(v1 + 16) = a1;

  sub_1C5CE2FCC();
}

uint64_t sub_1C5CE3880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  type metadata accessor for AsyncAssetReaderSequence.AsyncIterator(0);
  v4 = swift_task_alloc();
  v3[17] = v4;
  sub_1C5CE4634(0, &qword_1EC1AAAA0, MEMORY[0x1E69E87B8]);
  *v4 = v3;
  v4[1] = sub_1C5CE3960;

  return MEMORY[0x1EEE6DB98](v3 + 2, v5);
}

uint64_t sub_1C5CE3960()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_1C5CE3AC8;
  }

  else
  {
    v7 = sub_1C5CE3A60;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C5CE3A60()
{
  OUTLINED_FUNCTION_248();
  memcpy(*(v0 + 112), (v0 + 16), 0x54uLL);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5CE3AC8()
{
  OUTLINED_FUNCTION_248();
  if (*(v0 + 120))
  {
    swift_getObjectType();
    v1 = sub_1C6016BA0();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1C5CE3B50, v1, v3);
}

uint64_t sub_1C5CE3B50()
{
  OUTLINED_FUNCTION_248();
  v0[13] = v0[18];
  sub_1C5CB5808();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1C5CE3BD0(uint64_t a1)
{
  *(v1 + 104) = a1;
  type metadata accessor for AsyncAssetReaderSequence.AsyncIterator(0);
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  OUTLINED_FUNCTION_0_12(v2, &qword_1EC1AAAA0);
  *v2 = v1;
  v2[1] = sub_1C5CE3C94;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_1C5CE3C94()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C5CE3DFC;
  }

  else
  {
    v7 = sub_1C5CE3D94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C5CE3D94()
{
  OUTLINED_FUNCTION_248();
  memcpy(*(v0 + 104), (v0 + 16), 0x54uLL);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5CE3E14(uint64_t a1)
{
  *(v1 + 104) = a1;
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  *v2 = v1;
  v2[1] = sub_1C5CE3EAC;

  return sub_1C5CE3BD0(v1 + 16);
}

uint64_t sub_1C5CE3EAC()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;

  if (!v0)
  {
    memcpy(*(v3 + 104), (v3 + 16), 0x54uLL);
  }

  OUTLINED_FUNCTION_5_8();

  return v7();
}

uint64_t sub_1C5CE3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C5CE4074;

  return sub_1C5CE3880(a1, a2, a3);
}

uint64_t sub_1C5CE4074()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_5_8();

  return v7();
}

uint64_t sub_1C5CE4174@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AsyncAssetReaderSequence.AsyncIterator(0);
  OUTLINED_FUNCTION_1_9(v3, &qword_1EC1AAA90);
  sub_1C6016CE0();
  *a1 = v1;
}

uint64_t sub_1C5CE41E4()
{
  if (*(v0 + OBJC_IVAR____TtC17MediaPlaybackCore24AsyncAssetReaderSequence_task))
  {
    sub_1C5CB5808();

    sub_1C6016C70();
  }

  v1 = OBJC_IVAR____TtC17MediaPlaybackCore24AsyncAssetReaderSequence_continuation;
  sub_1C5CE4634(0, &qword_1EC1AAA88, MEMORY[0x1E69E87A0]);
  OUTLINED_FUNCTION_6_1();
  v3 = (*(v2 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC17MediaPlaybackCore24AsyncAssetReaderSequence_stream;
  OUTLINED_FUNCTION_1_9(v3, &qword_1EC1AAA90);
  OUTLINED_FUNCTION_6_1();
  (*(v5 + 8))(v0 + v4);

  return v0;
}

uint64_t sub_1C5CE42EC()
{
  sub_1C5CE41E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C5CE436C()
{
  sub_1C5CE4634(319, &qword_1EC1AAA88, MEMORY[0x1E69E87A0]);
  if (v0 <= 0x3F)
  {
    sub_1C5CE4634(319, &qword_1EC1AAA90, MEMORY[0x1E69E87C8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C5CE4494(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 84))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5CE44D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 84) = 1;
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

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5CE4540()
{
  result = qword_1EC1AAA98;
  if (!qword_1EC1AAA98)
  {
    type metadata accessor for AsyncAssetReaderSequence.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAA98);
  }

  return result;
}

uint64_t sub_1C5CE45B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5CE45F0@<X0>(void *a1@<X8>)
{
  sub_1C5CE4174(a1);
}

void sub_1C5CE4634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1C5CB5808();
    v7 = a3(a1, &type metadata for AsyncAssetReaderSequence.Element, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C5CE46CC()
{
  type metadata accessor for AsyncAssetReaderSequence(319);
  if (v0 <= 0x3F)
  {
    sub_1C5CE4634(319, &qword_1EC1AAAA0, MEMORY[0x1E69E87B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5CE47DC()
{
  v1 = OUTLINED_FUNCTION_3_8();
  v2 = (*(v0 + 8))(v1, v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____MPCPodcastAVItem_transcriptAlignments);

  return v4;
}

uint64_t sub_1C5CE4980(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5CE49A4, 0, 0);
}

uint64_t sub_1C5CE49A4()
{
  v1 = *(v0[4] + OBJC_IVAR____MPCTranscriptAlignmentController_platformImplementation + 8);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_4_8(v1);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1C5CE4ACC;
  v5.n128_u64[0] = v0[2];
  v6.n128_u64[0] = v0[3];

  return v8(ObjectType, v1, v5, v6);
}

uint64_t sub_1C5CE4ACC()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v4.n128_f64[0] = OUTLINED_FUNCTION_2_10();

  return v3(v4);
}

uint64_t sub_1C5CE4C3C(const void *a1, void *a2, double a3, double a4)
{
  v4[2] = a2;
  v4[3] = _Block_copy(a1);
  a2;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1C5CE4CFC;

  return sub_1C5CE4980(a3, a4);
}

uint64_t sub_1C5CE4CFC()
{
  OUTLINED_FUNCTION_1_10();
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_101();
  *v6 = v5;

  v3[2](v3, v1);
  _Block_release(v3);
  v7 = *(v5 + 8);

  return v7();
}

id TranscriptAlignmentController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptAlignmentController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptAlignmentController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of TranscriptAlignmentController.resolve(with:referenceTime:)()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4.n128_f64[0] = OUTLINED_FUNCTION_5_9(v3);

  return v6(v4);
}

uint64_t sub_1C5CE5114()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v4.n128_f64[0] = OUTLINED_FUNCTION_2_10();

  return v3(v4);
}

void *sub_1C5CE51F4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC17MediaPlaybackCore29TranscriptAlignmentController13Unimplemented_currentItem);
  v2 = v1;
  return v1;
}

uint64_t sub_1C5CE524C()
{
  v0 = qword_1EC1AAAC0;

  return v0;
}

uint64_t sub_1C5CE52CC(uint64_t a1, void *a2)
{
  qword_1EC1AAAC0 = a1;
  off_1EC1AAAC8 = a2;
}

uint64_t sub_1C5CE5304()
{
  v0 = sub_1C6016650();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1C6016640();
  result = (*(v1 + 8))(v3, v0);
  dword_1EC1BE4C0 = v4;
  return result;
}

uint64_t sub_1C5CE53F4()
{
  if (qword_1EC1A9750 != -1)
  {
    swift_once();
  }

  return dword_1EC1BE4C0;
}

id sub_1C5CE5464()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCC17MediaPlaybackCore29TranscriptAlignmentController13Unimplemented_currentItem] = 0;
  v0[OBJC_IVAR____TtCC17MediaPlaybackCore29TranscriptAlignmentController13Unimplemented_isEnabled] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1C5CE5514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CE5114;

  return sub_1C5CE5234();
}

uint64_t sub_1C5CE55A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C5CE5660;

  return sub_1C5CE4C3C(v4, v5, v2, v3);
}

uint64_t sub_1C5CE5660()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1C5CE5748()
{
  result = qword_1EC1AAC10;
  if (!qword_1EC1AAC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1AAC10);
  }

  return result;
}

uint64_t sub_1C5CE57B4(void *a1)
{
  v1 = a1;
  v2 = MPAVItem.podcastIsSubscribable.getter();

  return v2 & 1;
}

uint64_t MPAVItem.podcastIsSubscribable.getter()
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {
    v2 = v0;
    v3 = sub_1C5CF00A8();

    return v3 & 1;
  }

  return result;
}

id sub_1C5CE5884(SEL *a1)
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {
    result = [v1 modelGenericObject];
    if (result)
    {
      v4 = result;
      v5 = [result podcastEpisode];

      if (!v5)
      {
        return 0;
      }

      result = sub_1C5CE5E28(v5, a1);
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1C5CE593C(void *a1)
{
  v1 = a1;
  v2 = MPAVItem.podcastsPreferredPlaybackRate.getter();

  return v2;
}

uint64_t MPAVItem.podcastsPreferredPlaybackRate.getter()
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {
    return sub_1C6016D20();
  }

  return result;
}

id sub_1C5CE59B8(void *a1)
{
  v1 = a1;
  MPAVItem.playbackSettingsSource.getter();

  v2 = sub_1C6016900();

  return v2;
}

uint64_t MPAVItem.playbackSettingsSource.getter()
{
  type metadata accessor for PodcastAVItem();
  v1 = OUTLINED_FUNCTION_0();
  if (!v1)
  {
    return 4271950;
  }

  v2 = v1;
  v3 = v0;
  v4 = [v2 playbackSettingsSource];
  v5 = sub_1C6016940();

  return v5;
}

id sub_1C5CE5AF0(SEL *a1)
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {
    result = [v1 modelGenericObject];
    if (result)
    {
      v4 = result;
      v5 = [result podcastEpisode];

      if (v5)
      {
        return sub_1C5CE5E28(v5, a1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id MPAVItem.podcastContentGUID.getter()
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {
    result = [v0 modelGenericObject];
    if (result)
    {
      v2 = result;
      v3 = [result podcastEpisode];

      if (v3)
      {
        v4 = [v3 identifiers];

        return sub_1C5CE5E28(v4, &selRef_vendorID);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C5CE5C90(SEL *a1)
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {
    return sub_1C5CD41FC(v1, a1);
  }

  return result;
}

id sub_1C5CE5CD4(void *a1)
{
  v1 = a1;
  v2 = MPAVItem.musicSubscriptionInformation.getter();

  if (v2)
  {
    sub_1C5CE5EF4();
    v3 = sub_1C6016AF0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MPAVItem.musicSubscriptionInformation.getter()
{
  type metadata accessor for PodcastAVItem();
  result = OUTLINED_FUNCTION_0();
  if (result)
  {

    return sub_1C5CE5E94(v0);
  }

  return result;
}

id sub_1C5CE5D9C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1C6016900();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C5CE5E28(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C6016940();

  return v4;
}

uint64_t sub_1C5CE5E94(void *a1)
{
  v1 = [a1 musicSubscriptionInformation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C5CE5EF4();
  v3 = sub_1C6016B10();

  return v3;
}

void sub_1C5CE5EF4()
{
  if (!qword_1EC1A9490)
  {
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9490);
    }
  }
}

uint64_t sub_1C5CE5F58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5CE5FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_defaultActor_initialize();
  *(v7 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCache) = 0;
  v14 = (v7 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCacheObserverToken);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = sub_1C6014F20();
  OUTLINED_FUNCTION_41_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = *(v15 - 8);
  (*(v19 + 16))(v7 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_url, a1, v15);
  v20 = (v7 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_playerID);
  *v20 = a2;
  v20[1] = a3;
  v21 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_mediaItem;
  v22 = sub_1C6015770();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v7 + v21, a4, v22);
  v24 = (v7 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_onServiceIdentifierChanged);
  *v24 = a5;
  v24[1] = a6;
  LOBYTE(a6) = sub_1C6014E20();
  (*(v23 + 8))(a4, v22);
  (*(v19 + 8))(a1, v15);
  v25 = 3;
  if ((a6 & 1) == 0)
  {
    v25 = 0;
  }

  *(v7 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_assetLocation) = v25;
  return v7;
}

uint64_t sub_1C5CE6170()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCacheObserverToken;
  swift_beginAccess();
  sub_1C5CC5960(v0 + v2, &v18);
  if (*(&v19 + 1))
  {
    sub_1C5C70758(&v18, &v20);
    if (qword_1EC1A8EA8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v3 = sub_1C60162D0();
    __swift_project_value_buffer(v3, qword_1EC1BE388);
    v4 = sub_1C60162B0();
    v5 = sub_1C6016F30();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C5C61000, v4, v5, "Removing observer for token", v6, 2u);
      OUTLINED_FUNCTION_4();
    }

    v7 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v20, v21);
    [v7 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v20);
    v18 = 0u;
    v19 = 0u;
    swift_beginAccess();
    sub_1C5CD8498(&v18, v1 + v2);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    sub_1C5CEA938(&v18, v8);
  }

  v9 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_6_1();
  (*(v10 + 8))(v1 + v9);

  v11 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_mediaItem;
  sub_1C6015770();
  OUTLINED_FUNCTION_6_1();
  (*(v12 + 8))(v1 + v11);

  OUTLINED_FUNCTION_18_3();
  sub_1C5CEA938(v1 + v2, v13);
  OUTLINED_FUNCTION_0_13();
  sub_1C5CEAD40(v1 + v14, v15, v16, MEMORY[0x1E69E6720], sub_1C5CE9A0C);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1C5CE6424()
{
  sub_1C5CE6170();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for PodcastAssetFactory()
{
  result = qword_1EC1A90C0;
  if (!qword_1EC1A90C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5CE64A4()
{
  sub_1C6014F20();
  if (v0 <= 0x3F)
  {
    sub_1C6015770();
    if (v1 <= 0x3F)
    {
      sub_1C5CE9A0C(319, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1C5CE6618()
{
  OUTLINED_FUNCTION_248();
  v1[18] = v0;
  OUTLINED_FUNCTION_0_13();
  sub_1C5CE9A0C(0, v2, v3, MEMORY[0x1E69E6720]);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = sub_1C6014F20();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CE6754()
{
  v62 = v0;
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_url;
  if (sub_1C6014E20() & 1) != 0 || (sub_1C6014E30() & 1) != 0 || (sub_1C6014E40())
  {
    v3 = swift_task_alloc();
    v0[33] = v3;
    *v3 = v0;
    v4 = sub_1C5CE72C8;
LABEL_5:
    v3[1] = v4;
    v5 = v1 + v2;
    goto LABEL_6;
  }

  v7 = v0[27];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[18];
  sub_1C6015E90();
  v11 = *(v9 + 16);
  v11(v7, v1 + v2, v8);
  v12 = sub_1C6015E80();
  v0[28] = v12;
  v13 = *(v10 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCache);
  *(v10 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCache) = v12;
  v14 = v12;

  v16 = v0[21];
  v15 = v0[22];
  if (!v12)
  {
    OUTLINED_FUNCTION_41_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
    goto LABEL_13;
  }

  v17 = v14;
  sub_1C6015E40();

  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_13();
    sub_1C5CEAD40(v23, v24, v25, MEMORY[0x1E69E6720], sub_1C5CE9A0C);
    if (v12)
    {
      v26 = v14;
      sub_1C6015E50();
      v34 = v0[25];
      v35 = v0[22];
      v36 = v0[23];
      v37 = v0[20];

      __swift_storeEnumTagSinglePayload(v37, 0, 1, v35);
      v60 = *(v36 + 32);
      v60(v34, v37, v35);
      if (qword_1EC1A8EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v38 = v0[24];
      v39 = v0[25];
      v40 = v0[22];
      v41 = sub_1C60162D0();
      __swift_project_value_buffer(v41, qword_1EC1BE388);
      v11(v38, v39, v40);
      v42 = sub_1C60162B0();
      v43 = sub_1C6016F30();
      v44 = os_log_type_enabled(v42, v43);
      v46 = v0[23];
      v45 = v0[24];
      v47 = v0[22];
      if (v44)
      {
        buf = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61 = v59;
        *buf = 136380675;
        OUTLINED_FUNCTION_17_3();
        sub_1C5CEB180(v48, v49);
        v50 = sub_1C60177D0();
        v52 = v51;
        (*(v46 + 8))(v45, v47);
        v53 = sub_1C5C6AB10(v50, v52, &v61);

        *(buf + 4) = v53;
        _os_log_impl(&dword_1C5C61000, v42, v43, "Setting stream cache location to %{private}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      else
      {

        (*(v46 + 8))(v45, v47);
      }

      v54 = v0[22];
      v56 = v0[18];
      v55 = v0[19];
      v60(v55, v0[25], v54);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
      v57 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCacheFileURL;
      swift_beginAccess();
      sub_1C5CE9978(v55, v56 + v57);
      swift_endAccess();
    }

    else
    {
      v27 = v0[20];
      OUTLINED_FUNCTION_41_0();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      OUTLINED_FUNCTION_0_13();
      sub_1C5CEAD40(v27, v32, v33, MEMORY[0x1E69E6720], sub_1C5CE9A0C);
    }

    v3 = swift_task_alloc();
    v0[31] = v3;
    *v3 = v0;
    v4 = sub_1C5CE6FA4;
    goto LABEL_5;
  }

  v18 = v0[18];
  (*(v0[23] + 32))(v0[26], v0[21], v0[22]);
  *(v18 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_assetLocation) = 1;
  v19 = swift_task_alloc();
  v0[29] = v19;
  *v19 = v0;
  v19[1] = sub_1C5CE6DE0;
  v5 = v0[26];
LABEL_6:

  return sub_1C5CE7498(v5);
}

uint64_t sub_1C5CE6DE0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v6 + 240) = v5;

  v7 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CE6ED8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_43_3();

  v4 = OUTLINED_FUNCTION_30_3();

  return v5(v4);
}

uint64_t sub_1C5CE6FA4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v6 + 256) = v5;

  v7 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CE709C()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[18];
  v4 = [objc_opt_self() defaultCenter];
  v5 = *MEMORY[0x1E6987B68];
  v6 = objc_opt_self();
  v7 = v1;
  v8 = [v6 mainQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v0[6] = sub_1C5CE988C;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C5CE7BCC;
  v0[5] = &block_descriptor_8;
  v10 = _Block_copy(v0 + 2);
  v11 = v2;

  v12 = [v4 addObserverForName:v5 object:v7 queue:v8 usingBlock:v10];
  _Block_release(v10);

  v0[11] = swift_getObjectType();
  v0[8] = v12;
  v13 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCacheObserverToken;
  swift_beginAccess();
  sub_1C5CD8498((v0 + 8), v3 + v13);
  swift_endAccess();
  OUTLINED_FUNCTION_43_3();

  v14 = OUTLINED_FUNCTION_30_3();

  return v15(v14);
}

uint64_t sub_1C5CE72C8(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_1C5CE7498(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C6014F20();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_1C5CE7590;

  return sub_1C5CE82D4();
}

uint64_t sub_1C5CE7590()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v6 + 72) = v5;

  v7 = OUTLINED_FUNCTION_20_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5CE7688()
{
  v32 = v0;
  if (qword_1EC1A8EA8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = sub_1C60162D0();
  __swift_project_value_buffer(v7, qword_1EC1BE388);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);

  v9 = sub_1C60162B0();
  v10 = sub_1C6016F30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[7];
    v30 = v8;
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136380931;
    OUTLINED_FUNCTION_17_3();
    sub_1C5CEB180(v15, v16);
    sub_1C60177D0();
    OUTLINED_FUNCTION_290();
    (*(v12 + 8))(v11, v13);
    v17 = sub_1C5C6AB10(v1, v2, &v31);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = sub_1C6016870();
    v20 = sub_1C5C6AB10(v18, v19, &v31);

    *(v14 + 14) = v20;
    v8 = v30;
    _os_log_impl(&dword_1C5C61000, v9, v10, "Creating asset from URL %{private}s with options: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];

    (*(v23 + 8))(v21, v22);
  }

  v24 = v0[9];
  v25 = v0[6];
  v8(v25, v0[2], v0[4]);
  v26 = objc_allocWithZone(MEMORY[0x1E6988168]);
  sub_1C5CE989C(v25, v24);

  v27 = OUTLINED_FUNCTION_30_3();

  return v28(v27);
}

void sub_1C5CE7958(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C6015E70();
  }

  if (qword_1EC1A8EA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1BE388);
  oslog = sub_1C60162B0();
  v3 = sub_1C6016F30();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5C61000, oslog, v3, "Stream written to disk successfully", v4, 2u);
    MEMORY[0x1C6956920](v4, -1, -1);
  }
}

uint64_t sub_1C5CE7BCC(uint64_t a1)
{
  v2 = sub_1C6014C70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1C6014C30();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_1C5CE7CC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCache);
  if (v1)
  {
    v2 = v1;
    sub_1C6015E60();
  }
}

uint64_t sub_1C5CE7D0C()
{
  sub_1C5CE9A0C(0, &qword_1EC1A8EC0, MEMORY[0x1E69C4E48], MEMORY[0x1E69E6720]);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  if (*(v0 + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_playerID + 8))
  {
    v7 = sub_1C6016900();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() playerServiceNameWithPlayerID_];

  v9 = sub_1C6016940();
  v11 = v10;

  sub_1C6015760();
  v12 = sub_1C60161F0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) != 1)
  {
    sub_1C5CEAD94(v6, v4, &qword_1EC1A8EC0, MEMORY[0x1E69C4E48]);
    v14 = *(v12 - 8);
    v15 = (*(v14 + 88))(v4, v12);
    if (v15 == *MEMORY[0x1E69C4E40])
    {
      v19 = v9;
      v20 = v11;
      v16 = 0x616E72657478652ELL;
      v17 = 0xE90000000000006CLL;
    }

    else
    {
      if (v15 == *MEMORY[0x1E69C4E30])
      {
        v19 = v9;
        v20 = v11;
        v16 = 0x53554C502ELL;
      }

      else
      {
        if (v15 != *MEMORY[0x1E69C4E38])
        {

          (*(v14 + 8))(v4, v12);
          goto LABEL_6;
        }

        v19 = v9;
        v20 = v11;
        v16 = 0x425553502ELL;
      }

      v17 = 0xE500000000000000;
    }

    MEMORY[0x1C69534E0](v16, v17);
    v13 = v19;
    goto LABEL_15;
  }

LABEL_6:
  v13 = 0;
LABEL_15:
  sub_1C5CEAD40(v6, &qword_1EC1A8EC0, MEMORY[0x1E69C4E48], MEMORY[0x1E69E6720], sub_1C5CE9A0C);
  return v13;
}

uint64_t sub_1C5CE8000()
{

  v1 = sub_1C60169A0();
  v3 = v2;
  sub_1C5C64D74(0, &unk_1EC1A8B50);
  v4 = [swift_getObjCClassFromMetadata() identityKind];
  v5 = objc_allocWithZone(MEMORY[0x1E6970550]);
  return sub_1C5E1ED90(v1, v3, v4, sub_1C5CEAD30, v0);
}

uint64_t sub_1C5CE80E4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C5CEAD38;
  *(v4 + 24) = a2;
  v7[4] = sub_1C5CB5C00;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C5CE5F58;
  v7[3] = &block_descriptor_27;
  v5 = _Block_copy(v7);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v5);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_1C5CE8224(void *a1)
{
  v2 = sub_1C6015540();
  if ((v3 & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    if (v4)
    {
      v5 = v4;
      sub_1C60179C0();
    }
  }

  return [a1 setAdamID_];
}

uint64_t sub_1C5CE82D4()
{
  v1[56] = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1C5CE9A0C(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v1[57] = swift_task_alloc();
  sub_1C5CE9A0C(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], v2);
  v1[58] = swift_task_alloc();
  v3 = sub_1C6014F20();
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5CE8440, v0, 0);
}

uint64_t sub_1C5CE8440()
{
  v3 = _CFNetworkCopyDefaultUserAgentString();
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA40](v3, v4, v5);
  }

  v6 = v3;
  v62 = sub_1C6016940();
  v8 = v7;

  v9 = MEMORY[0x1E69E6158];
  v10 = sub_1C6016880();
  v11 = sub_1C5CE7D0C();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    (*(*(v0 + 448) + OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_onServiceIdentifierChanged))();
    sub_1C6016940();
    OUTLINED_FUNCTION_290();
    *(v0 + 360) = v9;
    *(v0 + 336) = v13;
    *(v0 + 344) = v14;
    sub_1C5C70758((v0 + 336), (v0 + 368));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C5E361A8(v0 + 368, v1, v2);
  }

  v15 = objc_opt_self();
  v16 = sub_1C5CE8000();
  v17 = [v16 universalStore];

  v18 = [v15 rtcIdentifiersFromUniversalIdentifiers_];
  swift_unknownObjectRelease();
  sub_1C6016850();

  sub_1C5CE9A0C(0, &qword_1EC1A88E0, sub_1C5CE9A70, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = sub_1C6016940();
  *(inited + 40) = v20;
  v21 = HIBYTE(v8) & 0xF;
  v22 = v62;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v21 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v23 = MEMORY[0x1E69E6158];
  }

  else
  {

    v22 = 0;
    v8 = 0;
    v23 = 0;
    *(inited + 64) = 0;
  }

  v25 = *(v0 + 464);
  v24 = *(v0 + 472);
  v26 = *(v0 + 448);
  *(inited + 48) = v22;
  *(inited + 56) = v8;
  *(inited + 72) = v23;
  *(inited + 80) = sub_1C6016940();
  *(inited + 88) = v27;
  sub_1C5CEA98C(0, &qword_1EC1A9490, MEMORY[0x1E69E5E28]);
  *(inited + 120) = v28;
  *(inited + 96) = v10;
  sub_1C5CBCFA8();
  *(v0 + 496) = v29;
  sub_1C6016880();
  v30 = sub_1C6016940();
  v32 = v31;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_40_1();
  sub_1C5E36380(v33, v30, v32);

  *(v0 + 504) = v63;
  v34 = OBJC_IVAR____TtC17MediaPlaybackCore19PodcastAssetFactory_streamCacheFileURL;
  swift_beginAccess();
  sub_1C5CEAD94(v26 + v34, v25, &unk_1ED7E01F0, MEMORY[0x1E6968FB0]);
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    v35 = *(v0 + 456);
    OUTLINED_FUNCTION_0_13();
    v36 = MEMORY[0x1E69E6720];
    sub_1C5CEAD40(v37, v38, v39, MEMORY[0x1E69E6720], sub_1C5CE9A0C);
    *(v0 + 512) = sub_1C6016940();
    *(v0 + 520) = v40;
    sub_1C6016C30();
    OUTLINED_FUNCTION_41_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    OUTLINED_FUNCTION_58();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    v46 = sub_1C5CE8F88(0, 0, v35, &unk_1C6036570, v45);
    *(v0 + 528) = v46;
    OUTLINED_FUNCTION_19_5();
    sub_1C5CEAD40(v35, v47, v48, v36, sub_1C5CE9A0C);
    v49 = swift_task_alloc();
    *(v0 + 536) = v49;
    sub_1C5CBCFFC(0, &qword_1EC1A8C80, &qword_1EC1A8C88);
    v5 = v50;
    *v49 = v0;
    v49[1] = sub_1C5CE8B70;
    v3 = v0 + 440;
    v4 = v46;

    return MEMORY[0x1EEE6DA40](v3, v4, v5);
  }

  v52 = *(v0 + 480);
  v51 = *(v0 + 488);
  v53 = *(v0 + 472);
  (*(v52 + 32))(v51, *(v0 + 464), v53);
  v54 = sub_1C6016940();
  v56 = v55;
  *(v0 + 200) = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  (*(v52 + 16))(boxed_opaque_existential_0, v51, v53);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_40_1();
  sub_1C5E36380(v58, v54, v56);

  (*(v52 + 8))(v51, v53);
  v59 = OUTLINED_FUNCTION_42_2();

  v60 = *(v0 + 8);

  return v60(v59);
}

uint64_t sub_1C5CE8B70()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5CE8C8C, v2, 0);
}

uint64_t sub_1C5CE8C8C()
{
  v19 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  if (v1)
  {
    v5 = sub_1C5C64D74(0, &qword_1EC1A8C88);
    v15 = v1;
    v16 = *(v0 + 424);
    v17 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = v3;
    sub_1C5E36380(&v15, v4, v2);
  }

  else
  {
    v6 = sub_1C5CE2084(*(v0 + 512), *(v0 + 520));
    if (v7)
    {
      v8 = v6;
      v9 = *(v0 + 504);
      swift_isUniquelyReferenced_nonNull_native();
      v15 = v9;
      sub_1C5CEAE14(0, &qword_1EC1A8970, sub_1C5CBCFA8, MEMORY[0x1E69E6DC8]);
      sub_1C6017660();

      v10 = (*(v9 + 56) + 32 * v8);
      v11 = v10[1];
      *(v0 + 144) = *v10;
      *(v0 + 160) = v11;
      sub_1C6017680();
    }

    else
    {
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      *(v0 + 168) = 1;
    }

    sub_1C5CEAD40(v0 + 144, &unk_1EC1AAAF0, sub_1C5CBCFA8, MEMORY[0x1E69E6720], sub_1C5CE9A0C);
  }

  v12 = OUTLINED_FUNCTION_42_2();

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_1C5CE8ED4()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 16);
  sub_1C5C64D74(0, &unk_1EC1A8C40);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 assetCache];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C5CE8F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1C5CE9A0C(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1C5CEAD94(a3, v25 - v11, &qword_1ED7DCEC0, v9);
  v13 = sub_1C6016C30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C5CEAD40(v12, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1C5CE9A0C);
  }

  else
  {
    sub_1C6016C20();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C6016BA0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C60169C0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1C5CBCFFC(0, &qword_1EC1A8C80, &qword_1EC1A8C88);

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

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1C5CBCFFC(0, &qword_1EC1A8C80, &qword_1EC1A8C88);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C5CE92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1C5CE9A0C(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  sub_1C5CEAD94(a3, v27 - v11, &qword_1ED7DCEC0, v9);
  v13 = sub_1C6016C30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_19_5();
    sub_1C5CEAD40(v12, v15, v16, MEMORY[0x1E69E6720], sub_1C5CE9A0C);
  }

  else
  {
    sub_1C6016C20();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C6016BA0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C60169C0() + 32;
      OUTLINED_FUNCTION_58();
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_58();
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C5CE95A8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
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
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1C5CC5960(*(a1 + 56) + 32 * v12, v36);
    *&v35 = v15;
    *(&v35 + 1) = v14;
    v32 = v35;
    v33 = v36[0];
    v34 = v36[1];
    sub_1C5CC5960(&v33, &v26);
    if (v27)
    {
      sub_1C5C70758(&v26, v31);
      v29 = v32;
      v30[0] = v33;
      v30[1] = v34;
      sub_1C5C70758(v31, v28);
      if (*(v2 + 24) <= *(v2 + 16))
      {

        sub_1C5CE9CC8();
        v2 = v37;
      }

      else
      {
      }

      v16 = v29;
      sub_1C60179F0();
      sub_1C60169F0();
      result = sub_1C6017A20();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v2 + 48) + 16 * v21) = v16;
      sub_1C5C70758(v28, (*(v2 + 56) + 32 * v21));
      ++*(v2 + 16);
      result = sub_1C5CEA938(v30, sub_1C5CBCFA8);
    }

    else
    {

      sub_1C5CEA938(&v32, sub_1C5CEA8CC);
      result = sub_1C5CEA938(&v26, sub_1C5CBCFA8);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_1C5CE989C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C6014EA0();
  if (a2)
  {
    v7 = sub_1C6016840();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 initWithURL:v6 options:v7];

  v9 = sub_1C6014F20();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t sub_1C5CE9978(uint64_t a1, uint64_t a2)
{
  sub_1C5CE9A0C(0, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5CE9A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5CE9A70()
{
  if (!qword_1EC1A8DC0)
  {
    sub_1C5CBCFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8DC0);
    }
  }
}

void sub_1C5CE9AD8()
{
  OUTLINED_FUNCTION_11_3();
  sub_1C5CEB034();
  OUTLINED_FUNCTION_32_1();
  v25 = v1;
  v3 = OUTLINED_FUNCTION_44_1();
  if (!v2[2])
  {
LABEL_28:

    *v0 = v3;
    return;
  }

  v24 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_1_11();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_38_2();
  if (!v8)
  {
LABEL_4:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v10;
      if (v5[v4])
      {
        OUTLINED_FUNCTION_9_2();
        v8 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_12_4();
      if (v22 != v23)
      {
        OUTLINED_FUNCTION_10_5(v21);
      }

      else
      {
        OUTLINED_FUNCTION_14_7(v21);
      }

      v2[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_37_0();
LABEL_9:
    v13 = v9 | (v4 << 6);
    v14 = v2[7];
    v15 = *(v2[6] + 8 * v13);
    v16 = (v14 + 32 * v13);
    if (v25)
    {
      sub_1C5C70758(v16, v26);
    }

    else
    {
      sub_1C5C653C8(v16, v26);
      v17 = v15;
    }

    sub_1C6016940();
    sub_1C60179F0();
    sub_1C60169F0();
    sub_1C6017A20();

    OUTLINED_FUNCTION_22_5();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_20:
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_29_2();
    *(*(v3 + 48) + 8 * v20) = v15;
    sub_1C5C70758(v26, (*(v3 + 56) + 32 * v20));
    OUTLINED_FUNCTION_21_5();
    v2 = v24;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (!v18)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1C5CE9CC8()
{
  OUTLINED_FUNCTION_27_5();
  sub_1C5CEA98C(0, &qword_1EC1A8930, MEMORY[0x1E69E6EC8]);
  v29 = v2;
  v3 = sub_1C60176E0();
  if (!v1[2])
  {
LABEL_30:

    *v0 = v3;
    return;
  }

  v4 = 0;
  OUTLINED_FUNCTION_1_11();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_38_2();
  v8 = v3 + 64;
  if (!v7)
  {
LABEL_4:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v10;
      if (v1[v4])
      {
        OUTLINED_FUNCTION_9_2();
        v7 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      OUTLINED_FUNCTION_12_4();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_10_5(v26);
      }

      else
      {
        OUTLINED_FUNCTION_14_7(v26);
      }

      v1[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_9:
    v13 = v9 | (v4 << 6);
    v14 = (v1[6] + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (v1[7] + 32 * v13);
    if (v29)
    {
      sub_1C5C70758(v17, v30);
    }

    else
    {
      sub_1C5C653C8(v17, v30);
    }

    sub_1C60179F0();
    sub_1C60169F0();
    sub_1C6017A20();
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_28_3();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_22:
    OUTLINED_FUNCTION_4_9();
    *(v8 + v22) |= v23;
    v25 = (*(v3 + 48) + 16 * v24);
    *v25 = v15;
    v25[1] = v16;
    sub_1C5C70758(v30, (*(v3 + 56) + 32 * v24));
    OUTLINED_FUNCTION_21_5();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    if (*(v8 + 8 * v19) != -1)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C5CE9EE0()
{
  OUTLINED_FUNCTION_11_3();
  sub_1C5CEAF78();
  OUTLINED_FUNCTION_32_1();
  v24 = v1;
  v3 = OUTLINED_FUNCTION_44_1();
  if (!v2[2])
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v23 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_38_2();
  if (!v6)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v8;
      if (v5[v4])
      {
        OUTLINED_FUNCTION_9_2();
        v25 = v10 & v9;
        goto LABEL_9;
      }
    }

    if (v24)
    {
      OUTLINED_FUNCTION_12_4();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_10_5(v20);
      }

      else
      {
        OUTLINED_FUNCTION_14_7(v20);
      }

      v2[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_1();
LABEL_9:
    v11 = v7 | (v4 << 6);
    v12 = v2[7];
    v13 = *(v2[6] + 8 * v11);
    v14 = *(v12 + 8 * v11);
    if ((v24 & 1) == 0)
    {
      v15 = v13;
      v16 = v14;
    }

    sub_1C6016940();
    sub_1C60179F0();
    sub_1C60169F0();
    sub_1C6017A20();

    OUTLINED_FUNCTION_22_5();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_19:
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_29_2();
    *(v3[6] + 8 * v19) = v13;
    *(v3[7] + 8 * v19) = v14;
    ++v3[2];
    v2 = v23;
    if (!v25)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v17)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (!v17)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C5CEA0C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1C5CEB0D4();
  v34 = a2;
  v6 = OUTLINED_FUNCTION_44_1();
  if (!v5[2])
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v33 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_1_11();
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_9_2();
        v35 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_12_4();
    v3 = v2;
    if (v31 != v32)
    {
      OUTLINED_FUNCTION_10_5(v30);
    }

    else
    {
      OUTLINED_FUNCTION_14_7(v30);
    }

    v5[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_1();
LABEL_9:
    v18 = v14 | (v7 << 6);
    v19 = v5[7];
    v20 = *(v5[6] + 8 * v18);
    v21 = *(v19 + 8 * v18);
    if ((v34 & 1) == 0)
    {
      v22 = v20;
      swift_unknownObjectRetain();
    }

    sub_1C6016940();
    OUTLINED_FUNCTION_290();
    sub_1C60179F0();
    sub_1C60169F0();
    sub_1C6017A20();

    OUTLINED_FUNCTION_28_3();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_21:
    OUTLINED_FUNCTION_4_9();
    *(v13 + v27) |= v28;
    *(v6[6] + 8 * v29) = v20;
    *(v6[7] + 8 * v29) = v21;
    ++v6[2];
    v5 = v33;
    if (!v35)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (v13[v24] != -1)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C5CEA2E8()
{
  OUTLINED_FUNCTION_11_3();
  sub_1C5CEAE14(0, &qword_1ED7DCB88, type metadata accessor for AssetSlidingQueue.Position, MEMORY[0x1E69E6EC8]);
  OUTLINED_FUNCTION_32_1();
  v26 = v1;
  v3 = OUTLINED_FUNCTION_44_1();
  if (!v2[2])
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v25 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_1_11();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_38_2();
  if (!v8)
  {
LABEL_4:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v10;
      if (v5[v4])
      {
        OUTLINED_FUNCTION_9_2();
        v8 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v26)
    {
      OUTLINED_FUNCTION_12_4();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_10_5(v22);
      }

      else
      {
        OUTLINED_FUNCTION_14_7(v22);
      }

      v2[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_37_0();
LABEL_9:
    v13 = v9 | (v4 << 6);
    v14 = (v2[6] + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v2[7] + 8 * v13);
    if ((v26 & 1) == 0)
    {
    }

    sub_1C60179F0();
    sub_1C60169F0();
    sub_1C6017A20();
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_28_3();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_19:
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_29_2();
    v21 = (*(v3 + 48) + 16 * v20);
    *v21 = v15;
    v21[1] = v16;
    *(*(v3 + 56) + 8 * v20) = v17;
    OUTLINED_FUNCTION_21_5();
    v2 = v25;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_31_1();
    if (!v18)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C5CEA4D8()
{
  OUTLINED_FUNCTION_27_5();
  sub_1C5CEAE88();
  v39 = v2;
  v3 = sub_1C60176E0();
  if (!v1[2])
  {
LABEL_30:

LABEL_31:
    *v0 = v3;
    return;
  }

  v38 = v0;
  v4 = 0;
  OUTLINED_FUNCTION_1_11();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = v3 + 64;
  v11 = 40;
  if ((v6 & v5) == 0)
  {
LABEL_4:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= v9)
      {
        break;
      }

      ++v13;
      if (v1[v4])
      {
        OUTLINED_FUNCTION_9_2();
        v7 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((v39 & 1) == 0)
    {

      v0 = v38;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_12_4();
    v0 = v38;
    if (v36 != v37)
    {
      OUTLINED_FUNCTION_10_5(v35);
    }

    else
    {
      OUTLINED_FUNCTION_14_7(v35);
    }

    v1[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_9:
    v16 = v12 | (v4 << 6);
    v17 = v1[6] + v16 * v11;
    if (v39)
    {
      v18 = *v17;
      v19 = *(v17 + 16);
      v42 = *(v17 + 32);
      v40 = v18;
      v41 = v19;
      v20 = (v1[7] + 16 * v16);
      v21 = *v20;
      v22 = v20[1];
    }

    else
    {
      sub_1C5CE34A8(v17, &v40);
      v23 = (v1[7] + 16 * v16);
      v21 = *v23;
      v22 = v23[1];
    }

    sub_1C60174A0();
    OUTLINED_FUNCTION_16_5();
    OUTLINED_FUNCTION_28_3();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_7();
LABEL_22:
    OUTLINED_FUNCTION_4_9();
    *(v10 + v28) |= v29;
    v31 = *(v3 + 48) + 40 * v30;
    v32 = v40;
    v33 = v41;
    *(v31 + 32) = v42;
    *v31 = v32;
    *(v31 + 16) = v33;
    v34 = (*(v3 + 56) + 16 * v30);
    *v34 = v21;
    v34[1] = v22;
    OUTLINED_FUNCTION_21_5();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_26_2();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v10 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_5();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1C5CEA6E8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  *v2 = v3;
  v2[1] = sub_1C5CEA784;

  return sub_1C5CE8EB4(v0);
}

uint64_t sub_1C5CEA784()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C5CEA868(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C60311B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1C5CEA8CC()
{
  if (!qword_1EC1A8DE0)
  {
    sub_1C5CBCFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8DE0);
    }
  }
}

uint64_t sub_1C5CEA938(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C5CEA98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5CEA9F8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C5CEAAEC;

  return v5(v2 + 16);
}

uint64_t sub_1C5CEAAEC()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1C5CEAC10()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5CEACA0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_1C5CEAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_6_1();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1C5CEAD94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C5CE9A0C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C5CEAE14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C5CEAE88()
{
  if (!qword_1EC1AAB00)
  {
    v0 = sub_1C6017700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAB00);
    }
  }
}

uint64_t sub_1C5CEAEE8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_30_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

void sub_1C5CEAF78()
{
  if (!qword_1EC1AAB08)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C5C64D74(255, &qword_1ED7DCC30);
    sub_1C5CEB180(&unk_1ED7DCD50, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey);
    v0 = sub_1C6017700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAB08);
    }
  }
}

void sub_1C5CEB034()
{
  if (!qword_1EC1AAB18)
  {
    type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
    sub_1C5CEB180(&unk_1ED7DCD50, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey);
    v0 = sub_1C6017700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAB18);
    }
  }
}

void sub_1C5CEB0D4()
{
  if (!qword_1EC1A9250)
  {
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5CEB180(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v0 = sub_1C6017700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9250);
    }
  }
}

uint64_t sub_1C5CEB180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_14_7@<X0>(uint64_t a1@<X8>)
{

  return sub_1C5CEA868(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_1C5CE95A8(v0);
}

uint64_t OUTLINED_FUNCTION_43_3()
{
}

uint64_t sub_1C5CEB2C8()
{
  OUTLINED_FUNCTION_248();
  v1[5] = v0;
  OUTLINED_FUNCTION_24_5();
  sub_1C5C67E04(0, v2, v3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v4);
  v1[6] = swift_task_alloc();
  v1[7] = sub_1C6016C10();
  v1[8] = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  v6 = sub_1C6016BA0();
  v1[9] = v6;
  v1[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5CEB3A4, v6, v5);
}

uint64_t sub_1C5CEB3A4()
{
  if (sub_1C5CF55EC())
  {
    v1 = v0[5];
    v2 = OBJC_IVAR____MPCPodcastAVItem_loadAssetAndPlayerItemTask;
    v0[11] = OBJC_IVAR____MPCPodcastAVItem_loadAssetAndPlayerItemTask;
    v3 = *&v1[v2];
    v0[12] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[13] = v4;
      OUTLINED_FUNCTION_6_8(v4, &qword_1ED7DCEA0, &qword_1ED7DCEA8, 0x1E69880B0);
      OUTLINED_FUNCTION_139_0();
      OUTLINED_FUNCTION_65_1();
      *v4 = v5;
      v4[1] = sub_1C5CEB684;
    }

    else
    {
      sub_1C6016C30();
      v10 = OUTLINED_FUNCTION_25_3();
      __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
      v14 = v1;
      sub_1C6016C00();
      OUTLINED_FUNCTION_178();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_20_6(v15, MEMORY[0x1E69E85E0]);
      OUTLINED_FUNCTION_77_1(v16);

      v17 = swift_task_alloc();
      v0[15] = v17;
      OUTLINED_FUNCTION_6_8(v17, &qword_1ED7DCEA0, &qword_1ED7DCEA8, 0x1E69880B0);
      OUTLINED_FUNCTION_139_0();
      OUTLINED_FUNCTION_65_1();
      *v17 = v18;
      OUTLINED_FUNCTION_18_4();
    }

    OUTLINED_FUNCTION_93_0();

    return MEMORY[0x1EEE6DA10]();
  }

  else
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v0[2] = 7;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_3();
    OUTLINED_FUNCTION_23_4();
    sub_1C5CFB4C4(v6, v7);
    OUTLINED_FUNCTION_147();
    sub_1C6017280();
    OUTLINED_FUNCTION_73();

    swift_willThrow();

    OUTLINED_FUNCTION_172();

    return v8();
  }
}

uint64_t sub_1C5CEB684()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_1C5CEBAB4;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_1C5CEB7BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C5CEB7BC()
{
  OUTLINED_FUNCTION_9();
  if (*(v0 + 24))
  {

    v2 = OUTLINED_FUNCTION_30_3();

    return v3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_133_0();
    v5 = OUTLINED_FUNCTION_25_3();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v9 = v1;
    sub_1C6016C00();
    OUTLINED_FUNCTION_178();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_20_6(v10, MEMORY[0x1E69E85E0]);
    OUTLINED_FUNCTION_77_1(v11);

    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    OUTLINED_FUNCTION_6_8(v12, &qword_1ED7DCEA0, &qword_1ED7DCEA8, 0x1E69880B0);
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_65_1();
    *v12 = v13;
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_93_0();

    return MEMORY[0x1EEE6DA10]();
  }
}

uint64_t sub_1C5CEB904()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1C5CEBBAC;
  }

  else
  {
    v7 = sub_1C5CEBA4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C5CEBA4C()
{
  OUTLINED_FUNCTION_248();

  v0 = OUTLINED_FUNCTION_30_3();

  return v1(v0);
}

uint64_t sub_1C5CEBAB4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_133_0();
  v2 = OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v1;
  sub_1C6016C00();
  OUTLINED_FUNCTION_178();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_20_6(v7, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_77_1(v8);

  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  OUTLINED_FUNCTION_6_8(v9, &qword_1ED7DCEA0, &qword_1ED7DCEA8, 0x1E69880B0);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_65_1();
  *v9 = v10;
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_93_0();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1C5CEBBAC()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5CEBC10(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
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

  v8 = 0;
  v25 = v2;
  while (v5)
  {
    v40 = v1;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C5CFB2BC(*(a1 + 56) + 32 * v11, v38);
    *&v37 = v14;
    *(&v37 + 1) = v13;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1C5CFB2BC(&v35, &v27);
    if (v28)
    {
      sub_1C5C70758(&v27, v33);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      sub_1C5C70758(v33, v29);
      v1 = v40;
      if (*(v40 + 24) <= *(v40 + 16))
      {

        sub_1C5CE9CC8();
        v1 = v39;
      }

      else
      {
      }

      v15 = v30;
      sub_1C60179F0();
      sub_1C60169F0();
      result = sub_1C6017A20();
      v16 = v1 + 64;
      v17 = -1 << *(v1 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v1 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v17) >> 6;
        while (++v19 != v22 || (v21 & 1) == 0)
        {
          v23 = v19 == v22;
          if (v19 == v22)
          {
            v19 = 0;
          }

          v21 |= v23;
          v24 = *(v16 + 8 * v19);
          if (v24 != -1)
          {
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v1 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v1 + 48) + 16 * v20) = v15;
      sub_1C5C70758(v29, (*(v1 + 56) + 32 * v20));
      ++*(v1 + 16);
      result = sub_1C5CFB17C();
      v2 = v25;
    }

    else
    {

      sub_1C5CFB31C();
      result = sub_1C5CFB17C();
      v1 = v40;
      v2 = v25;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v40 = v1;
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1C5CEBFB8()
{
  v1 = v0;
  v2 = sub_1C6015770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = sub_1C6015630();
  (*(v3 + 8))(v5, v2);
  if ((v7 & 0x100000000) != 0)
  {
    type metadata accessor for PodcastsPlaybackRateHelper();
    v8 = static PodcastsPlaybackRateHelper.globalPlaybackRate()();
  }

  else
  {
    v8 = *&v7;
  }

  *(v1 + OBJC_IVAR____MPCPodcastAVItem_preferredPlaybackRate) = v8;
}

uint64_t sub_1C5CEC0F0(uint64_t a1)
{
  v3 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  swift_beginAccess();
  v4 = sub_1C6015770();
  (*(*(v4 - 8) + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1C5CEBFB8();
  v5 = OUTLINED_FUNCTION_252();
  return v6(v5);
}

void sub_1C5CEC1B8()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_99();
  v2 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_10();
  v11 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___assetFactory;
  if (!*&v0[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___assetFactory])
  {
    (*(v10 + 16))(v1, &v0[OBJC_IVAR____MPCPodcastAVItem_url]);
    sub_1C5CB50F4(v0, &selRef_playerID);
    v13 = v12;
    v14 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    (*(v4 + 16))(v8, &v0[v14], v2);
    OUTLINED_FUNCTION_7_3();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for PodcastAssetFactory();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_11_0();
    *&v0[v11] = sub_1C5CE5FAC(v16, v17, v13, v8, v18, v15);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CEC3B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = (result + OBJC_IVAR____MPCPodcastAVItem_serviceIdentifier);
    *v6 = a1;
    v6[1] = a2;
  }

  return result;
}

id sub_1C5CEC43C()
{
  v2 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___fairPlayKeyLoader;
  v3 = *(v1 + OBJC_IVAR____MPCPodcastAVItem____lazy_storage___fairPlayKeyLoader);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____MPCPodcastAVItem____lazy_storage___fairPlayKeyLoader);
  }

  else
  {
    OUTLINED_FUNCTION_99();
    sub_1C6015CD0();
    v5 = sub_1C6015CC0();
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_1C5CEC4A8()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastChapter();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____MPCPodcastAVItem_podcastChapters];
  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = v0;
    v19 = MEMORY[0x1E69E7CC0];

    sub_1C60175F0();
    v8 = *(v3 + 80);
    v17[1] = v6;
    v9 = v6 + ((v8 + 32) & ~v8);
    v10 = *(v3 + 72);
    do
    {
      sub_1C5CFAC38(v9, v5);
      v11 = objc_allocWithZone(MEMORY[0x1E6970830]);
      v12 = sub_1C6016900();
      v13 = [v11 initWithIdentifier_];

      v14 = v13;
      v15 = sub_1C6016900();
      [v14 setTitle_];

      [v14 setStartTime_];
      [v14 setDuration_];
      sub_1C5CFB31C();
      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
      v9 += v10;
      --v7;
    }

    while (v7);

    v1 = v18;
  }

  sub_1C5C64D74(0, &qword_1EC1A9390);
  v16 = sub_1C6016AF0();

  [v1 setChapters_];
}

uint64_t *sub_1C5CEC70C()
{
  v1 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___enhanceDialogueSession;
  if (*&v0[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___enhanceDialogueSession])
  {
    v2 = *&v0[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___enhanceDialogueSession];
  }

  else
  {
    v3 = v0;
    _s22EnhanceDialogueSessionCMa();
    swift_allocObject();
    v2 = sub_1C5CD7590(v0);
    *&v3[v1] = v2;
  }

  return v2;
}

uint64_t sub_1C5CEC7F4()
{
  v1 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___chapterProvider;
  if (*(v0 + OBJC_IVAR____MPCPodcastAVItem____lazy_storage___chapterProvider))
  {
    v2 = *(v0 + OBJC_IVAR____MPCPodcastAVItem____lazy_storage___chapterProvider);
  }

  else
  {
    v3 = v0;
    sub_1C6015BB0();
    swift_allocObject();
    v2 = sub_1C6015BA0();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C5CEC870()
{

  sub_1C5DBC94C();
  v2 = v1;

  if ((v2 & 1) == 0)
  {
    if (qword_1EC1A8EA8 != -1)
    {
      swift_once();
    }

    v4 = sub_1C60162D0();
    __swift_project_value_buffer(v4, qword_1EC1BE388);
    v5 = v0;
    v6 = sub_1C60162B0();
    v7 = sub_1C6016F30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v10 = v5;
      v11 = [v10 description];
      v12 = sub_1C6016940();
      v14 = v13;

      v15 = sub_1C5C6AB10(v12, v14, v22);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_1C5C61000, v6, v7, "Updating chapters for %{private,mask.hash}s.", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1C6956920](v9, -1, -1);
      MEMORY[0x1C6956920](v8, -1, -1);
    }

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C5CFAF7C;
    *(v18 + 24) = v17;
    v22[4] = sub_1C5CFAF84;
    v22[5] = v18;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_1C5DB3148;
    v22[3] = &block_descriptor_9;
    v19 = _Block_copy(v22);
    v20 = v5;

    [v16 performSuppressingChangeNotifications_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C5CECB70(char *a1)
{
  v2 = sub_1C6016120();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v39 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v28 - v6;
  v7 = sub_1C60161C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____MPCPodcastAVItem_chapterModels];
  v44 = MEMORY[0x1E69E7CC0];
  v12 = *(v11 + 16);
  if (v12)
  {
    v29 = a1;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v36 = *(v13 + 56);
    v37 = v14;
    v33 = *MEMORY[0x1E69C4DE8];
    v31 = (v3 + 8);
    v32 = (v3 + 104);
    v16 = (v13 - 8);
    v28 = v11;

    v30 = (v13 - 8);
    v34 = v13;
    v35 = v7;
    do
    {
      v37(v10, v15, v7);
      v17 = sub_1C60161A0();
      if (v18)
      {
        (*v16)(v10, v7);
      }

      else
      {
        v19 = *&v17;
        sub_1C5C64D74(0, &qword_1EC1A9390);
        sub_1C6016140();
        v20 = sub_1C5CFA534();
        sub_1C6016160();
        if (v21)
        {
          v22 = sub_1C6016900();
        }

        else
        {
          v22 = 0;
        }

        [v20 setTitle_];

        sub_1C60161B0();
        [v20 setStartTime_];
        [v20 setDuration_];
        sub_1C6016150();
        (*v32)(v39, v33, v2);
        sub_1C5CFB4C4(&qword_1EC1AAB90, MEMORY[0x1E69C4DF0]);
        sub_1C6016AC0();
        sub_1C6016AC0();
        if (v42 == v40 && v43 == v41)
        {
          v24 = 1;
        }

        else
        {
          v24 = sub_1C6017860();
        }

        v25 = *v31;
        (*v31)(v39, v2);
        v25(v38, v2);

        [v20 setPlayable_];

        v16 = v30;
        v7 = v35;
        v26 = (*v30)(v10, v35);
        MEMORY[0x1C69535C0](v26);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C6016B30();
        }

        sub_1C6016B70();
      }

      v15 += v36;
      --v12;
    }

    while (v12);

    a1 = v29;
  }

  sub_1C5C64D74(0, &qword_1EC1A9390);
  v27 = sub_1C6016AF0();

  [a1 setChapters_];
}

uint64_t sub_1C5CED020(uint64_t a1)
{
  *(v1 + OBJC_IVAR____MPCPodcastAVItem_chapterModels) = a1;
  sub_1C5CEC870();
}

uint64_t sub_1C5CED068@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____MPCPodcastAVItem_queueType;
  OUTLINED_FUNCTION_31_2();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C5CED0B8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____MPCPodcastAVItem_queueType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_1C5CED108()
{
  v1 = [v0 contentItem];
  if (v1)
  {
    v2 = v1;
    if (*&v0[OBJC_IVAR____MPCPodcastAVItem_transcriptAlignments])
    {
      sub_1C5C64D74(0, &qword_1EC1AAC10);
      OUTLINED_FUNCTION_126();

      v3 = sub_1C6016AF0();
    }

    else
    {
      v3 = 0;
    }

    [v2 setTranscriptAlignments_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5CED1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_131();
  a21 = v24;
  a22 = v25;
  v26 = v23;
  v28 = v27;
  v30 = v29;
  v164 = v31;
  v33 = v32;
  v181 = v34;
  v36 = v35;
  v162 = sub_1C6015060();
  OUTLINED_FUNCTION_25();
  v161 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_146();
  v160 = v40 - v39;
  OUTLINED_FUNCTION_85();
  sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v178 = v41;
  v179 = v42;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_102();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v158 - v49;
  OUTLINED_FUNCTION_2_11();
  sub_1C5C67E04(0, v51, v52, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v53);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_62_2();
  v55 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v168 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_146();
  v167 = v59 - v58;
  v166 = *v33;
  v60 = OBJC_IVAR____MPCPodcastAVItem_createdTimestamp;
  sub_1C6014F90();
  *&v26[v60] = v61;
  v62 = &v26[OBJC_IVAR____MPCPodcastAVItem_serviceIdentifier];
  *v62 = 0;
  v62[1] = 0;
  v170 = v62;
  v172 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___assetFactory;
  *&v26[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___assetFactory] = 0;
  v176 = OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession;
  *&v26[OBJC_IVAR____MPCPodcastAVItem_fairPlayKeySession] = 0;
  v63 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___fairPlayKeyLoader;
  *&v26[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___fairPlayKeyLoader] = 0;
  v26[OBJC_IVAR____MPCPodcastAVItem_hasProcessedChapters] = 0;
  v26[OBJC_IVAR____MPCPodcastAVItem_shouldShowChapterArtwork] = 0;
  v64 = MEMORY[0x1E69E7CC0];
  v169 = OBJC_IVAR____MPCPodcastAVItem_podcastChapters;
  *&v26[OBJC_IVAR____MPCPodcastAVItem_podcastChapters] = MEMORY[0x1E69E7CC0];
  v171 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___enhanceDialogueSession;
  *&v26[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___enhanceDialogueSession] = 0;
  v175 = OBJC_IVAR____MPCPodcastAVItem____lazy_storage___chapterProvider;
  *&v26[OBJC_IVAR____MPCPodcastAVItem____lazy_storage___chapterProvider] = 0;
  v177 = OBJC_IVAR____MPCPodcastAVItem_chapterModels;
  *&v26[OBJC_IVAR____MPCPodcastAVItem_chapterModels] = v64;
  v26[OBJC_IVAR____MPCPodcastAVItem_areChaptersGenerated] = 2;
  v174 = OBJC_IVAR____MPCPodcastAVItem_transcriptAlignments;
  *&v26[OBJC_IVAR____MPCPodcastAVItem_transcriptAlignments] = 0;
  v26[OBJC_IVAR____MPCPodcastAVItem_isAssetAndPlayerItemLoaded] = 2;
  v173 = OBJC_IVAR____MPCPodcastAVItem_loadAssetAndPlayerItemTask;
  *&v26[OBJC_IVAR____MPCPodcastAVItem_loadAssetAndPlayerItemTask] = 0;
  v182 = v36;
  sub_1C60156F0();
  v180 = v28;
  if (v65)
  {
    v165 = v30;
    sub_1C6014F00();

    v66 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_73_0(v66, v67, v55);
    if (!v68)
    {
      v91 = v168;
      v92 = v167;
      (*(v168 + 32))(v167, v22, v55);
      v93 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
      isa = v179[2].isa;
      v177 = v55;
      v95 = v178;
      v96 = v179;
      (isa)(&v26[OBJC_IVAR____MPCPodcastAVItem_internalItem], v182, v178);
      v97 = OBJC_IVAR____MPCPodcastAVItem_playbackContext;
      v98 = sub_1C60158F0();
      v176 = *(v98 - 8);
      v99 = *(v176 + 16);
      v175 = v98;
      v99(&v26[v97], v181);
      v26[OBJC_IVAR____MPCPodcastAVItem_queueType] = v166;
      v100 = v95;
      v101 = v177;
      v102 = v91;
      v103 = v100;
      (*(v102 + 16))(&v26[OBJC_IVAR____MPCPodcastAVItem_url], v92, v177);
      OUTLINED_FUNCTION_31_2();
      swift_beginAccess();
      (isa)(v50, &v26[v93], v103);
      v104 = sub_1C6015630();
      v105 = v96[1].isa;
      v106 = OUTLINED_FUNCTION_56_0();
      v105(v106);
      if ((v104 & 0x100000000) != 0)
      {
        type metadata accessor for PodcastsPlaybackRateHelper();
        v107 = static PodcastsPlaybackRateHelper.globalPlaybackRate()();
      }

      else
      {
        v107 = *&v104;
      }

      v108 = v180;
      *&v26[OBJC_IVAR____MPCPodcastAVItem_preferredPlaybackRate] = v107;
      v109 = type metadata accessor for PodcastAVItem();
      v187.receiver = v26;
      v187.super_class = v109;
      v110 = objc_msgSendSuper2(&v187, sel_initWithPlayerItem_, 0);
      v111 = v110;
      if (!v110)
      {

        v112 = OUTLINED_FUNCTION_90_0();
        v113(v112);
        v114 = OUTLINED_FUNCTION_115_0();
        v105(v114);
        v115 = OUTLINED_FUNCTION_101_0();
        v116(v115, v101);
        goto LABEL_32;
      }

      if (v108)
      {
        [v110 setInitialPlaybackStartTimeOverride_];
LABEL_24:
        if (qword_1EC1A8EA8 != -1)
        {
          OUTLINED_FUNCTION_2_0();
        }

        v129 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v129, qword_1EC1BE388);
        v130 = v111;
        v131 = sub_1C60162B0();
        v132 = sub_1C6016F30();

        if (OUTLINED_FUNCTION_29_0())
        {
          v133 = OUTLINED_FUNCTION_68_0();
          v179 = v131;
          v134 = v133;
          v135 = OUTLINED_FUNCTION_110();
          v173 = v135;
          v174 = OUTLINED_FUNCTION_21();
          v185 = v174;
          *v134 = 138412547;
          v136 = [v130 initialPlaybackStartTimeOverride];
          *(v134 + 4) = v136;
          *v135 = v136;
          *(v134 + 12) = 2081;
          LODWORD(v172) = v132;
          v137 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
          OUTLINED_FUNCTION_31_2();
          swift_beginAccess();
          v138 = v163;
          (isa)(v163, &v130[v137], v103);
          v139 = sub_1C60156D0();
          v141 = v140;
          (v105)(v138, v103);
          v183 = v139;
          v184 = v141;
          OUTLINED_FUNCTION_0_14();
          sub_1C5CFB11C(0, v142, v143, v144);
          v145 = sub_1C60169A0();
          v147 = sub_1C5C6AB10(v145, v146, &v185);

          *(v134 + 14) = v147;
          v148 = v179;
          _os_log_impl(&dword_1C5C61000, v179, v172, "Using playback position: %@ for %{private}s", v134, 0x16u);
          sub_1C5CB5700(v173);
          OUTLINED_FUNCTION_35_1();
          __swift_destroy_boxed_opaque_existential_0(v174);
          OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_4();
        }

        else
        {
        }

        v149 = v165;
        v150 = v164;
        if (!v165)
        {
          v151 = v160;
          sub_1C6015050();
          v150 = sub_1C6015030();
          v149 = v152;
          (*(v161 + 8))(v151, v162);
        }

        sub_1C5CFAE60(v150, v149, 0xD000000000000017, 0x80000001C6049780, v150, v149, v130);

        v153 = OUTLINED_FUNCTION_90_0();
        v154(v153);
        v155 = OUTLINED_FUNCTION_115_0();
        v105(v155);
        v156 = OUTLINED_FUNCTION_101_0();
        v157(v156, v177);

        goto LABEL_32;
      }

      v117 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
      OUTLINED_FUNCTION_31_2();
      swift_beginAccess();
      v118 = v159;
      (isa)(v159, &v111[v117], v103);
      v119 = v111;
      v120 = sub_1C6015720();
      v122 = v121;
      (v105)(v118, v103);
      if (v122)
      {
        v123 = [v119 initialPlaybackStartTime];
        if (!v123)
        {
          v127 = 0.0;
          goto LABEL_23;
        }

        v124 = v123;
        [v123 doubleValue];
        v126 = v125;

        v120 = v126;
      }

      v127 = *&v120;
LABEL_23:
      v128 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v119 setInitialPlaybackStartTimeOverride_];

      goto LABEL_24;
    }
  }

  else
  {

    v69 = OUTLINED_FUNCTION_56_1();
    __swift_storeEnumTagSinglePayload(v69, v70, 1, v55);
  }

  v168 = v63;
  OUTLINED_FUNCTION_2_11();
  sub_1C5CFB17C();
  v71 = v178;
  if (qword_1EC1A8EA8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v72 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v72, qword_1EC1BE388);
  v73 = v179;
  (v179[2].isa)(v45, v182, v71);
  v74 = sub_1C60162B0();
  v75 = sub_1C6016F20();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_112();
    v167 = OUTLINED_FUNCTION_21();
    v186 = v167;
    *v76 = 136446210;
    v188 = sub_1C6015540();
    v189 = v77 & 1;
    OUTLINED_FUNCTION_0_14();
    sub_1C5CFB11C(0, v78, v79, v80);
    v81 = sub_1C60169A0();
    v83 = v82;
    v84 = v73[1].isa;
    v84(v45, v71);
    v85 = sub_1C5C6AB10(v81, v83, &v186);

    *(v76 + 4) = v85;
    _os_log_impl(&dword_1C5C61000, v74, v75, "Didn't find an asset url for %{public}s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v167);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_35_1();

    sub_1C60158F0();
    OUTLINED_FUNCTION_6_1();
    (*(v86 + 8))(v181);
    v87 = OUTLINED_FUNCTION_115_0();
    (v84)(v87);
  }

  else
  {

    sub_1C60158F0();
    OUTLINED_FUNCTION_6_1();
    (*(v88 + 8))(v181);
    v89 = v73[1].isa;
    v90 = OUTLINED_FUNCTION_115_0();
    v89(v90);
    (v89)(v45, v71);
  }

  OUTLINED_FUNCTION_69_1(&a15);

  OUTLINED_FUNCTION_69_1(&a19);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_69_1(&a12);

  OUTLINED_FUNCTION_69_1(&a14);

  OUTLINED_FUNCTION_69_1(&a18);

  OUTLINED_FUNCTION_69_1(&a20);

  OUTLINED_FUNCTION_69_1(&a17);

  OUTLINED_FUNCTION_69_1(&a16);

  type metadata accessor for PodcastAVItem();
  OUTLINED_FUNCTION_8_0();
  swift_deallocPartialClassInstance();
LABEL_32:
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1C5CEDE80()
{
  OUTLINED_FUNCTION_107();
  sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v5 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_10();
  v9 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  (*(v7 + 16))(v1, &v0[v9], v5);
  v10 = OUTLINED_FUNCTION_60_1();
  v11(v10);
  v12 = OBJC_IVAR____MPCPodcastAVItem_queueType;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  HIBYTE(v25) = v0[v12];
  v13 = v0;
  sub_1C5D2CF90(v13);
  OUTLINED_FUNCTION_99_0();
  v14 = [v13 initialPlaybackStartTimeOverride];
  OUTLINED_FUNCTION_124();
  v15 = objc_allocWithZone(type metadata accessor for PodcastAVItem());
  v16 = OUTLINED_FUNCTION_147();
  sub_1C5CED1E8(v16, v17, v18, v0, v5, v3 + 16, v19, v20, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v22 = v21;

  return v22;
}

void sub_1C5CEE050()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_2_11();
  v3 = MEMORY[0x1E69E6720];
  sub_1C5C67E04(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_8_7();
  sub_1C5C67E04(0, v8, v9, v3);
  OUTLINED_FUNCTION_13_3(v10);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v118 - v12;
  OUTLINED_FUNCTION_85();
  v13 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_102();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_42_3();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v118 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_95_0();
  v28 = type metadata accessor for PodcastAVItem();
  v137.receiver = v0;
  v137.super_class = v28;
  v29 = objc_msgSendSuper2(&v137, sel__contentItemUserInfo);
  if (v29)
  {
    v30 = v29;
    v120 = v22;
    v121 = v2;
    v122 = v17;
    v123 = v1;
    v31 = sub_1C6016860();

    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v32;
    v33 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_50_1();
    sub_1C60174C0();
    v34 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    v127 = v0;
    v131 = v34;
    v35 = OUTLINED_FUNCTION_60_1();
    v126 = v36;
    v130 = v37;
    v37(v35);
    v38 = sub_1C60156F0();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_254();
    v129 = v42;
    v42(v41);
    v119 = v25;
    if (v40)
    {
      v135 = v33;
      *&v134 = v38;
      *(&v134 + 1) = v40;
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_36_1();
      sub_1C5CE3504(v136);
    }

    else
    {
      v43 = sub_1C5CE20FC(v136);
      if (v44)
      {
        v45 = v43;
        swift_isUniquelyReferenced_nonNull_native();
        *&v133[0] = v31;
        sub_1C5CFB3CC();
        sub_1C6017660();
        v46 = *&v133[0];
        sub_1C5CE3504(*(*&v133[0] + 48) + 40 * v45);
        sub_1C5C70758((*(v46 + 56) + 32 * v45), &v134);
        v3 = MEMORY[0x1E69E7CA0];
        OUTLINED_FUNCTION_102_0();
        sub_1C6017680();
      }

      else
      {
        OUTLINED_FUNCTION_79_0();
        v3 = MEMORY[0x1E69E7CA0];
      }

      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_0_14();
      sub_1C5CFB17C();
    }

    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v47;
    OUTLINED_FUNCTION_50_1();
    sub_1C60174C0();
    OUTLINED_FUNCTION_129_0();
    isUniquelyReferenced_nonNull_native = v130;
    v49 = v128;
    (v130)(v128, v3 + v131, v13);
    v50 = sub_1C6015560();
    v51 = v49;
    v52 = v129;
    (v129)(v51, v13);
    v135 = MEMORY[0x1E69E6370];
    LOBYTE(v134) = v50 & 1;
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_36_1();
    v53 = v132;
    sub_1C5CE3504(v136);
    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v54;
    OUTLINED_FUNCTION_50_1();
    sub_1C60174C0();
    v55 = v124;
    v56 = OUTLINED_FUNCTION_60_1();
    isUniquelyReferenced_nonNull_native(v56);
    v57 = sub_1C6015660();
    v59 = v58;
    v60 = OUTLINED_FUNCTION_254();
    v52(v60);
    if (v59)
    {
      v135 = MEMORY[0x1E69E6158];
      *&v134 = v57;
      *(&v134 + 1) = v59;
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_36_1();
      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_129_0();
    }

    else
    {
      v61 = sub_1C5CE20FC(v136);
      if (v62)
      {
        v63 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v133[0] = v53;
        sub_1C5CFB3CC();
        sub_1C6017660();
        v64 = *&v133[0];
        sub_1C5CE3504(*(*&v133[0] + 48) + 40 * v63);
        sub_1C5C70758((*(v64 + 56) + 32 * v63), &v134);
        OUTLINED_FUNCTION_80();
        sub_1C6017680();
      }

      else
      {
        OUTLINED_FUNCTION_79_0();
      }

      OUTLINED_FUNCTION_129_0();
      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_113_0();
    }

    (v130)(v128, v55 + v131, v13);
    v65 = sub_1C6015590();
    OUTLINED_FUNCTION_63_0();
    v66();
    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v67;
    OUTLINED_FUNCTION_50_1();
    sub_1C60174C0();
    if (v65)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    v135 = MEMORY[0x1E69E6530];
    *&v134 = v68;
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_111_0();
    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v69;
    OUTLINED_FUNCTION_50_1();
    sub_1C60174C0();
    v70 = v130;
    v71 = v131;
    (v130)(v128, v55 + v131, v13);
    v72 = sub_1C60154F0();
    v73 = OUTLINED_FUNCTION_81_0();
    v74 = v129;
    v129(v73);
    sub_1C5CFB374(0, &unk_1EC1A8E00);
    v135 = v75;
    *&v134 = v72;
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_111_0();
    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v76;
    OUTLINED_FUNCTION_50_1();
    sub_1C60174C0();
    v77 = v55 + v71;
    v78 = v55;
    v79 = v119;
    v70(v119, v77, v13);
    sub_1C6015760();
    v74(v79, v13);
    v80 = sub_1C60161F0();
    v81 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_73_0(v81, v82, v80);
    if (v83)
    {
      OUTLINED_FUNCTION_8_7();
      sub_1C5CFB17C();
      OUTLINED_FUNCTION_142_0();
      if (v84)
      {
        OUTLINED_FUNCTION_140_0();
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_75_1();
        OUTLINED_FUNCTION_59_2();
        OUTLINED_FUNCTION_87_1();
        OUTLINED_FUNCTION_86();
        sub_1C6017680();
      }

      else
      {
        OUTLINED_FUNCTION_79_0();
      }

      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_113_0();
    }

    else
    {
      v85 = sub_1C60161E0();
      v135 = MEMORY[0x1E69E6158];
      *&v134 = v85;
      *(&v134 + 1) = v86;
      v87 = OUTLINED_FUNCTION_105_0();
      v88(v87);
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_111_0();
    }

    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v89;
    v90 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_44_2();
    sub_1C60174C0();
    v91 = v120;
    v92 = OUTLINED_FUNCTION_60_1();
    v130(v92);
    sub_1C6015620();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_63_0();
    v93();
    if (v80)
    {
      v135 = v90;
      *&v134 = v91;
      *(&v134 + 1) = v80;
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_111_0();
    }

    else
    {
      OUTLINED_FUNCTION_142_0();
      if (v94)
      {
        OUTLINED_FUNCTION_140_0();
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_75_1();
        OUTLINED_FUNCTION_59_2();
        OUTLINED_FUNCTION_87_1();
        OUTLINED_FUNCTION_86();
        sub_1C6017680();
      }

      else
      {
        OUTLINED_FUNCTION_79_0();
      }

      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_113_0();
    }

    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v95;
    v96 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_44_2();
    sub_1C60174C0();
    v97 = v121;
    v98 = OUTLINED_FUNCTION_60_1();
    v130(v98);
    sub_1C60155C0();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_63_0();
    v99();
    if (v80)
    {
      v135 = v96;
      *&v134 = v97;
      *(&v134 + 1) = v80;
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_111_0();
    }

    else
    {
      OUTLINED_FUNCTION_142_0();
      if (v100)
      {
        OUTLINED_FUNCTION_140_0();
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_75_1();
        OUTLINED_FUNCTION_59_2();
        OUTLINED_FUNCTION_87_1();
        OUTLINED_FUNCTION_86();
        sub_1C6017680();
      }

      else
      {
        OUTLINED_FUNCTION_79_0();
      }

      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_113_0();
    }

    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v101;
    v102 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_44_2();
    sub_1C60174C0();
    (v130)(v122, v78 + v131, v13);
    sub_1C6015730();
    OUTLINED_FUNCTION_63_0();
    v103();
    v104 = sub_1C6014F20();
    v105 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_73_0(v105, v106, v104);
    if (v83)
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C5CFB17C();
      OUTLINED_FUNCTION_142_0();
      if (v107)
      {
        OUTLINED_FUNCTION_140_0();
        *&v133[0] = isUniquelyReferenced_nonNull_native;
        sub_1C5CFB3CC();
        sub_1C6017660();
        OUTLINED_FUNCTION_59_2();
        OUTLINED_FUNCTION_87_1();
        OUTLINED_FUNCTION_86();
        sub_1C6017680();
      }

      else
      {
        OUTLINED_FUNCTION_79_0();
      }

      sub_1C5CE3504(v136);
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_113_0();
    }

    else
    {
      v108 = sub_1C6014E70();
      v135 = v102;
      *&v134 = v108;
      *(&v134 + 1) = v109;
      v110 = OUTLINED_FUNCTION_254();
      v111(v110);
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_111_0();
    }

    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v112;
    OUTLINED_FUNCTION_44_2();
    sub_1C60174C0();
    v113 = *(v78 + OBJC_IVAR____MPCPodcastAVItem_shouldShowChapterArtwork);
    v114 = MEMORY[0x1E69E6370];
    v135 = MEMORY[0x1E69E6370];
    LOBYTE(v134) = v113;
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_26_3();
    v115 = v132;
    sub_1C5CE3504(v136);
    *&v134 = sub_1C6016940();
    *(&v134 + 1) = v116;
    OUTLINED_FUNCTION_44_2();
    sub_1C60174C0();
    v117 = *(v78 + OBJC_IVAR____MPCPodcastAVItem_areChaptersGenerated);
    v135 = v114;
    LOBYTE(v134) = v117 & 1;
    sub_1C5C70758(&v134, v133);
    swift_isUniquelyReferenced_nonNull_native();
    v132 = v115;
    sub_1C5E3648C(v133, v136);
    sub_1C5CE3504(v136);
  }

  else
  {
    sub_1C6016880();
  }

  OUTLINED_FUNCTION_237();
}