@interface ICSystemPaperThumbnailServiceInternal
+ (ICSystemPaperThumbnailServiceInternal)sharedService;
- (ICSystemPaperThumbnailServiceInternal)init;
- (UITraitCollection)traitCollection;
- (void)cancel;
- (void)dealloc;
- (void)immediatelyClearPaperSystemPaperPreview;
- (void)invalidate;
- (void)invalidateForNote:(id)note;
- (void)invalidateForNoteIDs:(id)ds;
- (void)invalidateForNotes:(id)notes;
- (void)observe;
- (void)setTraitCollection:(id)collection;
- (void)updateIfNeededForNote:(id)note completion:(id)completion;
- (void)updateIfNeededForNoteIDs:(id)ds completion:(id)completion;
- (void)updateIfNeededForNotes:(id)notes completion:(id)completion;
- (void)updateIfNeededWithCompletion:(id)completion;
- (void)updateRecentSystemPaperNote;
@end

@implementation ICSystemPaperThumbnailServiceInternal

+ (ICSystemPaperThumbnailServiceInternal)sharedService
{
  if (qword_1EDE32DD0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE32DD8;

  return v3;
}

- (UITraitCollection)traitCollection
{
  v3 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTraitCollection:(id)collection
{
  v5 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = collection;
  collectionCopy = collection;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  SystemPaperThumbnailService.cancel()();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ICSystemPaperThumbnailServiceInternal *)&v5 dealloc];
}

- (void)updateIfNeededForNote:(id)note completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D43FA1BC;
  }

  else
  {
    v7 = 0;
  }

  noteCopy = note;
  selfCopy = self;
  SystemPaperThumbnailService.updateIfNeeded(for:completion:)(note, v6, v7);
  sub_1D4320B20(v6);
}

- (void)updateIfNeededForNotes:(id)notes completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1D41766C0(0, &qword_1EDE32440);
  sub_1D4333044(&qword_1EDE32438, &qword_1EDE32440);
  v6 = sub_1D441A064();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_1D43FA1BC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  SystemPaperThumbnailService.updateIfNeeded(for:completion:)(v6, v8, v7);
  sub_1D4320B20(v8);
}

- (void)updateIfNeededForNoteIDs:(id)ds completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1D41766C0(0, &qword_1EDE32768);
  sub_1D4333044(&qword_1EDE32760, &qword_1EDE32768);
  v6 = sub_1D441A064();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_1D43FA1BC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  SystemPaperThumbnailService.updateIfNeeded(for:completion:)(v6, v8, v7);
  sub_1D4320B20(v8);
}

- (void)updateIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1D43F9F24;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  selfCopy = self;
  v8 = sub_1D4419C14();
  v9 = swift_allocObject();
  v9[2] = selfCopy;
  v9[3] = v4;
  v9[4] = v5;
  v12[4] = sub_1D43FA1C4;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D43239B0;
  v12[3] = &block_descriptor_119;
  v10 = _Block_copy(v12);
  v11 = selfCopy;
  sub_1D417C7B4(v4);

  [v6 sharedPerformCriticalBackgroundActivityWithReason:v8 block:v10];

  sub_1D4320B20(v4);
  _Block_release(v10);
}

- (void)immediatelyClearPaperSystemPaperPreview
{
  selfCopy = self;
  SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
}

- (void)updateRecentSystemPaperNote
{
  v3 = objc_opt_self();
  selfCopy = self;
  v5 = sub_1D4419C14();
  v6 = swift_allocObject();
  *(v6 + 16) = selfCopy;
  v9[4] = sub_1D43FA268;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D43239B0;
  v9[3] = &block_descriptor_112;
  v7 = _Block_copy(v9);
  v8 = selfCopy;

  [v3 sharedPerformCriticalBackgroundActivityWithReason:v5 block:v7];

  _Block_release(v7);
}

- (void)invalidateForNote:(id)note
{
  noteCopy = note;
  selfCopy = self;
  SystemPaperThumbnailService.invalidate(for:)(note);
}

- (void)invalidateForNotes:(id)notes
{
  sub_1D41766C0(0, &qword_1EDE32440);
  sub_1D4333044(&qword_1EDE32438, &qword_1EDE32440);
  v4 = sub_1D441A064();
  v5 = objc_opt_self();
  selfCopy = self;
  v7 = sub_1D4419C14();
  v8 = swift_allocObject();
  *(v8 + 16) = selfCopy;
  *(v8 + 24) = v4;
  v11[4] = sub_1D43FA260;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D43239B0;
  v11[3] = &block_descriptor_105;
  v9 = _Block_copy(v11);
  v10 = selfCopy;

  [v5 sharedPerformCriticalBackgroundActivityWithReason:v7 block:v9];

  _Block_release(v9);
}

- (void)invalidateForNoteIDs:(id)ds
{
  sub_1D41766C0(0, &qword_1EDE32768);
  sub_1D4333044(&qword_1EDE32760, &qword_1EDE32768);
  v4 = sub_1D441A064();
  v5 = objc_opt_self();
  selfCopy = self;
  v7 = sub_1D4419C14();
  v8 = swift_allocObject();
  *(v8 + 16) = selfCopy;
  *(v8 + 24) = v4;
  v11[4] = sub_1D43FA25C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D43239B0;
  v11[3] = &block_descriptor_98;
  v9 = _Block_copy(v11);
  v10 = selfCopy;

  [v5 sharedPerformCriticalBackgroundActivityWithReason:v7 block:v9];

  _Block_release(v9);
}

- (void)invalidate
{
  selfCopy = self;
  SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
  v3 = objc_opt_self();
  v4 = sub_1D4419C14();
  v5 = swift_allocObject();
  *(v5 + 16) = selfCopy;
  v8[4] = sub_1D43FA264;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D43239B0;
  v8[3] = &block_descriptor_91_0;
  v6 = _Block_copy(v8);
  v7 = selfCopy;

  [v3 sharedPerformCriticalBackgroundActivityWithReason:v4 block:v6];

  _Block_release(v6);
}

- (void)observe
{
  selfCopy = self;
  SystemPaperThumbnailService.observe()();
}

- (void)cancel
{
  selfCopy = self;
  SystemPaperThumbnailService.cancel()();
}

- (ICSystemPaperThumbnailServiceInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end