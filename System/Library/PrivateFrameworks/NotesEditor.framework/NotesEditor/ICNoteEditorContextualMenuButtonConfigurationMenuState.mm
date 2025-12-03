@interface ICNoteEditorContextualMenuButtonConfigurationMenuState
- (ICNoteEditorContextualMenuButtonConfigurationMenuState)init;
- (ICNoteEditorContextualMenuButtonConfigurationMenuState)initWithImage:(id)image title:(id)title context:(int64_t)context;
@end

@implementation ICNoteEditorContextualMenuButtonConfigurationMenuState

- (ICNoteEditorContextualMenuButtonConfigurationMenuState)initWithImage:(id)image title:(id)title context:(int64_t)context
{
  v8 = sub_2154A1D6C();
  *(&self->super.isa + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_image) = image;
  v9 = (self + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_title);
  *v9 = v8;
  v9[1] = v10;
  *(&self->super.isa + OBJC_IVAR___ICNoteEditorContextualMenuButtonConfigurationMenuState_context) = context;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ICNoteEditorContextualMenuButton.Configuration.MenuState();
  imageCopy = image;
  return [(ICNoteEditorContextualMenuButtonConfigurationMenuState *)&v13 init];
}

- (ICNoteEditorContextualMenuButtonConfigurationMenuState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end