@interface ICNoteEditorContextualMenuButtonConfigurationMenuState
- (ICNoteEditorContextualMenuButtonConfigurationMenuState)init;
- (ICNoteEditorContextualMenuButtonConfigurationMenuState)initWithImage:(id)a3 title:(id)a4 context:(int64_t)a5;
@end

@implementation ICNoteEditorContextualMenuButtonConfigurationMenuState

- (ICNoteEditorContextualMenuButtonConfigurationMenuState)initWithImage:(id)a3 title:(id)a4 context:(int64_t)a5
{
  v8 = sub_2154A1D6C();
  *(&self->super.isa + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_image) = a3;
  v9 = (self + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_title);
  *v9 = v8;
  v9[1] = v10;
  *(&self->super.isa + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_context) = a5;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ICNoteEditorContextualMenuButton.Configuration.MenuState();
  v11 = a3;
  return [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)&v13 init];
}

- (ICNoteEditorContextualMenuButtonConfigurationMenuState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end