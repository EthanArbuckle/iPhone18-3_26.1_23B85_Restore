@interface OutlineController
- (BOOL)isAsynchronous;
- (BOOL)isUUIDCollapsed:(id)collapsed;
- (BOOL)isUUIDCollapsible:(id)collapsible;
- (BOOL)isUUIDHidden:(id)hidden;
- (BOOL)toggleCollapsedAtRange:(_NSRange)range;
- (ICTTTextStorage)textStorage;
- (NSSet)collapsedUUIDs;
- (NSSet)interactedUUIDs;
- (NSString)debugDescription;
- (OutlineController)init;
- (OutlineController)initWithTextStorage:(id)storage collapsedUUIDs:(id)ds asynchronous:(BOOL)asynchronous;
- (_NSRange)descendantRangeForUUID:(id)d;
- (_NSRange)rangeForUUID:(id)d;
- (_NSRange)visibleRange;
- (id)closestVisibleAncestorForUUID:(id)d;
- (int64_t)collapsibleSectionAffordanceUsages;
- (void)collapseAll;
- (void)expandAll;
- (void)expandAncestorsOfRange:(_NSRange)range;
- (void)requestUpdate;
- (void)resetCollapsibleSectionAffordanceUsages;
- (void)setCollapsedUUIDs:(id)ds;
- (void)setInteractedUUIDs:(id)ds;
- (void)setIsAsynchronous:(BOOL)asynchronous;
- (void)textStorageDidProcessEndEditingWithNotification:(id)notification;
- (void)toggleUUIDCollapsed:(id)collapsed;
- (void)update;
@end

@implementation OutlineController

- (OutlineController)initWithTextStorage:(id)storage collapsedUUIDs:(id)ds asynchronous:(BOOL)asynchronous
{
  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v7 = sub_1D441A064();
  return OutlineController.init(textStorage:collapsedUUIDs:asynchronous:)(storage, v7, asynchronous);
}

- (NSSet)collapsedUUIDs
{
  swift_beginAccess();
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v4 = sub_1D441A054();

  return v4;
}

- (void)textStorageDidProcessEndEditingWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1D417CD2C(notificationCopy);
}

- (BOOL)isUUIDHidden:(id)hidden
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4417474();
  selfCopy = self;
  v17 = v7;
  selfCopy2 = self;
  v14 = v7;
  selfCopy3 = self;

  sub_1D4183210(v7, sub_1D42EDB44, v15, sub_1D42EDB48, v12);
  v10 = v9;

  (*(v5 + 8))(v7, v4);
  return v10 & 1;
}

- (BOOL)isUUIDCollapsible:(id)collapsible
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417474();
  selfCopy = self;
  v9 = sub_1D419089C(v7);

  (*(v5 + 8))(v7, v4);
  return v9;
}

- (BOOL)isUUIDCollapsed:(id)collapsed
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417474();
  swift_beginAccess();
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  LOBYTE(self) = sub_1D4190A40(v7, v10[2]);

  (*(v5 + 8))(v7, v4);
  return self & 1;
}

- (ICTTTextStorage)textStorage
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setCollapsedUUIDs:(id)ds
{
  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v4 = sub_1D441A064();
  swift_beginAccess();
  v7 = v4;
  v6[2] = &v7;
  selfCopy = self;

  sub_1D417FB40(sub_1D42EDB90, v6);
}

- (NSSet)interactedUUIDs
{
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v3 = sub_1D441A054();

  return v3;
}

- (void)setInteractedUUIDs:(id)ds
{
  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v5[2] = &v6;
  v6 = sub_1D441A064();
  selfCopy = self;

  sub_1D417FB40(sub_1D42EDB90, v5);
}

- (BOOL)isAsynchronous
{
  v3 = OBJC_IVAR___OutlineController_isAsynchronous;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsAsynchronous:(BOOL)asynchronous
{
  selfCopy = self;
  sub_1D42DCD7C(asynchronous);
}

- (void)requestUpdate
{
  selfCopy = self;
  sub_1D42DD550();
}

- (void)toggleUUIDCollapsed:(id)collapsed
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417474();
  selfCopy = self;
  sub_1D42DE624(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)collapseAll
{
  selfCopy = self;
  sub_1D42DEB6C();
}

- (void)expandAncestorsOfRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_1D42DF2A8(location, length);
}

- (void)expandAll
{
  selfCopy = self;
  sub_1D42DF950();
}

- (int64_t)collapsibleSectionAffordanceUsages
{
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  v3 = *(v5 + 16);

  return v3;
}

- (_NSRange)visibleRange
{
  selfCopy = self;
  v3 = sub_1D42DFEE0();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)toggleCollapsedAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  LOBYTE(length) = sub_1D42E0210(location, length);

  return length & 1;
}

- (void)resetCollapsibleSectionAffordanceUsages
{
  v3[2] = &v4;
  v4 = MEMORY[0x1E69E7CD0];
  selfCopy = self;

  sub_1D417FB40(sub_1D42EDB90, v3);
}

- (_NSRange)rangeForUUID:(id)d
{
  v3 = sub_1D42E1A58(self, a2, d, sub_1D42E09CC);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)descendantRangeForUUID:(id)d
{
  v3 = sub_1D42E1A58(self, a2, d, sub_1D42E1294);
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)closestVisibleAncestorForUUID:(id)d
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-v9];
  sub_1D4417474();
  selfCopy = self;
  v19 = v7;
  selfCopy2 = self;

  sub_1D42E1F20(v7, sub_1D42EDB94, v17, v10);

  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = (*(v5 + 48))(v10, 1, v4);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1D4417454();
    v12(v10, v4);
    v14 = v15;
  }

  return v14;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1D42E2754();

  v3 = sub_1D4419C14();

  return v3;
}

- (void)update
{
  selfCopy = self;
  sub_1D417BF4C();
}

- (OutlineController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end