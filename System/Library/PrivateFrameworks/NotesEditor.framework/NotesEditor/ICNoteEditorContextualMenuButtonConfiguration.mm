@interface ICNoteEditorContextualMenuButtonConfiguration
- (ICNoteEditorContextualMenuButtonConfiguration)init;
- (ICNoteEditorContextualMenuButtonConfiguration)initWithImage:(id)a3 activeImageForContext:(id)a4 menuOptions:(id)a5 defaultMenuOption:(id)a6 stateChangedHandler:(id)a7;
@end

@implementation ICNoteEditorContextualMenuButtonConfiguration

- (ICNoteEditorContextualMenuButtonConfiguration)initWithImage:(id)a3 activeImageForContext:(id)a4 menuOptions:(id)a5 defaultMenuOption:(id)a6 stateChangedHandler:(id)a7
{
  v10 = _Block_copy(a6);
  v11 = _Block_copy(a7);
  if (a4)
  {
    sub_2151A6C9C(0, &qword_2811994B0);
    sub_2151A6C9C(0, &qword_2811994B8);
    sub_2153DDB08();
    a4 = sub_2154A1C8C();
  }

  type metadata accessor for ICNoteEditorContextualMenuButton.Configuration.MenuState();
  v12 = sub_2154A1F4C();
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_2153DDAD0;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  return ICNoteEditorContextualMenuButton.Configuration.init(image:activeImageForContext:menuOptions:defaultMenuOption:stateChangedHandler:)(a3, a4, v12, v10, v13, sub_2153DDABC, v14);
}

- (ICNoteEditorContextualMenuButtonConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end