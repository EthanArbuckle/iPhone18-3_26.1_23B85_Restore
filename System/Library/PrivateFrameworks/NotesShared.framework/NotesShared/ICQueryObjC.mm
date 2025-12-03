@interface ICQueryObjC
+ (id)objc_queryForCallNotesAllowsRecentlyDeleted:(BOOL)deleted;
+ (id)objc_queryForMathNotesAllowsRecentlyDeleted:(BOOL)deleted;
+ (id)objc_queryForNonDeletedNotes;
+ (id)objc_queryForNotesMatchingFilterSelection:(id)selection;
+ (id)objc_queryForNotesMatchingTagSelection:(id)selection;
+ (id)objc_queryForPinnedNotes:(BOOL)notes allowsRecentlyDeleted:(BOOL)deleted;
+ (id)objc_queryForRecentlyDeletedMathNotes;
+ (id)objc_queryForSharedNotes:(BOOL)notes allowsRecentlyDeleted:(BOOL)deleted;
+ (id)objc_queryForSystemPaperNotesAllowsRecentlyDeleted:(BOOL)deleted;
- (BOOL)isEqual:(id)equal;
- (ICQueryObjC)init;
- (NSPredicate)predicate;
- (NSString)debugDescription;
- (NSString)entityName;
- (id)filterSelectionWithManagedObjectContext:(id)context account:(id)account;
- (id)removingTagIdentifier:(id)identifier;
- (id)replacingTagIdentifier:(id)identifier withNewTagIdentifier:(id)tagIdentifier;
- (id)tagSelectionWithManagedObjectContext:(id)context;
@end

@implementation ICQueryObjC

+ (id)objc_queryForMathNotesAllowsRecentlyDeleted:(BOOL)deleted
{
  v3 = _s11NotesShared7ICQueryC016makeQueryForMathA021allowsRecentlyDeletedACSb_tFZ_0(deleted);

  return v3;
}

- (NSPredicate)predicate
{
  swift_beginAccess();
  v2 = ICQueryType.predicate.getter();

  return v2;
}

+ (id)objc_queryForCallNotesAllowsRecentlyDeleted:(BOOL)deleted
{
  v3 = _s11NotesShared7ICQueryC016makeQueryForCallA021allowsRecentlyDeletedACSb_tFZ_0(deleted);

  return v3;
}

- (id)filterSelectionWithManagedObjectContext:(id)context account:(id)account
{
  swift_beginAccess();

  contextCopy = context;
  accountCopy = account;
  selfCopy = self;
  ICQueryType.filterSelection(managedObjectContext:accountObjectID:)(v10, contextCopy, accountCopy);
  v12 = v11;

  return v12;
}

- (id)tagSelectionWithManagedObjectContext:(id)context
{
  swift_beginAccess();

  contextCopy = context;
  selfCopy = self;
  v12.value.super.isa = context;
  ICQueryType.tagSelection(managedObjectContext:)(v7, v12);
  v9 = v8;

  return v9;
}

- (NSString)entityName
{
  v2 = sub_2150A4A90();

  return v2;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_214FF39E4();

  v3 = sub_2150A4A90();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_214FF3B2C(v8);

  sub_214F302D4(v8, &qword_27CA42178);
  return v6 & 1;
}

- (ICQueryObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objc_queryForNotesMatchingFilterSelection:(id)selection
{
  swift_getObjCClassMetadata();
  selectionCopy = selection;
  v5 = static ICQuery.makeQueryForNotesMatching(_:)(selectionCopy);

  return v5;
}

+ (id)objc_queryForNotesMatchingTagSelection:(id)selection
{
  selectionCopy = selection;
  v4 = _s11NotesShared7ICQueryC012makeQueryForA8MatchingyACSo14ICTagSelectionCFZ_0(selectionCopy);

  return v4;
}

+ (id)objc_queryForSystemPaperNotesAllowsRecentlyDeleted:(BOOL)deleted
{
  v3 = _s11NotesShared7ICQueryC023makeQueryForSystemPaperA021allowsRecentlyDeletedACSb_tFZ_0(deleted);

  return v3;
}

+ (id)objc_queryForRecentlyDeletedMathNotes
{
  v2 = _s11NotesShared7ICQueryC031makeQueryForRecentlyDeletedMathA0ACyFZ_0();

  return v2;
}

+ (id)objc_queryForNonDeletedNotes
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = v2 | 0x5000000000000000;
  v4 = type metadata accessor for ICQuery();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ICQueryObjC_type] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

+ (id)objc_queryForPinnedNotes:(BOOL)notes allowsRecentlyDeleted:(BOOL)deleted
{
  v4 = _s11NotesShared7ICQueryC018makeQueryForPinnedA0_21allowsRecentlyDeletedACSb_SbtFZ_0(notes, deleted);

  return v4;
}

+ (id)objc_queryForSharedNotes:(BOOL)notes allowsRecentlyDeleted:(BOOL)deleted
{
  ForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0 = _s11NotesShared7ICQueryC012makeQueryForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0(notes, deleted);

  return ForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0;
}

- (id)replacingTagIdentifier:(id)identifier withNewTagIdentifier:(id)tagIdentifier
{
  v5 = sub_2150A4AD0();
  v7 = v6;
  v8 = sub_2150A4AD0();
  v10 = v9;
  selfCopy = self;
  v12 = ICQuery.replacing(tagIdentifier:withNewTagIdentifier:)(v5, v7, v8, v10);

  return v12;
}

- (id)removingTagIdentifier:(id)identifier
{
  v4 = sub_2150A4AD0();
  v6 = v5;
  selfCopy = self;
  v8 = ICQuery.removing(tagIdentifier:)(v4, v6);

  return v8;
}

@end