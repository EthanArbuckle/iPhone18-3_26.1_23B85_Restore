@interface HULiveCaptionsObjC
+ (HULiveCaptionsObjC)shared;
- (BOOL)startWithSource:(int64_t)source locale:(id)locale sharedRoute:(BOOL)route excludePIDs:(id)ds error:(id *)error transcriptionResult:(id)result;
- (BOOL)stop:(int64_t)stop error:(id *)error;
- (HULiveCaptionsObjC)init;
@end

@implementation HULiveCaptionsObjC

+ (HULiveCaptionsObjC)shared
{
  if (qword_1ECBD2900 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECBD2908;

  return v3;
}

- (BOOL)startWithSource:(int64_t)source locale:(id)locale sharedRoute:(BOOL)route excludePIDs:(id)ds error:(id *)error transcriptionResult:(id)result
{
  v11 = sub_1DA67E4D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD2520, &qword_1DA6877A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v18 = &v25[-v17];
  v19 = _Block_copy(result);
  if (locale)
  {
    sub_1DA67E4C4();
    (*(v12 + 32))(v18, v15, v11);
    (*(v12 + 56))(v18, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = *(&self->super.isa + OBJC_IVAR___HULiveCaptionsObjC_rootObject);
  selfCopy = self;
  sub_1DA67E554();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1DA67A4F4;
  *(v23 + 24) = v20;

  sub_1DA67E514();

  sub_1DA67A508(v18);

  return 1;
}

- (BOOL)stop:(int64_t)stop error:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR___HULiveCaptionsObjC_rootObject);
  selfCopy = self;
  sub_1DA67E554();
  sub_1DA67E504();

  return 1;
}

- (HULiveCaptionsObjC)init
{
  v3 = OBJC_IVAR___HULiveCaptionsObjC_rootObject;
  sub_1DA67E534();
  *(&self->super.isa + v3) = sub_1DA67E524();
  v5.receiver = self;
  v5.super_class = type metadata accessor for HULiveCaptionsObjC();
  return [(HULiveCaptionsObjC *)&v5 init];
}

@end