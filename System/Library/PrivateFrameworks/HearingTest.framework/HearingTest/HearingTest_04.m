uint64_t sub_2520D5F5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_2521418EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v44[-v12];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(v7 + 16);
    v47 = a4;
    if (a2)
    {
      v16(v13, a4, v6);
      v17 = a2;
      v18 = sub_25214196C();
      v19 = sub_252141FBC();

      if (!os_log_type_enabled(v18, v19))
      {

        (*(v7 + 8))(v13, v6);
        goto LABEL_10;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v19;
      v22 = v21;
      v46 = swift_slowAlloc();
      v48 = v46;
      *v20 = 136446722;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, &v48);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v27;
      *v22 = v27;
      *(v20 + 22) = 2080;
      sub_2520DAFF4(&qword_27F4CE078, MEMORY[0x277CC95F0]);
      v28 = sub_25214244C();
      v30 = v29;
      (*(v7 + 8))(v13, v6);
      v31 = sub_2520A5448(v28, v30, &v48);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_25207E000, v18, v45, "[%{public}s] Err %@ %s", v20, 0x20u);
      sub_2520A2584(v22, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v22, -1, -1);
      v32 = v46;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v32, -1, -1);
      v33 = v20;
    }

    else
    {
      v16(v10, a4, v6);
      v18 = sub_25214196C();
      v34 = sub_252141FBC();
      if (!os_log_type_enabled(v18, v34))
      {

        (*(v7 + 8))(v10, v6);
        goto LABEL_10;
      }

      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v35 = 136446466;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, &v48);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      sub_2520DAFF4(&qword_27F4CE078, MEMORY[0x277CC95F0]);
      v39 = sub_25214244C();
      v41 = v40;
      (*(v7 + 8))(v10, v6);
      v42 = sub_2520A5448(v39, v41, &v48);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_25207E000, v18, v34, "[%{public}s] playbackTone completed %s", v35, 0x16u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v43, -1, -1);
      v33 = v35;
    }

    MEMORY[0x253099FD0](v33, -1, -1);

LABEL_10:
    sub_2520D6BD4(v47, a2);
    *(v15 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) = 0;
  }

  return result;
}

void sub_2520D6444()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    if (qword_27F4CD778 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_27F4CDFC0;
    v11 = qword_27F4CDFC8;
    [v11 lock];
    [v11 unlock];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Tone stop requested (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
  if (*(v1 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) == 1)
  {
    v13 = v1[13];
    sub_2520E1D90();
    *(v1 + v12) = 0;
    v14 = sub_25214196C();
    v15 = sub_252141F9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446466;
      v18 = sub_2521425DC();
      v20 = sub_2520A5448(v18, v19, &v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v21 = qword_27F4CDFC0;
      v22 = qword_27F4CDFC8;
      [v22 lock];
      [v22 unlock];

      *(v16 + 14) = v21;
      _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] Asked HTAudioDevice to stop playback (%ld)", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v16, -1, -1);
    }
  }
}

uint64_t HTTonePlayer.HTInterruptionType.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t sub_2520D6804()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2520D6848(char a1)
{
  v3 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2520D68F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = type metadata accessor for ContinuationItem(0);
  v7 = v6 - 8;
  v32 = *(v6 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_2521418EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock);
  [v20 lock];
  sub_2521418DC();
  (*(v15 + 16))(v13, v19, v14);
  v21 = &v13[*(v7 + 28)];
  *v21 = a1;
  *(v21 + 1) = a2;

  v22 = sub_2520CF318();
  if (*v23)
  {
    v24 = v23;
    v31 = v22;
    sub_2520DAD24(v13, v10);
    v25 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_25209992C(0, v25[2] + 1, 1, v25);
      *v24 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_25209992C(v27 > 1, v28 + 1, 1, v25);
      *v24 = v25;
    }

    v25[2] = v28 + 1;
    sub_2520DAD88(v10, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    (v31)(v34, 0);
  }

  else
  {
    (v22)(v34, 0);
  }

  sub_2520DADEC(v13);
  (*(v15 + 32))(v33, v19, v14);
  return [v20 unlock];
}

id sub_2520D6BD4(void *a1, void *a2)
{
  v71 = a2;
  v67 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE068, &qword_252144AD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v61 - v6;
  v8 = sub_2521418EC();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContinuationItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v73 = &v61 - v18;
  v19 = *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock);
  [v19 lock];
  v20 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache;
  v21 = swift_beginAccess();
  v22 = *(v2 + v20);
  if (!v22)
  {
    goto LABEL_3;
  }

  v72 = v12;
  v23 = v19;
  v24 = v7;
  MEMORY[0x28223BE20](v21);
  *(&v61 - 2) = a1;

  v66 = sub_2520CEF6C(sub_2520DACF4, (&v61 - 4), v22);
  v26 = v25;

  v28 = v24;
  v19 = v23;
  v29 = v11;
  v30 = v72;
  if (v26)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE070, &qword_252144AE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_252143AC0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 32) = 0xD000000000000010;
    *(v31 + 40) = 0x800000025214A070;
    sub_25214252C();

    return [v19 unlock];
  }

  v32 = *(v2 + v20);
  v33 = v66;
  if (!v32)
  {
LABEL_14:
    v58 = sub_2520CF318();
    if (*v59)
    {
      sub_2520D725C(v33, v28);
      (v58)(v74, 0);
      v60 = 0;
    }

    else
    {
      (v58)(v74, 0);
      v60 = 1;
    }

    (*(v30 + 56))(v28, v60, 1, v29);
    sub_2520A2584(v28, &qword_27F4CE068, &qword_252144AD8);
    return [v19 unlock];
  }

  if ((v66 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v34 = a1;
    v64 = v28;
    v65 = v29;
    v35 = v71;
    if (v66 < *(v32 + 16))
    {
      sub_2520DAD24(v32 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v66, v15);
      sub_2520DAD88(v15, v73);
      v36 = v68;
      v37 = v69;
      v38 = v70;
      (*(v69 + 16))(v68, v34, v70);
      v39 = v35;
      v63 = v2;
      v40 = sub_25214196C();
      v41 = sub_252141FBC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v74[0] = v62;
        *v42 = 136446722;
        v43 = sub_2521425DC();
        v45 = sub_2520A5448(v43, v44, v74);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        sub_2520DAFF4(&qword_27F4CE078, MEMORY[0x277CC95F0]);
        v46 = sub_25214244C();
        v48 = v47;
        (*(v37 + 8))(v36, v38);
        v49 = sub_2520A5448(v46, v48, v74);

        *(v42 + 14) = v49;
        *(v42 + 22) = 2112;
        if (v35)
        {
          v50 = v35;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          v52 = v51;
        }

        else
        {
          v51 = 0;
          v52 = 0;
        }

        v28 = v64;
        v29 = v65;
        *(v42 + 24) = v51;
        v53 = v61;
        *v61 = v52;
        _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] callBlockAndRemove id:%s error:%@", v42, 0x20u);
        sub_2520A2584(v53, &unk_27F4CE080, &qword_252144E30);
        MEMORY[0x253099FD0](v53, -1, -1);
        v54 = v62;
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v54, -1, -1);
        MEMORY[0x253099FD0](v42, -1, -1);

        v30 = v72;
        v33 = v66;
      }

      else
      {

        (*(v37 + 8))(v36, v38);
        v28 = v64;
        v29 = v65;
      }

      v55 = v73;
      v56 = v73 + *(v29 + 20);
      v57 = *(v56 + 8);
      (*v56)(v35);
      sub_2520DADEC(v55);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

size_t sub_2520D725C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2520A59DC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ContinuationItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2520DAD88(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

id sub_2520D737C()
{
  v1 = type metadata accessor for ContinuationItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock);
  [v7 lock];
  v8 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v21 = v7;
      v22 = v0;
      v11 = &v6[*(v1 + 20)];
      v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v13 = *(v2 + 72);

      do
      {
        sub_2520DAD24(v12, v6);
        v14 = *v11;
        v15 = *(v11 + 1);
        sub_2520DAFA0();
        v16 = swift_allocError();
        v14();

        sub_2520DADEC(v6);
        v12 += v13;
        --v10;
      }

      while (v10);

      v7 = v21;
    }
  }

  v18 = sub_2520CF318();
  if (*v17)
  {
    *v17 = MEMORY[0x277D84F90];
  }

  (v18)(v23, 0);
  return [v7 unlock];
}

void sub_2520D7558()
{
  v1 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  if (qword_27F4CD7A8 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3491 == 1)
  {
    v3 = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136446466;
      v7 = sub_2521425DC();
      v9 = sub_2520A5448(v7, v8, &v23);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v10 = qword_27F4CDFC0;
      v11 = qword_27F4CDFC8;
      [v11 lock];
      [v11 unlock];

      *(v5 + 14) = v10;
      _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Sending HT_HEARTBEAT message (%ld)", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x253099FD0](v6, -1, -1);
      MEMORY[0x253099FD0](v5, -1, -1);
    }

    else
    {
    }
  }

  v12 = v1[3];
  sub_252104450(2, 0x1000000000000uLL, 0xD000000000000024, 0x8000000252149ED0);
  if (byte_27F4D3491 == 1)
  {
    v13 = sub_25214196C();
    v14 = sub_252141FBC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136446466;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = qword_27F4CDFC0;
      v21 = qword_27F4CDFC8;
      [v21 lock];
      [v21 unlock];

      *(v15 + 14) = v20;
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] Reading mode after HT_HEARTBEAT (%ld)", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }
  }

  sub_2521036C4(0xD000000000000024, 0x8000000252149ED0);
  sub_2520D17C0();
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2520D7944(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = ceil((*(a1 + 24) + -0.2) / 0.4 + 1.0);
  v7 = *(v1 + 24);
  LOBYTE(v26[0]) = *(a1 + 16);
  v5 = LOBYTE(v26[0]);
  sub_2520F8EAC(v26, v27);
  v8 = *v27;
  v9 = v27[1];
  v10 = *(v2 + 72);
  *(v2 + 64) = v27[0];
  *(v2 + 72) = v9;

  v11 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = *MEMORY[0x277CB80B0];
  v14 = sub_252141B9C();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE730, &qword_252144AE8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2521446C0;
  *(v17 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v18 = *(v2 + v11);
  if ((v18 & 1) == 0)
  {
    v19 = *(v2 + 72);
    v26[0] = *(v2 + 64);
    v26[1] = v19;
    v4 = HTHeadphoneCalibration.dBFS(fromdBHL:atFrequency:)(v4, v3);
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 2147483650.0)
  {
    v21 = objc_allocWithZone(type metadata accessor for HTAudioSequenceTone());
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] = v3;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] = v4;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses] = v6;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration] = 0x4069000000000000;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration] = 0x4069000000000000;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration] = 0x4041800000000000;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration] = 0x4059000000000000;
    *&v21[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] = 0x408F400000000000;
    *&v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = 0;
    v20 = v8;
    *&v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = v20;
    v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = 0;
    v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = 0;
    v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = v12;
    *&v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = 0;
    v22 = &v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
    *v22 = v14;
    v22[1] = v16;
    v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = 0;
    v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = 0;
    *&v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = 0;
    *&v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = v17;
    v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = v18 ^ 1;
    v23 = &v21[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
    v24 = type metadata accessor for HTAudioSequence();
    *v23 = 0;
    v23[1] = 0;
    v25.receiver = v21;
    v25.super_class = v24;
    objc_msgSendSuper2(&v25, sel_init);
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_2520D7C90(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2520D7CB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_2520D7D08(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_2520D7D40(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void sub_2520D7D60(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v98[0] = *v1;
  v3 = sub_252141A4C();
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v114 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252141A1C();
  v112 = *(v6 - 8);
  v113 = v6;
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v110 = (v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v108 = (v98 - v10);
  v109 = sub_252141ABC();
  v106 = *(v109 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v109);
  v104 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_25214205C();
  v13 = *(v103 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_252141FEC();
  v100 = *(v101 - 8);
  v16 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_252141FCC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v98[1] = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_252141A8C();
  v105 = *(v107 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v23 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v24 = qword_27F4D3498;
  *(v1 + 24) = qword_27F4D3498;
  v25 = qword_27F4CD6F0;
  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = qword_27F4D3420;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v27;
  *(v2 + 56) = 0;
  *(v2 + 80) = xmmword_2521446D0;
  *(v2 + 96) = 0x3FC999999999999ALL;
  v28 = type metadata accessor for HTAudioDevice();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v27;
  *(v2 + 104) = HTAudioDevice.init()();
  v32 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_logger;
  if (qword_27F4CD730 != -1)
  {
    swift_once();
  }

  v33 = sub_25214198C();
  v34 = __swift_project_value_buffer(v33, qword_27F4CDEE0);
  v35 = *(*(v33 - 8) + 16);
  v35(v2 + v32, v34, v33);
  v36 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v33, qword_27F4CDE68);
  v35(v2 + v36, v37, v33);
  v38 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache) = MEMORY[0x277D84F90];
  v39 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock;
  v40 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  *(v2 + v39) = [v40 init];
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) = 0;
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_isUnitTesting) = 0;
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode) = 0;
  if (qword_27F4CD780 != -1)
  {
    swift_once();
  }

  v41 = qword_27F4CE110;
  *(v2 + 64) = qword_27F4CE108;
  *(v2 + 72) = v41;
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);

  sub_252141A6C();
  aBlock[0] = v38;
  sub_2520DAFF4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520CEEB8(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v100 + 104))(v99, *MEMORY[0x277D85260], v101);
  v101 = sub_25214202C();
  sub_2520A5A94(0, &unk_27F4CDC60, 0x277D85CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE100, qword_252144B10);
  v42 = *(v13 + 72);
  v43 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_252143AC0;
  sub_25214204C();
  aBlock[0] = v44;
  sub_2520DAFF4(&qword_27F4CEB00, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDC70, &qword_252143E98);
  sub_2520CEEB8(&unk_27F4CEB10, &unk_27F4CDC70, &qword_252143E98);
  v45 = v102;
  v46 = v103;
  sub_25214218C();
  v47 = sub_25214206C();
  (*(v13 + 8))(v45, v46);
  ObjectType = swift_getObjectType();
  v49 = v104;
  sub_252141AAC();
  v50 = v108;
  *v108 = 1;
  v52 = v112;
  v51 = v113;
  (*(v112 + 104))(v50, *MEMORY[0x277D85188], v113);
  v53 = v110;
  sub_2520A4C7C(v110);
  MEMORY[0x253099290](v49, v50, v53, ObjectType);
  v54 = *(v52 + 8);
  v54(v53, v51);
  v54(v50, v51);
  (*(v106 + 8))(v49, v109);
  v55 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2520DB03C;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_151;
  v56 = _Block_copy(aBlock);

  sub_2520A4E14();
  v57 = v114;
  sub_2520A4E18();
  sub_25214207C();
  _Block_release(v56);
  (*(v115 + 8))(v57, v116);
  (*(v105 + 8))(v23, v107);

  v58 = *(v2 + 40);
  *(v2 + 40) = v47;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v59 = *(v2 + 48);
  v60 = v101;
  *(v2 + 48) = v101;
  v61 = v60;

  v62 = *(v2 + 32);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = v62;

  v65 = &v64[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones];
  v66 = *&v64[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones];
  v67 = *&v64[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones + 8];
  *v65 = sub_2520DB044;
  v65[1] = v63;

  sub_2520A1FE4(v66);

  if (qword_27F4CD778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v68 = qword_27F4CDFC0;
  v69 = qword_27F4CDFC8;
  [v69 lock];
  [v69 unlock];

  v70 = __OFADD__(v68, 1);
  v71 = v68 + 1;
  if (v70)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v72 = qword_27F4CDFC8;
    [qword_27F4CDFC8 lock];
    qword_27F4CDFC0 = v71;
    [v72 unlock];
    swift_endAccess();
    v73 = sub_25214196C();
    v74 = sub_252141FBC();
    v75 = os_log_type_enabled(v73, v74);
    v111 = v47;
    v116 = v61;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v117[0] = v77;
      *v76 = 136446466;
      v78 = sub_2521425DC();
      v80 = sub_2520A5448(v78, v79, v117);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2048;
      v81 = qword_27F4CDFC0;
      v82 = qword_27F4CDFC8;
      [v82 &off_2796F5878];
      [v82 unlock];

      *(v76 + 14) = v81;
      _os_log_impl(&dword_25207E000, v73, v74, "[%{public}s] Init tone player (%ld)", v76, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x253099FD0](v77, -1, -1);
      MEMORY[0x253099FD0](v76, -1, -1);
    }

    v83 = CFNotificationCenterGetDarwinNotifyCenter();
    v84 = sub_252141B6C();
    CFNotificationCenterPostNotification(v83, v84, 0, 0, 1u);

    v85 = sub_25214196C();
    v86 = sub_252141FBC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117[0] = v115;
      *v87 = 136446722;
      v88 = sub_2521425DC();
      v90 = sub_2520A5448(v88, v89, v117);

      *(v87 + 4) = v90;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_2520A5448(0xD000000000000022, 0x8000000252149200, v117);
      *(v87 + 22) = 2048;
      v91 = qword_27F4CDFC0;
      v92 = qword_27F4CDFC8;
      [v92 &off_2796F5878];
      [v92 unlock];

      *(v87 + 24) = v91;
      _os_log_impl(&dword_25207E000, v85, v86, "[%{public}s] posted notification %s (%ld)", v87, 0x20u);
      v93 = v115;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v93, -1, -1);
      MEMORY[0x253099FD0](v87, -1, -1);
    }

    v94 = v116;
    v95 = objc_opt_self();
    v96 = [v95 defaultCenter];
    [v96 addObserver:v2 selector:sel_handleInterruptionEnd name:*MEMORY[0x277D76E48] object:0];

    v97 = [v95 defaultCenter];
    [v97 addObserver:v2 selector:sel_handleInterruptionEnd name:*MEMORY[0x277D76E80] object:0];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2520D8CA0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2520D8D18()
{
  result = qword_27F4CDFF0;
  if (!qword_27F4CDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDFF0);
  }

  return result;
}

void sub_2520D8D7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v84 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v84 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_252141B6C();
  v12 = [v10 initWithSuiteName_];

  if (!v12)
  {
    __break(1u);
    goto LABEL_34;
  }

  sub_2520DB7EC(v9);

  v13 = sub_25214188C();
  v14 = *(v13 - 8);
  v89 = *(v14 + 48);
  v15 = v89(v9, 1, v13);
  sub_2520A2584(v9, &qword_27F4CDD08, &unk_252144B00);
  if (v15 != 1)
  {
    v85 = v3;
    v87 = v6;
    v86 = objc_opt_self();
    v27 = [v86 processInfo];
    v28 = [v27 processName];

    v29 = sub_252141B9C();
    v31 = v30;

    v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v88 = "tat";
    v33 = sub_252141B6C();
    v34 = [v32 initWithSuiteName_];

    if (v34)
    {
      v84 = "HTLastSessionTimestamp";
      v35 = sub_252141B6C();
      v36 = [v34 stringForKey_];

      if (v36)
      {
        v37 = sub_252141B9C();
        v39 = v38;

        if (v29 == v37 && v31 == v39)
        {

          v40 = 0x2796F5000;
          goto LABEL_15;
        }

        v41 = sub_25214247C();

        v40 = 0x2796F5000uLL;
        if (v41)
        {
LABEL_15:
          v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
          v43 = sub_252141B6C();
          v44 = [v42 initWithSuiteName_];

          if (v44)
          {
            v45 = v87;
            (*(v14 + 56))(v87, 1, 1, v13);
            v46 = v45;
            v47 = v85;
            sub_2520AA46C(v46, v85);
            if (v89(v47, 1, v13) == 1)
            {
              v48 = 0;
            }

            else
            {
              v48 = sub_25214185C();
              (*(v14 + 8))(v47, v13);
            }

            v65 = sub_252141B6C();
            [v44 setValue:v48 forKey:v65];

            swift_unknownObjectRelease();
            sub_2520A2584(v87, &qword_27F4CDD08, &unk_252144B00);
            v66 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
            v67 = sub_252141B6C();
            v68 = [v66 initWithSuiteName_];

            if (v68)
            {
              v69 = sub_252141B6C();
              [v68 setValue:0 forKey:v69];

              v70 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
              v71 = sub_252141B6C();
              v72 = [v70 initWithSuiteName_];

              if (v72)
              {
                v73 = sub_252141B6C();
                [v72 setValue:0 forKey:v73];

                if (qword_27F4CD740 != -1)
                {
                  swift_once();
                }

                v74 = sub_25214198C();
                __swift_project_value_buffer(v74, qword_27F4CDF10);
                v50 = sub_25214196C();
                v75 = sub_252141FBC();
                if (!os_log_type_enabled(v50, v75))
                {
                  goto LABEL_32;
                }

                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                v91 = v53;
                *v52 = 136315394;
                v76 = [v86 processInfo];
                v77 = [v76 *(v40 + 3664)];

                v78 = sub_252141B9C();
                v80 = v79;

                v81 = sub_2520A5448(v78, v80, &v91);

                *(v52 + 4) = v81;
                *(v52 + 12) = 2048;
                if (qword_27F4CD778 != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                v82 = qword_27F4CDFC0;
                v83 = qword_27F4CDFC8;
                [v83 lock];
                [v83 unlock];

                *(v52 + 14) = v82;
                v60 = "Cleared previous session timestamp for %s (%ld)";
                v61 = v75;
                v62 = v50;
                v63 = v52;
                v64 = 22;
LABEL_31:
                _os_log_impl(&dword_25207E000, v62, v61, v60, v63, v64);
                __swift_destroy_boxed_opaque_existential_0(v53);
                MEMORY[0x253099FD0](v53, -1, -1);
                MEMORY[0x253099FD0](v52, -1, -1);
LABEL_32:

                return;
              }

LABEL_37:
              __break(1u);
              return;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
      }

      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v49 = sub_25214198C();
      __swift_project_value_buffer(v49, qword_27F4CDF10);
      v50 = sub_25214196C();
      v51 = sub_252141FAC();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_32;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v90[0] = v53;
      *v52 = 136315138;
      v54 = [v86 processInfo];
      v55 = [v54 processName];

      v56 = sub_252141B9C();
      v58 = v57;

      v59 = sub_2520A5448(v56, v58, v90);

      *(v52 + 4) = v59;
      v60 = "%s should not clear a different process timestamp!";
      v61 = v51;
      v62 = v50;
      v63 = v52;
      v64 = 12;
      goto LABEL_31;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v16 = sub_25214198C();
  __swift_project_value_buffer(v16, qword_27F4CDF10);
  v17 = sub_25214196C();
  v18 = sub_252141FBC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v90[0] = v20;
    *v19 = 136315138;
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];

    v23 = sub_252141B9C();
    v25 = v24;

    v26 = sub_2520A5448(v23, v25, v90);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_25207E000, v17, v18, "Previous session timestamp already cleared for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v19, -1, -1);
  }
}

void sub_2520D9748(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_2520D270C(a1, *(v1 + 16), *(v1 + 24));
}

void sub_2520D9760(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_2520D40E8(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_2520D976C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_33Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2520D9820()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520D9858()
{
  v1 = sub_2521418EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2520D9928(uint64_t a1, void *a2)
{
  v5 = *(sub_2521418EC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_2520D5F5C(a1, a2, v8, (v2 + v6));
}

unint64_t sub_2520D99F4()
{
  result = qword_27F4CE010;
  if (!qword_27F4CE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE010);
  }

  return result;
}

unint64_t sub_2520D9A4C()
{
  result = qword_27F4CE018;
  if (!qword_27F4CE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE018);
  }

  return result;
}

unint64_t sub_2520D9AA4()
{
  result = qword_27F4CE020;
  if (!qword_27F4CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE020);
  }

  return result;
}

uint64_t sub_2520D9AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2520D9B40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_2520D9B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2520D9BDC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HTTonePlayerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HTTonePlayerError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2520D9D48()
{
  result = sub_25214198C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of HTTonePlayer.enableANCHearingTestMode()()
{
  return (*(*v0 + 424))();
}

{
  v2 = *(*v0 + 432);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2520DA018;

  return v6();
}

uint64_t sub_2520DA018()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of HTTonePlayer.enableANCHearingTestMode(for:)(uint64_t a1)
{
  v4 = *(*v1 + 440);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DA234;

  return v8(a1);
}

uint64_t sub_2520DA234(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of HTTonePlayer.enableANCHearingTestModeWithReason()()
{
  v2 = *(*v0 + 448);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2520DA018;

  return v6();
}

uint64_t dispatch thunk of HTTonePlayer.startSession()()
{
  return (*(*v0 + 464))();
}

{
  v2 = *(*v0 + 472);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2520DB0A4;

  return v6();
}

uint64_t dispatch thunk of HTTonePlayer.startSession(for:)(uint64_t a1)
{
  v4 = *(*v1 + 480);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2520DB0BC;

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for HTTonePlayer.HTInterruptionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTonePlayer.HTInterruptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2520DA9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521418EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2520DAAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521418EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2520DAB78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2520DABB0()
{
  result = sub_2521418EC();
  if (v1 <= 0x3F)
  {
    result = sub_2520DAC34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2520DAC34()
{
  result = qword_27F4CE050;
  if (!qword_27F4CE050)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4CE050);
  }

  return result;
}

unint64_t sub_2520DACA0()
{
  result = qword_27F4CE060;
  if (!qword_27F4CE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE060);
  }

  return result;
}

uint64_t sub_2520DAD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520DAD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520DADEC(uint64_t a1)
{
  v2 = type metadata accessor for ContinuationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_84Tm()
{
  v1 = sub_2521418EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2520DAF28(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_2521418EC() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_2520DAFA0()
{
  result = qword_27F4CE0D8;
  if (!qword_27F4CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0D8);
  }

  return result;
}

uint64_t sub_2520DAFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2520DB130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 40))(a3, a5);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v11 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
  sub_2520DB280(sub_2520DB248, v15, v10, AssociatedTypeWitness, a4, v13, MEMORY[0x277D84950], &v16);
}

uint64_t sub_2520DB248(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2520DB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2520DB348(v15, v16, v17, v18, v19, v20, v21, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t sub_2520DB348(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = sub_2520DB598(v30, a2, a3, a4, a5, a6, v28, v19);
    v16 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v23 = sub_25214232C();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v16);
    if (v24)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  return result;
}

uint64_t sub_2520DB598(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2520DB6F0(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(v16 + 2);

  v19 = v23;
  result = a1(&v16[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *sub_2520DB6F0(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      sub_25214224C();
      swift_getWitnessTable();
      v3 = sub_2521424AC();

      objc_setAssociatedObject(v1, MEMORY[0x277D84F90], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t sub_2520DB7EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_252141B6C();
  v9 = [v2 objectForKey_];

  if (v9)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v10 = sub_25214188C();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    v13 = *(v12 + 56);
    v13(v7, v11 ^ 1u, 1, v10);
    if ((*(v12 + 48))(v7, 1, v10) != 1)
    {
      (*(v12 + 32))(a1, v7, v10);
      return (v13)(a1, 0, 1, v10);
    }
  }

  else
  {
    sub_2520A2584(v18, &unk_27F4CE0B0, &unk_252144AF0);
    v10 = sub_25214188C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  sub_25214188C();
  v14 = *(v10 - 8);
  (*(v14 + 56))(a1, 1, 1, v10);
  result = (*(v14 + 48))(v7, 1, v10);
  if (result != 1)
  {
    return sub_2520A2584(v7, &qword_27F4CDD08, &unk_252144B00);
  }

  return result;
}

id sub_2520DBAD4()
{
  v1 = sub_252141B6C();
  v2 = [v0 BOOLForKey_];

  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF10);
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = [objc_opt_self() processInfo];
    v9 = [v8 processName];

    v10 = sub_252141B9C();
    v12 = v11;

    v13 = sub_2520A5448(v10, v12, &v18);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    if (v2)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v2)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_2520A5448(v14, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_25207E000, v4, v5, "%s reads HTLastSessionBackgrounded as %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  return v2;
}

void sub_2520DBD08(char a1)
{
  v2 = v1;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDF10);
  v5 = sub_25214196C();
  v6 = sub_252141FBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processName];

    v11 = sub_252141B9C();
    v13 = v12;

    v14 = sub_2520A5448(v11, v13, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    if (a1)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (a1)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_2520A5448(v15, v16, &v20);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_25207E000, v5, v6, "%s writes HTLastSessionBackgrounded as %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v18 = sub_252141DDC();
  v19 = sub_252141B6C();
  [v2 setValue:v18 forKey:v19];
}

uint64_t sub_2520DBF68()
{
  v1 = sub_252141B6C();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    v3 = sub_252141B6C();
    v4 = [v0 BOOLForKey_];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    return 1;
  }

  return v4;
}

uint64_t sub_2520DC064()
{
  v1 = sub_252141B6C();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    v3 = sub_252141B6C();
    v4 = [v0 BOOLForKey_];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    return 1;
  }

  return v4;
}

uint64_t sub_2520DC160()
{
  v1 = sub_252141B6C();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_252141CDC();

  v4 = sub_2520DC52C(v3);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v32 = MEMORY[0x277D84F90];
  result = sub_25209B2D4(0, v5, 0);
  v7 = 0;
  v8 = v32;
  v26 = v4;
  v27 = v4 + 32;
  v25 = v5;
LABEL_5:
  if (v7 < *(v4 + 16))
  {
    v28 = v7;
    v29 = v8;
    v9 = *(v27 + 8 * v7);
    v10 = *(v9 + 16);

    if (!v10)
    {
      v13 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }

    v11 = 0;
    v12 = v9 + 40;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = v13;
      v14 = (v12 + 16 * v11);
      v15 = v11;
      while (1)
      {
        if (v15 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v17 = *(v14 - 1);
        v16 = *v14;
        MEMORY[0x28223BE20](result);
        if ((v16 & 0x1000000000000000) == 0)
        {
          if ((v16 & 0x2000000000000000) != 0)
          {

            if (v17 >= 0x21u || ((0x100003E01uLL >> v17) & 1) == 0)
            {
              v19 = _swift_stdlib_strtod_clocale();
              if (v19)
              {
LABEL_20:
                v31 = *v19 == 0;
                goto LABEL_22;
              }
            }

            goto LABEL_21;
          }

          if ((v17 & 0x1000000000000000) != 0)
          {
            v18 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            if (v18 >= 0x21 || ((0x100003E01uLL >> v18) & 1) == 0)
            {
              v19 = _swift_stdlib_strtod_clocale();
              if (v19)
              {
                goto LABEL_20;
              }
            }

LABEL_21:
            v31 = 0;
            goto LABEL_22;
          }
        }

        sub_25214221C();
LABEL_22:

        if (v31)
        {
          break;
        }

        ++v15;
        v14 += 2;
        if (v10 == v15)
        {
          v13 = v30;
          goto LABEL_33;
        }
      }

      v13 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_252099194(0, *(v30 + 16) + 1, 1, v30);
        v13 = result;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_252099194((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      v11 = v15 + 1;
      *(v13 + 16) = v21 + 1;
      *(v13 + 8 * v21 + 32) = 0;
      v12 = v9 + 40;
      if (v10 - 1 == v15)
      {
LABEL_33:

        v8 = v29;
        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_25209B2D4((v22 > 1), v23 + 1, 1);
          v8 = v29;
        }

        v7 = v28 + 1;
        *(v8 + 16) = v23 + 1;
        *(v8 + 8 * v23 + 32) = v13;
        v4 = v26;
        if (v28 + 1 == v25)
        {
          v24 = v8;

          return v24;
        }

        goto LABEL_5;
      }
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2520DC52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25209B374(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2520A5FC4(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25209B374((v5 > 1), v6 + 1, 1);
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

uint64_t sub_2520DC654()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 localizedInfoDictionary];

  if (v2)
  {
    v3 = sub_252141B1C();

    if (*(v3 + 16) && (v4 = sub_25213E648(0xD000000000000013, 0x800000025214A0B0), (v5 & 1) != 0))
    {
      sub_2520A5FC4(*(v3 + 56) + 32 * v4, v13);

      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
    }
  }

  v6 = [v0 mainBundle];
  v7 = [v6 localizedInfoDictionary];

  if (v7)
  {
    v8 = sub_252141B1C();

    if (*(v8 + 16) && (v9 = sub_25213E648(0x656C646E75424643, 0xEC000000656D614ELL), (v10 & 1) != 0))
    {
      sub_2520A5FC4(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
    }
  }

  return 0x20656D614E206F4ELL;
}

_BYTE *sub_2520DC854@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2520DC8D4(int a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  switch(a1)
  {
    case 8231:
      if (a2)
      {
        if (qword_27F4CD798 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE138;
        v5 = qword_27F4CE140;
        v15 = qword_27F4CD768;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_25214198C();
        __swift_project_value_buffer(v16, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B788 Rear Vent Occluded Calibration Table used";
      }

      else
      {
        if (qword_27F4CD790 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE128;
        v5 = qword_27F4CE130;
        v24 = qword_27F4CD768;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = sub_25214198C();
        __swift_project_value_buffer(v25, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B788 Table used";
      }

      goto LABEL_48;
    case 8228:
      if (a2)
      {
        if (qword_27F4CD788 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE118;
        v5 = qword_27F4CE120;
        v13 = qword_27F4CD768;

        if (v13 != -1)
        {
          swift_once();
        }

        v14 = sub_25214198C();
        __swift_project_value_buffer(v14, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698(c) Rear Vent Occluded Calibration Table used";
      }

      else
      {
        if (qword_27F4CD780 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE108;
        v5 = qword_27F4CE110;
        v22 = qword_27F4CD768;

        if (v22 != -1)
        {
          swift_once();
        }

        v23 = sub_25214198C();
        __swift_project_value_buffer(v23, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698(c) Table used";
      }

      goto LABEL_48;
    case 8212:
      if (a2)
      {
        if (qword_27F4CD788 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE118;
        v5 = qword_27F4CE120;
        v6 = qword_27F4CD768;

        if (v6 != -1)
        {
          swift_once();
        }

        v7 = sub_25214198C();
        __swift_project_value_buffer(v7, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698 Rear Vent Occluded Calibration Table used";
      }

      else
      {
        if (qword_27F4CD780 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE108;
        v5 = qword_27F4CE110;
        v26 = qword_27F4CD768;

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = sub_25214198C();
        __swift_project_value_buffer(v27, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698 Table used";
      }

LABEL_48:
      _os_log_impl(&dword_25207E000, v8, v9, v12, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
LABEL_49:

      *a3 = v4;
      a3[1] = v5;
      return;
  }

  if (qword_27F4CD768 != -1)
  {
    swift_once();
  }

  v17 = sub_25214198C();
  __swift_project_value_buffer(v17, qword_27F4CDF68);
  v18 = sub_25214196C();
  v19 = sub_252141FAC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
    _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] Product ID unsupported for calibration table", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v20, -1, -1);
  }

  *a3 = 0;
  a3[1] = 0;
}

Swift::Double __swiftcall HTHeadphoneCalibration.dBFS(fromdBHL:atFrequency:)(Swift::Double fromdBHL, Swift::Double atFrequency)
{
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v58 = MEMORY[0x277D84F90];
    v57 = v7;
    sub_25209B214(0, v7, 0);
    v9 = v58;
    v10 = v6 + 64;
    v11 = -1 << *(v6 + 32);
    v12 = sub_25214219C();
    v13 = v57;
    v14 = 0;
    v15 = *(v6 + 36);
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v6 + 32))
    {
      v17 = v12 >> 6;
      v18 = 1 << v12;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_46;
      }

      if (v15 != *(v6 + 36))
      {
        goto LABEL_47;
      }

      v3 = *(*(v6 + 48) + 8 * v12);
      v19 = *(*(v6 + 56) + 8 * v12);
      v58 = v9;
      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v56 = v12;
        sub_25209B214((v20 > 1), v21 + 1, 1);
        v13 = v57;
        v12 = v56;
        v9 = v58;
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v3;
      *(v22 + 5) = v19;
      v16 = 1 << *(v6 + 32);
      if (v12 >= v16)
      {
        goto LABEL_48;
      }

      v23 = *(v10 + 8 * v17);
      if ((v23 & v18) == 0)
      {
        goto LABEL_49;
      }

      if (v15 != *(v6 + 36))
      {
        goto LABEL_50;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v16 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v17 << 6;
        v26 = v17 + 1;
        v27 = (v6 + 72 + 8 * v17);
        while (v26 < (v16 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_2520A1FF4(v12, v15, 0);
            v13 = v57;
            v16 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_2520A1FF4(v12, v15, 0);
        v13 = v57;
      }

LABEL_4:
      ++v14;
      v12 = v16;
      if (v14 == v13)
      {
        v8 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_22:
  v58 = v9;

  sub_2520DD9BC(&v58);

  v30 = v58;
  v31 = *(v58 + 2);
  if (v31)
  {
    v58 = v8;
    sub_2520A3448(0, v31, 0);
    v32 = v58;
    v33 = *(v58 + 2);
    v34 = 32;
    v35 = v31;
    do
    {
      v36 = *&v30[v34];
      v58 = v32;
      v37 = *(v32 + 3);
      if (v33 >= v37 >> 1)
      {
        sub_2520A3448(v37 > 1, v33 + 1, 1);
        v32 = v58;
      }

      *(v32 + 2) = v33 + 1;
      *&v32[8 * v33 + 32] = v36;
      v34 += 16;
      ++v33;
      --v35;
    }

    while (v35);
    v58 = v8;
    sub_2520A3448(0, v31, 0);
    v38 = v58;
    v39 = *(v58 + 2);
    v40 = 40;
    do
    {
      v41 = *&v30[v40];
      v58 = v38;
      v42 = *(v38 + 3);
      if (v39 >= v42 >> 1)
      {
        sub_2520A3448(v42 > 1, v39 + 1, 1);
        v38 = v58;
      }

      *(v38 + 2) = v39 + 1;
      *&v38[8 * v39 + 32] = v41;
      v40 += 16;
      ++v39;
      --v31;
    }

    while (v31);
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
  }

  _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v32, v38, atFrequency);
  v44 = v43;

  v3 = v44 + fromdBHL;
  if (v3 > 4.0)
  {
    if (qword_27F4CD708 == -1)
    {
LABEL_35:
      v45 = sub_25214198C();
      __swift_project_value_buffer(v45, qword_27F4CDE68);
      v46 = sub_25214196C();
      v47 = sub_252141FAC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58 = v49;
        *v48 = 136446978;
        *(v48 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v58);
        *(v48 + 12) = 2048;
        *(v48 + 14) = atFrequency;
        *(v48 + 22) = 2048;
        *(v48 + 24) = fromdBHL;
        *(v48 + 32) = 2048;
        *(v48 + 34) = v3;
        _os_log_impl(&dword_25207E000, v46, v47, "[%{public}s] Tone freq %f, dBHL %f, dBFS %f is louder than the current combination of calibration table, system volume and headphones are capable of playing (dbFS > 4)", v48, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x253099FD0](v49, -1, -1);
        MEMORY[0x253099FD0](v48, -1, -1);
      }

      return 4.0;
    }

LABEL_51:
    swift_once();
    goto LABEL_35;
  }

  if (v3 > 0.0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v50 = sub_25214198C();
    __swift_project_value_buffer(v50, qword_27F4CDE68);
    v51 = sub_25214196C();
    v52 = sub_252141FAC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58 = v54;
      *v53 = 136446978;
      *(v53 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v58);
      *(v53 + 12) = 2048;
      *(v53 + 14) = atFrequency;
      *(v53 + 22) = 2048;
      *(v53 + 24) = fromdBHL;
      *(v53 + 32) = 2048;
      *(v53 + 34) = v3;
      _os_log_impl(&dword_25207E000, v51, v52, "[%{public}s] Tone freq %f, dBHL %f, dBFS %f may be louder than the current combination of calibration table, system volume and headphones are capable of playing (dbFS > 0)", v53, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x253099FD0](v54, -1, -1);
      MEMORY[0x253099FD0](v53, -1, -1);
    }
  }

  return v3;
}

unint64_t sub_2520DD770()
{
  result = sub_25209CA3C(&unk_28644D448);
  qword_27F4CE108 = 0x3FEA000000000000;
  qword_27F4CE110 = result;
  return result;
}

unint64_t sub_2520DD7C8()
{
  result = sub_25209CA3C(&unk_28644D718);
  qword_27F4CE118 = 0x3FEA000000000000;
  qword_27F4CE120 = result;
  return result;
}

unint64_t sub_2520DD820()
{
  result = sub_25209CA3C(&unk_28644DCB8);
  qword_27F4CE128 = 0x3FEA000000000000;
  qword_27F4CE130 = result;
  return result;
}

unint64_t sub_2520DD878()
{
  result = sub_25209CA3C(&unk_28644D9E8);
  qword_27F4CE138 = 0x3FEA000000000000;
  qword_27F4CE140 = result;
  return result;
}

uint64_t sub_2520DD8D0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t sub_2520DD944(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_2520A3448(result, v5, 0);
  }

  return result;
}

uint64_t sub_2520DD9BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2520DE2C8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25214243C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE148, &unk_2521480F0);
      v7 = sub_252141D3C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2520DDB10(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2520DDB10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2520DE28C(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_2520DE088((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252099298(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_252099298((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_2520DE088((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2520DE088(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t HTAudioDevice.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  HTAudioDevice.init()();
  return v3;
}

uint64_t sub_2520DE360(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

id sub_2520DE3F0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    sub_25209D048(MEMORY[0x277D84F90]);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *MEMORY[0x277CCA7E8];
  v6 = sub_252141B9C();
  v8 = v7;
  swift_getErrorValue();
  v21 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_2520A1F80(v20, v17);

  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8B94(v17, v6, v8, isUniquelyReferenced_nonNull_native);

LABEL_6:
  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v13 = sub_252141B6C();
  v14 = sub_252141B0C();

  v15 = [v12 initWithDomain:v13 code:-a3 userInfo:v14];

  return v15;
}

uint64_t HTAudioDevice.init()()
{
  v1 = v0;
  *(v0 + 16) = sub_252141B6C();
  *(v0 + 24) = 0;
  sub_25209D56C();
  *(v0 + 32) = sub_252141FFC();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  v2 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
  if (qword_27F4CD718 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  v4 = __swift_project_value_buffer(v3, qword_27F4CDE98);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  return v1;
}

uint64_t HTAudioDevice.deinit()
{
  v1 = v0;
  v2 = *(v0 + 56);
  *(v0 + 56) = 0;

  if (*(v0 + 48))
  {

    sub_2520E5AE4(1);
  }

  sub_2520E3C08();

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);
  swift_unknownObjectRelease();
  v6 = *(v0 + 80);
  swift_unknownObjectRelease();
  v7 = *(v0 + 88);
  swift_unknownObjectRelease();
  v8 = *(v0 + 96);
  swift_unknownObjectRelease();
  v9 = *(v0 + 104);
  swift_unknownObjectRelease();
  v10 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
  v11 = sub_25214198C();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t HTAudioDevice.__deallocating_deinit()
{
  HTAudioDevice.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2520DE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a4;
  v7 = *v4;
  v8 = sub_252141A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_252141A8C();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4[4];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v24;
  v20 = v25;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v20;
  v18[7] = v7;
  aBlock[4] = sub_2520E44B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_106_0;
  v21 = _Block_copy(aBlock);

  sub_2520A283C(a3);
  sub_252141A6C();
  v28 = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v16, v12, v21);
  _Block_release(v21);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v27);
}

void sub_2520DEAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a4;
  v87 = a5;
  v88 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v8 = sub_252141A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252141A8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  v19 = Strong;
  v82 = a3;
  v85 = v8;
  v89 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
  v20 = sub_25214196C();
  v21 = sub_252141FBC();
  v22 = os_log_type_enabled(v20, v21);
  v81[1] = a6;
  v84 = v13;
  v83 = v14;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136446210;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, &aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] setup audio session - start", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x253099FD0](v24, -1, -1);
    MEMORY[0x253099FD0](v23, -1, -1);
  }

  v28 = [objc_opt_self() sharedInstance];
  v29 = *(v19 + 40);
  *(v19 + 40) = v28;
  v30 = v28;

  if (v30)
  {
    v31 = *MEMORY[0x277CB8030];
    aBlock = 0;
    v32 = [v30 setCategory:v31 error:&aBlock];
    v33 = aBlock;
    if (!v32)
    {
      goto LABEL_13;
    }

    v34 = *MEMORY[0x277CB80C0];
    aBlock = 0;
    v35 = v33;
    v36 = [v30 setMode:v34 error:&aBlock];
    v33 = aBlock;
    if (!v36)
    {
      goto LABEL_13;
    }

    aBlock = 0;
    v37 = v33;
    v38 = [v30 setEligibleForBTSmartRoutingConsideration:0 error:&aBlock];
    v33 = aBlock;
    if (!v38 || (aBlock = 0, v39 = v33, v40 = [v30 setActive:1 error:&aBlock], v33 = aBlock, !v40))
    {
LABEL_13:
      v58 = v33;
      v59 = sub_25214178C();

      swift_willThrow();
      v87 = v9;

      v60 = v59;
      v61 = sub_25214196C();
      v62 = sub_252141FAC();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock = v64;
        *v63 = 136446210;
        swift_getErrorValue();
        v65 = sub_2521424DC();
        v67 = sub_2520A5448(v65, v66, &aBlock);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_25207E000, v61, v62, "Failed to setup audio session for HearingTest %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x253099FD0](v64, -1, -1);
        MEMORY[0x253099FD0](v63, -1, -1);
      }

      v57 = v83;
      sub_25209D56C();
      v68 = sub_252141FFC();
      v69 = swift_allocObject();
      v70 = v82;
      v69[2] = v88;
      v69[3] = v70;
      v69[4] = v59;
      v94 = sub_2520E45B8;
      v95 = v69;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_2520A3B78;
      v93 = &block_descriptor_121;
      v71 = _Block_copy(&aBlock);

      v72 = v59;

      sub_252141A6C();
      aBlock = MEMORY[0x277D84F90];
      sub_2520E3EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520E3F18();
      v56 = v85;
      sub_25214218C();
      MEMORY[0x2530991B0](0, v17, v12, v71);
      _Block_release(v71);

      v9 = v87;
      v49 = v84;
      goto LABEL_16;
    }

    v41 = aBlock;
  }

  v42 = sub_25214196C();
  v43 = sub_252141FBC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136446210;
    v46 = sub_2521425DC();
    v48 = sub_2520A5448(v46, v47, &aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] setup and activated audio session for HearingTest.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x253099FD0](v45, -1, -1);
    MEMORY[0x253099FD0](v44, -1, -1);
  }

  v49 = v84;
  v50 = swift_allocObject();
  *(v50 + 16) = v88;
  *(v50 + 24) = v82;

  sub_2520E22A0(sub_2520E44FC, v50);

  sub_25209D56C();
  v51 = sub_252141FFC();
  v52 = swift_allocObject();
  v54 = v86;
  v53 = v87;
  v52[2] = v19;
  v52[3] = v54;
  v52[4] = v53;
  v94 = sub_2520E456C;
  v95 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_2520A3B78;
  v93 = &block_descriptor_115;
  v55 = _Block_copy(&aBlock);

  sub_2520A283C(v54);

  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  v56 = v85;
  sub_25214218C();
  MEMORY[0x2530991B0](0, v17, v12, v55);
  _Block_release(v55);

  v57 = v83;
LABEL_16:
  (*(v9 + 8))(v12, v56);
  (*(v57 + 8))(v17, v49);
  v73 = sub_25214196C();
  v74 = sub_252141FBC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v75 = 136446210;
    v77 = sub_2521425DC();
    v79 = sub_2520A5448(v77, v78, &aBlock);

    *(v75 + 4) = v79;
    _os_log_impl(&dword_25207E000, v73, v74, "[%{public}s] setup audio session - end", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x253099FD0](v76, -1, -1);
    MEMORY[0x253099FD0](v75, -1, -1);
  }

LABEL_19:
  v80 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2520DF458(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);

    sub_2520E5AE4(1);
  }

  else
  {
    type metadata accessor for HTAudioDeviceCapturedVolume();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 18) = 0;
    *(v5 + 24) = 0;
    v6 = type metadata accessor for AVSessionCategoryVolume();
    *(v5 + 32) = [objc_allocWithZone(v6) init];
    *(v5 + 40) = [objc_allocWithZone(v6) init];
    v7 = *(a1 + 48);
    *(a1 + 48) = v5;
  }

  if (*(a1 + 48))
  {
    v9 = *(a1 + 48);

    sub_2520E6A2C(0.8125);
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_2520DF544(void (*a1)(id), uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE168, &unk_252144C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AC0;
  v6 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_252141B9C();
  *(inited + 40) = v7;
  swift_getErrorValue();
  v8 = sub_2521424DC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_25209D048(inited);
  swift_setDeallocating();
  sub_2520E432C(inited + 32);
  v11 = sub_2520DE3F0(a3, v10, 1u);

  a1(v11);
}

void sub_2520DF644(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = v3;
  v91[1] = *MEMORY[0x277D85DE8];
  v88 = *v4;
  v90 = [objc_opt_self() sharedInstance];
  v7 = [v90 allowAllBuiltInDataSources];
  if (v7)
  {
    if ((*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput) & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 1;
    [v90 setAllowAllBuiltInDataSources_];
    if (*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput) != 1)
    {
      goto LABEL_9;
    }
  }

  if (([v90 categoryOptions] & 0x20) != 0)
  {
    v8 = v7 ^ 1;
LABEL_9:
    v9 = v90;
    if (*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode) == 1)
    {
      v11 = [v90 categoryOptions] & 8;
      v9 = v90;
      if (!v11)
      {
        v8 = 1;
      }

      if ((a2 & 1) == 0)
      {
        v10 = v11 ^ 8;
        goto LABEL_27;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v9 = v90;
  if ((a2 & 1) == 0)
  {
    v8 = 1;
    v10 = 32;
LABEL_27:
    v22 = [v9 category];
    v23 = *MEMORY[0x277CB8028];
    v24 = sub_252141B9C();
    v26 = v25;
    if (v24 == sub_252141B9C() && v26 == v27)
    {
    }

    else
    {
      v29 = sub_25214247C();

      if ((v29 & 1) == 0)
      {
        v91[0] = 0;
        if ([v90 setCategory:v23 withOptions:v10 error:v91])
        {
          v30 = v91[0];
          v8 = 1;
        }

        else
        {
          v84 = v91[0];
          v85 = sub_25214178C();

          swift_willThrow();
          v86 = v85;
          v8 = 1;
          v87 = sub_2520DE3F0(v85, 0, 1u);

          a3(v87);
        }
      }
    }

    if ([v90 preferredIOBufferFrameSize] == 4096)
    {
      if (v8 & 1) == 0 && ([v90 isActive])
      {
LABEL_53:
        if (*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode))
        {
          v62 = 1936747378;
        }

        else
        {
          v62 = 0;
        }

        sub_2520E6D04(*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone), *(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone + 8), v62, 0);
        goto LABEL_57;
      }
    }

    else
    {
      v91[0] = 0;
      if ([v90 setPreferredIOBufferFrameSize:4096 error:v91])
      {
        v31 = v91[0];
      }

      else
      {
        v52 = v91[0];
        v53 = sub_25214178C();

        swift_willThrow();
      }
    }

    v54 = sub_25214196C();
    v55 = sub_252141FBC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v91[0] = v57;
      *v56 = 136446210;
      v58 = sub_2521425DC();
      v60 = sub_2520A5448(v58, v59, v91);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_25207E000, v54, v55, "[%{public}s] audio session has changed, setting active.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x253099FD0](v57, -1, -1);
      MEMORY[0x253099FD0](v56, -1, -1);
    }

    v91[0] = 0;
    if ([v90 setActive:1 error:v91])
    {
      v61 = v91[0];
      goto LABEL_53;
    }

    v63 = v91[0];
    v64 = sub_25214178C();

    swift_willThrow();
    v65 = sub_25214177C();
    if ([v65 code] == 561145203)
    {
      *(v4 + 64) = 0;
      v66 = sub_25214196C();
      v67 = sub_252141FBC();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v91[0] = v69;
        *v68 = 136446210;
        v70 = sub_2521425DC();
        v72 = sub_2520A5448(v70, v71, v91);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_25207E000, v66, v67, "[%{public}s] running test on platform with inadequate hardware", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x253099FD0](v69, -1, -1);
        MEMORY[0x253099FD0](v68, -1, -1);
      }

      v73 = v64;
      v74 = v64;
      v75 = 8;
    }

    else
    {
      v76 = v64;
      v74 = v64;
      v75 = 11;
    }

    v77 = sub_2520DE3F0(v74, 0, v75);

    a3(v77);
    v78 = v64;
LABEL_65:

    goto LABEL_66;
  }

LABEL_15:
  v12 = [v9 category];
  v13 = *MEMORY[0x277CB8030];
  v14 = sub_252141B9C();
  v16 = v15;
  if (v14 == sub_252141B9C() && v16 == v17)
  {

    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v19 = sub_25214247C();

    if ((v19 & 1) == 0)
    {
      v32 = sub_25214196C();
      v33 = sub_252141FBC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v91[0] = v35;
        *v34 = 136446210;
        v36 = sub_2521425DC();
        v38 = sub_2520A5448(v36, v37, v91);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_25207E000, v32, v33, "[%{public}s] setting session category", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x253099FD0](v35, -1, -1);
        MEMORY[0x253099FD0](v34, -1, -1);
      }

      v91[0] = 0;
      v39 = [v90 setCategory:v13 error:v91];
      v40 = v91[0];
      if (v39)
      {
        v41 = v91[0];
        v42 = sub_25214196C();
        v43 = sub_252141FBC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v91[0] = v45;
          *v44 = 136446210;
          v46 = sub_2521425DC();
          v48 = sub_2520A5448(v46, v47, v91);

          *(v44 + 4) = v48;
          _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] setting session mode", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x253099FD0](v45, -1, -1);
          MEMORY[0x253099FD0](v44, -1, -1);
        }

        v49 = *MEMORY[0x277CB80C0];
        v91[0] = 0;
        v50 = [v90 setMode:v49 error:v91];
        v40 = v91[0];
        if (v50)
        {
          v51 = v91[0];
LABEL_57:

LABEL_66:
          v83 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      v79 = v40;
      v80 = sub_25214178C();

      swift_willThrow();
      v81 = v80;
      v82 = sub_2520DE3F0(v80, 0, 1u);

      a3(v82);
      v78 = v80;
      goto LABEL_65;
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_2520DFFDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_252141A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_252141A8C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v3[4];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = v6;
  aBlock[4] = sub_2520E4458;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_99_0;
  v18 = _Block_copy(aBlock);

  sub_252141A6C();
  v22 = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

void sub_2520E02BC(uint64_t a1, void (*a2)(void *))
{
  v46[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 40);
    if (v4)
    {
      v5 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
      v45 = v4;
      v6 = sub_25214196C();
      v7 = sub_252141FBC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v43 = v5;
        v9 = swift_slowAlloc();
        v46[0] = v9;
        *v8 = 136446466;
        v10 = sub_2521425DC();
        v12 = sub_2520A5448(v10, v11, v46);

        *(v8 + 4) = v12;
        *(v8 + 12) = 1024;
        LODWORD(v12) = [v45 isActive];

        *(v8 + 14) = v12;
        _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] audio session stop, isActive: %{BOOL}d", v8, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x253099FD0](v9, -1, -1);
        MEMORY[0x253099FD0](v8, -1, -1);
      }

      else
      {
      }

      if ([v45 isActive])
      {
        *(v3 + 65) = 0;
        v13 = sub_25214196C();
        v14 = sub_252141FBC();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46[0] = v16;
          *v15 = 136446210;
          v17 = sub_2521425DC();
          v19 = sub_2520A5448(v17, v18, v46);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] audio session deactivate", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x253099FD0](v16, -1, -1);
          MEMORY[0x253099FD0](v15, -1, -1);
        }

        v46[0] = 0;
        v20 = [v45 setActive:0 error:v46];
        v21 = v46[0];
        if (v20)
        {
          v22 = 0;
        }

        else
        {
          v28 = v46[0];
          v29 = sub_25214178C();

          swift_willThrow();
          v30 = v29;
          v31 = sub_25214196C();
          v32 = sub_252141FAC();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v46[0] = v34;
            *v33 = 136446210;
            swift_getErrorValue();
            v35 = sub_2521424DC();
            v37 = sub_2520A5448(v35, v36, v46);

            *(v33 + 4) = v37;
            _os_log_impl(&dword_25207E000, v31, v32, "Failed de-activate audio session. %{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x253099FD0](v34, -1, -1);
            MEMORY[0x253099FD0](v33, -1, -1);
          }

          v38 = v29;
          v21 = sub_2520DE3F0(v29, 0, 0xEu);

          v22 = v21;
        }

        v39 = v21;
        v40 = *(v3 + 56);
        if (v40)
        {
          [*(v40 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine) stop];
        }

        sub_2520E3C08();
        if (*(v3 + 48))
        {
          v41 = *(v3 + 48);

          sub_2520E5AE4(1);
        }

        a2(v22);
      }

      else
      {
        *(v3 + 65) = 1;
        if (*(v3 + 48))
        {
          v23 = *(v3 + 48);

          sub_2520E5AE4(1);
        }

        sub_25209D048(MEMORY[0x277D84F90]);
        v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v25 = sub_252141B6C();
        v26 = sub_252141B0C();

        v27 = [v24 initWithDomain:v25 code:-14 userInfo:v26];

        a2(v27);
      }
    }

    else
    {
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2520E0844(void *a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a2;
  v6 = *v3;
  v7 = sub_252141A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252141A8C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v3[4];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = v21[0];
  v17[5] = a3;
  v17[6] = v6;
  aBlock[4] = sub_2520E3E98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  sub_252141A6C();
  v23 = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v22);
}

void sub_2520E0B30(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v89 = sub_252141A4C();
  v9 = *(v89 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v89);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252141A8C();
  v90 = *(v13 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v86 = v13;
    v87 = v9;
    v88 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
    v19 = sub_25214196C();
    v20 = sub_252141FBC();
    v21 = os_log_type_enabled(v19, v20);
    v91 = a3;
    v92 = a5;
    v93 = a4;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = v18;
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v22 = 136446210;
      v25 = sub_2521425DC();
      v27 = sub_2520A5448(v25, v26, aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] playback tone - start", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v28 = v24;
      v18 = v23;
      a4 = v93;
      MEMORY[0x253099FD0](v28, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
    }

    aBlock[0] = 0;
    v29 = [a2 checkValidityAndReturnError_];
    v30 = aBlock[0];
    if (v29)
    {
      v31 = v91;
      if (v18[5])
      {
        v32 = aBlock[0];
      }

      else
      {
        v44 = swift_allocObject();
        *(v44 + 16) = v31;
        *(v44 + 24) = a4;
        v45 = v30;

        sub_2520DF644(a2, 1, sub_2520E4394);
      }

      sub_25209D56C();
      v46 = sub_252141FFC();
      v47 = swift_allocObject();
      v47[2] = v18;
      v47[3] = a2;
      aBlock[4] = sub_2520E4404;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2520A3B78;
      aBlock[3] = &block_descriptor_82_0;
      v48 = _Block_copy(aBlock);

      v49 = a2;

      sub_252141A6C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2520E3EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520E3F18();
      v50 = v89;
      sub_25214218C();
      MEMORY[0x2530991B0](0, v16, v12, v48);
      _Block_release(v48);

      (*(v87 + 8))(v12, v50);
      (*(v90 + 8))(v16, v86);
      sub_2521420CC();
      if (qword_27F4CD758 != -1)
      {
        swift_once();
      }

      v51 = qword_27F4CDF48;
      if (qword_27F4CD760 != -1)
      {
        swift_once();
      }

      v52 = sub_25214195C();
      __swift_project_value_buffer(v52, qword_27F4CDF50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_252143AB0;
      v54 = *&v49[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency];
      v55 = MEMORY[0x277D839F8];
      v56 = MEMORY[0x277D83A80];
      *(v53 + 56) = MEMORY[0x277D839F8];
      *(v53 + 64) = v56;
      *(v53 + 32) = v54;
      v57 = *&v49[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel];
      *(v53 + 96) = v55;
      *(v53 + 104) = v56;
      *(v53 + 72) = v57;
      v90 = v51;
      sub_25214193C();

      byte_27F4D3448 = 0;
      v59 = v18[4];
      v58 = v18[5];
      v60 = swift_allocObject();
      v60[2] = v18;
      v60[3] = v31;
      v61 = v92;
      v60[4] = v93;
      v60[5] = v61;
      v62 = type metadata accessor for HTAudioEngine();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      v65 = v58;
      v66 = v59;

      sub_2520E88A4(v49, v58, v66, sub_2520E440C, v60);
      v67 = v18[7];
      v18[7] = v68;

      v69 = sub_25214196C();
      v70 = sub_252141FBC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock[0] = v72;
        *v71 = 136446210;
        v73 = sub_2521425DC();
        v75 = sub_2520A5448(v73, v74, aBlock);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_25207E000, v69, v70, "[%{public}s] setup multichannel mixer", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x253099FD0](v72, -1, -1);
        MEMORY[0x253099FD0](v71, -1, -1);
      }

      sub_2520EDEDC();
      v77 = sub_25214196C();
      v78 = sub_252141FBC();
      if (os_log_type_enabled(v77, v78))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        aBlock[0] = v81;
        *v80 = 136446210;
        v82 = sub_2521425DC();
        v84 = sub_2520A5448(v82, v83, aBlock);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_25207E000, v77, v78, "[%{public}s] Finished creating audio engine and processing chain", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x253099FD0](v81, -1, -1);
        MEMORY[0x253099FD0](v80, -1, -1);
      }

      sub_2520EC988();
      sub_2520ECE30();
      sub_2520ECAE8();
    }

    else
    {
      v33 = aBlock[0];
      v34 = sub_25214178C();

      swift_willThrow();
      if ((byte_27F4D3448 & 1) == 0)
      {
        sub_2521420BC();
        if (qword_27F4CD758 != -1)
        {
          swift_once();
        }

        if (qword_27F4CD760 != -1)
        {
          swift_once();
        }

        v35 = sub_25214195C();
        __swift_project_value_buffer(v35, qword_27F4CDF50);
        sub_25214193C();
        byte_27F4D3448 = 1;
      }

      v36 = v34;
      v91(0, v34);
    }

    v37 = sub_25214196C();
    v38 = sub_252141FBC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      v41 = sub_2521425DC();
      v43 = sub_2520A5448(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] playback tone - end", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x253099FD0](v40, -1, -1);
      MEMORY[0x253099FD0](v39, -1, -1);
    }
  }

  v76 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2520E19A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);

    sub_2520E5AE4(1);
  }

  else
  {
    type metadata accessor for HTAudioDeviceCapturedVolume();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 18) = 0;
    *(v5 + 24) = 0;
    v6 = type metadata accessor for AVSessionCategoryVolume();
    *(v5 + 32) = [objc_allocWithZone(v6) init];
    *(v5 + 40) = [objc_allocWithZone(v6) init];
    v7 = *(a1 + 48);
    *(a1 + 48) = v5;
  }

  if (*(a1 + 48))
  {
    v9 = *(a2 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume);
    v10 = *(a1 + 48);

    sub_2520E6A2C(v9);
  }

  return result;
}

uint64_t sub_2520E1AB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{

  v8 = sub_25214196C();
  v9 = sub_252141FBC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_2520A5448(a1, a2, &v21);
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] tone identifier: %{public}s completion event", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v12, -1, -1);
    v16 = v11;
    a4 = v10;
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  if (*(a3 + 56))
  {
    v17 = *(a3 + 56);

    sub_2520EDBB4();
    if ((byte_27F4D3448 & 1) == 0)
    {
      sub_2521420BC();
      if (qword_27F4CD758 != -1)
      {
        swift_once();
      }

      if (qword_27F4CD760 != -1)
      {
        swift_once();
      }

      v18 = sub_25214195C();
      __swift_project_value_buffer(v18, qword_27F4CDF50);
      sub_25214193C();
      byte_27F4D3448 = 1;
    }
  }

  result = a4(0, 0);
  if (*(a3 + 48))
  {
    v20 = *(a3 + 48);

    sub_2520E5AE4(1);
  }

  return result;
}

uint64_t sub_2520E1D90()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_252141A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252141A8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v1[4];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v2;
  aBlock[4] = sub_2520E4450;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_92;
  v15 = _Block_copy(aBlock);

  sub_252141A6C();
  v17[1] = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v12, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_2520E205C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_25214196C();
    v3 = sub_252141FBC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136446210;
      v6 = sub_2521425DC();
      v8 = sub_2520A5448(v6, v7, &v11);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] requesting to stop tone playback.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x253099FD0](v5, -1, -1);
      MEMORY[0x253099FD0](v4, -1, -1);
    }

    if (*(v1 + 56))
    {
      v9 = *(v1 + 56);

      sub_2520ECCA8();
    }

    if ((byte_27F4D3448 & 1) == 0)
    {
      sub_2521420BC();
      if (qword_27F4CD758 != -1)
      {
        swift_once();
      }

      if (qword_27F4CD760 != -1)
      {
        swift_once();
      }

      v10 = sub_25214195C();
      __swift_project_value_buffer(v10, qword_27F4CDF50);
      sub_25214193C();
      byte_27F4D3448 = 1;
    }
  }

  return result;
}

uint64_t sub_2520E22A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] setting up observers", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v13 = v3[9];
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    v16 = v3[9];
    v3[9] = 0;
    swift_unknownObjectRelease();
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  v19 = *MEMORY[0x277CB8210];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = v5;
  v75 = sub_2520E425C;
  v76 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2520E3078;
  v74 = &block_descriptor_45;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v22];
  _Block_release(v22);

  v24 = v3[9];
  v3[9] = v23;
  swift_unknownObjectRelease();
  v25 = v3[10];
  if (v25)
  {
    v26 = v3[10];
    swift_unknownObjectRetain();
    v27 = [v17 defaultCenter];
    [v27 removeObserver_];

    swift_unknownObjectRelease();
    v28 = v3[10];
    v3[10] = 0;
    swift_unknownObjectRelease();
  }

  v29 = [v17 defaultCenter];
  v30 = *MEMORY[0x277CB8068];
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a1;
  v32[4] = a2;
  v32[5] = v5;
  v75 = sub_2520E4268;
  v76 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2520E3078;
  v74 = &block_descriptor_52;
  v33 = _Block_copy(&aBlock);

  v34 = [v29 addObserverForName:v30 object:0 queue:0 usingBlock:v33];
  _Block_release(v33);

  v35 = v3[10];
  v3[10] = v34;
  swift_unknownObjectRelease();
  v36 = v3[11];
  if (v36)
  {
    v37 = v3[11];
    swift_unknownObjectRetain();
    v38 = [v17 defaultCenter];
    [v38 removeObserver_];

    swift_unknownObjectRelease();
    v39 = v3[11];
    v3[11] = 0;
    swift_unknownObjectRelease();
  }

  v40 = [v17 defaultCenter];
  v41 = *MEMORY[0x277CB8098];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = a1;
  v43[4] = a2;
  v43[5] = v5;
  v75 = sub_2520E4274;
  v76 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2520E3078;
  v74 = &block_descriptor_59;
  v44 = _Block_copy(&aBlock);

  v45 = [v40 addObserverForName:v41 object:0 queue:0 usingBlock:v44];
  _Block_release(v44);

  v46 = v3[11];
  v3[11] = v45;
  swift_unknownObjectRelease();
  v47 = v3[12];
  if (v47)
  {
    v48 = v3[12];
    swift_unknownObjectRetain();
    v49 = [v17 defaultCenter];
    [v49 removeObserver_];

    swift_unknownObjectRelease();
    v50 = v3[12];
    v3[12] = 0;
    swift_unknownObjectRelease();
  }

  v51 = [v17 defaultCenter];
  v52 = *MEMORY[0x277CB80A0];
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = a1;
  v54[4] = a2;
  v54[5] = v5;
  v75 = sub_2520E429C;
  v76 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2520E3078;
  v74 = &block_descriptor_66;
  v55 = _Block_copy(&aBlock);

  v56 = [v51 addObserverForName:v52 object:0 queue:0 usingBlock:v55];
  _Block_release(v55);

  v57 = v3[12];
  v3[12] = v56;
  swift_unknownObjectRelease();
  v58 = v3[13];
  if (v58)
  {
    v59 = v3[13];
    swift_unknownObjectRetain();
    v60 = [v17 defaultCenter];
    [v60 removeObserver_];

    swift_unknownObjectRelease();
    v61 = v3[13];
    v3[13] = 0;
    swift_unknownObjectRelease();
  }

  v62 = [v17 defaultCenter];
  v63 = v3[2];
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = a1;
  v65[4] = a2;
  v75 = sub_2520E42CC;
  v76 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2520E3078;
  v74 = &block_descriptor_73;
  v66 = _Block_copy(&aBlock);

  v67 = [v62 addObserverForName:v63 object:0 queue:0 usingBlock:v66];
  _Block_release(v66);

  v68 = v3[13];
  v3[13] = v67;
  return swift_unknownObjectRelease();
}

uint64_t sub_2520E2B28(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  result = sub_25214170C();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    v6 = *MEMORY[0x277CB8220];
    v33 = sub_252141B9C();
    v7 = MEMORY[0x277D837D0];
    sub_2521421DC();
    if (!*(v5 + 16) || (v8 = sub_25213E754(v34), (v9 & 1) == 0))
    {

      return sub_2520E42D8(v34);
    }

    sub_2520A5FC4(*(v5 + 56) + 32 * v8, v35);
    sub_2520E42D8(v34);
    type metadata accessor for RouteChangeReason(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    if (v33 > 3)
    {
      if (v33 > 6)
      {
        if (v33 == 7)
        {
          v11 = 0x800000025214A390;
          v31 = 0xD00000000000001ELL;
          goto LABEL_29;
        }

        if (v33 != 8)
        {
          goto LABEL_28;
        }

        v11 = 0x800000025214A370;
        v31 = 0xD00000000000001ALL;
      }

      else if (v33 == 4)
      {
        v11 = 0xE800000000000000;
        v31 = 0x656469727265764FLL;
      }

      else
      {
        if (v33 != 6)
        {
          goto LABEL_28;
        }

        v11 = 0xEF7065656C53206DLL;
        v31 = 0x6F724620656B6157;
      }
    }

    else if (v33 > 1)
    {
      if (v33 == 2)
      {
        v10 = 543452239;
        goto LABEL_26;
      }

      v11 = 0xEF65676E61684320;
      v31 = 0x79726F6765746143;
    }

    else
    {
      if (v33)
      {
        if (v33 == 1)
        {
          v10 = 544695630;
LABEL_26:
          v31 = v10 | 0x74756F5200000000;
          v11 = 0xE900000000000065;
          goto LABEL_29;
        }

LABEL_28:
        v31 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_29;
      }

      v11 = 0xE700000000000000;
      v31 = 0x6E776F6E6B6E55;
    }

LABEL_29:
    v32 = v11;

    v12 = sub_25214196C();
    v13 = sub_252141FBC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v14 = 136446722;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, v34);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_2520A5448(v31, v32, v34);
      *(v14 + 22) = 2082;
      v18 = sub_252141B2C();
      v20 = v19;
      v21 = v31;

      v22 = sub_2520A5448(v18, v20, v34);

      *(v14 + 24) = v22;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] route change %{public}s - %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      v7 = MEMORY[0x277D837D0];
      MEMORY[0x253099FD0](v30, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    else
    {

      v21 = v31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE168, &unk_252144C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252143AC0;
    v24 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_252141B9C();
    *(inited + 72) = v7;
    *(inited + 40) = v25;
    *(inited + 48) = v21;
    *(inited + 56) = v32;
    sub_25209D048(inited);
    swift_setDeallocating();
    sub_2520E432C(inited + 32);
    v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v27 = sub_252141B6C();
    v28 = sub_252141B0C();

    v29 = [v26 initWithDomain:v27 code:-2 userInfo:v28];

    a3(v29);
  }

  return result;
}

uint64_t sub_2520E3078(uint64_t a1)
{
  v2 = sub_25214171C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2521416FC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_2520E316C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_25214170C();
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = *MEMORY[0x277CB8080];
      v49 = sub_252141B9C();
      sub_2521421DC();
      if (!*(v5 + 16) || (v7 = sub_25213E754(v51), (v8 & 1) == 0))
      {

        sub_2520E42D8(v51);
        return;
      }

      sub_2520A5FC4(*(v5 + 56) + 32 * v7, v52);
      sub_2520E42D8(v51);
      if (swift_dynamicCast())
      {
        v9 = v49;
        v10 = *MEMORY[0x277CB8078];
        v50 = sub_252141B9C();
        sub_2521421DC();
        if (*(v5 + 16) && (v11 = sub_25213E754(v51), (v12 & 1) != 0))
        {
          sub_2520A5FC4(*(v5 + 56) + 32 * v11, v52);
          sub_2520E42D8(v51);

          if (swift_dynamicCast())
          {
            if (v50 <= 1)
            {
              if (!v50)
              {
                v13 = 0xE700000000000000;
                v14 = 0x746C7561666544;
                goto LABEL_38;
              }

              if (v50 == 1)
              {
                v13 = 0x800000025214A330;
                v14 = 0xD000000000000011;
LABEL_38:
                if (qword_27F4CD708 != -1)
                {
                  swift_once();
                }

                v39 = sub_25214198C();
                __swift_project_value_buffer(v39, qword_27F4CDE68);

                v16 = sub_25214196C();
                v40 = sub_252141FBC();

                if (!os_log_type_enabled(v16, v40))
                {

                  if (!v9)
                  {
                    goto LABEL_29;
                  }

LABEL_24:
                  if (v9 == 1)
                  {
                    sub_25209D048(MEMORY[0x277D84F90]);
                    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                    v26 = sub_252141B6C();
                    v27 = sub_252141B0C();

                    v28 = [v25 initWithDomain:v26 code:-16 userInfo:v27];
LABEL_30:
                    v37 = v28;

                    a3(v37);

                    return;
                  }

                  v29 = sub_25214196C();
                  v30 = sub_252141FBC();
                  if (os_log_type_enabled(v29, v30))
                  {
                    v31 = swift_slowAlloc();
                    v32 = swift_slowAlloc();
                    v51[0] = v32;
                    *v31 = 136446210;
                    v33 = sub_2521425DC();
                    v35 = sub_2520A5448(v33, v34, v51);

                    *(v31 + 4) = v35;
                    _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] unhandled interruption type", v31, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v32);
                    MEMORY[0x253099FD0](v32, -1, -1);
                    MEMORY[0x253099FD0](v31, -1, -1);
                  }

LABEL_29:
                  sub_25209D048(MEMORY[0x277D84F90]);
                  v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                  v26 = sub_252141B6C();
                  v27 = sub_252141B0C();

                  v28 = [v36 initWithDomain:v26 code:-17 userInfo:v27];
                  goto LABEL_30;
                }

                v48 = v9;
                v41 = swift_slowAlloc();
                v46 = swift_slowAlloc();
                v51[0] = v46;
                *v41 = 136446466;
                v42 = sub_2521425DC();
                v44 = sub_2520A5448(v42, v43, v51);

                *(v41 + 4) = v44;
                *(v41 + 12) = 2080;
                v45 = sub_2520A5448(v14, v13, v51);

                *(v41 + 14) = v45;
                _os_log_impl(&dword_25207E000, v16, v40, "[%{public}s] ReasonDescription %s", v41, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x253099FD0](v46, -1, -1);
                v24 = v41;
                v9 = v48;
                goto LABEL_22;
              }

LABEL_34:
              v14 = 0;
              v13 = 0xE000000000000000;
              goto LABEL_38;
            }

            if (v50 == 2)
            {
              v38 = "Built-In Mic Muted";
            }

            else
            {
              if (v50 != 4)
              {
                goto LABEL_34;
              }

              v38 = "Route Disconnected";
            }

            v13 = (v38 - 32) | 0x8000000000000000;
            v14 = 0xD000000000000012;
            goto LABEL_38;
          }
        }

        else
        {

          sub_2520E42D8(v51);
        }

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v15 = sub_25214198C();
        __swift_project_value_buffer(v15, qword_27F4CDE68);
        v16 = sub_25214196C();
        v17 = sub_252141FAC();
        if (!os_log_type_enabled(v16, v17))
        {
LABEL_23:

          if (!v9)
          {
            goto LABEL_29;
          }

          goto LABEL_24;
        }

        v18 = swift_slowAlloc();
        v47 = v9;
        v19 = swift_slowAlloc();
        v51[0] = v19;
        *v18 = 136446210;
        v20 = sub_2521425DC();
        v22 = sub_2520A5448(v20, v21, v51);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] Interruption reason not valid", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v23 = v19;
        v9 = v47;
        MEMORY[0x253099FD0](v23, -1, -1);
        v24 = v18;
LABEL_22:
        MEMORY[0x253099FD0](v24, -1, -1);
        goto LABEL_23;
      }
    }
  }
}

void sub_2520E3868(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, const char *a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_25214170C())
    {
      v8 = sub_25214196C();
      v9 = sub_252141FBC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v24 = a3;
        v25 = swift_slowAlloc();
        v11 = v25;
        *v10 = 136446466;
        v12 = sub_2521425DC();
        v14 = sub_2520A5448(v12, v13, &v25);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2082;
        v15 = sub_252141B2C();
        v17 = v16;

        v18 = sub_2520A5448(v15, v17, &v25);

        *(v10 + 14) = v18;
        _os_log_impl(&dword_25207E000, v8, v9, a6, v10, 0x16u);
        swift_arrayDestroy();
        v19 = v11;
        a3 = v24;
        MEMORY[0x253099FD0](v19, -1, -1);
        MEMORY[0x253099FD0](v10, -1, -1);
      }

      else
      {
      }
    }

    sub_25209D048(MEMORY[0x277D84F90]);
    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = sub_252141B6C();
    v22 = sub_252141B0C();

    v23 = [v20 initWithDomain:v21 code:-4 userInfo:v22];

    a3(v23);
  }
}

void sub_2520E3AFC(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_25209D048(MEMORY[0x277D84F90]);
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v5 = sub_252141B6C();
    v6 = sub_252141B0C();

    v7 = [v4 initWithDomain:v5 code:-3 userInfo:v6];

    a3(v7);
  }
}

void sub_2520E3C08()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    v4 = v0[9];
    v0[9] = 0;
    swift_unknownObjectRelease();
  }

  v5 = v0[10];
  if (v5)
  {
    v6 = objc_opt_self();
    swift_unknownObjectRetain();
    v7 = [v6 defaultCenter];
    [v7 removeObserver_];

    swift_unknownObjectRelease();
    v8 = v0[10];
    v0[10] = 0;
    swift_unknownObjectRelease();
  }

  v9 = v0[11];
  if (v9)
  {
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    v11 = [v10 defaultCenter];
    [v11 removeObserver_];

    swift_unknownObjectRelease();
    v12 = v0[11];
    v0[11] = 0;
    swift_unknownObjectRelease();
  }

  v13 = v0[12];
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    v16 = v0[12];
    v0[12] = 0;
    swift_unknownObjectRelease();
  }

  v17 = v0[13];
  if (v17)
  {
    v18 = objc_opt_self();
    swift_unknownObjectRetain();
    v19 = [v18 defaultCenter];
    [v19 removeObserver_];

    swift_unknownObjectRelease();
    v20 = v0[12];
    v0[12] = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2520E3E18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520E3E50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2520E3EC0()
{
  result = qword_27F4CE090;
  if (!qword_27F4CE090)
  {
    sub_252141A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE090);
  }

  return result;
}

unint64_t sub_2520E3F18()
{
  result = qword_27F4CE0A0;
  if (!qword_27F4CE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDCB0, &qword_252143DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0A0);
  }

  return result;
}

uint64_t sub_2520E3F7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_2520E3FC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t type metadata accessor for HTAudioDevice()
{
  result = qword_27F4CE158;
  if (!qword_27F4CE158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2520E405C()
{
  result = sub_25214198C();
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2520E425C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_2520E2B28(a1, *(v1 + 16), *(v1 + 24));
}

void sub_2520E4268(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_2520E316C(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_2520E432C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE8, &qword_252143C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2520E4394(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_2520E43C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520E440C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_2520E1AB4(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t sub_2520E4418()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520E4450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2520E205C();
}

void sub_2520E4458()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2520E02BC(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_2520E4464()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520E44C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520E44FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2520E4524()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2520E4578()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id HTAudioSequenceTone.__allocating_init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:frequency:soundLevel:numberOfPulses:pulseDuration:pauseDuration:rampDuration:preStimulusDuration:postStimulusDuration:)(uint64_t a1, char a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, int a23)
{
  v36 = objc_allocWithZone(v23);
  v37 = *a4;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] = a10;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] = a11;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses] = a23;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration] = a12;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration] = a13;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration] = a14;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration] = a15;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] = a16;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = v37;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v38 = &v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v38 = a6;
  v38[1] = a7;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a17;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a18;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a19;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a20;
  v39 = &v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v39 = a21;
  v39[1] = a22;
  v45.receiver = v36;
  v45.super_class = type metadata accessor for HTAudioSequence();
  return objc_msgSendSuper2(&v45, sel_init);
}

uint64_t HTAudioSequence.OutputMode.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t HTAudioSequence.mode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode);
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode + 8);

  return v1;
}

uint64_t HTAudioSequence.microphone.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone);
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone + 8);

  return v1;
}

id HTAudioSequence.__allocating_init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:)(uint64_t a1, char a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v24 = objc_allocWithZone(v15);
  v25 = *a4;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = v25;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v26 = &v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v26 = a6;
  v26[1] = a7;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a10;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a11;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a12;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a13;
  v27 = &v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v27 = a14;
  v27[1] = a15;
  v30.receiver = v24;
  v30.super_class = v15;
  return objc_msgSendSuper2(&v30, sel_init);
}

id HTAudioSequence.init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:)(uint64_t a1, char a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = *a4;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v16 = &v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v16 = a6;
  v16[1] = a7;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a10;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a11;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a12;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a13;
  v17 = &v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v17 = a14;
  v17[1] = a15;
  v19.receiver = v15;
  v19.super_class = type metadata accessor for HTAudioSequence();
  return objc_msgSendSuper2(&v19, sel_init);
}

id HTAudioSequence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2520E4D90()
{
  v1 = OBJC_IVAR____TtC11HearingTest19HTAudioSequenceFile_stimulusURL;
  v2 = sub_2521417FC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_2520E4E14(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id HTAudioSequenceTone.init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:frequency:soundLevel:numberOfPulses:pulseDuration:pauseDuration:rampDuration:preStimulusDuration:postStimulusDuration:)(uint64_t a1, char a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, int a23)
{
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] = a10;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] = a11;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses] = a23;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration] = a12;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration] = a13;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration] = a14;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration] = a15;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] = a16;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = *a4;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v24 = &v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v24 = a6;
  v24[1] = a7;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a17;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a18;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a19;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a20;
  v25 = &v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v25 = a21;
  v25[1] = a22;
  v27.receiver = v23;
  v27.super_class = type metadata accessor for HTAudioSequence();
  return objc_msgSendSuper2(&v27, sel_init);
}

unint64_t sub_2520E513C()
{
  result = qword_27F4CE218;
  if (!qword_27F4CE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE218);
  }

  return result;
}

uint64_t sub_2520E51F4()
{
  result = sub_2521417FC();
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

id sub_2520E53AC()
{
  v1 = v0;
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2521417BC();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    sub_25209D048(MEMORY[0x277D84F90]);
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v8 = sub_252141B6C();
    v9 = sub_252141B0C();

    [v7 initWithDomain:v8 code:-7 userInfo:v9];

LABEL_8:
    result = swift_willThrow();
    goto LABEL_9;
  }

  v13[0] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HTAudioSequenceFile(0);
  if (!objc_msgSendSuper2(&v12, sel_checkValidityAndReturnError_, v13))
  {
    v10 = v13[0];
    sub_25214178C();

    goto LABEL_8;
  }

  result = v13[0];
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2520E554C()
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*&v0[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] == 0.0 && *&v0[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] == 0.0 && *&v0[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] == 0.0)
  {
    sub_25209D048(MEMORY[0x277D84F90]);
    v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v2 = sub_252141B6C();
    v3 = sub_252141B0C();

    [v1 initWithDomain:v2 code:-7 userInfo:v3];

LABEL_8:
    result = swift_willThrow();
    goto LABEL_9;
  }

  v8[0] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for HTAudioSequenceTone();
  if (!objc_msgSendSuper2(&v7, sel_checkValidityAndReturnError_, v8))
  {
    v5 = v8[0];
    sub_25214178C();

    goto LABEL_8;
  }

  result = v8[0];
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2520E56EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void sub_2520E5854()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);

  v3 = sub_25214196C();
  v4 = sub_252141F9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v1 + 32);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_25207E000, v3, v4, "initialVolume: %@", v5, 0xCu);
    sub_2520E69C4(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  *(v1 + 16) = *(*(v1 + 32) + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result);
}

void sub_2520E599C()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);

  v3 = sub_25214196C();
  v4 = sub_252141F9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v1 + 32);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_25207E000, v3, v4, "sequenceVolume: %@", v5, 0xCu);
    sub_2520E69C4(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  *(v1 + 17) = *(*(v1 + 40) + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result);
}

void sub_2520E5AE4(char a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDF80);
  v6 = sub_25214196C();
  v7 = sub_252141F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446722;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2520A5448(0xD00000000000002CLL, 0x800000025214A9C0, &v16);
    *(v8 + 22) = 1024;
    *(v8 + 24) = a1 & 1;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] %s %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  if (*(v2 + 17) == 1)
  {
    *(v2 + 17) = 0;
    v13 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v14 = v2[5];
    v2[5] = v13;
    v15 = v13;

    sub_2520E599C();
  }

  sub_2520E5F1C(a1 & 1);

  sub_2520E659C();
}

void sub_2520E5D10()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF80);
  v4 = sub_25214196C();
  v5 = sub_252141F9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2520A5448(0xD000000000000016, 0x800000025214A9A0, &v14);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  if ((v1[2] & 1) == 0)
  {
    v11 = sub_2520E813C();
    v12 = v1[4];
    v1[4] = v11;
    v13 = v11;

    sub_2520E5854();
  }
}

void sub_2520E5F1C(char a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDF80);
  v6 = sub_25214196C();
  v7 = sub_252141F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446722;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2520A5448(0xD00000000000002BLL, 0x800000025214A970, &v16);
    *(v8 + 22) = 1024;
    *(v8 + 24) = a1 & 1;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] %s %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  if (*(v2 + 16) == 1)
  {
    if (a1)
    {
      sub_2520E6164();
    }

    *(v2 + 16) = 0;
    v13 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v14 = v2[4];
    v2[4] = v13;
    v15 = v13;

    sub_2520E5854();
  }
}

uint64_t sub_2520E6164()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF80);
  v4 = sub_25214196C();
  v5 = sub_252141F9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446466;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2520A5448(0xD00000000000001FLL, 0x800000025214A950, &v13);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  if (sub_2520E813C()[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] == 1)
  {
    v11 = v1[4];
    if (*(v11 + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result) == 1 && !sub_2520E85F4(v11))
    {
      sub_2520E6374();
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_2520E6374()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF80);
  v4 = sub_25214196C();
  v5 = sub_252141F9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446466;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2520A5448(0xD00000000000002ALL, 0x800000025214A920, &v17);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  v11 = v1[4];
  v12 = *&v11[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume];
  v13 = objc_opt_self();
  v16 = v11;
  v14 = [v13 sharedAVSystemController];
  LODWORD(v15) = v12;
  [v14 setActiveCategoryVolumeTo_];
}

void sub_2520E659C()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF80);
  v4 = sub_25214196C();
  v5 = sub_252141F9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2520A5448(0xD00000000000001BLL, 0x800000025214A900, &v12);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  v11 = v1[3];
  if (v11)
  {
    v1[3] = 0;
  }
}

void *sub_2520E6788()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF80);
  v4 = sub_25214196C();
  v5 = sub_252141F9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2520A5448(0x74696E696564, 0xE600000000000000, &v12);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  if (*(v1 + 16) == 1)
  {
    sub_2520E659C();
    sub_2520E5AE4(1);
  }

  return v1;
}

uint64_t sub_2520E696C()
{
  sub_2520E6788();

  return swift_deallocClassInstance();
}

uint64_t sub_2520E69C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE080, &qword_252144E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2520E6A2C(float a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDF80);
  v6 = sub_25214196C();
  v7 = sub_252141F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446722;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2520A5448(0xD000000000000026, 0x800000025214A9F0, &v23);
    *(v8 + 22) = 2048;
    *(v8 + 24) = a1;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] %s %f", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  if ((*(v2 + 17) & 1) == 0)
  {
    sub_2520E5D10();
    v13 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v13[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = 1;
    *&v13[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = a1;
    v14 = *&v13[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName + 8];
    *&v13[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName] = xmmword_252144DC0;

    v15 = v2[5];
    v2[5] = v13;
    v16 = v13;

    sub_2520E599C();
    v17 = v2[5];
    v18 = type metadata accessor for SystemVolumeMaintainer();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver] = 0;
    *&v19[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper] = v17;
    v24.receiver = v19;
    v24.super_class = v18;
    v20 = v17;
    v21 = objc_msgSendSuper2(&v24, sel_init);
    sub_2520E7DEC();
    sub_2520E8304();

    v22 = v2[3];
    v2[3] = v21;
  }
}

void sub_2520E6D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v92[1] = *MEMORY[0x277D85DE8];
  v8 = [v5 availableInputs];
  if (!v8)
  {
    goto LABEL_87;
  }

  v9 = v8;
  v88 = v5;
  v86 = a3;
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v10 = sub_252141CDC();

  v87 = a4;
  if (v10 >> 62)
  {
    goto LABEL_92;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_93:
    v85 = *MEMORY[0x277D85DE8];

    return;
  }

LABEL_4:
  v12 = 0;
  v13 = *MEMORY[0x277CB8190];
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2530993D0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v11 = sub_25214232C();
      if (!v11)
      {
        goto LABEL_93;
      }

      goto LABEL_4;
    }

    v17 = [v14 portType];
    v18 = sub_252141B9C();
    v20 = v19;
    if (v18 == sub_252141B9C() && v20 == v21)
    {
      break;
    }

    v23 = sub_25214247C();

    if (v23)
    {
      goto LABEL_18;
    }

    ++v12;
    if (v16 == v11)
    {
      goto LABEL_93;
    }
  }

LABEL_18:

  v91 = v15;
  v24 = [v91 dataSources];
  if (!v24)
  {

    v33 = *MEMORY[0x277D85DE8];

    return;
  }

  v25 = v24;
  sub_2520A5A94(0, &qword_27F4CE240, 0x277CB8400);
  v26 = sub_252141CDC();

  if (a2)
  {
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = &unk_28644E198;
    v27[4] = a1;
    v27[5] = a2;

    v10 = sub_2520E7C24;
    if (!(v26 >> 62))
    {
      goto LABEL_21;
    }

LABEL_37:
    v28 = sub_25214232C();
  }

  else
  {
    v10 = sub_2520E7948;
    if (v26 >> 62)
    {
      goto LABEL_37;
    }

LABEL_21:
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v29 = 0;
    v17 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2530993D0](v29, v26);
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v30 = *(v26 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_90;
      }

      if ((v10)(v30))
      {
        break;
      }

      ++v29;
      if (v32 == v28)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:

    v31 = 0;
  }

  v92[0] = 0;
  if (![v91 setPreferredDataSource:v31 error:v92])
  {
    v43 = v92[0];
    v44 = sub_25214178C();

    swift_willThrow();
    v45 = sub_25214177C();
    if (qword_27F4CD710 != -1)
    {
      swift_once();
    }

    v46 = sub_25214198C();
    __swift_project_value_buffer(v46, qword_27F4CDE80);
    v38 = v45;
    v47 = sub_25214196C();
    v48 = sub_252141FAC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      v50 = [v38 code];
      if (v50 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_97;
      }

      if (v50 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_100;
      }

      *(v49 + 4) = v50;

      _os_log_impl(&dword_25207E000, v47, v48, "setPreferredDataSource %d", v49, 8u);
      MEMORY[0x253099FD0](v49, -1, -1);
    }

    else
    {
    }

    goto LABEL_52;
  }

  v34 = qword_27F4CD710;
  v35 = v92[0];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_25214198C();
  __swift_project_value_buffer(v36, qword_27F4CDE80);
  v37 = v31;
  v38 = sub_25214196C();
  v39 = sub_252141F8C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v31;
    v42 = v37;
    _os_log_impl(&dword_25207E000, v38, v39, "using port %@", v40, 0xCu);
    sub_2520E69C4(v41);
    MEMORY[0x253099FD0](v41, -1, -1);
    MEMORY[0x253099FD0](v40, -1, -1);
  }

LABEL_52:

  v92[0] = 0;
  if (![v88 setPreferredInput:v91 error:v92])
  {
    v59 = v92[0];
    v60 = sub_25214178C();

    swift_willThrow();
    v61 = sub_25214177C();
    if (qword_27F4CD710 != -1)
    {
      swift_once();
    }

    v62 = sub_25214198C();
    __swift_project_value_buffer(v62, qword_27F4CDE80);
    v38 = v61;
    v63 = sub_25214196C();
    v64 = sub_252141FAC();
    if (!os_log_type_enabled(v63, v64))
    {

      goto LABEL_64;
    }

    v65 = swift_slowAlloc();
    *v65 = 67109120;
    v66 = [v38 code];
    if (v66 >= 0xFFFFFFFF80000000)
    {
      if (v66 <= 0x7FFFFFFF)
      {
        *(v65 + 4) = v66;

        _os_log_impl(&dword_25207E000, v63, v64, "setPreferredInput %d", v65, 8u);
        MEMORY[0x253099FD0](v65, -1, -1);
LABEL_64:

        goto LABEL_65;
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v51 = qword_27F4CD710;
  v52 = v92[0];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_25214198C();
  __swift_project_value_buffer(v53, qword_27F4CDE80);
  v54 = v91;
  v38 = sub_25214196C();
  v55 = sub_252141F8C();

  if (os_log_type_enabled(v38, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    *(v56 + 4) = v54;
    *v57 = v91;
    v58 = v54;
    _os_log_impl(&dword_25207E000, v38, v55, "using port %@", v56, 0xCu);
    sub_2520E69C4(v57);
    MEMORY[0x253099FD0](v57, -1, -1);
    MEMORY[0x253099FD0](v56, -1, -1);
  }

LABEL_65:

  if (v87)
  {
LABEL_66:

    goto LABEL_87;
  }

  if (v86 == 1936747378)
  {
    v17 = 0x72656B61657073;
  }

  else
  {
    v17 = 1701736302;
  }

  if (v86 == 1936747378)
  {
    v38 = 0xE700000000000000;
  }

  else
  {
    v38 = 0xE400000000000000;
  }

  v92[0] = 0;
  if ([v88 overrideOutputAudioPort:v86 error:?])
  {
    v67 = qword_27F4CD710;
    v68 = v92[0];
    if (v67 == -1)
    {
LABEL_75:
      v69 = sub_25214198C();
      __swift_project_value_buffer(v69, qword_27F4CDE80);

      v70 = sub_25214196C();
      v71 = sub_252141F8C();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v92[0] = v73;
        *v72 = 136315138;
        v74 = sub_2520A5448(v17, v38, v92);

        *(v72 + 4) = v74;
        _os_log_impl(&dword_25207E000, v70, v71, "output port override %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x253099FD0](v73, -1, -1);
        MEMORY[0x253099FD0](v72, -1, -1);
      }

      else
      {
      }

      goto LABEL_66;
    }

LABEL_98:
    swift_once();
    goto LABEL_75;
  }

  v75 = v92[0];

  v76 = sub_25214178C();

  swift_willThrow();
  v77 = sub_25214177C();
  if (qword_27F4CD710 != -1)
  {
    swift_once();
  }

  v78 = sub_25214198C();
  __swift_project_value_buffer(v78, qword_27F4CDE80);
  v79 = v77;
  v80 = sub_25214196C();
  v81 = sub_252141FAC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 67109120;
    v83 = [v79 code];
    if (v83 >= 0xFFFFFFFF80000000)
    {
      if (v83 <= 0x7FFFFFFF)
      {
        *(v82 + 4) = v83;

        _os_log_impl(&dword_25207E000, v80, v81, "overrideOutputAudioPort %d", v82, 8u);
        MEMORY[0x253099FD0](v82, -1, -1);

        goto LABEL_86;
      }

LABEL_102:
      __break(1u);
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_86:

LABEL_87:
  v84 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2520E7948(void *a1)
{
  v1 = [a1 dataSourceID];
  [v1 integerValue];

  return 0;
}

uint64_t sub_2520E7998(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
LABEL_24:
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = a3;
    v17 = sub_25214232C();
    a3 = v16;
    v6 = v17;
  }

  else
  {
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v20 = a3;
  v8 = (a3 + 40);
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530993D0](v7, a2);
    }

    else
    {
      if (v7 >= *(v21 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = *(a2 + 8 * v7 + 32);
    }

    v10 = v9;
    sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
    v11 = [v10 dataSourceID];
    v12 = [a1 dataSourceID];
    v13 = sub_25214210C();

    if (v13)
    {
      break;
    }

    v8 += 2;
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_23;
    }
  }

  if (v7 >= *(v20 + 16) || !a5)
  {
    return 0;
  }

  if (*(v8 - 1) == a4 && *v8 == a5)
  {
    return 1;
  }

  return sub_25214247C();
}

void *sub_2520E7B68(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDCA0, &unk_2521440E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2520E7BDC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2520E7C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSystemControllerHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2520E7CC8()
{
  v1 = OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver;
  v2 = *&v0[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver];
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    v5 = *&v0[v1];
    *&v0[v1] = 0;
    swift_unknownObjectRelease();
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SystemVolumeMaintainer();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2520E7DEC()
{
  if (sub_2520E813C()[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper);
    if (v1[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] == 1 && !sub_2520E85F4(*(v0 + OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper)))
    {
      v2 = *&v1[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume];
      v3 = objc_opt_self();
      v4 = v1;
      v5 = [v3 sharedAVSystemController];
      LODWORD(v6) = v2;
      [v5 setActiveCategoryVolumeTo_];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_2520E7ED0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_25214170C();
  if (!v2)
  {

    v23 = 0u;
    v24 = 0u;
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D26B40];
  v20 = sub_252141B9C();
  v21 = v5;
  sub_2521421DC();
  if (!*(v3 + 16) || (v6 = sub_25213E754(v22), (v7 & 1) == 0))
  {

    sub_2520E42D8(v22);
    v23 = 0u;
    v24 = 0u;
    goto LABEL_10;
  }

  sub_2520A5FC4(*(v3 + 56) + 32 * v6, &v23);
  sub_2520E42D8(v22);

  if (!*(&v24 + 1))
  {
LABEL_10:

LABEL_12:
    sub_2520E84F8(&v23);
    return;
  }

  if (swift_dynamicCast())
  {
    v8 = v22[0];
    v9 = type metadata accessor for AVSessionCategoryVolume();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
    *v11 = 0;
    v11[1] = 0;
    v10[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = 1;
    *&v10[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = v8;
    *v11 = 0;
    v11[1] = 0;
    v19.receiver = v10;
    v19.super_class = v9;
    v12 = objc_msgSendSuper2(&v19, sel_init);
    v13 = *&v1[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper];
    if (sub_2520E85F4(v12))
    {
    }

    else
    {
      v14 = *&v13[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume];
      v15 = objc_opt_self();
      v16 = v13;
      v17 = [v15 sharedAVSystemController];
      LODWORD(v18) = v14;
      [v17 setActiveCategoryVolumeTo_];
    }
  }

  else
  {
  }
}

_BYTE *sub_2520E813C()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedAVSystemController];
  if (v0)
  {
    v1 = v0;
    v19 = 0;
    v2 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v18 = 0;
    v3 = [v1 getActiveCategoryVolume:&v19 andName:&v18];
    if (v18)
    {
      v4 = v19;
      v5 = v18;
      v6 = sub_252141BBC();
      v8 = v7;

      v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = v3;
      *&v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = v4;
      v9 = &v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
      v10 = *&v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName + 8];
      *v9 = v6;
      v9[1] = v8;
    }

    else
    {

      v14 = v19;
      v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = v3;
      *&v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = v14;
      v15 = &v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
      v16 = *&v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName + 8];
      *v15 = 0;
      v15[1] = 0;
    }

    v17 = *MEMORY[0x277D85DE8];
    return v2;
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume());
    v12 = *MEMORY[0x277D85DE8];

    return [v11 init];
  }
}

uint64_t sub_2520E8304()
{
  v1 = OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    v5 = *(v0 + v1);
    *(v0 + v1) = 0;
    swift_unknownObjectRelease();
  }

  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277D26DE8];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_2520E84D8;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2520E3078;
  v13[3] = &block_descriptor_6;
  v9 = _Block_copy(v13);

  v10 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  v11 = *(v0 + v1);
  *(v0 + v1) = v10;
  return swift_unknownObjectRelease();
}

uint64_t sub_2520E84A0()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2520E84F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE0B0, &unk_252144AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2520E85F4(_BOOL8 result)
{
  if (*(v1 + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result) != 1 || *(result + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result) != 1)
  {
    return 0;
  }

  v2 = *(result + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume);
  v3 = *(v1 + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume);
  if (COERCE_INT(fabs(v2 + v3)) > 2139095039)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = fabsf(v2 + v3);
  if (v4 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = vabds_f32(v2, v3);
  return v5 <= vcvts_n_f32_s64(2 * v4, 0x17uLL) || v5 < 1.1755e-38;
}

id sub_2520E86A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSessionCategoryVolume();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2520E870C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_2520E878C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2520E87B8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2520E8854@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2520E8864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2520EEB68(a1);

  *a2 = v3;
  return result;
}

void sub_2520E88A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v441 = a5;
  v442 = a4;
  v440 = a3;
  v443 = a2;
  v452 = *MEMORY[0x277D85DE8];
  v444 = *v5;
  v437 = sub_252141ABC();
  v436 = *(v437 - 1);
  v8 = v436[8];
  MEMORY[0x28223BE20](v437);
  v435 = v428 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25214198C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v428 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapFileUrl;
  v16 = sub_2521417FC();
  (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine;
  *&v6[v17] = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator] = 0;
  v18 = &v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generatorId];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
  if (qword_27F4CD720 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_27F4CDEB0);
  v21 = *(v11 + 16);
  v21(&v6[v19], v20, v10);
  v21(v14, &v6[v19], v10);
  v22 = sub_25214196C();
  v23 = sub_252141FBC();
  v24 = os_log_type_enabled(v22, v23);
  v445 = v6;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v439 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    *&aBlock = v27;
    *v26 = 136446210;
    v28 = sub_2521425DC();
    v30 = sub_2520A5448(v28, v29, &aBlock);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] Hearing test audio engine init", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v31 = v27;
    v6 = v445;
    MEMORY[0x253099FD0](v31, -1, -1);
    v32 = v26;
    a1 = v439;
    MEMORY[0x253099FD0](v32, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sequence] = a1;
  type metadata accessor for HTAudioSequenceTone();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = a1;
  v35 = [v34 isKindOfClass_];
  v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_mode] = v35;
  v36 = &v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode];
  v37 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode];
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode] = 0;

  v38 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode];
  v431 = &v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode];
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode] = 0;

  v39 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator;
  v40 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator];
  *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator] = 0;

  v430 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_mode;
  v41 = v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_mode];
  v429 = v36;
  if (v41)
  {
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v43 = v42;
      v44 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine];
      v45 = v34;
      v46 = [v44 outputNode];
      v47 = [v46 outputFormatForBus_];

      if (![v47 channelCount])
      {

        v54 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v51 = sub_252141B6C();
        [v54 initWithDomain:v51 code:-14 userInfo:0];
        goto LABEL_12;
      }

      v48 = &selRef_categoryOptions;
      [v47 sampleRate];
      if (v49 == 0.0)
      {

        v50 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v51 = sub_252141B6C();
        [v50 initWithDomain:v51 code:-16 userInfo:0];
LABEL_12:

        swift_willThrow();

LABEL_72:
LABEL_73:

LABEL_74:

LABEL_75:
        v213 = *MEMORY[0x277D85DE8];
        return;
      }

      v434 = v34;
      v433 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
      v55 = sub_25214196C();
      v56 = sub_252141FBC();
      v57 = os_log_type_enabled(v55, v56);
      v439 = v45;
      v438 = v47;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&aBlock = v59;
        *v58 = 136446210;
        v60 = v444;
        v61 = sub_2521425DC();
        v63 = sub_2520A5448(v61, v62, &aBlock);

        *(v58 + 4) = v63;
        v6 = v445;
        _os_log_impl(&dword_25207E000, v55, v56, "[%{public}s] create tone generator", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        v64 = v59;
        v48 = &selRef_categoryOptions;
        MEMORY[0x253099FD0](v64, -1, -1);
        v65 = v58;
        v47 = v438;
        MEMORY[0x253099FD0](v65, -1, -1);
      }

      else
      {

        v60 = v444;
      }

      [v47 v48[35]];
      v67 = v66;
      v68 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency);
      v69 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel);
      v70 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses);
      v71 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration);
      v72 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration);
      v73 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration);
      v74 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration);
      v75 = *(v43 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration);
      v76 = swift_allocObject();
      v77 = v442;
      v76[2] = v6;
      v76[3] = v77;
      v76[4] = v441;
      v76[5] = v60;
      v78 = type metadata accessor for HTToneGenerator();
      v79 = *(v78 + 48);
      v80 = *(v78 + 52);
      swift_allocObject();
      v81 = v440;

      v82 = sub_2520CE5E0(v70, v81, sub_2520EEE28, v76, v67, v68, v69, v71, v72, v73, v74, v75);

      v83 = *&v6[v39];
      *&v6[v39] = v82;

      v84 = *&v6[v39];
      if (v84)
      {
        v86 = *(v84 + 16);
        v85 = *(v84 + 24);
      }

      else
      {
        v86 = 0;
        v87 = 0;
      }

      v88 = v439;
      v89 = &v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generatorId];
      v90 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generatorId + 8];
      *v89 = v86;
      v89[1] = v87;

      v91 = sub_25214196C();
      v92 = sub_252141FBC();

      if (os_log_type_enabled(v91, v92))
      {
        v442 = v81;
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&aBlock = v94;
        *v93 = 136446466;
        v95 = sub_2521425DC();
        v97 = sub_2520A5448(v95, v96, &aBlock);

        *(v93 + 4) = v97;
        *(v93 + 12) = 2080;
        if (v89[1])
        {
          v98 = *v89;
          v99 = v89[1];
        }

        else
        {
          v99 = 0xE400000000000000;
          v98 = 1162760014;
        }

        v88 = v439;

        v100 = sub_2520A5448(v98, v99, &aBlock);

        *(v93 + 14) = v100;
        _os_log_impl(&dword_25207E000, v91, v92, "[%{public}s] tone generator ID:%s", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v94, -1, -1);
        MEMORY[0x253099FD0](v93, -1, -1);

        v81 = v442;
      }

      else
      {
      }

      v101 = v438;
      v6 = v445;
      v102 = *&v445[v39];

      v34 = v434;
      if (!v102)
      {
        v385 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v386 = sub_252141B6C();
        [v385 initWithDomain:v386 code:-10 userInfo:0];

        swift_willThrow();

        goto LABEL_73;
      }
    }

    v103 = sub_25214196C();
    v104 = sub_252141FBC();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&aBlock = v106;
      *v105 = 136446210;
      v107 = sub_2521425DC();
      v109 = sub_2520A5448(v107, v108, &aBlock);

      *(v105 + 4) = v109;
      _os_log_impl(&dword_25207E000, v103, v104, "[%{public}s] create source node for generator", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x253099FD0](v106, -1, -1);
      MEMORY[0x253099FD0](v105, -1, -1);
    }

    v110 = objc_allocWithZone(MEMORY[0x277CB8420]);
    v450 = sub_2520EED10;
    v451 = v6;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v448 = sub_2520EE96C;
    v449 = &block_descriptor_50_0;
    v111 = _Block_copy(&aBlock);

    v112 = [v110 initWithRenderBlock_];
    _Block_release(v111);

    v52 = v112;
    v53 = v431;
  }

  else
  {
    v52 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
    v53 = v36;
  }

  v113 = *v53;
  *v53 = v52;

  if (*(v34 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter) == 1)
  {
    v114 = sub_25214196C();
    v115 = sub_252141FBC();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&aBlock = v117;
      *v116 = 136446210;
      v118 = sub_2521425DC();
      v120 = sub_2520A5448(v118, v119, &aBlock);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_25207E000, v114, v115, "[%{public}s] insert input filter", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x253099FD0](v117, -1, -1);
      MEMORY[0x253099FD0](v116, -1, -1);
    }

    v121 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features];
    if ((v121 & 1) == 0)
    {
      *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features] = v121 | 1;
    }
  }

  if (*(v34 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter) == 1)
  {
    v122 = sub_25214196C();
    v123 = sub_252141FBC();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&aBlock = v125;
      *v124 = 136446210;
      v126 = sub_2521425DC();
      v128 = sub_2520A5448(v126, v127, &aBlock);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_25207E000, v122, v123, "[%{public}s] insert output filter", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v125);
      MEMORY[0x253099FD0](v125, -1, -1);
      MEMORY[0x253099FD0](v124, -1, -1);
    }

    v129 = *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features];
    if ((v129 & 2) == 0)
    {
      *&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features] = v129 | 2;
    }
  }

  v433 = [objc_opt_self() sharedInstance];
  if (v443)
  {
    sub_2520A5A94(0, &qword_27F4CE300, 0x277CB83F8);
    v130 = v443;
    if ((sub_25214210C() & 1) == 0)
    {
      v131 = sub_25214196C();
      v132 = sub_252141FBC();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *&aBlock = v134;
        *v133 = 136446210;
        v135 = sub_2521425DC();
        v137 = sub_2520A5448(v135, v136, &aBlock);

        *(v133 + 4) = v137;
        v6 = v445;
        _os_log_impl(&dword_25207E000, v131, v132, "[%{public}s] assign sessionID to outputNode", v133, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v134);
        MEMORY[0x253099FD0](v134, -1, -1);
        MEMORY[0x253099FD0](v133, -1, -1);
      }

      LODWORD(inData[0]) = [v130 opaqueSessionID];
      v138 = [*&v6[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine] outputNode];
      v139 = [v138 audioUnit];

      if (v139)
      {
        v140 = sub_25214199C();
        v141 = AudioUnitSetProperty(v139, 0x7E7u, 0, 0, inData, 4u);
        v142 = sub_25214196C();
        if (v140 != v141)
        {
          v229 = sub_252141FAC();
          if (os_log_type_enabled(v142, v229))
          {
            v230 = swift_slowAlloc();
            *v230 = 0;
            _os_log_impl(&dword_25207E000, v142, v229, "Unable to set session on engine", v230, 2u);
            MEMORY[0x253099FD0](v230, -1, -1);
          }

          v231 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v232 = sub_252141B6C();
          [v231 initWithDomain:v232 code:-1 userInfo:0];

          swift_willThrow();

          goto LABEL_75;
        }

        v143 = sub_252141FBC();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *&aBlock = v145;
          *v144 = 136446210;
          v146 = sub_2521425DC();
          v148 = sub_2520A5448(v146, v147, &aBlock);

          *(v144 + 4) = v148;
          _os_log_impl(&dword_25207E000, v142, v143, "[%{public}s] deactiveate audio session caused by outputNode sessionID", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v145);
          MEMORY[0x253099FD0](v145, -1, -1);
          MEMORY[0x253099FD0](v144, -1, -1);
        }

        *&aBlock = 0;
        if (![v433 setActive:0 error:&aBlock])
        {
          v341 = aBlock;
          v342 = sub_25214178C();

          swift_willThrow();
          v343 = sub_25214177C();
          v344 = sub_25214196C();
          v345 = sub_252141FAC();
          if (os_log_type_enabled(v344, v345))
          {
            v346 = swift_slowAlloc();
            *v346 = 134217984;
            *(v346 + 4) = [v343 code];
            _os_log_impl(&dword_25207E000, v344, v345, "audio session setActive %ld", v346, 0xCu);
            MEMORY[0x253099FD0](v346, -1, -1);
          }

          v347 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v348 = sub_252141B6C();
          [v347 initWithDomain:v348 code:-2 userInfo:0];

          swift_willThrow();

          goto LABEL_75;
        }

        v149 = aBlock;
      }
    }
  }

  v434 = v34;
  v150 = dispatch_semaphore_create(0);
  v151 = swift_allocObject();
  v438 = v151;
  *(v151 + 16) = 0;
  v152 = (v151 + 16);
  v153 = swift_allocObject();
  v439 = v153;
  *(v153 + 16) = 0;
  v428[0] = v153 + 16;
  v442 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
  v154 = sub_25214196C();
  v155 = sub_252141FBC();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&aBlock = v157;
    *v156 = 136446210;
    v158 = v444;
    v159 = sub_2521425DC();
    v161 = sub_2520A5448(v159, v160, &aBlock);

    *(v156 + 4) = v161;
    _os_log_impl(&dword_25207E000, v154, v155, "[%{public}s] instantiate multichannel mixer", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v157);
    MEMORY[0x253099FD0](v157, -1, -1);
    MEMORY[0x253099FD0](v156, -1, -1);
  }

  else
  {

    v158 = v444;
  }

  v162 = objc_opt_self();
  v163 = swift_allocObject();
  v164 = v439;
  *(v163 + 2) = v445;
  *(v163 + 3) = v164;
  *(v163 + 4) = v438;
  *(v163 + 5) = v150;
  *(v163 + 6) = v158;
  v450 = sub_2520EEDD8;
  v451 = v163;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v448 = sub_2520EC464;
  v449 = &block_descriptor_62;
  v165 = _Block_copy(&aBlock);

  v432 = v150;

  aBlock = xmmword_252144EC0;
  LODWORD(v448) = 0;
  [v162 instantiateWithComponentDescription:&aBlock options:0 completionHandler:v165];
  _Block_release(v165);
  v166 = sub_25214196C();
  v167 = sub_252141FBC();
  v168 = os_log_type_enabled(v166, v167);
  v169 = v434;
  if (v168)
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    *&aBlock = v171;
    *v170 = 136446210;
    v172 = sub_2521425DC();
    v174 = sub_2520A5448(v172, v173, &aBlock);

    *(v170 + 4) = v174;
    _os_log_impl(&dword_25207E000, v166, v167, "[%{public}s] wait for multichannel mixer", v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v171);
    MEMORY[0x253099FD0](v171, -1, -1);
    MEMORY[0x253099FD0](v170, -1, -1);
  }

  v175 = v435;
  sub_252141A9C();
  v176 = v432;
  sub_2521420DC();
  (v436[1])(v175, v437);
  if ((sub_252141A2C() & 1) == 0)
  {
    v204 = sub_25214196C();
    v205 = sub_252141FAC();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *&aBlock = v207;
      *v206 = 136446210;
      v208 = sub_2521425DC();
      v210 = sub_2520A5448(v208, v209, &aBlock);

      *(v206 + 4) = v210;
      _os_log_impl(&dword_25207E000, v204, v205, "[%{public}s] creating multichannel mixer took too long", v206, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v207);
      MEMORY[0x253099FD0](v207, -1, -1);
      MEMORY[0x253099FD0](v206, -1, -1);
    }

    v211 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v212 = sub_252141B6C();
    [v211 initWithDomain:v212 code:-4 userInfo:0];
    goto LABEL_69;
  }

  swift_beginAccess();
  v177 = *v152;
  if (!*v152)
  {
    v214 = sub_25214196C();
    v215 = sub_252141FAC();
    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      inData[0] = v217;
      *v216 = 136446210;
      v218 = sub_2521425DC();
      v220 = sub_2520A5448(v218, v219, inData);

      *(v216 + 4) = v220;
      _os_log_impl(&dword_25207E000, v214, v215, "[%{public}s] multichannel mixer error", v216, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v217);
      MEMORY[0x253099FD0](v217, -1, -1);
      MEMORY[0x253099FD0](v216, -1, -1);
    }

    v221 = v428[0];
    swift_beginAccess();
    v222 = *v221;
    if (v222)
    {
      swift_willThrow();
      v223 = v222;
      goto LABEL_70;
    }

    v340 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v212 = sub_252141B6C();
    [v340 initWithDomain:v212 code:-5 userInfo:0];
LABEL_69:

    swift_willThrow();
LABEL_70:

    goto LABEL_71;
  }

  v178 = *&v445[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer];
  *&v445[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer] = v177;
  v179 = v177;

  v180 = sub_25214196C();
  v181 = sub_252141FBC();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    inData[0] = v183;
    *v182 = 136446210;
    v184 = sub_2521425DC();
    v186 = sub_2520A5448(v184, v185, inData);

    *(v182 + 4) = v186;
    _os_log_impl(&dword_25207E000, v180, v181, "[%{public}s] attaching multichannel mixer into engine", v182, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v183);
    MEMORY[0x253099FD0](v183, -1, -1);
    MEMORY[0x253099FD0](v182, -1, -1);
  }

  if (*v152)
  {
    v187 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine;
    v188 = v445;
    v189 = &selRef_categoryOptions;
    [*&v445[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine] attachNode_];
    v190 = *v152;
    if (*v152)
    {
      v191 = v188[v430];
      v192 = v188;
      v437 = v190;
      if (v191)
      {
        v193 = *v431;
        if (*v431)
        {
          v194 = v190;
          v195 = v193;
          v196 = sub_25214196C();
          v197 = sub_252141FBC();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            inData[0] = v199;
            *v198 = 136446210;
            v200 = sub_2521425DC();
            v202 = sub_2520A5448(v200, v201, inData);
            v189 = &selRef_categoryOptions;

            *(v198 + 4) = v202;
            v192 = v445;
            v203 = "[%{public}s] Attaching sourceNode to engine";
LABEL_89:
            _os_log_impl(&dword_25207E000, v196, v197, v203, v198, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v199);
            MEMORY[0x253099FD0](v199, -1, -1);
            MEMORY[0x253099FD0](v198, -1, -1);
            goto LABEL_90;
          }

          goto LABEL_90;
        }
      }

      else
      {
        v233 = *v429;
        if (*v429)
        {
          v234 = v190;
          v195 = v233;
          v196 = sub_25214196C();
          v197 = sub_252141FBC();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            inData[0] = v199;
            *v198 = 136446210;
            v235 = sub_2521425DC();
            v237 = sub_2520A5448(v235, v236, inData);
            v189 = &selRef_categoryOptions;

            *(v198 + 4) = v237;
            v192 = v445;
            v203 = "[%{public}s] Attaching player to engine";
            goto LABEL_89;
          }

LABEL_90:

          [*(v192 + v187) v189[33]];
          goto LABEL_92;
        }
      }

      v238 = v190;
LABEL_92:
      v239 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features;
      if ((*(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features) & 1) == 0)
      {
        v240 = *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
        *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter) = 0;
        while (1)
        {

          if ((*(v192 + v239) & 2) == 0)
          {
            break;
          }

          v276 = sub_25214196C();
          v277 = sub_252141FBC();
          if (os_log_type_enabled(v276, v277))
          {
            v278 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            inData[0] = v279;
            *v278 = 136446210;
            v280 = sub_2521425DC();
            v282 = sub_2520A5448(v280, v281, inData);

            *(v278 + 4) = v282;
            _os_log_impl(&dword_25207E000, v276, v277, "[%{public}s] setting output processing chain", v278, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v279);
            MEMORY[0x253099FD0](v279, -1, -1);
            MEMORY[0x253099FD0](v278, -1, -1);
          }

          v248 = [objc_allocWithZone(MEMORY[0x277CB8450]) initWithNumberOfBands_];
          v283 = [v248 bands];
          v250 = sub_2520A5A94(0, &qword_27F4CE2F8, 0x277CB8458);
          v251 = sub_252141CDC();

          if ((v251 & 0xC000000000000001) != 0)
          {
            goto LABEL_183;
          }

          if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v284 = *(v251 + 32);
            goto LABEL_118;
          }

          __break(1u);
LABEL_188:
          v264 = MEMORY[0x2530993D0](0, v250);
LABEL_108:
          v265 = v264;

          LODWORD(v266) = 4.0;
          [v265 setBandwidth_];

          v267 = *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
          *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter) = v248;
          v240 = v248;

          v268 = sub_25214196C();
          v269 = sub_252141FBC();
          if (os_log_type_enabled(v268, v269))
          {
            v270 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            inData[0] = v271;
            *v270 = 136446210;
            v272 = sub_2521425DC();
            v274 = sub_2520A5448(v272, v273, inData);

            *(v270 + 4) = v274;
            v192 = v445;
            _os_log_impl(&dword_25207E000, v268, v269, "[%{public}s] attaching inputFilter to engine", v270, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v271);
            MEMORY[0x253099FD0](v271, -1, -1);
            MEMORY[0x253099FD0](v270, -1, -1);
          }

          [*(v192 + v187) attachNode_];
        }

        v275 = *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
        *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter) = 0;
LABEL_130:

        v305 = [*(v192 + v187) outputNode];
        v306 = [v305 outputFormatForBus_];

        [v306 sampleRate];
        v308 = v307;
        if (v307 <= 0.0)
        {
          v309 = sub_25214196C();
          v310 = sub_252141FAC();
          if (os_log_type_enabled(v309, v310))
          {
            v311 = swift_slowAlloc();
            v312 = swift_slowAlloc();
            inData[0] = v312;
            *v311 = 136446210;
            v313 = sub_2521425DC();
            v315 = sub_2520A5448(v313, v314, inData);

            *(v311 + 4) = v315;
            v192 = v445;
            _os_log_impl(&dword_25207E000, v309, v310, "[%{public}s] sampleRate for engine outputNode was <= 0. Setting to 44100", v311, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v312);
            MEMORY[0x253099FD0](v312, -1, -1);
            MEMORY[0x253099FD0](v311, -1, -1);
          }

          v308 = 44100.0;
        }

        if (![v306 channelCount])
        {
          v329 = sub_25214196C();
          v330 = sub_252141FAC();
          if (os_log_type_enabled(v329, v330))
          {
            v331 = swift_slowAlloc();
            v332 = swift_slowAlloc();
            inData[0] = v332;
            *v331 = 136446210;
            v333 = sub_2521425DC();
            v335 = sub_2520A5448(v333, v334, inData);

            *(v331 + 4) = v335;
            _os_log_impl(&dword_25207E000, v329, v330, "[%{public}s] Engine output node does not have any output channels", v331, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v332);
            MEMORY[0x253099FD0](v332, -1, -1);
            MEMORY[0x253099FD0](v331, -1, -1);
          }

          v336 = v434;
          v337 = v432;
          v338 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v339 = sub_252141B6C();
          [v338 initWithDomain:v339 code:-14 userInfo:0];

          swift_willThrow();

          goto LABEL_143;
        }

        [v306 sampleRate];
        if (v316 == 0.0)
        {
          v317 = sub_25214196C();
          v318 = sub_252141FAC();
          v319 = os_log_type_enabled(v317, v318);
          v320 = v432;
          if (v319)
          {
            v321 = swift_slowAlloc();
            v322 = swift_slowAlloc();
            inData[0] = v322;
            *v321 = 136446210;
            v323 = sub_2521425DC();
            v325 = sub_2520A5448(v323, v324, inData);

            *(v321 + 4) = v325;
            _os_log_impl(&dword_25207E000, v317, v318, "[%{public}s] Engine output node does not have a sample rate", v321, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v322);
            MEMORY[0x253099FD0](v322, -1, -1);
            MEMORY[0x253099FD0](v321, -1, -1);
          }

          v326 = v434;
          v327 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v328 = sub_252141B6C();
          [v327 initWithDomain:v328 code:-16 userInfo:0];
LABEL_139:

          swift_willThrow();

LABEL_143:
          goto LABEL_74;
        }

        v349 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:1 channels:v308];
        v320 = v432;
        v436 = v349;
        if (!v349)
        {
          v387 = sub_25214196C();
          v388 = sub_252141FAC();
          if (os_log_type_enabled(v387, v388))
          {
            v389 = swift_slowAlloc();
            v390 = swift_slowAlloc();
            inData[0] = v390;
            *v389 = 136446210;
            v391 = sub_2521425DC();
            v393 = sub_2520A5448(v391, v392, inData);

            *(v389 + 4) = v393;
            _os_log_impl(&dword_25207E000, v387, v388, "[%{public}s] Failed to create internal format from engine output node", v389, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v390);
            MEMORY[0x253099FD0](v390, -1, -1);
            MEMORY[0x253099FD0](v389, -1, -1);
          }

          v326 = v434;
          v394 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v328 = sub_252141B6C();
          [v394 initWithDomain:v328 code:-6 userInfo:0];
          goto LABEL_139;
        }

        v350 = *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
        v351 = &selRef_categoryOptions;
        if (v350)
        {
          v352 = v350;
          v353 = sub_25214196C();
          v354 = sub_252141FBC();
          if (os_log_type_enabled(v353, v354))
          {
            v355 = swift_slowAlloc();
            v356 = swift_slowAlloc();
            inData[0] = v356;
            *v355 = 136446210;
            v357 = sub_2521425DC();
            v359 = sub_2520A5448(v357, v358, inData);
            v351 = &selRef_categoryOptions;

            *(v355 + 4) = v359;
            v320 = v432;
            _os_log_impl(&dword_25207E000, v353, v354, "[%{public}s] connecting inputNode to input filter", v355, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v356);
            MEMORY[0x253099FD0](v356, -1, -1);
            MEMORY[0x253099FD0](v355, -1, -1);
          }

          v192 = v445;
          v360 = *&v445[v187];
          v361 = [v360 inputNode];
          [v360 v351[37]];
        }

        if (*v431)
        {
          v362 = *v431;
          v363 = sub_25214196C();
          v364 = sub_252141FBC();
          if (os_log_type_enabled(v363, v364))
          {
            v365 = swift_slowAlloc();
            v366 = swift_slowAlloc();
            inData[0] = v366;
            *v365 = 136446210;
            v367 = sub_2521425DC();
            v369 = sub_2520A5448(v367, v368, inData);
            v351 = &selRef_categoryOptions;

            *(v365 + 4) = v369;
            v320 = v432;
            _os_log_impl(&dword_25207E000, v363, v364, "[%{public}s] Connecting sourceNode to channel mixer", v365, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v366);
            MEMORY[0x253099FD0](v366, -1, -1);
            MEMORY[0x253099FD0](v365, -1, -1);
          }

          v192 = v445;
          [*&v445[v187] v351[37]];
        }

        v370 = *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
        if (v370)
        {
          v371 = *v429;
          if (*v429)
          {
            v372 = v370;
            v373 = v371;
            v374 = sub_25214196C();
            v375 = sub_252141FBC();
            if (os_log_type_enabled(v374, v375))
            {
              v376 = swift_slowAlloc();
              v435 = v372;
              v377 = v376;
              v378 = swift_slowAlloc();
              v431 = v373;
              v379 = v378;
              inData[0] = v378;
              *v377 = 136446210;
              v380 = sub_2521425DC();
              v382 = sub_2520A5448(v380, v381, inData);
              v351 = &selRef_categoryOptions;

              *(v377 + 4) = v382;
              v320 = v432;
              _os_log_impl(&dword_25207E000, v374, v375, "[%{public}s] Connecting player to output filter", v377, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v379);
              v383 = v379;
              v373 = v431;
              MEMORY[0x253099FD0](v383, -1, -1);
              v384 = v377;
              v372 = v435;
              MEMORY[0x253099FD0](v384, -1, -1);
            }

            v192 = v445;
            [*&v445[v187] v351[37]];
          }

          else
          {
            v402 = v370;
          }

          v403 = sub_25214196C();
          v404 = sub_252141FBC();
          if (os_log_type_enabled(v403, v404))
          {
            v405 = swift_slowAlloc();
            v406 = swift_slowAlloc();
            inData[0] = v406;
            *v405 = 136446210;
            v407 = sub_2521425DC();
            v409 = sub_2520A5448(v407, v408, inData);
            v351 = &selRef_categoryOptions;

            *(v405 + 4) = v409;
            v320 = v432;
            _os_log_impl(&dword_25207E000, v403, v404, "[%{public}s] Connecting outputFilter to channel mixer", v405, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v406);
            MEMORY[0x253099FD0](v406, -1, -1);
            v410 = v405;
            v192 = v445;
            MEMORY[0x253099FD0](v410, -1, -1);
          }
        }

        else
        {
          if (!*v429)
          {
LABEL_175:
            v411 = sub_25214196C();
            v412 = sub_252141FBC();
            if (os_log_type_enabled(v411, v412))
            {
              v413 = swift_slowAlloc();
              v414 = swift_slowAlloc();
              inData[0] = v414;
              *v413 = 136446210;
              v415 = sub_2521425DC();
              v417 = sub_2520A5448(v415, v416, inData);
              v351 = &selRef_categoryOptions;

              *(v413 + 4) = v417;
              v192 = v445;
              _os_log_impl(&dword_25207E000, v411, v412, "[%{public}s] connecting multichannel mixer to outputNode", v413, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v414);
              MEMORY[0x253099FD0](v414, -1, -1);
              MEMORY[0x253099FD0](v413, -1, -1);
            }

            v418 = *(v192 + v187);
            v419 = [v418 outputNode];
            v420 = v437;
            [v418 v351[37]];

            v421 = sub_25214196C();
            v422 = sub_252141FBC();
            if (os_log_type_enabled(v421, v422))
            {
              v423 = swift_slowAlloc();
              v424 = swift_slowAlloc();
              inData[0] = v424;
              *v423 = 136446210;
              v425 = sub_2521425DC();
              v427 = sub_2520A5448(v425, v426, inData);

              *(v423 + 4) = v427;
              _os_log_impl(&dword_25207E000, v421, v422, "[%{public}s] Hearing test audio engine connected", v423, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v424);
              MEMORY[0x253099FD0](v424, -1, -1);
              MEMORY[0x253099FD0](v423, -1, -1);
            }

            goto LABEL_75;
          }

          v370 = *v429;
          v395 = sub_25214196C();
          v396 = sub_252141FBC();
          if (os_log_type_enabled(v395, v396))
          {
            v397 = swift_slowAlloc();
            v398 = swift_slowAlloc();
            inData[0] = v398;
            *v397 = 136446210;
            v399 = sub_2521425DC();
            v401 = sub_2520A5448(v399, v400, inData);
            v351 = &selRef_categoryOptions;

            *(v397 + 4) = v401;
            v320 = v432;
            _os_log_impl(&dword_25207E000, v395, v396, "[%{public}s] Connecting player to channel mixer", v397, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v398);
            MEMORY[0x253099FD0](v398, -1, -1);
            MEMORY[0x253099FD0](v397, -1, -1);
          }

          v192 = v445;
        }

        [*(v192 + v187) v351[37]];

        goto LABEL_175;
      }

      v241 = sub_25214196C();
      v242 = sub_252141FBC();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        v244 = swift_slowAlloc();
        inData[0] = v244;
        *v243 = 136446210;
        v245 = sub_2521425DC();
        v247 = sub_2520A5448(v245, v246, inData);

        *(v243 + 4) = v247;
        _os_log_impl(&dword_25207E000, v241, v242, "[%{public}s] setting input processing chain", v243, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v244);
        MEMORY[0x253099FD0](v244, -1, -1);
        MEMORY[0x253099FD0](v243, -1, -1);
      }

      v248 = [objc_allocWithZone(MEMORY[0x277CB8450]) initWithNumberOfBands_];
      v249 = [v248 bands];
      v250 = sub_2520A5A94(0, &qword_27F4CE2F8, 0x277CB8458);
      v251 = sub_252141CDC();

      if ((v251 & 0xC000000000000001) != 0)
      {
        v252 = MEMORY[0x2530993D0](0, v251);
      }

      else
      {
        if (!*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_183:
          v284 = MEMORY[0x2530993D0](0, v251);
LABEL_118:
          v285 = v284;

          [v285 setFilterType_];

          v286 = [v248 bands];
          v255 = sub_252141CDC();

          if ((v255 & 0xC000000000000001) == 0)
          {
            if (!*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_192:
              __break(1u);
              goto LABEL_193;
            }

            v287 = *(v255 + 32);
LABEL_121:
            v288 = v287;

            LODWORD(v289) = 1157234688;
            [v288 setFrequency_];

            v290 = [v248 bands];
            v259 = sub_252141CDC();

            if ((v259 & 0xC000000000000001) == 0)
            {
              if (!*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_195;
              }

              v291 = *(v259 + 32);
LABEL_124:
              v292 = v291;

              LODWORD(v293) = 4.0;
              [v292 setBandwidth_];

              v294 = [v248 bands];
              v250 = sub_252141CDC();

              if ((v250 & 0xC000000000000001) != 0)
              {
LABEL_193:
                v295 = MEMORY[0x2530993D0](0, v250);
                goto LABEL_127;
              }

              if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v295 = *(v250 + 32);
LABEL_127:
                v296 = v295;

                [v296 setBypass_];

                v297 = *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
                *(v192 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter) = v248;
                v275 = v248;

                v298 = sub_25214196C();
                v299 = sub_252141FBC();
                if (os_log_type_enabled(v298, v299))
                {
                  v300 = swift_slowAlloc();
                  v301 = swift_slowAlloc();
                  inData[0] = v301;
                  *v300 = 136446210;
                  v302 = sub_2521425DC();
                  v304 = sub_2520A5448(v302, v303, inData);

                  *(v300 + 4) = v304;
                  v192 = v445;
                  _os_log_impl(&dword_25207E000, v298, v299, "[%{public}s] attaching outputFilter to engine", v300, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v301);
                  MEMORY[0x253099FD0](v301, -1, -1);
                  MEMORY[0x253099FD0](v300, -1, -1);
                }

                [*(v192 + v187) attachNode_];
                goto LABEL_130;
              }

LABEL_195:
              __break(1u);
            }

LABEL_190:
            v291 = MEMORY[0x2530993D0](0, v259);
            goto LABEL_124;
          }

LABEL_186:
          v287 = MEMORY[0x2530993D0](0, v255);
          goto LABEL_121;
        }

        v252 = *(v251 + 32);
      }

      v253 = v252;

      [v253 setFilterType_];

      v254 = [v248 bands];
      v255 = sub_252141CDC();

      if ((v255 & 0xC000000000000001) != 0)
      {
        v256 = MEMORY[0x2530993D0](0, v255);
        goto LABEL_102;
      }

      if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v256 = *(v255 + 32);
LABEL_102:
        v257 = v256;

        [v257 setBypass_];

        v258 = [v248 bands];
        v259 = sub_252141CDC();

        if ((v259 & 0xC000000000000001) != 0)
        {
          v260 = MEMORY[0x2530993D0](0, v259);
          goto LABEL_105;
        }

        if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v260 = *(v259 + 32);
LABEL_105:
          v261 = v260;

          LODWORD(v262) = 1157234688;
          [v261 setFrequency_];

          v263 = [v248 bands];
          v250 = sub_252141CDC();

          if ((v250 & 0xC000000000000001) != 0)
          {
            goto LABEL_188;
          }

          if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v264 = *(v250 + 32);
            goto LABEL_108;
          }

          goto LABEL_192;
        }

        __break(1u);
        goto LABEL_190;
      }

      __break(1u);
      goto LABEL_186;
    }

    v224 = sub_25214196C();
    v225 = sub_252141FAC();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      *v226 = 0;
      _os_log_impl(&dword_25207E000, v224, v225, "Failed to create multichannel mixer", v226, 2u);
      MEMORY[0x253099FD0](v226, -1, -1);
    }

    v227 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v228 = sub_252141B6C();
    [v227 initWithDomain:v228 code:-5 userInfo:0];

    swift_willThrow();

LABEL_71:

    goto LABEL_72;
  }

  __break(1u);
}

uint64_t sub_2520EBDBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t))
{

  v7 = sub_25214196C();
  v8 = sub_252141FBC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2520A5448(a1, a2, &v15);
    _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] Tone complete with identifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  return a4(a1, a2);
}

void sub_2520EBF3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator);
  if (!v5)
  {
    LOBYTE(v22) = 1;
LABEL_63:
    *a1 = v22 & 1;

    sub_25214199C();
    return;
  }

  v41 = *(v5 + 168);
  v42 = a1;
  v7 = *(v5 + 72);
  v6 = *(v5 + 80);
  v8 = *(v5 + 128);
  v9 = *(v5 + 56);
  v10 = *(a4 + 16);
  if (!v10 || !a3)
  {
    v22 = 1;
LABEL_51:
    *(v5 + 72) = v7;
    *(v5 + 80) = v6;
    *(v5 + 128) = v8;
    *(v5 + 56) = v9;
    a1 = v42;
    if (v41 >= v9 && v8 == 0)
    {
      goto LABEL_61;
    }

    if ((*(v5 + 160) & 1) == 0 && ((v22 ^ 1) & 1) == 0)
    {
      v34 = *(v5 + 136);
      v35 = __CFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_69;
      }

      *(v5 + 136) = v36;
      if (v36 >= 0xA)
      {
        *(v5 + 160) = 1;
      }
    }

    if ((v8 & 1) == 0)
    {
LABEL_61:
      LOBYTE(v22) = 0;
    }

    goto LABEL_63;
  }

  v11 = *(v5 + 64);
  v12 = *(v5 + 88);
  v13 = *(v5 + 104);
  v14 = *(v5 + 112);
  v37 = *(v5 + 120);
  v15 = *(v5 + 176);
  v16 = *(v5 + 48);
  v17 = *(v5 + 161);
  v18 = v13;
  v39 = v13;
  v40 = *(v5 + 96);
  v38 = (v40 != 0) | v17;
  v19 = v13;
  v20 = a3;
  v21 = v9 ^ 0x7FFFFFFFu;
  v22 = 1;
  v43 = v17;
  v44 = v15;
  while (v21)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_67;
    }

    ++v9;
    v25 = 0.0;
    if (v8 & 1 | (v6 == 0))
    {
      v8 = v17;
    }

    else
    {
      if (v7 < 1)
      {
        goto LABEL_48;
      }

      if (v15)
      {
        if (v12 >= v7)
        {
          goto LABEL_48;
        }

        if (!v40)
        {
          if (v17)
          {
            if (v14 > v7)
            {
              v26 = 0.0;
LABEL_41:
              v22 = 0;
              v8 = 0;
              v30 = (v14 - v7) / v19;
              if (v30 > 0.0)
              {
                v31 = (v14 - v7) / v19;
              }

              else
              {
                v31 = 0.0;
              }

              if (v30 <= 1.0)
              {
                v32 = v31;
              }

              else
              {
                v32 = 1.0;
              }

              v25 = v32 * v26;
              goto LABEL_6;
            }

LABEL_49:
            v6 = -1;
            v8 = 1;
            v7 = v37;
            goto LABEL_6;
          }

LABEL_48:
          v8 = 0;
          goto LABEL_6;
        }

        v26 = 0.0;
        if (v14 > v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v26 = v16 * sin((v11 * v9 + v11 * v9) * 3.14159265);
        if (v12 >= v7)
        {
          if (v7 >= v39)
          {
            v22 = 0;
            v8 = 0;
            v25 = v26;
          }

          else
          {
            v22 = 0;
            v8 = 0;
            v27 = v7 / v18;
            if (v27 > 0.0)
            {
              v28 = v7 / v18;
            }

            else
            {
              v28 = 0.0;
            }

            if (v27 <= 1.0)
            {
              v29 = v28;
            }

            else
            {
              v29 = 1.0;
            }

            v25 = v26 * v29;
          }

          goto LABEL_37;
        }

        if ((v38 & 1) == 0)
        {
          v8 = 0;
          v22 = (v14 < v7) & v22;
          if (v14 >= v7)
          {
            v25 = v26;
          }

          else
          {
            v25 = 0.0;
          }

LABEL_37:
          v17 = v43;
          v15 = v44;
          goto LABEL_6;
        }

        v17 = v43;
        v15 = v44;
        if (v14 > v7)
        {
          goto LABEL_41;
        }
      }

      if (v17)
      {
        goto LABEL_49;
      }

      if (__OFSUB__(v6, 1))
      {
        goto LABEL_68;
      }

      v8 = 0;
      if (v6 - 1 < 0)
      {
        v6 = -1;
      }

      else
      {
        --v6;
      }

      v7 = v37;
    }

LABEL_6:
    v23 = v25;
    *v10++ = v23;
    --v21;
    if (!--v20)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_2520EC228(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = sub_25214196C();
    v9 = sub_252141FAC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27[0] = v11;
      *v10 = 136446466;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, v27);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_2521424DC();
      v17 = sub_2520A5448(v15, v16, v27);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] Error instantiating AVAudioUnit: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v19 = sub_252141B6C();
    v20 = [v18 initWithDomain:v19 code:-3 userInfo:0];

    swift_beginAccess();
    v21 = *(a4 + 16);
    *(a4 + 16) = v20;
  }

  else
  {
    swift_beginAccess();
    v24 = *(a5 + 16);
    *(a5 + 16) = a1;
    v25 = a1;
  }

  return sub_2521420EC();
}

void sub_2520EC464(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

char *sub_2520EC4F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_25214198C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
  (*(v4 + 16))(v8, &v1[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger], v3, v6);
  v10 = sub_25214196C();
  v11 = sub_252141FBC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v9;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] Hearing test audio engine deinit", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x253099FD0](v14, -1, -1);
    v18 = v13;
    v9 = v23;
    MEMORY[0x253099FD0](v18, -1, -1);
  }

  v19 = *(v4 + 8);
  v19(v8, v3);
  sub_2520EDBB4();
  sub_2520A2584(&v1[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapFileUrl], &qword_27F4CE2E8, &unk_252145170);

  v20 = *&v1[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator];

  v21 = *&v1[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generatorId + 8];

  v19(&v1[v9], v3);
  return v1;
}

uint64_t sub_2520EC7CC()
{
  sub_2520EC4F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HTAudioEngine()
{
  result = qword_27F4CE2A8;
  if (!qword_27F4CE2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}