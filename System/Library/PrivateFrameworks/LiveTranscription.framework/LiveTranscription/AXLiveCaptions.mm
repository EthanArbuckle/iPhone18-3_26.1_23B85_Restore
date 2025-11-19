@interface AXLiveCaptions
+ (AXLiveCaptions)shared;
+ (id)formattedLocaleIDsFrom:(id)a3;
+ (void)defaultLocaleWithCompletion:(id)a3;
+ (void)installedLocalesWithCompletion:(id)a3;
+ (void)supportedLocalesWithCompletion:(id)a3;
- (AXLiveCaptions)init;
- (BOOL)startWithSource:(int64_t)a3 locale:(id)a4 sharedRoute:(BOOL)a5 excludePIDs:(id)a6 error:(id *)a7 transcriptionResult:(id)a8;
- (BOOL)stop:(int64_t)a3 error:(id *)a4;
- (void)liveCaptionsResult:(id)a3;
@end

@implementation AXLiveCaptions

+ (AXLiveCaptions)shared
{
  if (qword_27F825638 != -1)
  {
    swift_once();
  }

  v3 = qword_27F825700;

  return v3;
}

+ (void)supportedLocalesWithCompletion:(id)a3
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
  v12[4] = &unk_256055C98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_256055CA0;
  v13[5] = v12;
  sub_25604B208(0, 0, v8, &unk_256055CA8, v13);
}

+ (void)installedLocalesWithCompletion:(id)a3
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
  v12[4] = &unk_256055C78;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_256055C80;
  v13[5] = v12;
  sub_25604B208(0, 0, v8, &unk_256055C88, v13);
}

+ (void)defaultLocaleWithCompletion:(id)a3
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
  v12[4] = &unk_256055C58;
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
  _s17LiveTranscription14AXLiveCaptionsC18formattedLocaleIDs4fromSaySSGSay10Foundation0F0VG_tFZ_0(v3);

  v4 = sub_25605374C();

  return v4;
}

- (AXLiveCaptions)init
{
  *(&self->super.isa + OBJC_IVAR___AXLiveCaptions_clients) = MEMORY[0x277D84F98];
  v3 = [objc_allocWithZone(AXLTSpeechTranscriber) initWithDelegate_];
  *(&self->super.isa + OBJC_IVAR___AXLiveCaptions_micTranscriber) = v3;
  v4 = [objc_opt_self() sharedInstance];
  *(&self->super.isa + OBJC_IVAR___AXLiveCaptions_audioTranscriber) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AXLiveCaptions();
  return [(AXLiveCaptions *)&v6 init];
}

- (BOOL)startWithSource:(int64_t)a3 locale:(id)a4 sharedRoute:(BOOL)a5 excludePIDs:(id)a6 error:(id *)a7 transcriptionResult:(id)a8
{
  v27[0] = a7;
  v10 = a5;
  v14 = sub_25605347C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v27 - v21;
  v23 = _Block_copy(a8);
  if (a4)
  {
    sub_25605342C();
    (*(v15 + 32))(v22, v18, v14);
    (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v22, 1, 1, v14);
  }

  if (a6)
  {
    sub_256036FD0();
    sub_25605375C();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = self;
  sub_2560362AC(a3, v22, v10, sub_256036FC8, v24);
  sub_256033238(v22, &qword_27F8256A8, &qword_2560559A0);

  return 1;
}

- (BOOL)stop:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  sub_256034FB0(a3);

  return 1;
}

- (void)liveCaptionsResult:(id)a3
{
  v4 = a3;
  v5 = self;
  AXLiveCaptions.liveCaptionsResult(_:)(v4);
}

@end