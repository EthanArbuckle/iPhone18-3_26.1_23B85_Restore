@interface AXLCTranscriber
+ (_TtC17LiveTranscription15AXLCTranscriber)shared;
+ (id)formattedLocaleIDsFrom:(id)a3;
+ (void)defaultLocaleWithCompletionHandler:(id)a3;
+ (void)installedLocalesWithCompletionHandler:(id)a3;
+ (void)supportedLocalesWithCompletionHandler:(id)a3;
- (void)addAudioPCMBuffer:(id)a3 for:(id)a4;
- (void)resetErrorStates;
- (void)startTranscriptionFor:(id)a3 audioFormat:(id)a4 transcriberResult:(id)a5;
- (void)stopTranscriptionFor:(id)a3;
@end

@implementation AXLCTranscriber

+ (_TtC17LiveTranscription15AXLCTranscriber)shared
{
  if (qword_27F825640 != -1)
  {
    swift_once();
  }

  v3 = qword_27F825830;

  return v3;
}

+ (void)supportedLocalesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_2560537AC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256056170;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_256056178;
  v13[5] = v12;
  sub_25604B208(0, 0, v8, &unk_256056180, v13);
}

+ (void)installedLocalesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_2560537AC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256056150;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_256056158;
  v13[5] = v12;
  sub_25604B208(0, 0, v8, &unk_256056160, v13);
}

+ (void)defaultLocaleWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_2560537AC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_256056108;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_256055C60;
  v13[5] = v12;
  sub_25604B208(0, 0, v8, &unk_256055C68, v13);
}

+ (id)formattedLocaleIDsFrom:(id)a3
{
  sub_25605347C();
  v3 = sub_25605375C();
  _s17LiveTranscription15AXLCTranscriberC18formattedLocaleIDs4fromSaySSGSay10Foundation0E0VG_tFZ_0(v3);

  v4 = sub_25605374C();

  return v4;
}

- (void)startTranscriptionFor:(id)a3 audioFormat:(id)a4 transcriberResult:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_2560537AC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = sub_256050CA4;
  v16[8] = v14;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_25603E5A8(0, 0, v12, &unk_2560560F8, v16);
}

- (void)stopTranscriptionFor:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_2560537AC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = a3;
  v11 = a3;
  v12 = self;
  sub_25603E5A8(0, 0, v8, &unk_2560560F0, v10);
}

- (void)addAudioPCMBuffer:(id)a3 for:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_2560537AC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_25603E5A8(0, 0, v10, &unk_2560560E8, v12);
}

- (void)resetErrorStates
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F825750, &qword_256055E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_2560537AC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_25603E5A8(0, 0, v6, &unk_2560560E0, v8);
}

@end