@interface BRLTEditStringInternal
- (BOOL)isEqual:(id)equal;
- (BRLTEditStringInternal)init;
- (BRLTEditStringInternal)initWithString:(id)string NSSelection:(_NSRange)selection NSFocus:(_NSRange)focus token:(int64_t)token NSSuggestion:(_NSRange)suggestion textFormattingRanges:(id)ranges;
- (NSString)description;
- (NSString)string;
- (_NSRange)NSContiguousBrailleRange;
- (_NSRange)NSFocus;
- (_NSRange)NSSelection;
- (_NSRange)NSSuggestion;
- (id)appending:(id)appending;
@end

@implementation BRLTEditStringInternal

- (NSString)string
{
  v2 = *(self + OBJC_IVAR___BRLTEditStringInternal_string);
  v3 = *(self + OBJC_IVAR___BRLTEditStringInternal_string + 8);

  v4 = sub_241E357E4();

  return v4;
}

- (id)appending:(id)appending
{
  appendingCopy = appending;
  selfCopy = self;
  sub_241E133B4(appendingCopy);
  v7 = v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_241E35A74();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  sub_241E1497C(v11, v9);
  if (!v10)
  {
    sub_241E149EC(v9);
    goto LABEL_8;
  }

  type metadata accessor for BRLTEditString();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_241E148AC(self, v8);

LABEL_9:
  sub_241E149EC(v11);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_241E14010();

  v3 = sub_241E357E4();

  return v3;
}

- (BRLTEditStringInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_NSRange)NSSelection
{
  v2 = sub_241E143B4(self, a2, &OBJC_IVAR___BRLTEditStringInternal_selection);
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)NSFocus
{
  v2 = sub_241E143B4(self, a2, &OBJC_IVAR___BRLTEditStringInternal_focus);
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)NSSuggestion
{
  v2 = sub_241E143B4(self, a2, &OBJC_IVAR___BRLTEditStringInternal_suggestion);
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)NSContiguousBrailleRange
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x90);
  selfCopy = self;
  v4 = v2();
  v7 = sub_241E2CC64(v4, v6, v5 & 1);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (BRLTEditStringInternal)initWithString:(id)string NSSelection:(_NSRange)selection NSFocus:(_NSRange)focus token:(int64_t)token NSSuggestion:(_NSRange)suggestion textFormattingRanges:(id)ranges
{
  length = focus.length;
  location = focus.location;
  v10 = selection.length;
  v11 = selection.location;
  v12 = sub_241E357F4();
  v14 = v13;
  rangesCopy = ranges;
  v16 = sub_241E2CC98(v11, v10);
  v35 = v17;
  v36 = v16;
  v32 = v18;
  v19 = sub_241E2CC98(location, length);
  v33 = v20;
  v34 = v19;
  v22 = v21;
  v23 = sub_241E2CC98(suggestion.location, suggestion.length);
  v25 = v24;
  v27 = v26;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74420, &qword_241E38CA8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_241E38B80;
  result = sub_241E35874();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 32) = 0;
    *(v29 + 40) = result;
    *(v29 + 48) = token;
    v31 = (*(ObjectType + 128))(v12, v14, v36, v35, v32 & 1, v34, v33, v22 & 1, v29, v23, v25, v27 & 1, rangesCopy);
    swift_deallocPartialClassInstance();
    return v31;
  }

  return result;
}

@end