@interface CAUILayoutManager
+ (CAUILayoutManager)shared;
- (BOOL)tapRecentsToCall;
- (int64_t)current;
- (void)addObserver:(id)a3 initialUpdate:(BOOL)a4 onUpdate:(id)a5;
- (void)addObserver:(id)a3 onUpdate:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setLayout:(int64_t)a3;
- (void)setTapRecentsToCall:(BOOL)a3;
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

- (void)addObserver:(id)a3 onUpdate:(id)a4
{
  v5 = _Block_copy(a4);
  swift_unknownObjectRetain();
  v6 = self;
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

  [(CAUILayoutManager *)v6 addObserver:v8 initialUpdate:1 onUpdate:v9];

  _Block_release(v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

- (void)addObserver:(id)a3 initialUpdate:(BOOL)a4 onUpdate:(id)a5
{
  v7 = _Block_copy(a5);
  swift_unknownObjectRetain();
  v8 = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  _Block_copy(v7);
  sub_1CFBA2730(v9, a4, v8, v7);
  _Block_release(v7);
  _Block_release(v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

- (int64_t)current
{
  v2 = self;
  v3 = CAUILayoutManager.current.getter();

  return v3;
}

- (void)willEnterForeground
{
  v2 = self;
  sub_1CFBA6268();
}

- (void)setTapRecentsToCall:(BOOL)a3
{
  v4 = self;
  CAUILayoutManager.setTapRecentsToCall(_:)(a3);
}

- (void)setLayout:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAUILayoutManager__current);
  *(&self->super.isa + OBJC_IVAR___CAUILayoutManager__current) = a3;
  v4 = self;
  sub_1CFC19218(v3);
}

- (BOOL)tapRecentsToCall
{
  v2 = self;
  if ([(CAUILayoutManager *)v2 current]== 1)
  {
    v3 = *(&v2->super.isa + OBJC_IVAR___CAUILayoutManager__tapRecentsToCall);
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)removeObserver:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1CFC9FF18();
  swift_unknownObjectRelease();
  v5 = *(&v4->super.isa + OBJC_IVAR___CAUILayoutManager_observers);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v6 = v5;
  [v6 removeObjectForKey_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

@end