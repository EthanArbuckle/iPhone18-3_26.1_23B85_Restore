@interface TagView.ContentAccessibilityElement
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (NSArray)accessibilityUserInputLabels;
- (_TtCC7NewsUI27TagView27ContentAccessibilityElement)init;
- (_TtCC7NewsUI27TagView27ContentAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (unint64_t)accessibilityTraits;
@end

@implementation TagView.ContentAccessibilityElement

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  accessibilityContainer = [(TagView.ContentAccessibilityElement *)selfCopy accessibilityContainer];
  if (!accessibilityContainer)
  {
    goto LABEL_5;
  }

  v4 = accessibilityContainer;
  if (([accessibilityContainer respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:

    v16 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
    goto LABEL_6;
  }

  [v4 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v12;
  v14 = v10;
  v15 = v8;
  v16 = v6;
LABEL_6:
  result.size.height = v13;
  result.size.width = v14;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  accessibilityContainer = [(TagView.ContentAccessibilityElement *)selfCopy accessibilityContainer];
  if (!accessibilityContainer)
  {
    goto LABEL_5;
  }

  v4 = accessibilityContainer;
  if (([accessibilityContainer respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:

    v10 = 0.0;
    v9 = 0.0;
    goto LABEL_6;
  }

  [v4 accessibilityActivationPoint];
  v6 = v5;
  v8 = v7;
  swift_unknownObjectRelease();

  v9 = v8;
  v10 = v6;
LABEL_6:
  result.y = v9;
  result.x = v10;
  return result;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  accessibilityContainer = [(TagView.ContentAccessibilityElement *)selfCopy accessibilityContainer];
  if (!accessibilityContainer)
  {
    goto LABEL_5;
  }

  v4 = accessibilityContainer;
  result = [accessibilityContainer respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  accessibilityUserInputLabels = [v4 accessibilityUserInputLabels];
  swift_unknownObjectRelease();
  if (accessibilityUserInputLabels)
  {
    sub_219BF5924();

    v7 = sub_219BF5904();

    v8 = v7;
  }

  else
  {
LABEL_5:

    v8 = 0;
  }

  return v8;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  accessibilityContainer = [(TagView.ContentAccessibilityElement *)selfCopy accessibilityContainer];
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    if ([accessibilityContainer respondsToSelector_])
    {
      accessibilityTraits = [v4 accessibilityTraits];
      swift_unknownObjectRelease();

      return accessibilityTraits;
    }

    swift_unknownObjectRelease();
  }

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for TagView.ContentAccessibilityElement();
  accessibilityTraits2 = [(TagView.ContentAccessibilityElement *)&v8 accessibilityTraits];

  return accessibilityTraits2;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  accessibilityContainer = [(TagView.ContentAccessibilityElement *)selfCopy accessibilityContainer];
  if (accessibilityContainer)
  {
    accessibilityActivate = [accessibilityContainer accessibilityActivate];
    swift_unknownObjectRelease();
  }

  else
  {
    accessibilityActivate = 0;
  }

  return accessibilityActivate;
}

- (_TtCC7NewsUI27TagView27ContentAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  swift_unknownObjectRetain();
  sub_219BF70B4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_219BF78D4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagView.ContentAccessibilityElement();
  v5 = [(TagView.ContentAccessibilityElement *)&v7 initWithAccessibilityContainer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

- (_TtCC7NewsUI27TagView27ContentAccessibilityElement)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TagView.ContentAccessibilityElement();
  return [(TagView.ContentAccessibilityElement *)&v3 init];
}

@end