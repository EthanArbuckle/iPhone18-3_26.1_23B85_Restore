void sub_216CB2180(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v9 = sub_217007CA4();
  __swift_project_value_buffer(v9, qword_280E73BC0);
  sub_21700DF14();
  v10 = sub_217007C84();
  v11 = sub_21700EDA4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = a6;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_2166A85FC(a2, a3, &v20);
    *(v12 + 12) = 2050;
    *(v12 + 14) = qword_21705D7A0[v8];
    _os_log_impl(&dword_216679000, v10, v11, "User has cancelled the follow request for social profile: %{public}s, response: '%{public}ld'", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v15 = v14;
    a6 = v13;
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v12, -1, -1);
  }

  if (v8 == 1)
  {
    sub_216F07A9C(0, a2, a3, 1);
    v21 = a6;
    sub_21700E224();
  }

  else
  {
    sub_216F079D4();
    v16 = sub_2169CA578(v8);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      sub_2169CAE18();
      v17 = swift_allocError();
      *v18 = 0;
    }

    sub_21700E214();
  }
}

void sub_216CB23D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *format, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_38_6();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  if (qword_280E31C10 != -1)
  {
    OUTLINED_FUNCTION_0_221();
    swift_once();
  }

  v40 = sub_217007CA4();
  __swift_project_value_buffer(v40, qword_280E73BC0);
  OUTLINED_FUNCTION_52_16();
  sub_21700DF14();
  v41 = v39;
  v42 = sub_217007C84();
  v43 = sub_21700ED84();

  if (os_log_type_enabled(v42, v43))
  {
    formata = v31;
    v44 = swift_slowAlloc();
    a16 = swift_slowAlloc();
    *v44 = 136446466;
    *(v44 + 4) = sub_2166A85FC(v37, v35, &a16);
    *(v44 + 12) = 2082;
    swift_getErrorValue();
    v45 = sub_21700F884();
    sub_2166A85FC(v45, v46, &a16);
    OUTLINED_FUNCTION_47_18();

    *(v44 + 14) = v33;
    _os_log_impl(&dword_216679000, v42, v43, formata, v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  sub_216F079D4();
  sub_21700E214();
  OUTLINED_FUNCTION_37_8();
}

void sub_216CB25B0()
{
  OUTLINED_FUNCTION_46_28();
  sub_2166C1D2C(1);
  OUTLINED_FUNCTION_18_57();
  sub_216934F28();
  if (v9)
  {
    if (swift_dynamicCast())
    {
      sub_216CB07EC(v7);
      if (qword_280E31C10 != -1)
      {
        OUTLINED_FUNCTION_0_221();
        swift_once();
      }

      v0 = sub_217007CA4();
      __swift_project_value_buffer(v0, qword_280E73BC0);
      v1 = sub_217007C84();
      v2 = sub_21700EDA4();
      v3 = OUTLINED_FUNCTION_22_6();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = OUTLINED_FUNCTION_29_42(v5, 1.5282e-36);
        *(v6 + 8) = 1026;
        *(v6 + 10) = v7;
        _os_log_impl(&dword_216679000, v1, v2, "Performing social profile update request, user is updating Social Onboarded status from: %{BOOL,public}d to %{BOOL,public}d", v5, 0xEu);
        OUTLINED_FUNCTION_2_8();
        MEMORY[0x21CEA1440]();
      }
    }
  }

  else
  {
    sub_216697664(v8, &unk_27CABF7A0);
  }
}

void sub_216CB2710(char *a1, char *a2)
{
  v3 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73BC0);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = qword_21705D7A0[v3];
    _os_log_impl(&dword_216679000, v5, v6, "User performed social profile update with response: '%{public}ld'", v7, 0xCu);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  if (v3 == 1)
  {
    v8 = a2;
    sub_216E12054();
    LOBYTE(v25) = 1;
    sub_21700E224();
  }

  else
  {
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446210;
      v13 = sub_2169CA578(v3);
      if (v13)
      {
        v14 = v13;
        swift_getErrorValue();
        v15 = sub_21700F884();
        v17 = v16;
      }

      else
      {
        v17 = 0xED00006F666E6920;
        v15 = 0x726F727265206F6ELL;
      }

      v18 = sub_2166A85FC(v15, v17, &v25);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_216679000, v9, v10, "Failed performing social profile update request, error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x21CEA1440](v12, -1, -1);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }

    else
    {
    }

    v19 = sub_2169CA578(v3);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      sub_2169CAE18();
      v20 = swift_allocError();
      *v21 = 0;
    }

    sub_21700E214();
  }

  v22 = *&a2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v23 = *(v22 + 16);
  v24 = a2;
  os_unfair_lock_lock(v23);
  sub_216CB2B0C();
  os_unfair_lock_unlock(*(v22 + 16));
}

uint64_t sub_216CB2A18(uint64_t a1)
{
  if (qword_280E31C10 != -1)
  {
    OUTLINED_FUNCTION_0_221();
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73BC0);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  v5 = OUTLINED_FUNCTION_22_6();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_1_157();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_216679000, v3, v4, "Did succeed in performing social profile update request", v7, 2u);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  if (*(a1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  return sub_2166C1D2C(v8);
}

void sub_216CB2B0C()
{
  os_unfair_lock_assert_owner(*(*&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock] + 16));
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  if (!v1 || (sub_216CB5CB4([v1 identifiers]), !v2))
  {
  }

  if (qword_280E31C10 != -1)
  {
    OUTLINED_FUNCTION_0_221();
    swift_once();
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_280E73BC0);
  v18 = v0;
  sub_21700DF14();
  v4 = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136643843;
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8548);
    v8 = sub_21700F154();
    sub_2166A85FC(v8, v9, &v19);
    OUTLINED_FUNCTION_47_18();

    *(v6 + 4) = v0;
    *(v6 + 12) = 2085;
    v10 = OUTLINED_FUNCTION_98();
    v13 = sub_2166A85FC(v10, v11, v12);

    *(v6 + 14) = v13;
    *(v6 + 22) = 1026;
    LODWORD(v13) = v18[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];

    *(v6 + 24) = v13;
    *(v6 + 28) = 2050;
    v14 = sub_216CAD29C();

    *(v6 + 30) = v14;
    *(v6 + 38) = 2082;
    v15 = sub_2166C1BB8(v18[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state]);
    v17 = sub_2166A85FC(v15, v16, &v19);

    *(v6 + 40) = v17;
    _os_log_impl(&dword_216679000, v4, v5, "User Social Profile status: current loaded profile: %{sensitive}s, socialProfileID: %{sensitive}s, isUserOnboarded: %{BOOL,public}d, pending follow requests: %{public}ld, current state: '%{public}s'", v6, 0x30u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  else
  {
  }
}

uint64_t sub_216CB2E08(void *a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E73BC0);
  v12 = a1;
  v13 = sub_217007C84();
  v14 = sub_21700ED84();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 136446210;
    swift_getErrorValue();
    v16 = sub_21700F884();
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a6;
    v22 = sub_2166A85FC(v16, v17, &v27);

    *(v15 + 4) = v22;
    a6 = v21;
    a4 = v20;
    a3 = v19;
    a2 = v18;
    _os_log_impl(&dword_216679000, v13, v14, "Error performing social profile update, error: '%{public}s'", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x21CEA1440](v26, -1, -1);
    MEMORY[0x21CEA1440](v15, -1, -1);
  }

  v23 = *&a2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v24 = a2;
  sub_21700DF14();
  sub_216E120B8(v23, v24, a3, a4 & 1, a6);
  return sub_21700E214();
}

void sub_216CB300C()
{
  OUTLINED_FUNCTION_46_28();
  sub_2166C1D2C(2);
  OUTLINED_FUNCTION_18_57();
  sub_216934F28();
  v1 = v8[3];
  sub_216697664(v8, &unk_27CABF7A0);
  if (v1)
  {
    sub_216CB07EC(v0 & 1);
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v2 = sub_217007CA4();
    __swift_project_value_buffer(v2, qword_280E73BC0);
    v3 = sub_217007C84();
    v4 = sub_21700EDA4();
    v5 = OUTLINED_FUNCTION_22_6();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_29_42(v7, 1.5282e-36);
      _os_log_impl(&dword_216679000, v3, v4, "Failed performing social profile update request, Social Onboarded status reverted back to: %{BOOL,public}d", v7, 8u);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }
  }
}

uint64_t sub_216CB3130(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_280E73BC0);
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = qword_21705D7A0[v6];
    _os_log_impl(&dword_216679000, v8, v9, "User requested to update social profile shared playlists with response: '%{public}ld'", v10, 0xCu);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  if (v6 == 1)
  {
    sub_21700E224();
    v27 = a4;
    sub_21700CC34();
  }

  else
  {
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136446210;
      v15 = sub_2169CA578(v6);
      if (v15)
      {
        v16 = v15;
        swift_getErrorValue();
        v17 = sub_21700F884();
        v19 = v18;
      }

      else
      {
        v19 = 0xE800000000000000;
        v17 = 0x726F727265206F6ELL;
      }

      v20 = sub_2166A85FC(v17, v19, &v27);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_216679000, v11, v12, "Received bad response attempting to perform social profile shared playlists edit, error: '%{public}s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v21 = sub_2169CA578(v6);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      sub_2169CAE18();
      v22 = swift_allocError();
      *v23 = 0;
    }

    sub_21700E214();
  }

  v24 = [objc_opt_self() activeAccount];
  v25 = [objc_allocWithZone(MEMORY[0x277D7FA50]) initWithUserIdentity_];

  [v25 updateSagaLibraryWithReason:3 completionHandler:0];
  *(a3 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = MEMORY[0x277D84F90];
}

uint64_t sub_216CB3464(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73BC0);
  v6 = a1;
  v7 = sub_217007C84();
  v8 = sub_21700ED84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_21700F884();
    v13 = sub_2166A85FC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, "Error attempting to perform social profile shared playlists edit, error: '%{public}s'", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  sub_21700E214();
  *(a3 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = MEMORY[0x277D84F90];
}

uint64_t sub_216CB360C()
{
  sub_21700DF14();
  v1 = sub_21700E724();
  sub_21700E664();
  return v1;
}

void sub_216CB368C(void *a1, id a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a2;
    if (qword_280E31C10 != -1)
    {
      swift_once();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_280E73BC0);
    v5 = a2;
    v6 = sub_217007C84();
    v7 = sub_21700ED84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36[0] = v9;
      *v8 = 136446210;
      swift_getErrorValue();
      v10 = sub_21700F884();
      v12 = sub_2166A85FC(v10, v11, v36);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_216679000, v6, v7, "User attempted to update Social Profile picture but failed error: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x21CEA1440](v9, -1, -1);
      MEMORY[0x21CEA1440](v8, -1, -1);
    }

    sub_21700E214();
    v13 = a2;
LABEL_26:

    return;
  }

  if (!a1)
  {
    return;
  }

  v14 = a1;
  if ([v14 responseStatusCode] != 201)
  {
    goto LABEL_20;
  }

  v15 = objc_opt_self();
  v16 = [v14 data];
  v17 = sub_217005FB4();
  v19 = v18;

  v20 = sub_217005F94();
  sub_21677A524(v17, v19);
  v36[0] = 0;
  v21 = [v15 JSONObjectWithData:v20 options:4 error:v36];

  if (!v21)
  {
    v27 = v36[0];
    v28 = sub_217005D34();

    swift_willThrow();
    goto LABEL_20;
  }

  v22 = v36[0];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_21700F364();
  sub_216934FBC();

  sub_216788110(v36);
  if (!v37[3])
  {
    sub_216697664(v37, &unk_27CABF7A0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_280E31C10 != -1)
    {
      swift_once();
    }

    v29 = sub_217007CA4();
    __swift_project_value_buffer(v29, qword_280E73BC0);
    v30 = v14;
    v31 = sub_217007C84();
    v32 = sub_21700ED84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134349056;
      *(v33 + 4) = [v30 responseStatusCode];

      _os_log_impl(&dword_216679000, v31, v32, "User attempted to update Social Profile picture but failed with status code: %{public}ld", v33, 0xCu);
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    else
    {

      v31 = v30;
    }

    sub_2169CAE18();
    v34 = swift_allocError();
    *v35 = 3;
    sub_21700E214();

    v13 = v34;
    goto LABEL_26;
  }

  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v23 = sub_217007CA4();
  __swift_project_value_buffer(v23, qword_280E73BC0);
  v24 = sub_217007C84();
  v25 = sub_21700EDA4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_216679000, v24, v25, "User successfully updated Social Profile picture", v26, 2u);
    MEMORY[0x21CEA1440](v26, -1, -1);
  }

  v36[0] = 0x6E656B6F74;
  v36[1] = 0xE500000000000000;
  sub_21700E224();
}

uint64_t sub_216CB3C04()
{
  v1 = (v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData);
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData + 8);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = *v1;
  sub_21677A404(*v1, *(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData + 8));
  sub_216CADA4C();
  v3 = v5;
  sub_21677A510(v4, v2);
  return v3;
}

uint64_t sub_216CB3CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingUserAttributes;
  swift_beginAccess();
  v9 = *&v4[v8];
  if (a2)
  {
    v33 = MEMORY[0x277D837D0];
    *&v31 = a1;
    *(&v31 + 1) = a2;
    sub_2166EF9C4(&v31, &v28);
    sub_21700DF14();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    v27 = v9;
    sub_2166EF9D4();
  }

  else
  {
    sub_21700DF14();
  }

  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);
  sub_21700DF14();
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = a2 != 0;

    _os_log_impl(&dword_216679000, v11, v12, "Performing initial user social onboarding request, includes artwork token: %{BOOL,public}d", v13, 8u);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  else
  {
  }

  sub_216CAE468(v9, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, *(&v28 + 1), v29, v30, v31, *(&v31 + 1), v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);

  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = a3;
  v22 = sub_216685F4C(0, &qword_280E29CD0);
  swift_retain_n();
  v23 = v4;
  v24 = sub_21700EE84();
  v33 = v22;
  v34 = MEMORY[0x277D225C0];
  *&v31 = v24;
  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(&v31);
}

uint64_t sub_216CB3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    sub_21700DF14();
    v9 = (v7 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      swift_beginAccess();
      v12 = *(*(a2 + 16) + 16);
      sub_21700DF14();
      if (v12 && (sub_2166AF66C(v11, v10), (v13 & 1) != 0))
      {
        swift_endAccess();
        sub_216F079D4();
      }

      else
      {
        swift_endAccess();
      }

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v14 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest;
  swift_beginAccess();
  *(a4 + v14) = MEMORY[0x277D84FA0];
}

uint64_t sub_216CB407C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);

  v11 = sub_217007C84();
  v12 = sub_21700EDA4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26[0] = v25;
    *v13 = 136446466;
    swift_beginAccess();
    v14 = sub_21700DF14();
    v15 = MEMORY[0x21CE9F660](v14, MEMORY[0x277D837D0]);
    v24 = v12;
    v16 = v9;
    v9 = a5;
    v17 = a4;
    v18 = a3;
    v20 = v19;

    v21 = sub_2166A85FC(v15, v20, v26);
    a3 = v18;
    a4 = v17;
    a5 = v9;
    LODWORD(v9) = v16;

    *(v13 + 4) = v21;
    *(v13 + 12) = 2050;
    *(v13 + 14) = qword_21705D7A0[v16];
    _os_log_impl(&dword_216679000, v11, v24, "User requested to follow multiple social profiles: %{public}s, response: '%{public}ld'", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  if (v9 != 1)
  {
    return sub_216CB3F44(a2, a5, a3, a4);
  }

  swift_beginAccess();
  sub_21700DF14();
  sub_21700CC34();

  v22 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest;
  swift_beginAccess();
  *(a4 + v22) = MEMORY[0x277D84FA0];
}

uint64_t sub_216CB42F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73BC0);

  v11 = a1;
  v12 = sub_217007C84();
  v13 = sub_21700ED84();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 136446466;
    swift_beginAccess();
    v15 = sub_21700DF14();
    v26 = a5;
    v16 = MEMORY[0x21CE9F660](v15, MEMORY[0x277D837D0]);
    v17 = a4;
    v19 = v18;

    v20 = sub_2166A85FC(v16, v19, &v27);
    a4 = v17;

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    swift_getErrorValue();
    v21 = sub_21700F884();
    v23 = sub_2166A85FC(v21, v22, &v27);
    a5 = v26;

    *(v14 + 14) = v23;
    _os_log_impl(&dword_216679000, v12, v13, "Error attempting to follow multiple social profiles: %{public}s, error: '%{public}s'", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v25, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  return sub_216CB3F44(a2, a3, a4, a5);
}

void sub_216CB4540(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v6 = *(v5 + 16);
  v7 = v2;
  os_unfair_lock_lock(v6);
  a2(a1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_216CB45C8()
{
  v1 = (v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_cachedFallbackFullname);
  if (*(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_cachedFallbackFullname + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_216685F4C(0, &qword_280E29D68);
    sub_21700D4D4();
    sub_21700E094();
    v3 = [v10 ams_activeiTunesAccount];
    if (v3 || (v3 = [v10 aa_primaryAppleAccount]) != 0)
    {
      v4 = v3;
      v5 = sub_2168A32FC(v3, &selRef_ams_fullName);
      if (v6)
      {
        v2 = v5;
        v7 = v6;
      }

      else
      {
        v2 = sub_2168A32FC(v4, &selRef_userFullName);
        v7 = v8;

        if (!v7)
        {
          v2 = 0;
          v7 = 0xE000000000000000;
        }
      }

      *v1 = v2;
      v1[1] = v7;
      sub_21700DF14();
    }

    else
    {

      v2 = 0;
    }
  }

  sub_21700DF14();
  return v2;
}

void sub_216CB4764()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock) + 16));
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_280E73BC0);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_216679000, v2, v3, "User Social Profile has updated", v4, 2u);
    MEMORY[0x21CEA1440](v4, -1, -1);
  }

  sub_216CB2B0C();
}

void sub_216CB4864(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock] + 16));
  v5 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded;
  if (v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] != v4)
  {
    if (qword_280E31C10 != -1)
    {
      swift_once();
    }

    v6 = sub_217007CA4();
    __swift_project_value_buffer(v6, qword_280E73BC0);
    v7 = v2;
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240448;
      *(v10 + 4) = a1 & 1;
      *(v10 + 8) = 1026;
      *(v10 + 10) = v2[v5];

      _os_log_impl(&dword_216679000, v8, v9, "User Social Profile isUserOnboarded state updated from: %{BOOL,public}d to: '%{BOOL,public}d'", v10, 0xEu);
      MEMORY[0x21CEA1440](v10, -1, -1);
    }

    else
    {

      v8 = v7;
    }

    sub_21700CC34();
  }
}

void sub_216CB49DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v7 = MEMORY[0x28223BE20](v39);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE598);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock] + 16));
  v17 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v42 = a1;
  sub_2168282D4(a1, v16, &qword_27CAB6D60);
  v40 = v17;
  sub_2168282D4(&v2[v17], &v16[v18], &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v16[v18], 1, v4) == 1)
    {
      v19 = v16;
LABEL_12:
      sub_216697664(v19, &qword_27CAB6D60);
      return;
    }

    goto LABEL_6;
  }

  sub_2168282D4(v16, v12, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(&v16[v18], 1, v4) == 1)
  {
    sub_216CB5FB0();
LABEL_6:
    sub_216697664(v16, &qword_27CABE598);
    v20 = v43;
    goto LABEL_7;
  }

  sub_216CB5DA8(&v16[v18], v6, type metadata accessor for Artwork);
  v36 = sub_21700C4A4();
  v20 = v43;
  if ((v36 & 1) == 0)
  {
    sub_216CB5FB0();
    sub_216CB5FB0();
    sub_216697664(v16, &qword_27CAB6D60);
    goto LABEL_7;
  }

  v37 = sub_21688ADC8(&v12[*(v4 + 20)], &v6[*(v4 + 20)]);
  sub_216CB5FB0();
  sub_216CB5FB0();
  sub_216697664(v16, &qword_27CAB6D60);
  if ((v37 & 1) == 0)
  {
LABEL_7:
    if (qword_280E31C10 != -1)
    {
      swift_once();
    }

    v21 = sub_217007CA4();
    __swift_project_value_buffer(v21, qword_280E73BC0);
    sub_2168282D4(v42, v20, &qword_27CAB6D60);
    v22 = v2;
    v23 = sub_217007C84();
    v24 = sub_21700EDA4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v25 = 136446466;
      v26 = v41;
      sub_2168282D4(v20, v41, &qword_27CAB6D60);
      v27 = sub_21700E594();
      v28 = v20;
      v30 = v29;
      sub_216697664(v28, &qword_27CAB6D60);
      v31 = sub_2166A85FC(v27, v30, &v44);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2082;
      sub_2168282D4(&v2[v40], v26, &qword_27CAB6D60);
      v32 = sub_21700E594();
      v34 = sub_2166A85FC(v32, v33, &v44);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_216679000, v23, v24, "User Social Profile artwork state updated from: %{public}s to: '%{public}s'", v25, 0x16u);
      v35 = v43;
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v35, -1, -1);
      MEMORY[0x21CEA1440](v25, -1, -1);

      return;
    }

    v19 = v20;
    goto LABEL_12;
  }
}

void sub_216CB4F5C(char a1, uint64_t *a2, const char *a3)
{
  v6 = v3;
  v7 = a1 & 1;
  os_unfair_lock_assert_owner(*(*&v6[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock] + 16));
  v8 = *a2;
  if (v6[*a2] != v7)
  {
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_280E73BC0);
    v10 = v6;
    oslog = sub_217007C84();
    v11 = sub_21700EDA4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_29_42(v12, 1.5282e-36);
      *(v13 + 8) = 1026;
      *(v13 + 10) = v6[v8];

      _os_log_impl(&dword_216679000, oslog, v11, a3, v12, 0xEu);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      v14 = oslog;
    }

    else
    {

      v14 = v10;
    }
  }
}

uint64_t sub_216CB50D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8540);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for UserSocialProfileDescriptor(0);
  v13 = (a2 + v12[5]);
  v15 = *v13;
  v14 = v13[1];
  v16 = (a1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID);
  *v16 = v15;
  v16[1] = v14;
  sub_21700DF14();

  sub_216CB07EC(*(a2 + v12[7]));
  sub_216CB0804(*(a2 + v12[8]));
  sub_2168282D4(a2 + v12[6], v11, &qword_27CAB6D60);
  sub_216CB0894(v11);
  sub_216CB0834(*(a2 + v12[9]));
  sub_216CB0864(*(a2 + v12[10]));
  v17 = a3;
  sub_216CB0794(a3);
  sub_216CB5D24(a2, v8);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  v18 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userSocialProfileDescriptor;
  swift_beginAccess();
  sub_216CB5BA4(v8, a1 + v18);
  swift_endAccess();
  if (a3)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  return sub_2166C1D2C(v19);
}

uint64_t sub_216CB52BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile);
  sub_21700CC34();

  sub_216CB040C();
  sub_216F07EC8();
}

uint64_t sub_216CB5334(uint64_t a1, void *a2, uint64_t a3)
{
  if (!sub_216CAD8A0())
  {
    return sub_216CB54D8(a3);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v6 = sub_216685F4C(0, &qword_280E29CD0);
  swift_retain_n();
  v7 = a2;
  v8 = sub_21700EE84();
  v10[3] = v6;
  v10[4] = MEMORY[0x277D225C0];
  v10[0] = v8;
  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void sub_216CB5444(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 1)
  {
    sub_216CB54D8(a2);
  }

  else
  {
    v3 = sub_2169CA578(v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      sub_2169CAE18();
      v4 = swift_allocError();
      *v5 = 0;
    }

    sub_21700E214();
  }
}

uint64_t sub_216CB54D8(uint64_t a1)
{
  v2 = v1;
  if (qword_280E31C10 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73BC0);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_216679000, v5, v6, "Finalizing user social onboarding with final request to update isOnboarded flag", v7, 2u);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0x72616F626E4F7369;
  *(inited + 40) = 0xEB00000000646564;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v9 = sub_21700E384();
  sub_216CAE468(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23[0], v23[1], v23[2], v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v2;
  v18 = sub_216685F4C(0, &qword_280E29CD0);
  swift_retain_n();
  v19 = v2;
  v20 = sub_21700EE84();
  v24 = v18;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v20;
  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

void sub_216CB5714(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 == 1)
  {
    v5 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest;
    swift_beginAccess();
    if (*(*(a3 + v5) + 16))
    {
      sub_216CAE644();
    }

    sub_2166B8854(1);

    sub_21700E224();
  }

  else
  {
    v6 = sub_2169CA578(v3);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      sub_2169CAE18();
      v7 = swift_allocError();
      *v8 = 0;
    }

    sub_21700E214();
  }
}

_BYTE *storeEnumTagSinglePayload for UserSocialProfileCoordinator.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216CB5AB8()
{
  result = qword_27CAC8530;
  if (!qword_27CAC8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8530);
  }

  return result;
}

uint64_t sub_216CB5B60@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_216CB5BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216CB5C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216CB5C84@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_216CB5CB4(void *a1)
{
  v2 = [a1 socialProfileID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_216CB5D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSocialProfileDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216CB5DA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216CB5E10()
{
  result = qword_280E2A480;
  if (!qword_280E2A480)
  {
    sub_21700B5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A480);
  }

  return result;
}

uint64_t objectdestroy_29Tm_0()
{

  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t sub_216CB5FB0()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t objectdestroy_47Tm_0()
{

  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroy_50Tm()
{

  OUTLINED_FUNCTION_8_97();

  return swift_deallocObject();
}

uint64_t sub_216CB61C4()
{
  sub_2167EF724(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 34, 7);
}

unint64_t sub_216CB6224()
{
  result = qword_280E3EDC0[0];
  if (!qword_280E3EDC0[0])
  {
    type metadata accessor for InvalidationAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3EDC0);
  }

  return result;
}

uint64_t sub_216CB627C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v42 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v41 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v40 = v6 - v5;
  v44 = sub_217005974();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  v24 = type metadata accessor for InvalidationAction();
  v25 = (a1 + v24[5]);
  v27 = *v25;
  v26 = v25[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v27;
  *(inited + 56) = v26;
  sub_21700DF14();
  v28 = sub_21700E384();
  sub_2167F3B8C(a1 + v24[6], v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_216B9E3C8(v15);
  }

  else
  {
    (*(v18 + 32))(v22, v15, v16);
    *(&v48 + 1) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(v18 + 16))(boxed_opaque_existential_1, v22, v16);
    sub_2166EF9C4(&v47, &v46);
    swift_isUniquelyReferenced_nonNull_native();
    v45 = v28;
    sub_2166EF9D4();
    v28 = v45;
    (*(v18 + 8))(v22, v16);
  }

  if (qword_280E30328 != -1)
  {
    swift_once();
  }

  v47 = 0u;
  v48 = 0u;
  v30 = qword_280E73B78;
  sub_2169FD23C(v28);

  sub_217005944();
  sub_2167F3BFC();
  sub_21700D4B4();
  v31 = v47;
  if (v47)
  {
    v32 = sub_217005924();
    [v31 postNotification_];

    goto LABEL_8;
  }

  if ((*(a1 + v24[7]) & 1) == 0)
  {

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    sub_216CB680C();
    swift_allocError();
    v37 = sub_21700E1E4();
    goto LABEL_18;
  }

  v33 = sub_21700F7D4();

  if (v33)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (*(a1 + v24[7]) == 1)
  {

LABEL_14:
    v35 = [objc_opt_self() defaultCenter];
    v36 = sub_217005924();
    [v35 postNotification_];

    goto LABEL_15;
  }

  v34 = sub_21700F7D4();

  if (v34)
  {
    goto LABEL_14;
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v41 + 104))(v40, *MEMORY[0x277D21CA8], v42);
  v37 = sub_21700E1F4();
LABEL_18:
  v38 = v37;
  (*(v8 + 8))(v12, v44);
  return v38;
}

unint64_t sub_216CB680C()
{
  result = qword_27CAC8578;
  if (!qword_27CAC8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8578);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InvalidationActionImplementation.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_216CB6910()
{
  result = qword_27CAC8580;
  if (!qword_27CAC8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8580);
  }

  return result;
}

uint64_t type metadata accessor for OpenPurchaseStorePageAction()
{
  result = qword_280E33710;
  if (!qword_280E33710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216CB69D8()
{
  result = sub_21700D284();
  if (v1 <= 0x3F)
  {
    result = sub_217005EF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216CB6A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v63 - v5;
  v75 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v72 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v71 = v9 - v8;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v69 = v11;
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v68 = v13 - v12;
  v14 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v80 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v74 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v28);
  v29 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v76 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  v79 = a1;
  sub_21700CE04();
  v35 = v81;
  (*(v16 + 16))(v20, v81, v14);
  v36 = v78;
  sub_21700D224();
  if (v36)
  {
    (*(v16 + 8))(v35, v14);
    return (*(v22 + 8))(v79, v80);
  }

  else
  {
    v66 = v16;
    v67 = v14;
    v38 = v73;
    v39 = v77;
    v40 = *(v76 + 32);
    v64 = v29;
    v40(v77, v34, v29);
    v41 = v79;
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v65 = *(v22 + 8);
    v65(v27, v80);
    v45 = v39;
    if (v44)
    {
      v78 = v44;
    }

    else
    {
      v46 = v68;
      sub_217006214();
      v42 = sub_2170061F4();
      v78 = v47;
      (*(v69 + 8))(v46, v70);
    }

    v48 = v38;
    v49 = v66;
    v50 = v74;
    v51 = type metadata accessor for OpenPurchaseStorePageAction();
    v52 = (v45 + *(v51 + 20));
    v53 = v78;
    *v52 = v42;
    v52[1] = v53;
    sub_21700CE04();
    sub_21700CD34();
    v54 = v50;
    v55 = v80;
    v56 = v65;
    v65(v54, v80);
    v57 = v75;
    if (__swift_getEnumTagSinglePayload(v48, 1, v75) == 1)
    {
      sub_216846CF0(v48);
      v58 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      *v59 = 7107189;
      v59[1] = 0xE300000000000000;
      v59[2] = v51;
      (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D22530], v58);
      swift_willThrow();
      (*(v49 + 8))(v81, v67);
      v56(v41, v55);
      (*(v76 + 8))(v77, v64);
    }

    else
    {
      (*(v49 + 8))(v81, v67);
      v56(v41, v55);
      v60 = v48;
      v61 = v71;
      v62 = *(v72 + 32);
      v62(v71, v60, v57);
      return (v62)(v77 + *(v51 + 24), v61, v57);
    }
  }
}

void sub_216CB70EC()
{
  sub_216CB71D0();
  if (v0 <= 0x3F)
  {
    sub_216B4E74C(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21680D428();
      if (v2 <= 0x3F)
      {
        sub_2167D1C30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216CB71D0()
{
  if (!qword_280E45830)
  {
    type metadata accessor for HorizontalLockup();
    sub_2166D4BC0(qword_280E410F0, type metadata accessor for HorizontalLockup);
    sub_2166D4BC0(&qword_280E410D0, type metadata accessor for HorizontalLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E45830);
    }
  }
}

uint64_t sub_216CB72C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  a3(__src);
  memcpy(__dst, __src, 0xB0uLL);
  __dst[22] = a1;
  __dst[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1B8);
  OUTLINED_FUNCTION_34();
  (*(v8 + 16))(a4, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8798);
  memcpy((a4 + *(v9 + 36)), __dst, 0xC0uLL);
  memcpy(v14, __src, sizeof(v14));
  v15 = a1;
  v16 = a2;
  sub_216683A80(__dst, &v11, &qword_27CAC87A0);
  return sub_2167FDB84(v14, &qword_27CAC87A0);
}

void *sub_216CB73E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  a3(__src);
  sub_216758A04(v4, a4);
  v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DD0) + 36));
  result = memcpy(v8, __src, 0x48uLL);
  v8[9] = a1;
  v8[10] = a2;
  return result;
}

void *sub_216CB7474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  a3(__src);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8740);
  (*(*(v8 - 8) + 16))(a4, v4, v8);
  v9 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8750) + 36));
  result = memcpy(v9, __src, 0x68uLL);
  v9[13] = a1;
  v9[14] = a2;
  return result;
}

uint64_t sub_216CB7540@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for HorizontalLockupView(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86B8);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v39 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86C0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v42 = *v1;
  sub_2167B5D2C();
  v12 = v5[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v7 + v12, 1, 1, v13);
  OUTLINED_FUNCTION_3_147();
  v40 = v1;
  sub_216CBE16C(v1, &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_4_129(v15);
  v16 = v5[14];
  *(v7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v17 = v7 + v5[15];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v7[5] = sub_216CBE10C;
  v7[6] = v15;
  v7[7] = 0;
  v7[8] = 0;
  sub_216F09B30();
  sub_2167FDB84(v7, &qword_27CAC86B8);
  v41 = v8;
  v18 = &v11[*(v8 + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v20 = sub_217008B34();
  v21 = __swift_project_value_buffer(v20, qword_280E73A88);
  v22 = sub_216CBE16C(v21, v18, MEMORY[0x277CDFBC8]);
  v39 = &v39;
  *(v18 + *(v19 + 36)) = 0;
  MEMORY[0x28223BE20](v22);
  v23 = v40;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_147();
  sub_216CBE16C(v23, &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_4_129(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216CBE22C();
  sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_2166D4BC0(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v27 = v43;
  sub_21700A394();

  sub_2167FDB84(v11, &qword_27CAC86C0);
  v44[3] = sub_2170067A4();
  v44[4] = sub_2166D4BC0(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v44);
  sub_216CCBFF8();
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86D8) + 36));
  sub_2167B7D58(v44, (v28 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D4BC0(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v28 = sub_217008CF4();
  v28[1] = v29;
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  v30 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86E0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8);
  sub_217008C54();
  *v30 = sub_216CB96A4();
  *(v30 + 8) = 0;
  v31 = sub_21700B3B4();
  v33 = v32;
  v34 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86E8) + 36);
  sub_216CBA548(v34);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86F0) + 36));
  *v35 = v31;
  v35[1] = v33;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC86F8);
  v38 = v27 + *(result + 36);
  *v38 = KeyPath;
  *(v38 + 8) = 0;
  return result;
}

uint64_t sub_216CB7B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_2170067A4();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8728);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8730);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8738);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8740);
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  *v8 = sub_2170091A4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8748);
  sub_216CB7F8C(a1, &v8[*(v20 + 44)]);
  v21 = [objc_opt_self() defaultMetrics];
  v22 = sub_216CB95C4();
  v23 = 118.0;
  if (v22)
  {
    v23 = 80.0;
  }

  [v21 scaledValueForValue_];

  sub_21700B3B4();
  sub_2170083C4();
  sub_2167C5834(v8, v12, &qword_27CAC8728);
  v24 = &v12[*(v10 + 44)];
  v25 = v38;
  *v24 = v37;
  *(v24 + 1) = v25;
  *(v24 + 2) = v39;
  v26 = &v16[*(v14 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8);
  sub_217008C54();
  *v26 = sub_216CB96A4();
  v26[8] = 0;
  sub_2167C5834(v12, v16, &qword_27CAC8730);
  sub_216CCBFF8();
  sub_216E310C4();
  (*(v33 + 8))(v5, v34);
  sub_2167FDB84(v16, &qword_27CAC8738);
  v27 = sub_21700B3C4();
  v36 = a1;
  sub_216CB7474(v27, v28, sub_216CBE474, v35);
  return (*(v31 + 8))(v19, v32);
}

uint64_t sub_216CB7F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8758);
  MEMORY[0x28223BE20](v3 - 8);
  v178 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v176 = (&v152 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v7 - 8);
  v173 = &v152 - v8;
  v171 = sub_2170067A4();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for HorizontalLockupView.BadgedTitleView(0);
  MEMORY[0x28223BE20](v172);
  v175 = (&v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v11 - 8);
  *&v161 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v152 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v152 - v17;
  v19 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v19);
  v168 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v167 = &v152 - v22;
  MEMORY[0x28223BE20](v23);
  v166 = &v152 - v24;
  MEMORY[0x28223BE20](v25);
  *&v165 = &v152 - v26;
  MEMORY[0x28223BE20](v27);
  *&v164 = &v152 - v28;
  MEMORY[0x28223BE20](v29);
  v162 = &v152 - v30;
  MEMORY[0x28223BE20](v31);
  *&v156 = &v152 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v152 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v152 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v152 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v152 - v43;
  v45 = type metadata accessor for HorizontalLockupView.ArtworkView(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v152 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8760);
  MEMORY[0x28223BE20](v157);
  v160 = &v152 - v48;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8768);
  MEMORY[0x28223BE20](v159);
  v179 = &v152 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v158 = &v152 - v51;
  MEMORY[0x28223BE20](v52);
  v180 = &v152 - v53;
  v174 = a1;
  sub_216DE9758();
  v54 = &v44[v19[21]];
  v163 = v18;
  sub_216683A80(v54, v18, &qword_27CAB6D60);
  sub_216CBE3C4(v44, type metadata accessor for HorizontalLockup);
  sub_216DE9758();
  sub_216683A80(&v41[v19[19]], v15, &qword_27CAB6A00);
  sub_216CBE3C4(v41, type metadata accessor for HorizontalLockup);
  *&v155 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v15, 1, v155) == 1)
  {
    sub_2167FDB84(v15, &qword_27CAB6A00);
    v55 = 23;
  }

  else
  {
    v55 = *v15;
    sub_216CBE3C4(v15, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(__dst[0]) = v55;
  v56 = sub_216E41068(__dst, 0);
  v58 = v57;
  sub_216DE9758();
  v59 = v38[v19[15]];
  sub_216CBE3C4(v38, type metadata accessor for HorizontalLockup);
  sub_216DE9758();
  v60 = v35[v19[11]];
  sub_216CBE3C4(v35, type metadata accessor for HorizontalLockup);
  sub_2167C5834(v163, v47, &qword_27CAB6D60);
  v61 = &v47[v45[5]];
  *v61 = v56;
  v61[1] = v58;
  v47[v45[6]] = v59;
  v62 = v19;
  v47[v45[7]] = v60;
  v63 = v45[8];
  *&v47[v63] = swift_getKeyPath();
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v64 = v156;
  sub_216DE9758();
  v65 = v161;
  sub_216683A80(v64 + v19[19], v161, &qword_27CAB6A00);
  if (__swift_getEnumTagSinglePayload(v65, 1, v155) == 1)
  {
    sub_216CBE3C4(v64, type metadata accessor for HorizontalLockup);
    sub_2167FDB84(v65, &qword_27CAB6A00);
  }

  else
  {
    memcpy(__dst, (v65 + 8), 0x69uLL);
    sub_21686BC90(__dst, __src);
    sub_216CBE3C4(v65, type metadata accessor for ContentDescriptor);
    v66 = *(v64 + v19[14]);
    sub_216CBE3C4(v64, type metadata accessor for HorizontalLockup);
    if (v66 >= 1)
    {
      v156 = __dst[1];
      v161 = __dst[0];
      v154 = __dst[3];
      v155 = __dst[2];
      v152 = __dst[5];
      v153 = __dst[4];
      v67 = *&__dst[6];
      v68 = BYTE8(__dst[6]);
      goto LABEL_10;
    }

    sub_21686BCEC(__dst);
  }

  v67 = 0;
  v68 = 0;
  v66 = 0;
  v161 = xmmword_217016ED0;
  v156 = 0u;
  v155 = 0u;
  v154 = 0u;
  v153 = 0u;
  v152 = 0u;
LABEL_10:
  v69 = v160;
  sub_216CBE418(v47, v160, type metadata accessor for HorizontalLockupView.ArtworkView);
  v70 = v69 + *(v157 + 36);
  v71 = v156;
  *v70 = v161;
  *(v70 + 16) = v71;
  v72 = v154;
  *(v70 + 32) = v155;
  *(v70 + 48) = v72;
  v73 = v152;
  *(v70 + 64) = v153;
  *(v70 + 80) = v73;
  *(v70 + 96) = v67;
  *(v70 + 104) = v68;
  *(v70 + 112) = v66;
  v74 = sub_217009CD4();
  sub_217007F24();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v158;
  sub_2167C5834(v69, v158, &qword_27CAC8760);
  v84 = v83 + *(v159 + 36);
  *v84 = v74;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  sub_2167C5834(v83, v180, &qword_27CAC8768);
  v85 = v162;
  sub_216DE9758();
  v86 = *(v85 + v19[17] + 8);
  sub_21700DF14();
  sub_216CBE3C4(v85, type metadata accessor for HorizontalLockup);
  if (v86)
  {
    sub_217009D54();
    v87 = sub_21700A094();
    v89 = v88;
    v91 = v90;

    sub_217009D94();
    v92 = sub_217009FA4();
    v94 = v93;
    v96 = v95;
    sub_21678817C(v87, v89, v91 & 1);

    LODWORD(__dst[0]) = sub_217009814();
    v162 = sub_21700A044();
    *&v161 = v97;
    LOBYTE(v87) = v98;
    v160 = v99;
    sub_21678817C(v92, v94, v96 & 1);

    v100 = sub_217009CD4();
    sub_217007F24();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    LOBYTE(__dst[0]) = v87 & 1;
    LOBYTE(__src[0]) = 0;
    v159 = v87 & 1;
    v158 = v100;
  }

  else
  {
    v162 = 0;
    *&v161 = 0;
    v160 = 0;
    v158 = 0;
    v159 = 0;
    v102 = 0;
    v104 = 0;
    v106 = 0;
    v108 = 0;
  }

  v109 = v164;
  sub_216DE9758();
  v110 = v109 + v19[6];
  v111 = *v110;
  v112 = *(v110 + 8);
  v113 = *(v110 + 16);
  sub_216B87640(*v110, v112, *(v110 + 16));
  sub_216CBE3C4(v109, type metadata accessor for HorizontalLockup);
  if (v113 == 255)
  {
    v111 = 0;
    v112 = 0;
  }

  else if (v113)
  {
    v114 = sub_216B6BEC8();
    v116 = v115;
    sub_216788164(v111, v112, v113);
    v111 = v114;
    v112 = v116;
  }

  v117 = v165;
  sub_216DE9758();
  v118 = (v117 + v19[8]);
  v119 = v118[1];
  *&v120 = *v118;
  v164 = v120;
  sub_21700DF14();
  sub_216CBE3C4(v117, type metadata accessor for HorizontalLockup);
  v121 = v166;
  sub_216DE9758();
  v122 = (v121 + v19[9]);
  v123 = v122[1];
  *&v124 = *v122;
  v165 = v124;
  sub_21700DF14();
  sub_216CBE3C4(v121, type metadata accessor for HorizontalLockup);
  v125 = v167;
  sub_216DE9758();
  LOBYTE(v121) = *(v125 + v62[13]);
  sub_216CBE3C4(v125, type metadata accessor for HorizontalLockup);
  v126 = v168;
  sub_216DE9758();
  v127 = (v126 + v62[16]);
  v128 = *v127;
  v129 = v127[1];
  sub_21700DF14();
  sub_216CBE3C4(v126, type metadata accessor for HorizontalLockup);
  v130 = v169;
  sub_216CCBFF8();
  v131 = v173;
  sub_216A8EA78(v173);
  (*(v170 + 8))(v130, v171);
  v132 = sub_217005EF4();
  LOBYTE(v130) = __swift_getEnumTagSinglePayload(v131, 1, v132) != 1;
  sub_2167FDB84(v131, &qword_27CABA820);
  *&v133 = v164;
  *(&v133 + 1) = v119;
  v134 = v175;
  *v175 = v111;
  *(v134 + 8) = v112;
  *&v135 = v165;
  *(&v135 + 1) = v123;
  *(v134 + 16) = v133;
  *(v134 + 32) = v135;
  *(v134 + 48) = v121 & 1;
  *(v134 + 49) = 0;
  *(v134 + 56) = v128;
  *(v134 + 64) = v129;
  *(v134 + 72) = v130;
  v136 = *(v172 + 44);
  *(v134 + v136) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v137 = sub_2170091A4();
  v138 = v176;
  *v176 = v137;
  *(v138 + 8) = 0;
  *(v138 + 16) = 0;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8770);
  sub_216CB9054(v134, v138 + *(v139 + 44));
  v140 = v179;
  sub_216683A80(v180, v179, &qword_27CAC8768);
  v141 = v178;
  sub_216683A80(v138, v178, &qword_27CAC8758);
  v142 = v140;
  v143 = v177;
  sub_216683A80(v142, v177, &qword_27CAC8768);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8778);
  v145 = *(v144 + 48);
  v146 = v162;
  __src[0] = v162;
  v147 = v161;
  __src[1] = v161;
  v148 = v159;
  __src[2] = v159;
  v149 = v160;
  __src[3] = v160;
  v150 = v158;
  __src[4] = v158;
  __src[5] = v102;
  __src[6] = v104;
  __src[7] = v106;
  __src[8] = v108;
  LOBYTE(__src[9]) = 0;
  memcpy((v143 + v145), __src, 0x49uLL);
  sub_216683A80(v141, v143 + *(v144 + 64), &qword_27CAC8758);
  sub_216683A80(__src, __dst, &qword_27CAC8780);
  sub_2167FDB84(v138, &qword_27CAC8758);
  sub_2167FDB84(v180, &qword_27CAC8768);
  sub_2167FDB84(v141, &qword_27CAC8758);
  *&__dst[0] = v146;
  *(&__dst[0] + 1) = v147;
  *&__dst[1] = v148;
  *(&__dst[1] + 1) = v149;
  *&__dst[2] = v150;
  *(&__dst[2] + 1) = v102;
  *&__dst[3] = v104;
  *(&__dst[3] + 1) = v106;
  *&__dst[4] = v108;
  BYTE8(__dst[4]) = 0;
  sub_2167FDB84(__dst, &qword_27CAC8780);
  sub_2167FDB84(v179, &qword_27CAC8768);
  return sub_216CBE3C4(v134, type metadata accessor for HorizontalLockupView.BadgedTitleView);
}

uint64_t sub_216CB9054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HorizontalLockupView.BadgedTitleView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_216CBE16C(a1, &v18 - v8, type metadata accessor for HorizontalLockupView.BadgedTitleView);
  if (sub_216CB9270())
  {
    v18 = 0;
    v19 = 0;
    sub_216CBE4BC();
    sub_217009554();
    v10 = v20;
    v11 = v21;
    if (v22)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if ((sub_216CB94A8() & 1) == 0)
    {
      v10 = 0;
      v13 = -256;
      goto LABEL_11;
    }

    v18 = 0x403C000000000000;
    v19 = 256;
    sub_216CBE4BC();
    sub_217009554();
    v10 = v20;
    v11 = v21;
    if (v22)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = v12 | v11;
LABEL_11:
  sub_216CBE16C(v9, v6, type metadata accessor for HorizontalLockupView.BadgedTitleView);
  sub_216CBE16C(v6, a2, type metadata accessor for HorizontalLockupView.BadgedTitleView);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8788);
  v15 = a2 + *(v14 + 48);
  *v15 = 0x4024000000000000;
  *(v15 + 8) = 0;
  v16 = a2 + *(v14 + 64);
  *v16 = v10;
  *(v16 + 8) = v13;
  sub_216CBE3C4(v9, type metadata accessor for HorizontalLockupView.BadgedTitleView);
  return sub_216CBE3C4(v6, type metadata accessor for HorizontalLockupView.BadgedTitleView);
}

uint64_t sub_216CB9270()
{
  v0 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v3);
  v5 = &v16[-v4 - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7 - 8];
  sub_216DE9758();
  sub_216683A80(&v8[v0[10]], v16, &qword_27CAB6DB0);
  sub_216CBE3C4(v8, type metadata accessor for HorizontalLockup);
  v9 = v17;
  sub_2167FDB84(v16, &qword_27CAB6DB0);
  if (!v9)
  {
    goto LABEL_7;
  }

  sub_216DE9758();
  v10 = v5[v0[11]];
  sub_216CBE3C4(v5, type metadata accessor for HorizontalLockup);
  if (v10 != 1)
  {
    v11 = sub_21700F7D4();

    if (v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

LABEL_5:
  sub_216DE9758();
  v12 = v2[v0[15]];
  sub_216CBE3C4(v2, type metadata accessor for HorizontalLockup);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21700F7D4();
  }

  return v13 & 1;
}

uint64_t sub_216CB94A8()
{
  v0 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_216CB9270())
  {
    v3 = 0;
  }

  else
  {
    sub_216DE9758();
    v4 = v2[*(v0 + 44)];
    sub_216CBE3C4(v2, type metadata accessor for HorizontalLockup);
    if (v4 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_21700F7D4();
    }
  }

  return v3 & 1;
}

uint64_t sub_216CB95C4()
{
  v0 = type metadata accessor for HorizontalLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9758();
  v4 = v3[*(v1 + 68)];
  sub_216CBE3C4(v3, type metadata accessor for HorizontalLockup);
  if (v4 != 1)
  {
    LOBYTE(v4) = sub_21700F7D4();
  }

  return v4 & 1;
}

double sub_216CB96A4()
{
  v0 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v0);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = 0.0;
  if ((sub_216CB9270() & 1) == 0)
  {
    sub_216DE9758();
    v4 = v2[*(v0 + 44)];
    sub_216CBE3C4(v2, type metadata accessor for HorizontalLockup);
    if (v4 == 1)
    {

LABEL_5:
      type metadata accessor for HorizontalLockupView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      sub_2170082C4();
      return v7[1] + 10.0;
    }

    v5 = sub_21700F7D4();

    if (v5)
    {
      goto LABEL_5;
    }
  }

  return v3;
}

uint64_t sub_216CB9804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCBFF8();
  v6 = sub_216EB939C();
  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = v6 & 1;
  sub_21700B3B4();
  sub_2170083C4();
  v7 = v18[4];
  LOBYTE(v3) = v19;
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = sub_217009CB4();
  result = sub_217007F24();
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v3;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_216CB9978@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCBFF8();
  sub_216DE9758();
  swift_storeEnumTagMultiPayload();
  sub_2168A9980();
  sub_216CBE3C4(v2, type metadata accessor for MenuContext);
  sub_216CBE3C4(v5, type metadata accessor for HorizontalLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216CBE418(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216CBE418(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_216BC5120;
  v24[1] = v22;
  return result;
}

uint64_t sub_216CB9CB0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v51 = sub_2170067A4();
  v1 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v4);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v50 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v50 - v21;
  sub_216DE9758();
  v54 = v4;
  sub_216683A80(&v10[*(v4 + 84)], v13, &qword_27CAB6D60);
  sub_216CBE3C4(v10, type metadata accessor for HorizontalLockup);
  v23 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_2167FDB84(v13, &qword_27CAB6D60);
    v24 = sub_21700C4B4();
    v25 = v16;
    v26 = 1;
  }

  else
  {
    v24 = sub_21700C4B4();
    (*(*(v24 - 8) + 16))(v16, v13, v24);
    sub_216CBE3C4(v13, type metadata accessor for Artwork);
    v25 = v16;
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  sub_216CCBFF8();
  v27 = v51;
  if ((*(v1 + 88))(v3, v51) == *MEMORY[0x277D2A418])
  {
    v28 = 6;
  }

  else
  {
    v28 = 7;
  }

  (*(v1 + 8))(v3, v27);
  sub_21700C414();
  sub_2167C5834(v16, v19, &qword_27CABF770);
  v29 = &v19[v17[5]];
  *v29 = 0;
  *(v29 + 1) = v28;
  *&v19[v17[6]] = 0x3FF0000000000000;
  *&v19[v17[7]] = 0x4024000000000000;
  v19[v17[8]] = 0;
  v30 = v52;
  sub_216DE9758();
  v31 = v54;
  v32 = (v30 + *(v54 + 32));
  v34 = *v32;
  v33 = v32[1];
  sub_21700DF14();
  sub_216CBE3C4(v30, type metadata accessor for HorizontalLockup);
  v35 = v53;
  sub_216DE9758();
  v36 = (v35 + *(v31 + 36));
  v38 = *v36;
  v37 = v36[1];
  sub_21700DF14();
  sub_216CBE3C4(v35, type metadata accessor for HorizontalLockup);
  sub_216CBE418(v19, v22, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
  v39 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v40 = &v22[v39[5]];
  *v40 = v34;
  *(v40 + 1) = v33;
  v41 = &v22[v39[6]];
  *v41 = v38;
  *(v41 + 1) = v37;
  v42 = &v22[v39[7]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v22[v39[8]] = 1;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v39);
  v43 = v55;
  sub_2167C5834(v22, v55, &qword_27CAB7528);
  v44 = type metadata accessor for ContextMenuPreview(0);
  *(v43 + v44[5]) = 0;
  v45 = v43 + v44[6];
  *(v45 + 32) = 0;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  v46 = v44[7];
  sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v43 + v46, 1, 1, v24);
  v47 = v44[8];
  v48 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(v43 + v47, 1, 1, v48);
}

uint64_t sub_216CBA254()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HorizontalLockup();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9758();
  sub_216683A80(&v13[*(v11 + 48)], &v34, &qword_27CAB6DB0);
  sub_216CBE3C4(v13, type metadata accessor for HorizontalLockup);
  sub_216CCBFF8();
  type metadata accessor for HorizontalLockupView(0);
  v14 = sub_216C0C534(&v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(&v34, v9, &v29, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_2167FDB84(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_2167FDB84(&v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_2167FDB84(&v34, &qword_27CAB6DB0);
}

uint64_t sub_216CBA548@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8700);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = type metadata accessor for HorizontalLockup();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_216CB9270())
  {
    goto LABEL_6;
  }

  sub_216DE9758();
  v8 = v7[*(v5 + 44)];
  sub_216CBE3C4(v7, type metadata accessor for HorizontalLockup);
  if (v8 != 1)
  {
    v9 = sub_21700F7D4();

    if (v9)
    {
      goto LABEL_5;
    }

LABEL_6:
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v11, 1, v2);
  }

LABEL_5:
  *v4 = sub_2170091A4();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8708);
  sub_216CBA734(&v4[*(v10 + 44)]);
  sub_2167C5834(v4, a1, &qword_27CAC8700);
  v11 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v2);
}

uint64_t sub_216CBA734@<X0>(void *a1@<X8>)
{
  v90 = a1;
  v88 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v88);
  v89 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_21700D704();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21700D284();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for HorizontalLockup();
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  v20 = type metadata accessor for MenuConfiguration(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v66 - v24;
  v83 = sub_2170067A4();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for HorizontalLockupView.ContextMenuButton(0);
  MEMORY[0x28223BE20](v77);
  v81 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8710);
  MEMORY[0x28223BE20](v75);
  v80 = &v66 - v28;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8718);
  MEMORY[0x28223BE20](v79);
  v86 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v76 = &v66 - v31;
  MEMORY[0x28223BE20](v32);
  v84 = &v66 - v33;
  v78 = v26;
  sub_216CCBFF8();
  sub_216DE9758();
  v34 = &v19[v8[21]];
  v87 = v6;
  sub_216683A80(v34, v6, &qword_27CAB6A00);
  sub_216CBE3C4(v19, type metadata accessor for HorizontalLockup);
  sub_216DE9758();
  v35 = &v16[v8[22]];
  v36 = *(v35 + 1);
  v73 = *v35;
  v74 = v36;
  sub_21700DF14();
  sub_216CBE3C4(v16, type metadata accessor for HorizontalLockup);
  sub_216DE9758();
  sub_216683A80(&v13[v8[20]], v93, &qword_27CAB6DB0);
  sub_216CBE3C4(v13, type metadata accessor for HorizontalLockup);
  sub_216DE9758();
  sub_216683A80(&v10[v8[12]], v91, &qword_27CAB6DB0);
  sub_216CBE3C4(v10, type metadata accessor for HorizontalLockup);
  v37 = v92;
  if (v92)
  {
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v38 = v67;
    sub_21700CE54();
    v39 = v69;
    sub_21700D274();
    v37 = sub_21700D6C4();
    v41 = v40;
    (*(v71 + 8))(v39, v72);
    (*(v68 + 8))(v38, v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
  }

  else
  {
    sub_2167FDB84(v91, &qword_27CAB6DB0);
    v41 = 0;
  }

  v42 = v89;
  swift_storeEnumTagMultiPayload();
  v43 = v87;
  sub_216683A80(v87, v22, &qword_27CAB6A00);
  sub_216CBE16C(v42, &v22[v20[5]], type metadata accessor for MenuContext);
  v44 = &v22[v20[6]];
  v45 = v74;
  *v44 = v73;
  *(v44 + 1) = v45;
  *&v22[v20[7]] = 0;
  sub_216683A80(v93, &v22[v20[8]], &qword_27CAB6DB0);
  if (!v41)
  {
    v37 = 0;
    v41 = 0xE000000000000000;
  }

  sub_216CBE3C4(v42, type metadata accessor for MenuContext);
  sub_2167FDB84(v93, &qword_27CAB6DB0);
  sub_2167FDB84(v43, &qword_27CAB6A00);
  v46 = &v22[v20[9]];
  *v46 = v37;
  v46[1] = v41;
  v47 = v85;
  sub_216CBE418(v22, v85, type metadata accessor for MenuConfiguration);
  v48 = v81;
  (*(v82 + 32))(v81, v78, v83);
  sub_216CBE418(v47, v48 + *(v77 + 20), type metadata accessor for MenuConfiguration);
  v49 = v80;
  v50 = &v80[*(v75 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B58);
  sub_217008C54();
  *v50 = 0;
  sub_216CBE418(v48, v49, type metadata accessor for HorizontalLockupView.ContextMenuButton);
  LOBYTE(v50) = sub_217009CD4();
  sub_217007F24();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v76;
  sub_2167C5834(v49, v76, &qword_27CAC8710);
  v60 = v59 + *(v79 + 36);
  *v60 = v50;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  v61 = v84;
  sub_2167C5834(v59, v84, &qword_27CAC8718);
  v62 = v86;
  sub_216683A80(v61, v86, &qword_27CAC8718);
  v63 = v90;
  *v90 = 0;
  *(v63 + 8) = 1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8720);
  sub_216683A80(v62, v63 + *(v64 + 48), &qword_27CAC8718);
  sub_2167FDB84(v61, &qword_27CAC8718);
  return sub_2167FDB84(v62, &qword_27CAC8718);
}

uint64_t sub_216CBB0EC@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v68 - v3;
  v4 = sub_21700C444();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v68 - v13;
  v79 = sub_217007474();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v74 = *(v19 - 8);
  v75 = v19;
  MEMORY[0x28223BE20](v19);
  v73 = &v68 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC21D0);
  MEMORY[0x28223BE20](v71);
  v83 = &v68 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8880);
  MEMORY[0x28223BE20](v70);
  v23 = &v68 - v22;
  v86 = sub_217009294();
  v24 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for HorizontalLockupView.ArtworkView(0);
  v26 = *(v1 + *(v69 + 24));
  v72 = v23;
  if (v26 == 1)
  {

    v27 = 64.0;
  }

  else
  {
    v28 = sub_21700F7D4();

    if (v28)
    {
      v27 = 64.0;
    }

    else
    {
      v27 = 102.0;
    }
  }

  v29 = [objc_opt_self() defaultMetrics];
  [v29 scaledValueForValue_];
  v31 = v30;

  if (v27 >= v31)
  {
    v27 = v31;
  }

  if (v26)
  {
    v32 = v27 * 0.5;
    v33 = MEMORY[0x277CE0128];
  }

  else
  {
    if (sub_21700F7D4())
    {
      v32 = v27 * 0.5;
    }

    else
    {
      v32 = 5.0;
    }

    v34 = sub_21700F7D4();
    v33 = MEMORY[0x277CE0118];
    if (v34)
    {
      v33 = MEMORY[0x277CE0128];
    }
  }

  v35 = v1;
  (*(v24 + 104))(v85, *v33, v86);
  sub_216683A80(v1, v11, &qword_27CAB6D60);
  v36 = type metadata accessor for Artwork();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v36);
  v38 = v81;
  if (EnumTagSinglePayload == 1)
  {
    sub_2167FDB84(v11, &qword_27CAB6D60);
    v39 = sub_21700C4B4();
    v40 = v14;
    v41 = 1;
  }

  else
  {
    v42 = sub_21700C4B4();
    (*(*(v42 - 8) + 16))(v14, v11, v42);
    sub_216CBE3C4(v11, type metadata accessor for Artwork);
    v40 = v14;
    v41 = 0;
    v39 = v42;
    v35 = v1;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  v43 = v80;
  sub_217007434();
  sub_216683A80(v35, v8, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v8, 1, v36) == 1)
  {
    sub_2167FDB84(v8, &qword_27CAB6D60);
    v44 = v82;
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v82);
    v45 = v78;
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) != 1)
    {
      sub_2167FDB84(v43, &qword_27CAB7530);
    }
  }

  else
  {
    v44 = v82;
    (*(v38 + 16))(v43, &v8[*(v36 + 20)], v82);
    sub_216CBE3C4(v8, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
    v45 = v78;
    (*(v38 + 32))(v78, v43, v44);
  }

  v46 = v76;
  sub_2170073E4();
  (*(v38 + 8))(v45, v44);
  v47 = *(v77 + 8);
  v48 = v16;
  v49 = v79;
  v47(v48, v79);
  v50 = (v35 + *(v69 + 20));
  v51 = *v50;
  v52 = v50[1];
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = v52;
  sub_2167B8890(v51, v52);
  sub_2167C505C();
  v54 = v73;
  sub_2170073F4();

  v47(v46, v49);
  v55 = v83;
  (*(v74 + 32))(v83, v54, v75);
  v56 = v72;
  *(v55 + *(v71 + 36)) = xmmword_217026E20;
  v57 = v56 + *(v70 + 36);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v58 = (v57 + *(v82 + 36));
  v59 = sub_217008B44();
  v60 = v85;
  v61 = v86;
  (*(v24 + 16))(v58 + *(v59 + 20), v85, v86);
  *v58 = v32;
  v58[1] = v32;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v62 = qword_280E73AA0;
  v63 = byte_280E73AA8;
  v64 = qword_280E73AB0;
  (*(v24 + 8))(v60, v61);
  v65 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8888) + 36);
  sub_216CBE16C(v58, v65, MEMORY[0x277CDFC08]);
  *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
  sub_2167C5834(v55, v56, &qword_27CAC21D0);
  *v57 = v62;
  *(v57 + 8) = v63;
  *(v57 + 16) = v64;
  v66 = v57 + *(v82 + 40);
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  sub_2167C5834(v56, v84, &qword_27CAC8880);
}

uint64_t sub_216CBBB28@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8838);
  sub_216CBBBB0(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8840);
  v6 = a1 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_216CBBBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8848);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8850);
  MEMORY[0x28223BE20](v11);
  v13 = (&v66 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8858);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v19 = *(a1 + 64);
  v89 = &v66 - v17;
  v90 = v7;
  if (v19)
  {
    v20 = *(a1 + 56);
    v21 = sub_21700DF14();
    if (sub_216CBC448(v21))
    {
      *v13 = v20;
      v13[1] = v19;
      v22 = type metadata accessor for HorizontalLockupView.LiveBadgeView(0);
      v96 = 0x4014000000000000;
      sub_2167CD8D8();
      sub_2170082B4();
      v23 = *(v22 + 24);
      sub_217009DE4();
      v24 = *MEMORY[0x277CE09A0];
      v25 = sub_217009D84();
      (*(*(v25 - 8) + 104))(v10, v24, v25);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v25);
      v26 = sub_217009DF4();
      sub_2167FDB84(v10, &qword_27CAB81D0);
      *(v13 + v23) = v26;
      v18 = v89;
      v7 = v90;
      v27 = sub_217009CA4();
      sub_217007F24();
      v28 = v13 + *(v11 + 36);
      *v28 = v27;
      *(v28 + 1) = v29;
      *(v28 + 2) = v30;
      *(v28 + 3) = v31;
      *(v28 + 4) = v32;
      v28[40] = 0;
      sub_2167C5834(v13, v18, &qword_27CAC8850);
      v33 = 0;
      goto LABEL_6;
    }
  }

  v33 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v18, v33, 1, v11);
  *v7 = sub_2170091A4();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8860);
  sub_216CBC5D4(a1, &v7[*(v34 + 44)]);
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v37 = *(a1 + 48);
  v38 = *(a1 + 49);
  v39 = *(a1 + 72);
  v40 = qword_27CAB6090;
  sub_21700DF14();
  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_27CAC8690;

  v91 = sub_217009184();
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D4BC0(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v42 = sub_217008CF4();
  if (v36)
  {
    v44 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v44 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = v35;
      v92[0] = v42;
      v92[1] = v43;
      v92[2] = v35;
      v92[3] = v36;
      LOBYTE(v92[4]) = v37;
      BYTE1(v92[4]) = v38;
      *(&v92[4] + 2) = v113;
      HIWORD(v92[4]) = v114;
      v92[5] = v41;
      LOBYTE(v92[6]) = v39;
      *(&v92[6] + 1) = *v112;
      HIDWORD(v92[6]) = *&v112[3];
      v92[7] = v91;
      v82 = v92[6];
      v83 = v43;
      v84 = v42;
      v96 = v42;
      v97 = v43;
      v98 = v35;
      v99 = v36;
      v86 = v36;
      LOBYTE(v100) = v37;
      BYTE1(v100) = v38;
      HIWORD(v100) = v114;
      *(&v100 + 2) = v113;
      v101 = v41;
      LOBYTE(v102) = v39;
      v46 = v92[4];
      HIDWORD(v102) = *&v112[3];
      *(&v102 + 1) = *v112;
      v103 = v91;
      sub_21680DAEC(v92, v94);
      sub_21680DB48(&v96);
      v77 = v41;
      goto LABEL_16;
    }
  }

  v83 = 0;
  v84 = 0;
  v45 = 0;
  v86 = 0;
  v46 = 0;
  v77 = 0;
  v82 = 0;
  v91 = 0;
LABEL_16:
  KeyPath = swift_getKeyPath();

  v80 = sub_21700AD14();
  v79 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v115 = 0;
  v47 = *(a1 + 40);
  if (v47)
  {
    v74 = *(a1 + 32);
    v75 = MEMORY[0x277D84F90];
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  v87 = v41;
  v48 = qword_27CAB6098;
  v73 = v47;
  sub_21700DF14();
  if (v48 != -1)
  {
    swift_once();
  }

  v71 = qword_27CAC8698;
  v49 = swift_getKeyPath();

  v69 = sub_21700AD34();
  v68 = swift_getKeyPath();
  v67 = swift_getKeyPath();
  v111 = 0;
  v50 = v88;
  sub_216683A80(v89, v88, &qword_27CAC8858);
  v51 = v85;
  sub_216683A80(v90, v85, &qword_27CAC8848);
  v52 = v50;
  v53 = v76;
  sub_216683A80(v52, v76, &qword_27CAC8858);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8868);
  sub_216683A80(v51, v53 + v54[12], &qword_27CAC8848);
  v55 = v54[16];
  v92[0] = v84;
  v92[1] = v83;
  v72 = v45;
  v92[2] = v45;
  v92[3] = v86;
  v92[4] = v46;
  v92[5] = v77;
  v70 = v46;
  v92[6] = v82;
  v92[7] = v91;
  v92[8] = KeyPath;
  v92[9] = v87;
  v92[10] = v79;
  v92[11] = v80;
  v92[12] = v78;
  v92[13] = 2;
  LOBYTE(v92[14]) = 0;
  memcpy((v53 + v55), v92, 0x71uLL);
  v56 = v54[20];
  v58 = v73;
  v57 = v74;
  v93[0] = v74;
  v93[1] = v73;
  v59 = v75;
  v93[2] = 0;
  v93[3] = v75;
  v60 = v49;
  v93[4] = v49;
  v61 = v71;
  v63 = v68;
  v62 = v69;
  v93[5] = v71;
  v93[6] = v68;
  v64 = v67;
  v93[7] = v69;
  v93[8] = v67;
  v93[9] = 2;
  LOBYTE(v93[10]) = 0;
  memcpy((v53 + v56), v93, 0x51uLL);
  sub_216683A80(v92, &v96, &qword_27CABF608);
  sub_216683A80(v93, &v96, &qword_27CABF610);
  sub_2167FDB84(v90, &qword_27CAC8848);
  sub_2167FDB84(v89, &qword_27CAC8858);
  v94[0] = v57;
  v94[1] = v58;
  v94[2] = 0;
  v94[3] = v59;
  v94[4] = v60;
  v94[5] = v61;
  v94[6] = v63;
  v94[7] = v62;
  v94[8] = v64;
  v94[9] = 2;
  v95 = 0;
  sub_2167FDB84(v94, &qword_27CABF610);
  v96 = v84;
  v97 = v83;
  v98 = v72;
  v99 = v86;
  v100 = v70;
  v101 = v77;
  v102 = v82;
  v103 = v91;
  v104 = KeyPath;
  v105 = v87;
  v106 = v79;
  v107 = v80;
  v108 = v78;
  v109 = 2;
  v110 = 0;
  sub_2167FDB84(&v96, &qword_27CABF608);
  sub_2167FDB84(v85, &qword_27CAC8848);
  return sub_2167FDB84(v88, &qword_27CAC8858);
}

uint64_t sub_216CBC5D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for HorizontalLockupView.LiveBadgeView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8870);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = a1[8];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = a1[7];
  v17 = sub_21700DF14();
  if (sub_216CBC448(v17))
  {

LABEL_4:
    v18 = 1;
    goto LABEL_6;
  }

  *v8 = v16;
  v8[1] = v15;
  v48[0] = 0x4014000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v45 = *(v6 + 24);
  sub_217009DE4();
  v19 = v11;
  v20 = *MEMORY[0x277CE09A0];
  v21 = v14;
  v22 = sub_217009D84();
  v23 = v20;
  v11 = v19;
  (*(*(v22 - 8) + 104))(v5, v23, v22);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v22);
  v24 = sub_217009DF4();
  sub_2167FDB84(v5, &qword_27CAB81D0);
  *(v8 + v45) = v24;
  v14 = v21;
  sub_216CBE418(v8, v21, type metadata accessor for HorizontalLockupView.LiveBadgeView);
  v18 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v14, v18, 1, v6);
  v25 = a1[1];
  if (v25)
  {
    v44 = *a1;
    v45 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v26 = qword_27CAB6088;
  v43 = v25;
  sub_21700DF14();
  if (v26 != -1)
  {
    swift_once();
  }

  v42 = qword_27CAC8688;
  KeyPath = swift_getKeyPath();
  v40 = KeyPath;

  v28 = sub_21700AD34();
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v50 = 0;
  v41 = v11;
  sub_216683A80(v14, v11, &qword_27CAC8870);
  v31 = v11;
  v32 = v46;
  sub_216683A80(v31, v46, &qword_27CAC8870);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8878) + 48);
  v34 = v44;
  __src[0] = v44;
  v35 = v43;
  __src[1] = v43;
  v36 = v45;
  __src[2] = 0;
  __src[3] = v45;
  __src[4] = KeyPath;
  v37 = v42;
  __src[5] = v42;
  __src[6] = v29;
  __src[7] = v28;
  __src[8] = v30;
  __src[9] = 1;
  LOBYTE(__src[10]) = 0;
  memcpy((v32 + v33), __src, 0x51uLL);
  sub_216683A80(__src, v48, &qword_27CABF610);
  sub_2167FDB84(v14, &qword_27CAC8870);
  v48[0] = v34;
  v48[1] = v35;
  v48[2] = 0;
  v48[3] = v36;
  v48[4] = v40;
  v48[5] = v37;
  v48[6] = v29;
  v48[7] = v28;
  v48[8] = v30;
  v48[9] = 1;
  v49 = 0;
  sub_2167FDB84(v48, &qword_27CABF610);
  return sub_2167FDB84(v41, &qword_27CAC8870);
}

uint64_t sub_216CBCAA0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  result = sub_2170091A4();
  v6 = result;
  if (v4 == 2 || (a1 & 1) == 0)
  {
    v7 = 0;
    KeyPath = 0;
    v8 = 0;
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v7 = sub_21700ADB4();
    if (qword_27CAB60A8 != -1)
    {
      swift_once();
    }

    v8 = qword_27CAC86A8;
    KeyPath = swift_getKeyPath();
    v10 = qword_27CAB60B0;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_27CAC86B0;
    v12 = swift_getKeyPath();
  }

  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v8;
  *(a2 + 48) = v12;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_216CBCBFC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_217009574();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HorizontalLockupView.ContextMenuButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8800);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - v9);
  v11 = sub_217006784();
  v13 = v12;
  sub_216CBE16C(v1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HorizontalLockupView.ContextMenuButton);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_216CBE418(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for HorizontalLockupView.ContextMenuButton);
  *v10 = v11;
  v10[1] = v13;
  v10[2] = sub_216CBEED0;
  v10[3] = v15;
  v10[4] = sub_216CBD15C;
  v10[5] = 0;
  v16 = *(v8 + 60);
  *(v10 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v17 = v10 + *(v8 + 64);
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  sub_217008C84();
  sub_21669E098(&qword_27CAC8808, &qword_27CAC8800);
  sub_2166D4BC0(&qword_280E2A900, MEMORY[0x277CDDFB0]);
  v19 = v21;
  v18 = v22;
  sub_21700A3E4();
  (*(v2 + 8))(v4, v19);
  sub_2167FDB84(v10, &qword_27CAC8800);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8810);
  *(v18 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_216CBCF58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MenuConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2170067A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *(type metadata accessor for HorizontalLockupView.ContextMenuButton(0) + 20);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_216CBE16C(a1 + v11, v7, type metadata accessor for MenuConfiguration);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  result = sub_216CBE418(v7, v14 + v13, type metadata accessor for MenuConfiguration);
  *a2 = sub_216BC7218;
  a2[1] = v14;
  return result;
}

uint64_t sub_216CBD15C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v0);
  v2 = &v35 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8818);
  MEMORY[0x28223BE20](v3);
  v5 = (&v35 - v4);
  v6 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v7 = sub_21700ADF4();
  v8 = __swift_project_value_buffer(v7, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v10 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820);
  (*(*(v7 - 8) + 16))(v10 + *(v11 + 28), v8, v7);
  *v10 = KeyPath;
  *v5 = v6;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v12 = qword_280E73B48;
  v13 = swift_getKeyPath();
  v14 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40) + 36));
  *v14 = v13;
  v14[1] = v12;

  v15 = sub_21700AD14();
  v16 = swift_getKeyPath();
  v17 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B48) + 36));
  *v17 = v16;
  v17[1] = v15;
  LOBYTE(v15) = sub_217009C74();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8820) + 36);
  *v26 = v15;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  LOBYTE(v15) = sub_217009CE4();
  sub_217007F24();
  v27 = v5 + *(v3 + 36);
  *v27 = v15;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = *MEMORY[0x277CDFA10];
  v33 = sub_217008844();
  (*(*(v33 - 8) + 104))(v2, v32, v33);
  sub_2166D4BC0(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_216CBEF30();
    sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_2167FDB84(v2, &qword_27CAB75D0);
    return sub_2167FDB84(v5, &qword_27CAC8818);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216CBD588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v37);
  v42 = &v36 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC88E0);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - v5;
  v7 = *v1;
  v8 = v2[1];
  v9 = qword_27CAB6078;
  sub_21700DF14();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27CAC8678;
  v11 = *(v2 + *(type metadata accessor for HorizontalLockupView.LiveBadgeView(0) + 24));
  KeyPath = swift_getKeyPath();
  __src[0] = v7;
  __src[1] = v8;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = v10;
  __src[5] = KeyPath;
  __src[6] = v11;

  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC88E8);
  sub_216CBF830();
  sub_21700A304();

  LOBYTE(v10) = sub_217009C74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8908) + 36)];
  *v21 = v10;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_21700B3B4();
  v24 = v23;
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_217009294();
  v27 = v39;
  (*(*(v26 - 8) + 104))(v39, v25, v26);
  if (qword_27CAB6080 != -1)
  {
    swift_once();
  }

  v28 = v40;
  *(v27 + *(v40 + 52)) = qword_27CAC8680;
  *(v27 + *(v28 + 56)) = 256;

  sub_21700B3B4();
  v29 = &v6[*(v41 + 36)];
  sub_217008BB4();
  sub_2167C5834(v27, v29, &qword_27CAB8780);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760);
  memcpy((v29 + *(v30 + 36)), __src, 0x70uLL);
  v31 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8910) + 36));
  *v31 = v22;
  v31[1] = v24;
  v32 = *MEMORY[0x277CDF9A8];
  v33 = sub_217008844();
  v34 = v42;
  (*(*(v33 - 8) + 104))(v42, v32, v33);
  sub_2166D4BC0(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_216CBF9A0();
    sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_2167FDB84(v34, &qword_27CAB75D0);
    return sub_2167FDB84(v6, &qword_27CAC88E0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216CBDAF4()
{
  result = sub_21700ACF4();
  qword_27CAC8678 = result;
  return result;
}

uint64_t sub_216CBDB14()
{
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.31372549 blue:0.4 alpha:1.0];
  result = sub_21700AC44();
  qword_27CAC8680 = result;
  return result;
}

uint64_t sub_216CBDB68@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v1);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38);
  MEMORY[0x28223BE20](v4);
  v6 = (v21 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C00);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = sub_21700ADB4();
  v11 = (v6 + *(v4 + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
  v13 = *MEMORY[0x277CE1050];
  v14 = sub_21700ADF4();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v6 = v10;
  sub_21680C99C();
  sub_21700A4F4();
  sub_2167FDB84(v6, &qword_27CAB8B38);
  if (qword_27CAB60A0 != -1)
  {
    swift_once();
  }

  v15 = qword_27CAC86A0;
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(v7 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = *MEMORY[0x277CDF988];
  v19 = sub_217008844();
  (*(*(v19 - 8) + 104))(v3, v18, v19);
  sub_2166D4BC0(&qword_280E2B340, MEMORY[0x277CDFA28]);

  result = sub_21700E494();
  if (result)
  {
    sub_21680D978();
    sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_2167FDB84(v3, &qword_27CAB75D0);
    return sub_2167FDB84(v9, &qword_27CAB8C00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216CBDF0C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_1();
  v3 = sub_217009EB4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = a1;
  v9 = type metadata accessor for HorizontalLockupView(0);
  v10 = *(v9 + 20);
  *(v1 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v11 = v1 + *(v9 + 24);
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  v13[1] = 0x403C000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A98], v3);
  sub_2167CD8D8();
  return sub_2170082A4();
}

uint64_t sub_216CBE0B4(uint64_t a1)
{
  result = sub_2166D4BC0(&qword_280E3C2D0, type metadata accessor for HorizontalLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216CBE10C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for HorizontalLockupView(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216CB7B84(v4, v0);
}

uint64_t sub_216CBE16C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216CBE1D8()
{
  v0 = type metadata accessor for HorizontalLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216CBA254();
}

unint64_t sub_216CBE22C()
{
  result = qword_27CAC86C8;
  if (!qword_27CAC86C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86B8);
    type metadata accessor for ActionButtonListStyle(255);
    sub_21669E098(&qword_27CAC86D0, &qword_27CAC86B8);
    sub_2166D4BC0(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC86C8);
  }

  return result;
}

uint64_t sub_216CBE3C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216CBE418(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

unint64_t sub_216CBE4BC()
{
  result = qword_27CAC8790;
  if (!qword_27CAC8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8790);
  }

  return result;
}

uint64_t sub_216CBE538()
{
  result = sub_2170067A4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HorizontalLockupView.FavoriteIndicatorView(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_216CBE6D0()
{
  sub_216688154();
  if (v0 <= 0x3F)
  {
    sub_216B4E74C(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216CBE7C8()
{
  sub_216B4E74C(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216B4E74C(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216CBE8C8()
{
  result = qword_27CAC87D8;
  if (!qword_27CAC87D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86F8);
    sub_216CBE980();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC87D8);
  }

  return result;
}

unint64_t sub_216CBE980()
{
  result = qword_27CAC87E0;
  if (!qword_27CAC87E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86E8);
    sub_216CBEA38();
    sub_21669E098(&qword_27CAC87F8, &qword_27CAC86F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC87E0);
  }

  return result;
}

unint64_t sub_216CBEA38()
{
  result = qword_27CAC87E8;
  if (!qword_27CAC87E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86E0);
    sub_216CBEAF0();
    sub_21669E098(&qword_280E2A818, &qword_27CAB8AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC87E8);
  }

  return result;
}

unint64_t sub_216CBEAF0()
{
  result = qword_27CAC87F0;
  if (!qword_27CAC87F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC86C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216CBE22C();
    sub_21669E098(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D4BC0(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC87F0);
  }

  return result;
}

uint64_t sub_216CBECF4()
{
  sub_217009E84();
  sub_217009DE4();
  v0 = sub_217009E34();

  qword_27CAC8688 = v0;
  return result;
}

uint64_t sub_216CBED38()
{
  if (sub_21700B304())
  {
    sub_217009E54();
    sub_217009DD4();
    v0 = sub_217009E34();
  }

  else
  {
    result = sub_217009D44();
    v0 = result;
  }

  qword_27CAC8690 = v0;
  return result;
}

uint64_t sub_216CBED90()
{
  if (sub_21700B304())
  {
    result = sub_217009D44();
  }

  else
  {
    result = sub_217009E94();
  }

  qword_27CAC8698 = result;
  return result;
}

uint64_t sub_216CBEDC0()
{
  result = sub_21700AD34();
  qword_27CAC86A0 = result;
  return result;
}

uint64_t sub_216CBEDE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_2167FDB84(v2, &qword_27CAB81D0);
  qword_27CAC86A8 = v4;
  return result;
}

uint64_t sub_216CBEEB0()
{
  result = sub_21700AC54();
  qword_27CAC86B0 = result;
  return result;
}

uint64_t sub_216CBEED0()
{
  v1 = OUTLINED_FUNCTION_8_1();
  v2 = type metadata accessor for HorizontalLockupView.ContextMenuButton(v1);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216CBCF58(v4, v0);
}

unint64_t sub_216CBEF30()
{
  result = qword_27CAC8828;
  if (!qword_27CAC8828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8818);
    sub_216CBEFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8828);
  }

  return result;
}

unint64_t sub_216CBEFBC()
{
  result = qword_27CAC8830;
  if (!qword_27CAC8830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8820);
    sub_21680C82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8830);
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v18 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
    {
      OUTLINED_FUNCTION_50();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  v20 = v10 + *(v0 + 32);
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return swift_deallocObject();
}

void sub_216CBF338()
{
  sub_2167D1C30();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_216CBF3BC()
{
  result = qword_27CAC88A0;
  if (!qword_27CAC88A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8800);
    sub_217009574();
    sub_21669E098(&qword_27CAC8808, &qword_27CAC8800);
    sub_2166D4BC0(&qword_280E2A900, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88A0);
  }

  return result;
}

unint64_t sub_216CBF534()
{
  result = qword_27CAC88A8;
  if (!qword_27CAC88A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8840);
    sub_21669E098(&qword_27CAC88B0, &unk_27CAC88B8);
    sub_21669E098(&qword_280E2A730, &qword_27CAB8688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88A8);
  }

  return result;
}

unint64_t sub_216CBF618()
{
  result = qword_27CAC88C0;
  if (!qword_27CAC88C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8880);
    sub_216CBF6D0();
    sub_21669E098(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88C0);
  }

  return result;
}

unint64_t sub_216CBF6D0()
{
  result = qword_27CAC88C8;
  if (!qword_27CAC88C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC88D0);
    sub_216CBF75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88C8);
  }

  return result;
}

unint64_t sub_216CBF75C()
{
  result = qword_27CAC88D8;
  if (!qword_27CAC88D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8888);
    sub_216ADF2B0();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88D8);
  }

  return result;
}

unint64_t sub_216CBF830()
{
  result = qword_27CAC88F0;
  if (!qword_27CAC88F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC88E8);
    sub_216CBF8E8();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88F0);
  }

  return result;
}

unint64_t sub_216CBF8E8()
{
  result = qword_27CAC88F8;
  if (!qword_27CAC88F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8900);
    sub_2167C4D74();
    sub_21669E098(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC88F8);
  }

  return result;
}

unint64_t sub_216CBF9A0()
{
  result = qword_27CAC8918;
  if (!qword_27CAC8918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC88E0);
    sub_216CBFA58();
    sub_21669E098(&qword_27CAC8928, &unk_27CAC8910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8918);
  }

  return result;
}

unint64_t sub_216CBFA58()
{
  result = qword_27CAC8920;
  if (!qword_27CAC8920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC88E8);
    sub_216CBF830();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8920);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAL5ScaleOGGAA023AccessibilityAttachmentO0VGANyAA5ColorVSgGG_s19PartialRangeThroughVyAFGQo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_100(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
  a4();
  sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216CBFBF0(char *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v30 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968);
  sub_21700CE04();
  v28 = v5;
  v29 = v3;
  v16 = v5;
  v17 = v31;
  (*(v16 + 16))(v9, v31, v3);
  sub_2167FF028();
  sub_21700D734();
  v18 = v32;
  if (!v32)
  {
    v22 = 0x736B6E696CLL;
    v23 = 0xE500000000000000;
LABEL_6:
    v24 = sub_21700E2E4();
    sub_216CC0DBC(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v25 = v22;
    v25[1] = v23;
    v25[2] = &type metadata for AttributedLinkList;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v28 + 8))(v17, v29);
    (*(v30 + 8))(a1, v10);
    return v18;
  }

  sub_21700CE04();
  sub_21700CDB4();
  v20 = v19;
  v21 = *(v30 + 8);
  v21(v14, v10);
  if (!v20)
  {
    v22 = 0x6F74617261706573;

    v17 = v31;
    v23 = 0xE900000000000072;
    goto LABEL_6;
  }

  sub_216CBFF7C();
  (*(v28 + 8))(v31, v29);
  v21(a1, v10);
  return v18;
}

uint64_t sub_216CBFF7C()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216CBFFC8(char a1)
{
  if (!a1)
  {
    return 0x6E4F73616D6D6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x695773616D6D6F63;
}

uint64_t sub_216CC0058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216CBFF7C();
  *a1 = result;
  return result;
}

uint64_t sub_216CC0088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216CBFFC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216CC00B4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4190);
  OUTLINED_FUNCTION_1();
  v35 = v5;
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4198);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41A0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  if (a2)
  {
    if (a2 == 1)
    {
      v14 = MEMORY[0x277D84F90];
      if (*(a1 + 16))
      {
        OUTLINED_FUNCTION_4_130();
        v14 = v39;
        a1 += 32;
        do
        {
          sub_2167ADC3C(a1, &v38);
          sub_21700DF14();
          sub_2167ADC98(&v38);
          OUTLINED_FUNCTION_7_100();
          if (v15)
          {
            OUTLINED_FUNCTION_6_107();
            v14 = v39;
          }

          OUTLINED_FUNCTION_5_119();
        }

        while (!v16);
        v10 = v32;
        v8 = v33;
        v13 = v31;
      }

      v39 = v14;
      v19 = OUTLINED_FUNCTION_3_148();
      v20(v19);
      v21 = MEMORY[0x277CC8B00];
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (*(a1 + 16))
      {
        OUTLINED_FUNCTION_4_130();
        v18 = v39;
        a1 += 32;
        do
        {
          sub_2167ADC3C(a1, &v38);
          sub_21700DF14();
          sub_2167ADC98(&v38);
          OUTLINED_FUNCTION_7_100();
          if (v15)
          {
            OUTLINED_FUNCTION_6_107();
            v18 = v39;
          }

          OUTLINED_FUNCTION_5_119();
        }

        while (!v16);
        v10 = v32;
        v8 = v33;
        v13 = v31;
      }

      v39 = v18;
      v24 = OUTLINED_FUNCTION_3_148();
      v25(v24);
      v21 = MEMORY[0x277CC8B10];
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    if (*(a1 + 16))
    {
      OUTLINED_FUNCTION_4_130();
      v17 = v39;
      a1 += 32;
      do
      {
        sub_2167ADC3C(a1, &v38);
        sub_21700DF14();
        sub_2167ADC98(&v38);
        OUTLINED_FUNCTION_7_100();
        if (v15)
        {
          OUTLINED_FUNCTION_6_107();
          v17 = v39;
        }

        OUTLINED_FUNCTION_5_119();
      }

      while (!v16);
      v10 = v32;
      v8 = v33;
      v13 = v31;
    }

    v39 = v17;
    v22 = OUTLINED_FUNCTION_3_148();
    v23(v22);
    v21 = MEMORY[0x277CC8B08];
  }

  v27 = v34;
  v26 = v35;
  v28 = v36;
  (*(v35 + 104))(v34, *v21, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  v33 = sub_2166D9530(&qword_280E29E30, &qword_27CAB74F8);
  sub_217005864();
  (*(v26 + 8))(v27, v28);
  (*(a1 + 8))(a2, v37);
  sub_2166D9530(&qword_280E4A518, &qword_27CAC41A0);
  sub_21700E744();
  (*(v10 + 8))(v13, v8);

  return v38;
}

uint64_t sub_216CC054C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((sub_216E20E1C(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_21688BE70(a2, a4);
}

uint64_t sub_216CC05A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_216CBFBF0(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
  }

  return result;
}

unint64_t sub_216CC05F0()
{
  result = qword_27CAC8930;
  if (!qword_27CAC8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8930);
  }

  return result;
}

uint64_t sub_216CC0644(uint64_t a1)
{
  v2 = v1;
  v51 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v50 = v8 - v7;
  v9 = type metadata accessor for Link(0);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v47 = v1;
    v48 = a1;
    v59 = MEMORY[0x277D84F90];
    v52 = v18;
    result = sub_216AB96F8(0, v18, 0);
    v20 = 0;
    v21 = v59;
    v22 = *(v11 + 80);
    v54 = v16;
    v55 = v17 + ((v22 + 32) & ~v22);
    v49 = (v5 + 8);
    v53 = v9;
    while (v20 < *(v17 + 16))
    {
      v23 = v21;
      v24 = v11;
      sub_216C87604(v55 + *(v11 + 72) * v20, v16);
      v25 = v56;
      sub_216C87604(v16, v56);
      v26 = (v25 + *(v9 + 24));
      v27 = v26[1];
      if (!v27)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58);
        sub_2167880BC();
        swift_allocError();
        *v41 = xmmword_21701C090;
        *(v41 + 16) = v40;
        swift_willThrow();
        sub_216CC0D5C(v16, type metadata accessor for Link);
        sub_216CC0D5C(v25, type metadata accessor for Link);
        OUTLINED_FUNCTION_1_189();
        sub_216CC0D5C(v48, v42);
      }

      v58 = *v26;
      v28 = (v25 + *(v9 + 20));
      v29 = v28[1];
      if (v29)
      {
        v57 = *v28;
        OUTLINED_FUNCTION_2_157();
        sub_216CC0D5C(v16, v30);
        v31 = v29;
      }

      else
      {
        v32 = v50;
        sub_217006214();
        v57 = sub_2170061F4();
        v31 = v33;
        (*v49)(v32, v51);
        OUTLINED_FUNCTION_2_157();
        sub_216CC0D5C(v16, v34);
      }

      sub_21700DF14();
      sub_21700DF14();
      OUTLINED_FUNCTION_2_157();
      result = sub_216CC0D5C(v25, v35);
      v21 = v23;
      v59 = v23;
      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_216AB96F8(v36 > 1, v37 + 1, 1);
        v21 = v59;
      }

      ++v20;
      *(v21 + 16) = v37 + 1;
      v38 = v21 + 72 * v37;
      v39 = v58;
      *(v38 + 32) = v57;
      *(v38 + 40) = v31;
      *(v38 + 48) = v39;
      *(v38 + 56) = v27;
      *(v38 + 64) = 0u;
      *(v38 + 80) = 0u;
      *(v38 + 96) = 0;
      v9 = v53;
      v16 = v54;
      v11 = v24;
      if (v52 == v20)
      {
        v43 = v21;
        v2 = v47;
        a1 = v48;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
LABEL_14:
    v44 = a1 + *(type metadata accessor for AttributedLinkList(0) + 24);
    if ((*(v44 + 9) & 1) != 0 || (sub_216CC0A4C(*v44, *(v44 + 8) & 1), !v2))
    {
      OUTLINED_FUNCTION_1_189();
      sub_216CC0D5C(a1, v46);
      return v43;
    }

    else
    {

      OUTLINED_FUNCTION_1_189();
      return sub_216CC0D5C(a1, v45);
    }
  }

  return result;
}

uint64_t sub_216CC0A4C(char a1, char a2)
{
  v4 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  if (a2)
  {
    return 0x1020000u >> (8 * a1);
  }

  sub_217007C94();
  v12 = sub_217007C84();
  v13 = sub_21700ED84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315394;
    v16 = sub_21700F784();
    v18 = sub_2166A85FC(v16, v17, &v22);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8940);
    v19 = sub_21700E594();
    v21 = sub_2166A85FC(v19, v20, &v22);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_216679000, v12, v13, "Unrecognized value '%s' for type '%s'", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  return 0;
}

uint64_t sub_216CC0CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216CC0644(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_216CC0CDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216CC0A4C(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216CC0D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216CC0DBC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AttributedLinkList.Separator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for AttributedLinkList.Separator()
{
  return &type metadata for AttributedLinkList.Separator;
}

{
  return &type metadata for AttributedLinkList.Separator;
}

unint64_t sub_216CC0EE4()
{
  result = qword_27CAC8948;
  if (!qword_27CAC8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8948);
  }

  return result;
}

uint64_t sub_216CC0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = type metadata accessor for ClassicalStorePageParameters();
  v3[10] = OUTLINED_FUNCTION_80();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90);
  v3[11] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[12] = v5;
  v3[13] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v3[14] = OUTLINED_FUNCTION_80();
  v6 = sub_217005EF4();
  v3[15] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[16] = v7;
  v3[17] = OUTLINED_FUNCTION_80();
  v8 = sub_21700DFD4();
  v3[18] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[19] = v9;
  v3[20] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[21] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v11 = sub_21700E9B4();
  v3[22] = v11;
  v3[23] = v10;

  return MEMORY[0x2822009F8](sub_216CC1128, v11, v10);
}

uint64_t sub_216CC1128()
{
  v2 = v0[14];
  v1 = v0[15];
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  type metadata accessor for ClassicalArtistPresenter();
  type metadata accessor for OpenInClassicalExperienceAction();
  sub_216B4EF80(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[14];

    sub_216697664(v3, &qword_27CABA820);
    sub_216CC3030();
    v4 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_6_108(v4, v5);
    v6 = OUTLINED_FUNCTION_3_149();
    v7(v6);
    OUTLINED_FUNCTION_2_158();

    OUTLINED_FUNCTION_3();

    return v8();
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
    v10 = sub_21700E4D4();
    sub_21700DFC4();

    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[24] = v11;
    *v11 = v12;
    v11[1] = sub_216CC1358;
    v13 = v0[11];

    return MEMORY[0x282180258](v0 + 2, v13);
  }
}

uint64_t sub_216CC1358()
{
  OUTLINED_FUNCTION_93();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v4 = v1[12];
  *v3 = *v0;

  v2[25] = *(v4 + 8);
  v2[26] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_115();
  v6(v5);
  v7 = v1[23];
  v8 = v1[22];

  return MEMORY[0x2822009F8](sub_216CC14D4, v8, v7);
}

uint64_t sub_216CC14D4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[3];
  v0[27] = v0[2];
  v0[28] = v1;
  if (v1)
  {
    v2 = sub_21700E4D4();
    sub_21700DFC4();

    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[29] = v3;
    *v3 = v4;
    v3[1] = sub_216CC1678;
    v5 = v0[11];

    return MEMORY[0x282180258](v0 + 4, v5);
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    sub_216CC3030();
    v6 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_6_108(v6, v7);
    v8 = OUTLINED_FUNCTION_3_149();
    v9(v8);
    OUTLINED_FUNCTION_2_158();

    OUTLINED_FUNCTION_3();

    return v10();
  }
}

uint64_t sub_216CC1678()
{
  OUTLINED_FUNCTION_93();
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_116();
  v2(v5);
  v6 = *(v1 + 184);
  v7 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_216CC17F4, v7, v6);
}

void sub_216CC17F4()
{
  v1 = v0[4];
  v2 = v0[5];
  if (!v2)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    sub_216CC3030();
    v14 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_6_108(v14, v15);
    v16 = OUTLINED_FUNCTION_3_149();
    v17(v16);
    goto LABEL_73;
  }

  v3 = HIBYTE(v2) & 0xF;
  v4 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_72:
    v58 = v0[20];
    v28 = v0[18];
    v29 = v0[19];
    v30 = v1;
    v31 = v0[16];
    v32 = v0[17];
    v33 = v0[15];

    sub_216CC3030();
    OUTLINED_FUNCTION_12();
    *v34 = v30;
    *(v34 + 8) = v2;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    swift_willThrow();
    (*(v31 + 8))(v32, v33);
    (*(v29 + 8))(v58, v28);
LABEL_73:
    OUTLINED_FUNCTION_2_158();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_2();

    __asm { BRAA            X1, X16 }
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      if (v0[4] == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_23_47();
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_0_222();
              if (!v10)
              {
                break;
              }

              v8 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              OUTLINED_FUNCTION_42_5();
              if (v10)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_89:
        __break(1u);
        return;
      }

      if (v0[4] != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_0_222();
            if (!v10)
            {
              break;
            }

            v8 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            OUTLINED_FUNCTION_42_5();
            if (v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_23_47();
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_0_222();
            if (!v10)
            {
              break;
            }

            v8 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            OUTLINED_FUNCTION_42_5();
            if (v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v6 = sub_21700F444();
      }

      v7 = *v6;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v8 = 0;
            if (v6)
            {
              while (1)
              {
                OUTLINED_FUNCTION_14_17();
                if (!v10 & v9)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_0_222();
                if (!v10)
                {
                  goto LABEL_70;
                }

                v8 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_42_5();
                if (v10)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_88;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v8 = 0;
          if (v6)
          {
            while (1)
            {
              v24 = *v6 - 48;
              if (v24 > 9)
              {
                goto LABEL_70;
              }

              v25 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_70;
              }

              v8 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_70;
              }

              ++v6;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v8 = 0;
        v13 = 1;
LABEL_71:
        if (v13)
        {
          goto LABEL_72;
        }

        goto LABEL_77;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v8 = 0;
          if (v6)
          {
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v10 & v9)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_0_222();
              if (!v10)
              {
                goto LABEL_70;
              }

              v8 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_42_5();
              if (v10)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v13 = 0;
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  sub_21700DF14();
  v8 = sub_216B034C0(v1);
  v38 = v37;

  if (v38)
  {
    goto LABEL_72;
  }

LABEL_77:
  v40 = v0[27];
  v39 = v0[28];

  v41 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  OUTLINED_FUNCTION_47();
  sub_21700DF14();
  v42 = sub_216CC3084(v40, v39, 0);
  if (v42)
  {

    v55 = swift_task_alloc();
    v0[30] = v55;
    *v55 = v0;
    v55[1] = sub_216CC1D1C;
    OUTLINED_FUNCTION_13_2();

    sub_216CC2230(v56);
  }

  else
  {
    v44 = v0[27];
    v43 = v0[28];
    v46 = v0[9];
    v45 = v0[10];
    (*(v0[16] + 16))(v45, v0[17], v0[15]);
    v47 = (v45 + *(v46 + 20));
    *v47 = v44;
    v47[1] = v43;
    *(v45 + *(v46 + 24)) = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[32] = v48;
    *v48 = v49;
    v48[1] = sub_216CC1F6C;
    OUTLINED_FUNCTION_13_2();

    sub_216CC267C(v50, v51, v52, v53);
  }
}

uint64_t sub_216CC1D1C()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_216CC2170;
  }

  else
  {
    v7 = sub_216CC1E4C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_216CC1E4C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[6];

  v5 = OUTLINED_FUNCTION_115();
  v6(v5);
  (*(v3 + 8))(v1, v2);
  v7 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 104))(v4, v7);
  OUTLINED_FUNCTION_2_158();

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t sub_216CC1F6C()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  sub_216CC31A8(v2, type metadata accessor for ClassicalStorePageParameters);
  v5 = *(v1 + 184);
  v6 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_216CC20B8, v6, v5);
}

uint64_t sub_216CC20B8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_25_47();
  v0 = OUTLINED_FUNCTION_115();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_149();
  v3(v2);
  OUTLINED_FUNCTION_2_158();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216CC2170()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_25_47();
  v0 = OUTLINED_FUNCTION_115();
  v1(v0);
  v2 = OUTLINED_FUNCTION_3_149();
  v3(v2);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216CC2230(uint64_t a1)
{
  v1[18] = a1;
  sub_21700EA34();
  v1[19] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_216CC22C8, v3, v2);
}

uint64_t sub_216CC22C8()
{
  v1 = [objc_opt_self() sharedApplication];
  v0[22] = v1;
  v2 = sub_217005E04();
  v0[23] = v2;
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_216CC3160(&qword_27CAB6868, type metadata accessor for OpenExternalURLOptionsKey);
  sub_21700E384();
  v3 = sub_21700E344();
  v0[24] = v3;

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_216CC24C0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8958);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_216CC2638;
  v0[13] = &block_descriptor_36;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_216CC24C0()
{
  OUTLINED_FUNCTION_26_0();
  *v1 = v0;
  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_216CC25C0, v4, v3);
}

uint64_t sub_216CC25C0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_216CC2638(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_216A2DF38(v3, a2);
}

uint64_t sub_216CC267C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B98);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for PresentSheetAction();
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MusicAppDestination(0);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC2858, 0, 0);
}

uint64_t sub_216CC2858()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[16];
  v4 = v0[12];
  v17 = v0[11];
  v18 = v0[13];
  v5 = v0[9];
  v16 = v0[8];
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(v1, v5);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_2169152B0(v1, v2 + *(v3 + 20), type metadata accessor for MusicAppDestination);
  type metadata accessor for ModalActionModelDestinations.Destination();
  swift_storeEnumTagMultiPayload();
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v7 + 16))(v2, v16);
  v0[5] = v3;
  v0[6] = sub_216CC3160(qword_280E3EA78, type metadata accessor for PresentSheetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2169152B0(v2, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v4 + 104))(v18, *MEMORY[0x277D21E18], v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[23] = v9;
  *v9 = v10;
  v9[1] = sub_216CC2A9C;
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[13];
  v14 = v0[10];

  return MEMORY[0x28217F468](v12, v0 + 2, v13, v14, v11);
}

uint64_t sub_216CC2A9C()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;

  if (v0)
  {
    v7 = v2[12];
    v6 = v2[13];
    v8 = v2[11];

    (*(v7 + 8))(v6, v8);
    v9 = sub_216CC2D54;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 2));
    v9 = sub_216CC2BE8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_216CC2BE8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_101();
  v2 = OUTLINED_FUNCTION_116();
  v3(v2);
  OUTLINED_FUNCTION_10_88();
  v4 = *(v1 + 120);
  sub_21700D2A4();
  v5 = OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v0);
  v6 = OUTLINED_FUNCTION_116();
  sub_216CC3200(v6, v7);
  OUTLINED_FUNCTION_21_58();
  if (v8)
  {
    OUTLINED_FUNCTION_50();
    (*(v9 + 104))();
    if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
    {
      sub_216697664(*(v1 + 112), &qword_27CAB6B98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v10 + 32))();
  }

  OUTLINED_FUNCTION_18_58();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216CC2D54()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_101();
  v2 = OUTLINED_FUNCTION_116();
  v3(v2);
  OUTLINED_FUNCTION_10_88();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);
  v4 = *(v1 + 120);
  sub_21700D2A4();
  v5 = OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v0);
  v6 = OUTLINED_FUNCTION_116();
  sub_216CC3200(v6, v7);
  OUTLINED_FUNCTION_21_58();
  if (v8)
  {
    OUTLINED_FUNCTION_50();
    (*(v9 + 104))();
    if (__swift_getEnumTagSinglePayload(v4, 1, v0) != 1)
    {
      sub_216697664(*(v1 + 112), &qword_27CAB6B98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v10 + 32))();
  }

  OUTLINED_FUNCTION_18_58();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_216CC2EC8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2166F2728;

  return sub_216CC0F48(v6, v4, v2);
}

unint64_t sub_216CC2F70(uint64_t a1)
{
  result = sub_2166D07B0();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ClassicalStorePageParameters()
{
  result = qword_27CAC8960;
  if (!qword_27CAC8960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_216CC3030()
{
  result = qword_27CAC8950;
  if (!qword_27CAC8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8950);
  }

  return result;
}

id sub_216CC3084(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21700E4D4();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_217005D34();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_216CC3160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216CC31A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216CC3200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216CC3298()
{
  result = sub_217005EF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216CC331C(uint64_t a1)
{
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  type metadata accessor for LibraryPlaylistDataSource(0);
  swift_allocObject();
  return sub_216A80ECC(v4);
}

uint64_t sub_216CC3420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v27[0] = a2;
  v27[1] = a4;
  v6 = sub_217006624();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8970);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8978);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  *v21 = sub_2170093C4();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8980);
  sub_216CC3690(a1, v27[0], a3 & 1, &v21[*(v22 + 44)]);
  v23 = sub_21700ACD4();
  v24 = sub_217009C84();
  v25 = &v21[*(v18 + 36)];
  *v25 = v23;
  v25[8] = v24;
  sub_216CC4120();
  sub_21700A2A4();
  sub_216697664(v21, &qword_27CAC8978);
  (*(v8 + 104))(v11, *MEMORY[0x277D26AA8], v6);
  sub_217006494();
  (*(v8 + 8))(v11, v6);
  return (*(v14 + 8))(v17, v12);
}

uint64_t sub_216CC3690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v77 = type metadata accessor for ContainerDetailTrackListFooterView();
  MEMORY[0x28223BE20](v77);
  v76 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC12C8);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = v61 - v9;
  v72 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  MEMORY[0x28223BE20](v72);
  v68 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC89A0);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = v61 - v14;
  v65 = sub_21700C8E4();
  v87 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LibraryPlaylistDataSource.TrackData(0);
  v85 = *(v16 - 8);
  v86 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s7MusicUI9TrackListVMa_0();
  MEMORY[0x28223BE20](v19);
  v67 = (v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC89A8);
  MEMORY[0x28223BE20](v21 - 8);
  v74 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v61 - v24;
  v26 = type metadata accessor for LibraryPlaylistDataSource(0);
  v27 = sub_216CC527C(&qword_27CAC89B0, type metadata accessor for LibraryPlaylistDataSource);
  sub_2170081B4();
  v71 = sub_216A819F8();

  v88 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8);
  sub_21700AEA4();
  v69 = v89;
  v70 = v90;
  v28 = a3;
  sub_2170081B4();
  LOBYTE(a3) = sub_216A81CCC();

  v73 = v28;
  v82 = a1;
  v83 = v25;
  v80 = v27;
  v81 = v26;
  if (a3)
  {
    v66 = v19;
    sub_2170081B4();
    v29 = sub_216A81B48();

    v30 = *(v29 + 16);
    v63 = a2;
    if (v30)
    {
      v89 = MEMORY[0x277D84F90];
      sub_21700F494();
      v31 = v29 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v32 = *(v85 + 72);
      v33 = v66;
      do
      {
        sub_216CC5190(v31, v18, type metadata accessor for LibraryPlaylistDataSource.TrackData);

        sub_216CC52C4(v18, type metadata accessor for LibraryPlaylistDataSource.TrackData);
        sub_21700F464();
        sub_21700F4A4();
        sub_21700F4B4();
        sub_21700F474();
        v31 += v32;
        --v30;
      }

      while (v30);

      v34 = v89;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
      v33 = v66;
    }

    sub_2170081B4();
    v39 = sub_216A81B48();

    v40 = *(v39 + 16);
    if (v40)
    {
      v62 = v34;
      v89 = MEMORY[0x277D84F90];
      sub_216AB9D7C();
      v41 = v89;
      v42 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v61[1] = v39;
      v43 = v39 + v42;
      v85 = *(v85 + 72);
      v44 = (v87 + 16);
      v45 = v65;
      v46 = v64;
      do
      {
        sub_216CC5190(v43, v18, type metadata accessor for LibraryPlaylistDataSource.TrackData);
        (*v44)(v46, &v18[*(v86 + 20)], v45);
        sub_216CC52C4(v18, type metadata accessor for LibraryPlaylistDataSource.TrackData);
        v89 = v41;
        v47 = *(v41 + 16);
        if (v47 >= *(v41 + 24) >> 1)
        {
          sub_216AB9D7C();
          v41 = v89;
        }

        *(v41 + 16) = v47 + 1;
        (*(v87 + 32))(v41 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v47, v46, v45);
        v43 += v85;
        --v40;
      }

      while (v40);

      v37 = v79;
      v33 = v66;
      v34 = v62;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
      v37 = v79;
    }

    v48 = v67;
    *v67 = v34;
    *(v48 + 8) = v41;
    v49 = *(v33 + 24);
    *(v48 + v49) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
    swift_storeEnumTagMultiPayload();
    v50 = v48 + *(v33 + 28);
    *v50 = swift_getKeyPath();
    *(v50 + 8) = 0;
    v25 = v83;
    sub_216CC4E44(v48, v83, _s7MusicUI9TrackListVMa_0);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v33);
    v35 = v76;
    v38 = v77;
    v36 = v75;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v19);
    v36 = v75;
    v35 = v76;
    v37 = v79;
    v38 = v77;
  }

  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (__swift_getEnumTagSinglePayload(v36, 1, v72) == 1)
  {
    sub_216697664(v36, &qword_27CAC12C8);
    v51 = 1;
  }

  else
  {
    v52 = v68;
    sub_216CC4E44(v36, v68, type metadata accessor for ContainerDetailTracklistFooterLockup);
    sub_216CC4E44(v52, v35, type metadata accessor for ContainerDetailTracklistFooterLockup);
    v53 = v35 + *(v38 + 20);
    *v53 = swift_getKeyPath();
    *(v53 + 8) = 0;
    sub_216CC4E44(v35, v84, type metadata accessor for ContainerDetailTrackListFooterView);
    v51 = 0;
  }

  v54 = v84;
  __swift_storeEnumTagSinglePayload(v84, v51, 1, v38);
  v55 = v74;
  sub_216681B04(v25, v74, &qword_27CAC89A8);
  v56 = v78;
  sub_216681B04(v54, v78, &qword_27CAC89A0);
  v57 = v70;
  *v37 = v71;
  *(v37 + 8) = v69;
  *(v37 + 16) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC89B8);
  sub_216681B04(v55, v37 + v58[12], &qword_27CAC89A8);
  sub_216681B04(v56, v37 + v58[16], &qword_27CAC89A0);
  v59 = v37 + v58[20];
  *v59 = 0;
  *(v59 + 8) = 1;

  sub_216697664(v54, &qword_27CAC89A0);
  sub_216697664(v83, &qword_27CAC89A8);
  sub_216697664(v56, &qword_27CAC89A0);
  sub_216697664(v55, &qword_27CAC89A8);
}

unint64_t sub_216CC4120()
{
  result = qword_27CAC8988;
  if (!qword_27CAC8988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8978);
    sub_2166D9530(&qword_27CAC8990, &qword_27CAC8998);
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8988);
  }

  return result;
}

uint64_t _s7MusicUI9TrackListVMa_0()
{
  result = qword_27CAC89C0;
  if (!qword_27CAC89C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216CC4250@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170080D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = sub_217009714();
  MEMORY[0x28223BE20](v10);
  v25 = v1;
  sub_2170093B4();
  HIDWORD(v26) = 0;
  sub_216CC527C(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC89E0);
  sub_216CC50CC();
  sub_217008014();
  KeyPath = swift_getKeyPath();
  v12 = _s7MusicUI9TrackListVMa_0();
  sub_216C0C924(v12, v13, v14, v15, v16, v17, v18, v19, v24[0], v24[1], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
  v20 = sub_2170080C4();
  v21 = *(v4 + 8);
  v21(v6, v3);
  v21(v9, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A00);
  v23 = a1 + *(result + 36);
  *v23 = KeyPath;
  *(v23 + 8) = v20 & 1;
  return result;
}

uint64_t sub_216CC44E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC89F8);
  sub_2166D9530(&qword_27CAC89F0, &qword_27CAC89F8);
  return sub_21700B1B4();
}

uint64_t sub_216CC4584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s7MusicUI9TrackListVMa_0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  *(a2 + 32) = &type metadata for StaticGridLayout;
  *(a2 + 40) = &off_282933558;
  v8 = swift_allocObject();
  *(a2 + 8) = v8;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 32;
  *(v8 + 56) = xmmword_21705E4C0;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  sub_216CC5190(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s7MusicUI9TrackListVMa_0);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_216CC4E44(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, _s7MusicUI9TrackListVMa_0);
  *a2 = v7;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC89F8) + 92);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 3;
  *(a2 + 72) = 0;
  *(a2 + 120) = sub_216CC51F0;
  *(a2 + 128) = v10;
  *(a2 + 80) = 0xD000000000000012;
  *(a2 + 88) = 0x800000021708DE30;
  *(a2 + 136) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return sub_21700DF14();
}

uint64_t sub_216CC47AC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v45 = a2;
  v4 = type metadata accessor for PlaylistTrackLockupView();
  MEMORY[0x28223BE20](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21700C8E4();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700C924();
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21700C894();
  v14 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v18 = *a1;
  v19 = a1[1];
  v39 = v35 - v20;
  sub_2168C045C();
  v41 = v13;
  result = sub_2168C6954();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v45 + 1);
    if (v19 < *(v22 + 16))
    {
      v23 = v40;
      (*(v7 + 16))(v9, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v40);
      sub_2168C045C();
      v24 = sub_21700C884();
      v36 = v25;
      v37 = v24;
      v26 = *(v14 + 8);
      v38 = v14 + 8;
      v45 = v26;
      v26(v16, v46);
      *v6 = v18;
      type metadata accessor for PlaybackPresenter();
      sub_216CC527C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

      *(v6 + 1) = sub_217008CF4();
      *(v6 + 2) = v27;
      *(v6 + 3) = swift_getKeyPath();
      v6[32] = 0;
      *(v6 + 5) = swift_getKeyPath();
      v6[48] = 0;
      v28 = *(v4 + 32);
      *&v6[v28] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
      swift_storeEnumTagMultiPayload();
      v47 = 0x4044000000000000;
      sub_2167CD8D8();
      sub_2170082B4();
      v47 = 0x4036000000000000;
      sub_2170082B4();
      v47 = 0x4050400000000000;
      sub_2170082B4();
      v47 = 0x404C000000000000;
      v29 = sub_2170082B4();
      v35[1] = v35;
      MEMORY[0x28223BE20](v29);
      v30 = v39;
      v31 = v41;
      v35[-4] = v39;
      v35[-3] = v31;
      v35[-2] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0C0);
      sub_216CC527C(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView);
      sub_2168AE57C();
      v32 = v44;
      sub_21700A3B4();
      sub_216CC52C4(v6, type metadata accessor for PlaylistTrackLockupView);
      v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8A08) + 52));
      v34 = v36;
      *v33 = v37;
      v33[1] = v34;
      (*(v7 + 8))(v9, v23);
      (*(v43 + 8))(v31, v42);
      return v45(v30, v46);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216CC4D20(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_21700C924();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_2169BD438();
  return sub_216697664(v5, &qword_27CAB74B8);
}

uint64_t sub_216CC4E44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_216CC4ECC()
{
  sub_216CC4FE0();
  if (v0 <= 0x3F)
  {
    sub_216CC5044(319, &qword_27CAC89D8, MEMORY[0x277CD8590], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_216CC5044(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2167B8000();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216CC4FE0()
{
  if (!qword_27CAC89D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910);
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC89D0);
    }
  }
}

void sub_216CC5044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216CC50CC()
{
  result = qword_27CAC89E8;
  if (!qword_27CAC89E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC89E0);
    sub_2166D9530(&qword_27CAC89F0, &qword_27CAC89F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC89E8);
  }

  return result;
}

uint64_t sub_216CC5190(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216CC51F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s7MusicUI9TrackListVMa_0() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_216CC47AC(a1, v6, a2);
}

uint64_t sub_216CC527C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216CC52C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216CC531C()
{
  result = qword_27CAC8A10;
  if (!qword_27CAC8A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8A00);
    sub_2166D9530(&qword_27CAC8A18, &qword_27CAC8A20);
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8A10);
  }

  return result;
}

uint64_t sub_216CC5400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_216CC5440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216CC5484(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_216CC54C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216CC5518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Page(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E10);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for AnyPageRequest(0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC56B4, 0, 0);
}

uint64_t sub_216CC56B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 136) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_137_3(v27);
    OUTLINED_FUNCTION_74_12();

    return sub_216A98720(v29, v30, v31);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 96);
  if (v10)
  {
    OUTLINED_FUNCTION_961();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_74_12();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 104));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E10);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1141();
    v33 = OUTLINED_FUNCTION_63_7();
    sub_216DDA0F4(v33, v34);
    OUTLINED_FUNCTION_38_0(&unk_21705F028);
    v46 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 120) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_313(v36);
    OUTLINED_FUNCTION_74_12();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v46, a10);
  }
}

uint64_t sub_216CC5874()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  OUTLINED_FUNCTION_252_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v13, qword_27CB22950);
  v14 = OUTLINED_FUNCTION_453();
  v16 = v15(v14);
  OUTLINED_FUNCTION_749(v16, "InitializeViewModel");
  v17 = OUTLINED_FUNCTION_108();
  sub_216DDA0A0(v17, v18);
  v19 = OUTLINED_FUNCTION_1138();
  sub_216ACAFFC(v19, v20);
  sub_216BD4F18();
  sub_2166997CC(v12, &qword_27CABBB08);
  OUTLINED_FUNCTION_993();
  OUTLINED_FUNCTION_830();
  sub_216DDA050();
  OUTLINED_FUNCTION_747();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_216CC5AC0()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_830();
  sub_216DDA050();
  OUTLINED_FUNCTION_523();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC5B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC5CE0, 0, 0);
}

uint64_t sub_216CC5CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216A98B10(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC5E80()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC5F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC6108, 0, 0);
}

uint64_t sub_216CC6108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216A98F00(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC62A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for ReplayPage();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0D0);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for AnyReplayPageRequest(0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC6444, 0, 0);
}

uint64_t sub_216CC6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 136) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_137_3(v27);
    OUTLINED_FUNCTION_74_12();

    return sub_216A9A0A8(v29, v30, v31);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 96);
  if (v10)
  {
    OUTLINED_FUNCTION_961();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_74_12();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 104));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CABF0D0);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1141();
    v33 = OUTLINED_FUNCTION_63_7();
    sub_216DDA0F4(v33, v34);
    OUTLINED_FUNCTION_38_0(&unk_21705FF50);
    v46 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 120) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_313(v36);
    OUTLINED_FUNCTION_74_12();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v46, a10);
  }
}

uint64_t sub_216CC6604()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC66FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  OUTLINED_FUNCTION_252_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v13, qword_27CB22950);
  v14 = OUTLINED_FUNCTION_453();
  v16 = v15(v14);
  OUTLINED_FUNCTION_749(v16, "InitializeViewModel");
  v17 = OUTLINED_FUNCTION_108();
  sub_216DDA0A0(v17, v18);
  v19 = OUTLINED_FUNCTION_1138();
  sub_2167836D8(v19, v20);
  sub_216BD4F18();
  sub_2166997CC(v12, &qword_27CABBB08);
  OUTLINED_FUNCTION_993();
  OUTLINED_FUNCTION_827();
  sub_216DDA050();
  OUTLINED_FUNCTION_747();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_216CC6850()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_827();
  sub_216DDA050();
  OUTLINED_FUNCTION_523();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC6A70, 0, 0);
}

uint64_t sub_216CC6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216A9A498(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC6C10()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_915(v1, v2);
  v3 = sub_217007C24();
  v0[5] = v3;
  OUTLINED_FUNCTION_2(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  OUTLINED_FUNCTION_36(v5);
  v0[8] = OUTLINED_FUNCTION_80();
  v6 = type metadata accessor for Empty();
  OUTLINED_FUNCTION_36(v6);
  v0[9] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  OUTLINED_FUNCTION_36(v7);
  v0[10] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for NoProtoRequest();
  v0[11] = v8;
  OUTLINED_FUNCTION_36(v8);
  v0[12] = OUTLINED_FUNCTION_80();
  v9 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216CC6D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  if (*(v11[4] + 32) == 1)
  {
    v12 = OUTLINED_FUNCTION_13_74(v11[2]);
    v14 = v13(v12);
    v16 = v11[10];
    if (v10)
    {

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_1078();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    v26 = OUTLINED_FUNCTION_15_42(v14, v15, v11[11]);
    if (!v27)
    {
      OUTLINED_FUNCTION_51_13(v26, v11[12]);
      OUTLINED_FUNCTION_38_0(&unk_21705F100);
      v43 = v32;
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      v11[13] = v33;
      *v33 = v34;
      OUTLINED_FUNCTION_1143(v33);
      OUTLINED_FUNCTION_1078();

      return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v43);
    }

    sub_2166997CC(v16, &qword_27CAC8E30);
  }

  v28 = swift_task_alloc();
  v11[15] = v28;
  *v28 = v11;
  v28[1] = sub_216CC7094;
  OUTLINED_FUNCTION_32_10(v11[2]);
  OUTLINED_FUNCTION_1078();

  return sub_216A9B894(v29, v30);
}

uint64_t sub_216CC6F14()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC700C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_109_8();
  sub_216DDA050();
  OUTLINED_FUNCTION_1277();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC7094()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_37_6();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_202_0();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216CC7200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Replay();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC92B8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for AnyReplayRequest(0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC739C, 0, 0);
}

uint64_t sub_216CC739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 136) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_137_3(v27);
    OUTLINED_FUNCTION_74_12();

    return sub_216A9C864(v29, v30, v31);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 96);
  if (v10)
  {
    OUTLINED_FUNCTION_961();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_74_12();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 104));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC92B8);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1141();
    v33 = OUTLINED_FUNCTION_63_7();
    sub_216DDA0F4(v33, v34);
    OUTLINED_FUNCTION_38_0(&unk_21705F9C0);
    v46 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 120) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_313(v36);
    OUTLINED_FUNCTION_74_12();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v46, a10);
  }
}

uint64_t sub_216CC755C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC7654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  OUTLINED_FUNCTION_252_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v13, qword_27CB22950);
  v14 = OUTLINED_FUNCTION_453();
  v16 = v15(v14);
  OUTLINED_FUNCTION_749(v16, "InitializeViewModel");
  v17 = OUTLINED_FUNCTION_108();
  sub_216DDA0A0(v17, v18);
  v19 = OUTLINED_FUNCTION_1138();
  sub_2167A51A4(v19, v20);
  sub_216BD4F18();
  sub_2166997CC(v12, &qword_27CABBB08);
  OUTLINED_FUNCTION_993();
  OUTLINED_FUNCTION_826();
  sub_216DDA050();
  OUTLINED_FUNCTION_747();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_216CC77A8()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_826();
  sub_216DDA050();
  OUTLINED_FUNCTION_523();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_37_6();
  v11 = *v10;
  OUTLINED_FUNCTION_28();
  *v12 = v11;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_202_0();
  OUTLINED_FUNCTION_91_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_216CC79C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for ReplayYear(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6A68);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for AnyReplayYearRequest(0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC7B5C, 0, 0);
}

uint64_t sub_216CC7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 136) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_137_3(v27);
    OUTLINED_FUNCTION_74_12();

    return sub_216A9CC54(v29, v30, v31);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 96);
  if (v10)
  {
    OUTLINED_FUNCTION_961();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_74_12();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 104));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC6A68);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1141();
    v33 = OUTLINED_FUNCTION_63_7();
    sub_216DDA0F4(v33, v34);
    OUTLINED_FUNCTION_38_0(&unk_217060588);
    v46 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 120) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_313(v36);
    OUTLINED_FUNCTION_74_12();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v46, a10);
  }
}

uint64_t sub_216CC7D1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  OUTLINED_FUNCTION_252_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v13, qword_27CB22950);
  v14 = OUTLINED_FUNCTION_453();
  v16 = v15(v14);
  OUTLINED_FUNCTION_749(v16, "InitializeViewModel");
  v17 = OUTLINED_FUNCTION_108();
  sub_216DDA0A0(v17, v18);
  v19 = OUTLINED_FUNCTION_1138();
  sub_21693E388(v19, v20);
  sub_216BD4F18();
  sub_2166997CC(v12, &qword_27CABBB08);
  OUTLINED_FUNCTION_993();
  OUTLINED_FUNCTION_825();
  sub_216DDA050();
  OUTLINED_FUNCTION_747();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_216CC7F68()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_825();
  sub_216DDA050();
  OUTLINED_FUNCTION_523();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC7FF8()
{
  OUTLINED_FUNCTION_33();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_217007C24();
  v1[6] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  OUTLINED_FUNCTION_36(v7);
  v1[9] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for Empty();
  OUTLINED_FUNCTION_36(v8);
  v1[10] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  OUTLINED_FUNCTION_36(v9);
  v1[11] = OUTLINED_FUNCTION_80();
  v10 = type metadata accessor for NoProtoRequest();
  v1[12] = v10;
  OUTLINED_FUNCTION_36(v10);
  v1[13] = OUTLINED_FUNCTION_80();
  v11 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_216CC813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216A9D598(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC82DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC83D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  OUTLINED_FUNCTION_252_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v13, qword_27CB22950);
  v14 = OUTLINED_FUNCTION_453();
  v16 = v15(v14);
  OUTLINED_FUNCTION_749(v16, "InitializeViewModel");
  OUTLINED_FUNCTION_345();
  v17 = OUTLINED_FUNCTION_108();
  sub_216DDA0A0(v17, v18);
  v19 = OUTLINED_FUNCTION_1138();
  sub_21681C004(v19, v20);
  sub_216BD4F18();
  sub_2166997CC(v12, &qword_27CABBB08);
  OUTLINED_FUNCTION_993();
  OUTLINED_FUNCTION_109_8();
  sub_216DDA050();
  OUTLINED_FUNCTION_747();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_216CC8518()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_109_8();
  sub_216DDA050();
  OUTLINED_FUNCTION_523();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC85A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC8738, 0, 0);
}

uint64_t sub_216CC8738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216AA0D90(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC88D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC8A68, 0, 0);
}

uint64_t sub_216CC8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216AA1180(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC8C08()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC8D00()
{
  OUTLINED_FUNCTION_93();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v0, qword_27CB22950);
  v1 = OUTLINED_FUNCTION_1253();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1280(v3, "InitializeViewModel");
  return OUTLINED_FUNCTION_0_81();
}

uint64_t sub_216CC8DC0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_109_8();
  sub_216DDA050();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47_8();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_216CC8E58()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_37_6();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_202_0();
  OUTLINED_FUNCTION_12_7();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216CC8FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC9154, 0, 0);
}

uint64_t sub_216CC9154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216AA1B3C(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC92F4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_915(v1, v2);
  v3 = sub_217007C24();
  v0[5] = v3;
  OUTLINED_FUNCTION_2(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  OUTLINED_FUNCTION_36(v5);
  v0[8] = OUTLINED_FUNCTION_80();
  v6 = type metadata accessor for Empty();
  OUTLINED_FUNCTION_36(v6);
  v0[9] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  OUTLINED_FUNCTION_36(v7);
  v0[10] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for NoProtoRequest();
  v0[11] = v8;
  OUTLINED_FUNCTION_36(v8);
  v0[12] = OUTLINED_FUNCTION_80();
  v9 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216CC9430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  if (*(v11[4] + 32) == 1)
  {
    v12 = OUTLINED_FUNCTION_13_74(v11[2]);
    v14 = v13(v12);
    v16 = v11[10];
    if (v10)
    {

      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_1078();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    v26 = OUTLINED_FUNCTION_15_42(v14, v15, v11[11]);
    if (!v27)
    {
      OUTLINED_FUNCTION_51_13(v26, v11[12]);
      OUTLINED_FUNCTION_38_0(&unk_21705F100);
      v43 = v32;
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      v11[13] = v33;
      *v33 = v34;
      OUTLINED_FUNCTION_1143(v33);
      OUTLINED_FUNCTION_1078();

      return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v43);
    }

    sub_2166997CC(v16, &qword_27CAC8E30);
  }

  v28 = swift_task_alloc();
  v11[15] = v28;
  *v28 = v11;
  v28[1] = sub_216CC97B0;
  OUTLINED_FUNCTION_32_10(v11[2]);
  OUTLINED_FUNCTION_1078();

  return sub_216AA1F2C(v29, v30);
}

uint64_t sub_216CC95F8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216CC96F0()
{
  OUTLINED_FUNCTION_93();
  if (qword_27CAB5BC8 != -1)
  {
    OUTLINED_FUNCTION_7_91();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10);
  __swift_project_value_buffer(v0, qword_27CB22950);
  v1 = OUTLINED_FUNCTION_1253();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1280(v3, "InitializeViewModel");
  return OUTLINED_FUNCTION_0_81();
}

uint64_t sub_216CC97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v26 = v14;
  OUTLINED_FUNCTION_941();
  v15 = *v13;
  OUTLINED_FUNCTION_28();
  *v16 = v15;

  OUTLINED_FUNCTION_1051();

  if (!v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_7_3();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_216CC994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC9ADC, 0, 0);
}

uint64_t sub_216CC9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216AA34E4(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

uint64_t sub_216CC9C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_217007C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  v4[9] = swift_task_alloc();
  type metadata accessor for Empty();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for NoProtoRequest();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CC9E0C, 0, 0);
}

uint64_t sub_216CC9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1173();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_208_1(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_137_3(v29);
    OUTLINED_FUNCTION_1078();

    return sub_216AA38D4(v31, v32, v33);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 88);
  if (v10)
  {
    OUTLINED_FUNCTION_761();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_1078();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 96));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_51_13(v27, *(v11 + 104));
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v47 = v35;
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_296(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_136_2(v37);
    OUTLINED_FUNCTION_1078();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
  }
}

void sub_216CC9FAC()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1090();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_25_1();
  v7 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v35 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v34 = v11;
  v12 = 0;
  v13 = *(v1 + 16);
  v36 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v14 = _s7SectionVMa(0);
    OUTLINED_FUNCTION_2(v14);
    v4(v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v16 + 72) * v12);
    if (v0)
    {

      break;
    }

    v17 = OUTLINED_FUNCTION_849();
    if (__swift_getEnumTagSinglePayload(v17, v18, v7) == 1)
    {
      sub_2166997CC(v2, &qword_27CABBAE0);
      ++v12;
    }

    else
    {
      sub_216DDA0F4(v2, v34);
      sub_216DDA0F4(v34, v35);
      v19 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = OUTLINED_FUNCTION_62_12();
        sub_21693796C(v28, v29, v30, v31);
        v19 = v32;
      }

      v20 = v19;
      v21 = *(v19 + 16);
      v36 = v20;
      v22 = *(v20 + 24);
      v23 = v21 + 1;
      if (v21 >= v22 >> 1)
      {
        sub_21693796C(v22 > 1, v21 + 1, 1, v36);
        v23 = v21 + 1;
        v36 = v33;
      }

      ++v12;
      *(v36 + 16) = v23;
      OUTLINED_FUNCTION_21_1();
      sub_216DDA0F4(v27, v25 + v24 + *(v26 + 72) * v21);
    }
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216CCA288()
{
  OUTLINED_FUNCTION_1244();
  v3 = 0;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  while (v5 != v3)
  {
    v7 = type metadata accessor for ListSection();
    OUTLINED_FUNCTION_2(v7);
    v2(__src, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v3);
    if (v0)
    {

      return v6;
    }

    if (__src[3])
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_2169386CC();
        v6 = v17;
      }

      v12 = v6;
      v13 = *(v6 + 16);
      v14 = v12;
      v15 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        v22 = v13 + 1;
        sub_2169386CC();
        v15 = v22;
        v14 = v18;
      }

      ++v3;
      *(v14 + 16) = v15;
      v16 = v14 + 88 * v13;
      v6 = v14;
      memcpy((v16 + 32), __dst, 0x58uLL);
    }

    else
    {
      OUTLINED_FUNCTION_754();
      sub_2166997CC(v10, v11);
      ++v3;
    }
  }

  return v6;
}

void sub_216CCA718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_733();
  v7 = 0;
  v15 = MEMORY[0x277D84F90];
  v9 = *(v8 + 16);
  while (v9 != v7)
  {
    if (v7 >= v9)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v10 = *(a4(0) - 8);
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

    v12 = v6(&v14, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7);
    if (v4)
    {

      return;
    }

    ++v7;
    if (v14)
    {
      MEMORY[0x21CE9F610](v12);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      OUTLINED_FUNCTION_69();
      sub_21700E8C4();
      v7 = v11;
    }
  }
}

void sub_216CCA884()
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1090();
  v34 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9910);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25_1();
  v33 = type metadata accessor for SocialProfileFollowRequestLockup();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v31 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v30 = v11;
  v12 = 0;
  v13 = v1;
  v14 = *(v1 + 16);
  v32 = MEMORY[0x277D84F90];
  while (v14 != v12)
  {
    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    v34(v13 + v15 + v16 * v12);
    if (v0)
    {

      break;
    }

    v17 = OUTLINED_FUNCTION_849();
    if (__swift_getEnumTagSinglePayload(v17, v18, v33) == 1)
    {
      sub_2166997CC(v2, &qword_27CAC9910);
      ++v12;
    }

    else
    {
      sub_216DDA0F4(v2, v30);
      sub_216DDA0F4(v30, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_29_0();
        sub_2169394CC(v22, v23, v24, v25);
        v32 = v26;
      }

      v20 = *(v32 + 16);
      v19 = *(v32 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v28 = *(v32 + 16);
        v29 = v20 + 1;
        sub_2169394CC(v19 > 1, v20 + 1, 1, v32);
        v20 = v28;
        v21 = v29;
        v32 = v27;
      }

      ++v12;
      *(v32 + 16) = v21;
      sub_216DDA0F4(v31, v32 + v15 + v20 * v16);
    }
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216CCAAE0()
{
  v0 = OUTLINED_FUNCTION_45_12();
  type metadata accessor for Page.Header(v0);
  sub_2166DC484(&qword_280E2C8D8, type metadata accessor for Page.Header);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v1, v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_280E457A0, &qword_27CABD4A0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_105_5();
  return v4(v3);
}

uint64_t sub_216CCAC0C()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for LiveRadioGridLockup();
  sub_2166DC484(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B88, &unk_27CABF900);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_21700C644();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCAD38()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for SongDetailList();
  sub_2166DC484(qword_280E42AE0, type metadata accessor for SongDetailList);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8C50, &qword_27CABB7B8);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_21700C084();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCAE64()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for TopSearchLockup();
  sub_2166DC484(&qword_280E41D00, type metadata accessor for TopSearchLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_280E45858, &unk_27CABF980);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCAF90()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for PosterLockup();
  sub_2166DC484(qword_280E44990, type metadata accessor for PosterLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8BC8, &unk_27CABF920);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB0BC()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for ArtistLatestReleaseLockup();
  sub_2166DC484(&qword_280E35C28, type metadata accessor for ArtistLatestReleaseLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B18, &qword_27CABB7D0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB1E8()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for TrackLockup();
  sub_2166DC484(&qword_280E44FA0, type metadata accessor for TrackLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8C78, &unk_27CABF990);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB314()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for VerticalVideoLockup();
  sub_2166DC484(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8CB8, &unk_27CABF9A0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB440()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for TVMovieDetailHeaderLockup();
  sub_2166DC484(qword_280E34CE8, type metadata accessor for TVMovieDetailHeaderLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8CA0, &qword_27CABB7A8);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB56C()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for TVMovieDescription();
  sub_2166DC484(qword_280E3E588, type metadata accessor for TVMovieDescription);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8C88, &qword_27CABB7B0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB698()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for SuperHeroLockup();
  sub_2166DC484(qword_280E41E98, type metadata accessor for SuperHeroLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_280E45878, &qword_27CAB97E0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB7C4()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for SquareLockup();
  sub_2166DC484(&qword_280E445F0, type metadata accessor for SquareLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_280E458C0, &unk_27CABF970);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCB8F0()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for SocialProfileHorizontalLockup();
  sub_2166DC484(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8C08, &unk_27CABF960);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_217006FE4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCBA1C()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  sub_2166DC484(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8BF8, &qword_27CABF950);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_21700C924();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCBB48()
{
  OUTLINED_FUNCTION_45_12();
  _s6LockupVMa();
  sub_2166DC484(&qword_280E439E8, _s6LockupVMa);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8BE8, &unk_27CABF940);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCBC74()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for RecentSearchLockup();
  sub_2166DC484(qword_280E3E960, type metadata accessor for RecentSearchLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8BD8, &unk_27CABF930);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCBDA0()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for PlaylistDetailHeaderLockup();
  sub_2166DC484(qword_280E34400, type metadata accessor for PlaylistDetailHeaderLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8BA8, &qword_27CABB7C8);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_21700C924();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCBECC()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for HorizontalPosterLockup();
  sub_2166DC484(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B70, &unk_27CABF8F0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCBFF8()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for HorizontalLockup();
  sub_2166DC484(qword_280E410F0, type metadata accessor for HorizontalLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B60, &unk_27CABF8E0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCC124()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for HeaderComponentModel();
  sub_2166DC484(&qword_280E3C3A8, type metadata accessor for HeaderComponentModel);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B48, &qword_27CAB9728);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCC250()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for FlowcaseLockup();
  sub_2166DC484(qword_280E43620, type metadata accessor for FlowcaseLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B38, &unk_27CABF8D0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCC37C()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for BubbleLockup();
  sub_2166DC484(&qword_280E44DC0, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8B28, &unk_27CABF8C0);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCC4A8()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for AlbumDetailHeaderLockup();
  sub_2166DC484(&qword_280E38970, type metadata accessor for AlbumDetailHeaderLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8AF8, &qword_27CABB418);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_21700C1E4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

uint64_t sub_216CCC5D4()
{
  OUTLINED_FUNCTION_45_12();
  type metadata accessor for ListLockup();
  sub_2166DC484(&qword_27CABF8A0, type metadata accessor for ListLockup);
  OUTLINED_FUNCTION_488();
  sub_2166DC484(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26_3(&qword_27CAC8C30, &qword_27CABB830);
  OUTLINED_FUNCTION_94_2();

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2();
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_105_5();
  return v3(v2);
}

void sub_216CCC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_1172();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_8_1();
  type metadata accessor for MusicStackAuthority();
  sub_2166DC484(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  *(v22 + 144) = sub_217008CF4();
  *(v22 + 152) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78F8);
  v35 = v34[24];
  *(v22 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v36 = v22 + v34[25];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = v22 + v34[26];
  *v37 = sub_216CEB53C;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  v38 = *(v30 + 16);
  *(v22 + 24) = *v30;
  *(v22 + 40) = v38;
  *(v22 + 56) = *(v30 + 32);
  type metadata accessor for UserSocialProfileCoordinator();
  OUTLINED_FUNCTION_1232();
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_727();
  sub_21700E094();
  *(v22 + 88) = a10;
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_2_34();
  *(v22 + 96) = a10;
  type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_2_34();
  *(v22 + 104) = a10;
  type metadata accessor for AppDestinationPageProviderBox();
  OUTLINED_FUNCTION_2_34();
  *(v22 + 64) = a10;
  type metadata accessor for CloudLibraryStatusController();
  OUTLINED_FUNCTION_2_34();
  *(v22 + 112) = a10;
  type metadata accessor for UnifiedMessages.Coordinator();
  OUTLINED_FUNCTION_2_34();
  *(v22 + 136) = a10;
  if (!v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
    OUTLINED_FUNCTION_2_34();
    __swift_project_boxed_opaque_existential_1(&a10, *(&a11 + 1));
    v39 = OUTLINED_FUNCTION_588();
    v28 = v40(v39);
    v26 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  }

  *(v22 + 72) = v28;
  *(v22 + 80) = v26;
  sub_216DD9F00();
  OUTLINED_FUNCTION_8_97();
  v42 = swift_allocObject();
  v43 = a11;
  *(v42 + 16) = a10;
  *(v42 + 32) = v43;
  *(v42 + 48) = a12;
  *(v42 + 56) = v32;
  *v22 = sub_216DC2770;
  *(v22 + 8) = v42;
  *(v22 + 16) = 0;
  v44 = type metadata accessor for MusicTabChangePublisher();

  OUTLINED_FUNCTION_727();
  sub_21700E094();
  v45 = a10;
  sub_2166DC484(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);
  OUTLINED_FUNCTION_54_3();
  sub_217008684();
  OUTLINED_FUNCTION_1130();

  v46 = OUTLINED_FUNCTION_227();
  sub_2166997CC(v46, v47);
  *(v22 + 120) = v45;
  *(v22 + 128) = v44;
  v48 = (v22 + v34[27]);
  *v48 = 0;
  v48[1] = 0;
  OUTLINED_FUNCTION_1171();
}

void sub_216CCCA0C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_376(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_10_45();
  v11 = type metadata accessor for Page.Header(v10);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_63(v13, v49);
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_91_12(v15, v16, v17, v18, v19, v20, v21, v22, v50);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v25);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_78_1();
  sub_2170067A4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_39_0();
  v29 = OUTLINED_FUNCTION_740();
  sub_216CE36FC(v29);
  OUTLINED_FUNCTION_22_4();
  sub_216DB076C();
  sub_2166997CC(v1, &unk_27CABF9C0);
  OUTLINED_FUNCTION_46_0(v3);
  if (v30)
  {
    sub_2166997CC(v3, &qword_27CAB7088);
    if (qword_27CAB6108 != -1)
    {
      OUTLINED_FUNCTION_25_48();
    }

    v31 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v31, qword_27CACA410);
    OUTLINED_FUNCTION_623();
    v32 = sub_217007C84();
    v33 = sub_21700ED84();
    if (OUTLINED_FUNCTION_891(v33))
    {
      OUTLINED_FUNCTION_544();
      swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_27_37();
      OUTLINED_FUNCTION_637(v34);
      *v0 = 136446466;
      v35 = sub_2166A85FC(0x726564616548, 0xE600000000000000, &v52);
      OUTLINED_FUNCTION_213_1(v35);
      OUTLINED_FUNCTION_1159();
      OUTLINED_FUNCTION_59_14();
      sub_216DDA050();
      sub_21700F324();
      OUTLINED_FUNCTION_550();
      OUTLINED_FUNCTION_547();
      OUTLINED_FUNCTION_10_87();

      *(v0 + 14) = &v51;
      OUTLINED_FUNCTION_551(&dword_216679000, v36, v2, "Dropped %{public}s item with id: %{public}s, no music item.");
      OUTLINED_FUNCTION_890();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    else
    {
      OUTLINED_FUNCTION_59_14();
      sub_216DDA050();
    }
  }

  else
  {
    OUTLINED_FUNCTION_379();
    OUTLINED_FUNCTION_609();
    v37();
    OUTLINED_FUNCTION_840();
    if (v5 && (OUTLINED_FUNCTION_12_79(&qword_280E45798, &qword_27CABD4A0), v38 = OUTLINED_FUNCTION_109(), sub_21694D6C0(v38)))
    {
      v39 = OUTLINED_FUNCTION_26_21();
      sub_216DCFA40(v39, v4);
    }

    else
    {
      OUTLINED_FUNCTION_645();
      OUTLINED_FUNCTION_566();
      sub_216DDA0A0(v40, v41);
      v42 = OUTLINED_FUNCTION_122_7();
      v43(v42);
      OUTLINED_FUNCTION_720();
      v44 = OUTLINED_FUNCTION_390();
      sub_216DC277C(v44, v45);
    }

    OUTLINED_FUNCTION_12_79(&qword_280E45798, &qword_27CABD4A0);
    OUTLINED_FUNCTION_55_3();

    OUTLINED_FUNCTION_719(v46);

    v47 = OUTLINED_FUNCTION_375();
    v48(v47);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_216CCCDC0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_244_1(v4, v5, v6, v7);
  type metadata accessor for ArtistLatestReleaseLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_63(v9, v48);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_91_12(v11, v12, v13, v14, v15, v16, v17, v18, v49);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_67_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  sub_2170067A4();
  OUTLINED_FUNCTION_64_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_450();
  sub_216CE2AF0();
  OUTLINED_FUNCTION_102_10();
  sub_216DB076C();
  sub_2166997CC(v2, &unk_27CABF9C0);
  OUTLINED_FUNCTION_15_6(v1);
  if (v25)
  {
    sub_2166997CC(v1, &qword_27CAB7088);
    if (qword_27CAB6108 != -1)
    {
      OUTLINED_FUNCTION_25_48();
    }

    v26 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v26, qword_27CACA410);
    OUTLINED_FUNCTION_351();
    v27 = sub_217007C84();
    v28 = sub_21700ED84();
    if (OUTLINED_FUNCTION_555(v28))
    {
      OUTLINED_FUNCTION_544();
      swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_27_37();
      OUTLINED_FUNCTION_658(v29);
      *v0 = 136446466;
      OUTLINED_FUNCTION_304();
      v32 = sub_2166A85FC(0xD000000000000019, v30, v31);
      OUTLINED_FUNCTION_120_6(v32);
      OUTLINED_FUNCTION_507();
      sub_216DDA050();
      sub_21700F324();
      OUTLINED_FUNCTION_550();
      OUTLINED_FUNCTION_547();
      OUTLINED_FUNCTION_10_87();

      *(v0 + 14) = &v50;
      OUTLINED_FUNCTION_350(&dword_216679000, v33, v34, "Dropped %{public}s item with id: %{public}s, no music item.");
      OUTLINED_FUNCTION_577();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    else
    {
      OUTLINED_FUNCTION_507();
      sub_216DDA050();
    }
  }

  else
  {
    v35 = OUTLINED_FUNCTION_243_1();
    v36(v35);
    OUTLINED_FUNCTION_935();
    if (v0 && (OUTLINED_FUNCTION_12_79(&qword_27CAC8B10, &qword_27CABB7D0), v37 = OUTLINED_FUNCTION_780(), sub_21694D6C0(v37)))
    {
      v38 = OUTLINED_FUNCTION_322();
      sub_216DCFC18(v38, v39);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_119_7();
      sub_216DDA0A0(v40, v41);
      v42 = OUTLINED_FUNCTION_242_1();
      v43(v42);
      OUTLINED_FUNCTION_777();
      v44 = OUTLINED_FUNCTION_47();
      sub_216DC2CE4(v44, v3);
    }

    OUTLINED_FUNCTION_12_79(&qword_27CAC8B10, &qword_27CABB7D0);
    OUTLINED_FUNCTION_55_3();

    OUTLINED_FUNCTION_778(v45);

    v46 = OUTLINED_FUNCTION_3_139();
    v47(v46);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}

void sub_216CCD170()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_244_1(v4, v5, v6, v7);
  type metadata accessor for TrackLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_63(v9, v46);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_91_12(v11, v12, v13, v14, v15, v16, v17, v18, v47);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_67_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v21);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  sub_2170067A4();
  OUTLINED_FUNCTION_64_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_694();
  sub_216CE2CBC();
  OUTLINED_FUNCTION_102_10();
  sub_216DB076C();
  sub_2166997CC(v2, &unk_27CABF9C0);
  OUTLINED_FUNCTION_15_6(v1);
  if (v25)
  {
    sub_2166997CC(v1, &qword_27CAB7088);
    if (qword_27CAB6108 != -1)
    {
      OUTLINED_FUNCTION_25_48();
    }

    v26 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v26, qword_27CACA410);
    OUTLINED_FUNCTION_351();
    v27 = sub_217007C84();
    v28 = sub_21700ED84();
    if (OUTLINED_FUNCTION_555(v28))
    {
      OUTLINED_FUNCTION_544();
      swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_27_37();
      OUTLINED_FUNCTION_658(v29);
      *v0 = 136446466;
      v30 = sub_2166A85FC(0x636F4C6B63617254, 0xEB0000000070756BLL, &v49);
      OUTLINED_FUNCTION_120_6(v30);
      OUTLINED_FUNCTION_507();
      sub_216DDA050();
      sub_21700F324();
      OUTLINED_FUNCTION_550();
      OUTLINED_FUNCTION_547();
      OUTLINED_FUNCTION_10_87();

      *(v0 + 14) = &v48;
      OUTLINED_FUNCTION_350(&dword_216679000, v31, v32, "Dropped %{public}s item with id: %{public}s, no music item.");
      OUTLINED_FUNCTION_577();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    else
    {
      OUTLINED_FUNCTION_507();
      sub_216DDA050();
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_243_1();
    v34(v33);
    OUTLINED_FUNCTION_935();
    if (v0 && (OUTLINED_FUNCTION_12_79(&qword_27CAC8C70, &unk_27CABF990), v35 = OUTLINED_FUNCTION_780(), sub_21694D6C0(v35)))
    {
      v36 = OUTLINED_FUNCTION_322();
      sub_216DCFDF0(v36, v37);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_119_7();
      sub_216DDA0A0(v38, v39);
      v40 = OUTLINED_FUNCTION_242_1();
      v41(v40);
      OUTLINED_FUNCTION_777();
      v42 = OUTLINED_FUNCTION_47();
      sub_216DC2FD4(v42, v3);
    }

    OUTLINED_FUNCTION_12_79(&qword_27CAC8C70, &unk_27CABF990);
    OUTLINED_FUNCTION_55_3();

    OUTLINED_FUNCTION_778(v43);

    v44 = OUTLINED_FUNCTION_3_139();
    v45(v44);
  }

  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_26();
}