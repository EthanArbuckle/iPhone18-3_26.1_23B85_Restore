@interface PromptUITextSuggestion
- (_TtC23ImagePlaygroundInternal22PromptUITextSuggestion)init;
- (_TtC23ImagePlaygroundInternal22PromptUITextSuggestion)initWithCoder:(id)a3;
@end

@implementation PromptUITextSuggestion

- (_TtC23ImagePlaygroundInternal22PromptUITextSuggestion)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC23ImagePlaygroundInternal22PromptUITextSuggestion_representedObject;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(UITextSuggestion *)&v6 init];
}

- (_TtC23ImagePlaygroundInternal22PromptUITextSuggestion)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC23ImagePlaygroundInternal22PromptUITextSuggestion_representedObject;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(UITextSuggestion *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end