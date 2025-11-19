@interface CKTranscriptBackground
- (NSURL)filePathURL;
- (_TtC7ChatKit22CKTranscriptBackground)init;
- (_TtC7ChatKit22CKTranscriptBackground)initWithEditorConfiguration:(id)a3 archivedPosterData:(id)a4 watchData:(id)a5 backgroundIdentifier:(id)a6 fileName:(id)a7 extensionIdentifier:(id)a8 extensionIsPlayground:(BOOL)a9;
- (_TtC7ChatKit22CKTranscriptBackground)initWithPosterData:(id)a3 watchData:(id)a4 backgroundIdentifier:(id)a5 fileName:(id)a6 extensionIdentifier:(id)a7 extensionIsPlayground:(BOOL)a8;
- (void)createBackgroundWithWatchDataWithCompletion:(id)a3;
- (void)createBackgroundWithWatchDataWithMaxRetries:(int64_t)a3 completion:(id)a4;
@end

@implementation CKTranscriptBackground

- (NSURL)filePathURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_190844DA8(self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL, &v12 - v4);
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_190D51570();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (_TtC7ChatKit22CKTranscriptBackground)initWithPosterData:(id)a3 watchData:(id)a4 backgroundIdentifier:(id)a5 fileName:(id)a6 extensionIdentifier:(id)a7 extensionIsPlayground:(BOOL)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a4;
  v32 = sub_190D51670();
  v18 = v17;

  if (v16)
  {
    v19 = sub_190D51670();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = sub_190D56F10();
  v24 = v23;

  v25 = sub_190D56F10();
  v27 = v26;

  v28 = sub_190D56F10();
  v30 = v29;

  return CKTranscriptBackground.init(posterData:watchData:backgroundIdentifier:fileName:extensionIdentifier:extensionIsPlayground:)(v32, v18, v19, v21, v22, v24, v25, v27, v28, v30, a8);
}

- (_TtC7ChatKit22CKTranscriptBackground)initWithEditorConfiguration:(id)a3 archivedPosterData:(id)a4 watchData:(id)a5 backgroundIdentifier:(id)a6 fileName:(id)a7 extensionIdentifier:(id)a8 extensionIsPlayground:(BOOL)a9
{
  if (a4)
  {
    v15 = a3;
    v16 = a5;
    v17 = a6;
    v18 = a7;
    v19 = a8;
    v20 = a4;
    v21 = sub_190D51670();
    v48 = v22;
    v49 = v21;
  }

  else
  {
    v23 = a3;
    v24 = a5;
    v25 = a6;
    v26 = a7;
    v27 = a8;
    v48 = 0xF000000000000000;
    v49 = 0;
  }

  if (a5)
  {
    v28 = sub_190D51670();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v31 = sub_190D56F10();
  v33 = v32;

  v34 = sub_190D56F10();
  v36 = v35;

  v37 = sub_190D56F10();
  v39 = v38;

  v40 = OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_filePathURL;
  v41 = sub_190D515F0();
  (*(*(v41 - 8) + 56))(self + v40, 1, 1, v41);
  *(self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration) = a3;
  v42 = (self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_posterData);
  *v42 = v49;
  v42[1] = v48;
  v43 = (self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_watchData);
  *v43 = v28;
  v43[1] = v30;
  v44 = (self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_fileName);
  *v44 = v34;
  v44[1] = v36;
  v45 = (self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_backgroundIdentifier);
  *v45 = v31;
  v45[1] = v33;
  v46 = (self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIdentifier);
  *v46 = v37;
  v46[1] = v39;
  *(self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground) = a9;
  v51.receiver = self;
  v51.super_class = type metadata accessor for CKTranscriptBackground();
  return [(CKTranscriptBackground *)&v51 init];
}

- (_TtC7ChatKit22CKTranscriptBackground)init
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)createBackgroundWithWatchDataWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_19087F4C8(3, v5, v4, v6);
  _Block_release(v4);

  _Block_release(v4);
}

- (void)createBackgroundWithWatchDataWithMaxRetries:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v8 = self;
  sub_19087F4C8(a3, v8, v6, v7);
  _Block_release(v6);
  _Block_release(v6);
}

@end