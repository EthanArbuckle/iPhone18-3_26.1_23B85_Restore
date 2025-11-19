@interface BRLTBrailleModelInternal
+ (BRLTBrailleModelInternal)shared;
- (BOOL)backTranslateByCell;
- (BOOL)brailleStringDirty;
- (BOOL)clearAtNextDotPress;
- (BOOL)handleBrailleSelectionWithNSSelection:(_NSRange)a3;
- (BOOL)handleBrailleSelectionWithUpTo:(int64_t)a3;
- (BOOL)handleDeleteWithSilently:(BOOL)a3;
- (BOOL)handleEscape;
- (BOOL)handleMoveCursorLeft;
- (BOOL)handleMoveCursorRight;
- (BOOL)handleReturn;
- (BOOL)handleReturnInternally;
- (BOOL)isCandidateSelectionActive;
- (BOOL)isShowingSecureToken;
- (BOOL)isSingleKeyQuickNav;
- (BOOL)isWordDescriptionActive;
- (BOOL)technicalMode;
- (BOOL)uiFind:(id)a3;
- (BOOL)uiMoveToNextCharacter;
- (BOOL)uiMoveToPreviousCharacter;
- (BOOL)uiPreviousFind:(id)a3;
- (BRLTBrailleModelDelegate)delegate;
- (BRLTEditStringInternal)displayedBraille;
- (BRLTEditStringInternal)displayedScript;
- (NSString)bufferBrailleString;
- (NSString)uiBraille;
- (_NSRange)nsUISelection;
- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAt:(int64_t)a3;
- (_NSRange)uiDisplayRange;
- (int64_t)scriptLocationForBrailleLocation:(int64_t)a3;
- (void)_resetForTest;
- (void)forceTranslate;
- (void)handleBrailleDotPress:(id)a3;
- (void)handleWordDescriptionCommand;
- (void)selectCandidate;
- (void)setAlert:(id)a3;
- (void)setBackTranslateByCell:(BOOL)a3;
- (void)setBrailleStringDirty:(BOOL)a3;
- (void)setBrailleUIActive:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEditable:(BOOL)a3;
- (void)setIsShowingSecureToken:(BOOL)a3;
- (void)setIsSingleKeyQuickNav:(BOOL)a3;
- (void)setIsWordDescriptionActive:(BOOL)a3;
- (void)setScript:(id)a3;
- (void)setTechnicalMode:(BOOL)a3;
- (void)setTerminalOutput:(id)a3;
- (void)setUIBraille:(id)a3 truncateAtPanBoundary:(BOOL)a4;
- (void)showFirstLine;
- (void)showLastLine;
- (void)showNextCandidate;
- (void)showNextLine;
- (void)showNextWordDescription;
- (void)showPreviousCandidate;
- (void)showPreviousLine;
- (void)showPreviousWordDescription;
- (void)uiAppendNewLine;
- (void)uiInsertBraille:(id)a3;
- (void)uiMoveFocusTo:(int64_t)a3;
- (void)uiRedo;
- (void)uiReplaceLastLineWith:(id)a3;
- (void)uiSelectAll;
- (void)uiSelectBoundary;
- (void)uiUndo;
@end

@implementation BRLTBrailleModelInternal

- (BRLTBrailleModelDelegate)delegate
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)backTranslateByCell
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_backTranslateByCell;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBackTranslateByCell:(BOOL)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_backTranslateByCell;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)technicalMode
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_technicalMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTechnicalMode:(BOOL)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_technicalMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isShowingSecureToken
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_isShowingSecureToken;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsShowingSecureToken:(BOOL)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_isShowingSecureToken;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isSingleKeyQuickNav
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_isSingleKeyQuickNav;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSingleKeyQuickNav:(BOOL)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_isSingleKeyQuickNav;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)setBrailleUIActive:(BOOL)a3
{
  v4 = self;
  sub_241E15758(a3);
}

- (NSString)uiBraille
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 160);
    v4 = self;

    v3(v5);
    sub_241E35804();
  }

  v6 = sub_241E357E4();

  return v6;
}

- (_NSRange)nsUISelection
{
  v3 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (!v3)
  {
    v16 = self;
    goto LABEL_6;
  }

  v4 = *(*v3 + 184);
  v5 = self;

  v7 = v4(v6);
  v9 = v8;
  v11 = v10;

  if (v11)
  {
LABEL_6:
    v17 = sub_241E35714();

    v14 = v17;
    v15 = 0;
    goto LABEL_7;
  }

  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto __BRLTBrailleModelInternal_nsUISelection_;
  }

  v14 = v7;
  v15 = v9 - v7;
LABEL_7:

  v12 = NSMakeRange(v14, v15);
__BRLTBrailleModelInternal_nsUISelection_:
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)handleReturnInternally
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 272);
    v4 = self;

    v6 = v3(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)clearAtNextDotPress
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 296);
    v4 = self;

    v6 = v3(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)uiUndo
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 640);
    v6 = self;

    v3(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

- (void)uiRedo
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 648);
    v6 = self;

    v3(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

- (BOOL)uiFind:(id)a3
{
  v4 = sub_241E357F4();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v7)
  {
    v8 = v4;
    v9 = *(*v7 + 536);
    v10 = self;

    v11 = v9(v8, v6);

    v12 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v12);
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)uiPreviousFind:(id)a3
{
  v4 = sub_241E357F4();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v7)
  {
    v8 = v4;
    v9 = *(*v7 + 544);
    v10 = self;

    v11 = v9(v8, v6);

    v12 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v12);
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

- (void)uiMoveFocusTo:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v3)
  {
    v5 = *(*v3 + 552);
    v7 = self;

    v5(a3);
    v6 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v6);
  }
}

- (_NSRange)uiDisplayRange
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 232);
    v4 = self;

    v6 = (v3)(v5);
    v7 = v3();
    v9 = v8 - v7;
    if (__OFSUB__(v8, v7))
    {
      __break(1u);
      goto __BRLTBrailleModelInternal_uiDisplayRange_;
    }

    v10 = v6;
    v11 = v9;
  }

  else
  {
    v12 = self;
    v13 = sub_241E35714();

    v10 = v13;
    v11 = 0;
  }

  v7 = NSMakeRange(v10, v11);
__BRLTBrailleModelInternal_uiDisplayRange_:
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)uiReplaceLastLineWith:(id)a3
{
  v4 = sub_241E357F4();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v7)
  {
    v8 = v4;
    v9 = *(*v7 + 400);
    v11 = self;

    v9(v8, v6);

    v10 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v10);
  }

  else
  {
  }
}

- (void)uiAppendNewLine
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 408);
    v6 = self;

    v3(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

- (void)setEditable:(BOOL)a3
{
  v4 = OBJC_IVAR___BRLTBrailleModelInternal__editable;
  if (*(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal__editable) == 1 || !a3)
  {
    v7 = self;
  }

  else
  {
    v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x3E0);
    v6 = self;
    if (v5())
    {
      *(&v6->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_switchedToEditableWithUncommittedBraille) = 1;
    }
  }

  *(&self->super.isa + v4) = a3;
}

- (BOOL)brailleStringDirty
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBrailleStringDirty:(BOOL)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_brailleStringDirty;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isCandidateSelectionActive
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_candidateManager);
  if (v2)
  {
    v3 = *(*v2 + 136);
    v4 = self;

    v6 = v3(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BRLTEditStringInternal)displayedScript
{
  v2 = self;
  v3 = sub_241E182B8();

  return v3;
}

- (BRLTEditStringInternal)displayedBraille
{
  v2 = self;
  v3 = sub_241E184EC();

  return v3;
}

- (NSString)bufferBrailleString
{
  v2 = self;
  sub_241E18A80();

  v3 = sub_241E357E4();

  return v3;
}

- (int64_t)scriptLocationForBrailleLocation:(int64_t)a3
{
  v4 = *&self->inputTranslator[OBJC_IVAR___BRLTBrailleModelInternal_translationResult];
  v9 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
  v10 = v4;
  v11 = *&self->candidateManager[OBJC_IVAR___BRLTBrailleModelInternal_translationResult];
  v12 = v9;
  v13 = v4;
  v14 = v11;
  v5 = self;
  sub_241E224C0(&v12, v8);
  sub_241E224C0(&v13, v8);
  sub_241E2251C(&v14, v8);
  v6 = sub_241E11100(a3);
  sub_241E1041C(&v12);
  sub_241E1041C(&v13);
  sub_241E10470(&v14);

  return v6;
}

+ (BRLTBrailleModelInternal)shared
{
  if (qword_27EC74868 != -1)
  {
    swift_once();
  }

  v3 = qword_27EC74870;

  return v3;
}

- (void)setScript:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241E19168(v4);
}

- (void)setAlert:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241E198E4(v4);
}

- (void)setTerminalOutput:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x260);
  v5 = a3;
  v8 = self;
  if ((v4() & 1) == 0)
  {
    v6 = *(&v8->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_script);
    *(&v8->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_script) = v5;

    *(&v8->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_showingTerminalOutput) = 1;
    v7 = v5;
    sub_241E1E11C();
    sub_241E221E8(0);
  }
}

- (void)setUIBraille:(id)a3 truncateAtPanBoundary:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_241E19C28(v6, a4);
}

- (void)forceTranslate
{
  v2 = self;
  sub_241E19E1C();
}

- (void)handleBrailleDotPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_241E1A010(v4);
}

- (void)uiInsertBraille:(id)a3
{
  v4 = sub_241E357F4();
  v6 = v5;
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x260);
  v12 = self;
  if ((v7() & 1) != 0 && (v8 = *(&v12->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel)) != 0)
  {
    v9 = *(*v8 + 344);
    v10 = *(&v12->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);

    v9(v4, v6);

    v11 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v11);
  }

  else
  {
  }
}

- (BOOL)handleDeleteWithSilently:(BOOL)a3
{
  v4 = self;
  sub_241E1AFD4(0, a3);
  v6 = v5;

  return v6 & 1;
}

- (BOOL)handleBrailleSelectionWithNSSelection:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  v6 = sub_241E2CC98(location, length);
  LOBYTE(length) = (*((*MEMORY[0x277D85000] & v5->super.isa) + 0x5F0))(v6);

  return length & 1;
}

- (void)uiSelectAll
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 432);
    v6 = self;

    v3(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

- (void)uiSelectBoundary
{
  v2 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_brailleUIModel);
  if (v2)
  {
    v3 = *(*v2 + 472);
    v6 = self;

    v3(v4);
    v5 = [objc_allocWithZone(BRLTBrailleUIFormattingOptions) init];
    sub_241E221E8(v5);
  }
}

- (BOOL)handleMoveCursorLeft
{
  v2 = self;
  v3 = sub_241E1CD10();

  return v3 & 1;
}

- (BOOL)handleMoveCursorRight
{
  v2 = self;
  v3 = sub_241E1CE74();

  return v3 & 1;
}

- (BOOL)handleBrailleSelectionWithUpTo:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_241E1D518(a3);

  return a3 & 1;
}

- (BOOL)handleEscape
{
  v2 = self;
  v3 = sub_241E1E5E0();

  return v3 & 1;
}

- (BOOL)handleReturn
{
  v2 = self;
  v3 = sub_241E1E7B4();

  return v3 & 1;
}

- (void)handleWordDescriptionCommand
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x260);
  v4 = self;
  if (v3() & 1) == 0 && ((*((*v2 & v4->super.isa) + 0x4E8))())
  {
    if ((*((*v2 & v4->super.isa) + 0x728))())
    {
      sub_241E20BA4();
    }

    else
    {
      sub_241E206A0();
    }
  }
}

- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAt:(int64_t)a3
{
  v4 = self + OBJC_IVAR___BRLTBrailleModelInternal_translationResult;
  v5 = *&self->inputTranslator[OBJC_IVAR___BRLTBrailleModelInternal_translationResult];
  v20 = *(&self->super.isa + OBJC_IVAR___BRLTBrailleModelInternal_translationResult);
  v21 = v5;
  v22 = *&self->candidateManager[OBJC_IVAR___BRLTBrailleModelInternal_translationResult];
  v23 = v20;
  v24 = v5;
  v25 = v22;
  v6 = self;
  sub_241E224C0(&v23, v18);
  sub_241E224C0(&v24, v18);
  sub_241E2251C(&v25, v18);
  v7 = sub_241E11480(a3);
  sub_241E1041C(&v23);
  sub_241E1041C(&v24);
  v8 = sub_241E10470(&v25);
  v10 = *(v4 + 1);
  v18[0] = *v4;
  v18[1] = v10;
  v19 = *(v4 + 4);
  v26 = v18[0];
  v27 = v10;
  v28 = v19;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v7 + 1 < v7)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  sub_241E224C0(&v26, v17);
  sub_241E224C0(&v27, v17);
  sub_241E2251C(&v28, v17);
  v11 = sub_241E111BC(v7, v7 + 1);
  v13 = v12;
  sub_241E1041C(&v26);
  sub_241E1041C(&v27);
  sub_241E10470(&v28);
  v14 = sub_241E2CC64(v11, v13, 0);
  v16 = v15;

  v8 = v14;
  v9 = v16;
LABEL_6:
  result.length = v9;
  result.location = v8;
  return result;
}

- (void)showNextCandidate
{
  v2 = self;
  sub_241E1F34C();
}

- (void)showPreviousCandidate
{
  v2 = self;
  sub_241E1F4B0();
}

- (void)selectCandidate
{
  v2 = self;
  sub_241E1F614();
}

- (BOOL)isWordDescriptionActive
{
  v3 = OBJC_IVAR___BRLTBrailleModelInternal_isWordDescriptionActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsWordDescriptionActive:(BOOL)a3
{
  v5 = OBJC_IVAR___BRLTBrailleModelInternal_isWordDescriptionActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)showNextWordDescription
{
  v2 = self;
  sub_241E208EC();
}

- (void)showPreviousWordDescription
{
  v2 = self;
  sub_241E20A48();
}

- (BOOL)uiMoveToPreviousCharacter
{
  v2 = self;
  v3 = sub_241E20F4C();

  return v3 & 1;
}

- (BOOL)uiMoveToNextCharacter
{
  v2 = self;
  v3 = sub_241E21058();

  return v3 & 1;
}

- (void)showPreviousLine
{
  v2 = self;
  sub_241E21164();
}

- (void)showNextLine
{
  v2 = self;
  sub_241E21300();
}

- (void)showFirstLine
{
  v2 = self;
  sub_241E214E0();
}

- (void)showLastLine
{
  v2 = self;
  sub_241E21624();
}

- (void)_resetForTest
{
  v2 = self;
  sub_241E2258C();
}

@end