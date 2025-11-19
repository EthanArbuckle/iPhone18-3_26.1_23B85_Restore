@interface SFBrowsingAssistant
- (BOOL)stepperFocused;
- (SFBrowsingAssistant)initWithCoder:(id)a3;
- (SFBrowsingAssistant)initWithNibName:(id)a3 bundle:(id)a4;
- (SFBrowsingAssistant)initWithShowingOnStartPage:(BOOL)a3;
- (double)detentHeight;
- (void)readerVisibilityDidChange;
- (void)reloadData;
- (void)setStepperFocused:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SFBrowsingAssistant

- (SFBrowsingAssistant)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (SFBrowsingAssistant)initWithShowingOnStartPage:(BOOL)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___SFBrowsingAssistant_isShowingOnStartPage) = a3;
  v5 = objc_allocWithZone(type metadata accessor for BrowsingAssistant());
  *(self + OBJC_IVAR___SFBrowsingAssistant_assistant) = sub_18BA03558(a3);
  v7.receiver = self;
  v7.super_class = SFBrowsingAssistant;
  return [(SFBrowsingAssistant *)&v7 initWithNibName:0 bundle:0];
}

- (double)detentHeight
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = *(self + OBJC_IVAR___SFBrowsingAssistant_assistant);
  v8 = self;
  v9 = [v7 view];
  if (v9)
  {
    v11 = v9;
    [v9 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v25.origin.x = v13;
    v25.origin.y = v15;
    v25.size.width = v17;
    v25.size.height = v19;
    Width = CGRectGetWidth(v25);
    v21 = sub_18BA0671C();
    sub_18BC1FDF8();

    sub_18BA0A654(v6, Width);
    v23 = v22;
    (*(v4 + 8))(v6, v3);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  SFBrowsingAssistant.viewDidLoad()();
}

- (BOOL)stepperFocused
{
  v2 = *(*(self + OBJC_IVAR___SFBrowsingAssistant_assistant) + OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter);
  if (v2 && (v3 = *(v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper)) != 0)
  {
    return [v3 isFocusedInPageMenu];
  }

  else
  {
    return 0;
  }
}

- (void)setStepperFocused:(BOOL)a3
{
  v4 = self;
  sub_18BA0B45C(a3);
}

- (void)readerVisibilityDidChange
{
  v2 = self;
  SFBrowsingAssistant.readerVisibilityDidChange()();
}

- (void)reloadData
{
  v2 = *(self + OBJC_IVAR___SFBrowsingAssistant_assistant);
  v3 = self;
  if ([v2 isViewLoaded])
  {
    sub_18BA0B840(0, 255, CGRectMake, 0);
  }
}

- (SFBrowsingAssistant)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end