id sub_1D5587DE4(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedAudio();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v10 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        return sub_1D4E50004(v23, &qword_1EC7EC510, &unk_1D5621040);
      }

      sub_1D4E48324(v23, &v25);
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      (*(v12 + 16))(v23, v11, v12);
      v9 = LOBYTE(v23[0]);
      result = __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    MEMORY[0x1EEE9AC00](result);
    *&v23[-1] = v4;
    v13 = sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio);
    *(&v23[-1] + 1) = v13;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v23[-1] = v4;
    *(&v23[-1] + 1) = v13;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v25 != v9)
    {
      v15 = 0x6C61727475656E2ELL;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v9)
      {
        if (v9 == 1)
        {
          v16 = 0x7469726F7661662ELL;
        }

        else
        {
          v16 = 0x656B696C7369642ELL;
        }

        if (v9 == 1)
        {
          v17 = 0xEA00000000006465;
        }

        else
        {
          v17 = 0xE900000000000064;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        v16 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v23[0]))
      {
        if (LOBYTE(v23[0]) == 1)
        {
          v15 = 0x7469726F7661662ELL;
          v20 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0x656B696C7369642ELL;
          v20 = 0xE900000000000064;
        }
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v15, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v25, v26);

      return sub_1D556C6A4(v9, type metadata accessor for UploadedAudio, &qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D558832C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TVSeason();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v10 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        return sub_1D4E50004(v23, &qword_1EC7EC510, &unk_1D5621040);
      }

      sub_1D4E48324(v23, &v25);
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      (*(v12 + 16))(v23, v11, v12);
      v9 = LOBYTE(v23[0]);
      result = __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    MEMORY[0x1EEE9AC00](result);
    *&v23[-1] = v4;
    v13 = sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason);
    *(&v23[-1] + 1) = v13;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v23[-1] = v4;
    *(&v23[-1] + 1) = v13;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v25 != v9)
    {
      v15 = 0x6C61727475656E2ELL;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v9)
      {
        if (v9 == 1)
        {
          v16 = 0x7469726F7661662ELL;
        }

        else
        {
          v16 = 0x656B696C7369642ELL;
        }

        if (v9 == 1)
        {
          v17 = 0xEA00000000006465;
        }

        else
        {
          v17 = 0xE900000000000064;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        v16 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v23[0]))
      {
        if (LOBYTE(v23[0]) == 1)
        {
          v15 = 0x7469726F7661662ELL;
          v20 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0x656B696C7369642ELL;
          v20 = 0xE900000000000064;
        }
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v15, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v25, v26);

      return sub_1D556C6A4(v9, type metadata accessor for TVSeason, qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D5588874(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TVEpisode();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v10 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        return sub_1D4E50004(v23, &qword_1EC7EC510, &unk_1D5621040);
      }

      sub_1D4E48324(v23, &v25);
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      (*(v12 + 16))(v23, v11, v12);
      v9 = LOBYTE(v23[0]);
      result = __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    MEMORY[0x1EEE9AC00](result);
    *&v23[-1] = v4;
    v13 = sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode);
    *(&v23[-1] + 1) = v13;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v23[-1] = v4;
    *(&v23[-1] + 1) = v13;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v25 != v9)
    {
      v15 = 0x6C61727475656E2ELL;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v9)
      {
        if (v9 == 1)
        {
          v16 = 0x7469726F7661662ELL;
        }

        else
        {
          v16 = 0x656B696C7369642ELL;
        }

        if (v9 == 1)
        {
          v17 = 0xEA00000000006465;
        }

        else
        {
          v17 = 0xE900000000000064;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        v16 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v23[0]))
      {
        if (LOBYTE(v23[0]) == 1)
        {
          v15 = 0x7469726F7661662ELL;
          v20 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0x656B696C7369642ELL;
          v20 = 0xE900000000000064;
        }
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v15, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v25, v26);

      return sub_1D556C6A4(v9, type metadata accessor for TVEpisode, &qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D5588DBC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicMovie();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v10 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        return sub_1D4E50004(v23, &qword_1EC7EC510, &unk_1D5621040);
      }

      sub_1D4E48324(v23, &v25);
      v11 = v27;
      v12 = v28;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      (*(v12 + 16))(v23, v11, v12);
      v9 = LOBYTE(v23[0]);
      result = __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    MEMORY[0x1EEE9AC00](result);
    *&v23[-1] = v4;
    v13 = sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie);
    *(&v23[-1] + 1) = v13;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v23[-1] = v4;
    *(&v23[-1] + 1) = v13;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v25 != v9)
    {
      v15 = 0x6C61727475656E2ELL;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v9)
      {
        if (v9 == 1)
        {
          v16 = 0x7469726F7661662ELL;
        }

        else
        {
          v16 = 0x656B696C7369642ELL;
        }

        if (v9 == 1)
        {
          v17 = 0xEA00000000006465;
        }

        else
        {
          v17 = 0xE900000000000064;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        v16 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      *&v23[-1] = v4;
      *(&v23[-1] + 1) = v13;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v23[0]))
      {
        if (LOBYTE(v23[0]) == 1)
        {
          v15 = 0x7469726F7661662ELL;
          v20 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0x656B696C7369642ELL;
          v20 = 0xE900000000000064;
        }
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v15, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v25, v26);

      return sub_1D556C6A4(v9, type metadata accessor for MusicMovie, &qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5589304(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() isMainThread];
  if (!v12)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      v13 = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = *(*v1 + 144);
  swift_beginAccess();
  v15 = sub_1D5613EF8();
  v31 = v15;
  v32 = &protocol witness table for Artist;
  v16 = __swift_allocate_boxed_opaque_existential_0(&v29);
  (*(*(v15 - 8) + 16))(v16, v2 + v14, v15);
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  sub_1D5613DB8();
  (*(v5 + 16))(v9, v11, v4);
  v17 = (*(v5 + 88))(v9, v4);
  if (v17 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v11, v4);
    v12 = __swift_destroy_boxed_opaque_existential_1(&v29);
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (v17 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v11, v4);
    v12 = __swift_destroy_boxed_opaque_existential_1(&v29);
    v13 = 1;
    goto LABEL_8;
  }

  if (v17 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  (*(v5 + 8))(v11, v4);
  v12 = __swift_destroy_boxed_opaque_existential_1(&v29);
  v13 = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v12);
  sub_1D5613EF8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v29 != v13)
  {
    v20 = 0x6C61727475656E2ELL;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v13)
    {
      if (v13 == 1)
      {
        v21 = 0x7469726F7661662ELL;
      }

      else
      {
        v21 = 0x656B696C7369642ELL;
      }

      if (v13 == 1)
      {
        v22 = 0xEA00000000006465;
      }

      else
      {
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
      v21 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v21, v22);

    v23 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v23);
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v33)
    {
      if (v33 == 1)
      {
        v20 = 0x7469726F7661662ELL;
        v25 = 0xEA00000000006465;
      }

      else
      {
        v20 = 0x656B696C7369642ELL;
        v25 = 0xE900000000000064;
      }
    }

    else
    {
      v25 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v20, v25);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v26 = 0xD000000000000026;
    }

    else
    {
      v26 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v27 = "wnloadButtonsDidChange";
    }

    else
    {
      v27 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v26, v27 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v29, v30);

    return sub_1D556C71C(v13, MEMORY[0x1E6976F28], &protocol witness table for Artist);
  }

  return result;
}

id sub_1D5589928(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D560EEA8();
      v31 = v7;
      v32 = &protocol witness table for MusicVideo;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v28, v31);
      v10 = *(v2 + *(*v2 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E69754E8], &protocol witness table for MusicVideo, sub_1D55ACE98, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);

      v5 = HIBYTE(v33);
      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1D560EEA8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v28)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v16 = 0x64656E6E69702ELL;
      }

      else
      {
        v16 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v33))
      {
        v20 = 0x64656E6E69702ELL;
      }

      else
      {
        v20 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v33))
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v20, v21);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v22 = 0xD000000000000026;
      }

      else
      {
        v22 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v23 = "wnloadButtonsDidChange";
      }

      else
      {
        v23 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v28, v29);

      return sub_1D556C830(v5, MEMORY[0x1E69754E8], &protocol witness table for MusicVideo);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D5589D84(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613838();
      v31 = v7;
      v32 = &protocol witness table for Song;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v28, v31);
      v10 = *(v2 + *(*v2 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E6976BE8], &protocol witness table for Song, sub_1D55ACE98, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);

      v5 = HIBYTE(v33);
      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1D5613838();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v28)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v16 = 0x64656E6E69702ELL;
      }

      else
      {
        v16 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v33))
      {
        v20 = 0x64656E6E69702ELL;
      }

      else
      {
        v20 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v33))
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v20, v21);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v22 = 0xD000000000000026;
      }

      else
      {
        v22 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v23 = "wnloadButtonsDidChange";
      }

      else
      {
        v23 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v28, v29);

      return sub_1D556C830(v5, MEMORY[0x1E6976BE8], &protocol witness table for Song);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D558A1E0(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613AF8();
      v31 = v7;
      v32 = &protocol witness table for Album;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v28, v31);
      v10 = *(v2 + *(*v2 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E6976D28], &protocol witness table for Album, sub_1D55ACE98, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);

      v5 = HIBYTE(v33);
      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1D5613AF8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v28)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v16 = 0x64656E6E69702ELL;
      }

      else
      {
        v16 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v33))
      {
        v20 = 0x64656E6E69702ELL;
      }

      else
      {
        v20 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v33))
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v20, v21);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v22 = 0xD000000000000026;
      }

      else
      {
        v22 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v23 = "wnloadButtonsDidChange";
      }

      else
      {
        v23 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v28, v29);

      return sub_1D556C830(v5, MEMORY[0x1E6976D28], &protocol witness table for Album);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D558A63C(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613D28();
      v21 = v7;
      v22 = &protocol witness table for Track;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v19);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      __swift_project_boxed_opaque_existential_1(&v19, v21);
      v9 = *(v2 + *(*v2 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D5594FEC(&v23);

      v5 = v23;
      result = __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1D5613D28();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v19)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v11 = 0x64656E6E69702ELL;
      }

      else
      {
        v11 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v11, v12);

      v13 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v13);
      v14 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v14);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (v23)
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v23)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v17 = 0xD000000000000026;
      }

      else
      {
        v17 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v18 = "wnloadButtonsDidChange";
      }

      else
      {
        v18 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v17, v18 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v19, v20);

      return sub_1D556C830(v5, MEMORY[0x1E6976E60], &protocol witness table for Track);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D558AA6C(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5614898();
      v31 = v7;
      v32 = &protocol witness table for Playlist;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v28, v31);
      v10 = *(v2 + *(*v2 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E69773E0], &protocol witness table for Playlist, sub_1D55ACE98, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);

      v5 = HIBYTE(v33);
      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1D5614898();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v28)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v16 = 0x64656E6E69702ELL;
      }

      else
      {
        v16 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v33))
      {
        v20 = 0x64656E6E69702ELL;
      }

      else
      {
        v20 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v33))
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v20, v21);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v22 = 0xD000000000000026;
      }

      else
      {
        v22 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v23 = "wnloadButtonsDidChange";
      }

      else
      {
        v23 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v28, v29);

      return sub_1D556C830(v5, MEMORY[0x1E69773E0], &protocol witness table for Playlist);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D558AEC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UploadedVideo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a1)
  {
    v11 = a1 == 1;
  }

  else
  {
    v12 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      return sub_1D4E50004(v25, &qword_1EC7EC500, &unk_1D5621030);
    }

    sub_1D4E48324(v25, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v13 = *(v3 + *(*v3 + 232));
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v25);

    v11 = LOBYTE(v25[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  MEMORY[0x1EEE9AC00](result);
  v24[-2] = v6;
  v14 = sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo);
  v24[-1] = v14;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24[-2] = v6;
  v24[-1] = v14;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v11 != v27)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v24[1] = a2;
    if (v11)
    {
      v16 = 0x64656E6E69702ELL;
    }

    else
    {
      v16 = 0x6E6E6950746F6E2ELL;
    }

    if (v11)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v16, v17);

    v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v18);
    v24[-2] = v6;
    v24[-1] = v14;
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = v6;
    v24[-1] = v14;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v25[0]))
    {
      v20 = 0x64656E6E69702ELL;
    }

    else
    {
      v20 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v25[0]))
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v20, v21);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v22 = 0xD000000000000026;
    }

    else
    {
      v22 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v23 = "wnloadButtonsDidChange";
    }

    else
    {
      v23 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v27, v28);

    return sub_1D556C7A8(v11, type metadata accessor for UploadedVideo, &qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  }

  return result;
}

id sub_1D558B3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UploadedAudio();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a1)
  {
    v11 = a1 == 1;
  }

  else
  {
    v12 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      return sub_1D4E50004(v25, &qword_1EC7EC500, &unk_1D5621030);
    }

    sub_1D4E48324(v25, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v13 = *(v3 + *(*v3 + 232));
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v25);

    v11 = LOBYTE(v25[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  MEMORY[0x1EEE9AC00](result);
  v24[-2] = v6;
  v14 = sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio);
  v24[-1] = v14;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24[-2] = v6;
  v24[-1] = v14;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v11 != v27)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v24[1] = a2;
    if (v11)
    {
      v16 = 0x64656E6E69702ELL;
    }

    else
    {
      v16 = 0x6E6E6950746F6E2ELL;
    }

    if (v11)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v16, v17);

    v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v18);
    v24[-2] = v6;
    v24[-1] = v14;
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = v6;
    v24[-1] = v14;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v25[0]))
    {
      v20 = 0x64656E6E69702ELL;
    }

    else
    {
      v20 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v25[0]))
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v20, v21);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v22 = 0xD000000000000026;
    }

    else
    {
      v22 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v23 = "wnloadButtonsDidChange";
    }

    else
    {
      v23 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v27, v28);

    return sub_1D556C7A8(v11, type metadata accessor for UploadedAudio, &qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  }

  return result;
}

id sub_1D558B8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TVSeason();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a1)
  {
    v11 = a1 == 1;
  }

  else
  {
    v12 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      return sub_1D4E50004(v25, &qword_1EC7EC500, &unk_1D5621030);
    }

    sub_1D4E48324(v25, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v13 = *(v3 + *(*v3 + 232));
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v25);

    v11 = LOBYTE(v25[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  MEMORY[0x1EEE9AC00](result);
  v24[-2] = v6;
  v14 = sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason);
  v24[-1] = v14;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24[-2] = v6;
  v24[-1] = v14;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v11 != v27)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v24[1] = a2;
    if (v11)
    {
      v16 = 0x64656E6E69702ELL;
    }

    else
    {
      v16 = 0x6E6E6950746F6E2ELL;
    }

    if (v11)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v16, v17);

    v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v18);
    v24[-2] = v6;
    v24[-1] = v14;
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = v6;
    v24[-1] = v14;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v25[0]))
    {
      v20 = 0x64656E6E69702ELL;
    }

    else
    {
      v20 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v25[0]))
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v20, v21);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v22 = 0xD000000000000026;
    }

    else
    {
      v22 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v23 = "wnloadButtonsDidChange";
    }

    else
    {
      v23 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v27, v28);

    return sub_1D556C7A8(v11, type metadata accessor for TVSeason, qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  }

  return result;
}

id sub_1D558BDF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TVEpisode();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a1)
  {
    v11 = a1 == 1;
  }

  else
  {
    v12 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      return sub_1D4E50004(v25, &qword_1EC7EC500, &unk_1D5621030);
    }

    sub_1D4E48324(v25, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v13 = *(v3 + *(*v3 + 232));
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v25);

    v11 = LOBYTE(v25[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  MEMORY[0x1EEE9AC00](result);
  v24[-2] = v6;
  v14 = sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode);
  v24[-1] = v14;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24[-2] = v6;
  v24[-1] = v14;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v11 != v27)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v24[1] = a2;
    if (v11)
    {
      v16 = 0x64656E6E69702ELL;
    }

    else
    {
      v16 = 0x6E6E6950746F6E2ELL;
    }

    if (v11)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v16, v17);

    v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v18);
    v24[-2] = v6;
    v24[-1] = v14;
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = v6;
    v24[-1] = v14;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v25[0]))
    {
      v20 = 0x64656E6E69702ELL;
    }

    else
    {
      v20 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v25[0]))
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v20, v21);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v22 = 0xD000000000000026;
    }

    else
    {
      v22 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v23 = "wnloadButtonsDidChange";
    }

    else
    {
      v23 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v27, v28);

    return sub_1D556C7A8(v11, type metadata accessor for TVEpisode, &qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  }

  return result;
}

id sub_1D558C308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicMovie();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a1)
  {
    v11 = a1 == 1;
  }

  else
  {
    v12 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      return sub_1D4E50004(v25, &qword_1EC7EC500, &unk_1D5621030);
    }

    sub_1D4E48324(v25, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v13 = *(v3 + *(*v3 + 232));
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v25);

    v11 = LOBYTE(v25[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  MEMORY[0x1EEE9AC00](result);
  v24[-2] = v6;
  v14 = sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie);
  v24[-1] = v14;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v24[-2] = v6;
  v24[-1] = v14;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v11 != v27)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v24[1] = a2;
    if (v11)
    {
      v16 = 0x64656E6E69702ELL;
    }

    else
    {
      v16 = 0x6E6E6950746F6E2ELL;
    }

    if (v11)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v16, v17);

    v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v18);
    v24[-2] = v6;
    v24[-1] = v14;
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = v6;
    v24[-1] = v14;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v25[0]))
    {
      v20 = 0x64656E6E69702ELL;
    }

    else
    {
      v20 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v25[0]))
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v20, v21);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v22 = 0xD000000000000026;
    }

    else
    {
      v22 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v23 = "wnloadButtonsDidChange";
    }

    else
    {
      v23 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v27, v28);

    return sub_1D556C7A8(v11, type metadata accessor for MusicMovie, &qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  }

  return result;
}

id sub_1D558C818(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613EF8();
      v31 = v7;
      v32 = &protocol witness table for Artist;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v28, v31);
      v10 = *(v2 + *(*v2 + 232));
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E6976F28], &protocol witness table for Artist, sub_1D55ACE98, v11, v12, v13, v14, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);

      v5 = HIBYTE(v33);
      result = __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1D5613EF8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v28)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v16 = 0x64656E6E69702ELL;
      }

      else
      {
        v16 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v16, v17);

      v18 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v18);
      v19 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v33))
      {
        v20 = 0x64656E6E69702ELL;
      }

      else
      {
        v20 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v33))
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v20, v21);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v22 = 0xD000000000000026;
      }

      else
      {
        v22 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v23 = "wnloadButtonsDidChange";
      }

      else
      {
        v23 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v22, v23 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v28, v29);

      return sub_1D556C830(v5, MEMORY[0x1E6976F28], &protocol witness table for Artist);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D558CC74(char a1)
{
  v2 = v1;
  v4 = sub_1D560EEA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *&v1[*(*v1 + 152)];
  if (v10)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v11 = *(v9 + 144);
    swift_beginAccess();
    v12 = *(v5 + 16);
    v12(v8, &v2[v11], v4);
    v34 = v4;
    v35 = &protocol witness table for MusicVideo;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v12(boxed_opaque_existential_0, v8, v4);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = v10;
    sub_1D5590088();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v33);
    (*(v5 + 8))(v8, v4);
    sub_1D558568C(v16);

    v17 = *&v2[*(*v2 + 184)];
    sub_1D55859E8([v17 transientFavoriteStateForModelObject_]);
    sub_1D5589928([v17 transientPinStateForModelObject_]);
    v19 = v36;
    v18 = v37;
    v20 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v20 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v21 = sub_1D560C758();
      __swift_project_value_buffer(v21, qword_1EDD76AA8);

      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 136446722;
        v26 = sub_1D4F636B4();
        v28 = sub_1D4E6835C(v26, v27, v33);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        v29 = sub_1D4E6835C(v19, v18, v33);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v30 = "nge Notifications";
            v31 = 0xD000000000000036;
          }

          else
          {
            v30 = "ntrollerObserver";
            v31 = 0xD000000000000021;
          }
        }

        else
        {
          v31 = 0xD000000000000026;
          v30 = "wnloadButtonsDidChange";
        }

        v32 = sub_1D4E6835C(v31, v30 | 0x8000000000000000, v33);

        *(v24 + 24) = v32;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v25, -1, -1);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558D0E8(char a1)
{
  v2 = v1;
  v4 = sub_1D5613838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *&v1[*(*v1 + 152)];
  if (v10)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v11 = *(v9 + 144);
    swift_beginAccess();
    v12 = *(v5 + 16);
    v12(v8, &v2[v11], v4);
    v34 = v4;
    v35 = &protocol witness table for Song;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v12(boxed_opaque_existential_0, v8, v4);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = v10;
    sub_1D5590088();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v33);
    (*(v5 + 8))(v8, v4);
    sub_1D558568C(v16);

    v17 = *&v2[*(*v2 + 184)];
    sub_1D558600C([v17 transientFavoriteStateForModelObject_]);
    sub_1D5589D84([v17 transientPinStateForModelObject_]);
    v19 = v36;
    v18 = v37;
    v20 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v20 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v21 = sub_1D560C758();
      __swift_project_value_buffer(v21, qword_1EDD76AA8);

      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 136446722;
        v26 = sub_1D4F636B4();
        v28 = sub_1D4E6835C(v26, v27, v33);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        v29 = sub_1D4E6835C(v19, v18, v33);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v30 = "nge Notifications";
            v31 = 0xD000000000000036;
          }

          else
          {
            v30 = "ntrollerObserver";
            v31 = 0xD000000000000021;
          }
        }

        else
        {
          v31 = 0xD000000000000026;
          v30 = "wnloadButtonsDidChange";
        }

        v32 = sub_1D4E6835C(v31, v30 | 0x8000000000000000, v33);

        *(v24 + 24) = v32;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v25, -1, -1);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558D55C(char a1)
{
  v2 = v1;
  v4 = sub_1D5613AF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *&v1[*(*v1 + 152)];
  if (v10)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v11 = *(v9 + 144);
    swift_beginAccess();
    v12 = *(v5 + 16);
    v12(v8, &v2[v11], v4);
    v34 = v4;
    v35 = &protocol witness table for Album;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v12(boxed_opaque_existential_0, v8, v4);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = v10;
    sub_1D5590088();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v33);
    (*(v5 + 8))(v8, v4);
    sub_1D558568C(v16);

    v17 = *&v2[*(*v2 + 184)];
    sub_1D5586630([v17 transientFavoriteStateForModelObject_]);
    sub_1D558A1E0([v17 transientPinStateForModelObject_]);
    v19 = v36;
    v18 = v37;
    v20 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v20 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v21 = sub_1D560C758();
      __swift_project_value_buffer(v21, qword_1EDD76AA8);

      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 136446722;
        v26 = sub_1D4F636B4();
        v28 = sub_1D4E6835C(v26, v27, v33);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        v29 = sub_1D4E6835C(v19, v18, v33);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v30 = "nge Notifications";
            v31 = 0xD000000000000036;
          }

          else
          {
            v30 = "ntrollerObserver";
            v31 = 0xD000000000000021;
          }
        }

        else
        {
          v31 = 0xD000000000000026;
          v30 = "wnloadButtonsDidChange";
        }

        v32 = sub_1D4E6835C(v31, v30 | 0x8000000000000000, v33);

        *(v24 + 24) = v32;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v25, -1, -1);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558D9D0(char a1)
{
  v2 = v1;
  v4 = sub_1D5613D28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *&v1[*(*v1 + 152)];
  if (v10)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v11 = *(v9 + 144);
    swift_beginAccess();
    v12 = *(v5 + 16);
    v12(v8, &v2[v11], v4);
    v34 = v4;
    v35 = &protocol witness table for Track;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v12(boxed_opaque_existential_0, v8, v4);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = v10;
    sub_1D5590088();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v33);
    (*(v5 + 8))(v8, v4);
    sub_1D558568C(v16);

    v17 = *&v2[*(*v2 + 184)];
    sub_1D5586C54([v17 transientFavoriteStateForModelObject_]);
    sub_1D558A63C([v17 transientPinStateForModelObject_]);
    v19 = v36;
    v18 = v37;
    v20 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v20 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v21 = sub_1D560C758();
      __swift_project_value_buffer(v21, qword_1EDD76AA8);

      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 136446722;
        v26 = sub_1D4F636B4();
        v28 = sub_1D4E6835C(v26, v27, v33);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        v29 = sub_1D4E6835C(v19, v18, v33);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v30 = "nge Notifications";
            v31 = 0xD000000000000036;
          }

          else
          {
            v30 = "ntrollerObserver";
            v31 = 0xD000000000000021;
          }
        }

        else
        {
          v31 = 0xD000000000000026;
          v30 = "wnloadButtonsDidChange";
        }

        v32 = sub_1D4E6835C(v31, v30 | 0x8000000000000000, v33);

        *(v24 + 24) = v32;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v25, -1, -1);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558DE44(char a1)
{
  v2 = v1;
  v4 = sub_1D5614898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *&v1[*(*v1 + 152)];
  if (v10)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v11 = *(v9 + 144);
    swift_beginAccess();
    v12 = *(v5 + 16);
    v12(v8, &v2[v11], v4);
    v34 = v4;
    v35 = &protocol witness table for Playlist;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v12(boxed_opaque_existential_0, v8, v4);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = v10;
    sub_1D5590088();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v33);
    (*(v5 + 8))(v8, v4);
    sub_1D558568C(v16);

    v17 = *&v2[*(*v2 + 184)];
    sub_1D5587278([v17 transientFavoriteStateForModelObject_]);
    sub_1D558AA6C([v17 transientPinStateForModelObject_]);
    v19 = v36;
    v18 = v37;
    v20 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v20 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v21 = sub_1D560C758();
      __swift_project_value_buffer(v21, qword_1EDD76AA8);

      v22 = sub_1D560C738();
      v23 = sub_1D56156E8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 136446722;
        v26 = sub_1D4F636B4();
        v28 = sub_1D4E6835C(v26, v27, v33);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        v29 = sub_1D4E6835C(v19, v18, v33);

        *(v24 + 14) = v29;
        *(v24 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v30 = "nge Notifications";
            v31 = 0xD000000000000036;
          }

          else
          {
            v30 = "ntrollerObserver";
            v31 = 0xD000000000000021;
          }
        }

        else
        {
          v31 = 0xD000000000000026;
          v30 = "wnloadButtonsDidChange";
        }

        v32 = sub_1D4E6835C(v31, v30 | 0x8000000000000000, v33);

        *(v24 + 24) = v32;
        _os_log_impl(&dword_1D4E3F000, v22, v23, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v25, -1, -1);
        MEMORY[0x1DA6ED200](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558E2B8(int a1)
{
  v3 = type metadata accessor for UploadedVideo();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + *(*v1 + 152));
  if (v8)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v9 = *(v7 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v9, v6);
    v33 = v3;
    v34 = &protocol witness table for UploadedVideo;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    sub_1D55AC65C(v6, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v11 = v8;
    sub_1D5590918();
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1D55AC6B4();
    sub_1D558582C();

    v12 = *(v1 + *(*v1 + 184));
    sub_1D558789C([v12 transientFavoriteStateForModelObject_]);
    sub_1D558AEC8([v12 transientPinStateForModelObject_], &v35);
    v14 = v35;
    v13 = v36;
    v15 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v15 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v16 = sub_1D560C758();
    __swift_project_value_buffer(v16, qword_1EDD76AA8);

    v17 = sub_1D560C738();
    v18 = sub_1D56156E8();

    if (!os_log_type_enabled(v17, v18))
    {

LABEL_17:

      goto LABEL_18;
    }

    v19 = 0xD000000000000021;
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136446722;
    v23 = sub_1D4F636B4();
    v25 = sub_1D4E6835C(v23, v24, v32);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_1D4E6835C(v14, v13, v32);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2082;
    if (v31)
    {
      if (v31 == 1)
      {
        v27 = "nge Notifications";
        v19 = 0xD000000000000036;
LABEL_16:
        v29 = sub_1D4E6835C(v19, v27 | 0x8000000000000000, v32);

        *(v21 + 24) = v29;
        _os_log_impl(&dword_1D4E3F000, v17, v18, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v22, -1, -1);
        MEMORY[0x1DA6ED200](v21, -1, -1);
        goto LABEL_17;
      }

      v28 = "MediaLibrary Change Notifications";
    }

    else
    {
      v19 = 0xD000000000000026;
      v28 = "MPModelLibraryTransientStateController";
    }

    v27 = (v28 - 32);
    goto LABEL_16;
  }
}

void sub_1D558E6FC(int a1)
{
  v3 = type metadata accessor for UploadedAudio();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + *(*v1 + 152));
  if (v8)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v9 = *(v7 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v9, v6);
    v33 = v3;
    v34 = &protocol witness table for UploadedAudio;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    sub_1D55AC65C(v6, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v11 = v8;
    sub_1D5591510();
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1D55AC6B4();
    sub_1D558582C();

    v12 = *(v1 + *(*v1 + 184));
    sub_1D5587DE4([v12 transientFavoriteStateForModelObject_]);
    sub_1D558B3D8([v12 transientPinStateForModelObject_], &v35);
    v14 = v35;
    v13 = v36;
    v15 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v15 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v16 = sub_1D560C758();
    __swift_project_value_buffer(v16, qword_1EDD76AA8);

    v17 = sub_1D560C738();
    v18 = sub_1D56156E8();

    if (!os_log_type_enabled(v17, v18))
    {

LABEL_17:

      goto LABEL_18;
    }

    v19 = 0xD000000000000021;
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136446722;
    v23 = sub_1D4F636B4();
    v25 = sub_1D4E6835C(v23, v24, v32);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_1D4E6835C(v14, v13, v32);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2082;
    if (v31)
    {
      if (v31 == 1)
      {
        v27 = "nge Notifications";
        v19 = 0xD000000000000036;
LABEL_16:
        v29 = sub_1D4E6835C(v19, v27 | 0x8000000000000000, v32);

        *(v21 + 24) = v29;
        _os_log_impl(&dword_1D4E3F000, v17, v18, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v22, -1, -1);
        MEMORY[0x1DA6ED200](v21, -1, -1);
        goto LABEL_17;
      }

      v28 = "MediaLibrary Change Notifications";
    }

    else
    {
      v19 = 0xD000000000000026;
      v28 = "MPModelLibraryTransientStateController";
    }

    v27 = (v28 - 32);
    goto LABEL_16;
  }
}

void sub_1D558EB40(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TVSeason();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *(v2 + *(*v2 + 152));
  if (v9)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v2 + v10, v7);
    v11 = v9;
    sub_1D556C2F4();
    sub_1D55AC6B4();
    sub_1D558582C();

    v12 = *(v2 + *(*v2 + 184));
    sub_1D558832C([v12 transientFavoriteStateForModelObject_]);
    sub_1D558B8E8([v12 transientPinStateForModelObject_], &v29);
    v14 = v29;
    v13 = v30;
    v15 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v15 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v16 = sub_1D560C758();
      __swift_project_value_buffer(v16, qword_1EDD76AA8);

      v17 = sub_1D560C738();
      v18 = sub_1D56156E8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136446722;
        v21 = sub_1D4F636B4();
        v23 = sub_1D4E6835C(v21, v22, &v28);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        v24 = sub_1D4E6835C(v14, v13, &v28);

        *(v19 + 14) = v24;
        *(v19 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v25 = 0xD000000000000036;
          }

          else
          {
            v25 = 0xD000000000000021;
          }

          if (a1 == 1)
          {
            v26 = "nge Notifications";
          }

          else
          {
            v26 = "ntrollerObserver";
          }
        }

        else
        {
          v25 = 0xD000000000000026;
          v26 = "wnloadButtonsDidChange";
        }

        v27 = sub_1D4E6835C(v25, v26 | 0x8000000000000000, &v28);

        *(v19 + 24) = v27;
        _os_log_impl(&dword_1D4E3F000, v17, v18, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v20, -1, -1);
        MEMORY[0x1DA6ED200](v19, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558EF3C(int a1)
{
  v3 = type metadata accessor for TVEpisode();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + *(*v1 + 152));
  if (v8)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v9 = *(v7 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v9, v6);
    v33 = v3;
    v34 = &protocol witness table for TVEpisode;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    sub_1D55AC65C(v6, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v11 = v8;
    sub_1D5592108();
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1D55AC6B4();
    sub_1D558582C();

    v12 = *(v1 + *(*v1 + 184));
    sub_1D5588874([v12 transientFavoriteStateForModelObject_]);
    sub_1D558BDF8([v12 transientPinStateForModelObject_], &v35);
    v14 = v35;
    v13 = v36;
    v15 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v15 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v16 = sub_1D560C758();
    __swift_project_value_buffer(v16, qword_1EDD76AA8);

    v17 = sub_1D560C738();
    v18 = sub_1D56156E8();

    if (!os_log_type_enabled(v17, v18))
    {

LABEL_17:

      goto LABEL_18;
    }

    v19 = 0xD000000000000021;
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136446722;
    v23 = sub_1D4F636B4();
    v25 = sub_1D4E6835C(v23, v24, v32);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_1D4E6835C(v14, v13, v32);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2082;
    if (v31)
    {
      if (v31 == 1)
      {
        v27 = "nge Notifications";
        v19 = 0xD000000000000036;
LABEL_16:
        v29 = sub_1D4E6835C(v19, v27 | 0x8000000000000000, v32);

        *(v21 + 24) = v29;
        _os_log_impl(&dword_1D4E3F000, v17, v18, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v22, -1, -1);
        MEMORY[0x1DA6ED200](v21, -1, -1);
        goto LABEL_17;
      }

      v28 = "MediaLibrary Change Notifications";
    }

    else
    {
      v19 = 0xD000000000000026;
      v28 = "MPModelLibraryTransientStateController";
    }

    v27 = (v28 - 32);
    goto LABEL_16;
  }
}

void sub_1D558F380(int a1)
{
  v3 = type metadata accessor for MusicMovie();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + *(*v1 + 152));
  if (v8)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v9 = *(v7 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v9, v6);
    v33 = v3;
    v34 = &protocol witness table for MusicMovie;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    sub_1D55AC65C(v6, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v11 = v8;
    sub_1D5592D00();
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1D55AC6B4();
    sub_1D558582C();

    v12 = *(v1 + *(*v1 + 184));
    sub_1D5588DBC([v12 transientFavoriteStateForModelObject_]);
    sub_1D558C308([v12 transientPinStateForModelObject_], &v35);
    v14 = v35;
    v13 = v36;
    v15 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v15 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v16 = sub_1D560C758();
    __swift_project_value_buffer(v16, qword_1EDD76AA8);

    v17 = sub_1D560C738();
    v18 = sub_1D56156E8();

    if (!os_log_type_enabled(v17, v18))
    {

LABEL_17:

      goto LABEL_18;
    }

    v19 = 0xD000000000000021;
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136446722;
    v23 = sub_1D4F636B4();
    v25 = sub_1D4E6835C(v23, v24, v32);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_1D4E6835C(v14, v13, v32);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2082;
    if (v31)
    {
      if (v31 == 1)
      {
        v27 = "nge Notifications";
        v19 = 0xD000000000000036;
LABEL_16:
        v29 = sub_1D4E6835C(v19, v27 | 0x8000000000000000, v32);

        *(v21 + 24) = v29;
        _os_log_impl(&dword_1D4E3F000, v17, v18, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v22, -1, -1);
        MEMORY[0x1DA6ED200](v21, -1, -1);
        goto LABEL_17;
      }

      v28 = "MediaLibrary Change Notifications";
    }

    else
    {
      v19 = 0xD000000000000026;
      v28 = "MPModelLibraryTransientStateController";
    }

    v27 = (v28 - 32);
    goto LABEL_16;
  }
}

void sub_1D558F7C4(char a1)
{
  v2 = v1;
  v4 = sub_1D5613EF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + *(*v2 + 152));
  if (v10)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    v11 = *(v9 + 144);
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v11, v4);
    v12 = v10;
    v13 = sub_1D556C428();
    (*(v5 + 8))(v8, v4);
    sub_1D558568C(v13);

    v14 = *(v2 + *(*v2 + 184));
    sub_1D5589304([v14 transientFavoriteStateForModelObject_]);
    sub_1D558C818([v14 transientPinStateForModelObject_]);
    v16 = v31;
    v15 = v32;
    v17 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v17 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v18 = sub_1D560C758();
      __swift_project_value_buffer(v18, qword_1EDD76AA8);

      v19 = sub_1D560C738();
      v20 = sub_1D56156E8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30 = v22;
        *v21 = 136446722;
        v23 = sub_1D4F636B4();
        v25 = sub_1D4E6835C(v23, v24, &v30);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v26 = sub_1D4E6835C(v16, v15, &v30);

        *(v21 + 14) = v26;
        *(v21 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v27 = 0xD000000000000036;
          }

          else
          {
            v27 = 0xD000000000000021;
          }

          if (a1 == 1)
          {
            v28 = "nge Notifications";
          }

          else
          {
            v28 = "ntrollerObserver";
          }
        }

        else
        {
          v27 = 0xD000000000000026;
          v28 = "wnloadButtonsDidChange";
        }

        v29 = sub_1D4E6835C(v27, v28 | 0x8000000000000000, &v30);

        *(v21 + 24) = v29;
        _os_log_impl(&dword_1D4E3F000, v19, v20, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v22, -1, -1);
        MEMORY[0x1DA6ED200](v21, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D558FC40()
{
  OUTLINED_FUNCTION_272_3();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_116_9();
  v8 = v7(v6);
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9();
  (*(v12 + 16))(v3, v2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v1);
  OUTLINED_FUNCTION_2_19(v13);
  OUTLINED_FUNCTION_38_50();

  v14 = OUTLINED_FUNCTION_131();
  return v0(v14);
}

uint64_t sub_1D558FDCC()
{
  OUTLINED_FUNCTION_64_1();
  v0 = type metadata accessor for MusicMovie();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_2_199();
  v4 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2340, &qword_1D5647B08);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_107_5();

  v7 = OUTLINED_FUNCTION_228_5();
  return sub_1D55678C4(v7, v8);
}

uint64_t sub_1D558FE58()
{
  OUTLINED_FUNCTION_64_1();
  v0 = type metadata accessor for TVEpisode();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_3_205();
  v4 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2370, &qword_1D5647B28);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_107_5();

  v7 = OUTLINED_FUNCTION_228_5();
  return sub_1D55662E8(v7, v8);
}

uint64_t sub_1D558FEE4()
{
  OUTLINED_FUNCTION_64_1();
  v0 = type metadata accessor for TVSeason();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_4_160();
  v4 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2380, &qword_1D5647B30);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_107_5();

  v7 = OUTLINED_FUNCTION_228_5();
  return sub_1D5564D74(v7, v8);
}

uint64_t sub_1D558FF70()
{
  OUTLINED_FUNCTION_64_1();
  v0 = type metadata accessor for UploadedAudio();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_25_71();
  v4 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2390, &qword_1D5647B38);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_107_5();

  v7 = OUTLINED_FUNCTION_228_5();
  return sub_1D556368C(v7, v8);
}

uint64_t sub_1D558FFFC()
{
  OUTLINED_FUNCTION_64_1();
  v0 = type metadata accessor for UploadedVideo();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_26_82();
  v4 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23A0, &unk_1D5647B40);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_107_5();

  v7 = OUTLINED_FUNCTION_228_5();
  return sub_1D5561FA4(v7, v8);
}

void sub_1D5590088()
{
  OUTLINED_FUNCTION_47();
  v109 = v1;
  v3 = v2;
  v4 = sub_1D5613198();
  v5 = OUTLINED_FUNCTION_4(v4);
  v112 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v106 = v10 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_14(v107);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v111 = v20 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v103 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v103 - v31;
  v33 = sub_1D56134E8();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v41 = v39 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v103 - v44;
  v108 = v0;
  v3(v43);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    v46 = sub_1D4E50004(v32, &qword_1EC7EC528, &unk_1D5621070);
    v47 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v67 = v110;
    v70 = v111;
    goto LABEL_46;
  }

  v104 = v15;
  v105 = v4;
  (*(v36 + 32))(v45, v32, v33);
  sub_1D5613478();
  sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18]);
  v48 = OUTLINED_FUNCTION_146_11();
  v49 = *(v36 + 8);
  v49(v41, v33);
  v50 = v25;
  if (v48)
  {
    sub_1D4F0051C();
    v47 = v51;
    v52 = *(v51 + 16);
    v48 = v52 + 1;
    if (v52 >= *(v51 + 24) >> 1)
    {
      OUTLINED_FUNCTION_264_0();
      v47 = v90;
    }

    OUTLINED_FUNCTION_325_2();
    *(v53 + 32) = 0;
    v25 = v50;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1D56134A8();
  OUTLINED_FUNCTION_146_11();
  v54 = OUTLINED_FUNCTION_163_10();
  (v49)(v54);
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v47 = v91;
    }

    OUTLINED_FUNCTION_214_3();
    if (v55)
    {
      OUTLINED_FUNCTION_264_0();
      v47 = v92;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v56);
  }

  sub_1D5613488();
  OUTLINED_FUNCTION_146_11();
  v57 = OUTLINED_FUNCTION_163_10();
  (v49)(v57);
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v47 = v93;
    }

    OUTLINED_FUNCTION_214_3();
    if (v55)
    {
      OUTLINED_FUNCTION_264_0();
      v47 = v94;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v58);
  }

  sub_1D56134D8();
  OUTLINED_FUNCTION_146_11();
  v59 = OUTLINED_FUNCTION_163_10();
  (v49)(v59);
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v47 = v95;
    }

    OUTLINED_FUNCTION_214_3();
    if (v55)
    {
      OUTLINED_FUNCTION_264_0();
      v47 = v96;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v60);
  }

  sub_1D56134C8();
  OUTLINED_FUNCTION_146_11();
  v61 = OUTLINED_FUNCTION_163_10();
  (v49)(v61);
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v47 = v97;
    }

    OUTLINED_FUNCTION_214_3();
    if (v55)
    {
      OUTLINED_FUNCTION_264_0();
      v47 = v98;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v62);
  }

  sub_1D56134B8();
  OUTLINED_FUNCTION_146_11();
  v63 = OUTLINED_FUNCTION_163_10();
  (v49)(v63);
  if (v48)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v47 = v99;
    }

    OUTLINED_FUNCTION_214_3();
    if (v55)
    {
      OUTLINED_FUNCTION_264_0();
      v47 = v100;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v64);
  }

  sub_1D5613498();
  OUTLINED_FUNCTION_146_11();
  v65 = OUTLINED_FUNCTION_163_10();
  (v49)(v65);
  v15 = v104;
  if ((v48 & 1) == 0)
  {
    v71 = OUTLINED_FUNCTION_75_2();
    v46 = (v49)(v71);
    v4 = v105;
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v110;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_103_18();
    v47 = v101;
  }

  v68 = *(v47 + 16);
  if (v68 >= *(v47 + 24) >> 1)
  {
    OUTLINED_FUNCTION_264_0();
    v47 = v102;
  }

  v69 = OUTLINED_FUNCTION_75_2();
  v46 = (v49)(v69);
  *(v47 + 16) = v68 + 1;
  *(v47 + v68 + 32) = 6;
  v4 = v105;
  v70 = v111;
LABEL_46:
  v109(v46);
  v72 = v112;
  (*(v112 + 104))(v25, *MEMORY[0x1E69768D8], v4);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v4);
  v73 = *(v107 + 48);
  sub_1D4E69970(v67, v15, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v25, &v15[v73], &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_9_25(v15);
  if (!v78)
  {
    sub_1D4E69970(v15, v70, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_9_25(&v15[v73]);
    if (!v78)
    {
      v83 = v106;
      (*(v72 + 32))(v106, &v15[v73], v4);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8]);
      LODWORD(v111) = sub_1D5614D18();
      v84 = *(v72 + 8);
      v84(v83, v4);
      v85 = OUTLINED_FUNCTION_46_1();
      sub_1D4E50004(v85, v86, &unk_1D5632150);
      sub_1D4E50004(v67, &qword_1EC7EC530, &unk_1D5632150);
      v84(v70, v4);
      sub_1D4E50004(v15, &qword_1EC7EC530, &unk_1D5632150);
      if ((v111 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

    v79 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v79, v80, &unk_1D5632150);
    v81 = OUTLINED_FUNCTION_117_6();
    sub_1D4E50004(v81, v82, &unk_1D5632150);
    (*(v72 + 8))(v70, v4);
LABEL_54:
    sub_1D4E50004(v15, &qword_1EC7EF628, &unk_1D5632440);
    goto LABEL_61;
  }

  v74 = OUTLINED_FUNCTION_71();
  sub_1D4E50004(v74, v75, &unk_1D5632150);
  v76 = OUTLINED_FUNCTION_117_6();
  sub_1D4E50004(v76, v77, &unk_1D5632150);
  OUTLINED_FUNCTION_9_25(&v15[v73]);
  if (!v78)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v15, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_103_18();
    v47 = v88;
  }

  v87 = *(v47 + 16);
  if (v87 >= *(v47 + 24) >> 1)
  {
    sub_1D4F0051C();
    v47 = v89;
  }

  *(v47 + 16) = v87 + 1;
  *(v47 + v87 + 32) = 7;
LABEL_61:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5590918()
{
  v1 = sub_1D5613198();
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  v4 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v78 - v16;
  v18 = sub_1D56134E8();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  if (qword_1EDD53EA0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D55ACD00(&qword_1EDD57488, type metadata accessor for UploadedVideo);
  v83 = sub_1D55ACD00(&qword_1EC7EC488, type metadata accessor for UploadedVideo);
  v84 = v25;
  v86 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1D4E50004(v17, &qword_1EC7EC528, &unk_1D5621070);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v88;
    v28 = v82;
  }

  else
  {
    v78 = v1;
    v79 = v6;
    v29 = v81;
    v30 = v24;
    (*(v81 + 32))(v24, v17, v18);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18]);
    v31 = sub_1D56159C8();
    v32 = *(v29 + 8);
    v32(v22, v18);
    v28 = v82;
    v33 = v82;
    if (v31)
    {
      sub_1D4F0051C();
      v26 = v34;
      v35 = *(v34 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v59;
      }

      *(v26 + 16) = v35 + 1;
      *(v26 + v35 + 32) = 0;
      v28 = v33;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v36 = sub_1D56159C8();
    v32(v22, v18);
    if (v36)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v61;
      }

      v37 = *(v26 + 16);
      if (v37 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v62;
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + v37 + 32) = 1;
      v28 = v33;
    }

    sub_1D5613488();
    v38 = sub_1D56159C8();
    v32(v22, v18);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v64;
      }

      v39 = *(v26 + 16);
      if (v39 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v65;
      }

      *(v26 + 16) = v39 + 1;
      *(v26 + v39 + 32) = 2;
      v28 = v33;
    }

    sub_1D56134D8();
    v40 = sub_1D56159C8();
    v32(v22, v18);
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v67;
      }

      v41 = *(v26 + 16);
      if (v41 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v68;
      }

      *(v26 + 16) = v41 + 1;
      *(v26 + v41 + 32) = 3;
      v28 = v33;
    }

    sub_1D56134C8();
    v42 = sub_1D56159C8();
    v32(v22, v18);
    if (v42)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v70;
      }

      v43 = *(v26 + 16);
      if (v43 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v71;
      }

      *(v26 + 16) = v43 + 1;
      *(v26 + v43 + 32) = 4;
      v28 = v33;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v32(v22, v18);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v73;
      }

      v45 = *(v26 + 16);
      if (v45 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v74;
      }

      *(v26 + 16) = v45 + 1;
      *(v26 + v45 + 32) = 5;
      v28 = v33;
    }

    sub_1D5613498();
    v46 = sub_1D56159C8();
    v32(v22, v18);
    v1 = v78;
    if (v46)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v76;
      }

      v48 = *(v26 + 16);
      if (v48 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v77;
      }

      v32(v30, v18);
      *(v26 + 16) = v48 + 1;
      *(v26 + v48 + 32) = 6;
      v6 = v79;
    }

    else
    {
      v32(v30, v18);
      v6 = v79;
      v27 = v88;
    }
  }

  v49 = v89;
  v50 = v87;
  if (qword_1EDD53EA8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v49 + 104))(v28, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v51 = *(v85 + 48);
  sub_1D4E69970(v50, v6, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v28, &v6[v51], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) != 1)
  {
    sub_1D4E69970(v6, v27, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
    {
      v52 = v80;
      (*(v49 + 32))(v80, &v6[v51], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8]);
      LODWORD(v88) = sub_1D5614D18();
      v53 = *(v49 + 8);
      v53(v52, v1);
      sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
      v53(v27, v1);
      sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
      if ((v88 & 1) == 0)
      {
        return v26;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
    (*(v49 + 8))(v27, v1);
LABEL_54:
    sub_1D4E50004(v6, &qword_1EC7EF628, &unk_1D5632440);
    return v26;
  }

  sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = *(v26 + 16);
    sub_1D4F0051C();
    v26 = v57;
  }

  v54 = *(v26 + 16);
  if (v54 >= *(v26 + 24) >> 1)
  {
    sub_1D4F0051C();
    v26 = v58;
  }

  *(v26 + 16) = v54 + 1;
  *(v26 + v54 + 32) = 7;
  return v26;
}

uint64_t sub_1D5591510()
{
  v1 = sub_1D5613198();
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  v4 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v78 - v16;
  v18 = sub_1D56134E8();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  if (qword_1EC7E8E98 != -1)
  {
    swift_once();
  }

  v25 = sub_1D55ACD00(&qword_1EDD57500, type metadata accessor for UploadedAudio);
  v83 = sub_1D55ACD00(&qword_1EC7EC498, type metadata accessor for UploadedAudio);
  v84 = v25;
  v86 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1D4E50004(v17, &qword_1EC7EC528, &unk_1D5621070);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v88;
    v28 = v82;
  }

  else
  {
    v78 = v1;
    v79 = v6;
    v29 = v81;
    v30 = v24;
    (*(v81 + 32))(v24, v17, v18);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18]);
    v31 = sub_1D56159C8();
    v32 = *(v29 + 8);
    v32(v22, v18);
    v28 = v82;
    v33 = v82;
    if (v31)
    {
      sub_1D4F0051C();
      v26 = v34;
      v35 = *(v34 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v59;
      }

      *(v26 + 16) = v35 + 1;
      *(v26 + v35 + 32) = 0;
      v28 = v33;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v36 = sub_1D56159C8();
    v32(v22, v18);
    if (v36)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v61;
      }

      v37 = *(v26 + 16);
      if (v37 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v62;
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + v37 + 32) = 1;
      v28 = v33;
    }

    sub_1D5613488();
    v38 = sub_1D56159C8();
    v32(v22, v18);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v64;
      }

      v39 = *(v26 + 16);
      if (v39 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v65;
      }

      *(v26 + 16) = v39 + 1;
      *(v26 + v39 + 32) = 2;
      v28 = v33;
    }

    sub_1D56134D8();
    v40 = sub_1D56159C8();
    v32(v22, v18);
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v67;
      }

      v41 = *(v26 + 16);
      if (v41 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v68;
      }

      *(v26 + 16) = v41 + 1;
      *(v26 + v41 + 32) = 3;
      v28 = v33;
    }

    sub_1D56134C8();
    v42 = sub_1D56159C8();
    v32(v22, v18);
    if (v42)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v70;
      }

      v43 = *(v26 + 16);
      if (v43 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v71;
      }

      *(v26 + 16) = v43 + 1;
      *(v26 + v43 + 32) = 4;
      v28 = v33;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v32(v22, v18);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v73;
      }

      v45 = *(v26 + 16);
      if (v45 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v74;
      }

      *(v26 + 16) = v45 + 1;
      *(v26 + v45 + 32) = 5;
      v28 = v33;
    }

    sub_1D5613498();
    v46 = sub_1D56159C8();
    v32(v22, v18);
    v1 = v78;
    if (v46)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v76;
      }

      v48 = *(v26 + 16);
      if (v48 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v77;
      }

      v32(v30, v18);
      *(v26 + 16) = v48 + 1;
      *(v26 + v48 + 32) = 6;
      v6 = v79;
    }

    else
    {
      v32(v30, v18);
      v6 = v79;
      v27 = v88;
    }
  }

  v49 = v89;
  v50 = v87;
  if (qword_1EC7E8E90 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v49 + 104))(v28, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v51 = *(v85 + 48);
  sub_1D4E69970(v50, v6, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v28, &v6[v51], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) != 1)
  {
    sub_1D4E69970(v6, v27, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
    {
      v52 = v80;
      (*(v49 + 32))(v80, &v6[v51], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8]);
      LODWORD(v88) = sub_1D5614D18();
      v53 = *(v49 + 8);
      v53(v52, v1);
      sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
      v53(v27, v1);
      sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
      if ((v88 & 1) == 0)
      {
        return v26;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
    (*(v49 + 8))(v27, v1);
LABEL_54:
    sub_1D4E50004(v6, &qword_1EC7EF628, &unk_1D5632440);
    return v26;
  }

  sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = *(v26 + 16);
    sub_1D4F0051C();
    v26 = v57;
  }

  v54 = *(v26 + 16);
  if (v54 >= *(v26 + 24) >> 1)
  {
    sub_1D4F0051C();
    v26 = v58;
  }

  *(v26 + 16) = v54 + 1;
  *(v26 + v54 + 32) = 7;
  return v26;
}

uint64_t sub_1D5592108()
{
  v1 = sub_1D5613198();
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  v4 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v78 - v16;
  v18 = sub_1D56134E8();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  if (qword_1EC7E91E8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode);
  v83 = sub_1D55ACD00(&qword_1EC7EC490, type metadata accessor for TVEpisode);
  v84 = v25;
  v86 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1D4E50004(v17, &qword_1EC7EC528, &unk_1D5621070);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v88;
    v28 = v82;
  }

  else
  {
    v78 = v1;
    v79 = v6;
    v29 = v81;
    v30 = v24;
    (*(v81 + 32))(v24, v17, v18);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18]);
    v31 = sub_1D56159C8();
    v32 = *(v29 + 8);
    v32(v22, v18);
    v28 = v82;
    v33 = v82;
    if (v31)
    {
      sub_1D4F0051C();
      v26 = v34;
      v35 = *(v34 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v59;
      }

      *(v26 + 16) = v35 + 1;
      *(v26 + v35 + 32) = 0;
      v28 = v33;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v36 = sub_1D56159C8();
    v32(v22, v18);
    if (v36)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v61;
      }

      v37 = *(v26 + 16);
      if (v37 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v62;
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + v37 + 32) = 1;
      v28 = v33;
    }

    sub_1D5613488();
    v38 = sub_1D56159C8();
    v32(v22, v18);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v64;
      }

      v39 = *(v26 + 16);
      if (v39 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v65;
      }

      *(v26 + 16) = v39 + 1;
      *(v26 + v39 + 32) = 2;
      v28 = v33;
    }

    sub_1D56134D8();
    v40 = sub_1D56159C8();
    v32(v22, v18);
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v67;
      }

      v41 = *(v26 + 16);
      if (v41 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v68;
      }

      *(v26 + 16) = v41 + 1;
      *(v26 + v41 + 32) = 3;
      v28 = v33;
    }

    sub_1D56134C8();
    v42 = sub_1D56159C8();
    v32(v22, v18);
    if (v42)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v70;
      }

      v43 = *(v26 + 16);
      if (v43 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v71;
      }

      *(v26 + 16) = v43 + 1;
      *(v26 + v43 + 32) = 4;
      v28 = v33;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v32(v22, v18);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v73;
      }

      v45 = *(v26 + 16);
      if (v45 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v74;
      }

      *(v26 + 16) = v45 + 1;
      *(v26 + v45 + 32) = 5;
      v28 = v33;
    }

    sub_1D5613498();
    v46 = sub_1D56159C8();
    v32(v22, v18);
    v1 = v78;
    if (v46)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v76;
      }

      v48 = *(v26 + 16);
      if (v48 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v77;
      }

      v32(v30, v18);
      *(v26 + 16) = v48 + 1;
      *(v26 + v48 + 32) = 6;
      v6 = v79;
    }

    else
    {
      v32(v30, v18);
      v6 = v79;
      v27 = v88;
    }
  }

  v49 = v89;
  v50 = v87;
  if (qword_1EC7E91E0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v49 + 104))(v28, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v51 = *(v85 + 48);
  sub_1D4E69970(v50, v6, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v28, &v6[v51], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) != 1)
  {
    sub_1D4E69970(v6, v27, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
    {
      v52 = v80;
      (*(v49 + 32))(v80, &v6[v51], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8]);
      LODWORD(v88) = sub_1D5614D18();
      v53 = *(v49 + 8);
      v53(v52, v1);
      sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
      v53(v27, v1);
      sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
      if ((v88 & 1) == 0)
      {
        return v26;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
    (*(v49 + 8))(v27, v1);
LABEL_54:
    sub_1D4E50004(v6, &qword_1EC7EF628, &unk_1D5632440);
    return v26;
  }

  sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = *(v26 + 16);
    sub_1D4F0051C();
    v26 = v57;
  }

  v54 = *(v26 + 16);
  if (v54 >= *(v26 + 24) >> 1)
  {
    sub_1D4F0051C();
    v26 = v58;
  }

  *(v26 + 16) = v54 + 1;
  *(v26 + v54 + 32) = 7;
  return v26;
}

uint64_t sub_1D5592D00()
{
  v1 = sub_1D5613198();
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  v4 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v78 - v16;
  v18 = sub_1D56134E8();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  if (qword_1EDD54200 != -1)
  {
    swift_once();
  }

  v25 = sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie);
  v83 = sub_1D55ACD00(&qword_1EDD59300, type metadata accessor for MusicMovie);
  v84 = v25;
  v86 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1D4E50004(v17, &qword_1EC7EC528, &unk_1D5621070);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v88;
    v28 = v82;
  }

  else
  {
    v78 = v1;
    v79 = v6;
    v29 = v81;
    v30 = v24;
    (*(v81 + 32))(v24, v17, v18);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18]);
    v31 = sub_1D56159C8();
    v32 = *(v29 + 8);
    v32(v22, v18);
    v28 = v82;
    v33 = v82;
    if (v31)
    {
      sub_1D4F0051C();
      v26 = v34;
      v35 = *(v34 + 16);
      if (v35 >= *(v34 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v59;
      }

      *(v26 + 16) = v35 + 1;
      *(v26 + v35 + 32) = 0;
      v28 = v33;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v36 = sub_1D56159C8();
    v32(v22, v18);
    if (v36)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v61;
      }

      v37 = *(v26 + 16);
      if (v37 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v62;
      }

      *(v26 + 16) = v37 + 1;
      *(v26 + v37 + 32) = 1;
      v28 = v33;
    }

    sub_1D5613488();
    v38 = sub_1D56159C8();
    v32(v22, v18);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v64;
      }

      v39 = *(v26 + 16);
      if (v39 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v65;
      }

      *(v26 + 16) = v39 + 1;
      *(v26 + v39 + 32) = 2;
      v28 = v33;
    }

    sub_1D56134D8();
    v40 = sub_1D56159C8();
    v32(v22, v18);
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v67;
      }

      v41 = *(v26 + 16);
      if (v41 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v68;
      }

      *(v26 + 16) = v41 + 1;
      *(v26 + v41 + 32) = 3;
      v28 = v33;
    }

    sub_1D56134C8();
    v42 = sub_1D56159C8();
    v32(v22, v18);
    if (v42)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v70;
      }

      v43 = *(v26 + 16);
      if (v43 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v71;
      }

      *(v26 + 16) = v43 + 1;
      *(v26 + v43 + 32) = 4;
      v28 = v33;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v32(v22, v18);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v73;
      }

      v45 = *(v26 + 16);
      if (v45 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v74;
      }

      *(v26 + 16) = v45 + 1;
      *(v26 + v45 + 32) = 5;
      v28 = v33;
    }

    sub_1D5613498();
    v46 = sub_1D56159C8();
    v32(v22, v18);
    v1 = v78;
    if (v46)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = *(v26 + 16);
        sub_1D4F0051C();
        v26 = v76;
      }

      v48 = *(v26 + 16);
      if (v48 >= *(v26 + 24) >> 1)
      {
        sub_1D4F0051C();
        v26 = v77;
      }

      v32(v30, v18);
      *(v26 + 16) = v48 + 1;
      *(v26 + v48 + 32) = 6;
      v6 = v79;
    }

    else
    {
      v32(v30, v18);
      v6 = v79;
      v27 = v88;
    }
  }

  v49 = v89;
  v50 = v87;
  if (qword_1EDD54208 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v49 + 104))(v28, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v1);
  v51 = *(v85 + 48);
  sub_1D4E69970(v50, v6, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v28, &v6[v51], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) != 1)
  {
    sub_1D4E69970(v6, v27, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
    {
      v52 = v80;
      (*(v49 + 32))(v80, &v6[v51], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8]);
      LODWORD(v88) = sub_1D5614D18();
      v53 = *(v49 + 8);
      v53(v52, v1);
      sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
      v53(v27, v1);
      sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
      if ((v88 & 1) == 0)
      {
        return v26;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
    (*(v49 + 8))(v27, v1);
LABEL_54:
    sub_1D4E50004(v6, &qword_1EC7EF628, &unk_1D5632440);
    return v26;
  }

  sub_1D4E50004(v28, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v50, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v6[v51], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v6, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = *(v26 + 16);
    sub_1D4F0051C();
    v26 = v57;
  }

  v54 = *(v26 + 16);
  if (v54 >= *(v26 + 24) >> 1)
  {
    sub_1D4F0051C();
    v26 = v58;
  }

  *(v26 + 16) = v54 + 1;
  *(v26 + v54 + 32) = 7;
  return v26;
}

uint64_t sub_1D5593998@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  a3[3] = v5;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_24_0(v5);
  v7 = *(v6 + 16);

  return v7();
}

uint64_t sub_1D5593A1C(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D560EEA8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v18 = v16;
  sub_1D534329C(&v14);
  v5 = v14;
  swift_beginAccess();
  v18 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v17;
  if (v17 == 1)
  {
    v7 = v16 & 7;
  }

  else
  {
    v7 = v16;
  }

  swift_beginAccess();
  v14 = v7;
  v15 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2350, &unk_1D5647B10);
  sub_1D4E62A60(qword_1EDD53478, &qword_1EC7F2350, &unk_1D5647B10);
  v16 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A91C0;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  v12 = *(v2 + v4);
  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D5593D08(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5613838();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v18 = v16;
  sub_1D534329C(&v14);
  v5 = v14;
  swift_beginAccess();
  v18 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v17;
  if (v17 == 1)
  {
    v7 = v16 & 7;
  }

  else
  {
    v7 = v16;
  }

  swift_beginAccess();
  v14 = v7;
  v15 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2368, &qword_1D5647B20);
  sub_1D4E62A60(&qword_1EDD53470, &qword_1EC7F2368, &qword_1D5647B20);
  v16 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A96F4;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  v12 = *(v2 + v4);
  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D5593FF4(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5613AF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v18 = v16;
  sub_1D534329C(&v14);
  v5 = v14;
  swift_beginAccess();
  v18 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v17;
  if (v17 == 1)
  {
    v7 = v16 & 7;
  }

  else
  {
    v7 = v16;
  }

  swift_beginAccess();
  v14 = v7;
  v15 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2330, &qword_1D5672B30);
  sub_1D4E62A60(&qword_1EDD53468, &qword_1EC7F2330, &qword_1D5672B30);
  v16 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A9C28;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  v12 = *(v2 + v4);
  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D55942E0(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5613D28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v18 = v16;
  sub_1D534329C(&v14);
  v5 = v14;
  swift_beginAccess();
  v18 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v17;
  if (v17 == 1)
  {
    v7 = v16 & 7;
  }

  else
  {
    v7 = v16;
  }

  swift_beginAccess();
  v14 = v7;
  v15 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8420, &unk_1D56725A8);
  sub_1D4E62A60(&qword_1EC7F8428, &qword_1EC7F8420, &unk_1D56725A8);
  v16 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A7B9C;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  v12 = *(v2 + v4);
  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D55945CC(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5614898();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v18 = v16;
  sub_1D534329C(&v14);
  v5 = v14;
  swift_beginAccess();
  v18 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v17;
  if (v17 == 1)
  {
    v7 = v16 & 7;
  }

  else
  {
    v7 = v16;
  }

  swift_beginAccess();
  v14 = v7;
  v15 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2358, &qword_1D5672860);
  sub_1D4E62A60(&qword_1EC7F2360, &qword_1EC7F2358, &qword_1D5672860);
  v16 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A8C8C;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  v12 = *(v2 + v4);
  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D5594928()
{
  OUTLINED_FUNCTION_269_2();
  v0(0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_64_5();
  return sub_1D560C908();
}

void sub_1D55949B8()
{
  OUTLINED_FUNCTION_47();
  v26 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C988();
  v8 = OUTLINED_FUNCTION_4(v7);
  v28 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v27 = sub_1D560C9B8();
  v15 = OUTLINED_FUNCTION_4(v27);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v23 = sub_1D5615738();
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  *(v24 + 24) = v4;
  v29[4] = v2;
  v29[5] = v24;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1D4E735E0;
  v29[3] = v26;
  v25 = _Block_copy(v29);

  sub_1D560C9A8();
  v29[0] = MEMORY[0x1E69E7CC0];
  sub_1D55ACD00(&qword_1EDD5D840, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D56159E8();
  MEMORY[0x1DA6EB530](0, v22, v14, v25);
  _Block_release(v25);

  (*(v28 + 8))(v14, v7);
  (*(v17 + 8))(v22, v27);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5594C78()
{
  OUTLINED_FUNCTION_269_2();
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_103_13();
    OUTLINED_FUNCTION_376_1();
    sub_1D5594D14();
  }

  return result;
}

uint64_t sub_1D5594D14()
{
  OUTLINED_FUNCTION_272_3();
  v2 = OUTLINED_FUNCTION_116_9();
  v3(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_109();
  sub_1D560C8F8();

  v6 = v7;
  sub_1D534329C(&v5);
  sub_1D55948B8(v5, v1, v0, &unk_1D5672610, &unk_1D5672648);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_109();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_64_5();
  return sub_1D5594928();
}

double sub_1D5594E74@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicPin.Item();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  MusicPin.item.getter(v1);
  MusicPin.Item.innerItem.getter(v8);
  sub_1D55AC6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1D5594F58@<D0>(uint64_t a1@<X8>)
{
  sub_1D5613D28();
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D5594FEC@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  sub_1D559529C(&v9 - v4);
  v6 = type metadata accessor for MusicPin();
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  result = sub_1D4E50004(v5, &qword_1EC7F1D88, &unk_1D5643CB0);
  *a1 = v7;
  return result;
}

void sub_1D55950B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_352_1();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_64_5();
  sub_1D5595180(v30, v31, v32, v33);
  v34 = type metadata accessor for MusicPin();
  v35 = __swift_getEnumTagSinglePayload(v29, 1, v34) != 1;
  v36 = OUTLINED_FUNCTION_130();
  sub_1D4E50004(v36, v37, &unk_1D5643CB0);
  *v23 = v35;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5595180(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = a2(0);
  v19[3] = v13;
  v19[4] = a3;
  __swift_allocate_boxed_opaque_existential_0(v19);
  OUTLINED_FUNCTION_24_0(v13);
  (*(v14 + 16))();
  sub_1D51FEC44(v12);
  v18 = v19;
  v15 = sub_1D5595458(a4, v17);
  sub_1D4EC9F84(v15);

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1D559529C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  sub_1D5613D28();
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    if (*(&v12 + 1))
    {
      sub_1D4E48324(&v11, v14);
      v6 = sub_1D51FEC44(v5);
      MEMORY[0x1EEE9AC00](v6);
      *(&v10 - 2) = v14;
      v7 = sub_1D5595458(sub_1D5205C14, (&v10 - 4));
      sub_1D4EC9F84(v7);

      return __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_1D4E50004(&v11, &qword_1EC7EC500, &unk_1D5621030);
  v9 = type metadata accessor for MusicPin();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
}

unint64_t sub_1D5595458(uint64_t (*a1)(char *), uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = type metadata accessor for MusicPin();
  v4 = OUTLINED_FUNCTION_69(v3);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v37 = v8 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D90, &qword_1D5643CC0) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_163_0();
  sub_1D4E62A60(v21, &qword_1EC7F1D28, &qword_1D5643A60);
  sub_1D5614F98();
  v22 = v16[11];
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v23, &qword_1EC7F1D28, &qword_1D5643A60);
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D5615648();
    if (*&v20[v22] == v41[0])
    {
      sub_1D4E50004(v20, &qword_1EC7F1D90, &qword_1D5643CC0);
      return v38;
    }

    v24 = sub_1D5615688();
    sub_1D55AC65C(v25, v13);
    v24(v41, 0);
    sub_1D5615658();
    sub_1D55AC9B8(v13, v15);
    v26 = v39(v15);
    if (v2)
    {
      break;
    }

    if (v26)
    {
      sub_1D55AC9B8(v15, v37);
      v27 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = *(v27 + 16);
        sub_1D4F03DB4();
        v27 = v42;
      }

      v30 = *(v27 + 16);
      v31 = v30 + 1;
      if (v30 >= *(v27 + 24) >> 1)
      {
        v38 = v30 + 1;
        sub_1D4F03DB4();
        v31 = v38;
        v27 = v42;
      }

      *(v27 + 16) = v31;
      v32 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v38 = v27;
      sub_1D55AC9B8(v37, v27 + v32 + *(v36 + 72) * v30);
    }

    else
    {
      sub_1D55AC6B4();
    }
  }

  sub_1D55AC6B4();
  sub_1D4E50004(v20, &qword_1EC7F1D90, &qword_1D5643CC0);
  v33 = v38;

  return v33;
}

uint64_t sub_1D559581C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = sub_1D560EEA8();
  v0[24] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[25] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v0[28] = v13;
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D5595B70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5595D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409();
  sub_1D4E50004(v10, &qword_1EC7F8450, &qword_1D5672A00);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D5595E10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = sub_1D5613838();
  v0[24] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[25] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v0[28] = v13;
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D5596164()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5596364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409();
  sub_1D4E50004(v10, &qword_1EC7F8460, &qword_1D5672AF0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D5596404()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = sub_1D5613AF8();
  v0[24] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[25] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v0[28] = v13;
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D5596758()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5596958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409();
  sub_1D4E50004(v10, &qword_1EC7F8470, &qword_1D5672BE0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D55969F8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D560C368();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = sub_1D5613D28();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v3[28] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5596B60, 0, 0);
}

uint64_t sub_1D5596D98()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5596F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409();
  sub_1D4E50004(v10, &qword_1EC7F8430, &unk_1D5672818);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D5597038()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = sub_1D5614898();
  v0[24] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[25] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v0[28] = v13;
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D559738C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409();
  sub_1D4E50004(v10, &qword_1EC7F8440, &qword_1D5672910);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559762C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = type metadata accessor for MusicMovie();
  v0[24] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v0[25] = OUTLINED_FUNCTION_167();
  v0[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20);
  v0[27] = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D559796C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5597B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v15 = v11[25];
  v14 = v11[26];
  v16 = v11[23];
  swift_willThrow();
  sub_1D4E50004(v10, &qword_1EC7F8478, &qword_1D5672C20);

  OUTLINED_FUNCTION_55();
  v17 = v11[34];
  OUTLINED_FUNCTION_25_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D5597C24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = type metadata accessor for TVEpisode();
  v0[24] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v0[25] = OUTLINED_FUNCTION_167();
  v0[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30);
  v0[27] = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D5597F64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5598170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v15 = v11[25];
  v14 = v11[26];
  v16 = v11[23];
  swift_willThrow();
  sub_1D4E50004(v10, &qword_1EC7F8480, &qword_1D5672C30);

  OUTLINED_FUNCTION_55();
  v17 = v11[34];
  OUTLINED_FUNCTION_25_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D559821C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v7);
  v8 = type metadata accessor for TVSeason();
  v0[24] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v0[25] = OUTLINED_FUNCTION_167();
  v0[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40);
  v0[27] = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D559855C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5598768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v15 = v11[25];
  v14 = v11[26];
  v16 = v11[23];
  swift_willThrow();
  sub_1D4E50004(v10, &qword_1EC7F8488, &qword_1D5672C40);

  OUTLINED_FUNCTION_55();
  v17 = v11[34];
  OUTLINED_FUNCTION_25_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D5598814@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D560EEA8();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A03B0(a1);
  sub_1D55A1670(a2);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D55989CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5613838();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0608(a1);
  sub_1D55A16D4(a2);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D5598B84@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5613AF8();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0860(a1);
  sub_1D55A1738(a2);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D5598D3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5613D28();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0AB8(a1);
  sub_1D55A179C(a2);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D5598EF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5614898();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0D10(a1);
  sub_1D55A1800(a2);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D55990AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  sub_1D55AC65C(a1, a5);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0F68(a1);
  sub_1D55A1864(a2);
  sub_1D55A1990();

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      v14 |= qword_1D5673030[v16];
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [v12 setConstraints_];
  return sub_1D55AC6B4();
}

uint64_t sub_1D559921C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  sub_1D55AC65C(a1, a5);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A11C0(a1);
  sub_1D55A18C8(a2);
  sub_1D55A1990();

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      v14 |= qword_1D5673030[v16];
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [v12 setConstraints_];
  return sub_1D55AC6B4();
}

uint64_t sub_1D559938C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  sub_1D55AC65C(a1, a5);
  *(a5 + v10[13]) = a2;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A1418(a1);
  sub_1D55A192C(a2);
  sub_1D55A1990();

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      v14 |= qword_1D5673030[v16];
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [v12 setConstraints_];
  return sub_1D55AC6B4();
}

uint64_t sub_1D55994FC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D560EEA8();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_456(v7);
  v9 = OUTLINED_FUNCTION_457(v8);
  v0[37] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[38] = v10;
  v12 = *(v11 + 64);
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D55995E8()
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_139_10();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_71_29(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_74_32();
  (v1)(v8);
  sub_1D526EBEC();
  v10 = v9;
  OUTLINED_FUNCTION_406_0(MEMORY[0x1E69754B0]);
  OUTLINED_FUNCTION_218_6();
  v1();
  OUTLINED_FUNCTION_140_14([objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init]);
  v2[23] = v10;
  v11 = v0;
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_369_2();
  sub_1D534091C();
  OUTLINED_FUNCTION_405();

  v12 = OUTLINED_FUNCTION_120_14();
  (v0)(v12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v13 = OUTLINED_FUNCTION_216_3();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C110);
  v15 = OUTLINED_FUNCTION_73_28(v14);
  (v1)(v15);
  OUTLINED_FUNCTION_404_0();
  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_403();
  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_109_18();
    OUTLINED_FUNCTION_142_10();
    OUTLINED_FUNCTION_377_1();
    v23 = OUTLINED_FUNCTION_212_8(4.8752e-34, v17, v18, v19, v20, v21, v22);
    v24 = OUTLINED_FUNCTION_57_39(v23);
    (v1)(v24);
    OUTLINED_FUNCTION_290_2();
    v25 = OUTLINED_FUNCTION_60_31();
    v26(v25);
    v27 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_373();
    *(v3 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_402_0();
    v32 = OUTLINED_FUNCTION_70();
    (v0)(v32);
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v2[44] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v2[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D5599858()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 360) = v4;
  if (v4)
  {
    v5 = *(v1 + 328);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5599958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 344);
  v13 = *(v10 + 328);
  v12 = *(v10 + 336);

  v14 = sub_1D560C738();
  LOBYTE(v12) = sub_1D56156E8();

  v15 = os_log_type_enabled(v14, v12);
  v16 = *(v10 + 328);
  if (v15)
  {
    v17 = *(v10 + 320);
    v18 = OUTLINED_FUNCTION_142();
    a10 = swift_slowAlloc();
    *v18 = 136446210;
    v19 = OUTLINED_FUNCTION_93();
    v22 = sub_1D4E6835C(v19, v20, v21);

    *(v18 + 4) = v22;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v23, v24, "[%{public}s] Completed remove from library operation.");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v25 = *(v10 + 328);
  }

  sub_1D534045C(v10 + 144);
  v26 = *(v10 + 312);
  v27 = *(v10 + 280);
  v28 = *(v10 + 288);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_1D5599A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = v10[44];
  v11 = v10[45];
  v13 = v10[42];
  v14 = v10[39];
  v16 = v10[35];
  v15 = v10[36];
  swift_willThrow();
  sub_1D534045C((v10 + 18));

  OUTLINED_FUNCTION_55();
  v17 = v10[45];
  OUTLINED_FUNCTION_14_47();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D5599B2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D5613838();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_456(v7);
  v9 = OUTLINED_FUNCTION_457(v8);
  v0[37] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[38] = v10;
  v12 = *(v11 + 64);
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5599C18()
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_139_10();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_71_29(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_74_32();
  (v1)(v8);
  sub_1D526EBEC();
  v10 = v9;
  OUTLINED_FUNCTION_406_0(MEMORY[0x1E6976BB0]);
  OUTLINED_FUNCTION_218_6();
  v1();
  OUTLINED_FUNCTION_140_14([objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init]);
  v2[23] = v10;
  v11 = v0;
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_369_2();
  sub_1D534093C();
  OUTLINED_FUNCTION_405();

  v12 = OUTLINED_FUNCTION_120_14();
  (v0)(v12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v13 = OUTLINED_FUNCTION_216_3();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C110);
  v15 = OUTLINED_FUNCTION_73_28(v14);
  (v1)(v15);
  OUTLINED_FUNCTION_404_0();
  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_403();
  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_109_18();
    OUTLINED_FUNCTION_142_10();
    OUTLINED_FUNCTION_377_1();
    v23 = OUTLINED_FUNCTION_212_8(4.8752e-34, v17, v18, v19, v20, v21, v22);
    v24 = OUTLINED_FUNCTION_57_39(v23);
    (v1)(v24);
    OUTLINED_FUNCTION_290_2();
    v25 = OUTLINED_FUNCTION_60_31();
    v26(v25);
    v27 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_373();
    *(v3 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_402_0();
    v32 = OUTLINED_FUNCTION_70();
    (v0)(v32);
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v2[44] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v2[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D5599E88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 360) = v4;
  if (v4)
  {
    v5 = *(v1 + 328);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5599F88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D5613AF8();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_456(v7);
  v9 = OUTLINED_FUNCTION_457(v8);
  v0[37] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[38] = v10;
  v12 = *(v11 + 64);
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D559A074()
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_139_10();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_71_29(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_74_32();
  (v1)(v8);
  sub_1D526EBEC();
  v10 = v9;
  OUTLINED_FUNCTION_406_0(MEMORY[0x1E6976CF0]);
  OUTLINED_FUNCTION_218_6();
  v1();
  OUTLINED_FUNCTION_140_14([objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init]);
  v2[23] = v10;
  v11 = v0;
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_369_2();
  sub_1D5340B98();
  OUTLINED_FUNCTION_405();

  v12 = OUTLINED_FUNCTION_120_14();
  (v0)(v12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v13 = OUTLINED_FUNCTION_216_3();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C110);
  v15 = OUTLINED_FUNCTION_73_28(v14);
  (v1)(v15);
  OUTLINED_FUNCTION_404_0();
  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_403();
  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_109_18();
    OUTLINED_FUNCTION_142_10();
    OUTLINED_FUNCTION_377_1();
    v23 = OUTLINED_FUNCTION_212_8(4.8752e-34, v17, v18, v19, v20, v21, v22);
    v24 = OUTLINED_FUNCTION_57_39(v23);
    (v1)(v24);
    OUTLINED_FUNCTION_290_2();
    v25 = OUTLINED_FUNCTION_60_31();
    v26(v25);
    v27 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_373();
    *(v3 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_402_0();
    v32 = OUTLINED_FUNCTION_70();
    (v0)(v32);
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v2[44] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v2[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D559A2E4(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_1D5613D28();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v7 = sub_1D560C368();
  v3[37] = v7;
  v8 = *(v7 - 8);
  v3[38] = v8;
  v9 = *(v8 + 64) + 15;
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559A410, 0, 0);
}

uint64_t sub_1D559A410()
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_139_10();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_71_29(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_74_32();
  (v1)(v8);
  sub_1D526EBEC();
  v10 = v9;
  OUTLINED_FUNCTION_406_0(MEMORY[0x1E6976E50]);
  OUTLINED_FUNCTION_218_6();
  v1();
  OUTLINED_FUNCTION_140_14([objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init]);
  v2[23] = v10;
  v11 = v0;
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_369_2();
  sub_1D5340BB8();
  OUTLINED_FUNCTION_405();

  v12 = OUTLINED_FUNCTION_120_14();
  (v0)(v12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v13 = OUTLINED_FUNCTION_216_3();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C110);
  v15 = OUTLINED_FUNCTION_73_28(v14);
  (v1)(v15);
  OUTLINED_FUNCTION_404_0();
  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_403();
  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_109_18();
    OUTLINED_FUNCTION_142_10();
    OUTLINED_FUNCTION_377_1();
    v23 = OUTLINED_FUNCTION_212_8(4.8752e-34, v17, v18, v19, v20, v21, v22);
    v24 = OUTLINED_FUNCTION_57_39(v23);
    (v1)(v24);
    OUTLINED_FUNCTION_290_2();
    v25 = OUTLINED_FUNCTION_60_31();
    v26(v25);
    v27 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_373();
    *(v3 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_402_0();
    v32 = OUTLINED_FUNCTION_70();
    (v0)(v32);
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v2[44] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v2[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D559A680()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D5614898();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v8 = OUTLINED_FUNCTION_456(v7);
  v9 = OUTLINED_FUNCTION_457(v8);
  v0[37] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[38] = v10;
  v12 = *(v11 + 64);
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D559A76C()
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_139_10();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_71_29(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_74_32();
  (v1)(v8);
  sub_1D526EBEC();
  v10 = v9;
  OUTLINED_FUNCTION_406_0(MEMORY[0x1E69773A0]);
  OUTLINED_FUNCTION_218_6();
  v1();
  OUTLINED_FUNCTION_140_14([objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init]);
  v2[23] = v10;
  v11 = v0;
  OUTLINED_FUNCTION_414();
  OUTLINED_FUNCTION_369_2();
  sub_1D5340BD8();
  OUTLINED_FUNCTION_405();

  v12 = OUTLINED_FUNCTION_120_14();
  (v0)(v12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v13 = OUTLINED_FUNCTION_216_3();
  v14 = __swift_project_value_buffer(v13, qword_1EC87C110);
  v15 = OUTLINED_FUNCTION_73_28(v14);
  (v1)(v15);
  OUTLINED_FUNCTION_404_0();
  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_403();
  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_109_18();
    OUTLINED_FUNCTION_142_10();
    OUTLINED_FUNCTION_377_1();
    v23 = OUTLINED_FUNCTION_212_8(4.8752e-34, v17, v18, v19, v20, v21, v22);
    v24 = OUTLINED_FUNCTION_57_39(v23);
    (v1)(v24);
    OUTLINED_FUNCTION_290_2();
    v25 = OUTLINED_FUNCTION_60_31();
    v26(v25);
    v27 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_373();
    *(v3 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_225_5();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_402_0();
    v32 = OUTLINED_FUNCTION_70();
    (v0)(v32);
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v2[44] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v2[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_16_5();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D559A9DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = type metadata accessor for MusicMovie();
  v0[33] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[34] = OUTLINED_FUNCTION_167();
  v0[35] = swift_task_alloc();
  v6 = sub_1D560C368();
  v0[36] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[37] = v7;
  v9 = *(v8 + 64);
  v0[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559AAB0()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_270_4();
  v5 = sub_1D560C338();
  v7 = OUTLINED_FUNCTION_160_11(v5, v6);
  v8(v7);
  sub_1D55AC65C(v3, v2);
  sub_1D526EBEC();
  v10 = v9;
  v1[28] = v4;
  OUTLINED_FUNCTION_86_27();
  v1[29] = sub_1D55ACD00(v11, v12);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 25);
  OUTLINED_FUNCTION_321_1(boxed_opaque_existential_0);
  v14 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v1[41] = v14;
  OUTLINED_FUNCTION_248_2(v14);
  v1[23] = v10;
  v14;

  sub_1D5341AB8();
  sub_1D5358624();

  OUTLINED_FUNCTION_6_159();
  sub_1D55AC6B4();
  __swift_destroy_boxed_opaque_existential_1(v1 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_385_0();
  v1[42] = OUTLINED_FUNCTION_231_4(v15, qword_1EC87C110);
  OUTLINED_FUNCTION_2_199();
  v16 = OUTLINED_FUNCTION_131();
  sub_1D55AC65C(v16, v17);

  v18 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    v20 = v1[34];
    v19 = v1[35];
    OUTLINED_FUNCTION_242_2();
    OUTLINED_FUNCTION_142_10();
    *v10 = 136446466;
    v21 = OUTLINED_FUNCTION_93();
    v24 = sub_1D4E6835C(v21, v22, v23);
    OUTLINED_FUNCTION_42_39(v24);
    OUTLINED_FUNCTION_2_199();
    v25 = OUTLINED_FUNCTION_161();
    sub_1D55AC65C(v25, v26);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_6_159();
    sub_1D55AC6B4();
    v27 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_221_2();
    *(v10 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v32 = v1[34];

    OUTLINED_FUNCTION_6_159();
    sub_1D55AC6B4();
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v1[43] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v1[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D559AD88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 352) = v4;
  if (v4)
  {
    v5 = *(v1 + 320);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559AE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 336);
  v13 = *(v10 + 320);
  v12 = *(v10 + 328);

  v14 = sub_1D560C738();
  LOBYTE(v12) = sub_1D56156E8();

  v15 = os_log_type_enabled(v14, v12);
  v16 = *(v10 + 320);
  if (v15)
  {
    v17 = *(v10 + 312);
    v18 = OUTLINED_FUNCTION_142();
    a10 = swift_slowAlloc();
    *v18 = 136446210;
    v19 = OUTLINED_FUNCTION_93();
    v22 = sub_1D4E6835C(v19, v20, v21);

    *(v18 + 4) = v22;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v23, v24, "[%{public}s] Completed remove from library operation.");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v25 = *(v10 + 320);
  }

  sub_1D534045C(v10 + 144);
  v26 = *(v10 + 304);
  v27 = *(v10 + 272);
  v28 = *(v10 + 280);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_1D559AFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = v10[43];
  v11 = v10[44];
  v13 = v10[41];
  v14 = v10[38];
  v16 = v10[34];
  v15 = v10[35];
  swift_willThrow();
  sub_1D534045C((v10 + 18));

  OUTLINED_FUNCTION_55();
  v17 = v10[44];
  OUTLINED_FUNCTION_14_47();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D559B05C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = type metadata accessor for TVEpisode();
  v0[33] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[34] = OUTLINED_FUNCTION_167();
  v0[35] = swift_task_alloc();
  v6 = sub_1D560C368();
  v0[36] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[37] = v7;
  v9 = *(v8 + 64);
  v0[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559B130()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_270_4();
  v5 = sub_1D560C338();
  v7 = OUTLINED_FUNCTION_160_11(v5, v6);
  v8(v7);
  sub_1D55AC65C(v3, v2);
  sub_1D526EBEC();
  v10 = v9;
  v1[28] = v4;
  OUTLINED_FUNCTION_87_23();
  v1[29] = sub_1D55ACD00(v11, v12);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 25);
  OUTLINED_FUNCTION_321_1(boxed_opaque_existential_0);
  v14 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v1[41] = v14;
  OUTLINED_FUNCTION_248_2(v14);
  v1[23] = v10;
  v14;

  sub_1D5341860();
  sub_1D5358624();

  OUTLINED_FUNCTION_7_148();
  sub_1D55AC6B4();
  __swift_destroy_boxed_opaque_existential_1(v1 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_385_0();
  v1[42] = OUTLINED_FUNCTION_231_4(v15, qword_1EC87C110);
  OUTLINED_FUNCTION_3_205();
  v16 = OUTLINED_FUNCTION_131();
  sub_1D55AC65C(v16, v17);

  v18 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    v20 = v1[34];
    v19 = v1[35];
    OUTLINED_FUNCTION_242_2();
    OUTLINED_FUNCTION_142_10();
    *v10 = 136446466;
    v21 = OUTLINED_FUNCTION_93();
    v24 = sub_1D4E6835C(v21, v22, v23);
    OUTLINED_FUNCTION_42_39(v24);
    OUTLINED_FUNCTION_3_205();
    v25 = OUTLINED_FUNCTION_161();
    sub_1D55AC65C(v25, v26);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_7_148();
    sub_1D55AC6B4();
    v27 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_221_2();
    *(v10 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v32 = v1[34];

    OUTLINED_FUNCTION_7_148();
    sub_1D55AC6B4();
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v1[43] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v1[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D559B408()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 352) = v4;
  if (v4)
  {
    v5 = *(v1 + 320);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559B508()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = type metadata accessor for TVSeason();
  v0[33] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[34] = OUTLINED_FUNCTION_167();
  v0[35] = swift_task_alloc();
  v6 = sub_1D560C368();
  v0[36] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[37] = v7;
  v9 = *(v8 + 64);
  v0[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559B5DC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_270_4();
  v5 = sub_1D560C338();
  v7 = OUTLINED_FUNCTION_160_11(v5, v6);
  v8(v7);
  sub_1D55AC65C(v3, v2);
  sub_1D526EBEC();
  v10 = v9;
  v1[28] = v4;
  OUTLINED_FUNCTION_89_22();
  v1[29] = sub_1D55ACD00(v11, v12);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 25);
  OUTLINED_FUNCTION_321_1(boxed_opaque_existential_0);
  v14 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v1[41] = v14;
  OUTLINED_FUNCTION_248_2(v14);
  v1[23] = v10;
  v14;

  sub_1D5341608();
  sub_1D5358624();

  OUTLINED_FUNCTION_8_137();
  sub_1D55AC6B4();
  __swift_destroy_boxed_opaque_existential_1(v1 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_385_0();
  v1[42] = OUTLINED_FUNCTION_231_4(v15, qword_1EC87C110);
  OUTLINED_FUNCTION_4_160();
  v16 = OUTLINED_FUNCTION_131();
  sub_1D55AC65C(v16, v17);

  v18 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    v20 = v1[34];
    v19 = v1[35];
    OUTLINED_FUNCTION_242_2();
    OUTLINED_FUNCTION_142_10();
    *v10 = 136446466;
    v21 = OUTLINED_FUNCTION_93();
    v24 = sub_1D4E6835C(v21, v22, v23);
    OUTLINED_FUNCTION_42_39(v24);
    OUTLINED_FUNCTION_4_160();
    v25 = OUTLINED_FUNCTION_161();
    sub_1D55AC65C(v25, v26);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_8_137();
    sub_1D55AC6B4();
    v27 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v27, v28, v29);
    OUTLINED_FUNCTION_221_2();
    *(v10 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v30, v31, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    v32 = v1[34];

    OUTLINED_FUNCTION_8_137();
    sub_1D55AC6B4();
  }

  v33 = OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11(v33);
  v1[43] = v34;
  v35 = v34;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v1[2] = v36;
  OUTLINED_FUNCTION_99_14();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v37);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D559B8B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560EEA8();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v0[25] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_453(v11);
  v0[27] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[28] = v13;
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D559B9CC()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_114_12();
  sub_1D5598814(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Removing download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_388;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559BBE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559BDE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D5613838();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v0[25] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_453(v11);
  v0[27] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[28] = v13;
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D559BF00()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_114_12();
  sub_1D55989CC(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Removing download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_499;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559C11C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559C31C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D5613AF8();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v0[25] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_453(v11);
  v0[27] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[28] = v13;
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D559C434()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_114_12();
  sub_1D5598B84(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Removing download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_611;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559C650()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559C850(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613D28();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v3[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1D560C368();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559C9B8, 0, 0);
}

uint64_t sub_1D559C9B8()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_114_12();
  sub_1D5598D3C(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Removing download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_165;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559CBD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559CDD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v0[25] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_453(v11);
  v0[27] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[28] = v13;
  v15 = *(v14 + 64);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D559CEEC()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_114_12();
  sub_1D5598EF4(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Removing download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_277;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559D108()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559D308()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = type metadata accessor for MusicMovie();
  v0[21] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_167();
  v0[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20);
  v0[24] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[25] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560C368();
  v0[26] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[27] = v10;
  v12 = *(v11 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D559D648()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v13 = v10[25];
  v15 = v10[22];
  v14 = v10[23];
  swift_willThrow();
  sub_1D4E50004(v13, &qword_1EC7F8478, &qword_1D5672C20);

  OUTLINED_FUNCTION_55();
  v16 = v10[34];
  OUTLINED_FUNCTION_25_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D559D904()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = type metadata accessor for TVEpisode();
  v0[21] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_167();
  v0[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30);
  v0[24] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[25] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560C368();
  v0[26] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[27] = v10;
  v12 = *(v11 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D559DC44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v13 = v10[25];
  v15 = v10[22];
  v14 = v10[23];
  swift_willThrow();
  sub_1D4E50004(v13, &qword_1EC7F8480, &qword_1D5672C30);

  OUTLINED_FUNCTION_55();
  v16 = v10[34];
  OUTLINED_FUNCTION_25_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D559DF00()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = type metadata accessor for TVSeason();
  v0[21] = v3;
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_167();
  v0[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40);
  v0[24] = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  v0[25] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560C368();
  v0[26] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[27] = v10;
  v12 = *(v11 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D559E240()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
    v5 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v13 = v10[25];
  v15 = v10[22];
  v14 = v10[23];
  swift_willThrow();
  sub_1D4E50004(v13, &qword_1EC7F8488, &qword_1D5672C40);

  OUTLINED_FUNCTION_55();
  v16 = v10[34];
  OUTLINED_FUNCTION_25_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D559E4FC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D560EEA8();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v3[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1D560C368();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559E664, 0, 0);
}

uint64_t sub_1D559E664()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_113_15();
  sub_1D5598814(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Cancelling download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_378;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559E880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407();
  sub_1D4E50004(v10, &qword_1EC7F8450, &qword_1D5672A00);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559EB20(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613838();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v3[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1D560C368();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559EC88, 0, 0);
}

uint64_t sub_1D559EC88()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_113_15();
  sub_1D55989CC(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Cancelling download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_489;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559EEA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407();
  sub_1D4E50004(v10, &qword_1EC7F8460, &qword_1D5672AF0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559F144(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613AF8();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v3[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1D560C368();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559F2AC, 0, 0);
}

uint64_t sub_1D559F2AC()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_113_15();
  sub_1D5598B84(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Cancelling download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_601;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559F4C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559F6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407();
  sub_1D4E50004(v10, &qword_1EC7F8470, &qword_1D5672BE0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559F768(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613D28();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v3[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1D560C368();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559F8D0, 0, 0);
}

uint64_t sub_1D559F8D0()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_113_15();
  sub_1D5598D3C(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Cancelling download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_155_0;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D559FAEC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D559FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407();
  sub_1D4E50004(v10, &qword_1EC7F8430, &unk_1D5672818);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559FD8C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5614898();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v3[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v9 = sub_1D560C368();
  v3[27] = v9;
  v10 = *(v9 - 8);
  v3[28] = v10;
  v11 = *(v10 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559FEF4, 0, 0);
}

uint64_t sub_1D559FEF4()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_36_65();
  v4 = sub_1D560C338();
  v6 = OUTLINED_FUNCTION_21_84(v4, v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_20_100();
  v9(v8);

  v10 = OUTLINED_FUNCTION_113_15();
  sub_1D5598EF4(v10, v11, v12, v13, v14);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140();
  }

  v15 = OUTLINED_FUNCTION_111_16();
  v16 = OUTLINED_FUNCTION_19_91(v15, qword_1EC87C110);
  v3(v16);

  v17 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_68_31();
    v44 = OUTLINED_FUNCTION_137_11();
    v21 = OUTLINED_FUNCTION_123_13(4.8752e-34, v44, v18, v19, v20);
    v22 = OUTLINED_FUNCTION_17_94(v21);
    v23(v22);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v24 = OUTLINED_FUNCTION_30_73();
    v25(v24);
    v26 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_221_2();
    *(v2 + 14) = v0;
    OUTLINED_FUNCTION_65_6(&dword_1D4E3F000, v29, v30, "[%{public}s] Cancelling download for %{public}s from the user’s library.");
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    OUTLINED_FUNCTION_344_2();
    v31 = OUTLINED_FUNCTION_15_8();
    v32(v31);
  }

  v33 = OUTLINED_FUNCTION_121_14();
  OUTLINED_FUNCTION_179_10(v33);
  OUTLINED_FUNCTION_183();

  OUTLINED_FUNCTION_187_4();
  v35 = *(v2 + v34);
  v1[34] = v35;
  v1[2] = v36;
  v37 = OUTLINED_FUNCTION_48_8();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v38);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v1[12] = v39;
  v1[13] = &block_descriptor_267;
  v1[14] = v37;
  v40 = v35;
  OUTLINED_FUNCTION_372(v40, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v40);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_1D55A0110()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
    v5 = *(v1 + 248);
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D55A0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407();
  sub_1D4E50004(v10, &qword_1EC7F8440, &qword_1D5672910);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D55A03B0(uint64_t a1)
{
  v3 = sub_1D560EEA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-1] - v14;
  v25 = v3;
  v26 = MEMORY[0x1E69754E0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v17 = *(v4 + 16);
  v17(boxed_opaque_existential_0, a1, v3);
  v18 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00) + 64));
  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v9 + 104))(v15, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v13, v15, v8);
  v17(v7, v19, v3);
  sub_1D4ECB998();
  v21 = v20;
  (*(v9 + 8))(v15, v8);
  [v18 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D55A0608(uint64_t a1)
{
  v3 = sub_1D5613838();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-1] - v14;
  v25 = v3;
  v26 = MEMORY[0x1E6976BE0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v17 = *(v4 + 16);
  v17(boxed_opaque_existential_0, a1, v3);
  v18 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0) + 64));
  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v9 + 104))(v15, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v13, v15, v8);
  v17(v7, v19, v3);
  sub_1D4ECB9C0();
  v21 = v20;
  (*(v9 + 8))(v15, v8);
  [v18 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D55A0860(uint64_t a1)
{
  v3 = sub_1D5613AF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-1] - v14;
  v25 = v3;
  v26 = MEMORY[0x1E6976D20];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v17 = *(v4 + 16);
  v17(boxed_opaque_existential_0, a1, v3);
  v18 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0) + 64));
  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v9 + 104))(v15, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v13, v15, v8);
  v17(v7, v19, v3);
  sub_1D4ECB9E8();
  v21 = v20;
  (*(v9 + 8))(v15, v8);
  [v18 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D55A0AB8(uint64_t a1)
{
  v3 = sub_1D5613D28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-1] - v14;
  v25 = v3;
  v26 = MEMORY[0x1E6976E58];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v17 = *(v4 + 16);
  v17(boxed_opaque_existential_0, a1, v3);
  v18 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818) + 64));
  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v9 + 104))(v15, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v13, v15, v8);
  v17(v7, v19, v3);
  sub_1D4ECADC8();
  v21 = v20;
  (*(v9 + 8))(v15, v8);
  [v18 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D55A0D10(uint64_t a1)
{
  v3 = sub_1D5614898();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D56131C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-1] - v14;
  v25 = v3;
  v26 = MEMORY[0x1E69773D8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v17 = *(v4 + 16);
  v17(boxed_opaque_existential_0, a1, v3);
  v18 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910) + 64));
  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v9 + 104))(v15, *MEMORY[0x1E6976988], v8);
  (*(v9 + 16))(v13, v15, v8);
  v17(v7, v19, v3);
  sub_1D4ECAE6C();
  v21 = v20;
  (*(v9 + 8))(v15, v8);
  [v18 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D55A0F68(uint64_t a1)
{
  v3 = type metadata accessor for TVSeason();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-1] - v13;
  v23 = v3;
  v24 = sub_1D55ACD00(&qword_1EC7EA480, type metadata accessor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  sub_1D55AC65C(a1, boxed_opaque_existential_0);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v14, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v12, v14, v7);
  sub_1D55AC65C(v17, v6);
  sub_1D4ECC300();
  v19 = v18;
  (*(v8 + 8))(v14, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A11C0(uint64_t a1)
{
  v3 = type metadata accessor for TVEpisode();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-1] - v13;
  v23 = v3;
  v24 = sub_1D55ACD00(&qword_1EC7EA578, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  sub_1D55AC65C(a1, boxed_opaque_existential_0);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v14, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v12, v14, v7);
  sub_1D55AC65C(v17, v6);
  sub_1D4ECB77C();
  v19 = v18;
  (*(v8 + 8))(v14, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A1418(uint64_t a1)
{
  v3 = type metadata accessor for MusicMovie();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-1] - v13;
  v23 = v3;
  v24 = sub_1D55ACD00(&qword_1EC7EA580, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  sub_1D55AC65C(a1, boxed_opaque_existential_0);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v14, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v12, v14, v7);
  sub_1D55AC65C(v17, v6);
  sub_1D4ECB560();
  v19 = v18;
  (*(v8 + 8))(v14, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

id sub_1D55A1670(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A16D4(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A1738(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A179C(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A1800(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A1864(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A18C8(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A192C(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20) + 64));

  return [v3 setEnableState_];
}

void sub_1D55A1990()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D56131C8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1D555AB38();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + 16);
    if (v16)
    {
      v26 = v4;
      v27 = v2;
      v31 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v17 = v15 + 32;
      v18 = *MEMORY[0x1E6976988];
      v19 = (v8 + 104);
      v20 = (v8 + 8);
      do
      {
        sub_1D4E62938(v17, v28);
        v21 = v29;
        v22 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        (*v19)(v13, v18, v5);
        sub_1D5159364(v13, v21, v22);
        (*v20)(v13, v5);
        __swift_destroy_boxed_opaque_existential_1(v28);
        sub_1D5615C88();
        v23 = *(v31 + 16);
        sub_1D5615CC8();
        OUTLINED_FUNCTION_98();
        sub_1D5615CD8();
        sub_1D5615C98();
        v17 += 40;
        --v16;
      }

      while (v16);

      v2 = v27;
      v4 = v26;
    }

    else
    {
    }

    v24 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v2) + 64));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v25 = sub_1D5615158();

    [v24 setRelatedModelObjects_];

    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D55A1C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D55ACF54;

  return static Presto_MusicLibraryAddable.add<A>(_:)();
}

uint64_t sub_1D55A1CA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A1D0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D514A678;

  return static Presto_MusicLibraryAddable.add<A, B, C>(_:referralItem:relatedItems:)();
}

uint64_t sub_1D55A1DA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A1E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.remove(_:)();
}

uint64_t sub_1D55A1EA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A1F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.remove<A>(_:relatedItems:)();
}

uint64_t sub_1D55A1FA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A200C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.download(_:)();
}

uint64_t sub_1D55A20A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A210C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.download<A>(_:relatedItems:)();
}

uint64_t sub_1D55A21A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A220C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.removeDownload(_:)();
}

uint64_t sub_1D55A22A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A230C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.removeDownload<A>(_:relatedItems:)();
}

uint64_t sub_1D55A23A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A240C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.cancelDownload(_:)();
}

uint64_t sub_1D55A24A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

uint64_t sub_1D55A250C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;

  return static Presto_MusicLibraryAddable.cancelDownload<A>(_:relatedItems:)();
}

uint64_t sub_1D55A25A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7();
}

void static Presto_MusicLibraryAddable.itemState(_:)()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_202_7();
  __break(1u);
}

uint64_t static Presto_MusicLibraryAddable<>.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D55A268C()
{
  OUTLINED_FUNCTION_60();
  sub_1D560F0D8();
  v0[7] = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D55A2740;
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return MusicLibrary.add<A, B>(_:)();
}

uint64_t sub_1D55A2740()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    v13 = OUTLINED_FUNCTION_437();

    return v14(v13);
  }
}