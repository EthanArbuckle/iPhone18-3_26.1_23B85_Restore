@interface CKTranscriptBackground
- (NSURL)filePathURL;
- (_TtC7ChatKit22CKTranscriptBackground)init;
- (_TtC7ChatKit22CKTranscriptBackground)initWithEditorConfiguration:(id)configuration archivedPosterData:(id)data watchData:(id)watchData backgroundIdentifier:(id)identifier fileName:(id)name extensionIdentifier:(id)extensionIdentifier extensionIsPlayground:(BOOL)playground;
- (_TtC7ChatKit22CKTranscriptBackground)initWithPosterData:(id)data watchData:(id)watchData backgroundIdentifier:(id)identifier fileName:(id)name extensionIdentifier:(id)extensionIdentifier extensionIsPlayground:(BOOL)playground;
- (void)createBackgroundWithWatchDataWithCompletion:(id)completion;
- (void)createBackgroundWithWatchDataWithMaxRetries:(int64_t)retries completion:(id)completion;
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

- (_TtC7ChatKit22CKTranscriptBackground)initWithPosterData:(id)data watchData:(id)watchData backgroundIdentifier:(id)identifier fileName:(id)name extensionIdentifier:(id)extensionIdentifier extensionIsPlayground:(BOOL)playground
{
  dataCopy = data;
  identifierCopy = identifier;
  nameCopy = name;
  extensionIdentifierCopy = extensionIdentifier;
  watchDataCopy = watchData;
  v32 = sub_190D51670();
  v18 = v17;

  if (watchDataCopy)
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

  return CKTranscriptBackground.init(posterData:watchData:backgroundIdentifier:fileName:extensionIdentifier:extensionIsPlayground:)(v32, v18, v19, v21, v22, v24, v25, v27, v28, v30, playground);
}

- (_TtC7ChatKit22CKTranscriptBackground)initWithEditorConfiguration:(id)configuration archivedPosterData:(id)data watchData:(id)watchData backgroundIdentifier:(id)identifier fileName:(id)name extensionIdentifier:(id)extensionIdentifier extensionIsPlayground:(BOOL)playground
{
  if (data)
  {
    configurationCopy = configuration;
    watchDataCopy = watchData;
    identifierCopy = identifier;
    nameCopy = name;
    extensionIdentifierCopy = extensionIdentifier;
    dataCopy = data;
    v21 = sub_190D51670();
    v48 = v22;
    v49 = v21;
  }

  else
  {
    configurationCopy2 = configuration;
    watchDataCopy2 = watchData;
    identifierCopy2 = identifier;
    nameCopy2 = name;
    extensionIdentifierCopy2 = extensionIdentifier;
    v48 = 0xF000000000000000;
    v49 = 0;
  }

  if (watchData)
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
  *(self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_editorConfiguration) = configuration;
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
  *(self + OBJC_IVAR____TtC7ChatKit22CKTranscriptBackground_extensionIsPlayground) = playground;
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

- (void)createBackgroundWithWatchDataWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_19087F4C8(3, selfCopy, v4, v6);
  _Block_release(v4);

  _Block_release(v4);
}

- (void)createBackgroundWithWatchDataWithMaxRetries:(int64_t)retries completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_19087F4C8(retries, selfCopy, v6, v7);
  _Block_release(v6);
  _Block_release(v6);
}

@end