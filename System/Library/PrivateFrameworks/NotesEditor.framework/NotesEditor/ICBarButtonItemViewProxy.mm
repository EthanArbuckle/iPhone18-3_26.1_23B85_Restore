@interface ICBarButtonItemViewProxy
- (_TtC11NotesEditorP33_96838561D3E26AF679A44B1B79DAFE7124ICBarButtonItemViewProxy)init;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation ICBarButtonItemViewProxy

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (selector)
  {
    selfCopy = self;
    if (sub_21549E84C())
    {
      v5 = type metadata accessor for ICBarButtonItemViewProxy();
      v11 = v5;
      goto LABEL_6;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v7 = *(&self->super.isa + OBJC_IVAR____TtC11NotesEditorP33_96838561D3E26AF679A44B1B79DAFE7124ICBarButtonItemViewProxy_originalBarButtonItem);
  v5 = sub_2151A6C9C(0, &qword_281199620);
  v11 = v5;
  selfCopy = v7;

LABEL_6:
  v10[0] = selfCopy;
  __swift_project_boxed_opaque_existential_0Tm(v10, v5);
  v8 = sub_2154A2F8C();
  __swift_destroy_boxed_opaque_existential_0Tm(v10);

  return v8;
}

- (_TtC11NotesEditorP33_96838561D3E26AF679A44B1B79DAFE7124ICBarButtonItemViewProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end