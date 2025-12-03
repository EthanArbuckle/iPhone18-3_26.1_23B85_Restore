@interface CAUILayoutManager
+ (CAUILayoutManager)shared;
- (BOOL)tapRecentsToCall;
- (int64_t)current;
- (void)addObserver:(id)observer initialUpdate:(BOOL)update onUpdate:(id)onUpdate;
- (void)addObserver:(id)observer onUpdate:(id)update;
- (void)removeObserver:(id)observer;
- (void)setLayout:(int64_t)layout;
- (void)setTapRecentsToCall:(BOOL)call;
- (void)willEnterForeground;
@end

@implementation CAUILayoutManager

+ (CAUILayoutManager)shared
{
  if (qword_1EE04CFB0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE04CFB8;

  return v3;
}

- (void)addObserver:(id)observer onUpdate:(id)update
{
  v5 = _Block_copy(update);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v8 = sub_1CFCA02A8();
  v10[4] = sub_1CFBA29D4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFBA296C;
  v10[3] = &block_descriptor_12;
  v9 = _Block_copy(v10);

  [(CAUILayoutManager *)selfCopy addObserver:v8 initialUpdate:1 onUpdate:v9];

  _Block_release(v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

- (void)addObserver:(id)observer initialUpdate:(BOOL)update onUpdate:(id)onUpdate
{
  v7 = _Block_copy(onUpdate);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  _Block_copy(v7);
  sub_1CFBA2730(v9, update, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

- (int64_t)current
{
  selfCopy = self;
  v3 = CAUILayoutManager.current.getter();

  return v3;
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_1CFBA6268();
}

- (void)setTapRecentsToCall:(BOOL)call
{
  selfCopy = self;
  CAUILayoutManager.setTapRecentsToCall(_:)(call);
}

- (void)setLayout:(int64_t)layout
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAUILayoutManager__current);
  *(&self->super.isa + OBJC_IVAR___CAUILayoutManager__current) = layout;
  selfCopy = self;
  sub_1CFC19218(v3);
}

- (BOOL)tapRecentsToCall
{
  selfCopy = self;
  if ([(CAUILayoutManager *)selfCopy current]== 1)
  {
    v3 = *(&selfCopy->super.isa + OBJC_IVAR___CAUILayoutManager__tapRecentsToCall);
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)removeObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.isa + OBJC_IVAR___CAUILayoutManager_observers);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v6 = v5;
  [v6 removeObjectForKey_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

@end