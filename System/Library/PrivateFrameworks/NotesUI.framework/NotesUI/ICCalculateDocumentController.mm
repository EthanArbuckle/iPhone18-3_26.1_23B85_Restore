@interface ICCalculateDocumentController
- (BOOL)hasExpressions;
- (BOOL)isExpressionFormattingEnabled;
- (BOOL)updateAffectingChangeCounts:(BOOL)counts;
- (BOOL)updateHighlights;
- (ICCalculateDocumentController)init;
- (ICNote)note;
- (NSIndexSet)expressionsIndexSet;
- (_NSRange)expressionRangeForResultAttachment:(id)attachment;
- (id)contextMenuForResultAttachment:(id)attachment;
- (id)numberLiteralAtLocation:(int64_t)location;
- (void)cancelUpdate;
- (void)formatExpressionsInAttributedString:(id)string range:(_NSRange)range textStorageOffset:(int64_t)offset skipStaleExpressions:(BOOL)expressions;
- (void)noteDidChangeCalculatePreviewBehavior:(id)behavior;
- (void)performUpdate;
- (void)resetHighlights;
- (void)scheduleUpdateAffectingChangeCounts:(BOOL)counts isHighPriority:(BOOL)priority;
- (void)setIsExpressionFormattingEnabled:(BOOL)enabled;
- (void)textStorageDidProcessEndEditing:(id)editing;
- (void)updateAffectingChangeCounts:(BOOL)counts completion:(id)completion;
@end

@implementation ICCalculateDocumentController

- (ICNote)note
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)updateHighlights
{
  selfCopy = self;
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);
  v3 = sub_1D41890D0();

  sub_1D418A1A4();

  return v3 & 1;
}

- (NSIndexSet)expressionsIndexSet
{
  v3 = sub_1D44175B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  _sSo29ICCalculateDocumentControllerC7NotesUIE19expressionsIndexSet10Foundation0gH0Vvg_0(v6);

  v8 = sub_1D4417564();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (BOOL)hasExpressions
{
  selfCopy = self;
  sub_1D4189834();
  v3 = MEMORY[0x1DA6D53A0]();

  if (v3 >> 62)
  {
    v4 = sub_1D441A8C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != 0;
}

- (void)scheduleUpdateAffectingChangeCounts:(BOOL)counts isHighPriority:(BOOL)priority
{
  selfCopy = self;
  ICCalculateDocumentController.scheduleUpdate(affectChangeCounts:isHighPriority:)(counts, priority);
}

- (void)cancelUpdate
{
  selfCopy = self;
  v2 = sub_1D4323224();
  [v2 cancelPreviousFireRequests];

  v3 = *(selfCopy + OBJC_IVAR___ICCalculateDocumentController_currentScanRequest);
  if (v3)
  {
    v4 = v3;
    [v4 cancel];
  }
}

- (void)performUpdate
{
  selfCopy = self;
  sub_1D43237D4();
}

- (BOOL)updateAffectingChangeCounts:(BOOL)counts
{
  if (*(self + OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate) == 1)
  {
    countsCopy = counts;
    selfCopy = self;
    [(ICCalculateDocumentController *)selfCopy cancelUpdate];
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
    v5 = sub_1D4307204(0, 0, 1);

    v6 = sub_1D4323B3C(countsCopy, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)updateAffectingChangeCounts:(BOOL)counts completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_1D432FC40(counts, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_NSRange)expressionRangeForResultAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  v6 = sub_1D4329930(attachmentCopy);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)numberLiteralAtLocation:(int64_t)location
{
  selfCopy = self;
  v5 = sub_1D432AC1C(location);

  return v5;
}

- (BOOL)isExpressionFormattingEnabled
{
  v3 = OBJC_IVAR___ICCalculateDocumentController_isExpressionFormattingEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsExpressionFormattingEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___ICCalculateDocumentController_isExpressionFormattingEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (void)formatExpressionsInAttributedString:(id)string range:(_NSRange)range textStorageOffset:(int64_t)offset skipStaleExpressions:(BOOL)expressions
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  selfCopy = self;
  v12.location = location;
  v12.length = length;
  ICCalculateDocumentController.formatExpressions(in:range:textStorageOffset:skipStaleExpressions:)(stringCopy, v12, offset, expressions);
}

- (void)noteDidChangeCalculatePreviewBehavior:(id)behavior
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  v8 = OBJC_IVAR___ICCalculateDocumentController_updating;
  *(self + OBJC_IVAR___ICCalculateDocumentController_updating) = 1;
  selfCopy = self;
  sub_1D432C488();
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);
  sub_1D418A1A4();

  (*(v5 + 8))(v7, v4);
  *(self + v8) = 0;
}

- (void)textStorageDidProcessEndEditing:(id)editing
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  selfCopy = self;
  sub_1D432CBB4();

  (*(v5 + 8))(v7, v4);
}

- (id)contextMenuForResultAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  v6 = ICCalculateDocumentController.contextMenu(forResultAttachment:)(attachmentCopy);

  return v6;
}

- (void)resetHighlights
{
  selfCopy = self;
  v3 = sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);

  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

- (ICCalculateDocumentController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end